.class public final Lcom/prometheus/camera/rev/StreetUiEntryPoint;
.super Ljava/lang/Object;
.source "StreetUiEntryPoint.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# static fields
.field private static final EQUIP_STREET:I = 0xe5

.field public static final KEY:Ljava/lang/String; = "phoenix_street_ui_mode"

.field static final LABELS:[Ljava/lang/String;

.field static final LEGACY_KEY:Ljava/lang/String; = "phoenix_custom_street_ui"

.field private static final PHOTO:I = 0xa3

.field private static final STREET:I = 0xe1

.field private static exitingFragment:Ljava/lang/Object;

.field private static loader:Ljava/lang/ClassLoader;

.field private static preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    const-string v0, "\u7ecf\u5178\u8857\u62cd"

    const-string v1, "\u4f20\u5947\u8857\u62cd"

    const-string v2, "\u539f\u751f"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->LABELS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ClassLoader;
    .locals 1

    .line 14
    sget-object v0, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0

    .line 14
    sput-object p0, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->loader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method static synthetic access$102(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    .line 14
    sput-object p0, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->preferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 14
    invoke-static {}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->installStreetUi()V

    return-void
.end method

.method static synthetic access$300(I)I
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->route(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$402(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    sput-object p0, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->exitingFragment:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->finishExit(Ljava/lang/Object;)V

    return-void
.end method

.method static enabled()Z
    .locals 1

    .line 52
    invoke-static {}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->selectedMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static finishExit(Ljava/lang/Object;)V
    .locals 1

    .line 26
    sget-object v0, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->exitingFragment:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 27
    sput-object p0, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->exitingFragment:Ljava/lang/Object;

    .line 28
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->refreshAfterStreetTransition()V

    .line 29
    const-string p0, "PhoenixStreetUI: exit overlay finished; soft-focus UI released"

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static installStreetUi()V
    .locals 6

    .line 77
    sget-object v0, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->loader:Ljava/lang/ClassLoader;

    new-instance v1, Lcom/prometheus/camera/rev/StreetUiEntryPoint$2;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/StreetUiEntryPoint$2;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.android.camera.features.mode.equipstreet.EquipStreetModuleEntry"

    const-string v3, "support"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 83
    sget-object v0, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->loader:Ljava/lang/ClassLoader;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/prometheus/camera/rev/StreetUiEntryPoint$3;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/StreetUiEntryPoint$3;-><init>()V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.android.camera.module.loader.base.StartControl"

    const-string v3, "create"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 94
    sget-object v0, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->loader:Ljava/lang/ClassLoader;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/prometheus/camera/rev/StreetUiEntryPoint$4;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/StreetUiEntryPoint$4;-><init>()V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "u2.Q"

    const-string v3, "c0"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 97
    sget-object v0, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->loader:Ljava/lang/ClassLoader;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/prometheus/camera/rev/StreetUiEntryPoint$5;

    invoke-direct {v3}, Lcom/prometheus/camera/rev/StreetUiEntryPoint$5;-><init>()V

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "E"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 103
    sget-object v0, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->loader:Ljava/lang/ClassLoader;

    new-instance v1, Lcom/prometheus/camera/rev/StreetUiEntryPoint$6;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/StreetUiEntryPoint$6;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Je.c"

    const-string v3, "N"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 109
    const-string v0, "q4.i"

    sget-object v1, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 112
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v4, Lcom/prometheus/camera/rev/StreetUiEntryPoint$7;

    invoke-direct {v4}, Lcom/prometheus/camera/rev/StreetUiEntryPoint$7;-><init>()V

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ir"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 122
    sget-object v1, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->loader:Ljava/lang/ClassLoader;

    const-class v2, Landroid/animation/Animator;

    new-instance v3, Lcom/prometheus/camera/rev/StreetUiEntryPoint$8;

    invoke-direct {v3}, Lcom/prometheus/camera/rev/StreetUiEntryPoint$8;-><init>()V

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "q4.j"

    const-string v4, "onAnimationEnd"

    invoke-static {v3, v1, v4, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 129
    new-instance v1, Lcom/prometheus/camera/rev/StreetUiEntryPoint$9;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/StreetUiEntryPoint$9;-><init>()V

    const-string v2, "N6.g"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "unRegister"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 132
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/prometheus/camera/rev/StreetUiEntryPoint$10;

    invoke-direct {v3}, Lcom/prometheus/camera/rev/StreetUiEntryPoint$10;-><init>()V

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "hr"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 143
    const-string v0, "q4.w"

    const-string v1, "q4.A"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    .line 144
    sget-object v3, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->loader:Ljava/lang/ClassLoader;

    const-class v4, Landroid/view/View;

    new-instance v5, Lcom/prometheus/camera/rev/StreetUiEntryPoint$11;

    invoke-direct {v5}, Lcom/prometheus/camera/rev/StreetUiEntryPoint$11;-><init>()V

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "initView"

    invoke-static {v2, v3, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static isExiting()Z
    .locals 1

    .line 23
    sget-object v0, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->exitingFragment:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static resolveMode(IZZZ)I
    .locals 2

    const/16 v0, 0xe5

    const/16 v1, 0xe1

    if-eqz p1, :cond_0

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    if-ne p0, v0, :cond_1

    if-nez p3, :cond_1

    return v1

    :cond_1
    return p0
.end method

.method private static route(I)I
    .locals 7

    const/16 v0, 0xe1

    const/16 v1, 0xe5

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    return p0

    .line 62
    :cond_0
    invoke-static {}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->enabled()Z

    move-result v0

    .line 63
    sget-object v2, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "phoenix_street_ui_mode"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    sget-object v2, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "phoenix_custom_street_ui"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    if-ne p0, v1, :cond_4

    .line 66
    const-string v1, "Q6.d0"

    sget-object v5, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->loader:Ljava/lang/ClassLoader;

    .line 67
    invoke-static {v1, v5}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v5, "a"

    new-array v6, v4, [Ljava/lang/Object;

    .line 66
    invoke-static {v1, v5, v6}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    .line 68
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v5, "Mg"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    move v4, v3

    .line 70
    :cond_4
    invoke-static {p0, v0, v2, v4}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->resolveMode(IZZZ)I

    move-result p0

    return p0
.end method

.method static selectedMode()I
    .locals 3

    .line 50
    sget-object v0, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "phoenix_custom_street_ui"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "phoenix_street_ui_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3

    .line 33
    const-string v0, "com.android.camera"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    const-class v0, Landroid/app/Application;

    const-class v1, Landroid/content/Context;

    new-instance v2, Lcom/prometheus/camera/rev/StreetUiEntryPoint$1;

    invoke-direct {v2, p0, p1}, Lcom/prometheus/camera/rev/StreetUiEntryPoint$1;-><init>(Lcom/prometheus/camera/rev/StreetUiEntryPoint;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "attach"

    invoke-static {v0, p1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    :cond_1
    :goto_0
    return-void
.end method
