.class Lcom/prometheus/camera/rev/VideoLutMonitor$5;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "VideoLutMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/VideoLutMonitor;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/VideoLutMonitor;

.field final synthetic val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/VideoLutMonitor;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$5;->this$0:Lcom/prometheus/camera/rev/VideoLutMonitor;

    iput-object p2, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$5;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$5;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object v0, v0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v1, "com.android.camera.module.Y"

    invoke-static {v1, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "a"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request slot="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const-string v4, "S1"

    invoke-static {v2, v4}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cloud="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v3

    const-string v2, "U1"

    .line 89
    invoke-static {p1, v2}, Lde/robv/android/xposed/XposedHelpers;->getBooleanField(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " fps="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 90
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " intent="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 91
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$5;->this$0:Lcom/prometheus/camera/rev/VideoLutMonitor;

    invoke-static {v0}, Lcom/prometheus/camera/rev/VideoLutMonitor;->access$200(Lcom/prometheus/camera/rev/VideoLutMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$5;->this$0:Lcom/prometheus/camera/rev/VideoLutMonitor;

    invoke-static {v0, p1}, Lcom/prometheus/camera/rev/VideoLutMonitor;->access$100(Lcom/prometheus/camera/rev/VideoLutMonitor;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$5;->this$0:Lcom/prometheus/camera/rev/VideoLutMonitor;

    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/VideoLutMonitor;->access$202(Lcom/prometheus/camera/rev/VideoLutMonitor;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method
