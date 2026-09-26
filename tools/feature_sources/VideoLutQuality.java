package com.prometheus.camera.rev;

import dalvik.system.InMemoryDexClassLoader;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.IXposedHookZygoteInit;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.zip.ZipFile;

/** Retains native quality rules except supported video modes' LUT-specific ceiling. */
public final class VideoLutQuality implements IXposedHookZygoteInit, IXposedHookLoadPackage {
    private String modulePath;
    private String installation = "not installed";
    private android.content.Context context;
    private volatile QualityInput qualityInput;
    private static final class QualityInput {
        final Object component;
        final Object[] arguments;
        QualityInput(Object component, Object[] arguments) {
            this.component = component;
            this.arguments = arguments.clone();
        }
    }
    private static final String PREFS = "prometheus_camera_settings";
    private static final String KEY = "phoenix_video_lut_quality_unlock";
    private boolean enabled() {
        return context != null && context.getSharedPreferences(PREFS, 0).getBoolean(KEY, false);
    }

    private boolean changeEnabled(boolean value, ClassLoader loader) throws java.io.IOException {
        boolean previous = enabled();
        if (!context.getSharedPreferences(PREFS, 0).edit().putBoolean(KEY, value).commit()) return false;
        record("unlock changed " + previous + " -> " + value);
        if (previous == value) return true;
        QualityInput input = qualityInput;
        Class<?> module = XposedHelpers.findClass("com.android.camera.module.Y", loader);
        int mode = XposedHelpers.getStaticIntField(module, "a");
        if (input == null || !supportsMode(mode) || (Integer) input.arguments[0] != mode) return true;
        // Rebuild from the OEM inputs, not from the already modified limit object.
        // The new preference is visible before J calls y: OFF uses the original method.
        XposedHelpers.callMethod(input.component, "J", input.arguments);
        if (!value) {
            String permitted = (String) XposedHelpers.callMethod(input.component, "getComponentValue", mode);
            XposedHelpers.callMethod(input.component, "setComponentValue", mode, permitted);
            record("OEM restrictions restored quality=" + permitted);
        }
        return true;
    }

    private Object encoderGroup(Object group) {
        for (Object child : new ArrayList<Object>((ArrayList<?>) XposedHelpers.getObjectField(group, "f0"))) {
            if ("pref_video_encoder_key".equals(XposedHelpers.getObjectField(child, "m"))) return group;
            if (XposedHelpers.findClass("androidx.preference.PreferenceGroup", child.getClass().getClassLoader()).isInstance(child)) {
                Object found = encoderGroup(child);
                if (found != null) return found;
            }
        }
        return null;
    }

    static boolean supportsMode(int mode) {
        return mode == 162 || mode == 164 || mode == 180;
    }

    private void injectSettings(Object fragment, ClassLoader loader) {
        Object screen = XposedHelpers.getObjectField(fragment, "mPreferenceGroup");
        if (XposedHelpers.callMethod(screen, "k0", KEY) != null) return;
        Object group = encoderGroup(screen);
        if (group == null) throw new IllegalStateException("Video encoder preference missing");
        android.content.Context activity = (android.content.Context) XposedHelpers.callMethod(fragment, "requireContext");
        Object sw = XposedHelpers.newInstance(XposedHelpers.findClass("androidx.preference.SwitchPreference", loader), activity, null);
        XposedHelpers.callMethod(sw, "a0", KEY);
        XposedHelpers.callMethod(sw, "e0", "解锁滤镜视频规格限制");
        XposedHelpers.callMethod(sw, "c0", "将极大地增加发热，谨慎启用。");
        XposedHelpers.setBooleanField(sw, "t", false);
        XposedHelpers.callMethod(sw, "setChecked", enabled());
        Class<?> listener = XposedHelpers.findClass("androidx.preference.Preference$c", loader);
        Object callback = java.lang.reflect.Proxy.newProxyInstance(loader, new Class<?>[]{listener}, (proxy, method, args) -> {
            if (method.getDeclaringClass() == Object.class) {
                if ("hashCode".equals(method.getName())) return System.identityHashCode(proxy);
                if ("equals".equals(method.getName())) return proxy == args[0];
                return "VideoQualityPreferenceListener";
            }
            if (!"onPreferenceChange".equals(method.getName())) throw new IllegalStateException(method.toString());
            return changeEnabled(Boolean.TRUE.equals(args[1]), loader);
        });
        XposedHelpers.setObjectField(sw, "e", callback);
        ArrayList<?> children = new ArrayList<Object>((ArrayList<?>) XposedHelpers.getObjectField(group, "f0"));
        for (Object child : children) XposedHelpers.callMethod(group, "n0", child);
        int order = 0;
        for (Object child : children) {
            XposedHelpers.setIntField(child, "g", order++);
            XposedHelpers.callMethod(group, "j0", child);
            if ("pref_video_encoder_key".equals(XposedHelpers.getObjectField(child, "m"))) {
                XposedHelpers.setIntField(sw, "g", order++);
                XposedHelpers.callMethod(group, "j0", sw);
            }
        }
    }
    private void record(String message) throws java.io.IOException {
        if (context == null) return;
        PhoenixFileLogger.info("PhoenixVideoQuality", message);
        try (java.io.FileOutputStream out = new java.io.FileOutputStream(new java.io.File(context.getCacheDir(), "phoenix-quality-execution.log"), true)) {
            out.write((System.currentTimeMillis() + " pid=" + android.os.Process.myPid() + " " + message + "\n").getBytes(java.nio.charset.StandardCharsets.UTF_8));
        }
    }

