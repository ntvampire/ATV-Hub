package com.atvhub.launcher.model

import java.io.Serializable

data class TorrentItem(
    val title: String,
    val tracker: String,
    val sizeBytes: Long,
    val sizeReadable: String,
    val seeds: Int,
    val peers: Int,
    val magnetUrl: String,
    val quality: String // "1080p", "4K", "BDRip"
) : Serializable

data class OnlineStream(
    val sourceName: String, // "Rezka", "Kodik", "VK", "Rutube"
    val audioTrack: String, // "Дубляж", "HDRezka Studio", "Оригинал"
    val quality: String, // "1080p", "720p"
    val streamUrl: String
) : Serializable
