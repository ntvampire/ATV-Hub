package ru.atvhub.tv.data

import android.content.Context
import android.util.Log
import com.google.gson.Gson
import com.google.gson.annotations.SerializedName
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import ru.atvhub.tv.model.MediaItem
import java.util.concurrent.TimeUnit

class MediaCatalogRepository(private val context: Context) {

    companion object {
        private const val TAG = "MediaCatalogRepo"

        private const val API_KEY = "4ef0d7355d9ffb5151e987764708ce96"
        private const val BASE_IMAGE_URL = "https://imagetmdb.com/t/p/w500"

        private val API_HOSTS = listOf(
            "https://nmapi.duckdns.org",
            "https://edge-meta.liilstudio.workers.dev",
            "https://api.themoviedb.org/3"
        )
    }

    private val httpClient = OkHttpClient.Builder()
        .connectTimeout(5, TimeUnit.SECONDS)
        .readTimeout(8, TimeUnit.SECONDS)
        .build()

    private val gson = Gson()

    private data class TmdbResponse(
        @SerializedName("results") val results: List<TmdbItem>?
    )

    private data class TmdbItem(
        @SerializedName("id") val id: Int,
        @SerializedName("title") val title: String?,
        @SerializedName("name") val name: String?,
        @SerializedName("overview") val overview: String?,
        @SerializedName("poster_path") val posterPath: String?,
        @SerializedName("backdrop_path") val backdropPath: String?,
        @SerializedName("release_date") val releaseDate: String?,
        @SerializedName("first_air_date") val firstAirDate: String?,
        @SerializedName("vote_average") val voteAverage: Float?,
        @SerializedName("genre_ids") val genreIds: List<Int>?
    )

    suspend fun getTopMoviesWeek(): List<MediaItem> = withContext(Dispatchers.IO) {
        val fetched = fetchMediaList("trending/movie/week?language=ru-RU", isSeries = false)
        if (fetched.isNotEmpty()) {
            fetched.take(10)
        } else {
            getFallbackTopMovies()
        }
    }

    suspend fun getTopSeriesWeek(): List<MediaItem> = withContext(Dispatchers.IO) {
        val fetched = fetchMediaList("trending/tv/week?language=ru-RU", isSeries = true)
        if (fetched.isNotEmpty()) {
            fetched.take(10)
        } else {
            getFallbackTopSeries()
        }
    }

    suspend fun getDigitalReleases(): List<MediaItem> = withContext(Dispatchers.IO) {
        val fetched = fetchMediaList("movie/now_playing?language=ru-RU", isSeries = false)
        if (fetched.isNotEmpty()) {
            fetched.take(12)
        } else {
            getFallbackDigitalReleases()
        }
    }

    suspend fun getPopularMovies(): List<MediaItem> = withContext(Dispatchers.IO) {
        val fetched = fetchMediaList("discover/movie?sort_by=popularity.desc&language=ru-RU", isSeries = false)
        if (fetched.isNotEmpty()) {
            fetched.take(12)
        } else {
            emptyList()
        }
    }

    private fun fetchMediaList(endpoint: String, isSeries: Boolean): List<MediaItem> {
        for (host in API_HOSTS) {
            val delimiter = if (endpoint.contains("?")) "&" else "?"
            val url = "$host/$endpoint${delimiter}api_key=$API_KEY"

            try {
                val request = Request.Builder()
                    .url(url)
                    .header("User-Agent", "ATVHub/2.0")
                    .build()

                httpClient.newCall(request).execute().use { response ->
                    if (response.isSuccessful) {
                        val body = response.body?.string() ?: return@use
                        val parsed = gson.fromJson(body, TmdbResponse::class.java)
                        val items = parsed.results ?: return@use

                        return items.mapNotNull { item ->
                            val displayTitle = item.title ?: item.name ?: return@mapNotNull null
                            val dateStr = item.releaseDate ?: item.firstAirDate ?: ""
                            val year = if (dateStr.length >= 4) dateStr.substring(0, 4).toIntOrNull() ?: 0 else 0
                            val poster = if (!item.posterPath.isNullOrEmpty()) "$BASE_IMAGE_URL${item.posterPath}" else null
                            val backdrop = if (!item.backdropPath.isNullOrEmpty()) "$BASE_IMAGE_URL${item.backdropPath}" else null
                            val rating = item.voteAverage ?: 0f

                            MediaItem(
                                id = "${if (isSeries) "tv" else "movie"}_${item.id}",
                                title = displayTitle,
                                year = year,
                                posterUrl = poster,
                                backdropUrl = backdrop,
                                ratingKp = rating,
                                qualityBadge = if (rating >= 7.5f) "4K HDR" else "1080p",
                                isSeries = isSeries,
                                description = item.overview,
                                genres = mapGenres(item.genreIds)
                            )
                        }
                    }
                }
            } catch (e: Exception) {
                Log.w(TAG, "Host $host failed for $endpoint: ${e.message}")
            }
        }
        return emptyList()
    }

