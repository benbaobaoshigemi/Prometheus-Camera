package com.prometheus.camera.rev;

import android.os.Build;
import android.util.Log;

import java.lang.reflect.Method;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

/** Narrow compatibility hooks for confirmed camera/device mismatches. */
public final class PhoenixCompatFix implements IXposedHookLoadPackage {
    private static final String TARGET_PACKAGE = "com.android.camera";
    private static final String STREET_PORTRAIT_DEVICE = "ishtar";
    private static final int MODULE_VIDEO = 162;
    private static final int MODULE_CINEMASTER = 164;
    private static final int MODULE_PRO_VIDEO = 180;
    private static final int MODE_VIDEO_PLAIN = 0x8004;
    private static final int MODE_VIDEO_FILTER = 0x8019;
    private static final int FILTER_NONE = -1;
    private static final int VIDEO_NONE = 0x700;
    private static final int REAL_FILTER_MIN = 0x10000;
    private static final int STREET_PORTRAIT_BIT = 0x8;
    private static final long FILTER_INTENT_FRESH_MS = 5000L;
    private static final String TAG = "MCAM_PhoenixCompatFix";

    private static volatile boolean installed;
    private static volatile boolean filterIdReadable;
    private static volatile int videoFilterId = FILTER_NONE;
    private static volatile boolean masterFilterHooked;
    private static volatile int masterFilter = FILTER_NONE;
    private static volatile long masterFilterAtMs;
    private static Method savedFilterGetter;

