package com.atvhub.launcher

import android.app.Application
import coil.ImageLoader
import coil.ImageLoaderFactory
import coil.disk.DiskCache
import coil.memory.MemoryCache
import okhttp3.OkHttpClient

class ATVHubApplication : Application(), ImageLoaderFactory {

    override fun onCreate() {
        super.onCreate()
        instance = this
    }

    override fun newImageLoader(): ImageLoader {
        return ImageLoader.Builder(this)
            .memoryCache {
                MemoryCache.Builder(this)
                    .maxSizePercent(0.25) // Ограничиваем память, важно для слабых приставок
                    .build()
            }
            .diskCache {
                DiskCache.Builder()
                    .directory(cacheDir.resolve("image_cache"))
                    .maxSizeBytes(100L * 1024 * 1024) // 100 МБ кэша постеров
                    .build()
            }
            .okHttpClient {
                OkHttpClient.Builder()
                    .build()
            }
            .crossfade(false) // Отключаем лишние анимации ради строгого матового стиля и 60fps
            .build()
    }

    companion object {
        lateinit var instance: ATVHubApplication
            private set
    }
}
