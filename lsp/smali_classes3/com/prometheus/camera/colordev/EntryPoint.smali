.class public final Lcom/prometheus/camera/colordev/EntryPoint;
.super Ljava/lang/Object;
.source "EntryPoint.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/colordev/EntryPoint$HookInstaller;
    }
.end annotation


# static fields
.field private static final ASD_TAG:Ljava/lang/String; = "xiaomi.ai.asd.enabled"

.field private static final CAMERA:Ljava/lang/String; = "com.android.camera"

.field private static final CLASSIC_MODEL:Ljava/lang/String; = "selected_model"

.field private static final CLASSIC_PREFS:Ljava/lang/String; = "prometheus_classic_style"

.field private static final CLASSIC_PREVIEW_DIAGNOSTIC_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final CLASSIC_PUBLICATION_TASKS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final CV_EFFECT:Ljava/lang/String; = "CvEffect;SmoothStartValue=1.4;Falloff=1.0;SmoothEndValue=0.2;DarkStrength=1.0;@"

.field private static final DIAGNOSTIC_DISABLE:Z = false

.field private static final DISPLAY_IDS:[Ljava/lang/String;

.field private static final DISPLAY_LABELS:[Ljava/lang/String;

.field private static final EXTRA_IDS:[Ljava/lang/String;

.field private static final EXTRA_LABELS:[Ljava/lang/String;

.field private static final KEY_ALWAYS_SHUTTER_SOUND:Ljava/lang/String; = "prometheus_always_shutter_sound"

.field private static final KEY_CAMERA_SOUND:Ljava/lang/String; = "pref_camerasound_key"

.field private static final KEY_CLASSIC_STYLE:Ljava/lang/String; = "pref_prometheus_classic_style"

.field private static final KEY_XIAOMI_ASD:Ljava/lang/String; = "pref_prometheus_xiaomi_ai_asd"

.field private static final KEY_VIGNETTE:Ljava/lang/String; = "pref_prometheus_classic_vignette"

.field private static final KEY_WATERMARK:Ljava/lang/String; = "pref_camera_watermark_type_key"

.field private static final KEY_WATERMARK_DEVICE_NAME:Ljava/lang/String; = "pref_prometheus_watermark_device_name"

.field private static final PHOTO_MODULE:I = 0xa3

.field private static final PREFS:Ljava/lang/String; = "prometheus_color_development"

.field private static PREVIEW_EXECUTOR_PROBE_COUNT:I = 0x0

.field private static final RENDER_TAG:Ljava/lang/String; = "com.xiaomi.mivi2.render"

.field private static final SUPPRESSED_TOASTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile asdLogged:Z

.field private static volatile captureVignetteLogged:Z

.field private static volatile installed:Z

.field private static originalModelIds:Ljava/lang/reflect/Method;

.field private static originalModelLabels:Ljava/lang/reflect/Method;

.field private static volatile previewRefreshPending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 50
    const-string v0, "passthrough"

    const-string v1, "m9"

    const-string v2, "13u"

    const-string v3, "neutral"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->EXTRA_IDS:[Ljava/lang/String;

    .line 51
    const-string v0, "\u900f\u4f20"

    const-string v1, "M9"

    const-string v2, "\u5c0f\u7c73 13 Ultra"

    const-string v3, "\u4e2d\u6027"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->EXTRA_LABELS:[Ljava/lang/String;

    .line 52
    const-string v8, "17u"

    const-string v9, "blackwhite"

    const-string v1, "passthrough"

    const-string v2, "m9"

    const-string v3, "neutral"

    const-string v4, "12su"

    const-string v5, "fuxi"

    const-string v6, "13u"

    const-string v7, "14u"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->DISPLAY_IDS:[Ljava/lang/String;

    .line 55
    const-string v8, "\u5c0f\u7c73 17 Ultra"

    const-string v9, "\u9ed1\u767d\uff08\u6d4b\u8bd5\uff09"

    const-string v1, "\u900f\u4f20"

    const-string v2, "M9"

    const-string v3, "\u4e2d\u6027"

    const-string v4, "\u5c0f\u7c73 12S Ultra"

    const-string v5, "\u5c0f\u7c73 13"

    const-string v6, "\u5c0f\u7c73 13 Ultra"

    const-string v7, "\u5c0f\u7c73 14 Ultra"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->DISPLAY_LABELS:[Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->CLASSIC_PREVIEW_DIAGNOSTIC_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->SUPPRESSED_TOASTS:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->CLASSIC_PUBLICATION_TASKS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->hookClassicStyleStore(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->hookSettings(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->EXTRA_IDS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->EXTRA_LABELS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->baseModelIds()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->baseModelLabels()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/Set;
    .locals 1

    .line 32
    sget-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->SUPPRESSED_TOASTS:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1508()I
    .locals 2

    .line 32
    sget v0, Lcom/prometheus/camera/colordev/EntryPoint;->PREVIEW_EXECUTOR_PROBE_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/prometheus/camera/colordev/EntryPoint;->PREVIEW_EXECUTOR_PROBE_COUNT:I

    return v0
.end method

.method static synthetic access$1600(Ljava/lang/ClassLoader;)Landroid/content/Context;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->applicationContext(Ljava/lang/ClassLoader;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/prometheus/camera/colordev/EntryPoint;->previewRefreshPending:Z

    return v0
.end method

.method static synthetic access$1802(Z)Z
    .locals 0

    .line 32
    sput-boolean p0, Lcom/prometheus/camera/colordev/EntryPoint;->previewRefreshPending:Z

    return p0
.end method

.method static synthetic access$1900(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/prometheus/camera/colordev/EntryPoint;->findPreference(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 32
    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->hookStyleToast()V

    return-void
.end method

.method static synthetic access$2000(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 32
    invoke-static/range {p0 .. p7}, Lcom/prometheus/camera/colordev/EntryPoint;->addSwitch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2100(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/prometheus/camera/colordev/EntryPoint;->installPhotoWatermarkDevicePreference(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/prometheus/camera/colordev/EntryPoint;->organizeAdvancedSettings(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Ljava/lang/ClassLoader;Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/prometheus/camera/colordev/EntryPoint;->installCommonShutterPreference(Ljava/lang/ClassLoader;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2400(Ljava/lang/Object;)Z
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->isClassicStyleFragment(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->setVisibleTitle(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->preferenceKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Ljava/lang/ClassLoader;Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-static {p0, p1}, Lcom/prometheus/camera/colordev/EntryPoint;->selectedClassicModel(Ljava/lang/ClassLoader;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->classicScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900()Ljava/util/Map;
    .locals 1

    .line 32
    sget-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->CLASSIC_PUBLICATION_TASKS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->hookClassicPreviewNrv(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-static {p0, p1}, Lcom/prometheus/camera/colordev/EntryPoint;->openLspAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 32
    sget-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->CLASSIC_PREVIEW_DIAGNOSTIC_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3200(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->invalidateClassicPreview(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$3300(Ljava/lang/ClassLoader;)I
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->currentModule(Ljava/lang/ClassLoader;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3400()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/prometheus/camera/colordev/EntryPoint;->asdLogged:Z

    return v0
.end method

.method static synthetic access$3402(Z)Z
    .locals 0

    .line 32
    sput-boolean p0, Lcom/prometheus/camera/colordev/EntryPoint;->asdLogged:Z

    return p0
.end method

.method static synthetic access$3500([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->withoutClassicVignette([B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/prometheus/camera/colordev/EntryPoint;->captureVignetteLogged:Z

    return v0
.end method

.method static synthetic access$3602(Z)Z
    .locals 0

    .line 32
    sput-boolean p0, Lcom/prometheus/camera/colordev/EntryPoint;->captureVignetteLogged:Z

    return p0
.end method

.method static synthetic access$400(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->hookClassicPreviewRefresh(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->hookRequests(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->DISPLAY_IDS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->DISPLAY_LABELS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->supported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/prometheus/camera/colordev/EntryPoint;->refreshClassicStyle(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    return-void
.end method

.method private static addSwitch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 790
    invoke-static {p0, p4}, Lcom/prometheus/camera/colordev/EntryPoint;->findPreference(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 791
    filled-new-array {p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 792
    const-string p2, "a0"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string p2, "e0"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p5

    invoke-static {p0, p2, p5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string p2, "c0"

    filled-new-array {p6}, [Ljava/lang/Object;

    move-result-object p5

    invoke-static {p0, p2, p5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string p2, "t"

    const/4 p5, 0x0

    invoke-static {p0, p2, p5}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 797
    invoke-static {p3}, Lcom/prometheus/camera/colordev/EntryPoint;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2, p4, p7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 796
    const-string p3, "setChecked"

    invoke-static {p0, p3, p2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string p2, "j0"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private static applicationContext(Ljava/lang/ClassLoader;)Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 829
    const-string v0, "com.xiaomi.camera.basic.Global"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 830
    const-string v0, "getContext"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private static applyClassicVignetteState(Ljava/lang/ClassLoader;)V
    .locals 4

    const-string v0, "PrometheusColorDev: classic vignette state enabled="

    .line 222
    :try_start_0
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->applicationContext(Ljava/lang/ClassLoader;)Landroid/content/Context;

    move-result-object v1

    .line 223
    invoke-static {v1}, Lcom/prometheus/camera/colordev/EntryPoint;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_prometheus_classic_vignette"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 224
    const-string v2, "com.xiaomi.camera.effect.EffectController"

    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 226
    const-string v2, "s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 229
    const-string v0, "PrometheusColorDev: failed to apply classic vignette state"

    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 230
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static baseModelIds()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 810
    sget-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->originalModelIds:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static baseModelLabels()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 814
    sget-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->originalModelLabels:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static category(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 455
    invoke-static {p1, p2}, Lcom/prometheus/camera/colordev/EntryPoint;->findPreference(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "addCategory"

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 458
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "j0"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    .line 459
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u65e0\u6cd5\u6302\u8f7d\u5b9e\u9a8c\u5ba4\u8bbe\u7f6e\u5361\u7247\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static classicScene(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 765
    const-string v1, "lut_cvstyle_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/16 v1, 0xc

    .line 766
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 767
    const-string v1, "bixi_"

    const-string v2, "zizhan_"

    const-string v3, "fuxi_"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    .line 768
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 769
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 773
    :cond_2
    :goto_1
    const-string v7, "plants"

    const-string v8, "sunrise_sunset"

    const-string v3, "common"

    const-string v4, "food"

    const-string v5, "human"

    const-string v6, "night"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    aget-object v3, v1, v2

    .line 776
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v0
.end method

.method private static concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 818
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 819
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static currentModule(Ljava/lang/ClassLoader;)I
    .locals 1

    .line 834
    const-string v0, "com.android.camera.module.Y"

    .line 835
    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "a"

    .line 834
    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static findPreference(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 839
    const-string v0, "k0"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static hookClassicPreviewNrv(Ljava/lang/ClassLoader;)V
    .locals 5

    .line 593
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/lang/String;

    new-instance v4, Lcom/prometheus/camera/colordev/EntryPoint$23;

    invoke-direct {v4}, Lcom/prometheus/camera/colordev/EntryPoint$23;-><init>()V

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.xiaomi.camera.mivi.filter.a"

    invoke-static {v1, p0, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 609
    const-class v0, Landroid/content/Context;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v4, Lcom/prometheus/camera/colordev/EntryPoint$24;

    invoke-direct {v4, p0}, Lcom/prometheus/camera/colordev/EntryPoint$24;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.xiaomi.utils.OpenGl3dUtils"

    const-string v2, "a"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookClassicPreviewRefresh(Ljava/lang/ClassLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 659
    const-string v0, "ru.k"

    const/4 v1, 0x0

    .line 661
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/prometheus/camera/colordev/EntryPoint$25;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/colordev/EntryPoint$25;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 659
    const-string v1, "com.xiaomi.camera.effect.EffectController"

    const-string v2, "h0"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookClassicStyleStore(Ljava/lang/ClassLoader;)V
    .locals 5

    .line 125
    const-string v0, "modelLabels"

    const-string v1, "modelIds"

    const-string v2, "com.prometheus.camera.filters.ClassicStyleStore"

    invoke-static {v2, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    .line 128
    :try_start_0
    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/prometheus/camera/colordev/EntryPoint;->originalModelIds:Ljava/lang/reflect/Method;

    .line 129
    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/prometheus/camera/colordev/EntryPoint;->originalModelLabels:Ljava/lang/reflect/Method;

    .line 130
    sget-object v3, Lcom/prometheus/camera/colordev/EntryPoint;->originalModelIds:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 131
    sget-object v3, Lcom/prometheus/camera/colordev/EntryPoint;->originalModelLabels:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    new-instance v3, Lcom/prometheus/camera/colordev/EntryPoint$7;

    invoke-direct {v3}, Lcom/prometheus/camera/colordev/EntryPoint$7;-><init>()V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 140
    new-instance v1, Lcom/prometheus/camera/colordev/EntryPoint$8;

    invoke-direct {v1}, Lcom/prometheus/camera/colordev/EntryPoint$8;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 145
    const-class v0, Landroid/content/Context;

    new-instance v1, Lcom/prometheus/camera/colordev/EntryPoint$9;

    invoke-direct {v1}, Lcom/prometheus/camera/colordev/EntryPoint$9;-><init>()V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "selectedModel"

    invoke-static {v2, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 155
    const-class v0, Landroid/content/Context;

    const-class v1, Ljava/lang/String;

    new-instance v3, Lcom/prometheus/camera/colordev/EntryPoint$10;

    invoke-direct {v3, p0}, Lcom/prometheus/camera/colordev/EntryPoint$10;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "selectModel"

    invoke-static {v2, v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 172
    const-class p0, Ljava/lang/String;

    new-instance v0, Lcom/prometheus/camera/colordev/EntryPoint$11;

    invoke-direct {v0}, Lcom/prometheus/camera/colordev/EntryPoint$11;-><init>()V

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "label"

    invoke-static {v2, v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void

    :catch_0
    move-exception p0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u5f95\u5361\u7ecf\u5178\u98ce\u683c\u63a5\u53e3\u4e0d\u5339\u914d"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static hookRequests(Ljava/lang/ClassLoader;)V
    .locals 4

    .line 685
    const-class v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    const-class v1, Landroid/hardware/camera2/CaptureRequest$Key;

    const-class v2, Ljava/lang/Object;

    new-instance v3, Lcom/prometheus/camera/colordev/EntryPoint$26;

    invoke-direct {v3, p0}, Lcom/prometheus/camera/colordev/EntryPoint$26;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "set"

    invoke-static {v0, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookSettings(Ljava/lang/ClassLoader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 316
    const-string v0, "androidx.preference.SwitchPreference"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 318
    const-string v2, "androidx.preference.Preference"

    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 320
    new-instance v2, Lcom/prometheus/camera/colordev/EntryPoint$15;

    invoke-direct {v2, v0}, Lcom/prometheus/camera/colordev/EntryPoint$15;-><init>(Ljava/lang/Class;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "com.android.camera.fragment.settings.CameraAdvancePreferenceFragment"

    const-string v3, "addAdvancePreferences"

    invoke-static {v2, p0, v3, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 336
    new-instance v0, Lcom/prometheus/camera/colordev/EntryPoint$16;

    invoke-direct {v0, v1}, Lcom/prometheus/camera/colordev/EntryPoint$16;-><init>(Ljava/lang/Class;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "com.android.camera.fragment.settings.CameraCapturePreferenceFragment"

    const-string v4, "addWatermarkPreference"

    invoke-static {v3, p0, v4, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 344
    new-instance v0, Lcom/prometheus/camera/colordev/EntryPoint$17;

    invoke-direct {v0}, Lcom/prometheus/camera/colordev/EntryPoint$17;-><init>()V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "registerPreferenceListener"

    invoke-static {v2, p0, v3, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 353
    new-instance v0, Lcom/prometheus/camera/colordev/EntryPoint$18;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/colordev/EntryPoint$18;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "com.android.camera.fragment.settings.CameraCommonPreferenceFragment"

    const-string v3, "addCustomizationPreferences"

    invoke-static {v2, p0, v3, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 360
    const-class v0, Landroid/os/Bundle;

    new-instance v2, Lcom/prometheus/camera/colordev/EntryPoint$19;

    invoke-direct {v2}, Lcom/prometheus/camera/colordev/EntryPoint$19;-><init>()V

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "com.android.camera.fragment.settings.a"

    const-string v3, "xq"

    invoke-static {v2, p0, v3, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 373
    new-instance v0, Lcom/prometheus/camera/colordev/EntryPoint$20;

    invoke-direct {v0}, Lcom/prometheus/camera/colordev/EntryPoint$20;-><init>()V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "com.android.camera.fragment.settings.b"

    const-string v3, "onResume"

    invoke-static {v2, p0, v3, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 382
    const-class v0, Ljava/lang/Object;

    new-instance v2, Lcom/prometheus/camera/colordev/EntryPoint$21;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/colordev/EntryPoint$21;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "com.android.camera.fragment.settings.CameraPreferenceFragment"

    const-string v3, "onPreferenceChange"

    invoke-static {v2, p0, v3, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 405
    new-instance v0, Lcom/prometheus/camera/colordev/EntryPoint$22;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/colordev/EntryPoint$22;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onPreferenceClick"

    invoke-static {v2, p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookStyleToast()V
    .locals 5

    .line 191
    const-class v0, Landroid/widget/Toast;

    const-class v1, Landroid/content/Context;

    const-class v2, Ljava/lang/CharSequence;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v4, Lcom/prometheus/camera/colordev/EntryPoint$12;

    invoke-direct {v4}, Lcom/prometheus/camera/colordev/EntryPoint$12;-><init>()V

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "makeText"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 201
    const-class v0, Landroid/widget/Toast;

    new-instance v1, Lcom/prometheus/camera/colordev/EntryPoint$13;

    invoke-direct {v1}, Lcom/prometheus/camera/colordev/EntryPoint$13;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "show"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hostBoolean(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Z
    .locals 2

    .line 566
    :try_start_0
    const-string v0, "g2.a"

    const/4 v1, 0x0

    .line 567
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "g"

    new-array v1, v1, [Ljava/lang/Object;

    .line 566
    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 568
    const-string v0, "h"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrometheusColorDev: cannot read host preference "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 571
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    return p2
.end method

.method private static installCommonShutterPreference(Ljava/lang/ClassLoader;Ljava/lang/Object;)V
    .locals 6

    .line 494
    const-string v0, "mPreferenceGroup"

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 495
    const-string v1, "prometheus_always_shutter_sound"

    invoke-static {v0, v1}, Lcom/prometheus/camera/colordev/EntryPoint;->findPreference(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    const-string v2, "category_customization"

    invoke-static {v0, v2}, Lcom/prometheus/camera/colordev/EntryPoint;->findPreference(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 501
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const v4, 0x7f140eab

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v0, v1, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 499
    const-string v4, "addCheckBoxPreference"

    invoke-static {p1, v4, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 502
    const-string v3, "\u59cb\u7ec8\u5f00\u542f\u5feb\u95e8\u58f0"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "e0"

    invoke-static {p1, v4, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v3, "\u65e0\u89c6\u7cfb\u7edf\u9759\u97f3\uff0c\u59cb\u7ec8\u64ad\u653e\u5feb\u95e8\u58f0"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "c0"

    invoke-static {p1, v4, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-static {p0, v1, v2}, Lcom/prometheus/camera/colordev/EntryPoint;->hostBoolean(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 505
    const-string v1, "setChecked"

    invoke-static {p1, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string p0, "pref_camerasound_key"

    invoke-static {v0, p1, p0}, Lcom/prometheus/camera/colordev/EntryPoint;->placeAfter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    const-string p0, "PrometheusColorDev: moved always-shutter below camera sound"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void

    .line 498
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u901a\u7528\u8bbe\u7f6e\u81ea\u5b9a\u4e49\u5361\u7247\u4e0d\u5b58\u5728"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method private static installPhotoWatermarkDevicePreference(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 513
    const-string v0, "mPreferenceGroup"

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 514
    const-string v1, "pref_prometheus_watermark_device_name"

    invoke-static {v0, v1}, Lcom/prometheus/camera/colordev/EntryPoint;->findPreference(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 516
    :cond_0
    const-string v2, "pref_camera_watermark_type_key"

    invoke-static {v0, v2}, Lcom/prometheus/camera/colordev/EntryPoint;->findPreference(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 518
    const-string v3, "Y"

    invoke-static {v0, v3}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 520
    const-string v3, "requireActivity"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1, v3, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    .line 521
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 522
    const-string v3, "a0"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v1, "\u6c34\u5370\u673a\u578b\u6587\u5b57"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "e0"

    invoke-static {p0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v1, "\u81ea\u5b9a\u4e49\u6c34\u5370\u4e2d\u663e\u793a\u7684\u673a\u578b\u6587\u5b57"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "c0"

    invoke-static {p0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v1, "t"

    invoke-static {p0, v1, v4}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 526
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "j0"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    const-string v1, "f"

    invoke-static {p0, v1, p1}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    invoke-static {v0, p0, v2}, Lcom/prometheus/camera/colordev/EntryPoint;->placeAfter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    const-string p0, "PrometheusColorDev: moved watermark device name below watermark"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void

    .line 527
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u52a0\u5165\u62cd\u7167\u9875\u6c34\u5370\u5361\u7247"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 519
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u62cd\u7167\u9875\u6c34\u5370\u5361\u7247\u4e0d\u5b58\u5728"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 517
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u62cd\u7167\u9875\u539f\u751f\u6c34\u5370\u8bbe\u7f6e\u4e0d\u5b58\u5728"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method private static installStep(Ljava/lang/String;Lcom/prometheus/camera/colordev/EntryPoint$HookInstaller;)V
    .locals 2

    const-string v0, "PrometheusColorDev: hook installed "

    .line 116
    :try_start_0
    invoke-interface {p1}, Lcom/prometheus/camera/colordev/EntryPoint$HookInstaller;->install()V

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrometheusColorDev: hook failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 120
    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static invalidateClassicMiviPublications(Ljava/lang/ClassLoader;)V
    .locals 10

    .line 236
    const-string v0, "lut_cvstyle_"

    const-string v1, "removeLutName"

    :try_start_0
    const-string v2, "com.xiaomi.camera.mivi.filter.MIVILutCache"

    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 238
    const-string v2, "getInstance"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 239
    const-string v4, "common"

    const-string v5, "food"

    const-string v6, "human"

    const-string v7, "night"

    const-string v8, "plants"

    const-string v9, "sunrise_sunset"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v2

    move v4, v3

    :goto_0
    const/4 v5, 0x6

    if-ge v4, v5, :cond_1

    aget-object v5, v2, v4

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v1, v6}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v6, "fuxi_"

    const-string v7, "bixi_"

    const-string v8, "zizhan_"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    move v7, v3

    :goto_1
    const/4 v8, 0x3

    if-ge v7, v8, :cond_0

    aget-object v8, v6, v7

    .line 244
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, v1, v8}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 248
    :cond_1
    const-string p0, "PrometheusColorDev: invalidated classic MIVI publications"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 250
    const-string v0, "PrometheusColorDev: failed to invalidate classic MIVI publications"

    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 251
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private static invalidateClassicPreview(Ljava/lang/ClassLoader;)V
    .locals 4

    .line 257
    const-string v0, "s"

    :try_start_0
    const-string v1, "com.xiaomi.camera.effect.EffectController"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 259
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 260
    const-string v3, "M"

    .line 261
    invoke-static {v1, v3}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 264
    const-string p0, "PrometheusColorDev: classic preview renderer not attached"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void

    .line 267
    :cond_1
    const-string v3, "tu.d"

    invoke-static {v3, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 268
    const-string v3, "o"

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 270
    new-instance v3, Lcom/prometheus/camera/colordev/EntryPoint$14;

    invoke-direct {v3, v1, v2, p0}, Lcom/prometheus/camera/colordev/EntryPoint$14;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 310
    const-string v0, "PrometheusColorDev: failed to schedule classic preview refresh"

    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 311
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static isClassicStyleFragment(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 578
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.prometheus.camera.filters.ClassicStylePreferenceFragment"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static movePreference(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 4

    .line 465
    invoke-static {p0, p2}, Lcom/prometheus/camera/colordev/EntryPoint;->findPreference(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 469
    const-string v0, "Y"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 471
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "n0"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    .line 472
    invoke-static {v0, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 471
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u65e0\u6cd5\u4ece\u539f\u5361\u7247\u79fb\u9664\u5b9e\u9a8c\u5ba4\u8bbe\u7f6e\u9879\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 476
    :cond_1
    :goto_0
    invoke-static {p0, p3}, Lcom/prometheus/camera/colordev/EntryPoint;->setOrder(Ljava/lang/Object;I)V

    if-eq v0, p1, :cond_3

    .line 477
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "j0"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 478
    invoke-static {p1, v0, p0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 477
    invoke-virtual {p3, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 479
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u65e0\u6cd5\u52a0\u5165\u76ee\u6807\u5361\u7247\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void

    .line 467
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u5b9e\u9a8c\u5ba4\u8bbe\u7f6e\u9879\u4e0d\u5b58\u5728\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static openLspAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 782
    const-string v0, "com.prometheus.camera.rev"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 784
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static organizeAdvancedSettings(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    .line 424
    const-string v10, "pref_prometheus_classic_vignette"

    invoke-static {p1, v10}, Lcom/prometheus/camera/colordev/EntryPoint;->removePreference(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "pref_prometheus_watermark_device_name"

    invoke-static {p1, v10}, Lcom/prometheus/camera/colordev/EntryPoint;->removePreference(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category_advance_setting"

    invoke-static {p1, v0}, Lcom/prometheus/camera/colordev/EntryPoint;->findPreference(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    const-string v1, "pref_prometheus_filter_management"

    const-string v2, "pref_prometheus_custom_lut"

    const-string v3, "pref_prometheus_classic_style"

    const-string v4, "pref_prometheus_xiaomi_ai_asd"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/4 v9, 0x4

    if-ge v8, v9, :cond_1

    aget-object v9, v6, v8

    .line 433
    invoke-static {p1, v9}, Lcom/prometheus/camera/colordev/EntryPoint;->findPreference(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 434
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5b9e\u9a8c\u5ba4\u8bbe\u7f6e\u9879\u9884\u68c0\u5931\u8d25\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 437
    :cond_1
    const-string v6, "category_prometheus_content_tools"

    invoke-static {p0, p1, v6}, Lcom/prometheus/camera/colordev/EntryPoint;->category(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 438
    const-string v8, "category_prometheus_classic_controls"

    invoke-static {p0, p1, v8}, Lcom/prometheus/camera/colordev/EntryPoint;->category(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 440
    invoke-static {v6, v7}, Lcom/prometheus/camera/colordev/EntryPoint;->setOrder(Ljava/lang/Object;I)V

    const/4 v8, 0x1

    .line 441
    invoke-static {p0, v8}, Lcom/prometheus/camera/colordev/EntryPoint;->setOrder(Ljava/lang/Object;I)V

    const/4 v9, 0x2

    .line 442
    invoke-static {v0, v9}, Lcom/prometheus/camera/colordev/EntryPoint;->setOrder(Ljava/lang/Object;I)V

    .line 444
    invoke-static {p1, v6, v1, v7}, Lcom/prometheus/camera/colordev/EntryPoint;->movePreference(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 445
    invoke-static {p1, v6, v2, v8}, Lcom/prometheus/camera/colordev/EntryPoint;->movePreference(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 447
    invoke-static {p1, p0, v3, v7}, Lcom/prometheus/camera/colordev/EntryPoint;->movePreference(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 448
    invoke-static {p1, p0, v4, v8}, Lcom/prometheus/camera/colordev/EntryPoint;->movePreference(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 451
    const-string p0, "PrometheusColorDev: organized laboratory preference cards"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void

    .line 426
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u5b9e\u9a8c\u5ba4\u8bbe\u7f6e\u539f\u751f\u5361\u7247\u4e0d\u5b58\u5728"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static placeAfter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "f0"

    .line 537
    invoke-static {p0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 538
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 539
    const-string v3, "n0"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "j0"

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v2, 0x1

    .line 545
    invoke-static {v3, v2}, Lcom/prometheus/camera/colordev/EntryPoint;->setOrder(Ljava/lang/Object;I)V

    .line 546
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v4, v6}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-static {v3}, Lcom/prometheus/camera/colordev/EntryPoint;->preferenceKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 548
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x2

    .line 549
    invoke-static {p1, v5}, Lcom/prometheus/camera/colordev/EntryPoint;->setOrder(Ljava/lang/Object;I)V

    .line 550
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v4, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 555
    invoke-static {p1, v2}, Lcom/prometheus/camera/colordev/EntryPoint;->setOrder(Ljava/lang/Object;I)V

    .line 556
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v4, p1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static preferenceKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 843
    const-string v0, "m"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 844
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 825
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "prometheus_color_development"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static prepublishClassicMivi()V
    .locals 6

    .line 672
    sget-object v0, Lcom/prometheus/camera/colordev/EntryPoint;->CLASSIC_PUBLICATION_TASKS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 674
    :try_start_0
    const-string v4, "run"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 677
    const-string v4, "PrometheusColorDev: failed to prepublish classic MIVI task"

    invoke-static {v4}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 678
    invoke-static {v3}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrometheusColorDev: prepublished classic MIVI tasks="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void
.end method

.method private static refreshClassicStyle(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 1

    .line 211
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->invalidateClassicMiviPublications(Ljava/lang/ClassLoader;)V

    .line 212
    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->prepublishClassicMivi()V

    .line 213
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->applyClassicVignetteState(Ljava/lang/ClassLoader;)V

    const/4 v0, 0x1

    .line 214
    sput-boolean v0, Lcom/prometheus/camera/colordev/EntryPoint;->previewRefreshPending:Z

    .line 215
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->invalidateClassicPreview(Ljava/lang/ClassLoader;)V

    .line 216
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "PrometheusColorDev: classic style refreshed model="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void
.end method

.method private static removeCvEffectSegment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 751
    const-string v0, "@CvEffect;"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    const-string v0, "DarkStrength=[-+0-9.eE]+"

    const-string v1, "DarkStrength=0.0"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static removePreference(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 484
    invoke-static {p0, p1}, Lcom/prometheus/camera/colordev/EntryPoint;->findPreference(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 486
    :cond_0
    const-string v0, "Y"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 487
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "n0"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 488
    invoke-static {v0, v2, p0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 487
    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 489
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u65e0\u6cd5\u79fb\u9664\u5b9e\u9a8c\u5ba4\u8bbe\u7f6e\u9879\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static selectedClassicModel(Ljava/lang/ClassLoader;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 758
    const-string v0, "com.prometheus.camera.filters.ClassicStyleStore"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 760
    const-class v0, Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "selectedModel"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 761
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static setOrder(Ljava/lang/Object;I)V
    .locals 1

    .line 561
    const-string v0, "g"

    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method

.method private static setVisibleTitle(Ljava/lang/Object;)V
    .locals 2

    .line 582
    const-string v0, "\u5f95\u5361\u7ecf\u5178\u98ce\u683c"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setTitle"

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string p0, "PrometheusColorDev: classic style visible title updated"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void
.end method

.method private static stripClassicVignetteJson(Lorg/json/JSONObject;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 734
    const-string v0, "lutNames"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v3, v2

    move v4, v3

    .line 737
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 738
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 739
    const-string v6, "lut_cvstyle_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :cond_2
    if-nez v4, :cond_3

    return v2

    .line 743
    :cond_3
    const-string v0, ""

    const-string v3, "filterScript"

    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-static {v0}, Lcom/prometheus/camera/colordev/EntryPoint;->removeCvEffectSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 745
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 746
    :cond_4
    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return v1
.end method

.method private static supported(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 803
    :cond_0
    sget-object v1, Lcom/prometheus/camera/colordev/EntryPoint;->EXTRA_IDS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 804
    :cond_2
    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->baseModelIds()[Ljava/lang/String;

    move-result-object v1

    .line 805
    array-length v2, v1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v5, v1, v3

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method private static withoutClassicVignette([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 724
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 725
    const-string p0, "\\u0000"

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 726
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 727
    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 728
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 729
    invoke-static {v0}, Lcom/prometheus/camera/colordev/EntryPoint;->stripClassicVignetteJson(Lorg/json/JSONObject;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    .line 730
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 81
    const-string v0, "com.android.camera"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.android.camera"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    const-class v0, Lcom/prometheus/camera/colordev/EntryPoint;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-boolean v1, Lcom/prometheus/camera/colordev/EntryPoint;->installed:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 88
    :cond_1
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 89
    const-string v1, "classic-store"

    new-instance v2, Lcom/prometheus/camera/colordev/EntryPoint$1;

    invoke-direct {v2, p0, p1}, Lcom/prometheus/camera/colordev/EntryPoint$1;-><init>(Lcom/prometheus/camera/colordev/EntryPoint;Ljava/lang/ClassLoader;)V

    invoke-static {v1, v2}, Lcom/prometheus/camera/colordev/EntryPoint;->installStep(Ljava/lang/String;Lcom/prometheus/camera/colordev/EntryPoint$HookInstaller;)V

    .line 92
    const-string v1, "settings"

    new-instance v2, Lcom/prometheus/camera/colordev/EntryPoint$2;

    invoke-direct {v2, p0, p1}, Lcom/prometheus/camera/colordev/EntryPoint$2;-><init>(Lcom/prometheus/camera/colordev/EntryPoint;Ljava/lang/ClassLoader;)V

    invoke-static {v1, v2}, Lcom/prometheus/camera/colordev/EntryPoint;->installStep(Ljava/lang/String;Lcom/prometheus/camera/colordev/EntryPoint$HookInstaller;)V

    .line 95
    const-string v1, "style-toast"

    new-instance v2, Lcom/prometheus/camera/colordev/EntryPoint$3;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/colordev/EntryPoint$3;-><init>(Lcom/prometheus/camera/colordev/EntryPoint;)V

    invoke-static {v1, v2}, Lcom/prometheus/camera/colordev/EntryPoint;->installStep(Ljava/lang/String;Lcom/prometheus/camera/colordev/EntryPoint$HookInstaller;)V

    .line 98
    const-string v1, "classic-preview"

    new-instance v2, Lcom/prometheus/camera/colordev/EntryPoint$4;

    invoke-direct {v2, p0, p1}, Lcom/prometheus/camera/colordev/EntryPoint$4;-><init>(Lcom/prometheus/camera/colordev/EntryPoint;Ljava/lang/ClassLoader;)V

    invoke-static {v1, v2}, Lcom/prometheus/camera/colordev/EntryPoint;->installStep(Ljava/lang/String;Lcom/prometheus/camera/colordev/EntryPoint$HookInstaller;)V

    .line 101
    const-string v1, "classic-preview-refresh"

    new-instance v2, Lcom/prometheus/camera/colordev/EntryPoint$5;

    invoke-direct {v2, p0, p1}, Lcom/prometheus/camera/colordev/EntryPoint$5;-><init>(Lcom/prometheus/camera/colordev/EntryPoint;Ljava/lang/ClassLoader;)V

    invoke-static {v1, v2}, Lcom/prometheus/camera/colordev/EntryPoint;->installStep(Ljava/lang/String;Lcom/prometheus/camera/colordev/EntryPoint$HookInstaller;)V

    .line 106
    const-string v1, "capture-requests"

    new-instance v2, Lcom/prometheus/camera/colordev/EntryPoint$6;

    invoke-direct {v2, p0, p1}, Lcom/prometheus/camera/colordev/EntryPoint$6;-><init>(Lcom/prometheus/camera/colordev/EntryPoint;Ljava/lang/ClassLoader;)V

    invoke-static {v1, v2}, Lcom/prometheus/camera/colordev/EntryPoint;->installStep(Ljava/lang/String;Lcom/prometheus/camera/colordev/EntryPoint$HookInstaller;)V

    const/4 p0, 0x1

    .line 109
    sput-boolean p0, Lcom/prometheus/camera/colordev/EntryPoint;->installed:Z

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    const-string p0, "PrometheusColorDev: installed"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 110
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
