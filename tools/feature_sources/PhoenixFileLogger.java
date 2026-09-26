package com.prometheus.camera.rev;

import android.app.Application;
import android.content.ContentValues;
import android.net.Uri;
import android.os.Environment;
import android.os.Process;
import android.provider.MediaStore;
import android.provider.Settings;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/** Mirrors Phoenix diagnostics to Downloads while preserving their original log sink. */
public final class PhoenixFileLogger {
    private static final String SETTING = "phoenix_local_log_enabled";
    private static final String NAME = "Phoenix-" + Process.myPid() + "-" +
            new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.US).format(new Date()) + ".log";
    private static final StringBuilder PENDING = new StringBuilder(4096);
    private static Uri uri;
    private static boolean failureReported;

    private PhoenixFileLogger() {}

    public static boolean enabled() {
        Application application = currentApplication();
        // Load-package diagnostics run before Application exists. The saved switch
        // cannot be read yet, so no local writer may run during that phase.
        return application != null && Settings.Global.getInt(application.getContentResolver(), SETTING, 1) != 0;
    }

    public static synchronized void append(String message) {
        if (!enabled()) return;
        PENDING.append(new SimpleDateFormat("HH:mm:ss.SSS", Locale.US).format(new Date()))
                .append(' ').append(message).append('\n');
        Application application = currentApplication();
        if (application == null) return;
        try {
            if (uri == null) {
                ContentValues values = new ContentValues();
                values.put("_display_name", NAME);
                values.put("mime_type", "text/plain");
                values.put("relative_path", Environment.DIRECTORY_DOWNLOADS);
                uri = application.getContentResolver().insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, values);
            }
            if (uri == null) return;
            OutputStream output = application.getContentResolver().openOutputStream(uri, "wa");
            if (output == null) return;
            output.write(PENDING.toString().getBytes(StandardCharsets.UTF_8));
            output.close();
            PENDING.setLength(0);
        } catch (Throwable error) {
            if (!failureReported) {
                failureReported = true;
                android.util.Log.e("PhoenixFileLogger", "local log write failed", error);
            }
        }
    }

    public static void append(Throwable error) {
        StringWriter text = new StringWriter();
        error.printStackTrace(new PrintWriter(text));
        append(text.toString());
    }

    public static int info(String tag, String message) {
        int result = android.util.Log.i(tag, message);
        append(tag + ": " + message);
        return result;
    }

    public static int warn(String tag, String message) {
        int result = android.util.Log.w(tag, message);
        append(tag + ": " + message);
        return result;
    }

    public static int warn(String tag, String message, Throwable error) {
        int result = android.util.Log.w(tag, message, error);
        append(tag + ": " + message + "\n" + stack(error));
        return result;
    }

    public static int error(String tag, String message) {
        int result = android.util.Log.e(tag, message);
        append(tag + ": " + message);
        return result;
    }

    public static int error(String tag, String message, Throwable error) {
        int result = android.util.Log.e(tag, message, error);
        append(tag + ": " + message + "\n" + stack(error));
        return result;
    }

    private static String stack(Throwable error) {
        StringWriter text = new StringWriter();
        error.printStackTrace(new PrintWriter(text));
        return text.toString();
    }

    private static Application currentApplication() {
        try {
            Class<?> activityThread = Class.forName("android.app.ActivityThread");
            Method method = activityThread.getDeclaredMethod("currentApplication");
            method.setAccessible(true);
            return (Application) method.invoke(null);
        } catch (Throwable ignored) {
            return null;
        }
    }
}
