package com.materialdesignflutter

import android.content.Intent
import android.net.Uri
import android.widget.Toast
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    private val CHANNEL = "com.materialdesignflutter/android"
    private val EMAIL_ID = "shukla.sumit171@gmail.com"
    private val EMAIL_SUBJECT = "My feedback regarding FlutterMaterialDesign App."
    private val SHARE_DATA = "Download Material Design Flutter App : https://play.google.com/store/apps/details?id=com.materialdesignflutter"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            // Note: this method is invoked on the main thread.
            when (call.method) {
                "share" -> share()
                "getVersionName" -> getVersionName()
                "sendEmail" -> sendEmail()
                else -> result.notImplemented()
            }
        }
    }

    private fun share() {
        val intent = Intent()
        intent.action = Intent.ACTION_SEND
        intent.putExtra(Intent.EXTRA_TEXT, SHARE_DATA)
        intent.type = "text/plain"
        startActivity(Intent.createChooser(intent, "Share with"))
    }

    private fun getVersionName(): String? {
        return try {
            val manager = packageManager
            val info = manager.getPackageInfo(packageName, 0)
            val version = info.versionName
            "Version: $version"
        } catch (e: Exception) {
            e.printStackTrace()
            "Version: 1.0"
        }
    }

    private fun sendEmail() {
        try {
            val selectorIntent = Intent(Intent.ACTION_SENDTO)
            selectorIntent.data = Uri.parse("mailto:")

            val emailIntent = Intent(Intent.ACTION_SEND)
            emailIntent.putExtra(Intent.EXTRA_EMAIL, arrayOf(EMAIL_ID))
            emailIntent.putExtra(Intent.EXTRA_SUBJECT, EMAIL_SUBJECT)
            emailIntent.putExtra(Intent.EXTRA_TEXT, "")
            emailIntent.selector = selectorIntent

            startActivity(Intent.createChooser(emailIntent, "Send email..."))
        } catch (e: Exception) {
            Toast.makeText(this, "Not found Email app.", Toast.LENGTH_SHORT).show()
        }
    }

}
