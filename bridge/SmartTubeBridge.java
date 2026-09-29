import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class SmartTubeBridge {
    private static final String TAG = "SmartTubeBridge";
    public static final String PREFIX_SMARTTUBE = "smarttube:";
    private static volatile Context sContext;
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
            Log.i(TAG, "sContext initialized: " + sContext.getPackageName());
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
     * Intercepts card click on Home Screen (q43 card).
     * Returns true if handled (SmartTube card), false if normal movie.
     */
    public static boolean handleCardClick(q43 card, Object contextOrViewModel) {
        Log.i(TAG, "handleCardClick ENTER: card=" + (card != null ? (card.b + " [id=" + card.a + ", e=" + card.e + "]") : "null")
                + ", contextOrVM=" + (contextOrViewModel != null ? contextOrViewModel.getClass().getName() : "null"));

        if (card == null) return false;
        String id = card.a;
        if (id == null || !id.startsWith(PREFIX_SMARTTUBE)) {
            if (card.e <= -999 && sIdToIntent.containsKey(card.e)) {
                id = PREFIX_SMARTTUBE + sIdToIntent.get(card.e);
            } else if (card.b != null && (card.b.contains("SmartTube") || card.b.contains("Wylsacom") || card.b.contains("Kuplinov")
                    || (card.g != null && card.g.contains("SmartTube")))) {
                Log.w(TAG, "Card didn't have smarttube prefix but matched SmartTube content: " + card.b);
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
        try {
            if ("launch".equals(target) || target == null || target.isEmpty()) {
                launchSmartTube(ctx);
                return;
            }

            Intent intent = null;
            if (target.startsWith("intent:#Intent") || target.startsWith("#Intent")) {
                intent = Intent.parseUri(target, Intent.URI_INTENT_SCHEME);
            } else if (target.startsWith("https://") || target.startsWith("http://")) {
                intent = new Intent(Intent.ACTION_VIEW, Uri.parse(target));
            } else if (target.startsWith("vnd.youtube:")) {
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
     * Inserts the "Подписки" row into the catalog list.
     */
    public static void insertSubscriptionsRow(Context context, ArrayList<j40> rows) {
        if (context != null) {
            sContext = context.getApplicationContext();
        }
        if (rows == null || context == null) return;

        try {
            ensureEmulatorTestData(context);

            j40 subRow = loadSubscriptionsRow(context);
            if (subRow != null && subRow.b != null && !subRow.b.isEmpty()) {
                int insertIndex = 0;
                if (!rows.isEmpty()) {
                    j40 first = rows.get(0);
                    if (first.a != null && (first.a.contains("\u0441\u043f\u0438\u0441\u043e\u043a") || first.a.contains("List"))) {
                        insertIndex = 1;
                    }
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
        Uri programsUri = Uri.parse("content://android.media.tv/preview_program");

        List<ChannelInfo> candidates = new ArrayList<>();
        String ownPkg = context.getPackageName();

        try (Cursor c = cr.query(channelsUri,
                new String[]{"_id", "package_name", "display_name"},
                null, null, null)) {
            if (c != null && c.moveToFirst()) {
                do {
                    long id = c.getLong(0);
                    String pkg = c.getString(1);
                    String name = c.getString(2);

                    boolean isRelevant = false;
                    if (pkg != null) {
                        if (pkg.equals(ownPkg)) {
                            isRelevant = true;
                        } else {
                            for (String p : KNOWN_PACKAGES) {
                                if (pkg.contains(p) || pkg.contains("smarttube") || pkg.contains("videomanager")) {
                                    isRelevant = true;
                                    break;
                                }
                            }
                        }
                    }

                    if (isRelevant) {
                        int prio = 2;
                        if (name != null) {
                            String lower = name.toLowerCase();
                            if (lower.contains("\u043f\u043e\u0434\u043f\u0438\u0441\u043a") || lower.contains("subscri")) {
                                prio = 0;
                            } else if (lower.contains("\u0440\u0435\u043a\u043e\u043c\u0435\u043d\u0434") || lower.contains("recommend")) {
                                prio = 1;
                            }
                        }
                        candidates.add(new ChannelInfo(id, name != null ? name : TITLE_SUBSCRIPTIONS, prio));
                    }
                } while (c.moveToNext());
            }
        } catch (Exception e) {
            Log.e(TAG, "Error querying channels", e);
        }

        // Sort candidates so "Подписки" comes first
        Collections.sort(candidates, new Comparator<ChannelInfo>() {
            @Override
            public int compare(ChannelInfo o1, ChannelInfo o2) {
                return Integer.compare(o1.priority, o2.priority);
            }
        });

        List<q43> items = new ArrayList<>();
        String channelDisplayName = TITLE_SUBSCRIPTIONS;

        // Query preview programs without selection (selection is forbidden by TvProvider)
        for (ChannelInfo ch : candidates) {
            try (Cursor c = cr.query(programsUri,
                    new String[]{"_id", "channel_id", "title", "poster_art_uri", "intent_uri", "short_description", "content_id"},
                    null, null, "weight DESC, _id DESC")) {
                if (c != null && c.moveToFirst()) {
                    do {
                        long progChId = c.getLong(1);
                        if (progChId != ch.id) {
                            continue;
                        }

                        String title = c.getString(2);
                        String poster = c.getString(3);
                        String intentUri = c.getString(4);
                        String desc = c.getString(5);
                        String contentId = c.getString(6);

                        String finalIntent = intentUri;
                        if (finalIntent == null || finalIntent.isEmpty()) {
                            if (contentId != null && !contentId.isEmpty()) {
                                finalIntent = "https://www.youtube.com/watch?v=" + contentId;
                            } else {
                                finalIntent = "launch";
                            }
                        }

                        if (title == null || title.isEmpty()) {
                            title = "SmartTube";
                        }
                        if (desc == null) {
                            desc = "SmartTube";
                        }

                        int cardId = -1000 - items.size();
                        sIdToIntent.put(cardId, finalIntent);

                        q43 card = new q43(
                                PREFIX_SMARTTUBE + finalIntent,
                                title,
                                poster != null ? poster : "",
                                null,
                                cardId,
                                false,
                                desc,
                                Collections.emptyList(),
                                null, null, null,
                                false,
                                null, null, null
                        );
                        items.add(card);
                    } while (c.moveToNext());

                    if (!items.isEmpty()) {
                        channelDisplayName = ch.name;
                        Log.i(TAG, "Loaded " + items.size() + " programs from channel " + ch.id + " (" + channelDisplayName + ")");
                        break;
                    }
                }
            } catch (Exception e) {
                Log.e(TAG, "Error querying preview programs for channel " + ch.id, e);
            }
        }

        if (items.isEmpty() && isSmartTubeInstalled(context)) {
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
            Log.i(TAG, "Added fallback launch card for SmartTube");
        }

        if (items.isEmpty()) {
            return null;
        }

        return new j40(channelDisplayName, false, items, "smarttube_subscriptions");
    }

    private static void ensureEmulatorTestData(Context context) {
        if (sDataSeeded) return;
        sDataSeeded = true;

        String fp = Build.FINGERPRINT != null ? Build.FINGERPRINT : "";
        String hw = Build.HARDWARE != null ? Build.HARDWARE : "";
        boolean isEmulator = fp.contains("generic") || hw.contains("goldfish") || hw.contains("ranchu");

        if (!isEmulator) {
            return;
        }

        try {
            ContentResolver cr = context.getContentResolver();
            Uri channelsUri = Uri.parse("content://android.media.tv/channel");
            Uri programsUri = Uri.parse("content://android.media.tv/preview_program");
            String ownPkg = context.getPackageName();

            long chId = -1;
            try (Cursor c = cr.query(channelsUri, new String[]{"_id", "package_name"}, null, null, null)) {
                if (c != null && c.moveToFirst()) {
                    do {
                        long curId = c.getLong(0);
                        String pkg = c.getString(1);
                        if (ownPkg.equals(pkg) || "org.smarttube.stable".equals(pkg)) {
                            // Check if this channel has programs
                            try (Cursor pc = cr.query(programsUri, new String[]{"_id", "channel_id"}, null, null, null)) {
                                if (pc != null && pc.moveToFirst()) {
                                    int count = 0;
                                    do {
                                        if (pc.getLong(1) == curId) count++;
                                    } while (pc.moveToNext());

                                    if (count > 0) {
                                        chId = curId;
                                        Log.i(TAG, "Emulator channel " + chId + " already has " + count + " programs");
                                        return;
                                    }
                                }
                            }
                            if (chId == -1) chId = curId;
                        }
                    } while (c.moveToNext());
                }
            }

            if (chId == -1) {
                ContentValues cv = new ContentValues();
                cv.put("package_name", ownPkg);
                cv.put("type", "TYPE_PREVIEW");
                cv.put("display_name", TITLE_SUBSCRIPTIONS);
                cv.put("app_link_intent_uri", "https://www.youtube.com");
                Uri chUri = cr.insert(channelsUri, cv);
                if (chUri == null) {
                    Log.w(TAG, "Could not insert channel for emulator test data");
                    return;
                }
                chId = ContentUris.parseId(chUri);
            }

            String[][] mockVideos = {
                {"Wylsacom: \u041e\u0431\u0437\u043e\u0440 \u0442\u043e\u043f\u043e\u0432\u044b\u0445 \u043d\u043e\u0432\u0438\u043d\u043e\u043a", "https://i.ytimg.com/vi/jNQXAC9IVRw/mqdefault.jpg", "https://www.youtube.com/watch?v=jNQXAC9IVRw", "Wylsacom"},
                {"Kuplinov \u25ba Play: \u041f\u0440\u043e\u0445\u043e\u0436\u0434\u0435\u043d\u0438\u0435 \u043d\u043e\u0432\u0438\u043d\u043a\u0438", "https://i.ytimg.com/vi/dQw4w9WgXcQ/mqdefault.jpg", "https://www.youtube.com/watch?v=dQw4w9WgXcQ", "Kuplinov \u25ba Play"},
                {"AcademeG: \u0422\u0435\u0441\u0442-\u0434\u0440\u0430\u0439\u0432 \u0432\u0435\u043a\u0430", "https://i.ytimg.com/vi/9bZkp7q19f0/mqdefault.jpg", "https://www.youtube.com/watch?v=9bZkp7q19f0", "AcademeG"},
                {"itpedia: \u0411\u043e\u043b\u044c\u0448\u043e\u0439 \u0440\u0430\u0437\u0431\u043e\u0440 \u0433\u043e\u0434\u0430", "https://i.ytimg.com/vi/kJQP7kiw5Fk/mqdefault.jpg", "https://www.youtube.com/watch?v=kJQP7kiw5Fk", "itpedia"},
                {"RedLetterMedia: Half in the Bag", "https://i.ytimg.com/vi/fJ9rUzIMcZQ/mqdefault.jpg", "https://www.youtube.com/watch?v=fJ9rUzIMcZQ", "RedLetterMedia"},
                {"ThePrimeTime: Next-Gen Dev Setup", "https://i.ytimg.com/vi/RgKAFK5djSk/mqdefault.jpg", "https://www.youtube.com/watch?v=RgKAFK5djSk", "ThePrimeTime"}
            };

            for (int i = 0; i < mockVideos.length; i++) {
                ContentValues pv = new ContentValues();
                pv.put("channel_id", chId);
                pv.put("type", 4); // 4 = TYPE_CLIP
                pv.put("title", mockVideos[i][0]);
                pv.put("poster_art_uri", mockVideos[i][1]);
                pv.put("intent_uri", mockVideos[i][2]);
                pv.put("short_description", mockVideos[i][3]);
                pv.put("weight", 100 - i);
                cr.insert(programsUri, pv);
            }
            Log.i(TAG, "Seeded emulator test data with 6 videos for channel " + chId);
        } catch (Exception e) {
            Log.e(TAG, "Failed seeding emulator data", e);
        }
    }
}
