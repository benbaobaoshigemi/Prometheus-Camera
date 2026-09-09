.class Lcom/prometheus/camera/colordev/EntryPoint$26;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "EntryPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/colordev/EntryPoint;->hookRequests(Ljava/lang/ClassLoader;)V
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

    .line 686
    iput-object p1, p0, Lcom/prometheus/camera/colordev/EntryPoint$26;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 689
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v0, :cond_0

    return-void

    .line 692
    :cond_0
    iget-object v2, p0, Lcom/prometheus/camera/colordev/EntryPoint$26;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v2}, Lcom/prometheus/camera/colordev/EntryPoint;->access$1600(Ljava/lang/ClassLoader;)Landroid/content/Context;

    move-result-object v2

    .line 693
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v0

    .line 694
    const-string v3, "xiaomi.ai.asd.enabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/prometheus/camera/colordev/EntryPoint$26;->val$loader:Ljava/lang/ClassLoader;

    .line 695
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->access$3300(Ljava/lang/ClassLoader;)I

    move-result p0

    const/16 v3, 0xa3

    if-ne p0, v3, :cond_2

    .line 696
    invoke-static {v2}, Lcom/prometheus/camera/colordev/EntryPoint;->access$1700(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v3, "pref_prometheus_disable_xiaomi_ai_asd"

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 697
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, p0, v4

    .line 698
    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->access$3400()Z

    move-result p0

    if-nez p0, :cond_1

    .line 699
    invoke-static {v4}, Lcom/prometheus/camera/colordev/EntryPoint;->access$3402(Z)Z

    .line 700
    const-string p0, "PrometheusColorDev: xiaomi.ai.asd.enabled=false"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 706
    :cond_2
    const-string p0, "com.xiaomi.mivi2.render"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 707
    invoke-static {v2}, Lcom/prometheus/camera/colordev/EntryPoint;->access$1700(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_prometheus_classic_vignette"

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_5

    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p0, p0, v4

    instance-of p0, p0, [B

    if-nez p0, :cond_3

    goto :goto_0

    .line 711
    :cond_3
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p0, p0, v4

    check-cast p0, [B

    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->access$3500([B)[B

    move-result-object p0

    if-nez p0, :cond_4

    return-void

    .line 713
    :cond_4
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aput-object p0, p1, v4

    .line 714
    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->access$3600()Z

    move-result p0

    if-nez p0, :cond_5

    .line 715
    invoke-static {v4}, Lcom/prometheus/camera/colordev/EntryPoint;->access$3602(Z)Z

    .line 716
    const-string p0, "PrometheusColorDev: capture CvEffect removed"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
