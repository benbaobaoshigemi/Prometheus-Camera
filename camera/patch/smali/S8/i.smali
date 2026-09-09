.class public final LS8/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LS8/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "<set-?>"

    const-string v3, "WatermarkUtils"

    const-string v4, "initCloudWatermarkData:error watermarksDir is null"

    const-string v0, "clear mivi data: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz p1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    :goto_0
    if-eqz p1, :cond_1

    const-string/jumbo v8, "video "

    goto :goto_1

    :cond_1
    const-string v8, "photo "

    :goto_1
    invoke-static/range {p1 .. p1}, LS8/d;->b(Z)LGg/P;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v9}, LGg/P;->k()Ljava/nio/file/Path;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v13, v9, LGg/P;->l:LGg/P$a;

    :try_start_1
    invoke-interface {v12}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v12

    invoke-static {v1, v12}, LS8/a;->k(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {}, LS8/a;->l()V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, LGg/O;

    invoke-direct {v12, v13, v10}, LGg/O;-><init>(LGg/P$a;LTu/e;)V

    invoke-static {v12}, Lyw/f;->c(Lev/p;)Ljava/lang/Object;

    invoke-virtual {v9, v11}, LGg/P;->i(Z)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_2

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, v7, :cond_4

    goto :goto_3

    :goto_2
    move-object v7, v0

    goto/16 :goto_6

    :cond_2
    :goto_3
    iget-object v7, v9, LGg/P;->j:Ljava/nio/file/Path;

    invoke-interface {v7}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, LS8/a;->c(Ljava/io/File;)V

    invoke-static/range {p0 .. p1}, LS8/a;->h(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v0, "initCloudWatermarkData: watermarksDir is null"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v3, v0, v7}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-static {v7, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v9, LGg/P;->j:Ljava/nio/file/Path;

    invoke-virtual {v9}, LGg/P;->k()Ljava/nio/file/Path;

    move-result-object v7

    invoke-interface {v7}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v1, v7}, LS8/a;->k(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, LGg/O;

    invoke-direct {v7, v13, v10}, LGg/O;-><init>(LGg/P$a;LTu/e;)V

    invoke-static {v7}, Lyw/f;->c(Lev/p;)Ljava/lang/Object;

    invoke-virtual {v9}, LGg/P;->p()V

    :cond_4
    invoke-virtual {v9}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-static {}, Lci/d;->b()Lci/b;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, "pref_watermark_clear_mivi_data_key"

    const-string v14, "pref_video_watermark_clear_mivi_data_key"

    if-eqz p1, :cond_5

    move-object v15, v14

    goto :goto_4

    :cond_5
    move-object v15, v13

    :goto_4
    :try_start_2
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v10, v15}, Lbi/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v3, v0, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v10, :cond_7

    invoke-virtual {v7}, Lcom/xiaomi/cam/watermark/a;->b()V

    invoke-static {}, LS8/a;->a()Z

    invoke-static {}, LS8/a;->l()V

    invoke-static {}, Lci/d;->b()Lci/b;

    move-result-object v0

    if-eqz p1, :cond_6

    move-object v13, v14

    :cond_6
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v10, v13}, Lbi/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/xiaomi/cam/watermark/a;->m0()V

    :cond_7
    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->x()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, LJe/c;->y()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, LJe/d;->b()Z

    move-result v13

    invoke-virtual {v7, v10, v12, v13}, Lcom/xiaomi/cam/watermark/a;->J0(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v10

    invoke-virtual {v10}, Lu6/f;->Z()Lj9/e;

    move-result-object v10

    invoke-static {v10}, Lj9/f;->F(Lj9/e;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sget-object v12, Lcom/xiaomi/camera/mivi/watermark/MIVIWatermarkVersion;->VERSION_3_1_00:Lcom/xiaomi/camera/mivi/watermark/MIVIWatermarkVersion;

    invoke-virtual {v12}, Lcom/xiaomi/camera/mivi/watermark/MIVIWatermarkVersion;->getValue()F

    move-result v12

    cmpg-float v12, v10, v12

    if-gez v12, :cond_8

    invoke-virtual {v0}, LJe/c;->F1()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/xiaomi/cam/watermark/a;->M0(Z)V

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Lcom/xiaomi/cam/watermark/a;->L0()V

    invoke-virtual {v7, v10}, Lcom/xiaomi/cam/watermark/a;->C0(F)V

    :goto_5
    invoke-virtual {v7}, Lcom/xiaomi/cam/watermark/a;->n0()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :goto_6
    :try_start_3
    iget-object v0, v9, LGg/P;->j:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, LS8/a;->c(Ljava/io/File;)V

    invoke-static/range {p0 .. p1}, LS8/a;->h(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v9, LGg/P;->j:Ljava/nio/file/Path;

    invoke-virtual {v9}, LGg/P;->k()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v1, v0}, LS8/a;->k(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {}, LS8/a;->l()V

    iget-object v0, v9, LGg/P;->l:LGg/P$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LGg/O;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LGg/O;-><init>(LGg/P$a;LTu/e;)V

    invoke-static {v1}, Lyw/f;->c(Lev/p;)Ljava/lang/Object;

    invoke-virtual {v9}, LGg/P;->p()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    :goto_7
    iget-object v1, v9, LGg/P;->l:LGg/P$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LGg/O;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, LGg/O;-><init>(LGg/P$a;LTu/e;)V

    invoke-static {v2}, Lyw/f;->c(Lev/p;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "initCloudWatermarkData: error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    const-string v0, "initCloudWatermarkData: "

    invoke-static {v8, v0}, LB/c;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7, v0}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_9
    const-string v0, "initCloudWatermarkData cost = "

    invoke-static {v8, v0}, LB/c;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5, v6, v0}, LF1/q2;->b(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Z)Z
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "initCloudWatermarkEnv ver: 2.15"

    const-string v3, "WatermarkUtils"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, LGg/u$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, LJe/d;->a:Ljava/lang/String;

    const-string/jumbo v4, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    iput-object v2, v1, LGg/u$a;->a:Ljava/lang/String;

    const-string/jumbo v2, "ro.theme_customize"

    const-string v6, ""

    invoke-static {v2, v6}, Lur/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v2, "ro.boot.product.theme_customize"

    invoke-static {v2, v6}, Lur/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, LGg/u$a;->d:Ljava/lang/String;

    :cond_2
    const-string/jumbo v2, "ro.miui.build.region"

    const-string v6, "cn"

    invoke-static {v2, v6}, Lur/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v5

    :goto_1
    iput-object v2, v1, LGg/u$a;->c:Ljava/lang/String;

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, LJe/c;->y()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, LJe/c;->i2()Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "leica"

    invoke-virtual {v9, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v1, LGg/u$a;->b:Ljava/lang/String;

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v8, v5

    :goto_2
    iput-object v8, v1, LGg/u$a;->b:Ljava/lang/String;

    :goto_3
    if-eqz v6, :cond_6

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object v6, v5

    :goto_4
    iput-object v6, v1, LGg/u$a;->e:Ljava/lang/String;

    if-eqz v7, :cond_7

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move-object v6, v5

    :goto_5
    iput-object v6, v1, LGg/u$a;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "initWmManager:  "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", isVideoWM: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, LS8/a;->h(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_8

    const-string p0, "initCloudWatermarkEnv: watermarksDir is null"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initCloudWatermarkEnv: workingDir = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, LS8/d;->b(Z)LGg/P;

    move-result-object p1

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v2}, LJe/c;->k2()Z

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "dir"

    invoke-static {v3, v4}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setAppContext: deviceInfo: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " withMivi: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, LGg/P;->a:Ljava/lang/String;

    invoke-static {v6, v4}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, LGg/s;->a:Z

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p1, LGg/P;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_9

    iget-object v4, p1, LGg/P;->b:LGg/V;

    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v6

    const-string v7, "init: is ce:"

    invoke-static {v7, v6}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, LGg/V;->a:Ljava/lang/String;

    invoke-static {v7, v6}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v4, LGg/V;->b:Ljava/lang/String;

    invoke-virtual {p0, v6, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "context.getSharedPrefere\u2026me, Context.MODE_PRIVATE)"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, v4, LGg/V;->c:Landroid/content/SharedPreferences;

    :cond_9
    iput-object v1, p1, LGg/P;->h:LGg/u$a;

    iput-boolean v2, p1, LGg/P;->i:Z

    iput-object v3, p1, LGg/P;->j:Ljava/nio/file/Path;

    iget-object p0, p1, LGg/P;->k:LGg/P$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LGg/O;

    invoke-direct {p1, p0, v5}, LGg/O;-><init>(LGg/P$a;LTu/e;)V

    invoke-static {p1}, Lyw/f;->c(Lev/p;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public static c(ZLcom/android/camera/Camera;Lcom/android/camera/a$c;)V
    .locals 2

    invoke-static {p0}, Lcom/android/camera/data/data/w;->p0(Z)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->k0()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, LH6/d;->c()Z

    move-result p0

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sget-boolean v1, LS8/i;->a:Z

    if-nez v1, :cond_3

    invoke-static {}, LSh/c;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, LH6/d;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p0, :cond_3

    invoke-static {}, LK2/b;->a0()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->S()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    sput-boolean v0, LS8/i;->a:Z

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sSDKScheduler:Lio/reactivex/v;

    new-instance v0, LF1/E2;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p2, p0}, LF1/E2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_3
    :goto_1
    return-void
.end method
