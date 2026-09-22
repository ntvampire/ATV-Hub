package com.atvhub.launcher.data

import android.content.Context
import android.content.Intent
import androidx.core.content.FileProvider
import com.atvhub.launcher.BuildConfig
import com.google.gson.Gson
import com.google.gson.annotations.SerializedName
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import java.io.File
import java.io.FileOutputStream
import java.util.concurrent.TimeUnit

data class GithubRelease(
    @SerializedName("tag_name") val tagName: String,
    @SerializedName("name") val name: String?,
    @SerializedName("body") val body: String?,
    @SerializedName("assets") val assets: List<GithubAsset> = emptyList()
)

data class GithubAsset(
    @SerializedName("name") val name: String,
    @SerializedName("browser_download_url") val downloadUrl: String,
    @SerializedName("size") val size: Long
)

data class UpdateInfo(
    val hasUpdate: Boolean,
    val latestVersion: String,
    val currentVersion: String,
    val releaseNotes: String,
    val downloadUrl: String?
)

class UpdateManager(private val context: Context) {

    private val client = OkHttpClient.Builder()
        .connectTimeout(15, TimeUnit.SECONDS)
        .readTimeout(30, TimeUnit.SECONDS)
        .build()

    private val gson = Gson()

    suspend fun checkUpdate(): UpdateInfo = withContext(Dispatchers.IO) {
        try {
            val request = Request.Builder()
                .url("https://api.github.com/repos/ntvampire/ATV-Hub/releases/latest")
                .header("Accept", "application/vnd.github.v3+json")
                .header("User-Agent", "ATV-Hub-App")
                .build()

            client.newCall(request).execute().use { response ->
                if (!response.isSuccessful) {
                    return@withContext UpdateInfo(
                        hasUpdate = false,
                        latestVersion = BuildConfig.VERSION_NAME,
                        currentVersion = BuildConfig.VERSION_NAME,
                        releaseNotes = "",
                        downloadUrl = null
                    )
                }

                val json = response.body?.string() ?: return@withContext emptyUpdate()
                val release = gson.fromJson(json, GithubRelease::class.java)

                val cleanTag = release.tagName.removePrefix("v").trim()
                val currentVersion = BuildConfig.VERSION_NAME.removePrefix("v").trim()

                val isNewer = isVersionNewer(cleanTag, currentVersion)
                val apkAsset = release.assets.firstOrNull { it.name.endsWith(".apk") }

                UpdateInfo(
                    hasUpdate = isNewer && apkAsset != null,
                    latestVersion = release.tagName,
                    currentVersion = BuildConfig.VERSION_NAME,
                    releaseNotes = release.body ?: "",
                    downloadUrl = apkAsset?.downloadUrl
                )
            }
        } catch (e: Exception) {
            e.printStackTrace()
            emptyUpdate()
        }
    }

    suspend fun downloadAndInstall(
        downloadUrl: String,
        onProgress: (Int) -> Unit
    ): Boolean = withContext(Dispatchers.IO) {
        try {
            val request = Request.Builder().url(downloadUrl).build()
            client.newCall(request).execute().use { response ->
                if (!response.isSuccessful) return@withContext false

                val body = response.body ?: return@withContext false
                val totalLength = body.contentLength()

                val updateDir = File(context.cacheDir, "updates").apply { mkdirs() }
                val apkFile = File(updateDir, "update.apk")

                body.byteStream().use { input ->
                    FileOutputStream(apkFile).use { output ->
                        val buffer = ByteArray(8 * 1024)
                        var bytesRead: Int
                        var totalRead = 0L

                        while (input.read(buffer).also { bytesRead = it } != -1) {
                            output.write(buffer, 0, bytesRead)
                            totalRead += bytesRead
                            if (totalLength > 0) {
                                val progress = ((totalRead * 100) / totalLength).toInt()
                                withContext(Dispatchers.Main) { onProgress(progress) }
                            }
                        }
                        output.flush()
                    }
                }

                withContext(Dispatchers.Main) {
                    installApk(apkFile)
                }
                true
            }
        } catch (e: Exception) {
            e.printStackTrace()
            false
        }
    }

    private fun installApk(file: File) {
        val uri = FileProvider.getUriForFile(
            context,
            "${context.packageName}.fileprovider",
            file
        )
        val intent = Intent(Intent.ACTION_VIEW).apply {
            setDataAndType(uri, "application/vnd.android.package-archive")
            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        }
        context.startActivity(intent)
    }

    private fun isVersionNewer(latest: String, current: String): Boolean {
        val latestParts = latest.split(".").mapNotNull { it.toIntOrNull() }
        val currentParts = current.split(".").mapNotNull { it.toIntOrNull() }

        val maxLen = maxOf(latestParts.size, currentParts.size)
        for (i in 0 until maxLen) {
            val l = latestParts.getOrElse(i) { 0 }
            val c = currentParts.getOrElse(i) { 0 }
            if (l > c) return true
            if (l < c) return false
        }
        return false
    }

    private fun emptyUpdate() = UpdateInfo(
        hasUpdate = false,
        latestVersion = BuildConfig.VERSION_NAME,
        currentVersion = BuildConfig.VERSION_NAME,
        releaseNotes = "",
        downloadUrl = null
    )
}
