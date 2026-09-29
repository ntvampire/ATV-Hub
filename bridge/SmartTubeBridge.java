import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;

import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
public class SmartTubeBridge {
    private static final String TAG = "SmartTubeBridge";
    public static final String PREFIX_SMARTTUBE = "smarttube:";
    private static volatile Context sContext;
    private static volatile WeakReference<Activity> sCurrentActivity;
    public static volatile Object sNavController;
    private static boolean sDataSeeded = false;

    // Cache of card ID -> intent/URL
    private static final java.util.Map<Integer, String> sIdToIntent = new java.util.concurrent.ConcurrentHashMap<>();

    // Unicode constants
    public static final String TITLE_SUBSCRIPTIONS = "\u041f\u043e\u0434\u043f\u0438\u0441\u043a\u0438"; // Подписки
    public static final String SUBTITLE_LAUNCH = "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 \u0434\u043b\u044f \u043e\u0442\u043a\u0440\u044b\u0442\u0438\u044f \u043f\u043e\u0434\u043f\u0438\u0441\u043e\u043a"; // Нажмите для открытия подписок
    public static final String TOAST_NOT_INSTALLED = "SmartTube \u043d\u0435 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d"; // SmartTube не установлен

    public static final String[] KNOWN_PACKAGES = {
        "org.smarttube.stable",
        "org.smarttube.beta",
        "com.teamsmart.videomanager.tv",
        "com.liskovsoft.videomanager",
        "com.liskovsoft.smartyoutubetv2.tv",
        "com.liskovsoft.smartyoutubetv.tv"
    };

    public static void setContext(Context context) {
        if (context != null) {
            sContext = context.getApplicationContext();
            if (context instanceof Activity) {
                sCurrentActivity = new WeakReference<>((Activity) context);
            }
            applyAppLanguage(context);
            Log.i(TAG, "sContext initialized: " + sContext.getPackageName());
        }
    }

    public static void setNavController(Object controller) {
        if (controller != null) {
            sNavController = controller;
            Log.i(TAG, "sNavController initialized");
        }
    }

    public static void navigateTo(String destination) {
        if (sNavController == null) {
            Log.w(TAG, "navigateTo called but sNavController is null");
            return;
        }
        try {
            Class<?> routeClass = null;
            if ("home".equalsIgnoreCase(destination)) {
                routeClass = Class.forName("app.flux.tv.core.navigation.FluxRoute$Home");
            } else if ("mylist".equalsIgnoreCase(destination)) {
                routeClass = Class.forName("app.flux.tv.core.navigation.FluxRoute$MyList");
            } else if ("livetv".equalsIgnoreCase(destination)) {
                routeClass = Class.forName("app.flux.tv.core.navigation.FluxRoute$LiveTv");
            } else if ("settings".equalsIgnoreCase(destination)) {
                routeClass = Class.forName("app.flux.tv.core.navigation.FluxRoute$Settings");
            } else if ("search".equalsIgnoreCase(destination)) {
                routeClass = Class.forName("app.flux.tv.core.navigation.FluxRoute$Search");
            }
            if (routeClass != null) {
                Object instance = routeClass.getField("INSTANCE").get(null);
                Method cMethod = sNavController.getClass().getMethod("c", Class.forName("gn1"), Class.forName("qs1"));
                cMethod.invoke(sNavController, instance, null);
                Log.i(TAG, "Successfully navigated to: " + destination);
            }
        } catch (Throwable t) {
            Log.e(TAG, "Navigation reflection error: " + destination, t);
        }
    }

