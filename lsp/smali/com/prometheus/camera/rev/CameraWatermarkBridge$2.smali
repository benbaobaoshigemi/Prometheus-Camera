.class Lcom/prometheus/camera/rev/CameraWatermarkBridge$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "CameraWatermarkBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/CameraWatermarkBridge;->hookDynamicLeicaText(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$loader:Ljava/lang/ClassLoader;

.field final synthetic val$selectedName:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraWatermarkBridge$2;->val$loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/prometheus/camera/rev/CameraWatermarkBridge$2;->val$selectedName:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/prometheus/camera/rev/CameraWatermarkBridge$2;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->access$000(Ljava/lang/ClassLoader;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p0, v1

    goto :goto_0

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/prometheus/camera/rev/CameraWatermarkBridge$2;->val$selectedName:Ljava/lang/reflect/Method;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 92
    const-string v0, "leitzphone powered by xiaomi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p0, v0, v2

    return-void

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->access$100(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 93
    :cond_2
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 94
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p0, v1

    .line 95
    :goto_1
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->access$100(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 96
    :cond_4
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v2, "p"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 98
    invoke-static {}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->access$408()I

    move-result p1

    const/16 v0, 0xc

    if-ge p1, v0, :cond_5

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Phoenix: watermark by-Leica text node suppressed model="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
