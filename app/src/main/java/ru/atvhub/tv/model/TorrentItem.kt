package ru.atvhub.tv.model

import java.io.Serializable

data class TorrentItem(
    val title: String,
    val tracker: String,
    val sizeBytes: Long = 0L,
    val sizeReadable: String,
    val seeds: Int,
    val peers: Int,
    val magnetUrl: String,
    val quality: String, // "1080p", "4K UHD", "720p"
    val voice: String? = null
) : Serializable

data class OnlineStream(
    val sourceName: String, // "VK Видео", "Rutube", "Kodik", "Alloha", "Collaps"
    val audioTrack: String, // "Дубляж", "Red Head Sound", "LostFilm", "HDRezka"
    val quality: String,    // "1080p", "720p", "4K"
    val streamUrl: String,
    val headers: Map<String, String>? = null,
    val isRussian: Boolean = true
) : Serializable