    public static void applyAppLanguage(Context context) {
        if (context == null) context = getContext();
        if (context == null) return;
        try {
            SharedPreferences sp = context.getSharedPreferences("flux_locale", Context.MODE_PRIVATE);
            String lang = sp.getString("app_language", null);
            if (lang == null || "SYSTEM".equalsIgnoreCase(lang)) {
                lang = "RU";
                sp.edit().putString("app_language", "RU").apply();
            }

            Locale locale;
            if ("UK".equalsIgnoreCase(lang)) {
                locale = new Locale("uk", "UA");
            } else if ("EN".equalsIgnoreCase(lang)) {
                locale = new Locale("en", "US");
            } else {
                locale = new Locale("ru", "RU");
            }

            Locale.setDefault(locale);
            Resources res = context.getResources();
            Configuration config = new Configuration(res.getConfiguration());
            config.setLocale(locale);
            res.updateConfiguration(config, res.getDisplayMetrics());

            Context appCtx = context.getApplicationContext();
            if (appCtx != null && appCtx != context) {
                Resources appRes = appCtx.getResources();
                Configuration appConfig = new Configuration(appRes.getConfiguration());
                appConfig.setLocale(locale);
                appRes.updateConfiguration(appConfig, appRes.getDisplayMetrics());
            }

            String lastLang = sp.getString("last_applied_lang", "");
            if (!lang.equals(lastLang)) {
                sp.edit().putString("last_applied_lang", lang).apply();
                try {
                    File dbFile = context.getDatabasePath("flux.db");
                    if (dbFile != null && dbFile.exists()) {
                        SQLiteDatabase db = SQLiteDatabase.openDatabase(
                                dbFile.getPath(), null, SQLiteDatabase.OPEN_READWRITE
                        );
                        db.execSQL("DELETE FROM cached_page");
                        db.close();
                        Log.i(TAG, "Cleared cached_page table in flux.db for language switch: " + lang);
                    }
                } catch (Throwable t) {
                    Log.e(TAG, "Failed to clear cached_page", t);
                }
            }
        } catch (Throwable t) {
            Log.e(TAG, "Error applying app language", t);
        }
    }

    public static void onLanguageChanged(Context context, Object langObj) {
        if (context == null) context = getContext();
        if (context == null) return;
        try {
            String langName = (langObj != null) ? langObj.toString() : "RU";
            SharedPreferences sp = context.getSharedPreferences("flux_locale", Context.MODE_PRIVATE);
            sp.edit().putString("app_language", langName).apply();
            applyAppLanguage(context);

            File dbFile = context.getDatabasePath("flux.db");
            if (dbFile != null && dbFile.exists()) {
                SQLiteDatabase db = SQLiteDatabase.openDatabase(
                        dbFile.getPath(), null, SQLiteDatabase.OPEN_READWRITE
                );
                db.execSQL("DELETE FROM cached_page");
                db.close();
            }
        } catch (Throwable t) {
            Log.e(TAG, "Error handling onLanguageChanged", t);
        }
    }

    public static Context getContext() {
        if (sContext != null) {
            return sContext;
        }
        try {
            Class<?> atCls = Class.forName("android.app.ActivityThread");
            Object app = atCls.getMethod("currentApplication").invoke(null);
            if (app instanceof Context) {
                sContext = ((Context) app).getApplicationContext();
                return sContext;
            }
        } catch (Throwable ignored) {}
        return null;
    }

    public static boolean isSmartTubeInstalled(Context context) {
        if (context == null) context = getContext();
        if (context == null) return false;
        PackageManager pm = context.getPackageManager();
        for (String pkg : KNOWN_PACKAGES) {
            try {
                pm.getPackageInfo(pkg, 0);
                return true;
            } catch (PackageManager.NameNotFoundException ignored) {}
        }
        return false;
    }

    public static String getInstalledSmartTubePackage(Context context) {
        if (context == null) context = getContext();
        if (context == null) return null;
        PackageManager pm = context.getPackageManager();
        for (String pkg : KNOWN_PACKAGES) {
            try {
                pm.getPackageInfo(pkg, 0);
                return pkg;
            } catch (PackageManager.NameNotFoundException ignored) {}
        }
        return null;
    }

    /**
     * Intercepts card click by TMDB ID from Compose navigation (zk1.smali)
     */
    public static boolean handleIdClick(int id) {
        Log.i(TAG, "handleIdClick ENTER: id=" + id);
        String target = sIdToIntent.get(id);
        if (target == null && (id <= -999 || id == 0)) {
            Log.w(TAG, "No explicit target for id=" + id + ", using launch fallback");
            target = "launch";
        }
        if (target != null) {
            Log.i(TAG, "handleIdClick intercepted SmartTube card click! id=" + id + " target=" + target);
            Context ctx = sContext != null ? sContext : getContext();
            if (ctx == null) {
                Log.e(TAG, "Context is null in handleIdClick, cannot launch");
                return true;
            }
            launchIntentTarget(ctx, target);
            return true;
        }
        return false;
    }

