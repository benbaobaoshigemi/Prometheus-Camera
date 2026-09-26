package com.prometheus.camera.rev;

import android.app.Activity;
import android.app.Application;
import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.opengl.*;
import android.os.*;
import android.provider.OpenableColumns;
import android.view.View;
import android.widget.*;
import de.robv.android.xposed.*;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import java.io.*;
import java.lang.reflect.*;
import java.nio.charset.*;
import java.nio.file.*;
import java.util.*;
import java.util.concurrent.*;

/** Camera-owned MIUIX preferences and the module's external-formula protocol. */
public final class VignetteSettings implements IXposedHookLoadPackage, IXposedHookZygoteInit {
    static String modulePath;
    public void initZygote(StartupParam startup) { modulePath = startup.modulePath; }

    static void appendAddonDex(ClassLoader cameraLoader) throws Exception {
        dalvik.system.PathClassLoader addonLoader = new dalvik.system.PathClassLoader(modulePath, cameraLoader);
        Object target = XposedHelpers.getObjectField(cameraLoader, "pathList");
        Object source = XposedHelpers.getObjectField(addonLoader, "pathList");
        Object[] original = (Object[]) XposedHelpers.getObjectField(target, "dexElements");
        Object[] addon = (Object[]) XposedHelpers.getObjectField(source, "dexElements");
        Object[] merged = (Object[]) Array.newInstance(original.getClass().getComponentType(), original.length + addon.length);
        System.arraycopy(original, 0, merged, 0, original.length);
        System.arraycopy(addon, 0, merged, original.length, addon.length);
        XposedHelpers.setObjectField(target, "dexElements", merged);
    }
    static final String MAIN = "com.prometheus.camera.filters.VignettePreferenceFragment";
    static final String EXP = "com.prometheus.camera.filters.VignetteExperimentalFragment";
    static final String ENTRY = "phoenix_vignette_settings", STRENGTH = "phoenix_vignette_strength";
    static final String PROTECT = "phoenix_vignette_protect", ENABLE = "phoenix_vignette_enabled";
    static final String RANGE = "phoenix_vignette_range", SHAPE = "phoenix_vignette_shape";
    static final int RANGE_MIN = 0, RANGE_MAX = 150;
    static final String IMPORT = "phoenix_vignette_import", DELETE = "phoenix_vignette_delete";
    static final int PICK = 27104;
    static Context app; static ClassLoader loader; static SharedPreferences prefs;
    static Handler ui;
    static final ExecutorService io = Executors.newSingleThreadExecutor();
    static volatile boolean busy;
    static volatile Adjustment desired;
    static boolean tracking;
    static final class Adjustment {
        final Object fragment; final int strength, range; final boolean protect, shape;
        Adjustment(Object f, int s, boolean p, int r, boolean h) {
            fragment=f; strength=s; protect=p; range=r; shape=h;
        }
    }
    static final Map<Object, Object> owners = Collections.synchronizedMap(new WeakHashMap<Object, Object>());
    static final Set<Object> fragments = Collections.newSetFromMap(new WeakHashMap<Object, Boolean>());

