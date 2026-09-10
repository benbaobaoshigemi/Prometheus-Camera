.class Lcom/prometheus/camera/rev/VignetteSettings$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "VignetteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/VignetteSettings;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/VignetteSettings;

.field final synthetic val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/VignetteSettings;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/prometheus/camera/rev/VignetteSettings$1;->this$0:Lcom/prometheus/camera/rev/VignetteSettings;

    iput-object p2, p0, Lcom/prometheus/camera/rev/VignetteSettings$1;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    sput-object p1, Lcom/prometheus/camera/rev/VignetteSettings;->app:Landroid/content/Context;

    iget-object p0, p0, Lcom/prometheus/camera/rev/VignetteSettings$1;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object p0, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    sput-object p0, Lcom/prometheus/camera/rev/VignetteSettings;->loader:Ljava/lang/ClassLoader;

    .line 52
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/prometheus/camera/rev/VignetteSettings;->ui:Landroid/os/Handler;

    .line 53
    sget-object p0, Lcom/prometheus/camera/rev/VignetteSettings;->app:Landroid/content/Context;

    const-string p1, "phoenix_vignette"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/prometheus/camera/rev/VignetteSettings;->prefs:Landroid/content/SharedPreferences;

    .line 54
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->install()V

    .line 55
    const-string p0, "PhoenixVignette"

    const-string p1, "MIUIX settings hooks installed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string p0, "PhoenixVignette: MIUIX settings hooks installed"

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    return-void
.end method
