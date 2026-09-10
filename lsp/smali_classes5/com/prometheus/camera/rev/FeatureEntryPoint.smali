.class public final Lcom/prometheus/camera/rev/FeatureEntryPoint;
.super Ljava/lang/Object;
.source "FeatureEntryPoint.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# static fields
.field private static final HDR:Ljava/lang/String; = "prometheus_hdr_always_on"

.field private static final LOCAL_LOG_SETTING:Ljava/lang/String; = "phoenix_local_log_enabled"

.field private static final LOG:Ljava/lang/String; = "prometheus_log_enabled"

.field private static final PREFS:Ljava/lang/String; = "prometheus_camera_settings"

.field private static volatile context:Landroid/content/Context;

.field private static final probing:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/FeatureEntryPoint;->probing:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 21
    sput-object p0, Lcom/prometheus/camera/rev/FeatureEntryPoint;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Landroid/content/SharedPreferences;
    .locals 1

    .line 21
    invoke-static {}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Z)V
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->syncLocalLogSetting(Z)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->installSettings(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->installPreferenceChange(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->installHdr(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->injectLate(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/ThreadLocal;
    .locals 1

    .line 21
    sget-object v0, Lcom/prometheus/camera/rev/FeatureEntryPoint;->probing:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->value(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_0
    const-string v0, "k0"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static injectLate(Ljava/lang/Object;)V
    .locals 14

    .line 75
    const-string v0, "prometheus_log_enabled"

    const-string v1, "prometheus_hdr_always_on"

    :try_start_0
    const-string v2, "mPreferenceGroup"

    invoke-static {p0, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 76
    const-string v3, "category_prometheus_classic_controls"

    invoke-static {v2, v3}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 78
    const-string p0, "classic laboratory category not found"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->log(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 82
    const-string v5, "androidx.preference.SwitchPreference"

    invoke-static {v5, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 83
    const-string v6, "requireContext"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {p0, v6, v8}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 84
    invoke-static {v2, v1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    const-string v12, "j0"

    const-string v13, "e"

    if-nez v6, :cond_1

    .line 86
    :try_start_1
    const-string v8, "prometheus_hdr_always_on"

    const-string v9, "HDRA\u72b6\u6001\u4e0b\u59cb\u7ec8\u542f\u7528HDR"

    const-string v10, "\u8bbe\u7f6e\u4e3aHDRA\u65f6\u4fdd\u6301HDR\u5f00\u542f"

    invoke-static {}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->prefs()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    move-object v6, v5

    move-object v7, p0

    invoke-static/range {v6 .. v11}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->newSwitch(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v6

    .line 87
    invoke-static {v4, v1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->listener(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v13, v7}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v12, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v7, "pref_prometheus_classic_style"

    invoke-static {v3, v6, v7}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->placeAfter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    :cond_1
    invoke-static {v2, v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 93
    const-string v8, "prometheus_log_enabled"

    const-string v9, "Phoenix\u65e5\u5fd7"

    const-string v10, "\u5141\u8bb8\u5173\u95edPhoenix\u8c03\u8bd5\u65e5\u5fd7"

    invoke-static {}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v6, 0x1

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    move-object v6, v5

    move-object v7, p0

    invoke-static/range {v6 .. v11}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->newSwitch(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    .line 94
    invoke-static {v4, v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->listener(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v13, v0}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v12, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {v3, p0, v1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->placeAfter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :cond_2
    const-string p0, "laboratory preferences present"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "late settings injection failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static installHdr(Ljava/lang/ClassLoader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 182
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/util/ArrayList;

    new-instance v2, Lcom/prometheus/camera/rev/FeatureEntryPoint$6;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/FeatureEntryPoint$6;-><init>()V

    const-string v3, "j9.e"

    filled-new-array {v0, v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "r2.z"

    const-string v2, "t"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static installPreferenceChange(Ljava/lang/ClassLoader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Phoenix: Preference.i hook installed class="

    .line 149
    const-string v1, "androidx.preference.Preference"

    invoke-static {v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 151
    :try_start_0
    const-string v2, "i"

    const-class v3, Ljava/lang/Object;

    new-instance v4, Lcom/prometheus/camera/rev/FeatureEntryPoint$4;

    invoke-direct {v4}, Lcom/prometheus/camera/rev/FeatureEntryPoint$4;-><init>()V

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Phoenix: Preference.i hook failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 167
    :goto_0
    const-class v0, Ljava/lang/Object;

    new-instance v2, Lcom/prometheus/camera/rev/FeatureEntryPoint$5;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/FeatureEntryPoint$5;-><init>()V

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.android.camera.fragment.settings.CameraPreferenceFragment"

    const-string v2, "onPreferenceChange"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static installSettings(Ljava/lang/ClassLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    const-string v0, "androidx.preference.Preference"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 65
    new-instance v0, Lcom/prometheus/camera/rev/FeatureEntryPoint$2;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/prometheus/camera/rev/FeatureEntryPoint$2;-><init>(I)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.android.camera.fragment.settings.CameraAdvancePreferenceFragment"

    const-string v2, "registerPreferenceListener"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static listener(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 113
    const-string v0, "androidx.preference.Preference$c"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/prometheus/camera/rev/FeatureEntryPoint$3;

    invoke-direct {v1, p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint$3;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Phoenix: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void
.end method

.method public static logExternal(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->append(Ljava/lang/String;)V

    return-void
.end method

.method public static logExternal(Ljava/lang/Throwable;)V
    .locals 0

    .line 55
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 56
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->append(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static newSwitch(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 104
    const-string p1, "a0"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string p1, "e0"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string p1, "c0"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string p1, "t"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 108
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "setChecked"

    invoke-static {p0, p2, p1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private static placeAfter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "f0"

    invoke-static {p0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "n0"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "j0"

    const-string v5, "g"

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v2, 0x1

    .line 134
    invoke-static {v3, v5, v2}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 135
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v4, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v7, "m"

    invoke-static {v3, v7}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x2

    .line 137
    invoke-static {p1, v5, v6}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 138
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v4, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 143
    invoke-static {p1, v5, v2}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 144
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v4, p1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .locals 3

    .line 45
    sget-object v0, Lcom/prometheus/camera/rev/FeatureEntryPoint;->context:Landroid/content/Context;

    const-string v1, "prometheus_camera_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static syncLocalLogSetting(Z)V
    .locals 2

    .line 60
    sget-object v0, Lcom/prometheus/camera/rev/FeatureEntryPoint;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phoenix_local_log_enabled"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static value(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 203
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    const-string v0, "com.android.camera"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    const-class v0, Landroid/app/Application;

    const-class v1, Landroid/content/Context;

    new-instance v2, Lcom/prometheus/camera/rev/FeatureEntryPoint$1;

    invoke-direct {v2, p0, p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint$1;-><init>(Lcom/prometheus/camera/rev/FeatureEntryPoint;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "attach"

    invoke-static {v0, p1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    :cond_1
    :goto_0
    return-void
.end method
