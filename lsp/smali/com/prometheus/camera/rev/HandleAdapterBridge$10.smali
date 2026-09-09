.class Lcom/prometheus/camera/rev/HandleAdapterBridge$10;
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

.field final synthetic val$stops:[F


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;[F)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/prometheus/camera/rev/HandleAdapterBridge$10;->val$loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/prometheus/camera/rev/HandleAdapterBridge$10;->val$stops:[F

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 132
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/prometheus/camera/rev/HandleAdapterBridge$10;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v1}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->access$500(Ljava/lang/ClassLoader;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/prometheus/camera/rev/HandleAdapterBridge$10;->val$stops:[F

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 134
    aget p0, p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 137
    const-string p1, "Di override failed"

    invoke-static {p1, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->access$700(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
