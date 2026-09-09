.class Lcom/prometheus/camera/rev/HandleAdapterBridge$14;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "HandleAdapterBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/HandleAdapterBridge;->installRebootDetection(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 276
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 8

    .line 279
    const-string p0, "b"

    const-string v0, "a"

    :try_start_0
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {v1, v0}, Lde/robv/android/xposed/XposedHelpers;->getBooleanField(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 280
    invoke-static {v1, p0}, Lde/robv/android/xposed/XposedHelpers;->getBooleanField(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 281
    :cond_0
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v2, "f"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 282
    instance-of v2, v1, Landroid/content/Context;

    if-nez v2, :cond_1

    return-void

    .line 283
    :cond_1
    check-cast v1, Landroid/content/Context;

    const-string v2, "input"

    .line 284
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    if-nez v1, :cond_2

    return-void

    .line 286
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_8

    aget v5, v2, v4

    .line 287
    invoke-virtual {v1, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 288
    invoke-virtual {v5}, Landroid/view/InputDevice;->getVendorId()I

    move-result v6

    const/16 v7, 0x2717

    if-eq v6, v7, :cond_3

    goto :goto_1

    .line 289
    :cond_3
    invoke-virtual {v5}, Landroid/view/InputDevice;->getProductId()I

    move-result v5

    const/16 v6, 0x5083

    const/4 v7, 0x1

    if-ne v5, v6, :cond_4

    .line 291
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {p0, v0, v7}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 292
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 293
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {p0, v7}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->access$1100(Ljava/lang/Object;Z)V

    .line 294
    const-string p0, "Pro handle restored from InputManager"

    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->access$600(Ljava/lang/String;)V

    return-void

    :cond_4
    const/16 v6, 0x50b2

    if-eq v5, v6, :cond_5

    const/16 v6, 0x50b7

    if-ne v5, v6, :cond_6

    .line 298
    :cond_5
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {v0, p0, v7}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 299
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 300
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {p0, v7}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->access$1100(Ljava/lang/Object;Z)V

    .line 301
    const-string p0, "Lite handle restored from InputManager"

    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->access$600(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 306
    const-string p1, "InputManager handle recovery failed"

    invoke-static {p1, p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->access$700(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method
