package com.atvhub.launcher.model

import java.io.Serializable

data class IptvChannel(
    val id: String,
    val name: String,
    val logoUrl: String? = null,
    val streamUrl: String,
    val groupTitle: String = "Общие",
    val tvgId: String? = null,
    val currentProgramTitle: String? = null,
    val currentProgramProgressPercent: Int = 0,
    val isFavorite: Boolean = false
) : Serializable
