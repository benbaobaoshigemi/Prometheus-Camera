.class Lcom/prometheus/camera/rev/CameraV51Bridge$46;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "CameraV51Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/CameraV51Bridge;->hookClassicCvState(Ljava/lang/ClassLoader;)V
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

    .line 1525
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$46;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 1527
    const-string v0, "Cu.i.h invoked"

    invoke-static {v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4200(Ljava/lang/String;)V

    .line 1528
    iget-object p0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$46;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4300(Ljava/lang/ClassLoader;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1530
    :cond_0
    :try_start_0
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string p1, "e"

    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    .line 1531
    const-string p1, "darkStrength"

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p1, 0x0

    .line 1534
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1535
    const-string p0, "preview Cu.i.h darkStrength=0 before draw"

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4400(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1539
    const-string p1, "PrometheusRev: preview Cu.i darkStrength failed"

    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 1540
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
