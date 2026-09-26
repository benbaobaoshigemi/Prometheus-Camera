.class Lcom/prometheus/camera/rev/StreetUiEntryPoint$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "StreetUiEntryPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/StreetUiEntryPoint;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/StreetUiEntryPoint;

.field final synthetic val$packageParam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/StreetUiEntryPoint;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/prometheus/camera/rev/StreetUiEntryPoint$1;->this$0:Lcom/prometheus/camera/rev/StreetUiEntryPoint;

    iput-object p2, p0, Lcom/prometheus/camera/rev/StreetUiEntryPoint$1;->val$packageParam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

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

    .line 37
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Landroid/content/Context;

    .line 38
    iget-object p0, p0, Lcom/prometheus/camera/rev/StreetUiEntryPoint$1;->val$packageParam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object p0, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->access$002(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    .line 39
    const-string p0, "prometheus_camera_settings"

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->access$102(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 40
    invoke-static {}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->access$200()V

    .line 41
    invoke-static {}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->access$000()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/StreetControlBindings;->install(Ljava/lang/ClassLoader;)V

    .line 42
    invoke-static {}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->access$000()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhotoAspectRatios;->install(Ljava/lang/ClassLoader;)V

    .line 43
    invoke-static {}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->access$000()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->install(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "PhoenixStreetUI: hooks installed enabled="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->enabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    return-void
.end method
