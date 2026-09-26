.class public final Lcom/prometheus/camera/rev/AppPhotoEffects;
.super Ljava/lang/Object;
.source "AppPhotoEffects.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# instance fields
.field private loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/prometheus/camera/rev/AppPhotoEffects;)Z
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/prometheus/camera/rev/AppPhotoEffects;->appRendering()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/prometheus/camera/rev/AppPhotoEffects;)Ljava/lang/ClassLoader;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/prometheus/camera/rev/AppPhotoEffects;->loader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/prometheus/camera/rev/AppPhotoEffects;)I
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/prometheus/camera/rev/AppPhotoEffects;->none()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/prometheus/camera/rev/AppPhotoEffects;)I
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/prometheus/camera/rev/AppPhotoEffects;->carrier()I

    move-result p0

    return p0
.end method

.method private appRendering()Z
    .locals 2

    .line 19
    const-string v0, "Je.c$b"

    iget-object p0, p0, Lcom/prometheus/camera/rev/AppPhotoEffects;->loader:Ljava/lang/ClassLoader;

    .line 20
    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "a"

    .line 19
    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "k2"

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private carrier()I
    .locals 2

    .line 43
    const-string v0, "o3.d"

    iget-object p0, p0, Lcom/prometheus/camera/rev/AppPhotoEffects;->loader:Ljava/lang/ClassLoader;

    .line 44
    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "N_ORIGINAL"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 43
    const-string v1, "valueOf"

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    const/high16 v0, 0x10000

    .line 45
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method static classicToken(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 25
    const-string v0, "lut_cvstyle_(?:[a-zA-Z0-9]+_)*(?:common|food|human|night|plants|sunrise_sunset)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private none()I
    .locals 1

    .line 39
    const-string v0, "i3.b"

    iget-object p0, p0, Lcom/prometheus/camera/rev/AppPhotoEffects;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "N"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static standaloneMist(IILjava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "*>;",
            "Ljava/util/ArrayList<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_3

    .line 31
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 33
    const-string p1, "BlackMistEffect;"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "WhiteMistEffect;"

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "@CubeLutEffect;cube_strength=0.0;"

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 14

    .line 49
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

    .line 50
    :cond_0
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/prometheus/camera/rev/AppPhotoEffects;->loader:Ljava/lang/ClassLoader;

    .line 51
    const-class v0, Landroid/content/Context;

    new-instance v1, Lcom/prometheus/camera/rev/AppPhotoEffects$1;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/AppPhotoEffects$1;-><init>(Lcom/prometheus/camera/rev/AppPhotoEffects;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "o3.b"

    const-string v2, "a"

    invoke-static {v1, p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 64
    iget-object p1, p0, Lcom/prometheus/camera/rev/AppPhotoEffects;->loader:Ljava/lang/ClassLoader;

    new-instance v0, Lcom/prometheus/camera/rev/AppPhotoEffects$2;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/AppPhotoEffects$2;-><init>(Lcom/prometheus/camera/rev/AppPhotoEffects;)V

    const-string v1, "Rh.r"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "r7.a"

    const-string v2, "f"

    invoke-static {v1, p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 77
    iget-object p1, p0, Lcom/prometheus/camera/rev/AppPhotoEffects;->loader:Ljava/lang/ClassLoader;

    const-class v2, Landroid/hardware/HardwareBuffer;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/util/Size;

    const-class v5, Landroid/util/Size;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/util/ArrayList;

    const-class v11, Landroid/graphics/Rect;

    const-class v12, Ljava/util/ArrayList;

    new-instance v13, Lcom/prometheus/camera/rev/AppPhotoEffects$3;

    invoke-direct {v13, p0}, Lcom/prometheus/camera/rev/AppPhotoEffects$3;-><init>(Lcom/prometheus/camera/rev/AppPhotoEffects;)V

    const-string v0, "n3.e"

    const-string v1, "n3.b"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "n3.d"

    invoke-static {v0, p1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 99
    const-string p0, "PhoenixAppEffects"

    const-string p1, "application-side effect delivery hooks installed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
