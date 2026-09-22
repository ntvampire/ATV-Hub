package com.atvhub.launcher.model

enum class RowType {
    APPS,
    CONTINUE_WATCHING,
    NEW_EPISODES,
    IPTV_FAVORITES,
    MOVIES_DIGITAL,
    SERIES_DIGITAL,
    FAVORITES,
    YOUTUBE_RECS,
    YOUTUBE_SUBS
}

data class HomeRow(
    val id: String,
    val type: RowType,
    val title: String,
    val isEnabled: Boolean = true,
    val orderIndex: Int = 0,
    val items: List<Any> = emptyList()
)