    public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam p) throws Throwable {
        if (!"com.android.camera".equals(p.packageName) || !p.packageName.equals(p.processName)) return;
        File dataDir = new File(p.appInfo.dataDir);
        try (FileWriter trace = new FileWriter(new File(dataDir, "files/phoenix-vignette-addon.log"))) {
            trace.write("handleLoadPackage " + android.os.Process.myPid() + "\n");
        }
        String unavailable;
        try { unavailable = AddonReadiness.check(dataDir); }
        catch (Exception failure) { unavailable = "readiness check failed: " + failure; }
        if (unavailable != null) {
            try (FileWriter trace = new FileWriter(new File(dataDir, "files/phoenix-vignette-addon.log"), true)) {
                trace.write("INACTIVE: " + unavailable + "; no Addon hooks registered\n");
            }
            android.util.Log.w("PhoenixVignette", unavailable);
            return;
        }
        loader = p.classLoader;
        appendAddonDex(loader);
        final String previewLibrary = modulePath + "!/lib/arm64-v8a/libMiFilterSDK.so";
        XposedHelpers.findAndHookMethod(dalvik.system.BaseDexClassLoader.class, "findLibrary", String.class,
            new XC_MethodHook() {
                protected void beforeHookedMethod(MethodHookParam h) throws Throwable {
                    if (h.thisObject != p.classLoader || !"MiFilterSDK".equals(h.args[0])) return;
                    // Keep CandySDK's original System.loadLibrary call and its camera-owned JNI loader.
                    h.setResult(previewLibrary);
                    try (FileWriter trace = new FileWriter(new File(dataDir, "files/phoenix-vignette-addon.log"), true)) {
                        trace.write("Preview library resolved to Addon: " + previewLibrary + "\n");
                    }
                }
            });
        XposedHelpers.findAndHookMethod(Application.class, "onCreate", new XC_MethodHook() {
            protected void afterHookedMethod(MethodHookParam h) throws Throwable {
                app = (Context) h.thisObject; loader = p.classLoader;
                android.util.Log.i("PhoenixVignette", "Camera Application.onCreate reached");
                ui = new Handler(Looper.getMainLooper());
                prefs = app.getSharedPreferences("phoenix_vignette", 0);
                try {
                    install();
                } catch (Throwable failure) {
                    try (PrintWriter trace = new PrintWriter(new FileWriter(new File(app.getFilesDir(), "phoenix-vignette-addon.log"), true))) {
                        failure.printStackTrace(trace);
                    }
                    throw failure;
                }
                android.util.Log.i("PhoenixVignette", "MIUIX settings hooks installed");
                try (FileWriter trace = new FileWriter(new File(app.getFilesDir(), "phoenix-vignette-addon.log"), true)) {
                    trace.write("MIUIX settings hooks installed\n");
                }
                XposedBridge.log("PhoenixVignette: MIUIX settings hooks installed");
            }
        });
    }
    static Object call(Object o, String method, Object... args) { return XposedHelpers.callMethod(o, method, args); }
    static Object field(Object o, String name) { return XposedHelpers.getObjectField(o, name); }
    static Context ctx(Object f) { return (Context) call(f, "requireContext"); }
    static File dir() { return new File(app.getFilesDir(), "phoenix-vignette"); }
    static int strength() { Adjustment d=desired; return d == null ? prefs.getInt("strength", 100) : d.strength; }
    static boolean protect() { Adjustment d=desired; return d == null ? prefs.getBoolean("protect", true) : d.protect; }
    static int range() { Adjustment d=desired; return d == null ? prefs.getInt("range", 100) : d.range; }
    static boolean shape() { Adjustment d=desired; return d == null ? prefs.getBoolean("shape", true) : d.shape; }
    static boolean experimental() { return prefs.getBoolean("enabled", false); }
    static String fileName() { return prefs.getString("name", ""); }
    static void log(Throwable e) { android.util.Log.e("PhoenixVignette", "operation failed", e); }
    static void message(Object f, String text) { Toast.makeText(ctx(f), text, Toast.LENGTH_LONG).show(); }

    static void install() throws Throwable {
        for (String name : new String[]{MAIN, EXP}) {
            Class<?> type = XposedHelpers.findClass(name, loader);
            XposedHelpers.findAndHookMethod(type, "getFragmentTitle", new XC_MethodHook() {
                protected void beforeHookedMethod(MethodHookParam h) {
                    String key = MAIN.equals(h.thisObject.getClass().getName()) ? "phoenix_vignette_title" : "phoenix_vignette_experimental_title";
                    int id = app.getResources().getIdentifier(key, "string", "com.android.camera");
                    if (id == 0) throw new IllegalStateException("Missing vignette title");
                    h.setResult(id);
                }
            });
            XposedHelpers.findAndHookMethod(type, "addCurrentPreferences", new XC_MethodHook() {
                protected void afterHookedMethod(MethodHookParam h) { populate(h.thisObject); }
            });
            XposedHelpers.findAndHookMethod(type, "onActivityResult", int.class, int.class, Intent.class, new XC_MethodHook() {
                protected void afterHookedMethod(MethodHookParam h) {
                    if ((Integer)h.args[0] == PICK && (Integer)h.args[1] == Activity.RESULT_OK && h.args[2] != null)
                        importFile(h.thisObject, ((Intent)h.args[2]).getData());
                }
            });
        }
        XposedHelpers.findAndHookMethod("com.android.camera.fragment.settings.b", loader, "initializeActivity", new XC_MethodHook() {
            protected void afterHookedMethod(MethodHookParam h) {
                if (isPage(h.thisObject)) ((Activity)call(h.thisObject, "requireActivity")).setTitle(title(h.thisObject));
            }
        });
        XposedHelpers.findAndHookMethod("com.android.camera.fragment.settings.CameraAdvancePreferenceFragment", loader,
            "registerPreferenceListener", new XC_MethodHook(10000) {
                protected void afterHookedMethod(MethodHookParam h) {
                    inject(h.thisObject);
                }
            });
        XposedHelpers.findAndHookMethod("miuix.preference.BasePreference", loader, "G",
            XposedHelpers.findClass("androidx.preference.l", loader), new XC_MethodHook() {
                protected void afterHookedMethod(MethodHookParam h) { bind(h.thisObject, h.args[0]); }
            });
        XposedHelpers.findAndHookMethod("miuix.preference.CheckBoxPreference", loader, "G",
            XposedHelpers.findClass("androidx.preference.l", loader), new XC_MethodHook() {
                protected void afterHookedMethod(MethodHookParam h) { bind(h.thisObject, h.args[0]); }
            });
    }
    static boolean isPage(Object f) { return MAIN.equals(f.getClass().getName()) || EXP.equals(f.getClass().getName()); }
    static String title(Object f) { return EXP.equals(f.getClass().getName()) ? "实验性" : "徕卡经典暗角着色器"; }
    static Object pref(Context c, String key, String label, String summary) {
        Object p = XposedHelpers.newInstance(XposedHelpers.findClass("miuix.preference.BasePreference", loader), c, null);
        call(p, "a0", key); call(p, "e0", label); call(p, "c0", summary);
        XposedHelpers.setBooleanField(p, "t", false);
        return p;
    }
    static void click(Object p, final Runnable action) {
        Class<?> listener = XposedHelpers.findClass("androidx.preference.Preference$d", loader);
        XposedHelpers.setObjectField(p, "f", Proxy.newProxyInstance(loader, new Class[]{listener}, (proxy, method, args) -> {
            if (method.getName().equals("onPreferenceClick")) { action.run(); return true; }
            if (method.getName().equals("hashCode")) return System.identityHashCode(proxy);
            if (method.getName().equals("equals")) return proxy == args[0];
            return "VignettePreferenceListener";
        }));
    }
    static void navigate(Object f, String name) {
        String host = EXP.equals(name) ? "com.android.camera.fragment.settings.VignetteExperimentalActivity" : "com.android.camera.fragment.settings.PreferenceExtraActivity";
        call(f, "goToActivity", XposedHelpers.findClass(host, loader), name);
    }
    static void inject(Object f) {
        try {
            Object screen = field(f, "mPreferenceGroup");
            Object cat = call(screen, "k0", "category_prometheus_classic_controls");
            if (cat == null) throw new IllegalStateException("Classic controls category missing");
            if (call(screen, "k0", ENTRY) != null) return;
            Object entry = pref(ctx(f), ENTRY, "徕卡经典暗角着色器", "");
            click(entry, () -> navigate(f, MAIN));
            ArrayList<?> children = new ArrayList<Object>((ArrayList<?>)field(cat, "f0"));
            for (Object p : children) call(cat, "n0", p);
            int order = 0; boolean inserted = false;
            for (Object p : children) {
                XposedHelpers.setIntField(p, "g", order++); call(cat, "j0", p);
                if ("pref_prometheus_classic_style".equals(field(p, "m"))) {
                    XposedHelpers.setIntField(entry, "g", order++); call(cat, "j0", entry); inserted = true;
                }
            }
            if (!inserted) throw new IllegalStateException("Classic style anchor missing");
            android.util.Log.i("PhoenixVignette", "entry inserted below classic style");
        } catch (Throwable e) { log(e); }
    }
    static Object category(Object f, Object screen, String key) {
        Object cat = XposedHelpers.newInstance(XposedHelpers.findClass("androidx.preference.PreferenceCategory", loader), ctx(f), null);
        call(cat, "a0", key); call(screen, "j0", cat); return cat;
    }
    static Object add(Object f, Object group, String key, String label, String summary) {
        Object p = pref(ctx(f), key, label, summary); owners.put(p, f); call(group, "j0", p); return p;
    }
    static Object toggle(Object f, Object group, String key, String label, String summary, boolean checked) {
        Object p = XposedHelpers.newInstance(XposedHelpers.findClass("miuix.preference.CheckBoxPreference", loader), ctx(f), null);
        call(p,"a0",key); call(p,"e0",label); call(p,"c0",summary);
        XposedHelpers.setBooleanField(p,"t",false);
        XposedHelpers.setIntField(p,"V",res(ctx(f),"phoenix_vignette_switch"));
        call(p,"setChecked",checked);
        Class<?> listener = XposedHelpers.findClass("androidx.preference.Preference$c",loader);
        XposedHelpers.setObjectField(p,"e",Proxy.newProxyInstance(loader,new Class[]{listener},(proxy,method,args) -> {
            if (method.getName().equals("onPreferenceChange")) {
                boolean value=Boolean.TRUE.equals(args[1]);
                apply(f,strength(),key.equals(PROTECT) ? value : protect(),range(),
                    key.equals(SHAPE) ? value : shape(),key.equals(ENABLE) ? value : experimental(),null);
                return true;
            }
            if (method.getName().equals("hashCode")) return System.identityHashCode(proxy);
            if (method.getName().equals("equals")) return proxy == args[0];
            return "VignetteChangeListener";
        }));
        owners.put(p,f); call(group,"j0",p); return p;
    }
    static int res(Context c, String name) {
        int id = c.getResources().getIdentifier(name, "layout", "com.android.camera");
        if (id == 0) throw new IllegalStateException("Missing MIUIX layout " + name); return id;
    }
    static void populate(Object f) {
        fragments.add(f);
        Object screen = field(f, "mPreferenceGroup");
        Object first = category(f, screen, "phoenix_vignette_controls");
        if (MAIN.equals(f.getClass().getName())) {
            Object slider = add(f, first, STRENGTH, "暗角强度", strength()+"%");
            XposedHelpers.setIntField(slider, "U", res(ctx(f), "phoenix_vignette_strength"));
            toggle(f, first, PROTECT, "高光保护", "关闭高光保护以实现更符合物理的效果", protect());
            Object geometry = category(f, screen, "phoenix_vignette_geometry");
            call(geometry,"e0","暗角形态调节");
            Object radius = add(f, geometry, RANGE, "暗角范围", range()+"%");
            XposedHelpers.setIntField(radius,"U",res(ctx(f),"phoenix_vignette_strength"));
            toggle(f, geometry, SHAPE, "暗角形状调整", "原生状态为开启，关闭更符合物理", shape());
            Object second = category(f, screen, "phoenix_vignette_experimental");
            Object link = add(f, second, "phoenix_vignette_experimental_entry", "实验性", "导入自定义 GLSL 着色器");
            click(link, () -> navigate(f, EXP));
        } else {
            toggle(f, first, ENABLE, "启用自定义着色器", "", experimental());
            Object imp = add(f, first, IMPORT, "导入 GLSL 文件", "UTF-8 函数体，最大 16 KiB");
            click(imp, () -> {
                Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT).setType("*/*").addCategory(Intent.CATEGORY_OPENABLE);
                call(f, "startActivityForResult", intent, PICK);
            });
            add(f, first, "phoenix_vignette_file", "当前文件", fileName().isEmpty() ? "未导入" : fileName());
            Object del = add(f, first, DELETE, "删除", "");
            click(del, () -> apply(f, strength(), protect(), range(), shape(), false, () -> {
                Files.delete(new File(dir(), "custom.glsl").toPath());
                if (!prefs.edit().remove("name").commit()) throw new IOException("Cannot save file state");
            }));
        }
        refresh();
    }
    static void refresh() {
        for (Object f : new ArrayList<Object>(fragments)) {
            Object screen = field(f, "mPreferenceGroup");
            if (screen == null) continue;
            for (String key : new String[]{STRENGTH, PROTECT, RANGE, SHAPE, ENABLE, IMPORT, DELETE, "phoenix_vignette_file"}) {
                Object p = call(screen, "k0", key); if (p == null) continue;
                boolean enabled = !busy;
                if (normalControl(key)) enabled &= !experimental();
                if (key.equals(ENABLE) || key.equals(DELETE)) enabled &= !fileName().isEmpty();
                call(p, "Y", enabled);
                if (key.equals(STRENGTH) || key.equals(RANGE)) {
                    if (tracking) continue;
                    call(p, "c0", (key.equals(STRENGTH) ? strength() : range())+"%");
                }
                if (key.equals(PROTECT) || key.equals(ENABLE)) call(p,"setChecked",key.equals(PROTECT) ? protect() : experimental());
                if (key.equals(SHAPE)) call(p,"setChecked",shape());
                if (key.equals("phoenix_vignette_file")) call(p, "c0", fileName().isEmpty() ? "未导入" : fileName());
                call(p, "B");
            }
        }
    }
    static boolean normalControl(String key) {
        return key.equals(STRENGTH) || key.equals(PROTECT) || key.equals(RANGE) || key.equals(SHAPE);
    }
    static void bind(Object p, Object holder) {
        Object f = owners.get(p); if (f == null) return;
        String key = (String)field(p, "m"); View root = (View)field(holder, "itemView");
        boolean enabled = !busy && (!normalControl(key) || !experimental());
        if (key.equals(STRENGTH) || key.equals(RANGE)) {
            final boolean radius=key.equals(RANGE);
            SeekBar bar = root.findViewById(android.R.id.progress);
            bar.setOnSeekBarChangeListener(null);
            bar.setMax(radius ? RANGE_MAX-RANGE_MIN : 600);
            bar.setProgress(radius ? range()-RANGE_MIN : toPosition(strength()));
            bar.setContentDescription(radius ? "暗角范围" : "暗角强度");
            bar.setEnabled(enabled);
            final TextView value = root.findViewById(android.R.id.summary);
            value.setText((radius ? range() : strength())+"%");
            bar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
                public void onProgressChanged(SeekBar s, int v, boolean user) {
                    int percent=radius ? v+RANGE_MIN : toStrength(v); value.setText(percent+"%");
                    if (user) apply(f,radius ? strength() : percent,protect(),radius ? percent : range(),shape(),false,null);
                }
                public void onStartTrackingTouch(SeekBar s) { tracking=true; }
                public void onStopTrackingTouch(SeekBar s) { tracking=false; }
            });
        } else if (key.equals(PROTECT) || key.equals(ENABLE) || key.equals(SHAPE)) {
            CompoundButton sw = root.findViewById(android.R.id.checkbox);
            sw.setContentDescription(key.equals(PROTECT) ? "高光保护" : key.equals(SHAPE) ? "暗角形状调整" : "启用自定义着色器");
            sw.setEnabled(enabled && (!key.equals(ENABLE) || !fileName().isEmpty()));
        }
    }
    interface Work { void run() throws Exception; }
    // Equal thirds: 0-100, 100-200, 200-400. Half-percent positions in the first
    // two thirds preserve integer percentage steps throughout the last third.
    static int toStrength(int position) { return position <= 400 ? Math.round(position/2f) : position-200; }
    static int toPosition(int percent) { return percent <= 200 ? percent*2 : percent+200; }
    static void adjust(Object f,int value,boolean high,int radius,boolean shaped) {
        if (busy) return;
        final Adjustment next=new Adjustment(f,value,high,radius,shaped); desired=next;
        io.execute(() -> {
            if (desired != next) return;
            long started=SystemClock.elapsedRealtime(); String error=null;
            try {
                request("apply",formula(value,high,radius,shaped));
                save(value,high,radius,shaped,false);
                android.util.Log.i("PhoenixVignette","applied strength="+value+" protect="+high+" range="+radius+" shape="+shaped+" latencyMs="+(SystemClock.elapsedRealtime()-started));
            } catch(Exception e) {log(e);error=e.getMessage();}
            final String failure=error;
            ui.post(() -> {
                if (desired==next) { desired=null; if(!tracking) refresh(); }
                if(failure!=null) message(f,"未应用："+failure);
            });
        });
    }
    static void operation(Object f, Work work, String success) {
        if (busy) return; busy = true; refresh();
        io.execute(() -> {
            String error = null;
            try { work.run(); } catch (Exception e) { log(e); error = e.getMessage(); }
            final String failure = error;
            ui.post(() -> { busy = false; refresh(); message(f, failure == null ? success : "未应用：" + failure); });
        });
    }
    static void save(int value, boolean high, int radius, boolean shaped, boolean custom) throws IOException {
        if (!prefs.edit().putInt("strength",value).putBoolean("protect",high).putInt("range",radius)
            .putBoolean("shape",shaped).putBoolean("enabled",custom).commit()) throw new IOException("Cannot save settings");
    }
    static void apply(Object f, int value, boolean high, int radius, boolean shaped, boolean custom, Work extra) {
        if (!custom && extra==null && !experimental()) { adjust(f,value,high,radius,shaped); return; }
        operation(f, () -> {
            String body = custom ? new String(Files.readAllBytes(new File(dir(), "custom.glsl").toPath()), StandardCharsets.UTF_8) : formula(value, high, radius, shaped);
            request("apply", body);
            save(value,high,radius,shaped,custom);
            if (extra != null) extra.run();
            android.util.Log.i("PhoenixVignette", "applied strength="+value+" protect="+high+" range="+radius+" shape="+shaped+" custom="+custom);
        }, "已应用");
    }
    static void importFile(Object f, Uri uri) {
        operation(f, () -> {
            String name;
            try (Cursor cursor = app.getContentResolver().query(uri, new String[]{OpenableColumns.DISPLAY_NAME}, null, null, null)) {
                if (cursor == null || !cursor.moveToFirst()) throw new IOException("无法读取文件名");
                name = cursor.getString(0);
            }
            if (!name.toLowerCase(Locale.ROOT).endsWith(".glsl")) throw new IOException("请选择 .glsl 文件");
            ByteArrayOutputStream bytes = new ByteArrayOutputStream();
            try (InputStream in = app.getContentResolver().openInputStream(uri)) {
                if (in == null) throw new IOException("无法读取文件");
                byte[] buffer = new byte[4096]; int count;
                while ((count = in.read(buffer)) != -1) { bytes.write(buffer, 0, count); if (bytes.size() > 16384) throw new IOException("文件超过 16 KiB"); }
            }
            String body = StandardCharsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT).decode(java.nio.ByteBuffer.wrap(bytes.toByteArray())).toString();
            if (body.startsWith("\uFEFF")) body = body.substring(1);
            validate(body);
            // Replacing an enabled file first restores the normal controls; import never implicitly enables it.
            if (experimental()) request("apply", formula(strength(), protect(), range(), shape()));
            atomic(new File(dir(), "custom.glsl"), body);
            if (!prefs.edit().putString("name", name).putBoolean("enabled", false).commit()) throw new IOException("Cannot save imported file");
            android.util.Log.i("PhoenixVignette", "GLSL import compiled and saved: "+name);
        }, "已导入，可开启自定义着色器");
    }
    static String formula(int strength, boolean protect, int range, boolean shape) {
        if (strength == 0 || range == 0) return "return color;\n";
        String mask = (shape ? "uv.x = (uv.x - 0.5) * 0.75 + 0.5;\n" : "")
            + "float d = distance(uv, vec2(0.5));\n"
            + (range == 100 ? "" : "d *= "+String.format(Locale.ROOT,"%.2f",range/100.0)+";\n")
            + "float m = smoothstep(PREFIX(SmoothStartValue), PREFIX(Falloff) * PREFIX(SmoothEndValue), d * darkStrength);\n";
        String gain = protect ? "float y = dot(color.rgb, vec3(0.2125, 0.7154, 0.0721));\nfloat h = 1.0 / pow(100.0, 1.0-y);\nfloat gain = (1.0-h)*m+h;\n" : "float gain = m;\n";
        return mask+gain+"return color * pow(max(gain, 0.0), "+String.format(Locale.ROOT, "%.2f", strength/100.0)+");\n";
    }
    static void atomic(File target, String text) throws IOException {
        File temp = new File(target.getParentFile(), target.getName()+".tmp");
        try (FileOutputStream out = new FileOutputStream(temp)) { out.write(text.getBytes(StandardCharsets.UTF_8)); out.getFD().sync(); }
        Files.move(temp.toPath(), target.toPath(), StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
    }
    static void request(String action, String body) throws Exception {
        String token = Long.toString(System.nanoTime());
        if (body != null) atomic(new File(dir(), "request.glsl"), body);
        atomic(new File(dir(), "request"), token+" "+action+"\n");
        long end = SystemClock.elapsedRealtime()+8000;
        File ack = new File(dir(), "ack");
        while (SystemClock.elapsedRealtime() < end) {
            if (ack.isFile()) {
                String result = new String(Files.readAllBytes(ack.toPath()), StandardCharsets.UTF_8).trim();
                if (result.startsWith(token+" ")) {
                    if (!result.equals(token+" OK")) throw new IOException(result.substring(token.length()+1));
                    return;
                }
            }
            Thread.sleep(50);
        }
        throw new IOException("模块未响应，请检查 Phoenix 模块是否启用");
    }
    static String asset(String name) throws IOException {
        try (InputStream in = app.getAssets().open(name); ByteArrayOutputStream out = new ByteArrayOutputStream()) {
            byte[] b = new byte[4096]; int n; while ((n = in.read(b)) != -1) out.write(b,0,n);
            return new String(out.toByteArray(), StandardCharsets.UTF_8);
        }
    }
    static void validate(String body) throws Exception {
        if (body.isEmpty() || body.indexOf('\0') >= 0 || body.getBytes(StandardCharsets.UTF_8).length > 16384) throw new IOException("GLSL 函数体为空或格式无效");
        String source = asset("phoenix/vignette-template.glsl").replace("/*PHOENIX_BODY*/", body);
        EGLDisplay display = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY);
        EGLContext context = EGL14.EGL_NO_CONTEXT; EGLSurface surface = EGL14.EGL_NO_SURFACE;
        int[] version = new int[2];
        if (!EGL14.eglInitialize(display, version,0,version,1)) throw new IOException("无法初始化 GLES");
        int vs = 0, fs = 0, program = 0;
        try {
            EGLConfig[] config = new EGLConfig[1]; int[] count = new int[1];
            if (!EGL14.eglChooseConfig(display,new int[]{EGL14.EGL_SURFACE_TYPE,EGL14.EGL_PBUFFER_BIT,EGL14.EGL_RENDERABLE_TYPE,EGL14.EGL_OPENGL_ES2_BIT,EGL14.EGL_NONE},0,config,0,1,count,0) || count[0]==0) throw new IOException("无法选择 GLES 配置");
            context = EGL14.eglCreateContext(display,config[0],EGL14.EGL_NO_CONTEXT,new int[]{EGL14.EGL_CONTEXT_CLIENT_VERSION,2,EGL14.EGL_NONE},0);
            surface = EGL14.eglCreatePbufferSurface(display,config[0],new int[]{EGL14.EGL_WIDTH,1,EGL14.EGL_HEIGHT,1,EGL14.EGL_NONE},0);
            if (!EGL14.eglMakeCurrent(display,surface,surface,context)) throw new IOException("无法创建 GLES 上下文");
            fs = shader(GLES20.GL_FRAGMENT_SHADER, source);
            vs = shader(GLES20.GL_VERTEX_SHADER,"attribute vec4 position; varying vec2 tc; void main(){gl_Position=position;tc=position.xy;}");
            program = GLES20.glCreateProgram(); GLES20.glAttachShader(program,fs); GLES20.glAttachShader(program,vs); GLES20.glLinkProgram(program);
            int[] ok = new int[1]; GLES20.glGetProgramiv(program,GLES20.GL_LINK_STATUS,ok,0);
            if (ok[0]==0) throw new IOException("GLSL 链接失败："+GLES20.glGetProgramInfoLog(program));
        } finally {
            if(program!=0) GLES20.glDeleteProgram(program); if(fs!=0) GLES20.glDeleteShader(fs); if(vs!=0) GLES20.glDeleteShader(vs);
            EGL14.eglMakeCurrent(display,EGL14.EGL_NO_SURFACE,EGL14.EGL_NO_SURFACE,EGL14.EGL_NO_CONTEXT);
            if(surface!=EGL14.EGL_NO_SURFACE) EGL14.eglDestroySurface(display,surface);
            if(context!=EGL14.EGL_NO_CONTEXT) EGL14.eglDestroyContext(display,context);
            // The process also owns camera rendering contexts on this display; do not terminate it here.
            EGL14.eglReleaseThread();
        }
    }
    static int shader(int type, String source) throws IOException {
        int id = GLES20.glCreateShader(type); GLES20.glShaderSource(id,source); GLES20.glCompileShader(id);
        int[] ok = new int[1]; GLES20.glGetShaderiv(id,GLES20.GL_COMPILE_STATUS,ok,0);
        if(ok[0]==0) { String reason=GLES20.glGetShaderInfoLog(id); GLES20.glDeleteShader(id); throw new IOException("GLSL 编译失败："+reason); }
        return id;
    }
}
