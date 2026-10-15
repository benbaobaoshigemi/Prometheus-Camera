package com.prometheus.camera.rev;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import java.io.File;
import java.io.FileWriter;
import java.lang.ref.WeakReference;
import java.lang.reflect.Proxy;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Settings switch "劫持徕卡生动重定向到原色". The switch only talks to the root module
 * (request/ack files in the camera's private files directory); the root module owns the tuned-bin mounts.
 */
public final class NaturalSettings implements IXposedHookLoadPackage {
    static final String VERSION = "V1.4.0";
    static final String KEY = "phoenix_natural_redirect";
    static final String CATEGORY = "category_prometheus_classic_controls";
    static final String LABEL = "劫持徕卡生动重定向到原色";
    static final int ACK_TIMEOUT_MS = 45000;

    static Context app;
    static ClassLoader loader;
    static Handler ui;
    static volatile boolean busy;
    static final ExecutorService io = Executors.newSingleThreadExecutor();
    static final List<WeakReference<Object>> prefs = new ArrayList<WeakReference<Object>>();

    public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam p) throws Throwable {
        if (!"com.android.camera".equals(p.packageName) || !p.packageName.equals(p.processName)) return;
        loader = p.classLoader;
        XposedHelpers.findAndHookMethod(Application.class, "onCreate", new XC_MethodHook() {
            protected void afterHookedMethod(MethodHookParam h) throws Throwable {
                app = (Context) h.thisObject;
                ui = new Handler(Looper.getMainLooper());
                try {
                    install();
                    trace("settings hook installed");
                } catch (Throwable failure) {
                    trace("install failed: " + failure);
                    XposedBridge.log(failure);
                }
            }
        });
    }

    static File dir() { return new File(app.getFilesDir(), "phoenix-natural"); }

    static void trace(String line) {
        try (FileWriter w = new FileWriter(new File(app.getFilesDir(), "phoenix-natural-addon.log"), true)) {
            w.write(line + "\n");
        } catch (Exception ignored) { }
    }

    static Object call(Object o, String method, Object... args) { return XposedHelpers.callMethod(o, method, args); }
    static Object field(Object o, String name) { return XposedHelpers.getObjectField(o, name); }
    static Context ctx(Object f) { return (Context) call(f, "requireContext"); }

    /** null when the root module is ready for this boot, otherwise the reason. */
    static String readiness() {
        try {
            File ready = new File(dir(), "addon-ready");
            if (!ready.isFile()) return "ROOT 模块未就绪";
            String boot = new String(Files.readAllBytes(new File("/proc/sys/kernel/random/boot_id").toPath()),
                    StandardCharsets.UTF_8).trim();
            String state = new String(Files.readAllBytes(ready.toPath()), StandardCharsets.UTF_8).trim();
            if (!(VERSION + " " + boot).equals(state)) return "ROOT 模块版本或开机状态不匹配";
            return null;
        } catch (Exception e) {
            return "ROOT 模块状态不可读";
        }
    }

    static boolean status() {
        try {
            return "on".equals(new String(Files.readAllBytes(new File(dir(), "status").toPath()),
                    StandardCharsets.UTF_8).trim());
        } catch (Exception e) {
            return false;
        }
    }

    static String summary() {
        String reason = readiness();
        if (reason != null) return reason;
        return busy ? "正在切换，请稍候…" : (status() ? "已启用：徕卡生动使用原色成像" : "已关闭：徕卡生动使用原厂成像");
    }

    static void install() throws Throwable {
        XposedHelpers.findAndHookMethod("com.android.camera.fragment.settings.CameraAdvancePreferenceFragment", loader,
            "registerPreferenceListener", new XC_MethodHook(10000) {
                protected void afterHookedMethod(MethodHookParam h) { inject(h.thisObject); }
            });
    }

    static void inject(final Object f) {
        try {
            Object screen = field(f, "mPreferenceGroup");
            Object cat = call(screen, "k0", CATEGORY);
            if (cat == null) throw new IllegalStateException("Classic controls category missing");
            if (call(screen, "k0", KEY) != null) return;
            Object p = XposedHelpers.newInstance(XposedHelpers.findClass("miuix.preference.CheckBoxPreference", loader),
                    ctx(f), null);
            call(p, "a0", KEY);
            call(p, "e0", LABEL);
            call(p, "c0", summary());
            XposedHelpers.setBooleanField(p, "t", false);
            int layout = app.getResources().getIdentifier("phoenix_vignette_switch", "layout", "com.android.camera");
            if (layout != 0) XposedHelpers.setIntField(p, "V", layout);
            call(p, "setChecked", status() && readiness() == null);
            call(p, "Y", readiness() == null && !busy);
            Class<?> listener = XposedHelpers.findClass("androidx.preference.Preference$c", loader);
            final Object pref = p;
            XposedHelpers.setObjectField(p, "e", Proxy.newProxyInstance(loader, new Class[]{listener},
                (proxy, method, args) -> {
                    if (method.getName().equals("onPreferenceChange")) {
                        request(f, pref, Boolean.TRUE.equals(args[1]));
                        return false; // state changes only after the root module acknowledges
                    }
                    if (method.getName().equals("hashCode")) return System.identityHashCode(proxy);
                    if (method.getName().equals("equals")) return proxy == args[0];
                    return "NaturalChangeListener";
                }));
            int order = 0;
            for (Object child : new ArrayList<Object>((ArrayList<?>) field(cat, "f0"))) {
                order = Math.max(order, XposedHelpers.getIntField(child, "g") + 1);
            }
            XposedHelpers.setIntField(p, "g", order);
            call(cat, "j0", p);
            synchronized (prefs) { prefs.add(new WeakReference<Object>(p)); }
            trace("switch inserted at order " + order);
        } catch (Throwable e) {
            trace("inject failed: " + e);
            XposedBridge.log(e);
        }
    }

    static void refresh() {
        synchronized (prefs) {
            for (WeakReference<Object> r : new ArrayList<WeakReference<Object>>(prefs)) {
                Object p = r.get();
                if (p == null) continue;
                try {
                    call(p, "c0", summary());
                    call(p, "setChecked", status() && readiness() == null);
                    call(p, "Y", readiness() == null && !busy);
                    call(p, "B");
                } catch (Throwable ignored) { }
            }
        }
    }

    static void toast(final Object f, final String text) {
        ui.post(() -> {
            try { Toast.makeText(ctx(f), text, Toast.LENGTH_LONG).show(); } catch (Throwable ignored) { }
        });
    }

    static void request(final Object f, final Object pref, final boolean enable) {
        if (busy) return;
        String reason = readiness();
        if (reason != null) { toast(f, reason); return; }
        busy = true;
        refresh();
        io.execute(() -> {
            String result;
            try {
                result = send(enable);
            } catch (Exception e) {
                result = "ERROR " + e;
            }
            final String finalResult = result;
            busy = false;
            ui.post(() -> {
                refresh();
                if (finalResult.startsWith("OK")) {
                    toast(f, enable ? "已启用原色，请重新打开相机" : "已关闭原色，请重新打开相机");
                } else {
                    toast(f, "切换失败：" + finalResult);
                }
            });
            trace("request " + (enable ? "on" : "off") + " -> " + finalResult);
        });
    }

    static String send(boolean enable) throws Exception {
        File d = dir();
        long token = System.currentTimeMillis();
        File ack = new File(d, "ack");
        File pending = new File(d, "request.pending");
        Files.write(pending.toPath(), (token + " " + (enable ? "on" : "off") + "\n").getBytes(StandardCharsets.UTF_8));
        Files.move(pending.toPath(), new File(d, "request").toPath(), StandardCopyOption.REPLACE_EXISTING);
        long end = System.currentTimeMillis() + ACK_TIMEOUT_MS;
        while (System.currentTimeMillis() < end) {
            if (ack.isFile()) {
                String line = new String(Files.readAllBytes(ack.toPath()), StandardCharsets.UTF_8).trim();
                if (line.startsWith(token + " ")) return line.substring(String.valueOf(token).length() + 1);
            }
            Thread.sleep(200);
        }
        return "ERROR ROOT 模块无应答";
    }
}
