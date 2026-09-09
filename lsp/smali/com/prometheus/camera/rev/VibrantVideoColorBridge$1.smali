.class Lcom/prometheus/camera/rev/VibrantVideoColorBridge$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "VibrantVideoColorBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->install(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->access$000(Ljava/lang/ClassLoader;)I

    move-result v0

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_0

    return-void

    .line 54
    :cond_0
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 56
    iget-object p0, p0, Lcom/prometheus/camera/rev/VibrantVideoColorBridge$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v0, p0}, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->access$100(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/ClassLoader;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 57
    :cond_1
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/prometheus/camera/rev/VibrantVideoColorBridge;->access$200(Ljava/lang/Object;)[B

    move-result-object p0

    if-eqz p0, :cond_2

    .line 59
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aput-object p0, p1, v0

    .line 60
    const-string p0, "Phoenix: VIBR photo MIVI payload replaced at j9.m0.t0"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 64
    const-string p1, "Phoenix: j9.m0.t0 rewrite failed"

    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 65
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
