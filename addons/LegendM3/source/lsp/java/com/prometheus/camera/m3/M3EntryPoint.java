package com.prometheus.camera.m3;

import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

/** M3 entry in the existing OS4 camera; no other Phoenix hooks are bundled. */
public final class M3EntryPoint implements IXposedHookLoadPackage {
    @Override public void handleLoadPackage(XC_LoadPackage.LoadPackageParam param) throws Throwable {
        if ("com.miui.mediaeditor".equals(param.packageName)) {
            if (!"com.miui.mediaeditor".equals(param.processName) &&
                    !"com.miui.mediaeditor:photo_editor".equals(param.processName)) return;
            installMediaEditorLegendGate(param.classLoader);
            return;
        }
        if (!"com.android.camera".equals(param.packageName) ||
                !"com.android.camera".equals(param.processName)) return;
        ClassLoader loader = param.classLoader;
        installM3QuickFocalConfig(loader);
        XposedHelpers.findAndHookMethod("Je.c", loader, "W0", new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam p) { p.setResult(true); }
        });
        XposedHelpers.findAndHookMethod("T3.a", loader, "u5", new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam p) {
                android.util.Range<?> original = (android.util.Range<?>) p.getResult();
                float lower = (Float) XposedHelpers.callStaticMethod(
                    XposedHelpers.findClass("com.android.camera.data.data.j", loader), "C", 256);
                p.setResult(new android.util.Range<Float>(lower, (Float) original.getUpper()));
                M3Runtime.log("M3 zoom range=" + p.getResult());
            }
        });
        final Class<?> component = XposedHelpers.findClass("r2.A", loader);
        XposedHelpers.findAndHookMethod(component, "R", Object.class, new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam p) {
                List<?> items = (List<?>) XposedHelpers.getObjectField(p.thisObject, "mItems");
                for (Iterator<?> iterator = items.iterator(); iterator.hasNext();)
                    if (!"M3".equals(XposedHelpers.getObjectField(iterator.next(), "q"))) iterator.remove();
                Log.i("PhoenixM3", "M3 entry items=" + items.size());
            }
        });
        XposedHelpers.findAndHookMethod(component, "getDefaultValue", int.class, new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam p) { p.setResult("M3"); }
        });
        XposedHelpers.findAndHookMethod("com.android.camera.data.data.c", loader,
                "getComponentValue", int.class, new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam p) {
                if (component.isInstance(p.thisObject) && (Integer) p.args[0] == 256) p.setResult("M3");
            }
        });
        Log.i("PhoenixM3", "independent M3 entry hooks installed");
    }

    /**
     * The 14 Ultra feature implementation returns no SwitchZoom definition for
     * display mode 256. Reuse the definition already shipped for the 17 Ultra
     * feature implementation: main camera 1.0 (23 mm) -> 28 mm -> 35 mm and
     * the matching telephoto focal cycle. Only the missing mode-256 entry is
     * merged; all device-native definitions remain owned by the active feature.
     */
    @SuppressWarnings({"rawtypes", "unchecked"})
    private static void installM3QuickFocalConfig(ClassLoader loader) {
        final Class<?> targetConfigClass = XposedHelpers.findClass(
                "콫콧콥켦콥콡켦콬콭콾콡콫콭켦콆콭콲콠콩", loader);
        Class<?> activeConfigClass = XposedHelpers.findClass(
                "䣑䣝䣟䢜䣟䣛䢜䣖䣗䣄䣛䣑䣗䢜䣳䣇䣀䣝䣀䣓", loader);
        XposedHelpers.findAndHookMethod(activeConfigClass, "B1", new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam p) {
                if (p.hasThrowable()) return;
                Map original = (Map) p.getResult();
                if (original != null && original.containsKey(Integer.valueOf(256))) return;
                Object targetConfig = XposedHelpers.newInstance(targetConfigClass);
                Map targetDefinitions = (Map) XposedHelpers.callMethod(targetConfig, "B1");
                Object mode256 = targetDefinitions.get(Integer.valueOf(256));
                if (mode256 == null)
                    throw new IllegalStateException("17 Ultra mode-256 SwitchZoom definition missing");
                Map merged = original == null ? new HashMap() : new HashMap(original);
                merged.put(Integer.valueOf(256), mode256);
                p.setResult(merged);
            }
        });
        M3Runtime.log("M3 quick focal config installed: 23/28/35");
    }

    /**
     * MediaEditor 2.4.0.5.2 exposes Legendary/M3 only to the stock nezha + LCC
     * product. The renderer and input protocol are present on the current 14
     * Ultra build, so lift only this provider capability gate in MediaEditor.
     */
    private static void installMediaEditorLegendGate(ClassLoader loader) {
        Class<?> activity = XposedHelpers.findClass(
                "androidx.fragment.app.FragmentActivity", loader);
        for (String candidate : new String[] {"mb.a$i", "lb.a$i"}) {
            Class<?> gate = XposedHelpers.findClassIfExists(candidate, loader);
            if (gate == null) continue;
            XposedHelpers.findAndHookMethod(gate, "d", activity, new XC_MethodHook() {
                @Override protected void afterHookedMethod(MethodHookParam p) {
                    p.setResult(Boolean.TRUE);
                }
            });
            Log.i("PhoenixM3", "MediaEditor M3 capability gate opened via " + candidate);
            return;
        }
        Log.w("PhoenixM3", "MediaEditor M3 capability gate class is unsupported");
    }
}
