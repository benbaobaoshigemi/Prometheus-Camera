.class final Lcom/prometheus/camera/rev/CameraWatermarkBridge;
.super Ljava/lang/Object;
.source "CameraWatermarkBridge.java"


# static fields
.field private static final NATIVE_LEICA_MODEL:Ljava/lang/String; = "17 Ultra by Leica"

.field private static volatile installed:Z

.field private static volatile leicaLogCount:I

.field private static volatile stateLogCount:I

.field private static volatile titaniumLogCount:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ClassLoader;)Landroid/content/Context;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->globalContext(Ljava/lang/ClassLoader;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->isLeica(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->isTitanium(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$308()I
    .locals 2

    .line 13
    sget v0, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->titaniumLogCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->titaniumLogCount:I

    return v0
.end method

.method static synthetic access$408()I
    .locals 2

    .line 13
    sget v0, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->leicaLogCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->leicaLogCount:I

    return v0
.end method

.method static synthetic access$500([Ljava/lang/Object;)Landroid/content/Context;
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->firstContext([Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private static firstContext([Ljava/lang/Object;)Landroid/content/Context;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 165
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 166
    instance-of v4, v3, Landroid/content/Context;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/content/Context;

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static globalContext(Ljava/lang/ClassLoader;)Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 172
    const-string v0, "com.xiaomi.camera.basic.Global"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 173
    const-string v0, "getContext"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private static hookDynamicLeicaBitmapGate(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 113
    const-string v0, "com.xiaomi.cam.watermark.b"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/prometheus/camera/rev/CameraWatermarkBridge$3;

    invoke-direct {v1, p0, p1}, Lcom/prometheus/camera/rev/CameraWatermarkBridge$3;-><init>(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)V

    .line 135
    const-string p0, "e"

    invoke-static {v0, p0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 136
    const-string p0, "f"

    invoke-static {v0, p0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    return-void
.end method

.method private static hookDynamicLeicaText(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)V
    .locals 5

    .line 78
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v4, Lcom/prometheus/camera/rev/CameraWatermarkBridge$2;

    invoke-direct {v4, p0, p1}, Lcom/prometheus/camera/rev/CameraWatermarkBridge$2;-><init>(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)V

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "fs.m"

    const-string v1, "o"

    invoke-static {v0, p0, v1, p1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookImageMetadata(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 143
    const-string v0, "rf.b"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 144
    new-instance v1, Lcom/prometheus/camera/rev/CameraWatermarkBridge$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/prometheus/camera/rev/CameraWatermarkBridge$4;-><init>(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "k7.d"

    const-string v0, "d"

    invoke-static {p2, p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookSelectedProduct(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)V
    .locals 4

    .line 42
    const-class v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/prometheus/camera/rev/CameraWatermarkBridge$1;

    invoke-direct {v3, p0, p1}, Lcom/prometheus/camera/rev/CameraWatermarkBridge$1;-><init>(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)V

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "nu.a$a"

    const-string v1, "a"

    invoke-static {v0, p0, v1, p1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method static declared-synchronized install(Ljava/lang/ClassLoader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcom/prometheus/camera/rev/CameraWatermarkBridge;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-boolean v1, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->installed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 24
    :cond_0
    :try_start_1
    const-string v1, "com.prometheus.camera.settings.DeviceNameOverride"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 26
    const-string v2, "runtime"

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 27
    const-string v3, "imageMetadataEnabled"

    const-class v4, Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 30
    invoke-static {p0, v2}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->hookSelectedProduct(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)V

    .line 31
    invoke-static {p0, v2}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->hookDynamicLeicaText(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)V

    .line 32
    invoke-static {p0, v2}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->hookDynamicLeicaBitmapGate(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)V

    .line 33
    invoke-static {p0, v2, v1}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->hookImageMetadata(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    const-string v1, "k7.d$a"

    const-string v2, "d"

    new-instance v3, Lcom/prometheus/camera/rev/CameraWatermarkBridge$5;

    invoke-direct {v3, p0}, Lcom/prometheus/camera/rev/CameraWatermarkBridge$5;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    const/4 p0, 0x1

    .line 35
    sput-boolean p0, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->installed:Z

    .line 36
    const-string p0, "Phoenix: OS4 watermark model consumers installed"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    const-string v1, "Phoenix"

    const-string v2, "watermark consumer hooks installed"

    invoke-static {v1, v2}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isLeica(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " by leica"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTitanium(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, " Ti"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
