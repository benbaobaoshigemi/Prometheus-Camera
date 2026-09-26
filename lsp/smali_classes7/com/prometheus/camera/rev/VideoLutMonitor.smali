.class public final Lcom/prometheus/camera/rev/VideoLutMonitor;
.super Ljava/lang/Object;
.source "VideoLutMonitor.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# instance fields
.field private context:Landroid/content/Context;

.field private lastRequest:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/prometheus/camera/rev/VideoLutMonitor;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutMonitor;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/prometheus/camera/rev/VideoLutMonitor;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/prometheus/camera/rev/VideoLutMonitor;->record(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/prometheus/camera/rev/VideoLutMonitor;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor;->lastRequest:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/prometheus/camera/rev/VideoLutMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutMonitor;->lastRequest:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized record(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 22
    :cond_0
    :try_start_1
    const-string v0, "PhoenixVideoQuality"

    invoke-static {v0, p1}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/prometheus/camera/rev/VideoLutMonitor;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "phoenix-video-quality.log"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 24
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 23
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 7

    .line 30
    const-string v0, "com.android.camera"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    const-class v0, Landroid/app/Application;

    const-class v1, Landroid/content/Context;

    new-instance v2, Lcom/prometheus/camera/rev/VideoLutMonitor$1;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/VideoLutMonitor$1;-><init>(Lcom/prometheus/camera/rev/VideoLutMonitor;)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "attach"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 37
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v2, Ljava/util/ArrayList;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v6, Lcom/prometheus/camera/rev/VideoLutMonitor$2;

    invoke-direct {v6, p0}, Lcom/prometheus/camera/rev/VideoLutMonitor$2;-><init>(Lcom/prometheus/camera/rev/VideoLutMonitor;)V

    const-string v1, "r2.j1$a"

    const-string v4, "j9.e"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "r2.f0"

    const-string v3, "y"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 45
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/prometheus/camera/rev/VideoLutMonitor$3;

    invoke-direct {v3, p0}, Lcom/prometheus/camera/rev/VideoLutMonitor$3;-><init>(Lcom/prometheus/camera/rev/VideoLutMonitor;)V

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.android.camera.data.data.c"

    const-string v3, "setComponentValue"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 60
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/prometheus/camera/rev/VideoLutMonitor$4;

    invoke-direct {v2, p0, p1}, Lcom/prometheus/camera/rev/VideoLutMonitor$4;-><init>(Lcom/prometheus/camera/rev/VideoLutMonitor;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.android.camera.data.data.j"

    const-string v3, "N1"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 83
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v1, Landroid/hardware/camera2/CaptureRequest$Builder;

    new-instance v2, Lcom/prometheus/camera/rev/VideoLutMonitor$5;

    invoke-direct {v2, p0, p1}, Lcom/prometheus/camera/rev/VideoLutMonitor$5;-><init>(Lcom/prometheus/camera/rev/VideoLutMonitor;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    const-string p0, "j9.e"

    const-string p1, "j9.i0"

    filled-new-array {v1, p0, p1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "j9.m0"

    const-string v1, "g1"

    invoke-static {p1, v0, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    :cond_1
    :goto_0
    return-void
.end method
