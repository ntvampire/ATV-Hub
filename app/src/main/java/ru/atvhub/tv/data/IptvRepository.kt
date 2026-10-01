package ru.atvhub.tv.data

import android.content.Context
import android.content.SharedPreferences
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import ru.atvhub.tv.model.IptvChannel
import java.io.File
import java.util.concurrent.TimeUnit

class IptvRepository(private val context: Context) {

    private val prefs: SharedPreferences =
        context.getSharedPreferences("atvhub_iptv_prefs", Context.MODE_PRIVATE)

    private val client = OkHttpClient.Builder()
        .connectTimeout(15, TimeUnit.SECONDS)
        .readTimeout(20, TimeUnit.SECONDS)
        .build()

    companion object {
        const val PREF_KEY_PLAYLIST_URL = "pref_iptv_playlist_url"
        const val PREF_KEY_EPG_URL = "pref_iptv_epg_url"
        const val DEFAULT_PLAYLIST_URL = "https://raw.githubusercontent.com/iptv-org/iptv/master/streams/ru.m3u"
        const val DEFAULT_EPG_URL = "https://iptv-org.github.io/epg/guides/ru.xml"
    }

    var playlistUrl: String
        get() = prefs.getString(PREF_KEY_PLAYLIST_URL, DEFAULT_PLAYLIST_URL) ?: DEFAULT_PLAYLIST_URL
        set(value) = prefs.edit().putString(PREF_KEY_PLAYLIST_URL, value).apply()

    var epgUrl: String
        get() = prefs.getString(PREF_KEY_EPG_URL, DEFAULT_EPG_URL) ?: DEFAULT_EPG_URL
        set(value) = prefs.edit().putString(PREF_KEY_EPG_URL, value).apply()

    suspend fun getChannels(): List<IptvChannel> = withContext(Dispatchers.IO) {
        val cachedFile = File(context.filesDir, "playlist.m3u")
        if (cachedFile.exists() && cachedFile.length() > 0) {
            val channels = parseM3u(cachedFile.readText())
            if (channels.isNotEmpty()) {
                return@withContext channels
            }
        }

        // Загрузка из сети или встроенный fallback
        try {
            val channels = fetchRemotePlaylist(playlistUrl)
            if (channels.isNotEmpty()) {
                return@withContext channels
            }
        } catch (_: Exception) {}

        return@withContext getDefaultChannels()
    }

