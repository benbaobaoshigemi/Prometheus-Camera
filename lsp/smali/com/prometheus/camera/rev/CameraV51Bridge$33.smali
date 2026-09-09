.class Lcom/prometheus/camera/rev/CameraV51Bridge$33;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "CameraV51Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/CameraV51Bridge;->hookMiviWatermarkModelPublisher(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fileUtil:Ljava/lang/Class;

.field final synthetic val$loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$33;->val$loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$33;->val$fileUtil:Ljava/lang/Class;

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

    .line 813
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 814
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$33;->val$loader:Ljava/lang/ClassLoader;

    iget-object p0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$33;->val$fileUtil:Ljava/lang/Class;

    invoke-static {v0, p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$2700(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