    @Override
    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam p) {
        if (p == null || !TARGET_PACKAGE.equals(p.packageName)
                || !p.packageName.equals(p.processName) || p.classLoader == null || installed) {
            return;
        }
        installed = true;
        hookCvSelection(p.classLoader);
        try {
            savedFilterGetter = XposedHelpers.findClass("com.android.camera.data.data.j", p.classLoader)
                    .getDeclaredMethod("Z");
            savedFilterGetter.setAccessible(true);
        } catch (ReflectiveOperationException error) {
            log("saved filter getter unavailable: " + error);
        }
        XposedHelpers.callStaticMethod(XposedHelpers.findClass(
                "com.prometheus.camera.rev.PhoenixCineAnimFix", getClass().getClassLoader()),
                "install", p.classLoader);
        hookModeDecider(p.classLoader);
        hookVideoFilterIdCapture(p.classLoader);
        hookMasterFilterWriter(p.classLoader);
        if (isStreetMaskTarget(Build.DEVICE)) {
            hookStreetMask(p.classLoader);
        } else {
            log("street portrait mask unchanged on device=" + Build.DEVICE);
        }
        log("compatibility hooks installed");
    }

    static boolean isStreetMaskTarget(String device) {
        return device != null && STREET_PORTRAIT_DEVICE.equalsIgnoreCase(device);
    }

    private static void hookCvSelection(ClassLoader loader) {
        XposedHelpers.findAndHookMethod("r2.m", loader, "R", Object.class, new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam h) {
                if (h.hasThrowable()) return;
                java.util.List<?> items = (java.util.List<?>) XposedHelpers.getObjectField(h.thisObject, "mItems");
                if (items == null || items.isEmpty()) return;
                int mode = XposedHelpers.getIntField(h.thisObject, "mCurrentMode");
                String selected = (String) XposedHelpers.callMethod(h.thisObject, "getPersistValue", mode);
                String nativeDefault = (String) XposedHelpers.callMethod(h.thisObject, "getDefaultValue", mode);
                boolean defaultPresent = false;
                for (Object item : items) {
                    String value = (String) XposedHelpers.getObjectField(item, "q");
                    if (value.equals(selected)) return;
                    if (value.equals(nativeDefault)) defaultPresent = true;
                }
                if (!defaultPresent) throw new IllegalStateException("CV default absent from native catalog");
                XposedHelpers.callMethod(h.thisObject, "setComponentValue", mode, nativeDefault);
                log("repaired unavailable CV selection mode=" + mode + " " + selected + " -> " + nativeDefault);
            }
        });
    }

    static boolean isRealFilterValue(int value) {
        return value > 0 && value != VIDEO_NONE && value >= REAL_FILTER_MIN
                && (value >> 8) != 0x12;
    }

    static boolean isVideoFilterModule(int moduleIndex) {
        return moduleIndex == MODULE_VIDEO || moduleIndex == MODULE_CINEMASTER
                || moduleIndex == MODULE_PRO_VIDEO;
    }

    static boolean shouldReplaceVideoMode(int mode, int moduleIndex,
            boolean idReadable, int filterId, boolean writerHooked,
            int writtenFilter, long writtenAgeMs) {
        if (mode != MODE_VIDEO_PLAIN || !isVideoFilterModule(moduleIndex)) return false;
        boolean activeId = idReadable && filterId != FILTER_NONE && filterId != 0;
        boolean freshIntent = writerHooked && writtenAgeMs >= 0
                && writtenAgeMs <= FILTER_INTENT_FRESH_MS && isRealFilterValue(writtenFilter);
        return activeId || freshIntent;
    }

    private static void hookModeDecider(ClassLoader loader) {
        Class<?> owner = XposedHelpers.findClassIfExists("y3.e", loader);
        if (owner == null) {
            log("video fix skipped: y3.e missing");
            return;
        }
        int hooked = 0;
        for (Method method : owner.getDeclaredMethods()) {
            Class<?>[] params = method.getParameterTypes();
            if (!"A".equals(method.getName()) || params.length != 1
                    || !"y3.w".equals(params[0].getName()) || method.getReturnType() != int.class) {
                continue;
            }
            try {
                method.setAccessible(true);
                XposedBridge.hookMethod(method, new XC_MethodHook() {
                    @Override protected void afterHookedMethod(MethodHookParam h) {
                        onModeDecided(h);
                    }
                });
                hooked++;
            } catch (Throwable error) {
                log("video mode hook failed: " + error);
            }
        }
        log("video mode hooks=" + hooked);
    }

    private static void onModeDecided(XC_MethodHook.MethodHookParam h) {
        try {
            Object result = h.getResult();
            if (!(result instanceof Integer)) return;
            int mode = ((Integer) result).intValue();
            int moduleIndex = moduleIndex(h);
            long age = System.currentTimeMillis() - masterFilterAtMs;
            boolean persistedFilter = false;
            if (mode == MODE_VIDEO_PLAIN && isVideoFilterModule(moduleIndex)
                    && savedFilterGetter != null) {
                int saved = ((Integer) savedFilterGetter.invoke(null)).intValue();
                persistedFilter = saved > 0 && saved != VIDEO_NONE;
            }
            if (!shouldReplaceVideoMode(mode, moduleIndex, filterIdReadable, videoFilterId,
                    masterFilterHooked, masterFilter, age) && !persistedFilter) {
                return;
            }
            h.setResult(Integer.valueOf(MODE_VIDEO_FILTER));
            log("video mode 0x8004 -> 0x8019 module=" + moduleIndex + " filterId=" + videoFilterId
                    + " writtenFilter=0x" + Integer.toHexString(masterFilter));
        } catch (Throwable error) {
            log("video decision failed open: " + error);
        }
    }

    private static int moduleIndex(XC_MethodHook.MethodHookParam h) {
        try {
            if (h.args != null && h.args.length == 1 && h.args[0] != null) {
                return XposedHelpers.getIntField(h.args[0], "a");
            }
        } catch (Throwable error) {
            log("module index unavailable: " + error);
        }
        return FILTER_NONE;
    }

    private static void hookVideoFilterIdCapture(ClassLoader loader) {
        Class<?> owner = XposedHelpers.findClassIfExists("j9.m0", loader);
        if (owner == null) {
            log("filter-id capture skipped: j9.m0 missing");
            return;
        }
        int hooked = 0;
        for (Method method : owner.getDeclaredMethods()) {
            if (!"g1".equals(method.getName()) || method.getParameterTypes().length != 3) continue;
            try {
                method.setAccessible(true);
                XposedBridge.hookMethod(method, new XC_MethodHook() {
                    @Override protected void beforeHookedMethod(MethodHookParam h) {
                        try {
                            Object settings = h.args[2];
                            if (settings == null || !"j9.i0".equals(settings.getClass().getName())) return;
                            int value = XposedHelpers.getIntField(settings, "S1");
                            filterIdReadable = true;
                            videoFilterId = value;
                        } catch (Throwable error) {
                            filterIdReadable = false;
                            log("filter-id capture failed open: " + error);
                        }
                    }
                });
                hooked++;
            } catch (Throwable error) {
                log("filter-id hook failed: " + error);
            }
        }
        log("filter-id hooks=" + hooked);
    }

    private static void hookMasterFilterWriter(ClassLoader loader) {
        Class<?> owner = XposedHelpers.findClassIfExists("com.android.camera.data.data.j", loader);
        if (owner == null) {
            log("master-filter capture skipped: data class missing");
            return;
        }
        int hooked = 0;
        for (Method method : owner.getDeclaredMethods()) {
            Class<?>[] params = method.getParameterTypes();
            if (!"N1".equals(method.getName()) || params.length != 1 || params[0] != int.class) continue;
            try {
                method.setAccessible(true);
                XposedBridge.hookMethod(method, new XC_MethodHook() {
                    @Override protected void beforeHookedMethod(MethodHookParam h) {
                        try {
                            masterFilter = ((Number) h.args[0]).intValue();
                            masterFilterAtMs = System.currentTimeMillis();
                        } catch (Throwable error) {
                            log("master-filter capture failed open: " + error);
                        }
                    }
                });
                hooked++;
            } catch (Throwable error) {
                log("master-filter hook failed: " + error);
            }
        }
        masterFilterHooked = hooked > 0;
        log("master-filter hooks=" + hooked);
    }

    private static void hookStreetMask(ClassLoader loader) {
        Class<?> owner = XposedHelpers.findClassIfExists("j9.e", loader);
        if (owner == null) {
            log("street portrait fix skipped: j9.e missing");
            return;
        }
        int hooked = 0;
        for (Method method : owner.getDeclaredMethods()) {
            if (!"V".equals(method.getName()) || method.getParameterTypes().length != 0
                    || method.getReturnType() != int.class) {
                continue;
            }
            try {
                method.setAccessible(true);
                XposedBridge.hookMethod(method, new XC_MethodHook() {
                    @Override protected void afterHookedMethod(MethodHookParam h) {
                        try {
                            Object result = h.getResult();
                            if (result instanceof Integer) {
                                int original = ((Integer) result).intValue();
                                h.setResult(Integer.valueOf(original | STREET_PORTRAIT_BIT));
                            }
                        } catch (Throwable error) {
                            log("street mask failed open: " + error);
                        }
                    }
                });
                hooked++;
            } catch (Throwable error) {
                log("street mask hook failed: " + error);
            }
        }
        log("street mask hooks=" + hooked + " device=" + Build.DEVICE);
    }

    private static void log(String message) {
        try {
            XposedBridge.log("[PhoenixCompatFix] " + message);
        } catch (Throwable ignored) {
        }
        try {
            Log.i(TAG, message);
        } catch (Throwable ignored) {
        }
    }
}
