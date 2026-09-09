.class final Lcom/prometheus/camera/rev/HandleAdapterBridge;
.super Ljava/lang/Object;
.source "HandleAdapterBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/rev/HandleAdapterBridge$Part;
    }
.end annotation


# static fields
.field private static final CHARGING_CONNECTED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLE_LITE:I = 0x50b2

.field private static final HANDLE_LITE_ALT:I = 0x50b7

.field private static final HANDLE_PRO:I = 0x5083

.field private static final KEYCODE_RECORD:I = 0x139

.field private static final XIAOMI_VENDOR:I = 0x2717


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 27
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/HandleAdapterBridge;->CHARGING_CONNECTED:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->installDetectorGate(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->installRebootDetection(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$1000([F)Ljava/util/ArrayList;
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->createZoomStops([F)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Ljava/lang/Object;Z)V
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->notifyCharging(Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$1200([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->installChargingLifecycle(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->installRecordButton(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->installLeicaSetting(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/ClassLoader;)Z
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->isPortraitMode(Ljava/lang/ClassLoader;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$800(FZZ[F)I
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->queryPortraitZoomIndex(FZZ[F)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Ljava/util/ArrayList;[F)Ljava/util/ArrayList;
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->fixPortraitList(Ljava/util/ArrayList;[F)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 406
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 407
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    array-length p0, p0

    aput-object p1, v0, p0

    return-object v0
.end method

.method private static createZoomStops([F)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static fixPortraitList(Ljava/util/ArrayList;[F)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;[F)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x3d4ccccd    # 0.05f

    if-eqz p0, :cond_1

    .line 223
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x40b00000    # 5.5f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    const v4, 0x3f19999a    # 0.6f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    sub-float/2addr v3, v4

    .line 225
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_0

    .line 226
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    :cond_1
    array-length p0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p0, :cond_4

    aget v3, p1, v2

    .line 232
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 233
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_2

    goto :goto_2

    .line 238
    :cond_3
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 240
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method static install(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 32
    new-instance v0, Lcom/prometheus/camera/rev/HandleAdapterBridge$1;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge$1;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "detector gate"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->installPart(Ljava/lang/String;Lcom/prometheus/camera/rev/HandleAdapterBridge$Part;)V

    .line 35
    new-instance v0, Lcom/prometheus/camera/rev/HandleAdapterBridge$2;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge$2;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "reboot detection"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->installPart(Ljava/lang/String;Lcom/prometheus/camera/rev/HandleAdapterBridge$Part;)V

    .line 38
    new-instance v0, Lcom/prometheus/camera/rev/HandleAdapterBridge$3;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge$3;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "charging lifecycle"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->installPart(Ljava/lang/String;Lcom/prometheus/camera/rev/HandleAdapterBridge$Part;)V

    .line 41
    new-instance v0, Lcom/prometheus/camera/rev/HandleAdapterBridge$4;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge$4;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "record button"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->installPart(Ljava/lang/String;Lcom/prometheus/camera/rev/HandleAdapterBridge$Part;)V

    .line 44
    new-instance v0, Lcom/prometheus/camera/rev/HandleAdapterBridge$5;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge$5;-><init>(Ljava/lang/ClassLoader;)V

    const-string p0, "Leica setting"

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->installPart(Ljava/lang/String;Lcom/prometheus/camera/rev/HandleAdapterBridge$Part;)V

    return-void
.end method

.method private static installChargingLifecycle(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 318
    const-string v0, "W5.b"

    :try_start_0
    const-string v1, "registerProtocol"

    new-instance v2, Lcom/prometheus/camera/rev/HandleAdapterBridge$15;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/HandleAdapterBridge$15;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 324
    const-string v1, "unRegisterProtocol"

    new-instance v2, Lcom/prometheus/camera/rev/HandleAdapterBridge$16;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/HandleAdapterBridge$16;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 330
    const-string p0, "handle charging lifecycle installed"

    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 332
    const-string v0, "handle charging lifecycle unavailable"

    invoke-static {v0, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static installDetectorGate(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 270
    const-string v0, "W5.b"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 271
    const-string p0, "OS4 native aurora handle stack verified"

    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static installLeicaSetting(Ljava/lang/ClassLoader;)V
    .locals 5

    .line 367
    :try_start_0
    const-string v0, "com.android.camera.fragment.settings.f"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 369
    const-string v1, "com.android.camera.fragment.settings.e"

    const-string v2, "b"

    const-class v3, Ljava/lang/String;

    new-instance v4, Lcom/prometheus/camera/rev/HandleAdapterBridge$18;

    invoke-direct {v4, v0}, Lcom/prometheus/camera/rev/HandleAdapterBridge$18;-><init>(Ljava/lang/Class;)V

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 399
    const-string p0, "handle Leica setting installed"

    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 401
    const-string v0, "handle Leica setting unavailable"

    invoke-static {v0, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static installPart(Ljava/lang/String;Lcom/prometheus/camera/rev/HandleAdapterBridge$Part;)V
    .locals 1

    .line 53
    :try_start_0
    invoke-interface {p1}, Lcom/prometheus/camera/rev/HandleAdapterBridge$Part;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " installation failed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static installRebootDetection(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 276
    :try_start_0
    const-string v0, "W5.b"

    const-string v1, "Mg"

    new-instance v2, Lcom/prometheus/camera/rev/HandleAdapterBridge$14;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/HandleAdapterBridge$14;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 310
    const-string p0, "handle reboot recovery installed"

    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 312
    const-string v0, "handle reboot recovery unavailable"

    invoke-static {v0, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static installRecordButton(Ljava/lang/ClassLoader;)V
    .locals 5

    .line 350
    :try_start_0
    const-string v0, "q6.U0"

    const-string v1, "onKeyUp"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/view/KeyEvent;

    new-instance v4, Lcom/prometheus/camera/rev/HandleAdapterBridge$17;

    invoke-direct {v4}, Lcom/prometheus/camera/rev/HandleAdapterBridge$17;-><init>()V

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 359
    const-string p0, "handle native record-button observer installed"

    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 361
    const-string v0, "handle record-button dispatch unavailable"

    invoke-static {v0, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static installZoomSegmentFix(Ljava/lang/ClassLoader;)V
    .locals 6

    const/4 v0, 0x4

    .line 61
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 63
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/prometheus/camera/rev/HandleAdapterBridge$6;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge$6;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "g9.f"

    const-string v3, "setZoomRatio"

    invoke-static {v2, p0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 74
    const-string v1, "setZoomRatio clamp hook installed (g9.f)"

    invoke-static {v1}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V

    .line 76
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v4, Lcom/prometheus/camera/rev/HandleAdapterBridge$7;

    invoke-direct {v4, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge$7;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "v0"

    invoke-static {v2, p0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 91
    const-string v1, "zoom action clamp hook installed (g9.f.v0)"

    invoke-static {v1}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V

    .line 93
    new-instance v1, Lcom/prometheus/camera/rev/HandleAdapterBridge$8;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge$8;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.android.camera.features.mode.capture.CaptureModule"

    const-string v3, "isZoomSegmentEnabled"

    invoke-static {v2, p0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 107
    const-string v1, "isZoomSegmentEnabled hook installed (CaptureModule)"

    invoke-static {v1}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V

    .line 109
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v4, Lcom/prometheus/camera/rev/HandleAdapterBridge$9;

    invoke-direct {v4, p0, v0}, Lcom/prometheus/camera/rev/HandleAdapterBridge$9;-><init>(Ljava/lang/ClassLoader;[F)V

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "W5.d"

    const-string v3, "n7"

    invoke-static {v2, p0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 126
    const-string v1, "zoom index override installed (W5.d.n7)"

    invoke-static {v1}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V

    .line 128
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/prometheus/camera/rev/HandleAdapterBridge$10;

    invoke-direct {v3, p0, v0}, Lcom/prometheus/camera/rev/HandleAdapterBridge$10;-><init>(Ljava/lang/ClassLoader;[F)V

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Rp"

    invoke-static {v2, p0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 141
    const-string v1, "zoom value override installed (W5.d.Rp)"

    invoke-static {v1}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V

    .line 143
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/prometheus/camera/rev/HandleAdapterBridge$11;

    invoke-direct {v3, p0, v0}, Lcom/prometheus/camera/rev/HandleAdapterBridge$11;-><init>(Ljava/lang/ClassLoader;[F)V

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "y4"

    invoke-static {v2, p0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 162
    const-string v1, "zoom stop override installed (W5.d.y4)"

    invoke-static {v1}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V

    .line 164
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/prometheus/camera/rev/HandleAdapterBridge$12;

    invoke-direct {v3, v0}, Lcom/prometheus/camera/rev/HandleAdapterBridge$12;-><init>([F)V

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "W5.f"

    const-string v4, "a"

    invoke-static {v3, p0, v4, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 195
    const-string v1, "zoom segment fix installed (W5.f.a)"

    invoke-static {v1}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V

    .line 197
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v5, Lcom/prometheus/camera/rev/HandleAdapterBridge$13;

    invoke-direct {v5, v0}, Lcom/prometheus/camera/rev/HandleAdapterBridge$13;-><init>([F)V

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "kg"

    invoke-static {v2, p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 212
    const-string p0, "zoom segment fix installed (W5.d.kg)"

    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x400ccccd    # 2.2f
        0x404ccccd    # 3.2f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private static isPortraitMode(Ljava/lang/ClassLoader;)Z
    .locals 1

    .line 216
    const-string v0, "com.android.camera.module.Y"

    .line 217
    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "a"

    .line 216
    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0xab

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Phoenix: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Phoenix: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyCharging(Ljava/lang/Object;Z)V
    .locals 4

    const-string v0, "handle charging state="

    .line 337
    sget-object v1, Lcom/prometheus/camera/rev/HandleAdapterBridge;->CHARGING_CONNECTED:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 338
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, p1, :cond_0

    return-void

    .line 340
    :cond_0
    :try_start_0
    const-string v2, "D9"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 344
    const-string p1, "handle charging notification failed"

    invoke-static {p1, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static queryPortraitZoomIndex(FZZ[F)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 247
    :goto_0
    array-length v2, p3

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 248
    aget v2, p3, v1

    sub-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-eqz p1, :cond_8

    if-ltz v1, :cond_4

    .line 254
    array-length p0, p3

    add-int/lit8 p0, p0, -0x1

    if-ge v1, p0, :cond_2

    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    return v0

    :cond_4
    move p1, v0

    .line 255
    :goto_3
    array-length v1, p3

    if-ge p1, v1, :cond_6

    aget v1, p3, p1

    cmpl-float v1, v1, p0

    if-lez v1, :cond_5

    return p1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    move v0, v3

    :goto_4
    return v0

    :cond_8
    if-ltz v1, :cond_b

    if-lez v1, :cond_9

    add-int/lit8 v3, v1, -0x1

    goto :goto_5

    :cond_9
    if-eqz p2, :cond_a

    .line 258
    array-length p0, p3

    add-int/lit8 v3, p0, -0x1

    :cond_a
    :goto_5
    return v3

    .line 259
    :cond_b
    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    :goto_6
    if-ltz p1, :cond_d

    aget v0, p3, p1

    cmpg-float v0, v0, p0

    if-gez v0, :cond_c

    return p1

    :cond_c
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_d
    if-eqz p2, :cond_e

    .line 260
    array-length p0, p3

    add-int/lit8 v3, p0, -0x1

    :cond_e
    return v3
.end method
