package com.atvhub.launcher.model

import android.graphics.drawable.Drawable

data class AppItem(
    val packageName: String,
    val activityName: String,
    val label: String,
    val icon: Drawable? = null,
    val banner: Drawable? = null,
    val isVisible: Boolean = true,
    val orderIndex: Int = 0
)
