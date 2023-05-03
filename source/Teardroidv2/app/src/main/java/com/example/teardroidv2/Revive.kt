package com.example.teardroidv2

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log


class Revive : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        //Log.i(AppInfo.TAG, "Service Stops, let's restart again.")
        context.startService(Intent(context, CommandReciver::class.java))
    }
}