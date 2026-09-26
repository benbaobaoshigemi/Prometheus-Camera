.class public final Lcom/prometheus/camera/rev/PhoenixCompatFix;
.super Ljava/lang/Object;
.source "PhoenixCompatFix.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# static fields
.field private static final FILTER_INTENT_FRESH_MS:J = 0x1388L

.field private static final FILTER_NONE:I = -0x1

.field private static final MODE_VIDEO_FILTER:I = 0x8019

.field private static final MODE_VIDEO_PLAIN:I = 0x8004

.field private static final MODULE_CINEMASTER:I = 0xa4

.field private static final MODULE_PRO_VIDEO:I = 0xb4

.field private static final MODULE_VIDEO:I = 0xa2

.field private static final REAL_FILTER_MIN:I = 0x10000

.field private static final STREET_PORTRAIT_BIT:I = 0x8

.field private static final STREET_PORTRAIT_DEVICE:Ljava/lang/String; = "ishtar"

.field private static final TAG:Ljava/lang/String; = "MCAM_PhoenixCompatFix"

.field private static final TARGET_PACKAGE:Ljava/lang/String; = "com.android.camera"

.field private static final VIDEO_NONE:I = 0x700

.field private static volatile filterIdReadable:Z = false

.field private static volatile installed:Z = false

.field private static volatile masterFilter:I = -0x1

.field private static volatile masterFilterAtMs:J = 0x0L

.field private static volatile masterFilterHooked:Z = false

.field private static savedFilterGetter:Ljava/lang/reflect/Method; = null

