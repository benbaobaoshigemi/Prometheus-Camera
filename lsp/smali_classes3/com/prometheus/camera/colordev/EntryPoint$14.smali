.class Lcom/prometheus/camera/colordev/EntryPoint$14;
.super Ljava/lang/Object;
.source "EntryPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/colordev/EntryPoint;->invalidateClassicPreview(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$finalClassicType:Ljava/lang/Object;

.field final synthetic val$loader:Ljava/lang/ClassLoader;

.field final synthetic val$renderEngine:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/prometheus/camera/colordev/EntryPoint$14;->val$renderEngine:Ljava/lang/Object;

    iput-object p2, p0, Lcom/prometheus/camera/colordev/EntryPoint$14;->val$finalClassicType:Ljava/lang/Object;

    iput-object p3, p0, Lcom/prometheus/camera/colordev/EntryPoint$14;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "PrometheusColorDev: classic renderer class="

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/prometheus/camera/colordev/EntryPoint$14;->val$renderEngine:Ljava/lang/Object;

    const-string v2, "E"

    iget-object v3, p0, Lcom/prometheus/camera/colordev/EntryPoint$14;->val$finalClassicType:Ljava/lang/Object;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 276
    const-string p0, "PrometheusColorDev: classic preview renderer not created"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void

    .line 280
    :cond_0
    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->access$1508()I

    move-result v2

    const/16 v3, 0x18

    if-ge v2, v3, :cond_1

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " super="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/prometheus/camera/colordev/EntryPoint$14;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lcom/prometheus/camera/colordev/EntryPoint;->access$1600(Ljava/lang/ClassLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prometheus/camera/colordev/EntryPoint;->access$1700(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_prometheus_classic_vignette"

    const/4 v3, 0x1

    .line 288
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 289
    const-string v2, "G"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 291
    const-string v3, "c"

    invoke-static {v2, v3, v0}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 296
    :cond_2
    const-string v0, "D"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    const-string v0, "J"

    invoke-static {v1, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    iget-object p0, p0, Lcom/prometheus/camera/colordev/EntryPoint$14;->val$renderEngine:Ljava/lang/Object;

    const-string v0, "requestRender"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {v1}, Lcom/prometheus/camera/colordev/EntryPoint;->access$1802(Z)Z

    .line 300
    const-string p0, "PrometheusColorDev: invalidated classic preview texture"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 303
    const-string v0, "PrometheusColorDev: failed to invalidate classic preview texture"

    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 305
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
