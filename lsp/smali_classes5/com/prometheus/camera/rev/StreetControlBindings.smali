.class final Lcom/prometheus/camera/rev/StreetControlBindings;
.super Ljava/lang/Object;
.source "StreetControlBindings.java"


# static fields
.field private static shutter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/prometheus/camera/rev/StreetControlBindings;->shutter:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 10
    sget-object v0, Lcom/prometheus/camera/rev/StreetControlBindings;->shutter:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 10
    sput-object p0, Lcom/prometheus/camera/rev/StreetControlBindings;->shutter:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static install(Ljava/lang/ClassLoader;)V
    .locals 5

    .line 13
    const-string v0, "x8.d"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 14
    const-string v1, "com.android.camera.data.data.w"

    invoke-static {v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 15
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/prometheus/camera/rev/StreetControlBindings$1;

    invoke-direct {v3, p0}, Lcom/prometheus/camera/rev/StreetControlBindings$1;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "F1.E"

    const-string v4, "b"

    invoke-static {v3, p0, v4, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 29
    new-instance v2, Lcom/prometheus/camera/rev/StreetControlBindings$2;

    invoke-direct {v2, v1}, Lcom/prometheus/camera/rev/StreetControlBindings$2;-><init>(Ljava/lang/Class;)V

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "y9.e"

    const-string v3, "phoenixApplyCustomShutterStyle"

    invoke-static {v2, p0, v3, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 41
    const-class v0, Landroid/view/View;

    new-instance v2, Lcom/prometheus/camera/rev/StreetControlBindings$3;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/StreetControlBindings$3;-><init>()V

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "q4.i"

    const-string v3, "initView"

    invoke-static {v2, p0, v3, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 46
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v4, Lcom/prometheus/camera/rev/StreetControlBindings$4;

    invoke-direct {v4, v1}, Lcom/prometheus/camera/rev/StreetControlBindings$4;-><init>(Ljava/lang/Class;)V

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "i7.a"

    const-string v2, "v"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method
