package ru.atvhub.tv.ui

import android.app.AlertDialog
import android.graphics.Color
import android.graphics.PorterDuff
import android.os.Bundle
import android.view.KeyEvent
import android.view.View
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.launch
import ru.atvhub.tv.R
import ru.atvhub.tv.data.UpdateManager
import ru.atvhub.tv.databinding.ActivityMainBinding
import ru.atvhub.tv.system.TvSystemActions
import ru.atvhub.tv.ui.apps.AppsFragment
import ru.atvhub.tv.ui.home.HomeFragment
import ru.atvhub.tv.ui.section.GenericSectionFragment

class MainActivity : AppCompatActivity() {

    enum class NavSection {
        SEARCH, HOME, MY_LIST, LIVE_TV, APPS, SETTINGS
    }

    private lateinit var binding: ActivityMainBinding
    private lateinit var updateManager: UpdateManager

    private var currentSection: NavSection = NavSection.HOME
    private val fragmentsMap = mutableMapOf<NavSection, Fragment>()

    private val COLOR_ACTIVE = Color.parseColor("#8B5CF6")
    private val COLOR_INACTIVE = Color.parseColor("#64748B")
    private val COLOR_FOCUSED = Color.parseColor("#F1F5F9")

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        updateManager = UpdateManager(this)

        setupSidebar()
        initFragments()
        switchSection(NavSection.HOME, requestFocusOnContent = false)

