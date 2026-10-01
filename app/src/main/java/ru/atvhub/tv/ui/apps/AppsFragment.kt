package ru.atvhub.tv.ui.apps

import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.graphics.Color
import android.graphics.PorterDuff
import android.graphics.drawable.Drawable
import android.graphics.drawable.GradientDrawable
import android.media.tv.TvContract
import android.media.tv.TvInputInfo
import android.media.tv.TvInputManager
import android.net.Uri
import android.os.Bundle
import android.util.TypedValue
import android.view.Gravity
import android.view.KeyEvent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.GridLayout
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import ru.atvhub.tv.R
import ru.atvhub.tv.databinding.FragmentAppsBinding

class AppsFragment : Fragment() {

    private var _binding: FragmentAppsBinding? = null
    private val binding get() = _binding!!

    data class AppEntry(
        val packageName: String,
        val label: String,
        val icon: Drawable,
        val hasBanner: Boolean
    )

    data class TvInputEntry(
        val id: String,
        val name: String,
        val type: Int
    )

    private val appList = mutableListOf<AppEntry>()
    private val inputList = mutableListOf<TvInputEntry>()
    private var firstAppCard: View? = null

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentAppsBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        loadData()
    }

    private fun loadData() {
        viewLifecycleOwner.lifecycleScope.launch {
            val apps = withContext(Dispatchers.IO) { queryApps() }
            val inputs = withContext(Dispatchers.IO) { queryTvInputs() }

            appList.clear()
            appList.addAll(apps)
            inputList.clear()
            inputList.addAll(inputs)

            populateAppsGrid()
            populateTvInputs()
        }
    }

    private fun queryApps(): List<AppEntry> {
        val pm = requireContext().packageManager
        val selfPkg = requireContext().packageName

        val rawList = mutableListOf<AppEntry>()
        val seen = mutableSetOf<String>()

        // 1. Leanback Apps
        val leanbackIntent = Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LEANBACK_LAUNCHER)
        val lbList = pm.queryIntentActivities(leanbackIntent, 0)
        for (ri in lbList) {
            val pkg = ri.activityInfo.packageName
            if (pkg == selfPkg || seen.contains(pkg)) continue
            seen.add(pkg)

            var banner = try { ri.activityInfo.loadBanner(pm) } catch (_: Exception) { null }
            if (banner == null) {
                banner = try { ri.activityInfo.applicationInfo.loadBanner(pm) } catch (_: Exception) { null }
            }
            val icon = banner ?: try { ri.activityInfo.loadIcon(pm) } catch (_: Exception) { null }
            val label = try { ri.loadLabel(pm).toString() } catch (_: Exception) { pkg }

            if (icon != null) {
                rawList.add(AppEntry(pkg, label, icon, banner != null))
            }
        }

        // 2. Standard Launcher Apps fallback
        val mainIntent = Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER)
        val standardList = pm.queryIntentActivities(mainIntent, 0)
        for (ri in standardList) {
            val pkg = ri.activityInfo.packageName
            if (pkg == selfPkg || seen.contains(pkg)) continue
            seen.add(pkg)

            val icon = try { ri.loadIcon(pm) } catch (_: Exception) { null }
            val label = try { ri.loadLabel(pm).toString() } catch (_: Exception) { pkg }
            if (icon != null) {
                rawList.add(AppEntry(pkg, label, icon, false))
            }
        }

        rawList.sortBy { it.label.lowercase() }
        return rawList
    }

    private fun queryTvInputs(): List<TvInputEntry> {
        val list = mutableListOf<TvInputEntry>()
        try {
            val manager = requireContext().getSystemService(Context.TV_INPUT_SERVICE) as? TvInputManager
            val tvList = manager?.tvInputList ?: emptyList()

            for (info in tvList) {
                if (info.isPassthroughInput) {
                    val label = info.loadLabel(requireContext())?.toString()
                    val typeName = when (info.type) {
                        TvInputInfo.TYPE_HDMI -> "HDMI"
                        TvInputInfo.TYPE_COMPOSITE -> "AV"
                        TvInputInfo.TYPE_COMPONENT -> "Component"
                        TvInputInfo.TYPE_TUNER -> "TV"
                        else -> "Вход"
                    }
                    val name = if (!label.isNullOrEmpty()) label else "$typeName (${info.id.substringAfterLast('.')})"
                    list.add(TvInputEntry(info.id, name, info.type))
                }
            }
        } catch (_: Exception) {}

        if (list.isEmpty()) {
            list.add(TvInputEntry("HDMI1", "HDMI 1", TvInputInfo.TYPE_HDMI))
            list.add(TvInputEntry("HDMI2", "HDMI 2", TvInputInfo.TYPE_HDMI))
            list.add(TvInputEntry("HDMI3", "HDMI 3", TvInputInfo.TYPE_HDMI))
            list.add(TvInputEntry("AV", "AV / Composite", TvInputInfo.TYPE_COMPOSITE))
        }
        return list
    }

    private fun populateAppsGrid() {
        val grid = binding.gridApps
        grid.removeAllViews()

        val cardWidth = dp(240)
        val cardHeight = dp(135)
        val cardRadius = dp(10).toFloat()
        val margin = dp(12)

        for (i in appList.indices) {
            val app = appList[i]

            val lp = GridLayout.LayoutParams().apply {
                width = cardWidth
                height = ViewGroup.LayoutParams.WRAP_CONTENT
                setMargins(margin, margin, margin, margin)
            }

            val wrapper = LinearLayout(requireContext()).apply {
                orientation = LinearLayout.VERTICAL
                gravity = Gravity.CENTER_HORIZONTAL
                layoutParams = lp
            }

            val card = FrameLayout(requireContext()).apply {
                isFocusable = true
                layoutParams = LinearLayout.LayoutParams(cardWidth, cardHeight)
            }

            val normalBg = GradientDrawable().apply {
                shape = GradientDrawable.RECTANGLE
                cornerRadius = cardRadius
                setColor(Color.parseColor("#151922"))
                setStroke(dp(1), Color.parseColor("#232A38"))
            }

            val focusedBg = GradientDrawable().apply {
                shape = GradientDrawable.RECTANGLE
                cornerRadius = cardRadius
                setColor(Color.parseColor("#1E2433"))
                setStroke(dp(2.5f), Color.parseColor("#7C4DFF"))
            }

            card.background = normalBg

            val img = ImageView(requireContext()).apply {
                setImageDrawable(app.icon)
                scaleType = if (app.hasBanner) ImageView.ScaleType.FIT_XY else ImageView.ScaleType.FIT_CENTER
                layoutParams = FrameLayout.LayoutParams(
                    if (app.hasBanner) FrameLayout.LayoutParams.MATCH_PARENT else dp(56),
                    if (app.hasBanner) FrameLayout.LayoutParams.MATCH_PARENT else dp(56),
                    Gravity.CENTER
                )
            }
            card.addView(img)

            val label = TextView(requireContext()).apply {
                text = app.label
                setTextColor(Color.parseColor("#94A3B8"))
                setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f)
                setSingleLine(true)
                ellipsize = android.text.TextUtils.TruncateAt.END
                gravity = Gravity.CENTER
                layoutParams = LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT
                ).apply {
                    topMargin = dp(8)
                }
            }

            card.setOnFocusChangeListener { _, hasFocus ->
                if (hasFocus) {
                    card.background = focusedBg
                    label.setTextColor(Color.parseColor("#F1F5F9"))
                    wrapper.scaleX = 1.05f
                    wrapper.scaleY = 1.05f
                } else {
                    card.background = normalBg
                    label.setTextColor(Color.parseColor("#94A3B8"))
                    wrapper.scaleX = 1.0f
                    wrapper.scaleY = 1.0f
                }
            }

            card.setOnClickListener {
                val intent = requireContext().packageManager.getLeanbackLaunchIntentForPackage(app.packageName)
                    ?: requireContext().packageManager.getLaunchIntentForPackage(app.packageName)
                if (intent != null) {
                    startActivity(intent)
                }
            }

            wrapper.addView(card)
            wrapper.addView(label)
            grid.addView(wrapper)

            if (i == 0) firstAppCard = card
        }
    }

    private fun populateTvInputs() {
        val container = binding.containerTvInputs
        container.removeAllViews()

        val cardWidth = dp(180)
        val cardHeight = dp(96)
        val cardRadius = dp(10).toFloat()
        val margin = dp(8)

        for (entry in inputList) {
            val card = LinearLayout(requireContext()).apply {
                orientation = LinearLayout.VERTICAL
                gravity = Gravity.CENTER
                isFocusable = true
                layoutParams = LinearLayout.LayoutParams(cardWidth, cardHeight).apply {
                    setMargins(margin, margin, margin, margin)
                }
            }

            val normalBg = GradientDrawable().apply {
                shape = GradientDrawable.RECTANGLE
                cornerRadius = cardRadius
                setColor(Color.parseColor("#151922"))
                setStroke(dp(1), Color.parseColor("#232A38"))
            }

            val focusedBg = GradientDrawable().apply {
                shape = GradientDrawable.RECTANGLE
                cornerRadius = cardRadius
                setColor(Color.parseColor("#1E2433"))
                setStroke(dp(2.5f), Color.parseColor("#7C4DFF"))
            }

            card.background = normalBg

            val icon = ImageView(requireContext()).apply {
                val iconRes = if (entry.type == TvInputInfo.TYPE_COMPOSITE) R.drawable.ic_input_av else R.drawable.ic_input_hdmi
                setImageResource(iconRes)
                setColorFilter(Color.parseColor("#94A3B8"), PorterDuff.Mode.SRC_IN)
                layoutParams = LinearLayout.LayoutParams(dp(28), dp(28))
            }

            val label = TextView(requireContext()).apply {
                text = entry.name
                setTextColor(Color.parseColor("#94A3B8"))
                setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f)
                setSingleLine(true)
                gravity = Gravity.CENTER
                layoutParams = LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.WRAP_CONTENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT
                ).apply {
                    topMargin = dp(6)
                }
            }

            card.setOnFocusChangeListener { _, hasFocus ->
                if (hasFocus) {
                    card.background = focusedBg
                    label.setTextColor(Color.parseColor("#F1F5F9"))
                    icon.setColorFilter(Color.parseColor("#8B5CF6"), PorterDuff.Mode.SRC_IN)
                    card.scaleX = 1.05f
                    card.scaleY = 1.05f
                } else {
                    card.background = normalBg
                    label.setTextColor(Color.parseColor("#94A3B8"))
                    icon.setColorFilter(Color.parseColor("#94A3B8"), PorterDuff.Mode.SRC_IN)
                    card.scaleX = 1.0f
                    card.scaleY = 1.0f
                }
            }

            card.setOnClickListener {
                launchTvInput(entry)
            }

            card.addView(icon)
            card.addView(label)
            container.addView(card)
        }
    }

    private fun launchTvInput(entry: TvInputEntry) {
        try {
            if (entry.id.contains(".")) {
                val uri = TvContract.buildChannelUriForPassthroughInput(entry.id)
                val intent = Intent(Intent.ACTION_VIEW, uri).apply {
                    addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                }
                startActivity(intent)
                return
            }
        } catch (_: Exception) {}
        Toast.makeText(requireContext(), "Вход: ${entry.name}", Toast.LENGTH_SHORT).show()
    }

    fun requestInitialFocus() {
        firstAppCard?.requestFocus()
    }

    private fun dp(value: Float): Int {
        return TypedValue.applyDimension(
            TypedValue.COMPLEX_UNIT_DIP,
            value,
            resources.displayMetrics
        ).toInt()
    }

    private fun dp(value: Int): Int = dp(value.toFloat())

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