    /**
     * Intercepts card click on Home Screen (q43 card from ud6.smali).
     */
    public static boolean handleCardClick(q43 card, Object contextOrViewModel) {
        if (card == null) return false;
        String id = card.a;
        if (id == null || !id.startsWith(PREFIX_SMARTTUBE)) {
            if (card.e <= -999 && sIdToIntent.containsKey(card.e)) {
                id = PREFIX_SMARTTUBE + sIdToIntent.get(card.e);
            } else if (card.b != null && (card.b.contains("SmartTube") || card.b.contains("Wylsacom") || card.b.contains("Kuplinov")
                    || (card.g != null && card.g.contains("SmartTube")))) {
                id = PREFIX_SMARTTUBE + "launch";
            } else {
                return false;
            }
        }

        Log.i(TAG, "handleCardClick intercepted SmartTube card: " + card.b + " id=" + id);
        Context ctx = sContext;
        if (ctx == null && contextOrViewModel instanceof Context) {
            ctx = ((Context) contextOrViewModel).getApplicationContext();
            sContext = ctx;
        }
        if (ctx == null) {
            ctx = getContext();
        }
        if (ctx == null) {
            Log.e(TAG, "Context is null in handleCardClick, cannot launch");
            return true;
        }

        String target = id.substring(PREFIX_SMARTTUBE.length());
        launchIntentTarget(ctx, target);
        return true;
    }

    public static void launchIntentTarget(Context ctx, String target) {
        if (ctx == null) ctx = getContext();
        if (ctx == null) return;

        if (target == null || "launch".equals(target) || target.isEmpty()) {
            launchSmartTube(ctx);
            return;
        }

        try {
            Intent intent;
            if (target.startsWith("intent:#Intent") || target.startsWith("#Intent")) {
                intent = Intent.parseUri(target, Intent.URI_INTENT_SCHEME);
            } else if (target.startsWith("https://") || target.startsWith("http://")) {
                intent = new Intent(Intent.ACTION_VIEW, Uri.parse(target));
            } else if (target.startsWith("vnd.youtube:")) {
                intent = new Intent(Intent.ACTION_VIEW, Uri.parse(target));
            } else if (target.startsWith("content://")) {
                intent = new Intent(Intent.ACTION_VIEW, Uri.parse(target));
            } else {
                intent = new Intent(Intent.ACTION_VIEW, Uri.parse("https://www.youtube.com/watch?v=" + target));
            }

            String pkg = getInstalledSmartTubePackage(ctx);
            if (pkg != null) {
                intent.setPackage(pkg);
            }
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            ctx.startActivity(intent);
            Log.i(TAG, "Successfully started SmartTube intent for target: " + target);
        } catch (Exception e) {
            Log.e(TAG, "Failed to launch SmartTube intent: " + target + ", falling back to launcher", e);
            launchSmartTube(ctx);
        }
    }

    public static void launchSmartTube(Context ctx) {
        if (ctx == null) ctx = getContext();
        if (ctx == null) return;
        String pkg = getInstalledSmartTubePackage(ctx);
        if (pkg == null) {
            Toast.makeText(ctx, TOAST_NOT_INSTALLED, Toast.LENGTH_SHORT).show();
            return;
        }
        Intent launchIntent = ctx.getPackageManager().getLeanbackLaunchIntentForPackage(pkg);
        if (launchIntent == null) {
            launchIntent = ctx.getPackageManager().getLaunchIntentForPackage(pkg);
        }
        if (launchIntent != null) {
            launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            ctx.startActivity(launchIntent);
            Log.i(TAG, "Launched SmartTube package: " + pkg);
        }
    }

    public static void syncChannels(Context context) {
        if (context == null) context = getContext();
        if (context == null) return;
        try {
            Intent intent = new Intent();
            intent.setClassName(context, "app.flux.tv.MainActivity");
            intent.setAction("app.flux.tv.ACTION_SYNC_CHANNELS");
            intent.addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP | Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(intent);
        } catch (Throwable t) {
            Log.e(TAG, "Failed to send sync channels intent", t);
        }
    }