    private fun mapGenres(genreIds: List<Int>?): List<String> {
        if (genreIds == null) return emptyList()
        val genreMap = mapOf(
            28 to "Боевик",
            12 to "Приключения",
            16 to "Мультфильм",
            35 to "Комедия",
            80 to "Криминал",
            99 to "Документальный",
            18 to "Драма",
            10751 to "Семейный",
            14 to "Фэнтези",
            36 to "История",
            27 to "Ужасы",
            10402 to "Музыка",
            9648 to "Детектив",
            10749 to "Мелодрама",
            878 to "Фантастика",
            10770 to "Телефильм",
            53 to "Триллер",
            10752 to "Военный",
            37 to "Вестерн",
            10759 to "Боевик и Приключения",
            10765 to "НФ и Фэнтези"
        )
        return genreIds.mapNotNull { genreMap[it] }
    }

    fun getFallbackTopMovies(): List<MediaItem> {
        return listOf(
            MediaItem(
                id = "movie_1003596",
                title = "Мстители: Доктор Дум",
                year = 2026,
                ratingKp = 8.4f,
                qualityBadge = "4K HDR",
                genres = listOf("Фантастика", "Боевик"),
                description = "Мстители, Люди Икс и Фантастическая четвёрка объединяются против Доктора Дума.",
                posterUrl = "$BASE_IMAGE_URL/itU2A8Yco43cAuDfVcYBXlpJzH.jpg"
            ),
            MediaItem(
                id = "movie_1368337",
                title = "Одиссея",
                year = 2026,
                ratingKp = 8.1f,
                qualityBadge = "4K HDR",
                genres = listOf("Приключения", "Боевик"),
                description = "После Троянской войны Одиссей возвращается домой к своей жене Пенелопе через мифические испытания.",
                posterUrl = "$BASE_IMAGE_URL/n7NR7SH7CyiiF70yN96r3d1jWr0.jpg"
            ),
            MediaItem(
                id = "movie_1263337",
                title = "Сердце зверя",
                year = 2026,
                ratingKp = 7.6f,
                qualityBadge = "1080p",
                genres = listOf("Приключения", "Триллер"),
                description = "Офицер спецназа и его боевая собака Один борются за выживание в суровых лесах Аляски.",
                posterUrl = "$BASE_IMAGE_URL/fOTKUSfg9C5DngN151Sfre9j6v7.jpg"
            ),
            MediaItem(
                id = "movie_1084244",
                title = "История игрушек 5",
                year = 2026,
                ratingKp = 8.3f,
                qualityBadge = "4K HDR",
                genres = listOf("Мультфильм", "Семейный"),
                description = "Вуди и Базз Лайтер сталкиваются с новой угрозой цифрового века — планшетом ЛилиПад.",
                posterUrl = "$BASE_IMAGE_URL/84igQj0DU3TgPrtQ7bHXHCio1sV.jpg"
            ),
            MediaItem(
                id = "movie_1607127",
                title = "Один последний выстрел",
                year = 2026,
                ratingKp = 7.4f,
                qualityBadge = "1080p",
                genres = listOf("Боевик", "Триллер"),
                description = "Боец Navy SEALs Джейк Харрис должен предотвратить диверсию против системы обороны.",
                posterUrl = "$BASE_IMAGE_URL/pvZ1RcajNBWFlCj0pWHrRqyMJU8.jpg"
            ),
            MediaItem(
                id = "movie_1101383",
                title = "На краю Оук-стрит",
                year = 2026,
                ratingKp = 7.1f,
                qualityBadge = "1080p",
                genres = listOf("Фантастика", "Детектив"),
                description = "Июль 1982-го года. Жители пригорода неожиданно переносятся во времени на миллионы лет назад к динозаврам.",
                posterUrl = "$BASE_IMAGE_URL/5jhArZFrQIqEuh4ZNuBaQsnEy7s.jpg"
            )
        )
    }

