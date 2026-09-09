.class Lcom/prometheus/camera/rev/CameraV51Bridge$43;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "CameraV51Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/CameraV51Bridge;->hookClassicStylePreference(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$loader:Ljava/lang/ClassLoader;

.field final synthetic val$preferenceClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1425
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$43;->val$preferenceClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$43;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1428
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v1, "mPreferenceGroup"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1430
    const-string v1, "pref_prometheus_classic_style"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    .line 1431
    const-string v3, "k0"

    invoke-static {v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1435
    :cond_0
    const-string v2, "category_advance_setting"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1441
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v2, "requireActivity"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1443
    iget-object v2, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$43;->val$preferenceClass:Ljava/lang/Class;

    const/4 v4, 0x0

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1445
    const-string v2, "a0"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    const-string v1, "\u5f95\u5361\u7ecf\u5178\u98ce\u683c"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "e0"

    invoke-static {p1, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    iget-object v1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$43;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$2500(Ljava/lang/ClassLoader;)Landroid/content/Context;

    move-result-object v1

    .line 1448
    iget-object v2, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$43;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v2, v1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$3400(Ljava/lang/ClassLoader;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1449
    iget-object p0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$43;->val$loader:Ljava/lang/ClassLoader;

    .line 1452
    invoke-static {p0, v1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4100(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1449
    const-string v1, "c0"

    invoke-static {p1, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    const-string p0, "t"

    invoke-static {p1, p0, v3}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1454
    const-string p0, "j0"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1438
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Host advanced-settings category is unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
