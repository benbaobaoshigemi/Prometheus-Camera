.class final Lcom/prometheus/camera/rev/VibrantVideoColorBridge;
.super Ljava/lang/Object;
.source "VibrantVideoColorBridge.java"


# static fields
.field private static final ERROR_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final INTERNAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final PHOTO_MODULE:I = 0xa3

.field private static final RENDER_TAG:Ljava/lang/String; = "com.xiaomi.mivi2.render"

.field private static final RENDER_TRACE_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final STYLE_TAG:Ljava/lang/String; = "com.xiaomi.sessionparams.stylizationType"

.field private static final TRACE_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final VIBR_BUILDERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIBR_STYLE:I = 0x0

.field private static final VIDEO_LUT:Ljava/lang/String; = "lut_normal_bright"

.field private static volatile renderKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile styleKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->ERROR_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->TRACE_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->RENDER_TRACE_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->INTERNAL:Ljava/lang/ThreadLocal;

    .line 33
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->VIBR_BUILDERS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ClassLoader;)I
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->currentModule(Ljava/lang/ClassLoader;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/ClassLoader;)Z
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->isVibrPhotoBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/ClassLoader;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1

    .line 21
    sget-object v0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->renderKey:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/hardware/camera2/CaptureRequest$Key;)Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 0

    .line 21
    sput-object p0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->renderKey:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 21
    sget-object v0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 21
    sget-object v0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->ERROR_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->removeKey(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;[B)V
    .locals 0

    .line 21
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->setBytes(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;[B)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    invoke-static {p0}, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->rewriteRender(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/ThreadLocal;
    .locals 1

    .line 21
    sget-object v0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->INTERNAL:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 21
    sget-object v0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->RENDER_TRACE_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->describe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1

    .line 21
    sget-object v0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->styleKey:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method static synthetic access$602(Landroid/hardware/camera2/CaptureRequest$Key;)Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 0

    .line 21
    sput-object p0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->styleKey:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object p0
.end method

.method static synthetic access$700(Ljava/lang/Object;)Z
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->isVibrStyle(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800()Ljava/util/Map;
    .locals 1

    .line 21
    sget-object v0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->VIBR_BUILDERS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 21
    sget-object v0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->TRACE_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static currentModule(Ljava/lang/ClassLoader;)I
    .locals 1

    .line 271
    const-string v0, "com.android.camera.module.Y"

    .line 272
    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "a"

    .line 271
    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static describe(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 238
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 239
    check-cast p0, [B

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byte["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 241
    :goto_0
    array-length v2, p0

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 247
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static install(Ljava/lang/ClassLoader;)V
    .locals 5

    .line 43
    :try_start_0
    const-string v0, "j9.m0"

    const-string v1, "t0"

    const-class v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    const-class v3, [B

    new-instance v4, Lcom/prometheus/camera/rev/VibrantVideoColorBridge$1;

    invoke-direct {v4, p0}, Lcom/prometheus/camera/rev/VibrantVideoColorBridge$1;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 69
    const-string v0, "Phoenix: direct MIVI wrapper hook installed j9.m0.t0"

    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 71
    const-string v1, "Phoenix: direct MIVI wrapper hook unavailable j9.m0.t0"

    invoke-static {v1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    .line 74
    :goto_0
    const-class v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    const-class v1, Landroid/hardware/camera2/CaptureRequest$Key;

    const-class v2, Ljava/lang/Object;

    new-instance v3, Lcom/prometheus/camera/rev/VibrantVideoColorBridge$2;

    invoke-direct {v3, p0}, Lcom/prometheus/camera/rev/VibrantVideoColorBridge$2;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "set"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 132
    const-class v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    new-instance v1, Lcom/prometheus/camera/rev/VibrantVideoColorBridge$3;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/VibrantVideoColorBridge$3;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "build"

    invoke-static {v0, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static isVibrPhotoBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/ClassLoader;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 231
    .line 232
    sget-object p1, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->VIBR_BUILDERS:Ljava/util/Map;

    monitor-enter p1

    .line 233
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 234
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isVibrStyle(Ljava/lang/Object;)Z
    .locals 3

    .line 192
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 193
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 195
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 196
    check-cast p0, [B

    .line 197
    array-length v0, p0

    if-lez v0, :cond_2

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method private static removeKey(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 258
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "remove"

    const-class v3, Landroid/hardware/camera2/CaptureRequest$Key;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 260
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 261
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 263
    sget-object p1, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->ERROR_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    const-string p1, "PrometheusRev: photo style key removal unavailable"

    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 265
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static rewriteRender(Ljava/lang/Object;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    instance-of v0, p0, [B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/String;

    check-cast p0, [B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p0, "\\u0000"

    .line 205
    const-string v2, ""

    invoke-virtual {v0, p0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 206
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    const-string p0, "filterScript"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    const-string v2, "lutNames"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    .line 211
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 212
    const-string v5, "lut_cvstyle_fuxi_common"

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 219
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 220
    const-string v3, "lut_normal_bright"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 221
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v1, "CubeLutEffect;cube_strength=1.00@CvEffect;"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static setBytes(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;[B)V"
        }
    .end annotation

    .line 253
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method