    public static void syncEpg(Context context) {
        if (context == null) context = getContext();
        if (context == null) return;
        try {
            Intent intent = new Intent();
            intent.setClassName(context, "app.flux.tv.MainActivity");
            intent.setAction("app.flux.tv.ACTION_SYNC_EPG");
            intent.addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP | Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(intent);
        } catch (Throwable t) {
            Log.e(TAG, "Failed to send sync EPG intent", t);
        }
    }

    public static boolean handleIptvAddOrSync(final Object stateObj, final Object eventObj) {
        Context ctx = (sCurrentActivity != null) ? sCurrentActivity.get() : null;
        if (ctx == null) ctx = sContext;
        if (ctx == null) return false;

        final Context finalCtx = ctx;
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public void run() {
                try {
                    Activity act = (finalCtx instanceof Activity) ? (Activity) finalCtx : null;
                    AlertDialog.Builder builder = new AlertDialog.Builder(
                            (act != null) ? act : finalCtx,
                            android.R.style.Theme_DeviceDefault_Dialog_Alert
                    );
                    builder.setTitle("Онлайн ТВ");
                    CharSequence[] items = new CharSequence[] {
                        "➕  Добавить плейлист",
                        "⟳  Обновить плейлист и каналы",
                        "⟳  Обновить телегид (EPG)"
                    };
                    builder.setItems(items, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            if (which == 0) {
                                try {
                                    Method m = stateObj.getClass().getMethod("setValue", Object.class);
                                    m.invoke(stateObj, eventObj);
                                } catch (Throwable t) {
                                    Log.e(TAG, "Failed to invoke setValue", t);
                                }
                            } else if (which == 1) {
                                syncChannels(finalCtx);
                            } else if (which == 2) {
                                syncEpg(finalCtx);
                            }
                        }
                    });
                    AlertDialog dialog = builder.create();
                    dialog.show();
                } catch (Throwable t) {
                    Log.e(TAG, "Error displaying dialog, invoking original", t);
                    try {
                        Method m = stateObj.getClass().getMethod("setValue", Object.class);
                        m.invoke(stateObj, eventObj);
                    } catch (Throwable ignored) {}
                }
            }
        });
        return true;
    }

    private static class ChannelInfo {
        long id;
        String name;
        int priority;

        ChannelInfo(long id, String name, int priority) {
            this.id = id;
            this.name = name;
            this.priority = priority;
        }
    }

    /**
     * Inserts the "Подписки" row into the catalog list immediately AFTER Top 10 movies and series.
     */
    public static void insertSubscriptionsRow(Context context, ArrayList<j40> rows) {
        if (context != null) {
            setContext(context);
        }
        if (rows == null || context == null) return;

        try {
            ensureEmulatorTestData(context);

            j40 subRow = loadSubscriptionsRow(context);
            if (subRow != null && subRow.b != null && !subRow.b.isEmpty()) {
                int insertIndex = 2;
                int foundTopRows = 0;
                for (int i = 0; i < rows.size(); i++) {
                    j40 r = rows.get(i);
                    String title = (r != null && r.a != null) ? r.a.toLowerCase() : "";
                    if ((title.contains("\u0442\u043e\u043f") || title.contains("top")) && title.contains("10")) {
                        insertIndex = i + 1;
                        foundTopRows++;
                    }
                }
                if (foundTopRows == 0) {
                    insertIndex = Math.min(2, rows.size());
                }
                if (insertIndex > rows.size()) insertIndex = rows.size();
                rows.add(insertIndex, subRow);
                Log.i(TAG, "Inserted SmartTube Subscriptions row with " + subRow.b.size() + " items at index " + insertIndex);
            }
        } catch (Exception e) {
            Log.e(TAG, "Error inserting SmartTube subscriptions row", e);
        }
    }

    private static j40 loadSubscriptionsRow(Context context) {
        ContentResolver cr = context.getContentResolver();
        Uri channelsUri = Uri.parse("content://android.media.tv/channel");

        List<ChannelInfo> candidateChannels = new ArrayList<>();

        try (Cursor c = cr.query(channelsUri, new String[]{"_id", "display_name", "package_name"}, null, null, null)) {
            if (c != null) {
                while (c.moveToNext()) {
                    long id = c.getLong(0);
                    String displayName = c.getString(1);
                    String pkg = c.getString(2);

                    int priority = -1;
                    if (displayName != null) {
                        String lower = displayName.toLowerCase();
                        if (lower.contains("подписк") || lower.contains("subscription")) {
                            priority = 100;
                        }
                    }
                    if (priority < 0 && pkg != null) {
                        for (String kp : KNOWN_PACKAGES) {
                            if (pkg.contains(kp)) {
                                priority = 50;
                                break;
                            }
                        }
                    }
                    if (priority > 0) {
                        candidateChannels.add(new ChannelInfo(id, displayName, priority));
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Error querying tv channels", e);
        }

        Collections.sort(candidateChannels, new Comparator<ChannelInfo>() {
            @Override
            public int compare(ChannelInfo o1, ChannelInfo o2) {
                return Integer.compare(o2.priority, o1.priority);
            }
        });

        for (ChannelInfo ch : candidateChannels) {
            j40 row = loadProgramsForChannel(context, ch.id, ch.name != null ? ch.name : TITLE_SUBSCRIPTIONS);
            if (row != null && row.b != null && !row.b.isEmpty()) {
                return row;
            }
        }

        return createFallbackRow();
    }

    private static j40 loadProgramsForChannel(Context context, long channelId, String channelTitle) {
        ContentResolver cr = context.getContentResolver();
        Uri programsUri = Uri.parse("content://android.media.tv/preview_program")
                .buildUpon()
                .appendQueryParameter("channel", String.valueOf(channelId))
                .build();

        String[] projection = new String[]{
            "_id", "title", "poster_art_uri", "intent_uri", "internal_provider_data"
        };

        ArrayList<q43> items = new ArrayList<>();

        try (Cursor c = cr.query(programsUri, projection, null, null, "_id DESC LIMIT 30")) {
            if (c != null) {
                while (c.moveToNext()) {
                    long progId = c.getLong(0);
                    String title = c.getString(1);
                    String poster = c.getString(2);
                    String intentUri = c.getString(3);
                    String providerData = c.getString(4);

                    if (title == null || title.isEmpty()) continue;

                    int cardId = -1000 - items.size();
                    String finalIntent = (intentUri != null && !intentUri.isEmpty()) ? intentUri :
                            ((providerData != null && !providerData.isEmpty()) ? providerData : "launch");
                    sIdToIntent.put(cardId, finalIntent);

                    q43 card = new q43(
                            PREFIX_SMARTTUBE + finalIntent,
                            title,
                            poster != null ? poster : "",
                            null,
                            cardId,
                            false,
                            channelTitle,
                            Collections.emptyList(),
                            null, null, null,
                            false,
                            null, null, null
                    );
                    items.add(card);
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Error querying preview programs for channel " + channelId, e);
        }

        if (items.isEmpty()) return null;

        Log.i(TAG, "Loaded " + items.size() + " items from SmartTube channel: " + channelTitle);
        return new j40(
            channelTitle,
            false,
            items,
            ""
        );
    }

    private static j40 createFallbackRow() {
        ArrayList<q43> items = new ArrayList<>();
        int cardId = -999;
        sIdToIntent.put(cardId, "launch");

        q43 launchCard = new q43(
            PREFIX_SMARTTUBE + "launch",
            "SmartTube",
            "https://raw.githubusercontent.com/yuliskov/SmartTube/master/res/drawable/app_icon.png",
            null,
            cardId,
            false,
            SUBTITLE_LAUNCH,
            Collections.emptyList(),
            null, null, null,
            false,
            null, null, null
        );
        items.add(launchCard);

        return new j40(
            TITLE_SUBSCRIPTIONS,
            false,
            items,
            ""
        );
    }

    private static void ensureEmulatorTestData(Context context) {
        if (sDataSeeded) return;
        sDataSeeded = true;

        if (isSmartTubeInstalled(context)) return;

        try {
            ContentResolver cr = context.getContentResolver();
            Uri channelsUri = Uri.parse("content://android.media.tv/channel");

            long channelId = -1;
            try (Cursor c = cr.query(channelsUri, new String[]{"_id"}, "display_name=?", new String[]{TITLE_SUBSCRIPTIONS}, null)) {
                if (c != null && c.moveToFirst()) {
                    channelId = c.getLong(0);
                }
            }

            if (channelId == -1) {
                ContentValues cv = new ContentValues();
                cv.put("type", "TYPE_PREVIEW");
                cv.put("display_name", TITLE_SUBSCRIPTIONS);
                cv.put("description", "SmartTube Subscriptions");
                cv.put("package_name", "org.smarttube.stable");
                cv.put("input_id", "app.flux.tv/.SmartTubeBridge");
                Uri inserted = cr.insert(channelsUri, cv);
                if (inserted != null) {
                    channelId = ContentUris.parseId(inserted);
                    Log.i(TAG, "Seeded test channel: " + channelId);
                }
            }

            if (channelId != -1) {
                Uri programsUri = Uri.parse("content://android.media.tv/preview_program")
                        .buildUpon()
                        .appendQueryParameter("channel", String.valueOf(channelId))
                        .build();
                int count = 0;
                try (Cursor c = cr.query(programsUri, new String[]{"_id"}, null, null, null)) {
                    if (c != null) count = c.getCount();
                }

                if (count == 0) {
                    insertTestProgram(cr, channelId, "Wylsacom: \u041e\u0431\u0437\u043e\u0440 \u043d\u043e\u0432\u0438\u043d\u043e\u043a", "https://i.ytimg.com/vi/dQw4w9WgXcQ/hqdefault.jpg", "dQw4w9WgXcQ");
                    insertTestProgram(cr, channelId, "Kuplinov \u25ba Play: \u041f\u0440\u043e\u0445\u043e\u0436\u0434\u0435\u043d\u0438\u0435 \u043d\u043e\u0432\u0438\u043d\u043a\u0438", "https://i.ytimg.com/vi/9bZkp7q19f0/hqdefault.jpg", "9bZkp7q19f0");
                    insertTestProgram(cr, channelId, "AcademeG: \u0422\u0435\u0441\u0442-\u0434\u0440\u0430\u0439\u0432 \u0432\u0435\u043a\u0430", "https://i.ytimg.com/vi/kJQP7kiw5Fk/hqdefault.jpg", "kJQP7kiw5Fk");
                    insertTestProgram(cr, channelId, "itpedia: \u0411\u043e\u043b\u044c\u0448\u043e\u0439 \u0440\u0430\u0437\u0431\u043e\u0440 \u0433\u043e\u0434\u0430", "https://i.ytimg.com/vi/fJ9rUzIMcZQ/hqdefault.jpg", "fJ9rUzIMcZQ");
                    insertTestProgram(cr, channelId, "RedLetterMedia: Half in the Bag", "https://i.ytimg.com/vi/L_LUpnjgPso/hqdefault.jpg", "L_LUpnjgPso");
                    insertTestProgram(cr, channelId, "ThePrimeTime: Next-Gen Dev Setup", "https://i.ytimg.com/vi/CevxZvSJLk8/hqdefault.jpg", "CevxZvSJLk8");
                    Log.i(TAG, "Seeded 6 test preview programs for channel: " + channelId);
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed seeding test data", e);
        }
    }

    private static void insertTestProgram(ContentResolver cr, long channelId, String title, String poster, String videoId) {
        try {
            ContentValues cv = new ContentValues();
            cv.put("channel_id", channelId);
            cv.put("title", title);
            cv.put("poster_art_uri", poster);
            cv.put("intent_uri", "intent:#Intent;action=android.intent.action.VIEW;data=https://www.youtube.com/watch?v=" + videoId + ";package=org.smarttube.stable;component=org.smarttube.stable/com.liskovsoft.smartyoutubetv2.tv.ui.main.MainActivity;end");
            cv.put("internal_provider_data", videoId);
            cr.insert(Uri.parse("content://android.media.tv/preview_program"), cv);
        } catch (Exception ignored) {}
    }
}
