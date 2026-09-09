.class public Lcom/android/camera/CameraAppImpl;
.super Ldx/b;
.source "SourceFile"

# interfaces
.implements Lmiuix/autodensity/j;
.implements Landroidx/work/a$b;


# static fields
.field public static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "camera.pool.size"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lur/g;->e(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/CameraAppImpl;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldx/b;-><init>()V

    return-void
.end method

.method public static b(I)V
    .locals 3

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_immune_sys"

    iput-object v1, v0, Lgq/h;->a:Ljava/lang/String;

    new-instance v1, Lgq/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v1, v0, Lgq/h;->b:Lgq/f;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "attr_camera_id"

    invoke-virtual {v0, p0, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/work/a;
    .locals 3

    new-instance v0, Landroidx/work/a$a;

    invoke-direct {v0}, Landroidx/work/a$a;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Landroidx/work/a$a;->d:I

    const/16 v1, 0x1388

    iput v1, v0, Landroidx/work/a$a;->e:I

    const-string v1, "com.android.camera"

    iput-object v1, v0, Landroidx/work/a$a;->c:Ljava/lang/String;

    new-instance v1, LF1/M2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LF1/M2;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Landroidx/work/a$a;->b:LF1/M2;

    new-instance v1, LF1/N2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LF1/N2;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Landroidx/work/a$a;->a:LF1/N2;

    new-instance p0, Landroidx/work/a;

    invoke-direct {p0, v0}, Landroidx/work/a;-><init>(Landroidx/work/a$a;)V

    return-object p0
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x8

    const-string v2, "attachBaseContext"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/android/camera/log/LogUtil;->setLogLevel(I)V

    sput-object p0, LDf/d;->a:Lcom/android/camera/CameraAppImpl;

    invoke-static {p0}, LKf/b;->d(Landroid/app/Application;)V

    const-string p1, "android.app.ActivityThread"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "currentActivityThread"

    new-array v7, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v6, "mLoadedApk"

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mActivityThread"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v5, p1

    :catchall_0
    :goto_0
    const-string p1, "mInstrumentation"

    invoke-static {v5, p1}, LKf/a;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    new-instance v6, LFf/c;

    invoke-virtual {p1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type android.app.Instrumentation"

    invoke-static {v7, v8}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/app/Instrumentation;

    invoke-direct {v6, v7}, LFf/c;-><init>(Landroid/app/Instrumentation;)V

    invoke-virtual {p1, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "6.6.000510.0"

    const v5, 0x2756e0ec

    const-string v6, "com.android.camera"

    invoke-static {p0, v0, p1, v5, v6}, Lcom/xiaomi/camera/basic/Global;->init(Landroid/app/Application;ZLjava/lang/String;ILjava/lang/String;)V

    sget-object p1, Lph/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Lph/b;->d:Lph/b$a;

    invoke-virtual {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :goto_1
    new-instance p0, Lz2/c;

    invoke-direct {p0, v1}, LBb/d;-><init>(I)V

    new-instance p1, Lz2/d;

    invoke-direct {p1, v1}, LBb/d;-><init>(I)V

    new-instance v4, Lz2/b;

    invoke-direct {v4, v1}, LBb/d;-><init>(I)V

    new-instance v5, Lz2/a;

    invoke-direct {v5, v1}, LBb/d;-><init>(I)V

    new-instance v6, Lz2/e;

    invoke-direct {v6, v1}, LBb/d;-><init>(I)V

    sput-object p0, LA2/a;->b:Lz2/c;

    sput-object p1, LA2/a;->c:Lz2/d;

    sput-object v4, LA2/a;->d:Lz2/b;

    sput-object v5, LA2/a;->e:Lz2/a;

    sput-object v6, LA2/a;->f:Lz2/e;

    const-string/jumbo p0, "rx2.purge-enabled"

    const-string p1, "false"

    invoke-static {p0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance p1, LF1/O2;

    invoke-direct {p1, v0}, LF1/O2;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "attachBaseContext: cost = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, p0}, LF1/q2;->b(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "CameraAppImpl"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onCreate()V
    .locals 22

    move-object/from16 v1, p0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v0, "onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v6, LF1/P2;

    invoke-direct {v6, v3}, LF1/P2;-><init>(I)V

    invoke-static {v0, v6}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    sget-boolean v0, LQa/b;->p0:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x258

    invoke-static {v0, v3}, LPh/h;->a(II)V

    :cond_0
    invoke-super {v1}, Ldx/b;->onCreate()V

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v7, "currentActivityThread"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "setFootprintFlag"

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setFootprintFlag failed:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "CameraAppImpl"

    invoke-static {v8, v0, v7}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {v1}, LM0/a;->c(Landroid/content/Context;)LM0/a;

    move-result-object v0

    const-class v7, Lcom/xiaomi/camera/data/repos/DataRepoInitializer;

    invoke-virtual {v0, v7}, LM0/a;->d(Ljava/lang/Class;)Ljava/lang/Object;

    sput-object v1, LK2/b;->c:Lcom/android/camera/CameraAppImpl;

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->J0()Z

    move-result v7

    sput-boolean v7, LK2/b;->d:Z

    iget-object v7, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v7}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->j3()Z

    move-result v7

    sput-boolean v7, LK2/b;->e:Z

    sget-object v7, Ld2/b$a;->a:Ld2/b;

    invoke-virtual {v7}, Ld2/b;->registerProtocol()V

    sget-object v7, LK2/g;->a:Ljava/util/HashMap;

    sget-object v7, LK2/g$a;->a:LK2/g;

    sput-object v7, LK2/b;->f:LK2/g;

    invoke-static {}, LO6/b;->a()Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ld2/c;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7}, Ld2/c;->registerProtocol()V

    :cond_1
    sget-object v7, Ld2/a;->a:Ld2/a;

    invoke-virtual {v7}, Ld2/a;->registerProtocol()V

    invoke-static {}, Lcom/xiaomi/camera/mivi/MIVISDKConfig;->getInstance()Lcom/xiaomi/camera/mivi/MIVISDKConfig;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/xiaomi/camera/mivi/MIVISDKConfig;->init(Landroid/app/Application;)Lcom/xiaomi/camera/mivi/MIVISDKConfig;

    move-result-object v7

    iget-object v8, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->G6()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaomi/camera/mivi/MIVISDKConfig;->setSupportAlgoUp(Z)Lcom/xiaomi/camera/mivi/MIVISDKConfig;

    move-result-object v7

    invoke-virtual {v0}, LJe/c;->b1()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaomi/camera/mivi/MIVISDKConfig;->setSupportMIVI2(Z)Lcom/xiaomi/camera/mivi/MIVISDKConfig;

    move-result-object v7

    iget-object v8, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->s4()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaomi/camera/mivi/MIVISDKConfig;->setSupportMIVI2InMTK(Z)Lcom/xiaomi/camera/mivi/MIVISDKConfig;

    move-result-object v7

    invoke-virtual {v0}, LJe/c;->h2()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaomi/camera/mivi/MIVISDKConfig;->setSupportInfinityQuickSnapshot(Z)Lcom/xiaomi/camera/mivi/MIVISDKConfig;

    move-result-object v7

    invoke-virtual {v0}, LJe/c;->k2()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaomi/camera/mivi/MIVISDKConfig;->setSupportMIVI3OutputJpeg(Z)Lcom/xiaomi/camera/mivi/MIVISDKConfig;

    move-result-object v7

    iget-object v8, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->p3()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaomi/camera/mivi/MIVISDKConfig;->setSupportAidlBGService(Z)Lcom/xiaomi/camera/mivi/MIVISDKConfig;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xiaomi/camera/mivi/MIVISDKConfig;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/camera/mivi/MIVISDKConfig;

    move-result-object v7

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->isMainProcess()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaomi/camera/mivi/MIVISDKConfig;->setMainProcess(Z)Lcom/xiaomi/camera/mivi/MIVISDKConfig;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/camera/rx/CameraSchedulers;->sReprocessingScheduler:Lio/reactivex/v;

    sget-object v9, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    invoke-virtual {v7, v8, v9}, Lcom/xiaomi/camera/mivi/MIVISDKConfig;->setImageProcessScheduler(Lio/reactivex/v;Lio/reactivex/v;)Lcom/xiaomi/camera/mivi/MIVISDKConfig;

    move-result-object v7

    invoke-virtual {v0}, LJe/c;->E()V

    invoke-virtual {v7, v3}, Lcom/xiaomi/camera/mivi/MIVISDKConfig;->setIsAndroidGo(Z)Lcom/xiaomi/camera/mivi/MIVISDKConfig;

    move-result-object v7

    invoke-virtual {v0}, LJe/c;->F()V

    invoke-virtual {v7, v3}, Lcom/xiaomi/camera/mivi/MIVISDKConfig;->setIsAndroidOne(Z)Lcom/xiaomi/camera/mivi/MIVISDKConfig;

    invoke-virtual {v0}, LJe/c;->b1()Z

    move-result v7

    invoke-virtual {v0}, LJe/c;->k2()Z

    move-result v8

    iget-object v9, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v9}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->s4()Z

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->initImpl(ZZZ)V

    sget-boolean v7, LJe/d;->b:Z

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/uber/rxdogtag/RxDogTag;->install()V

    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->isMainProcess()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v7}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->G6()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, LJe/c;->d0()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_3
    iget-object v7, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v7}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->m6()I

    move-result v7

    iget-object v8, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->o6()I

    move-result v8

    iget-object v9, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v9}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->i6()I

    move-result v9

    iget-object v10, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, LQa/e;->a:J

    const-wide/16 v12, 0x6

    cmp-long v12, v10, v12

    if-lez v12, :cond_5

    invoke-static {}, LQa/e;->a()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    iget-object v7, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v7}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->n6()I

    move-result v7

    move v8, v2

    :cond_5
    const-string v12, "CameraAppImpl"

    const-string/jumbo v13, "totalMemory:"

    const-string v14, "G, totalMemoryCeil = "

    invoke-static {v10, v11, v13, v14}, LF1/r0;->h(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, LQa/e;->b:I

    const-string v13, "G, maxAcquireCount = "

    const-string v14, ", maxDequeueCount:"

    invoke-static {v10, v11, v13, v7, v14}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v12, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v10, Lcom/android/camera/CameraAppImpl;->e:I

    invoke-static {v7, v8, v9, v2, v10}, Lcom/xiaomi/camera/mivi/ImagePoolAdapter;->configure(IIIII)V

    iget-object v7, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v7}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->s4()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v1}, Lcom/xiaomi/camera/mivi/mtk/MizoneReprocessorUtil;->init(Landroid/content/Context;)V

    :cond_6
    sget-object v7, LF1/e3$a;->a:LF1/e3;

    iput-object v1, v7, LF1/e3;->a:Lcom/android/camera/CameraAppImpl;

    iget-object v8, v7, LF1/e3;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v8, :cond_7

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v8

    iput-object v8, v7, LF1/e3;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v7}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_7
    iget-object v8, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, LF1/d3;

    invoke-direct {v8, v7}, LF1/d3;-><init>(Ljava/lang/Object;)V

    sput-object v8, LAr/d;->b:LF1/d3;

    sput-object v8, LAr/d;->a:LF1/d3;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v1}, LK2/b;->K(Landroid/content/Context;)V

    invoke-virtual {v0}, LJe/c;->d()V

    invoke-static {v1}, LQa/b;->e(Landroid/content/Context;)V

    invoke-static {v1}, LQa/b;->e(Landroid/content/Context;)V

    sget-object v0, LF1/o3;->a:LF1/o3$a;

    if-nez v0, :cond_8

    new-instance v0, LF1/o3$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v9, "\'IMG\'_yyyyMMdd_HHmmssSSS"

    new-instance v10, Ljava/text/SimpleDateFormat;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v12, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v10, v12, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v10, v0, LF1/o3$a;->a:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/text/SimpleDateFormat;

    invoke-direct {v10, v9, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v10, v0, LF1/o3$a;->b:Ljava/text/SimpleDateFormat;

    iput-object v12, v0, LF1/o3$a;->e:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, LF1/o3$a;->f:Ljava/lang/String;

    sput-object v0, LF1/o3;->a:LF1/o3$a;

    :cond_8
    sget-object v0, Lv3/e;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-object v0, Lv3/e;->c:LCv/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "com.android.camera.features.config.mutexconfig."

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    sget-object v12, LJe/d;->a:Ljava/lang/String;

    invoke-static {v12}, Lfv/l;->e(Ljava/lang/Object;)V

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "toLowerCase(...)"

    invoke-static {v12, v13}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    const-string/jumbo v13, "toCharArray(...)"

    invoke-static {v12, v13}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    aget-char v13, v12, v3

    const/16 v14, 0x61

    if-gt v14, v13, :cond_9

    const/16 v14, 0x7b

    if-ge v13, v14, :cond_9

    add-int/lit8 v13, v13, -0x20

    int-to-char v13, v13

    aput-char v13, v12, v3

    :cond_9
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v12}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LUf/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-class v0, Lw3/a;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/Object;

    const-string v14, "LoadFeatureMutex"

    invoke-static {v14, v12, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v12, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v12, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v12, v0, Lw3/a;

    if-eqz v12, :cond_a

    check-cast v0, Lw3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lv3/f;

    const-string v17, "false"

    const-string/jumbo v13, "\u5b9a\u65f6\u8fde\u62cd"

    const-string/jumbo v14, "true"

    const-string v16, "persistent"

    const/16 v15, 0xf8

    invoke-direct/range {v12 .. v17}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lv3/f;

    const-string v18, "OFF"

    const-string/jumbo v14, "\u8d85\u6e05"

    const-string/jumbo v15, "true"

    const-string v17, "persistent"

    const/16 v16, 0xd1

    invoke-direct/range {v13 .. v18}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lv3/f;

    const-string v19, "false"

    const-string/jumbo v15, "\u81ea\u52a8\u591c\u666f"

    const-string/jumbo v16, "true"

    const-string/jumbo v18, "temporary"

    const/16 v17, 0xba

    invoke-direct/range {v14 .. v19}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lv3/f;

    const-string/jumbo v20, "true"

    const-string/jumbo v16, "\u81ea\u52a8\u591c\u666f"

    const-string v17, "false"

    const-string/jumbo v19, "temporary"

    const/16 v18, 0xba

    invoke-direct/range {v15 .. v20}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lv3/b;

    const-string/jumbo v13, "\u52a8\u6001\u7167\u7247"

    const/16 v14, 0xce

    invoke-direct {v12, v14, v13, v0}, Lv3/b;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lv3/f;

    const-string v17, "false"

    const-string/jumbo v13, "\u52a8\u6001\u7167\u7247"

    const-string/jumbo v14, "true"

    const-string/jumbo v16, "temporary"

    const/16 v15, 0xce

    invoke-direct/range {v12 .. v17}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lv3/f;

    const-string/jumbo v18, "true"

    const-string/jumbo v14, "\u52a8\u6001\u7167\u7247"

    const-string v15, "false"

    const-string/jumbo v17, "temporary"

    const/16 v16, 0xce

    invoke-direct/range {v13 .. v18}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lv3/b;

    const-string/jumbo v13, "\u81ea\u52a8\u591c\u666f"

    const/16 v14, 0xba

    invoke-direct {v12, v14, v13, v0}, Lv3/b;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lv3/f;

    const-string v17, "false"

    const-string/jumbo v13, "\u52a8\u6001\u7167\u7247"

    const-string v14, "expand"

    const-string/jumbo v16, "temporary"

    const/16 v15, 0xce

    invoke-direct/range {v12 .. v17}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lv3/f;

    const-string/jumbo v18, "true"

    const-string/jumbo v14, "\u52a8\u6001\u7167\u7247"

    const-string/jumbo v15, "simple"

    const-string/jumbo v17, "temporary"

    const/16 v16, 0xce

    invoke-direct/range {v13 .. v18}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lv3/b;

    const-string/jumbo v13, "\u666f\u6df1\u6269\u5c55"

    const/16 v14, 0xe8

    invoke-direct {v12, v14, v13, v0}, Lv3/b;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lv3/f;

    const-string v17, "false"

    const-string/jumbo v13, "\u52a8\u6001\u7167\u7247"

    const-string v14, "on"

    const-string/jumbo v16, "temporary"

    const/16 v15, 0xce

    invoke-direct/range {v12 .. v17}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lv3/f;

    const-string/jumbo v18, "true"

    const-string/jumbo v14, "\u52a8\u6001\u7167\u7247"

    const-string v15, "off"

    const-string/jumbo v17, "temporary"

    const/16 v16, 0xce

    invoke-direct/range {v13 .. v18}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lv3/b;

    const-string/jumbo v13, "\u8d85\u7ea7\u957f\u7126"

    const/16 v14, 0x302

    invoke-direct {v12, v14, v13, v0}, Lv3/b;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lv3/f;

    const-string v17, "false"

    const-string/jumbo v13, "\u52a8\u6001\u7167\u7247"

    const-string/jumbo v14, "true"

    const-string/jumbo v16, "temporary"

    const/16 v15, 0xce

    invoke-direct/range {v12 .. v17}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lv3/f;

    const-string/jumbo v18, "true"

    const-string/jumbo v14, "\u52a8\u6001\u7167\u7247"

    const-string v15, "false"

    const-string/jumbo v17, "temporary"

    const/16 v16, 0xce

    invoke-direct/range {v13 .. v18}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lv3/b;

    const-string/jumbo v13, "\u5e2e\u62cd"

    const/16 v14, 0x93

    invoke-direct {v12, v14, v13, v0}, Lv3/b;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lv3/f;

    const-string v17, "false"

    const-string/jumbo v13, "\u52a8\u6001\u7167\u7247"

    const-string/jumbo v14, "true"

    const-string/jumbo v16, "temporary"

    const/16 v15, 0xce

    invoke-direct/range {v12 .. v17}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lv3/f;

    const-string/jumbo v18, "true"

    const-string/jumbo v14, "\u52a8\u6001\u7167\u7247"

    const-string v15, "false"

    const-string/jumbo v17, "temporary"

    const/16 v16, 0xce

    invoke-direct/range {v13 .. v18}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lv3/b;

    const-string/jumbo v13, "\u6ed1\u52a8\u8fde\u62cd"

    const/16 v14, 0x301

    invoke-direct {v12, v14, v13, v0}, Lv3/b;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lv3/f;

    const-string v17, "false"

    const-string/jumbo v13, "\u52a8\u6001\u7167\u7247"

    const-string v14, "REARx5"

    const-string v16, "persistent"

    const/16 v15, 0xce

    invoke-direct/range {v12 .. v17}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lv3/f;

    const-string v18, "false"

    const-string/jumbo v14, "\u52a8\u6001\u7167\u7247"

    const-string v15, "REARx7"

    const-string v17, "persistent"

    const/16 v16, 0xce

    invoke-direct/range {v13 .. v18}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lv3/f;

    const-string v19, "OFF"

    const-string/jumbo v15, "\u8fd0\u52a8\u6293\u62cd"

    const-string v16, "AUTO"

    const-string v18, "persistent"

    const/16 v17, 0x95

    invoke-direct/range {v14 .. v19}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lv3/f;

    const-string v20, "OFF"

    const-string/jumbo v16, "\u8fd0\u52a8\u6293\u62cd"

    const-string v17, "REARx5"

    const-string v19, "persistent"

    const/16 v18, 0x95

    invoke-direct/range {v15 .. v20}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v16, Lv3/f;

    const-string v21, "OFF"

    const-string/jumbo v17, "\u8fd0\u52a8\u6293\u62cd"

    const-string v18, "REARx7"

    const-string v20, "persistent"

    const/16 v19, 0x95

    invoke-direct/range {v16 .. v21}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lv3/f;

    const-string v18, "false"

    const-string/jumbo v14, "\u6444\u5f71\u98ce\u683c"

    const-string v15, "REARx5"

    const-string/jumbo v17, "temporary"

    const/16 v16, 0xbe

    invoke-direct/range {v13 .. v18}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lv3/f;

    const-string v19, "false"

    const-string/jumbo v15, "\u6444\u5f71\u98ce\u683c"

    const-string v16, "REARx5"

    const-string/jumbo v18, "temporary"

    const/16 v17, 0xbe

    invoke-direct/range {v14 .. v19}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lv3/f;

    const-string/jumbo v20, "true"

    const-string/jumbo v16, "\u6444\u5f71\u98ce\u683c"

    const-string v17, "OFF"

    const-string/jumbo v19, "temporary"

    const/16 v18, 0xbe

    invoke-direct/range {v15 .. v20}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lv3/b;

    const-string/jumbo v13, "\u8d85\u6e05"

    const/16 v14, 0xd1

    invoke-direct {v12, v14, v13, v0}, Lv3/b;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lv3/f;

    const-string v17, "false"

    const-string/jumbo v13, "\u52a8\u6001\u7167\u7247"

    const-string v14, "ON"

    const-string v16, "persistent"

    const/16 v15, 0xce

    invoke-direct/range {v12 .. v17}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lv3/b;

    const-string/jumbo v13, "\u5b9a\u65f6\u8fde\u62cd"

    const/16 v14, 0xf8

    invoke-direct {v12, v14, v13, v0}, Lv3/b;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lv3/f;

    const-string v17, "0"

    const-string/jumbo v13, "\u95ea\u5149\u706f"

    const-string v14, "ON"

    const-string v16, "persistent"

    const/16 v15, 0xc1

    invoke-direct/range {v12 .. v17}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lv3/f;

    const-string v18, "OFF"

    const-string/jumbo v14, "\u8d85\u6e05"

    const-string v15, "ON"

    const-string v17, "persistent"

    const/16 v16, 0xd1

    invoke-direct/range {v13 .. v18}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lv3/f;

    const-string v19, "OFF"

    const-string/jumbo v15, "\u6c7d\u8f66\u6447\u6444"

    const-string v16, "ON"

    const-string v18, "persistent"

    const/16 v17, 0x108

    invoke-direct/range {v14 .. v19}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lv3/f;

    const-string v20, "OFF"

    const-string/jumbo v16, "\u5fae\u8ddd"

    const-string v17, "ON"

    const-string v19, "persistent"

    const/16 v18, 0x209

    invoke-direct/range {v15 .. v20}, Lv3/f;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lv3/b;

    const-string/jumbo v13, "\u8fd0\u52a8\u6293\u62cd"

    const/16 v14, 0x95

    invoke-direct {v12, v14, v13, v0}, Lv3/b;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lv3/b;

    const/16 v13, 0xb22

    const-string/jumbo v14, "\u675c\u6bd4\u89c6\u754c"

    invoke-direct {v12, v13, v14, v0}, Lv3/b;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    sput-object v11, Lv3/e;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "initMutexConfigData: "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "MutexConfigManager"

    invoke-static {v11, v0}, Lcom/android/camera/log/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v9

    const-string v0, "init mutex config("

    const-string v9, "ms)"

    invoke-static {v12, v13, v0, v9}, LF1/r2;->b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v9, v3, [Ljava/lang/Object;

    const-string v10, "<application init> consume time:"

    invoke-static {v11, v0, v9, v10}, LF1/Q;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7, v8, v0}, LF1/q2;->b(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "ApplicationInit"

    invoke-static {v8, v0, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v7

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v8, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->i()I

    move-result v8

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->J0()F

    move-result v9

    const-string v10, "bugHunterType"

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-class v13, Ljava/lang/Integer;

    invoke-static {v13}, Lyh/b;->a(Ljava/lang/Class;)V

    :try_start_2
    sget-object v0, Lyh/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v14, v0, Ljava/lang/Long;

    if-eqz v14, :cond_b

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    long-to-int v0, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_b
    instance-of v14, v0, Ljava/lang/Double;

    check-cast v0, Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {v0}, LPu/l;->a(Ljava/lang/Throwable;)LPu/k$a;

    move-result-object v0

    :goto_3
    invoke-static {v0}, LPu/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v14

    if-eqz v14, :cond_e

    sget-object v15, Luh/a;->a:Luh/a;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Luh/a;->b()Z

    move-result v15

    if-eqz v15, :cond_c

    goto :goto_4

    :cond_c
    move-object v14, v6

    :goto_4
    sget-object v15, Lyh/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    goto :goto_5

    :cond_d
    move-object v10, v6

    :goto_5
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "failed cast "

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "CameraDynamicRepository"

    invoke-static {v10, v6, v14}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    instance-of v6, v0, LPu/k$a;

    if-eqz v6, :cond_f

    const/4 v6, 0x0

    goto :goto_6

    :cond_f
    move-object v6, v0

    :goto_6
    if-nez v6, :cond_10

    goto :goto_7

    :cond_10
    move-object v12, v6

    :goto_7
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v6, LJe/c$b;->a:LJe/c;

    iget-object v6, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v8, v7, LF6/q;->a:I

    iput v9, v7, LF6/q;->k:F

    sput v11, LF6/b;->b:I

    sget-object v6, LF6/b;->a:Ljava/lang/Integer;

    if-nez v6, :cond_11

    const-string v6, "persist.camera.bugHunterType"

    invoke-static {v6, v11}, Lur/g;->e(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sput-object v6, LF6/b;->a:Ljava/lang/Integer;

    :cond_11
    sget-object v6, LF6/b;->a:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v11, :cond_12

    sput v8, LF6/b;->b:I

    goto :goto_8

    :cond_12
    if-eq v0, v11, :cond_13

    sput v0, LF6/b;->b:I

    :cond_13
    :goto_8
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v8, LF6/b;->b:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "sBugHunterProp="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", bugHunterCloud="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bugHunterAppConfig=-1, sBugHunterType="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "BugHunterManager"

    invoke-static {v6, v0}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LF6/q;->t:Ljava/lang/Integer;

    if-nez v0, :cond_14

    const-string/jumbo v0, "vendor.camera.sensor.logsystem"

    invoke-static {v0, v3}, Lur/g;->e(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, LF6/q;->t:Ljava/lang/Integer;

    :cond_14
    sget-object v0, LF6/q;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x2

    const/4 v8, 0x1

    if-eq v0, v8, :cond_16

    sget-boolean v0, LQa/b;->h:Z

    if-nez v0, :cond_16

    sget v0, LF6/b;->b:I

    if-ne v0, v6, :cond_15

    goto :goto_9

    :cond_15
    move v8, v3

    :cond_16
    :goto_9
    iput-boolean v8, v7, LF6/q;->n:Z

    if-eqz v8, :cond_18

    iget v0, v7, LF6/q;->a:I

    if-ne v0, v6, :cond_17

    new-instance v0, LG6/g;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v0, v6}, LG6/g;-><init>(Landroid/app/Application;)V

    goto :goto_a

    :cond_17
    new-instance v0, LG6/c;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v0, v6}, LG6/c;-><init>(Landroid/app/Application;)V

    :goto_a
    iput-object v0, v7, LF6/q;->j:LG6/e;

    :cond_18
    sget-boolean v0, LF6/j;->a:Z

    if-eqz v0, :cond_19

    sget-object v0, LF6/j;->g:Landroid/os/HandlerThread;

    if-nez v0, :cond_19

    new-instance v0, Landroid/os/HandlerThread;

    const-string v6, "main_looper_watcher"

    const/4 v7, -0x2

    invoke-direct {v0, v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF6/j;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v6, LF6/i;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v6}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v6, "MainLooperWatcher"

    const-string v7, "init done. "

    invoke-static {v6, v7, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    sget-object v0, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v6, LF6/n;

    invoke-direct {v6, v3}, LF6/n;-><init>(I)V

    invoke-static {v0, v6}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-static {}, Lu6/i;->c()Lu6/i;

    move-result-object v6

    new-instance v7, LV9/c2;

    invoke-direct {v7, v2}, LV9/c2;-><init>(I)V

    iput-object v7, v6, Lu6/i;->h:LV9/c2;

    new-instance v2, LAc/e;

    const/4 v6, 0x3

    invoke-direct {v2, v1, v6}, LAc/e;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v6, LS8/h;

    invoke-direct {v6, v2, v3}, LS8/h;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v6}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    sget-object v0, Lf2/e;->c:Lf2/e;

    if-nez v0, :cond_1b

    const-class v2, Lf2/e;

    monitor-enter v2

    :try_start_3
    sget-object v0, Lf2/e;->c:Lf2/e;

    if-nez v0, :cond_1a

    new-instance v0, Lf2/e;

    invoke-direct {v0, v1}, Lf2/e;-><init>(Lcom/android/camera/CameraAppImpl;)V

    sput-object v0, Lf2/e;->c:Lf2/e;

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_c

    :cond_1a
    :goto_b
    monitor-exit v2

    goto :goto_d

    :goto_c
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1b
    :goto_d
    invoke-static {v1}, Lmiuix/autodensity/AutoDensityConfig;->init(Landroid/app/Application;)Lmiuix/autodensity/AutoDensityConfig;

    sget-object v0, Lf2/d;->c:Lf2/d;

    invoke-virtual {v0, v3}, Lf2/d;->a(I)V

    sget-object v0, LF1/D2;->f:LF1/D2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v0, LF1/D2;->b:Landroid/content/ContentResolver;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, LF1/D2;->c:Landroid/view/accessibility/AccessibilityManager;

    new-instance v2, LF1/C2;

    invoke-direct {v2, v0}, LF1/C2;-><init>(LF1/D2;)V

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-object v0, Lrf/a;->e:Ltf/b;

    if-nez v0, :cond_1c

    new-instance v0, Ldw/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrf/a;->e:Ltf/b;

    :cond_1c
    new-instance v0, Ln7/a;

    invoke-direct {v0}, LRh/B;-><init>()V

    sput-object v0, Lrf/a;->d:LRh/B;

    invoke-static {}, Lyp/b;->c()Lyp/b;

    move-result-object v0

    invoke-virtual {v0}, Lyp/b;->e()V

    const-string v0, "CameraAppImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate: cost = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v1}, LF1/q2;->b(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