    fun getFallbackTopSeries(): List<MediaItem> {
        return listOf(
            MediaItem(
                id = "tv_113962",
                title = "Спецназ: Львица",
                year = 2026,
                ratingKp = 8.3f,
                qualityBadge = "4K HDR",
                genres = listOf("Драма", "Боевик"),
                description = "Опытная сотрудница ЦРУ руководит элитным спецподразделением по борьбе с терроризмом.",
                posterUrl = "$BASE_IMAGE_URL/yWOwT5xlwdIsboOa3f20jpfxaQK.jpg",
                isSeries = true
            ),
            MediaItem(
                id = "tv_37854",
                title = "Ван-Пис",
                year = 2026,
                ratingKp = 8.8f,
                qualityBadge = "1080p",
                genres = listOf("Аниме", "Приключения"),
                description = "Приключения Манки Д. Луффи и команды Соломенной Шляпы в поисках легендарного сокровища.",
                posterUrl = "$BASE_IMAGE_URL/osRT8GsND3PfhvevsS5DK9px0LI.jpg",
                isSeries = true
            ),
            MediaItem(
                id = "tv_290720",
                title = "Последнее дело Холмса",
                year = 2026,
                ratingKp = 7.5f,
                qualityBadge = "1080p",
                genres = listOf("Детектив", "Криминал"),
                description = "Пожилой актёр, игравший Шерлока Холмса, расследует загадочное убийство на отрезанном штормом острове.",
                posterUrl = "$BASE_IMAGE_URL/jVHx7Yxh41Xf1txD5AsX5MZ4E1e.jpg",
                isSeries = true
            ),
            MediaItem(
                id = "tv_45790",
                title = "Невероятные приключения ДжоДжо",
                year = 2026,
                ratingKp = 8.5f,
                qualityBadge = "1080p",
                genres = listOf("Аниме", "Боевик"),
                description = "Многовековая битва семьи Джостаров против темных сил.",
                posterUrl = "$BASE_IMAGE_URL/6kG506PdsyuHWnc5OWGl64Kd6XK.jpg",
                isSeries = true
            )
        )
    }

    fun getFallbackDigitalReleases(): List<MediaItem> {
        return listOf(
            MediaItem(
                id = "movie_1153576",
                title = "Уличный боец",
                year = 2026,
                ratingKp = 7.0f,
                qualityBadge = "1080p",
                genres = listOf("Боевик", "Фэнтези"),
                description = "Рю и Кен возвращаются в мир турнира World Warrior, чтобы разоблачить глобальный заговор.",
                posterUrl = "$BASE_IMAGE_URL/2qGRXNrhyg3N5KNAZuahmUvf15s.jpg"
            ),
            MediaItem(
                id = "movie_1083381",
                title = "Закулисье реальности",
                year = 2026,
                ratingKp = 7.2f,
                qualityBadge = "1080p",
                genres = listOf("Ужасы", "Фантастика"),
                description = "Таинственный портал в бесконечный лабиринт жёлтых комнат Закулисья.",
                posterUrl = "$BASE_IMAGE_URL/oBY8IQb9NpzbkCo0xzpz7Q1DCu.jpg"
            )
        )
    }
}