    suspend fun refreshPlaylist(): Result<Int> = withContext(Dispatchers.IO) {
        try {
            val channels = fetchRemotePlaylist(playlistUrl)
            if (channels.isNotEmpty()) {
                Result.success(channels.size)
            } else {
                Result.failure(Exception("Плейлист пуст"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    private fun fetchRemotePlaylist(url: String): List<IptvChannel> {
        val request = Request.Builder()
            .url(url)
            .header("User-Agent", "ATV-Hub/2.0")
            .build()

        val response = client.newCall(request).execute()
        if (!response.isSuccessful) return emptyList()

        val content = response.body?.string() ?: return emptyList()
        val channels = parseM3u(content)
        if (channels.isNotEmpty()) {
            File(context.filesDir, "playlist.m3u").writeText(content)
        }
        return channels
    }

    fun parseM3u(content: String): List<IptvChannel> {
        val list = mutableListOf<IptvChannel>()
        val lines = content.lines()
        var currentTvgId: String? = null
        var currentLogo: String? = null
        var currentGroup = "Общие"
        var currentName: String? = null

        for (line in lines) {
            val trimmed = line.trim()
            if (trimmed.startsWith("#EXTINF:", ignoreCase = true)) {
                currentTvgId = extractAttribute(trimmed, "tvg-id")
                currentLogo = extractAttribute(trimmed, "tvg-logo")
                currentGroup = extractAttribute(trimmed, "group-title") ?: "Общие"
                currentName = trimmed.substringAfterLast(",").trim()
            } else if (trimmed.isNotEmpty() && !trimmed.startsWith("#")) {
                val name = if (!currentName.isNullOrBlank()) currentName else "Канал ${list.size + 1}"
                val id = currentTvgId ?: "chan_${list.size + 1}"
                list.add(
                    IptvChannel(
                        id = id,
                        name = name,
                        logoUrl = currentLogo,
                        streamUrl = trimmed,
                        groupTitle = currentGroup,
                        tvgId = currentTvgId,
                        currentProgramTitle = getMockEpgForChannel(name),
                        currentProgramProgressPercent = (20..80).random()
                    )
                )
                currentTvgId = null
                currentLogo = null
                currentGroup = "Общие"
                currentName = null
            }
        }
        return list
    }

    private fun extractAttribute(line: String, attrName: String): String? {
        val pattern = """$attrName="([^"]*)"""".toRegex()
        val match = pattern.find(line)
        return match?.groups?.get(1)?.value
    }

    private fun getMockEpgForChannel(name: String): String {
        return when {
            name.contains("Первый", ignoreCase = true) -> "Новости (прямой эфир)"
            name.contains("Россия 1", ignoreCase = true) -> "Вести в 20:00"
            name.contains("Матч", ignoreCase = true) -> "Футбол. Обзор матчей тура"
            name.contains("НТВ", ignoreCase = true) -> "Чрезвычайное происшествие"
            name.contains("СТС", ignoreCase = true) -> "Шоу Уральские Пельмени"
            name.contains("ТНТ", ignoreCase = true) -> "Однажды в России"
            name.contains("Пятница", ignoreCase = true) -> "Орёл и Решка"
            name.contains("Культура", ignoreCase = true) || name.contains("Россия К", ignoreCase = true) -> "Шедевры мирового кино"
            name.contains("Карусель", ignoreCase = true) -> "Маша и Медведь"
            name.contains("Кино", ignoreCase = true) -> "Художественный фильм"
            else -> "Прямой эфир"
        }
    }

    fun getDefaultChannels(): List<IptvChannel> {
        return listOf(
            IptvChannel(
                id = "c1",
                name = "Первый канал HD",
                groupTitle = "Общие",
                streamUrl = "https://cdn-1tv.vedomosti.ru/1tv_hd.m3u8",
                currentProgramTitle = "Время. Информационный выпуск",
                currentProgramProgressPercent = 45
            ),
            IptvChannel(
                id = "c2",
                name = "Россия 1 HD",
                groupTitle = "Общие",
                streamUrl = "https://vgtrk-live.cdnvideo.ru/vgtrk/russia1hd.m3u8",
                currentProgramTitle = "Вести. Прямой эфир",
                currentProgramProgressPercent = 60
            ),
            IptvChannel(
                id = "c3",
                name = "Матч ТВ HD",
                groupTitle = "Спорт",
                streamUrl = "https://matchtv-live.cdnvideo.ru/matchtv/hd.m3u8",
                currentProgramTitle = "Все на Матч! Аналитическая программа",
                currentProgramProgressPercent = 30
            ),
            IptvChannel(
                id = "c4",
                name = "НТВ HD",
                groupTitle = "Общие",
                streamUrl = "https://ntv-live.cdnvideo.ru/ntv/hd.m3u8",
                currentProgramTitle = "Сегодня. Главные события дня",
                currentProgramProgressPercent = 75
            ),
            IptvChannel(
                id = "c5",
                name = "СТС HD",
                groupTitle = "Развлекательные",
                streamUrl = "https://ctc-live.cdnvideo.ru/ctc/hd.m3u8",
                currentProgramTitle = "Ивановы-Ивановы",
                currentProgramProgressPercent = 25
            ),
            IptvChannel(
                id = "c6",
                name = "ТНТ HD",
                groupTitle = "Развлекательные",
                streamUrl = "https://tnt-live.cdnvideo.ru/tnt/hd.m3u8",
                currentProgramTitle = "Stand Up. Новый сезон",
                currentProgramProgressPercent = 50
            ),
            IptvChannel(
                id = "c7",
                name = "Россия 24",
                groupTitle = "Информационные",
                streamUrl = "https://vgtrk-live.cdnvideo.ru/vgtrk/russia24.m3u8",
                currentProgramTitle = "Вести. Непрерывный новостной канал",
                currentProgramProgressPercent = 85
            ),
            IptvChannel(
                id = "c8",
                name = "Карусель",
                groupTitle = "Детские",
                streamUrl = "https://karusel-live.cdnvideo.ru/karusel/hd.m3u8",
                currentProgramTitle = "Спокойной ночи, малыши!",
                currentProgramProgressPercent = 10
            ),
            IptvChannel(
                id = "c9",
                name = "Пятница! HD",
                groupTitle = "Развлекательные",
                streamUrl = "https://friday-live.cdnvideo.ru/friday/hd.m3u8",
                currentProgramTitle = "На ножах с Константином Ивлевым",
                currentProgramProgressPercent = 65
            ),
            IptvChannel(
                id = "c10",
                name = "Мосфильм. Золотая коллекция",
                groupTitle = "Кино",
                streamUrl = "https://mosfilm-live.cdnvideo.ru/mosfilm/hd.m3u8",
                currentProgramTitle = "Бриллиантовая рука (Реставрация 4K)",
                currentProgramProgressPercent = 40
            ),
            IptvChannel(
                id = "c11",
                name = "Кинокомедия HD",
                groupTitle = "Кино",
                streamUrl = "https://redmedia-live.cdnvideo.ru/kinokomediya/hd.m3u8",
                currentProgramTitle = "О чем говорят мужчины",
                currentProgramProgressPercent = 55
            ),
            IptvChannel(
                id = "c12",
                name = "Муз-ТВ HD",
                groupTitle = "Музыка",
                streamUrl = "https://muztv-live.cdnvideo.ru/muztv/hd.m3u8",
                currentProgramTitle = "Золотой Граммофон. Топ-20",
                currentProgramProgressPercent = 80
            )
        )
    }
}
