.class public Lcom/prometheus/camera/rev/PhoenixCineAnimFix;
.super Ljava/lang/Object;
.source "PhoenixCineAnimFix.java"


# static fields
.field private static final CINE_AREA_TOLERANCE:F = 0.06f

.field private static final CLS_ANIM_TYPE:Ljava/lang/String; = "tu.a"

.field private static final CLS_PREVIEW_RENDERER:Ljava/lang/String; = "Cu.w"

.field private static final CLS_RENDER_PARAMS:Ljava/lang/String; = "ru.l"

.field private static final DRY_RUN:Z = false

.field private static final ENABLE:Z = true

.field private static final LOG_EVERY_N:I = 0x32

.field private static final LOG_FIRST_N:I = 0x14

.field private static final M_ON_RENDER:Ljava/lang/String; = "f"

.field private static final REQUIRE_CINEMATIC_AREA:Z = true

.field private static final TAG_CAM:Ljava/lang/String; = "MCAM_CineAnimFix"

.field private static final TAG_X:Ljava/lang/String; = "[CineAnimFix] "

.field private static volatile sAspectFail:I

.field private static sClsCycle:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sClsParams:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile sDisabled:Z

.field private static volatile sHits:I

.field private static sLoggedStartup:Z

.field private static sNormalCapture:Ljava/lang/Object;

.field private static volatile sNotCine:I

.field private static volatile sScanned:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .line 90
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->onRender(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 90
    sput-boolean p0, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sDisabled:Z

    return p0
.end method

.method private static describeFrame(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 254
    const-string v0, "n/a"

    :try_start_0
    const-string v1, "c"

    invoke-static {p0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 258
    :cond_0
    const-string v1, "d"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 259
    const-string v3, "b"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 260
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    instance-of v2, p0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    return-object v0
.end method

.method private static hook(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 158
    const-string v0, "ru.l"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sClsParams:Ljava/lang/Class;

    .line 159
    const-string v0, "tu.a"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sClsCycle:Ljava/lang/Class;

    .line 160
    const-string v1, "c"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sNormalCapture:Ljava/lang/Object;

    .line 161
    const-string v0, "Cu.w"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 163
    new-instance v0, Lcom/prometheus/camera/rev/PhoenixCineAnimFix$1;

    invoke-direct {v0}, Lcom/prometheus/camera/rev/PhoenixCineAnimFix$1;-><init>()V

    const-string v1, "f"

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 176
    invoke-static {}, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->logStartup()V

    return-void
.end method

.method public static install(Ljava/lang/ClassLoader;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 149
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->hook(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v0, 0x1

    .line 151
    sput-boolean v0, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sDisabled:Z

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CineAnimFix] install \u5931\u8d25: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 153
    const-string v0, "MCAM_CineAnimFix"

    const-string v1, "install failed, disabled"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static logStartup()V
    .locals 2

    .line 269
    sget-boolean v0, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sLoggedStartup:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 272
    sput-boolean v0, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sLoggedStartup:Z

    .line 273
    const-string v0, "v1.1-merged loaded  DRY_RUN=false  gate=\u53ea\u6709 2.39 \u9884\u89c8\u533a  via=Phoenix_LSP  target=Cu.w#f"

    .line 276
    const-string v1, "MCAM_CineAnimFix"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v0, "[CineAnimFix] v1.1-merged loaded  DRY_RUN=false  gate=\u53ea\u6709 2.39 \u9884\u89c8\u533a  via=Phoenix_LSP  target=Cu.w#f"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static onRender(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 9

    .line 181
    sget-boolean v0, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sDisabled:Z

    if-nez v0, :cond_b

    if-eqz p0, :cond_b

    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 184
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_b

    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sClsParams:Ljava/lang/Class;

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    .line 188
    :cond_1
    iget-object v2, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_2

    return-void

    .line 191
    :cond_2
    sget v2, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sScanned:I

    add-int/2addr v2, v3

    sput v2, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sScanned:I

    .line 194
    const-string v2, "h"

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 195
    sget-object v4, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sNormalCapture:Ljava/lang/Object;

    if-eq v2, v4, :cond_3

    return-void

    .line 200
    :cond_3
    const-string v2, "D"

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->getBooleanField(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x0

    .line 210
    :try_start_0
    iget-object p0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v5, "m"

    invoke-static {p0, v5}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 211
    instance-of v5, p0, Landroid/graphics/Rect;

    if-eqz v5, :cond_6

    .line 212
    check-cast p0, Landroid/graphics/Rect;

    .line 213
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 214
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v5, :cond_6

    if-lez p0, :cond_6

    int-to-float v6, v5

    int-to-float v7, p0

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v8, v6, v7

    if-gez v8, :cond_5

    div-float v6, v7, v6

    .line 220
    :cond_5
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%.3f"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":1)"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 226
    :cond_6
    const-string p0, "n/a"

    move v6, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    move v6, v4

    .line 224
    :goto_0
    sget v5, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sAspectFail:I

    add-int/2addr v5, v3

    sput v5, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sAspectFail:I

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "read-error:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    cmpg-float v4, v6, v4

    if-lez v4, :cond_a

    const v4, 0x4018f5c3    # 2.39f

    sub-float/2addr v6, v4

    .line 227
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3d75c28f    # 0.06f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    goto :goto_2

    .line 234
    :cond_7
    sget v4, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sHits:I

    add-int/2addr v4, v3

    sput v4, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sHits:I

    .line 235
    sget v3, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sHits:I

    .line 236
    invoke-static {v0}, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->describeFrame(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/16 v0, 0x14

    if-le v3, v0, :cond_8

    .line 242
    rem-int/lit8 v0, v3, 0x32

    if-nez v0, :cond_9

    .line 243
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hit#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " force D=true->false previewArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " frame="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " scanned="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sScanned:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " notCine="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sNotCine:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 246
    const-string v0, "MCAM_CineAnimFix"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CineAnimFix] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :cond_9
    return-void

    .line 228
    :cond_a
    :goto_2
    sget p0, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sNotCine:I

    add-int/2addr p0, v3

    sput p0, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sNotCine:I

    :cond_b
    :goto_3
    return-void
.end method

.method private static stats()Ljava/lang/String;
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hits="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sHits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " scanned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sScanned:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " notCine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sNotCine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " aspectFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sAspectFail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->sDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
