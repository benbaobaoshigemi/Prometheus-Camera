package com.prometheus.camera.colordev;

import android.content.Context;
import android.content.SharedPreferences;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/** Ordinary-photo ASD override. Absence of KEY always preserves the native value. */
public final class XiaomiAsd {
    public static final String KEY = "pref_prometheus_xiaomi_ai_asd";
    private static final String LEGACY = "pref_prometheus_disable_xiaomi_ai_asd";
    private static final String PREFS = "prometheus_color_development";
    private static volatile String reportedState;

    private XiaomiAsd() {}

    private static void migrate(SharedPreferences preferences) {
        if (!preferences.contains(LEGACY)) return;
        SharedPreferences.Editor editor = preferences.edit();
        // The old unchecked value meant native behavior, not force-on.
        if (!preferences.contains(KEY) && preferences.getBoolean(LEGACY, false)) {
            editor.putBoolean(KEY, false);
        }
        editor.remove(LEGACY);
        if (!editor.commit()) throw new IllegalStateException("Unable to migrate Xiaomi ASD preference");
    }

    public static boolean checked(Context context) {
        SharedPreferences preferences = context.getApplicationContext().getSharedPreferences(PREFS, 0);
        migrate(preferences);
        if (preferences.contains(KEY)) return preferences.getBoolean(KEY, false);

        // OS4 CaptureModule.getAiSceneEnabled(): native device/style branch,
        // otherwise the native AI component for ordinary-photo mode (163).
        ClassLoader loader = context.getClassLoader();
        Object holder = XposedHelpers.getStaticObjectField(
                XposedHelpers.findClass("Je.c$b", loader), "a");
        Object device = XposedHelpers.getObjectField(holder, "e");
        Class<?> data = XposedHelpers.findClass("com.android.camera.data.data.j", loader);
        if ((Boolean) XposedHelpers.callMethod(device, "E3")
                && ((Integer) XposedHelpers.callStaticMethod(data, "o")) == 1) return true;
        return (Boolean) XposedHelpers.callStaticMethod(data, "i", 163);
    }

    public static Boolean resolve(SharedPreferences preferences, Boolean nativeValue) {
        // CaptureRequest.Builder.set(key, null) removes metadata; keep that API behavior.
        if (nativeValue == null) return null;
        migrate(preferences);
        boolean overridden = preferences.contains(KEY);
        boolean effective = preferences.getBoolean(KEY, nativeValue.booleanValue());
        String state = "native=" + nativeValue + " effective=" + effective
                + " source=" + (overridden ? "user" : "native") + " mode=163";
        if (!state.equals(reportedState)) {
            reportedState = state;
            XposedBridge.log("PhoenixASD: " + state);
        }
        return Boolean.valueOf(effective);
    }
}
