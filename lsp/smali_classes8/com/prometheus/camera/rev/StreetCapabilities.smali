.class public final Lcom/prometheus/camera/rev/StreetCapabilities;
.super Ljava/lang/Object;
.source "StreetCapabilities.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/StreetCapabilities;->component(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/StreetCapabilities;->portraitItems(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static component(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 31
    const-string v0, "g2.a"

    .line 32
    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    const-string v2, "j"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    invoke-static {p1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "x"

    invoke-static {v0, p1, p0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static equipmentModes([I)[I
    .locals 6

    .line 16
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xe5

    const/4 v4, 0x1

    if-ge v1, v0, :cond_3

    aget v5, p0, v1

    if-ne v5, v3, :cond_0

    return-object p0

    :cond_0
    const/16 v3, 0xa3

    if-eq v5, v3, :cond_1

    const/16 v3, 0xe1

    if-ne v5, v3, :cond_2

    :cond_1
    move v2, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    return-object p0

    .line 21
    :cond_4
    array-length v0, p0

    add-int/2addr v0, v4

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 22
    array-length p0, p0

    aput v3, v0, p0

    return-object v0
.end method

.method static hasItems(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 44
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static manualListType(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-eq p0, v1, :cond_2

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    :goto_1
    return v1
.end method

.method private static portraitItems(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 37
    const-string v0, "o9.a"

    .line 38
    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "a"

    .line 37
    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    .line 39
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "e"

    invoke-static {p0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 40
    const-string v1, "C"

    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    invoke-static {p1, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 40
    const-string v0, "q"

    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3

    .line 47
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

    .line 48
    :cond_0
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 49
    const-string v0, "v2.h"

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/prometheus/camera/rev/StreetCapabilities$1;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/StreetCapabilities$1;-><init>(Lcom/prometheus/camera/rev/StreetCapabilities;)V

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllConstructors(Ljava/lang/Class;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 56
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/prometheus/camera/rev/StreetCapabilities$2;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/StreetCapabilities$2;-><init>(Lcom/prometheus/camera/rev/StreetCapabilities;)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "F"

    invoke-static {v0, p1, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 65
    new-instance v0, Lcom/prometheus/camera/rev/StreetCapabilities$3;

    invoke-direct {v0, p0, p1}, Lcom/prometheus/camera/rev/StreetCapabilities$3;-><init>(Lcom/prometheus/camera/rev/StreetCapabilities;Ljava/lang/ClassLoader;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.android.camera.features.mode.equipstreet.a"

    const-string v2, "l"

    invoke-static {v1, p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 81
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/prometheus/camera/rev/StreetCapabilities$4;

    invoke-direct {v1, p0, p1}, Lcom/prometheus/camera/rev/StreetCapabilities$4;-><init>(Lcom/prometheus/camera/rev/StreetCapabilities;Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "q6.X"

    const-string v1, "cj"

    invoke-static {v0, p1, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 98
    const-string p0, "PhoenixStreetUI: capability hooks installed"

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
