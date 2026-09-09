.class public final Lxcrash/XCrash;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxcrash/XCrash$InitParameters;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/util/concurrent/Semaphore;

.field public static e:Landroid/content/Context;

.field public static f:Ljava/lang/String;

.field public static g:Z

.field public static h:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public static final i:Lxcrash/XCrash$a;

.field public static nativeLibDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxcrash/XCrash$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lxcrash/XCrash;->i:Lxcrash/XCrash$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lxcrash/XCrash;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lxcrash/XCrash;->init(Landroid/content/Context;Lxcrash/XCrash$InitParameters;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lxcrash/XCrash$InitParameters;)I
    .locals 36

    const-string v0, "Crashlytics won\'t catch ANR, processName: "

    const-string v1, "packageCodePath: "

    const-string v2, "nativeLibDir: "

    const-class v3, Lxcrash/XCrash;

    monitor-enter v3

    .line 2
    :try_start_0
    sget-boolean v4, Lxcrash/XCrash;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 3
    monitor-exit v3

    return v5

    .line 4
    :cond_0
    :try_start_1
    invoke-static/range {p0 .. p0}, LWd/h;->h(Landroid/content/Context;)V

    .line 5
    const-string v4, "XCrash"

    const-string v6, "Crashlytics init, version: 2.0.1"

    invoke-static {v4, v6}, LWd/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 6
    sput-boolean v4, Lxcrash/XCrash;->a:Z

    if-nez p0, :cond_1

    .line 7
    const-string v0, "XCrash"

    const-string v1, "Crashlytics init failed, Context is null !"

    invoke-static {v0, v1}, LWd/h;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v3

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 9
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v8, v6

    goto :goto_0

    :cond_2
    move-object/from16 v8, p0

    :goto_0
    if-nez p1, :cond_3

    .line 10
    new-instance v6, Lxcrash/XCrash$InitParameters;

    invoke-direct {v6}, Lxcrash/XCrash$InitParameters;-><init>()V

    goto :goto_1

    :cond_3
    move-object/from16 v6, p1

    .line 11
    :goto_1
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 12
    sput-object v7, Lxcrash/XCrash;->b:Ljava/lang/String;

    .line 13
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 14
    const-string v9, "unknown"

    sput-object v9, Lxcrash/XCrash;->b:Ljava/lang/String;

    .line 15
    :cond_4
    iget-object v9, v6, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v35, 0x0

    if-eqz v9, :cond_6

    .line 16
    :try_start_3
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-object/from16 v9, v35

    .line 17
    :goto_2
    :try_start_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 18
    const-string v9, "unknown"

    .line 19
    :cond_5
    iput-object v9, v6, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    .line 20
    :cond_6
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    sput-object v9, Lxcrash/XCrash;->nativeLibDir:Ljava/lang/String;

    .line 21
    const-string v9, "XCrash"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lxcrash/XCrash;->nativeLibDir:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, LWd/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v2, "XCrash"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LWd/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v1, Ljava/io/File;

    sget-object v2, Lxcrash/XCrash;->nativeLibDir:Ljava/lang/String;

    const-string v9, "libxcrash_dumper.so"

    invoke-direct {v1, v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    .line 25
    const-string v1, "XCrash"

    const-string v2, "libxcrash_dumper.so not exist in nativeLibraryDir"

    invoke-static {v1, v2}, LWd/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, ""

    sput-object v1, Lxcrash/XCrash;->nativeLibDir:Ljava/lang/String;

    move/from16 v34, v4

    goto :goto_3

    :cond_7
    move/from16 v34, v5

    .line 27
    :goto_3
    iget-object v1, v6, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/tombstones"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    .line 29
    :cond_8
    iget-object v1, v6, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    sput-object v1, Lxcrash/XCrash;->c:Ljava/lang/String;

    .line 30
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    .line 31
    iget-boolean v1, v6, Lxcrash/XCrash$InitParameters;->f:Z

    if-nez v1, :cond_a

    iget-boolean v1, v6, Lxcrash/XCrash$InitParameters;->D:Z

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    move-object/from16 v11, v35

    goto :goto_5

    .line 32
    :cond_a
    :goto_4
    invoke-static {v10}, LYz/a;->i(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    iget-boolean v2, v6, Lxcrash/XCrash$InitParameters;->D:Z

    if-eqz v2, :cond_c

    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 35
    :cond_b
    const-string v2, "XCrash"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LWd/h;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-boolean v5, v6, Lxcrash/XCrash$InitParameters;->D:Z

    :cond_c
    move-object v11, v1

    .line 37
    :goto_5
    sget-object v12, Lxcrash/e;->i:Lxcrash/e;

    .line 38
    iget-object v13, v6, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    iget v14, v6, Lxcrash/XCrash$InitParameters;->h:I

    iget v15, v6, Lxcrash/XCrash$InitParameters;->s:I

    iget v0, v6, Lxcrash/XCrash$InitParameters;->G:I

    iget v1, v6, Lxcrash/XCrash$InitParameters;->d:I

    iget v2, v6, Lxcrash/XCrash$InitParameters;->e:I

    iget v4, v6, Lxcrash/XCrash$InitParameters;->c:I

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v4

    invoke-virtual/range {v12 .. v19}, Lxcrash/e;->f(Ljava/lang/String;IIIIII)V

    move-object v0, v12

    .line 39
    iget-boolean v1, v6, Lxcrash/XCrash$InitParameters;->f:Z

    if-nez v1, :cond_d

    iget-boolean v1, v6, Lxcrash/XCrash$InitParameters;->q:Z

    if-nez v1, :cond_d

    iget-boolean v1, v6, Lxcrash/XCrash$InitParameters;->D:Z

    if-eqz v1, :cond_e

    .line 40
    :cond_d
    instance-of v1, v8, Landroid/app/Application;

    if-eqz v1, :cond_e

    .line 41
    sget-object v1, Lxcrash/c;->c:Lxcrash/c;

    move-object v2, v8

    check-cast v2, Landroid/app/Application;

    .line 42
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v1, Lxcrash/c;->a:Ljava/util/LinkedList;

    .line 43
    new-instance v1, Lxcrash/b;

    .line 44
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v5, v1, Lxcrash/b;->a:I

    .line 46
    iput-boolean v5, v1, Lxcrash/b;->b:Z

    .line 47
    invoke-virtual {v2, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 48
    :cond_e
    iget-boolean v1, v6, Lxcrash/XCrash$InitParameters;->f:Z

    if-eqz v1, :cond_f

    .line 49
    sget-object v9, Lxcrash/h;->r:Lxcrash/h;

    .line 50
    sget-boolean v12, Lxcrash/XCrash;->g:Z

    sget-object v13, Lxcrash/XCrash;->b:Ljava/lang/String;

    iget-object v14, v6, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    iget-object v15, v6, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    iget-boolean v1, v6, Lxcrash/XCrash$InitParameters;->g:Z

    iget v2, v6, Lxcrash/XCrash$InitParameters;->i:I

    iget v4, v6, Lxcrash/XCrash$InitParameters;->j:I

    iget v7, v6, Lxcrash/XCrash$InitParameters;->k:I

    iget-boolean v5, v6, Lxcrash/XCrash$InitParameters;->l:Z

    move-object/from16 p0, v0

    iget-boolean v0, v6, Lxcrash/XCrash$InitParameters;->m:Z

    move/from16 v21, v0

    iget-boolean v0, v6, Lxcrash/XCrash$InitParameters;->n:Z

    move/from16 v22, v0

    iget v0, v6, Lxcrash/XCrash$InitParameters;->o:I

    move/from16 v23, v0

    iget-object v0, v6, Lxcrash/XCrash$InitParameters;->p:[Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v4

    move/from16 v20, v5

    move/from16 v19, v7

    invoke-virtual/range {v9 .. v24}, Lxcrash/h;->d(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZZZI[Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    move-object/from16 p0, v0

    .line 51
    :goto_6
    iget-boolean v0, v6, Lxcrash/XCrash$InitParameters;->D:Z

    .line 52
    iget-boolean v12, v6, Lxcrash/XCrash$InitParameters;->q:Z

    if-nez v12, :cond_11

    if-eqz v0, :cond_10

    goto :goto_7

    :cond_10
    const/4 v5, 0x0

    goto :goto_8

    .line 53
    :cond_11
    :goto_7
    sget-object v7, Lxcrash/NativeHandler;->h:Lxcrash/NativeHandler;

    .line 54
    sget-object v9, Lxcrash/XCrash;->b:Ljava/lang/String;

    iget-object v10, v6, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    iget-object v11, v6, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    iget-boolean v13, v6, Lxcrash/XCrash$InitParameters;->r:Z

    iget v14, v6, Lxcrash/XCrash$InitParameters;->t:I

    iget v15, v6, Lxcrash/XCrash$InitParameters;->u:I

    iget v1, v6, Lxcrash/XCrash$InitParameters;->v:I

    iget-boolean v2, v6, Lxcrash/XCrash$InitParameters;->w:Z

    iget-boolean v4, v6, Lxcrash/XCrash$InitParameters;->x:Z

    iget-boolean v5, v6, Lxcrash/XCrash$InitParameters;->y:Z

    move/from16 v24, v0

    iget-boolean v0, v6, Lxcrash/XCrash$InitParameters;->z:Z

    move/from16 v20, v0

    iget-boolean v0, v6, Lxcrash/XCrash$InitParameters;->A:Z

    move/from16 v21, v0

    iget v0, v6, Lxcrash/XCrash$InitParameters;->B:I

    move/from16 v22, v0

    iget-object v0, v6, Lxcrash/XCrash$InitParameters;->C:[Ljava/lang/String;

    move-object/from16 v23, v0

    iget-boolean v0, v6, Lxcrash/XCrash$InitParameters;->E:Z

    move/from16 v25, v0

    iget-boolean v0, v6, Lxcrash/XCrash$InitParameters;->F:Z

    move/from16 v26, v0

    iget v0, v6, Lxcrash/XCrash$InitParameters;->H:I

    move/from16 v27, v0

    iget v0, v6, Lxcrash/XCrash$InitParameters;->I:I

    move/from16 v28, v0

    iget v0, v6, Lxcrash/XCrash$InitParameters;->J:I

    move/from16 v29, v0

    iget-boolean v0, v6, Lxcrash/XCrash$InitParameters;->K:Z

    move/from16 v30, v0

    iget-boolean v0, v6, Lxcrash/XCrash$InitParameters;->L:Z

    iget-object v6, v6, Lxcrash/XCrash$InitParameters;->M:Lxcrash/f;

    sget-object v33, Lxcrash/XCrash;->nativeLibDir:Ljava/lang/String;

    move/from16 v31, v0

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v32, v6

    invoke-virtual/range {v7 .. v34}, Lxcrash/NativeHandler;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;ZZZIIIZZLxcrash/f;Ljava/lang/String;Z)I

    move-result v5

    .line 55
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lxcrash/e;->g()V

    .line 56
    sget-object v0, Lxcrash/XCrash;->d:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_12

    .line 57
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 58
    :cond_12
    sput-object v35, Lxcrash/XCrash;->e:Landroid/content/Context;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    monitor-exit v3

    return v5

    :goto_9
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public static initHooker(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lxcrash/XCrash;->d:Ljava/util/concurrent/Semaphore;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lxcrash/XCrash;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    sput-object p0, Lxcrash/XCrash;->e:Landroid/content/Context;

    sput-object p1, Lxcrash/XCrash;->f:Ljava/lang/String;

    :try_start_0
    sget-object p0, Lxcrash/XCrash;->i:Lxcrash/XCrash$a;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 p0, 0x1

    sput-boolean p0, Lxcrash/XCrash;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "OneTrack-Crashlytics-"

    const-string v0, "XCrash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "JavaCrashHandler setDefaultUncaughtExceptionHandler failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static testJavaCrash(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance p0, Lxcrash/XCrash$b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "xcrash_test_java_thread"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "test java exception"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static testNativeCrash(Z)V
    .locals 1

    sget-object v0, Lxcrash/NativeHandler;->h:Lxcrash/NativeHandler;

    invoke-virtual {v0, p0}, Lxcrash/NativeHandler;->e(Z)V

    return-void
.end method
