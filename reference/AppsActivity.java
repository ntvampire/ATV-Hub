package app.flux.tv;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.tv.TvContract;
import android.media.tv.TvInputInfo;
import android.media.tv.TvInputManager;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class AppsActivity extends Activity {

    private static final String TAG = "AppsActivity";

    // OLED Dark Theme Colors
    private static final int BG_ROOT = Color.parseColor("#080B10");
    private static final int BG_SIDEBAR = Color.parseColor("#000000");
    private static final int BG_CONTENT = Color.parseColor("#0B0E14");
    private static final int CARD_BG = Color.parseColor("#151922");
    private static final int CARD_FOCUSED_BG = Color.parseColor("#1E2433");
    private static final int FOCUS_BORDER = Color.parseColor("#7C4DFF");
    private static final int TEXT_PRIMARY = Color.parseColor("#F1F5F9");
    private static final int TEXT_SECONDARY = Color.parseColor("#94A3B8");
    private static final int SIDEBAR_INACTIVE = Color.parseColor("#64748B");
    private static final int ACCENT_PURPLE = Color.parseColor("#8B5CF6");

    private GridLayout gridLayout;
    private LinearLayout tvInputsContainer;
    private final List<AppEntry> appList = new ArrayList<>();
    private final List<TvInputEntry> inputList = new ArrayList<>();
    private View firstAppCard = null;
    private View sidebarAppsButton = null;

    public static class AppEntry {
        public String packageName;
        public String label;
        public Drawable icon;
        public boolean hasBanner;
        public boolean isSmartTube;

        public AppEntry(String packageName, String label, Drawable icon, boolean hasBanner, boolean isSmartTube) {
            this.packageName = packageName;
            this.label = label;
            this.icon = icon;
            this.hasBanner = hasBanner;
            this.isSmartTube = isSmartTube;
        }
    }

    public static class TvInputEntry {
        public String id;
        public String name;
        public int type;

        public TvInputEntry(String id, String name, int type) {
            this.id = id;
            this.name = name;
            this.type = type;
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        overridePendingTransition(0, 0);

        // Keep reference to activity for bridge dialogs
        setBridgeContext();

        // Main Horizontal Container (Sidebar + Content)
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.HORIZONTAL);
        root.setBackgroundColor(BG_ROOT);

        // 1. Left Navigation Sidebar
        View sidebar = createSidebar();
        LinearLayout.LayoutParams sideParams = new LinearLayout.LayoutParams(
                dp(76), ViewGroup.LayoutParams.MATCH_PARENT
        );
        root.addView(sidebar, sideParams);

        // 2. Right Content Area (ScrollView containing Apps Grid + TV Inputs)
        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        scrollView.setClipToPadding(false);
        scrollView.setBackgroundColor(BG_CONTENT);

        LinearLayout contentLayout = new LinearLayout(this);
        contentLayout.setOrientation(LinearLayout.VERTICAL);
        int padH = dp(36);
        int padTop = dp(24);
        contentLayout.setPadding(padH, padTop, padH, dp(40));

        // Header Title
        TextView titleView = new TextView(this);
        titleView.setText("Приложения");
        titleView.setTextColor(TEXT_PRIMARY);
        titleView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 26);
        titleView.setTypeface(Typeface.DEFAULT_BOLD);
        contentLayout.addView(titleView);

        TextView subView = new TextView(this);
        subView.setText("Установленные приложения");
        subView.setTextColor(TEXT_SECONDARY);
        subView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        LinearLayout.LayoutParams subParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT
        );
        subParams.topMargin = dp(2);
        subParams.bottomMargin = dp(20);
        contentLayout.addView(subView, subParams);

        // Apps Grid (4 columns, vertical scrolling)
        gridLayout = new GridLayout(this);
        gridLayout.setColumnCount(4);
        gridLayout.setOrientation(GridLayout.HORIZONTAL);
        contentLayout.addView(gridLayout, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
        ));

        // TV Inputs Section
        TextView inputsHeader = new TextView(this);
        inputsHeader.setText("Входы");
        inputsHeader.setTextColor(TEXT_SECONDARY);
        inputsHeader.setTextSize(TypedValue.COMPLEX_UNIT_SP, 18);
        inputsHeader.setTypeface(Typeface.DEFAULT_BOLD);
        LinearLayout.LayoutParams ihParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT
        );
        ihParams.topMargin = dp(36);
        ihParams.bottomMargin = dp(14);
        contentLayout.addView(inputsHeader, ihParams);

        // Horizontal Row for TV Inputs
        HorizontalScrollView inputsScroll = new HorizontalScrollView(this);
        inputsScroll.setFillViewport(true);
        inputsScroll.setClipToPadding(false);

        tvInputsContainer = new LinearLayout(this);
        tvInputsContainer.setOrientation(LinearLayout.HORIZONTAL);
        inputsScroll.addView(tvInputsContainer, new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
        ));
        contentLayout.addView(inputsScroll, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
        ));

        scrollView.addView(contentLayout, new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
        ));

        LinearLayout.LayoutParams contentParams = new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT, 1.0f
        );
        root.addView(scrollView, contentParams);

        setContentView(root);

        loadApps();
        populateAppsGrid();

        loadTvInputs();
        populateTvInputs();

        // Focus first app by default
        if (firstAppCard != null) {
            firstAppCard.post(new Runnable() {
                @Override
                public void run() {
                    if (firstAppCard != null) firstAppCard.requestFocus();
                }
            });
        }
    }

    // -------------------------------------------------------------
    // Left Navigation Sidebar (matches MainActivity sidebar)
    // -------------------------------------------------------------
    private View createSidebar() {
        LinearLayout sidebar = new LinearLayout(this);
        sidebar.setOrientation(LinearLayout.VERTICAL);
        sidebar.setGravity(Gravity.CENTER_HORIZONTAL);
        sidebar.setBackgroundColor(BG_SIDEBAR);
        sidebar.setPadding(0, dp(18), 0, dp(18));

        // Top App Logo
        ImageView logoView = new ImageView(this);
        int logoRes = getResources().getIdentifier("ic_launcher_mark", "drawable", getPackageName());
        if (logoRes != 0) {
            logoView.setImageResource(logoRes);
        }
        logoView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        LinearLayout.LayoutParams lpLogo = new LinearLayout.LayoutParams(dp(36), dp(36));
        lpLogo.bottomMargin = dp(24);
        sidebar.addView(logoView, lpLogo);

        // Navigation Items: Search, Home, My List, Live TV, Apps, Settings
        sidebar.addView(createSidebarItem("ic_nav_search", "search", false, new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                navigateTo("search");
                finishWithNoAnim();
            }
        }));

        sidebar.addView(createSidebarItem("ic_nav_home", "home", false, new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                navigateTo("home");
                finishWithNoAnim();
            }
        }));

        sidebar.addView(createSidebarItem("ic_nav_mylist", "mylist", false, new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                navigateTo("mylist");
                finishWithNoAnim();
            }
        }));

        sidebar.addView(createSidebarItem("ic_nav_livetv", "livetv", false, new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                navigateTo("livetv");
                finishWithNoAnim();
            }
        }));

        // Apps item is ACTIVE on this screen!
        sidebarAppsButton = createSidebarItem("ic_nav_apps", "apps", true, new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (firstAppCard != null) firstAppCard.requestFocus();
            }
        });
        sidebar.addView(sidebarAppsButton);

        // Spacer to push Settings to the bottom
        View spacer = new View(this);
        sidebar.addView(spacer, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f
        ));

        // Settings item at bottom
        sidebar.addView(createSidebarItem("ic_nav_settings", "settings", false, new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                navigateTo("settings");
                finishWithNoAnim();
            }
        }));

        return sidebar;
    }

    private View createSidebarItem(String iconName, final String tag, final boolean isActive, View.OnClickListener listener) {
        final FrameLayout item = new FrameLayout(this);
        item.setFocusable(true);
        item.setClickable(true);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                dp(64), dp(48)
        );
        lp.gravity = Gravity.CENTER_HORIZONTAL;
        lp.topMargin = dp(4);
        lp.bottomMargin = dp(4);
        item.setLayoutParams(lp);

        // Active indicator on left edge (4dp purple bar)
        final View activeBar = new View(this);
        activeBar.setBackgroundColor(FOCUS_BORDER);
        FrameLayout.LayoutParams abParams = new FrameLayout.LayoutParams(dp(4), dp(24));
        abParams.gravity = Gravity.START | Gravity.CENTER_VERTICAL;
        item.addView(activeBar, abParams);
        activeBar.setVisibility(isActive ? View.VISIBLE : View.GONE);

        // Icon
        final ImageView iconView = new ImageView(this);
        int resId = getResources().getIdentifier(iconName, "drawable", getPackageName());
        if (resId != 0) {
            Drawable d = getResources().getDrawable(resId).mutate();
            d.setColorFilter(isActive ? ACCENT_PURPLE : SIDEBAR_INACTIVE, PorterDuff.Mode.SRC_IN);
            iconView.setImageDrawable(d);
        }
        FrameLayout.LayoutParams iconParams = new FrameLayout.LayoutParams(dp(24), dp(24));
        iconParams.gravity = Gravity.CENTER;
        item.addView(iconView, iconParams);

        // Focused background pill
        final GradientDrawable focusedBg = new GradientDrawable();
        focusedBg.setColor(Color.parseColor("#222838"));
        focusedBg.setCornerRadius(dp(12));

        item.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    item.setBackground(focusedBg);
                    item.setScaleX(1.1f);
                    item.setScaleY(1.1f);
                    if (iconView.getDrawable() != null) {
                        iconView.getDrawable().setColorFilter(Color.WHITE, PorterDuff.Mode.SRC_IN);
                    }
                } else {
                    item.setBackground(null);
                    item.setScaleX(1.0f);
                    item.setScaleY(1.0f);
                    if (iconView.getDrawable() != null) {
                        iconView.getDrawable().setColorFilter(isActive ? ACCENT_PURPLE : SIDEBAR_INACTIVE, PorterDuff.Mode.SRC_IN);
                    }
                }
            }
        });

        // Pressing DPAD_RIGHT from sidebar returns to apps grid
        item.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                if (event.getAction() == KeyEvent.ACTION_DOWN && keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
                    if (firstAppCard != null) {
                        firstAppCard.requestFocus();
                        return true;
                    }
                }
                return false;
            }
        });

        item.setOnClickListener(listener);
        return item;
    }

    // -------------------------------------------------------------
    // Apps Loading & Grid (Standard Leanback 16:9 Banner Cards)
    // -------------------------------------------------------------
    private void loadApps() {
        appList.clear();
        PackageManager pm = getPackageManager();

        Intent leanbackIntent = new Intent(Intent.ACTION_MAIN, null);
        leanbackIntent.addCategory(Intent.CATEGORY_LEANBACK_LAUNCHER);
        List<ResolveInfo> activities = pm.queryIntentActivities(leanbackIntent, 0);

        Intent standardIntent = new Intent(Intent.ACTION_MAIN, null);
        standardIntent.addCategory(Intent.CATEGORY_LAUNCHER);
        List<ResolveInfo> standardActivities = pm.queryIntentActivities(standardIntent, 0);

        List<ResolveInfo> combined = new ArrayList<>();
        if (activities != null) combined.addAll(activities);
        if (standardActivities != null) {
            for (ResolveInfo ri : standardActivities) {
                boolean exists = false;
                for (ResolveInfo existing : combined) {
                    if (existing.activityInfo.packageName.equals(ri.activityInfo.packageName)) {
                        exists = true;
                        break;
                    }
                }
                if (!exists) combined.add(ri);
            }
        }

        String myPackage = getPackageName();
        for (ResolveInfo ri : combined) {
            String pkg = ri.activityInfo.packageName;
            if (pkg.equals(myPackage)) continue; // skip self

            String label = ri.loadLabel(pm).toString();
            Drawable banner = ri.activityInfo.loadBanner(pm);
            boolean hasBanner = (banner != null);
            Drawable iconOrBanner = hasBanner ? banner : ri.loadIcon(pm);

            boolean isSmartTube = pkg.contains("teamsmart") || pkg.contains("liskovsoft");
            appList.add(new AppEntry(pkg, label, iconOrBanner, hasBanner, isSmartTube));
        }

        // Sort: SmartTube first, then alphabetical
        Collections.sort(appList, new Comparator<AppEntry>() {
            @Override
            public int compare(AppEntry o1, AppEntry o2) {
                if (o1.isSmartTube && !o2.isSmartTube) return -1;
                if (!o1.isSmartTube && o2.isSmartTube) return 1;
                return o1.label.compareToIgnoreCase(o2.label);
            }
        });
    }

    private void populateAppsGrid() {
        gridLayout.removeAllViews();
        int margin = dp(10);
        firstAppCard = null;

        for (int i = 0; i < appList.size(); i++) {
            final AppEntry entry = appList.get(i);
            final int col = i % 4;

            // Container holds the Card + Label underneath
            final LinearLayout itemContainer = new LinearLayout(this);
            itemContainer.setOrientation(LinearLayout.VERTICAL);
            itemContainer.setGravity(Gravity.CENTER_HORIZONTAL);
            itemContainer.setFocusable(true);
            itemContainer.setClickable(true);

            // 1. Rectangular 16:9 Leanback Card
            final FrameLayout card = new FrameLayout(this);
            int cardW = dp(240);
            int cardH = dp(135); // 16:9 ratio
            LinearLayout.LayoutParams cardParams = new LinearLayout.LayoutParams(cardW, cardH);
            card.setLayoutParams(cardParams);

            final GradientDrawable defaultBg = new GradientDrawable();
            defaultBg.setColor(CARD_BG);
            defaultBg.setCornerRadius(dp(10));
            defaultBg.setStroke(dp(1), Color.parseColor("#262C3A"));

            final GradientDrawable focusedBg = new GradientDrawable();
            focusedBg.setColor(CARD_FOCUSED_BG);
            focusedBg.setCornerRadius(dp(10));
            focusedBg.setStroke(dp(3), FOCUS_BORDER);

            card.setBackground(defaultBg);

            // App Icon or Banner inside card
            ImageView iconView = new ImageView(this);
            iconView.setImageDrawable(entry.icon);
            if (entry.hasBanner) {
                iconView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                FrameLayout.LayoutParams ip = new FrameLayout.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT
                );
                int p = dp(8);
                ip.setMargins(p, p, p, p);
                card.addView(iconView, ip);
            } else {
                iconView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                FrameLayout.LayoutParams ip = new FrameLayout.LayoutParams(dp(64), dp(64));
                ip.gravity = Gravity.CENTER;
                card.addView(iconView, ip);
            }

            // SmartTube badge on card if applicable
            if (entry.isSmartTube) {
                TextView badge = new TextView(this);
                badge.setText("SmartTube ★");
                badge.setTextColor(Color.parseColor("#C084FC"));
                badge.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10);
                badge.setTypeface(Typeface.DEFAULT_BOLD);
                GradientDrawable badgeBg = new GradientDrawable();
                badgeBg.setColor(Color.parseColor("#3B1B66"));
                badgeBg.setCornerRadius(dp(4));
                badge.setBackground(badgeBg);
                badge.setPadding(dp(6), dp(2), dp(6), dp(2));

                FrameLayout.LayoutParams bp = new FrameLayout.LayoutParams(
                        ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT
                );
                bp.gravity = Gravity.TOP | Gravity.END;
                bp.setMargins(0, dp(8), dp(8), 0);
                card.addView(badge, bp);
            }

            itemContainer.addView(card);

            // 2. App Name Label UNDER the card!
            final TextView labelView = new TextView(this);
            labelView.setText(entry.label);
            labelView.setTextColor(TEXT_SECONDARY);
            labelView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
            labelView.setTypeface(Typeface.DEFAULT_BOLD);
            labelView.setMaxLines(1);
            labelView.setGravity(Gravity.CENTER);
            labelView.setEllipsize(android.text.TextUtils.TruncateAt.END);
            LinearLayout.LayoutParams lpName = new LinearLayout.LayoutParams(
                    cardW, ViewGroup.LayoutParams.WRAP_CONTENT
            );
            lpName.topMargin = dp(8);
            itemContainer.addView(labelView, lpName);

            // Item Focus handling
            itemContainer.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public void onFocusChange(View v, boolean hasFocus) {
                    if (hasFocus) {
                        card.setBackground(focusedBg);
                        itemContainer.setScaleX(1.05f);
                        itemContainer.setScaleY(1.05f);
                        labelView.setTextColor(Color.WHITE);
                    } else {
                        card.setBackground(defaultBg);
                        itemContainer.setScaleX(1.0f);
                        itemContainer.setScaleY(1.0f);
                        labelView.setTextColor(TEXT_SECONDARY);
                    }
                }
            });

            // DPAD Left from first column goes to sidebar Apps button!
            if (col == 0) {
                itemContainer.setOnKeyListener(new View.OnKeyListener() {
                    @Override
                    public boolean onKey(View v, int keyCode, KeyEvent event) {
                        if (event.getAction() == KeyEvent.ACTION_DOWN && keyCode == KeyEvent.KEYCODE_DPAD_LEFT) {
                            if (sidebarAppsButton != null) {
                                sidebarAppsButton.requestFocus();
                                return true;
                            }
                        }
                        return false;
                    }
                });
            }

            itemContainer.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    launchApp(entry.packageName);
                }
            });

            GridLayout.LayoutParams gridParams = new GridLayout.LayoutParams();
            gridParams.width = cardW;
            gridParams.height = ViewGroup.LayoutParams.WRAP_CONTENT;
            gridParams.setMargins(margin, margin, margin, margin);
            itemContainer.setLayoutParams(gridParams);

            gridLayout.addView(itemContainer);

            if (firstAppCard == null) {
                firstAppCard = itemContainer;
            }
        }
    }

    private void launchApp(String packageName) {
        PackageManager pm = getPackageManager();
        Intent intent = pm.getLeanbackLaunchIntentForPackage(packageName);
        if (intent == null) {
            intent = pm.getLaunchIntentForPackage(packageName);
        }
        if (intent != null) {
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            startActivity(intent);
        } else {
            Toast.makeText(this, "Не удалось запустить " + packageName, Toast.LENGTH_SHORT).show();
        }
    }

    // -------------------------------------------------------------
    // TV Inputs Section (HDMI 1, HDMI 2, AV, etc.)
    // -------------------------------------------------------------
    private void loadTvInputs() {
        inputList.clear();
        try {
            TvInputManager tvInputManager = (TvInputManager) getSystemService(Context.TV_INPUT_SERVICE);
            if (tvInputManager != null) {
                List<TvInputInfo> inputs = tvInputManager.getTvInputList();
                if (inputs != null) {
                    for (TvInputInfo info : inputs) {
                        if (info.isPassthroughInput()) {
                            CharSequence label = info.loadLabel(this);
                            String name = (label != null) ? label.toString() : ("Input " + info.getType());
                            inputList.add(new TvInputEntry(info.getId(), name, info.getType()));
                        }
                    }
                }
            }
        } catch (Throwable t) {
            Log.e(TAG, "Error querying TvInputManager", t);
        }

        // Fallback for emulators and boxes without TV tuner HAL
        if (inputList.isEmpty()) {
            inputList.add(new TvInputEntry("HDMI_1", "HDMI 1", 1000));
            inputList.add(new TvInputEntry("HDMI_2", "HDMI 2", 1000));
            inputList.add(new TvInputEntry("HDMI_3", "HDMI 3", 1000));
            inputList.add(new TvInputEntry("AV", "AV / Composite", 1004));
        }
    }

    private void populateTvInputs() {
        tvInputsContainer.removeAllViews();
        int margin = dp(8);

        for (int i = 0; i < inputList.size(); i++) {
            final TvInputEntry entry = inputList.get(i);
            final int index = i;

            final LinearLayout card = new LinearLayout(this);
            card.setOrientation(LinearLayout.VERTICAL);
            card.setGravity(Gravity.CENTER);
            card.setFocusable(true);
            card.setClickable(true);
            int cardW = dp(180);
            int cardH = dp(96);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(cardW, cardH);
            lp.setMargins(margin, margin, margin, margin);
            card.setLayoutParams(lp);

            final GradientDrawable defaultBg = new GradientDrawable();
            defaultBg.setColor(CARD_BG);
            defaultBg.setCornerRadius(dp(10));
            defaultBg.setStroke(dp(1), Color.parseColor("#262C3A"));

            final GradientDrawable focusedBg = new GradientDrawable();
            focusedBg.setColor(CARD_FOCUSED_BG);
            focusedBg.setCornerRadius(dp(10));
            focusedBg.setStroke(dp(3), FOCUS_BORDER);

            card.setBackground(defaultBg);

            // Icon
            ImageView iconView = new ImageView(this);
            boolean isAv = entry.name.toLowerCase().contains("av") || entry.type == 1004;
            String iconResName = isAv ? "ic_input_av" : "ic_input_hdmi";
            int resId = getResources().getIdentifier(iconResName, "drawable", getPackageName());
            if (resId != 0) {
                Drawable d = getResources().getDrawable(resId).mutate();
                d.setColorFilter(TEXT_SECONDARY, PorterDuff.Mode.SRC_IN);
                iconView.setImageDrawable(d);
            }
            LinearLayout.LayoutParams iconParams = new LinearLayout.LayoutParams(dp(32), dp(32));
            iconParams.bottomMargin = dp(6);
            card.addView(iconView, iconParams);

            // Label
            final TextView labelView = new TextView(this);
            labelView.setText(entry.name);
            labelView.setTextColor(TEXT_SECONDARY);
            labelView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
            labelView.setTypeface(Typeface.DEFAULT_BOLD);
            labelView.setGravity(Gravity.CENTER);
            card.addView(labelView);

            card.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public void onFocusChange(View v, boolean hasFocus) {
                    if (hasFocus) {
                        card.setBackground(focusedBg);
                        card.setScaleX(1.05f);
                        card.setScaleY(1.05f);
                        labelView.setTextColor(Color.WHITE);
                    } else {
                        card.setBackground(defaultBg);
                        card.setScaleX(1.0f);
                        card.setScaleY(1.0f);
                        labelView.setTextColor(TEXT_SECONDARY);
                    }
                }
            });

            // DPAD Left from first input goes to sidebar
            if (index == 0) {
                card.setOnKeyListener(new View.OnKeyListener() {
                    @Override
                    public boolean onKey(View v, int keyCode, KeyEvent event) {
                        if (event.getAction() == KeyEvent.ACTION_DOWN && keyCode == KeyEvent.KEYCODE_DPAD_LEFT) {
                            if (sidebarAppsButton != null) {
                                sidebarAppsButton.requestFocus();
                                return true;
                            }
                        }
                        return false;
                    }
                });
            }

            card.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    launchTvInput(entry);
                }
            });

            tvInputsContainer.addView(card);
        }
    }

    private void launchTvInput(TvInputEntry entry) {
        try {
            if (entry.id != null && entry.id.contains(".")) {
                Uri uri = TvContract.buildChannelUriForPassthroughInput(entry.id);
                Intent intent = new Intent(Intent.ACTION_VIEW, uri);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivity(intent);
                return;
            }
        } catch (Throwable t) {
            Log.e(TAG, "Failed to launch pass-through channel URI for " + entry.id, t);
        }
        // Fallback for TV settings or visual feedback
        Toast.makeText(this, "Вход: " + entry.name, Toast.LENGTH_SHORT).show();
    }

    // -------------------------------------------------------------
    // Helper Methods
    // -------------------------------------------------------------
    private void setBridgeContext() {
        try {
            Class<?> clazz = Class.forName("SmartTubeBridge");
            java.lang.reflect.Method method = clazz.getMethod("setContext", Context.class);
            method.invoke(null, this);
        } catch (Throwable t) {
            Log.w(TAG, "Bridge setContext failed: " + t.getMessage());
        }
    }

    private void navigateTo(String destination) {
        try {
            Class<?> clazz = Class.forName("SmartTubeBridge");
            java.lang.reflect.Method method = clazz.getMethod("navigateTo", String.class);
            method.invoke(null, destination);
        } catch (Throwable t) {
            Log.w(TAG, "Bridge navigateTo failed: " + t.getMessage());
        }
    }

    private void finishWithNoAnim() {
        finish();
        overridePendingTransition(0, 0);
    }

    private int dp(int value) {
        return (int) TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP,
                value,
                getResources().getDisplayMetrics()
        );
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            finishWithNoAnim();
            return true;
        }
        if (keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER || keyCode == KeyEvent.KEYCODE_NUMPAD_ENTER) {
            View currentFocus = getCurrentFocus();
            if (currentFocus != null) {
                currentFocus.performClick();
                return true;
            }
        }
        return super.onKeyDown(keyCode, event);
    }
}
