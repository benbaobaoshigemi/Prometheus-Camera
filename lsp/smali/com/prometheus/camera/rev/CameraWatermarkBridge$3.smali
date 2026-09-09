.class Lcom/prometheus/camera/rev/CameraWatermarkBridge$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "CameraWatermarkBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/CameraWatermarkBridge;->hookDynamicLeicaBitmapGate(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)V
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

    .line 114
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraWatermarkBridge$3;->val$loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/prometheus/camera/rev/CameraWatermarkBridge$3;->val$selectedName:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 129
    const-string p0, "phoenix.watermark.rendererModel"

    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 131
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v0, "c"

    invoke-static {p1, v0, p0}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 117
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->access$500([Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/prometheus/camera/rev/CameraWatermarkBridge$3;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->access$000(Ljava/lang/ClassLoader;)Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 120
    :cond_1
    iget-object p0, p0, Lcom/prometheus/camera/rev/CameraWatermarkBridge$3;->val$selectedName:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 121
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->access$100(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "leitzphone powered by xiaomi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_2
    const-string v0, "17 Ultra by Leica"

    .line 122
    :cond_3
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v1, "c"

    invoke-static {p0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 123
    const-string v2, "phoenix.watermark.rendererModel"

    invoke-virtual {p1, v2, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