.field private static volatile videoFilterId:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->onModeDecided(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 15
    sput-boolean p0, Lcom/prometheus/camera/rev/PhoenixCompatFix;->filterIdReadable:Z

    return p0
.end method

.method static synthetic access$302(I)I
    .locals 0

    .line 15
    sput p0, Lcom/prometheus/camera/rev/PhoenixCompatFix;->videoFilterId:I

    return p0
.end method

.method static synthetic access$402(I)I
    .locals 0

    .line 15
    sput p0, Lcom/prometheus/camera/rev/PhoenixCompatFix;->masterFilter:I

    return p0
.end method

.method static synthetic access$502(J)J
    .locals 0

    .line 15
    sput-wide p0, Lcom/prometheus/camera/rev/PhoenixCompatFix;->masterFilterAtMs:J

    return-wide p0
.end method

.method private static hookCvSelection(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 72
    const-class v0, Ljava/lang/Object;

    new-instance v1, Lcom/prometheus/camera/rev/PhoenixCompatFix$1;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/PhoenixCompatFix$1;-><init>()V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "r2.m"

    const-string v2, "R"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookMasterFilterWriter(Ljava/lang/ClassLoader;)V
    .locals 9

    .line 211
    const-string v0, "com.android.camera.data.data.j"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClassIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    .line 213
    const-string p0, "master-filter capture skipped: data class missing"

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    aget-object v5, p0, v2

    .line 218
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 219
    const-string v7, "N1"

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    array-length v7, v6

    if-ne v7, v4, :cond_2

    aget-object v6, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_1

    goto :goto_1

    .line 221
    :cond_1
    :try_start_0
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 222
    new-instance v4, Lcom/prometheus/camera/rev/PhoenixCompatFix$4;

    invoke-direct {v4}, Lcom/prometheus/camera/rev/PhoenixCompatFix$4;-><init>()V

    invoke-static {v5, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "master-filter hook failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-lez v3, :cond_4

    move v1, v4

    .line 237
    :cond_4
    sput-boolean v1, Lcom/prometheus/camera/rev/PhoenixCompatFix;->masterFilterHooked:Z

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "master-filter hooks="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static hookModeDecider(Ljava/lang/ClassLoader;)V
    .locals 8

    .line 114
    const-string v0, "y3.e"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClassIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    .line 116
    const-string p0, "video fix skipped: y3.e missing"

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v4, p0, v2

    .line 121
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 122
    const-string v6, "A"

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    aget-object v5, v5, v1

    .line 123
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "y3.w"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    :try_start_0
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 128
    new-instance v5, Lcom/prometheus/camera/rev/PhoenixCompatFix$2;

    invoke-direct {v5}, Lcom/prometheus/camera/rev/PhoenixCompatFix$2;-><init>()V

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "video mode hook failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "video mode hooks="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static hookStreetMask(Ljava/lang/ClassLoader;)V
    .locals 6

    .line 242
    const-string v0, "j9.e"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClassIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    .line 244
    const-string p0, "street portrait fix skipped: j9.e missing"

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    return-void

    .line 248
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, p0, v1

    .line 249
    const-string v4, "V"

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_2

    .line 250
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 254
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 255
    new-instance v4, Lcom/prometheus/camera/rev/PhoenixCompatFix$5;

    invoke-direct {v4}, Lcom/prometheus/camera/rev/PhoenixCompatFix$5;-><init>()V

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "street mask hook failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "street mask hooks="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " device="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static hookVideoFilterIdCapture(Ljava/lang/ClassLoader;)V
    .locals 6

    .line 178
    const-string v0, "j9.m0"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClassIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    .line 180
    const-string p0, "filter-id capture skipped: j9.m0 missing"

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, p0, v1

    .line 185
    const-string v4, "g1"

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 187
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 188
    new-instance v4, Lcom/prometheus/camera/rev/PhoenixCompatFix$3;

    invoke-direct {v4}, Lcom/prometheus/camera/rev/PhoenixCompatFix$3;-><init>()V

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "filter-id hook failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "filter-id hooks="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    return-void
.end method

.method static isRealFilterValue(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x700

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_0

    shr-int/lit8 p0, p0, 0x8

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isStreetMaskTarget(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 68
    const-string v0, "ishtar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isVideoFilterModule(I)Z
    .locals 1

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    const-string v0, "[PhoenixCompatFix] "

    .line 278
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :catchall_0
    :try_start_1
    const-string v0, "MCAM_PhoenixCompatFix"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method private static moduleIndex(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)I
    .locals 2

    .line 168
    :try_start_0
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 169
    iget-object p0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p0, p0, v1

    const-string v0, "a"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "module index unavailable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static onModeDecided(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 11

    const-string v0, "video mode 0x8004 -> 0x8019 module="

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 144
    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_0

    return-void

    .line 145
    :cond_0
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 146
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->moduleIndex(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)I

    move-result v1

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/prometheus/camera/rev/PhoenixCompatFix;->masterFilterAtMs:J

    sub-long v8, v3, v5

    const v3, 0x8004

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 149
    invoke-static {v1}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->isVideoFilterModule(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/prometheus/camera/rev/PhoenixCompatFix;->savedFilterGetter:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    .line 151
    invoke-virtual {v3, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v5, 0x700

    if-eq v3, v5, :cond_1

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    move v10, v4

    .line 154
    sget-boolean v4, Lcom/prometheus/camera/rev/PhoenixCompatFix;->filterIdReadable:Z

    sget v5, Lcom/prometheus/camera/rev/PhoenixCompatFix;->videoFilterId:I

    sget-boolean v6, Lcom/prometheus/camera/rev/PhoenixCompatFix;->masterFilterHooked:Z

    sget v7, Lcom/prometheus/camera/rev/PhoenixCompatFix;->masterFilter:I

    move v3, v1

    invoke-static/range {v2 .. v9}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->shouldReplaceVideoMode(IIZIZIJ)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v10, :cond_2

    return-void

    :cond_2
    const v2, 0x8019

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 159
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " filterId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/prometheus/camera/rev/PhoenixCompatFix;->videoFilterId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " writtenFilter=0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/prometheus/camera/rev/PhoenixCompatFix;->masterFilter:I

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "video decision failed open: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static shouldReplaceVideoMode(IIZIZIJ)Z
    .locals 2

    const v0, 0x8004

    const/4 v1, 0x0

    if-ne p0, v0, :cond_4

    .line 106
    invoke-static {p1}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->isVideoFilterModule(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 p0, 0x1

    if-eqz p2, :cond_1

    const/4 p1, -0x1

    if-eq p3, p1, :cond_1

    if-eqz p3, :cond_1

    move p1, p0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p4, :cond_2

    const-wide/16 p2, 0x0

    cmp-long p2, p6, p2

    if-ltz p2, :cond_2

    const-wide/16 p2, 0x1388

    cmp-long p2, p6, p2

    if-gtz p2, :cond_2

    .line 109
    invoke-static {p5}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->isRealFilterValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, p0

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    move v1, p0

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 40
    const-string v0, "com.android.camera"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/prometheus/camera/rev/PhoenixCompatFix;->installed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lcom/prometheus/camera/rev/PhoenixCompatFix;->installed:Z

    .line 45
    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v1}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->hookCvSelection(Ljava/lang/ClassLoader;)V

    .line 47
    :try_start_0
    const-string v1, "com.android.camera.data.data.j"

    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Z"

    const/4 v3, 0x0

    .line 48
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/prometheus/camera/rev/PhoenixCompatFix;->savedFilterGetter:Ljava/lang/reflect/Method;

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saved filter getter unavailable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    .line 54
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 53
    const-string v0, "com.prometheus.camera.rev.PhoenixCineAnimFix"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "install"

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->hookModeDecider(Ljava/lang/ClassLoader;)V

    .line 57
    iget-object p0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->hookVideoFilterIdCapture(Ljava/lang/ClassLoader;)V

    .line 58
    iget-object p0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->hookMasterFilterWriter(Ljava/lang/ClassLoader;)V

    .line 59
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->isStreetMaskTarget(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 60
    iget-object p0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->hookStreetMask(Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "street portrait mask unchanged on device="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    .line 64
    :goto_1
    const-string p0, "compatibility hooks installed"

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->log(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method
