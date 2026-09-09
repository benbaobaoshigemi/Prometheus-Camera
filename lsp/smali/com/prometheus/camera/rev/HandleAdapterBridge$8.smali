.class Lcom/prometheus/camera/rev/HandleAdapterBridge$8;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "HandleAdapterBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/HandleAdapterBridge;->installZoomSegmentFix(Ljava/lang/ClassLoader;)V
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

    .line 95
    iput-object p1, p0, Lcom/prometheus/camera/rev/HandleAdapterBridge$8;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .line 98
    :try_start_0
    iget-object p0, p0, Lcom/prometheus/camera/rev/HandleAdapterBridge$8;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->access$500(Ljava/lang/ClassLoader;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 99
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 100
    const-string p0, "isZoomSegmentEnabled forced true (portrait)"

    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->access$600(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 103
    const-string p1, "isZoomSegmentEnabled hook failed"

    invoke-static {p1, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->access$700(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
