package com.atvhub.launcher.model

import java.io.Serializable

data class MediaItem(
    val id: String,
    val title: String,
    val originalTitle: String? = null,
    val year: Int = 0,
    val posterUrl: String? = null,
    val backdropUrl: String? = null,
    val ratingKp: Float = 0f,
    val ratingImdb: Float = 0f,
    val qualityBadge: String? = null, // "1080p", "4K", "WEB-DL"
    val isSeries: Boolean = false,
    val description: String? = null,
    val genres: List<String> = emptyList(),
    val durationMinutes: Int = 0,
    val trailerYoutubeId: String? = null,
    val lastWatchedEpisode: String? = null, // "S02E05"
    val resumePositionMs: Long = 0L,
    val totalDurationMs: Long = 0L,
    val isTracked: Boolean = false, // Для сериалов: "Следить"
    val isFavorite: Boolean = false
) : Serializable