    @Override public void initZygote(StartupParam param) { modulePath = param.modulePath; }

    @Override public void handleLoadPackage(XC_LoadPackage.LoadPackageParam p) throws Throwable {
        if (!"com.android.camera".equals(p.packageName) || !p.packageName.equals(p.processName)) return;
        XposedHelpers.findAndHookMethod(android.app.Application.class, "attach", android.content.Context.class, new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam h) throws Throwable {
                context = (android.content.Context) h.args[0];
                record("install=" + installation + " enabled=" + enabled() + " module=" + modulePath);
                java.io.File file = new java.io.File(((android.content.Context) h.args[0]).getCacheDir(), "phoenix-quality-install.log");
                try (java.io.FileOutputStream out = new java.io.FileOutputStream(file, true)) {
                    out.write(("pid=" + android.os.Process.myPid() + " path=" + modulePath + " " + installation + "\n").getBytes(java.nio.charset.StandardCharsets.UTF_8));
                }
            }
        });
        try {
            install(p);
            installation = "installed";
        } catch (Throwable error) {
            installation = android.util.Log.getStackTraceString(error);
            throw error;
        }
    }

    private void install(XC_LoadPackage.LoadPackageParam p) throws Throwable {
        XposedHelpers.findAndHookMethod("r2.f0", p.classLoader, "J", int.class, int.class, int.class,
                "j9.e", new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam h) {
                if (!h.hasThrowable()) qualityInput = supportsMode((Integer) h.args[0])
                        ? new QualityInput(h.thisObject, h.args) : null;
            }
        });
        XposedHelpers.findAndHookMethod("com.android.camera.fragment.settings.CameraCamcorderPreferenceFragment", p.classLoader,
                "registerPreferenceListener", new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam h) {
                injectSettings(h.thisObject, p.classLoader);
            }
        });
        byte[] dex;
        try (ZipFile apk = new ZipFile(modulePath);
             InputStream input = apk.getInputStream(apk.getEntry("assets/video_quality.dex"))) {
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            byte[] buffer = new byte[8192];
            for (int n; (n = input.read(buffer)) != -1;) output.write(buffer, 0, n);
            dex = output.toByteArray();
        }
        ClassLoader rulesLoader = new InMemoryDexClassLoader(ByteBuffer.wrap(dex), p.classLoader);
        Class<?> rules = rulesLoader.loadClass("com.prometheus.camera.video.VideoQualityRules");
        Class<?> module = XposedHelpers.findClass("com.android.camera.module.Y", p.classLoader);
        XposedHelpers.findAndHookMethod("com.android.camera.data.data.j", p.classLoader,
                "N1", int.class, new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam h) throws Throwable {
                if (!enabled() || (Integer) h.args[0] != 0 || !supportsMode(XposedHelpers.getStaticIntField(module, "a"))) return;
                // Only the direct quality/fps caller's legacy LUT exclusion is removed.
                // Nested feature resets and the user's filter selection remain native.
                for (StackTraceElement frame : Thread.currentThread().getStackTrace()) {
                    if (!frame.getClassName().equals("q6.X")) continue;
                    if (frame.getMethodName().equals("f8") || frame.getMethodName().equals("o4")) {
                        record("skip quality filter reset " + frame);
                        h.setResult(null);
                    }
                    break;
                }
            }
        });
        XposedHelpers.findAndHookMethod("r2.f0", p.classLoader, "y", "r2.j1$a",
                ArrayList.class, int.class, "j9.e", int.class, new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam h) throws Throwable {
                if (supportsMode((Integer) h.args[4])) record("quality entry module=" + h.args[4] + " enabled=" + enabled() + " incoming=" + h.args[0]);
                if (!enabled() || !supportsMode((Integer) h.args[4])) return;
                try {
                    XposedHelpers.callStaticMethod(rules, "apply", h.thisObject,
                            h.args[0], h.args[1], h.args[2], h.args[3], h.args[4]);
                    record("quality applied " + h.args[0]);
                } catch (Throwable error) {
                    record(android.util.Log.getStackTraceString(error));
                    throw error;
                }
                h.setResult(null);
            }
        });
    }
}
