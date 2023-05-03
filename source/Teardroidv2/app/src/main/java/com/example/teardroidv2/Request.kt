import android.annotation.SuppressLint
import android.content.Context
import com.android.volley.Request
import com.android.volley.RequestQueue
import com.android.volley.toolbox.JsonObjectRequest
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import com.example.teardroidv2.AppInfo
import org.json.JSONObject

class Request(val endpoint: String,
                   val result: (JSONObject) -> Unit,
                   val error: (String) -> Unit) {

    fun post(data: JSONObject) {
        val req = object : JsonObjectRequest(Request.Method.POST,AppInfo.HOSTNAME + endpoint, data,{ res ->
            result(JSONObject(res.toString().trim()))
        }, { volleyError ->
            error(volleyError.message.toString())
        }) {
        }

        volley.add(req)
    }

    fun get() {
        val req = object : StringRequest(Request.Method.GET,AppInfo.HOSTNAME + endpoint, { res ->
            result(JSONObject(res.toString().trim()))
        }, { volleyError ->
            error(volleyError.message.toString())
        }) {
        }
        volley.add(req)
    }

    companion object {
        @SuppressLint("StaticFieldLeak")
        var context: Context? = null
        val volley: RequestQueue by lazy {
            Volley.newRequestQueue(context
                ?: throw NullPointerException(" Initialize Teardroidv2 in application class"))
        }

        fun init(context: Context) {
            this.context = context
        }
    }
}