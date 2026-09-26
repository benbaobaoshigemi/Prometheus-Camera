.class Lcom/prometheus/camera/rev/VideoLutMonitor$2;
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


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/VideoLutMonitor;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$2;->this$0:Lcom/prometheus/camera/rev/VideoLutMonitor;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$2;->this$0:Lcom/prometheus/camera/rev/VideoLutMonitor;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "quality candidates="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " limits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "ok"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/VideoLutMonitor;->access$100(Lcom/prometheus/camera/rev/VideoLutMonitor;Ljava/lang/String;)V

    return-void
.end method
