.class Lcom/prometheus/camera/rev/VideoLutMonitor$1;
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

    .line 31
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$1;->this$0:Lcom/prometheus/camera/rev/VideoLutMonitor;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$1;->this$0:Lcom/prometheus/camera/rev/VideoLutMonitor;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/prometheus/camera/rev/VideoLutMonitor;->access$002(Lcom/prometheus/camera/rev/VideoLutMonitor;Landroid/content/Context;)Landroid/content/Context;

    .line 34
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$1;->this$0:Lcom/prometheus/camera/rev/VideoLutMonitor;

    const-string p1, "monitor attached"

    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/VideoLutMonitor;->access$100(Lcom/prometheus/camera/rev/VideoLutMonitor;Ljava/lang/String;)V

    return-void
.end method
