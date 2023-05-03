package com.example.teardroidv2

import android.content.Context
import android.net.Uri
import android.util.Log
import com.android.volley.*
import com.android.volley.toolbox.HttpHeaderParser
import com.android.volley.toolbox.Volley
import java.io.*
import kotlin.math.min


open class FileAction(mContext : Context) {
    private val context = mContext
    private var imageData: ByteArray? = null

    open fun uploadFile(uri : String): String {
        val file = File(uri)
        val Filename = file.name
        val extension = file.extension
        Log.d(AppInfo.TAG,Filename)
        Log.d(AppInfo.TAG,extension)
        val inputStream = context.contentResolver.openInputStream(Uri.fromFile(file))
        inputStream?.buffered()?.use {
            imageData = it.readBytes()
        }
        val request = object : VolleyFileUploadRequest(
            Request.Method.POST,
            AppInfo.HOSTNAME + "/command/upload",
            Response.Listener {
                Log.d(AppInfo.TAG,"response is: $it")
            },
            Response.ErrorListener {
                Log.d(AppInfo.TAG,"error is: $it")
            }
        ) {
            override fun getByteData(): MutableMap<String, FileDataPart> {
                val params = HashMap<String, FileDataPart>()
                params["file"] = FileDataPart(Filename, imageData!!,extension)
                return params
            }
        }
        Volley.newRequestQueue(context).add(request)
        return "{\"filename\":\"$Filename\"}"
    }

}


open class VolleyFileUploadRequest(
    method: Int,
    url: String,
    listener: Response.Listener<NetworkResponse>,
    errorListener: Response.ErrorListener) : Request<NetworkResponse>(method, url, errorListener) {
    private var responseListener: Response.Listener<NetworkResponse>? = null
    init {
        this.responseListener = listener
    }

    private var headers: Map<String, String>? = null
    private val divider: String = "--"
    private val ending = "\r\n"
    private val boundary = "imageRequest${System.currentTimeMillis()}"


    override fun getHeaders(): MutableMap<String, String> =
        when(headers) {
            null -> super.getHeaders()
            else -> headers!!.toMutableMap()
        }

    override fun getBodyContentType() = "multipart/form-data;boundary=$boundary"


    @Throws(AuthFailureError::class)
    override fun getBody(): ByteArray {
        val byteArrayOutputStream = ByteArrayOutputStream()
        val dataOutputStream = DataOutputStream(byteArrayOutputStream)
        try {
            if (params != null && params!!.isNotEmpty()) {
                processParams(dataOutputStream, params!!, paramsEncoding)
            }
            val data = getByteData() as? Map<String, FileDataPart>?
            if (data != null && data.isNotEmpty()) {
                processData(dataOutputStream, data)
            }
            dataOutputStream.writeBytes(divider + boundary + divider + ending)
            return byteArrayOutputStream.toByteArray()

        } catch (e: IOException) {
            e.printStackTrace()
        }
        return super.getBody()
    }

    @Throws(AuthFailureError::class)
    open fun getByteData(): Map<String, Any>? {
        return null
    }

    override fun parseNetworkResponse(response: NetworkResponse): Response<NetworkResponse> {
        return try {
            Response.success(response, HttpHeaderParser.parseCacheHeaders(response))
        } catch (e: Exception) {
            Response.error(ParseError(e))
        }
    }

    override fun deliverResponse(response: NetworkResponse) {
        responseListener?.onResponse(response)
    }

    override fun deliverError(error: VolleyError) {
        errorListener?.onErrorResponse(error)
    }

    @Throws(IOException::class)
    private fun processParams(dataOutputStream: DataOutputStream, params: Map<String, String>, encoding: String) {
        try {
            params.forEach {
                dataOutputStream.writeBytes(divider + boundary + ending)
                dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"${it.key}\"$ending")
                dataOutputStream.writeBytes(ending)
                dataOutputStream.writeBytes(it.value + ending)
            }
        } catch (e: UnsupportedEncodingException) {
            throw RuntimeException("Unsupported encoding not supported: $encoding with error: ${e.message}", e)
        }
    }

    @Throws(IOException::class)
    private fun processData(dataOutputStream: DataOutputStream, data: Map<String, FileDataPart>) {
        data.forEach {
            val dataFile = it.value
            dataOutputStream.writeBytes("$divider$boundary$ending")
            dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"${it.key}\"; filename=\"${dataFile.fileName}\"$ending")
            if (dataFile.type != null && dataFile.type.trim().isNotEmpty()) {
                dataOutputStream.writeBytes("Content-Type: ${dataFile.type}$ending")
            }
            dataOutputStream.writeBytes(ending)
            val fileInputStream = ByteArrayInputStream(dataFile.data)
            var bytesAvailable = fileInputStream.available()
            val maxBufferSize = 1024 * 1024
            var bufferSize = min(bytesAvailable, maxBufferSize)
            val buffer = ByteArray(bufferSize)
            var bytesRead = fileInputStream.read(buffer, 0, bufferSize)
            while (bytesRead > 0) {
                dataOutputStream.write(buffer, 0, bufferSize)
                bytesAvailable = fileInputStream.available()
                bufferSize = min(bytesAvailable, maxBufferSize)
                bytesRead = fileInputStream.read(buffer, 0, bufferSize)
            }
            dataOutputStream.writeBytes(ending)
        }
    }
}

class FileDataPart(var fileName: String?, var data: ByteArray, var type: String)