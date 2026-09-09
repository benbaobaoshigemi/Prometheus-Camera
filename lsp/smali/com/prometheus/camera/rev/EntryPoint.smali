.class public final Lcom/prometheus/camera/rev/EntryPoint;
.super Ljava/lang/Object;
.source "EntryPoint.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookZygoteInit;
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# static fields
.field private static final DIAGNOSTIC_DISABLE_CAMERA_BRIDGE:Z

.field private static volatile modulePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "PrometheusRev: loadPackage package="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " process="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 25
    iget-object p0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 27
    iget-object p0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/SystemServerDisplayBridge;->install(Ljava/lang/ClassLoader;)V

    return-void

    .line 30
    :cond_0
    const-string p0, "com.miui.mediaeditor"

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "Prometheus module path unavailable"

    if-eqz p0, :cond_2

    .line 31
    invoke-static {}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->start()V

    .line 32
    sget-object p0, Lcom/prometheus/camera/rev/EntryPoint;->modulePath:Ljava/lang/String;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/prometheus/camera/rev/EntryPoint;->modulePath:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 36
    sget-object p0, Lcom/prometheus/camera/rev/EntryPoint;->modulePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/prometheus/camera/rev/ContentRegistry;->load(Ljava/lang/String;)Lcom/prometheus/camera/rev/ContentRegistry;

    move-result-object p0

    .line 38
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, p0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->install(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 40
    const-string v1, "filter bridge installation failed"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->addThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    const-string v1, "PrometheusNRV: MediaEditor filter bridge installation failed"

    invoke-static {v1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 42
    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    .line 45
    :goto_0
    :try_start_1
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1, p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->install(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 47
    const-string p1, "watermark bridge installation failed"

    invoke-static {p1, p0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->addThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    const-string p1, "PrometheusNRV: MediaEditor watermark bridge installation failed"

    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 33
    :cond_1
    const-string p0, "fatal modulePath unavailable"

    invoke-static {p0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->add(Ljava/lang/String;)V

    .line 34
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_2
    iget-object p0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v1, "com.android.camera"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_3

    .line 57
    :cond_3
    const-string p0, "PrometheusRev: camera process accepted; starting ABI probe"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 58
    sget-object p0, Lcom/prometheus/camera/rev/EntryPoint;->modulePath:Ljava/lang/String;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/prometheus/camera/rev/EntryPoint;->modulePath:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 61
    iget-object p0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/BridgeRegistry;->probe(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object p0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrometheusRev: camera ABI probe result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/prometheus/camera/rev/EntryPoint;->modulePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/prometheus/camera/rev/ContentRegistry;->load(Ljava/lang/String;)Lcom/prometheus/camera/rev/ContentRegistry;

    move-result-object v0

    .line 64
    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    sget-object v2, Lcom/prometheus/camera/rev/EntryPoint;->modulePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/prometheus/camera/rev/DexInjector;->appendModuleDex(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 69
    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p0, v1, v0}, Lcom/prometheus/camera/rev/BridgeRegistry;->install(Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V

    .line 71
    :try_start_2
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->install(Ljava/lang/ClassLoader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 73
    const-string v1, "Phoenix: Camera watermark consumer bridge failed"

    invoke-static {v1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 74
    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    .line 76
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Phoenix: injected OS4 business dex, native aurora configuration, ABI "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/prometheus/camera/rev/ContentRegistry;->watermarkIds:Ljava/util/List;

    .line 80
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " watermark contracts"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method public initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V
    .locals 0

    .line 15
    iget-object p0, p1, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;->modulePath:Ljava/lang/String;

    sput-object p0, Lcom/prometheus/camera/rev/EntryPoint;->modulePath:Ljava/lang/String;

    return-void
.end method