        checkDefaultLauncherPrompt()
        checkForUpdatesInBackground()
    }

    private fun initFragments() {
        val fm = supportFragmentManager
        val ft = fm.beginTransaction()

        val homeFrag = HomeFragment()
        val appsFrag = AppsFragment()
        val searchFrag = GenericSectionFragment.newInstance(
            getString(R.string.nav_search),
            "Глобальный поиск фильмов, сериалов и приложений",
            R.drawable.ic_nav_search
        )
        val myListFrag = GenericSectionFragment.newInstance(
            getString(R.string.nav_mylist),
            "Избранное, закладки и история просмотров",
            R.drawable.ic_nav_mylist
        )
        val liveTvFrag = GenericSectionFragment.newInstance(
            getString(R.string.nav_livetv),
            "IPTV плейлисты, каналы и программа передач (EPG)",
            R.drawable.ic_nav_livetv
        )
        val settingsFrag = GenericSectionFragment.newInstance(
            getString(R.string.nav_settings),
            "Настройки плеера, движка TorrServer, выбор языка и автообновление",
            R.drawable.ic_nav_settings
        )

        fragmentsMap[NavSection.HOME] = homeFrag
        fragmentsMap[NavSection.APPS] = appsFrag
        fragmentsMap[NavSection.SEARCH] = searchFrag
        fragmentsMap[NavSection.MY_LIST] = myListFrag
        fragmentsMap[NavSection.LIVE_TV] = liveTvFrag
        fragmentsMap[NavSection.SETTINGS] = settingsFrag

        for ((_, frag) in fragmentsMap) {
            ft.add(R.id.content_container, frag)
            ft.hide(frag)
        }
        ft.commitNow()
    }

    private fun setupSidebar() {
        wireNavItem(binding.navItemSearch, binding.navIndicatorSearch, binding.navIconSearch, NavSection.SEARCH)
        wireNavItem(binding.navItemHome, binding.navIndicatorHome, binding.navIconHome, NavSection.HOME)
        wireNavItem(binding.navItemMylist, binding.navIndicatorMylist, binding.navIconMylist, NavSection.MY_LIST)
        wireNavItem(binding.navItemLivetv, binding.navIndicatorLivetv, binding.navIconLivetv, NavSection.LIVE_TV)
        wireNavItem(binding.navItemApps, binding.navIndicatorApps, binding.navIconApps, NavSection.APPS)
        wireNavItem(binding.navItemSettings, binding.navIndicatorSettings, binding.navIconSettings, NavSection.SETTINGS)
    }

    private fun wireNavItem(
        item: FrameLayout,
        indicator: View,
        icon: ImageView,
        section: NavSection
    ) {
        item.setOnFocusChangeListener { _, hasFocus ->
            if (hasFocus) {
                icon.setColorFilter(COLOR_FOCUSED, PorterDuff.Mode.SRC_IN)
                item.scaleX = 1.08f
                item.scaleY = 1.08f
                switchSection(section, requestFocusOnContent = false)
            } else {
                item.scaleX = 1.0f
                item.scaleY = 1.0f
                val color = if (section == currentSection) COLOR_ACTIVE else COLOR_INACTIVE
                icon.setColorFilter(color, PorterDuff.Mode.SRC_IN)
            }
        }

        item.setOnClickListener {
            switchSection(section, requestFocusOnContent = true)
        }
    }

    private fun switchSection(section: NavSection, requestFocusOnContent: Boolean) {
        if (currentSection == section && !requestFocusOnContent) {
            updateSidebarVisuals()
            return
        }

        val targetFragment = fragmentsMap[section] ?: return
        val currentFragment = fragmentsMap[currentSection]

        val ft = supportFragmentManager.beginTransaction()
        if (currentFragment != null && currentFragment != targetFragment) {
            ft.hide(currentFragment)
        }
        ft.show(targetFragment)
        ft.commit()

        currentSection = section
        updateSidebarVisuals()

        if (requestFocusOnContent) {
            when (targetFragment) {
                is HomeFragment -> targetFragment.requestInitialFocus()
                is AppsFragment -> targetFragment.requestInitialFocus()
                else -> targetFragment.view?.requestFocus()
            }
        }
    }

    private fun updateSidebarVisuals() {
        val pairs = listOf(
            Triple(binding.navIndicatorSearch, binding.navIconSearch, NavSection.SEARCH),
            Triple(binding.navIndicatorHome, binding.navIconHome, NavSection.HOME),
            Triple(binding.navIndicatorMylist, binding.navIconMylist, NavSection.MY_LIST),
            Triple(binding.navIndicatorLivetv, binding.navIconLivetv, NavSection.LIVE_TV),
            Triple(binding.navIndicatorApps, binding.navIconApps, NavSection.APPS),
            Triple(binding.navIndicatorSettings, binding.navIconSettings, NavSection.SETTINGS)
        )

        for ((indicator, icon, section) in pairs) {
            val isActive = section == currentSection
            indicator.visibility = if (isActive) View.VISIBLE else View.GONE
            val color = if (isActive) COLOR_ACTIVE else COLOR_INACTIVE
            icon.setColorFilter(color, PorterDuff.Mode.SRC_IN)
        }
    }

    private fun checkDefaultLauncherPrompt() {
        if (!TvSystemActions.isDefaultLauncher(this)) {
            binding.root.postDelayed({
                if (!isFinishing && !isDestroyed) {
                    showSetDefaultHomeDialog()
                }
            }, 3000)
        }
    }

    private fun showSetDefaultHomeDialog() {
        AlertDialog.Builder(this)
            .setTitle(R.string.dialog_set_default_home_title)
            .setMessage(R.string.dialog_set_default_home_desc)
            .setPositiveButton(R.string.btn_set_as_default) { _, _ ->
                TvSystemActions.requestSetDefaultLauncher(this)
            }
            .setNegativeButton(R.string.btn_later, null)
            .show()
    }

    private fun checkForUpdatesInBackground() {
        lifecycleScope.launch {
            val update = updateManager.checkUpdate()
            if (update.hasUpdate && update.downloadUrl != null) {
                AlertDialog.Builder(this@MainActivity)
                    .setTitle(getString(R.string.update_available_title, update.latestVersion))
                    .setMessage(update.releaseNotes)
                    .setPositiveButton(R.string.update_btn_install) { _, _ ->
                        Toast.makeText(this@MainActivity, "Загрузка обновления...", Toast.LENGTH_SHORT).show()
                        lifecycleScope.launch {
                            updateManager.downloadAndInstall(update.downloadUrl) { progress ->
                                // Optional progress reporting
                            }
                        }
                    }
                    .setNegativeButton(R.string.btn_later, null)
                    .show()
            }
        }
    }

    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            if (currentSection != NavSection.HOME) {
                switchSection(NavSection.HOME, requestFocusOnContent = true)
                return true
            }
        }
        if (keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER || keyCode == KeyEvent.KEYCODE_NUMPAD_ENTER) {
            val focus = currentFocus
            if (focus != null) {
                focus.performClick()
                return true
            }
        }
        return super.onKeyDown(keyCode, event)
    }
}
