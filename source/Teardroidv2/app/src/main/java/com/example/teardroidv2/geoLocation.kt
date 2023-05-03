package com.example.teardroidv2

import android.annotation.SuppressLint
import android.content.Context
import android.location.Location
import android.location.LocationListener
import android.location.LocationManager
import android.os.Bundle

open class geoLocation(mContext: Context) {
    private val context = mContext
    var currentLocation: Location? = null
    var locationByNetwork: Location? = null
    var locationByGps: Location? = null


    private val gpsLocationListener: LocationListener = object : LocationListener {
        override fun onLocationChanged(location: Location) {
            location.also { locationByGps = it }
        }

        override fun onStatusChanged(provider: String, status: Int, extras: Bundle) {}
        override fun onProviderEnabled(provider: String) {}
        override fun onProviderDisabled(provider: String) {}
    }
    private val networkLocationListener: LocationListener = object : LocationListener {
        override fun onLocationChanged(location: Location) {
            location.also { locationByNetwork = it }
        }

        override fun onStatusChanged(provider: String, status: Int, extras: Bundle) {}
        override fun onProviderEnabled(provider: String) {}
        override fun onProviderDisabled(provider: String) {}
    }
    @SuppressLint("MissingPermission")
    open fun getLocation(): HashMap<String, String> {
        val locationCondinate = HashMap<String, String>()
        val locationManager: LocationManager = context.getSystemService(Context.LOCATION_SERVICE) as LocationManager
        val hasGps = locationManager.isProviderEnabled(LocationManager.GPS_PROVIDER)
        val hasNetwork = locationManager.isProviderEnabled(LocationManager.NETWORK_PROVIDER)
        if (hasGps) {
            locationManager.requestLocationUpdates(
                LocationManager.GPS_PROVIDER,
                5000,
                0F,
                gpsLocationListener
            )
        }
        if (hasNetwork) {
            locationManager.requestLocationUpdates(
                LocationManager.NETWORK_PROVIDER,
                5000,
                0F,
                networkLocationListener
            )
        }

        val lastKnownLocationByGps =
            locationManager.getLastKnownLocation(LocationManager.GPS_PROVIDER)
        lastKnownLocationByGps?.let {
            locationByGps = lastKnownLocationByGps
        }
        val lastKnownLocationByNetwork =
            locationManager.getLastKnownLocation(LocationManager.NETWORK_PROVIDER)
        lastKnownLocationByNetwork?.let {
            locationByNetwork = lastKnownLocationByNetwork
        }
        if (locationByGps != null && locationByNetwork != null) {
            if (locationByGps!!.accuracy > locationByNetwork!!.accuracy) {
                currentLocation = locationByGps
                val latitude = currentLocation?.latitude
                val longitude = currentLocation?.longitude
                locationCondinate["latitude"] = latitude.toString()
                locationCondinate["longitude"] = longitude.toString()
            } else {
                currentLocation = locationByNetwork
                val latitude = currentLocation?.latitude
                val longitude = currentLocation?.longitude
                locationCondinate["latitude"] = latitude.toString()
                locationCondinate["longitude"] = longitude.toString()
                // use latitude and longitude as per your need
            }
        }
        return locationCondinate
    }
}