package com.prometheus.camera.rev;

import android.app.Application;
import android.content.Context;
import android.hardware.camera2.CaptureRequest;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/** Change-only observation for the high-resolution video trial. */
public final class VideoLutMonitor implements IXposedHookLoadPackage {
    private Context context;
    private String lastRequest;

    private synchronized void record(String message) throws java.io.IOException {
        if (context == null) return;
        PhoenixFileLogger.info("PhoenixVideoQuality", message);
        try (FileOutputStream out = new FileOutputStream(new File(context.getCacheDir(), "phoenix-video-quality.log"), true)) {
            out.write((System.currentTimeMillis() + " pid=" + android.os.Process.myPid() + " " + message + "\n")
                    .getBytes(StandardCharsets.UTF_8));
        }
    }

    @Override public void handleLoadPackage(XC_LoadPackage.LoadPackageParam p) {
        if (!"com.android.camera".equals(p.packageName) || !p.packageName.equals(p.processName)) return;
        XposedHelpers.findAndHookMethod(Application.class, "attach", Context.class, new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam h) throws Throwable {
                context = (Context) h.args[0];
                record("monitor attached");
            }
        });
        XposedHelpers.findAndHookMethod("r2.f0", p.classLoader, "y", "r2.j1$a",
                ArrayList.class, int.class, "j9.e", int.class, new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam h) throws Throwable {
                if ((Integer) h.args[4] != 162) return;
                record("quality candidates=" + h.args[1] + " limits=" + h.args[0]
                        + " result=" + (h.hasThrowable() ? h.getThrowable() : "ok"));
            }
        });
        XposedHelpers.findAndHookMethod("com.android.camera.data.data.c", p.classLoader,
                "setComponentValue", int.class, String.class, new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam h) throws Throwable {
                if ((Integer) h.args[0] != 162) return;
                String name = h.thisObject.getClass().getName();
                if (!name.equals("r2.f0") && !name.equals("r2.g0") && !name.equals("r2.h0")) return;
                StringBuilder stack = new StringBuilder();
                for (StackTraceElement frame : Thread.currentThread().getStackTrace()) {
                    String caller = frame.getClassName();
                    if (caller.startsWith("q6.") || caller.startsWith("r2.") || caller.startsWith("com.android.camera.module."))
                        stack.append(" <- ").append(frame);
                }
                record("quality write " + name + " value=" + h.args[1] + stack);
            }
        });
        XposedHelpers.findAndHookMethod("com.android.camera.data.data.j", p.classLoader,
                "N1", int.class, new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam h) throws Throwable {
                if (XposedHelpers.getStaticIntField(XposedHelpers.findClass("com.android.camera.module.Y", p.classLoader), "a") != 162) return;
                StringBuilder callers = new StringBuilder();
                int count = 0;
                for (StackTraceElement frame : Thread.currentThread().getStackTrace()) {
                    String name = frame.getClassName();
                    if (name.startsWith("q6.") || name.startsWith("r2.") || name.startsWith("com.android.camera.data.data.")) {
                        callers.append(" <- ").append(frame);
                        if (++count == 8) break;
                    }
                }
                record("filter write=" + h.args[0] + callers);
            }
            @Override protected void afterHookedMethod(MethodHookParam h) throws Throwable {
                if (XposedHelpers.getStaticIntField(XposedHelpers.findClass("com.android.camera.module.Y", p.classLoader), "a") != 162) return;
                Object persistent = XposedHelpers.callStaticMethod(XposedHelpers.findClass("r2.E", p.classLoader), "q", 162);
                Object data = XposedHelpers.callStaticMethod(XposedHelpers.findClass("g2.a", p.classLoader), (Boolean) persistent ? "a" : "j");
                Object component = XposedHelpers.callMethod(data, "x", XposedHelpers.findClass((Boolean) persistent ? "r2.E" : "v2.c0", p.classLoader));
                record("filter after write=" + h.args[0] + " selection=" + XposedHelpers.callMethod(component, "getComponentValue", 162));
            }
        });
        XposedHelpers.findAndHookMethod("j9.m0", p.classLoader, "g1", CaptureRequest.Builder.class,
                "j9.e", "j9.i0", new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam h) throws Throwable {
                if (XposedHelpers.getStaticIntField(XposedHelpers.findClass("com.android.camera.module.Y", p.classLoader), "a") != 162) return;
                CaptureRequest.Builder request = (CaptureRequest.Builder) h.args[0];
                String value = "request slot=" + XposedHelpers.getIntField(h.args[2], "S1")
                        + " cloud=" + XposedHelpers.getBooleanField(h.args[2], "U1")
                        + " fps=" + request.get(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE)
                        + " intent=" + request.get(CaptureRequest.CONTROL_CAPTURE_INTENT);
                if (!value.equals(lastRequest)) { record(value); lastRequest = value; }
            }
        });
    }
}
