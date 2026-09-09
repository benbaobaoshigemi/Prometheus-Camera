.class Lcom/prometheus/camera/rev/HandleAdapterBridge$11;
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

    .line 144
    iput-object p1, p0, Lcom/prometheus/camera/rev/HandleAdapterBridge$11;->val$loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/prometheus/camera/rev/HandleAdapterBridge$11;->val$stops:[F

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 6

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/prometheus/camera/rev/HandleAdapterBridge$11;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->access$500(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 150
    iget-object p0, p0, Lcom/prometheus/camera/rev/HandleAdapterBridge$11;->val$stops:[F

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p0, v3

    sub-float/2addr v4, v0

    .line 151
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_2
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 158
    const-string p1, "E1 override failed"

    invoke-static {p1, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->access$700(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
