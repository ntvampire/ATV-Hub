package ru.atvhub.tv.data

import android.content.Context
import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import java.io.BufferedReader
import java.io.File
import java.io.InputStreamReader
import java.util.concurrent.TimeUnit

object TorrServerManager {

    private const val TAG = "TorrServerManager"
    const val DEFAULT_PORT = 8090
    const val LOCAL_URL = "http://127.0.0.1:$DEFAULT_PORT"

    @Volatile
    private var process: Process? = null

    private val httpClient = OkHttpClient.Builder()
        .connectTimeout(1, TimeUnit.SECONDS)
        .readTimeout(1, TimeUnit.SECONDS)
        .build()

    suspend fun isServerAlive(port: Int = DEFAULT_PORT): Boolean = withContext(Dispatchers.IO) {
        try {
            val req = Request.Builder().url("http://127.0.0.1:$port/echo").build()
            httpClient.newCall(req).execute().use { it.isSuccessful }
        } catch (_: Exception) {
            false
        }
    }

    suspend fun startServer(context: Context, port: Int = DEFAULT_PORT): Boolean = withContext(Dispatchers.IO) {
        if (isServerAlive(port)) {
            Log.d(TAG, "TorrServer is already running on port $port")
            return@withContext true
        }

        val binary = File(context.applicationInfo.nativeLibraryDir, "libtorrserver.so")
        if (!binary.exists()) {
            Log.e(TAG, "TorrServer binary not found at ${binary.absolutePath}")
            return@withContext false
        }

        try {
            if (!binary.canExecute()) {
                binary.setExecutable(true)
            }
        } catch (e: Exception) {
            Log.w(TAG, "Failed to setExecutable: ${e.message}")
        }

        val dataDir = File(context.filesDir, "torrserver").apply { mkdirs() }

        try {
            Log.d(TAG, "Starting embedded TorrServer from: ${binary.absolutePath}")
            val pb = ProcessBuilder(
                binary.absolutePath,
                "-p", port.toString(),
                "-d", dataDir.absolutePath,
                "-k"
            ).redirectErrorStream(true)

            val proc = pb.start()
            process = proc

            // Чтение логов TorrServer в отдельном потоке
            Thread {
                try {
                    BufferedReader(InputStreamReader(proc.inputStream)).use { reader ->
                        var line: String?
                        while (reader.readLine().also { line = it } != null) {
                            Log.d("TorrServerOut", line ?: "")
                        }
                    }
                } catch (_: Exception) {}
            }.start()

            // Ожидание старта сервера до 6 секунд
            for (i in 1..12) {
                delay(500)
                if (isServerAlive(port)) {
                    Log.i(TAG, "Embedded TorrServer successfully started and responding on port $port!")
                    return@withContext true
                }
                // Проверяем, не упал ли процесс раньше времени
                try {
                    val exit = proc.exitValue()
                    Log.e(TAG, "TorrServer process exited prematurely with code $exit")
                    process = null
                    return@withContext false
                } catch (_: IllegalThreadStateException) {
                    // Процесс всё еще работает — продолжаем ожидание
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to launch embedded TorrServer: ${e.message}", e)
        }

        isServerAlive(port)
    }

    fun stopServer() {
        try {
            process?.destroy()
        } catch (_: Exception) {}
        process = null
    }
}
