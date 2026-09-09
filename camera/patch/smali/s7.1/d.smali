.class public final Ls7/d;
.super Ls7/a;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lp7/d;-><init>()V

    iput p1, p0, Ls7/d;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls7/d;->c:Z

    return-void
.end method


# virtual methods
.method public final a(LRh/r;)V
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRh/r<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "parallelTaskData"

    invoke-static {v1, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "algo mark: "

    const-string v7, "BugHunter parse errorCode = "

    const-string v3, "algo mark: "

    const-string v4, "insert full size picture:"

    iget-object v5, v1, LRh/r;->k:LRh/A;

    iget-object v11, v5, LRh/A;->g:Ljava/lang/String;

    invoke-static {v11}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v5, v1, LRh/r;->a:LRh/z;

    iget-object v5, v5, LRh/z;->i:[B

    invoke-static {v5}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v8, v1, LRh/r;->a:LRh/z;

    iget v9, v8, LRh/z;->a:I

    iget v10, v8, LRh/z;->b:I

    iget v8, v8, LRh/z;->c:I

    iget-object v12, v1, LRh/r;->k:LRh/A;

    iget-object v12, v12, LRh/A;->l:Ljava/lang/Object;

    instance-of v13, v12, Lk7/A;

    const/16 v30, 0x0

    if-eqz v13, :cond_0

    check-cast v12, Lk7/A;

    move-object/from16 v27, v12

    goto :goto_0

    :cond_0
    move-object/from16 v27, v30

    :goto_0
    invoke-virtual {v1}, LRh/r;->m()Z

    move-result v15

    iget-object v12, v1, LRh/r;->a:LRh/z;

    iget-wide v13, v12, LRh/z;->f:J

    move-object/from16 v28, v7

    const/16 v31, 0x1

    iget-wide v6, v12, LRh/z;->g:J

    iget-object v12, v1, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v12}, Lcom/xiaomi/camera/core/ExifData;->getLocation()Landroid/location/Location;

    move-result-object v18

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v12

    move-wide/from16 v22, v6

    iget-object v6, v1, LRh/r;->b:LRh/a;

    iget-boolean v6, v6, LRh/a;->i:Z

    iget-object v7, v1, LRh/r;->q:Lcom/android/camera/module/Camera2Module$e;

    move/from16 v32, v6

    iget-object v6, v1, LRh/r;->m:LZp/c;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    move/from16 v20, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move/from16 v20, v15

    const-string v6, "interceptorChain is null"

    :goto_1
    iget-object v15, v0, Lp7/d;->a:Ljava/lang/String;

    move-object/from16 v33, v2

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v34, v7

    const-string/jumbo v7, "save: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " | "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " | "

    invoke-static {v2, v7, v6}, LS1/h;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v15, v2, v7}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    const-string v2, "intern(...)"

    invoke-static {v7, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v7

    :try_start_0
    invoke-static {}, LBw/i;->u()LF2/d;

    move-result-object v2

    iget-object v2, v2, LF2/d;->a:LF2/b;

    invoke-virtual {v2, v11}, LF2/b;->f(Ljava/lang/String;)LE2/a;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lav/j;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lk7/K;->t(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    iget-object v15, v0, Lp7/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v2

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v15, v4, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v7

    goto/16 :goto_2a

    :cond_2
    move-object/from16 v16, v2

    :goto_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lav/j;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lk7/K;->t(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v11}, Lk7/n;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v2, v1, LRh/r;->j:LRh/y;

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-virtual {v4}, Lu6/f;->P()Lj9/e;

    move-result-object v4

    invoke-virtual {v1}, LRh/r;->N()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v6

    invoke-static {v4, v6}, Lj9/f;->p(Lj9/e;Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "getDsacQuickShotValue(...)"

    invoke-static {v4, v6}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v2, LRh/y;->s:Ljava/lang/String;

    if-nez v16, :cond_4

    invoke-static {v12}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v12, v11}, Ls7/d;->h(Landroid/app/Application;Ljava/lang/String;)LE2/a;

    move-result-object v2

    move-object v6, v2

    goto :goto_3

    :cond_4
    move-object/from16 v6, v16

    :goto_3
    const-wide/16 v36, 0x0

    if-eqz v6, :cond_5

    invoke-virtual {v6}, LE2/a;->b()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move/from16 v17, v8

    move/from16 v21, v10

    move-object v8, v12

    move-object/from16 v16, v15

    move/from16 v15, v20

    move-object/from16 v2, v27

    move/from16 v20, v9

    goto/16 :goto_c

    :cond_6
    iget-object v2, v0, Lp7/d;->a:Ljava/lang/String;

    iget-object v4, v6, LE2/a;->d:Ljava/lang/String;

    iget-object v13, v6, LE2/a;->c:Ljava/lang/Long;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v13, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v12, v11, v4}, Lk7/K;->i(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v6, LE2/a;->c:Ljava/lang/Long;

    const-string v4, "getMediaStoreId(...)"

    invoke-static {v3, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "withAppendedId(...)"

    invoke-static {v2, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Ls7/a;->f(LRh/r;)I

    move-result v25

    invoke-static {v5}, LLu/f;->f([B)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, LRh/r;->l:LRh/C;

    iget-boolean v3, v3, LRh/C;->d:Z

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    move/from16 v3, v31

    :goto_5
    iget-object v4, v1, LRh/r;->n:Lp7/e;

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    move-object/from16 v4, v30

    :goto_6
    if-eqz v4, :cond_a

    iget-object v4, v4, Lp7/e;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move/from16 v13, v31

    if-ne v4, v13, :cond_a

    const/4 v4, 0x1

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_b

    new-instance v14, LNf/b;

    invoke-direct {v14, v1}, LNf/b;-><init>(LRh/r;)V

    invoke-static {}, LQg/e;->d()Z

    move-result v26

    move-object v13, v12

    new-instance v12, Lk7/H;

    const/16 v24, 0x0

    move-object/from16 v16, v2

    move/from16 v19, v8

    move/from16 v21, v10

    move-object/from16 v17, v15

    move/from16 v15, v20

    move/from16 v20, v9

    invoke-direct/range {v12 .. v26}, Lk7/H;-><init>(Landroid/app/Application;LNf/b;ZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIJLjava/lang/String;IZ)V

    move-object/from16 v16, v17

    move/from16 v17, v19

    const-string v8, "Storage.updateImage(writer)"

    invoke-static {v8, v12}, Lvr/a0;->a(Ljava/lang/String;Lev/a;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    move-object v14, v8

    move-object v8, v13

    goto :goto_a

    :cond_b
    move/from16 v17, v8

    move/from16 v21, v10

    move-object v13, v12

    move-object/from16 v16, v15

    move/from16 v15, v20

    move/from16 v20, v9

    invoke-static {v5}, LLu/f;->f([B)Z

    move-result v8

    if-eqz v8, :cond_c

    sget-object v8, Lb2/b;->a:Lb2/b;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v15}, Lb2/b;->i([BZ)Ljava/nio/ByteBuffer;

    move-result-object v8

    :goto_8
    move-object v14, v8

    goto :goto_9

    :cond_c
    iget-object v8, v1, LRh/r;->l:LRh/C;

    iget-boolean v8, v8, LRh/C;->d:Z

    if-eqz v8, :cond_d

    sget-object v8, Lb2/b;->a:Lb2/b;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v15}, Lb2/b;->h([BZ)Ljava/nio/ByteBuffer;

    move-result-object v8

    goto :goto_8

    :cond_d
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    goto :goto_8

    :goto_9
    invoke-static {}, LQg/e;->d()Z

    move-result v26

    new-instance v12, Lk7/F;

    const/16 v24, 0x0

    move/from16 v19, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v2

    invoke-direct/range {v12 .. v26}, Lk7/F;-><init>(Landroid/app/Application;Ljava/nio/ByteBuffer;ZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIJLjava/lang/String;IZ)V

    move-object v8, v13

    move-object/from16 v16, v17

    move/from16 v17, v19

    const-string v9, "Storage.updateImage"

    invoke-static {v9, v12}, Lvr/a0;->a(Ljava/lang/String;Lev/a;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    move-object v14, v9

    :goto_a
    if-eqz v4, :cond_e

    if-eqz v3, :cond_e

    if-eqz v14, :cond_e

    iget-object v3, v0, Lp7/d;->a:Ljava/lang/String;

    const-string v4, "doStorage(updateImage): defer + cai \u2192 signImage(file)"

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lb2/b;->a:Lb2/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lb2/b;->g(Ljava/lang/String;)V

    :cond_e
    if-eqz v14, :cond_10

    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object v4, v14

    move-object/from16 v3, v16

    move/from16 v2, v17

    invoke-virtual/range {v0 .. v5}, Ls7/d;->g(LRh/r;ILjava/lang/String;Landroid/net/Uri;[B)V

    sget-object v2, LPu/A;->a:LPu/A;

    :cond_f
    move-object/from16 v2, v27

    goto :goto_b

    :cond_10
    if-eqz v27, :cond_f

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v13, v27

    invoke-interface/range {v13 .. v18}, Lk7/A;->o(Landroid/net/Uri;ZLjava/lang/String;IZ)V

    move-object v2, v13

    sget-object v3, LPu/A;->a:LPu/A;

    :goto_b
    if-eqz v2, :cond_11

    new-instance v3, LY9/c;

    const/4 v13, 0x1

    invoke-direct {v3, v13, v14, v5}, LY9/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lk7/A;->f(Ljava/util/function/Consumer;)V

    sget-object v3, LPu/A;->a:LPu/A;

    :cond_11
    invoke-static {v8, v6}, LH2/a;->c(Landroid/content/Context;LE2/a;)V

    invoke-static {v8, v14}, LF1/w4;->g(Landroid/app/Application;Landroid/net/Uri;)V

    invoke-static {}, LF6/b;->c()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, LF6/q;->l()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, v1, LRh/r;->f:LRh/h;

    iget-object v3, v3, LRh/h;->b:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v4, Lga/C0;->C2:Lga/D0;

    const v5, 0xbabe

    invoke-static {v3, v4, v5}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v0, Lp7/d;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v8, v28

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v1, LRh/r;->f:LRh/h;

    iget-object v4, v4, LRh/h;->b:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v6, Lga/C0;->c2:Lga/D0;

    invoke-static {v4, v6, v5}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3, v4}, Lk7/A;->a(ILjava/lang/String;)V

    sget-object v2, LPu/A;->a:LPu/A;

    :cond_12
    sget-object v2, LPu/A;->a:LPu/A;

    move-object v3, v7

    move-object/from16 v14, v16

    goto/16 :goto_27

    :goto_c
    invoke-virtual/range {p0 .. p1}, Ls7/a;->f(LRh/r;)I

    move-result v24

    invoke-static {v5}, LLu/f;->f([B)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, v1, LRh/r;->l:LRh/C;

    iget-boolean v3, v3, LRh/C;->d:Z

    if-eqz v3, :cond_13

    goto :goto_d

    :cond_13
    const/4 v3, 0x0

    goto :goto_e

    :cond_14
    :goto_d
    const/4 v3, 0x1

    :goto_e
    iget-object v4, v1, LRh/r;->n:Lp7/e;

    if-eqz v4, :cond_15

    goto :goto_f

    :cond_15
    move-object/from16 v4, v30

    :goto_f
    if-eqz v4, :cond_16

    iget-object v4, v4, Lp7/e;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v9, 0x1

    xor-int/2addr v4, v9

    if-ne v4, v9, :cond_16

    const/4 v4, 0x1

    goto :goto_10

    :cond_16
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_18

    new-instance v9, LNf/b;

    invoke-direct {v9, v1}, LNf/b;-><init>(LRh/r;)V

    move-wide v12, v13

    move/from16 v19, v15

    move-object/from16 v14, v16

    move-wide/from16 v15, v22

    if-eqz v6, :cond_17

    const/16 v23, 0x1

    goto :goto_11

    :cond_17
    const/16 v23, 0x0

    :goto_11
    invoke-static {}, LQg/e;->d()Z

    move-result v25

    move-wide/from16 v26, v12

    new-instance v12, Lk7/G;

    move-object/from16 v13, v18

    move/from16 v18, v17

    move-object/from16 v17, v13

    move-object v13, v8

    move/from16 v22, v21

    move/from16 v21, v20

    move/from16 v20, v19

    move-object/from16 v19, v9

    move-wide/from16 v8, v26

    invoke-direct/range {v12 .. v25}, Lk7/G;-><init>(Landroid/app/Application;Ljava/lang/String;JLandroid/location/Location;ILNf/b;ZIIZIZ)V

    move-object/from16 v16, v14

    move/from16 v17, v18

    move/from16 v15, v20

    move/from16 v20, v21

    move/from16 v21, v22

    const-string v10, "Storage.addImage(writer)"

    invoke-static {v10, v12}, Lvr/a0;->a(Ljava/lang/String;Lev/a;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    move-wide/from16 v22, v8

    move-object v8, v13

    move/from16 v14, v17

    move/from16 v12, v20

    move/from16 v13, v21

    goto :goto_14

    :cond_18
    move-wide/from16 v38, v13

    move-object v13, v8

    move-wide/from16 v8, v38

    invoke-static {v5}, LLu/f;->f([B)Z

    move-result v10

    if-eqz v10, :cond_19

    sget-object v10, Lb2/b;->a:Lb2/b;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v15}, Lb2/b;->i([BZ)Ljava/nio/ByteBuffer;

    move-result-object v10

    goto :goto_12

    :cond_19
    iget-object v10, v1, LRh/r;->l:LRh/C;

    iget-boolean v10, v10, LRh/C;->d:Z

    if-eqz v10, :cond_1a

    sget-object v10, Lb2/b;->a:Lb2/b;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v15}, Lb2/b;->h([BZ)Ljava/nio/ByteBuffer;

    move-result-object v10

    goto :goto_12

    :cond_1a
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    :goto_12
    move/from16 v19, v15

    move-wide/from16 v14, v22

    if-eqz v6, :cond_1b

    const/16 v23, 0x1

    goto :goto_13

    :cond_1b
    const/16 v23, 0x0

    :goto_13
    invoke-static {}, LQg/e;->d()Z

    move-result v27

    const/16 v22, 0x0

    move/from16 v26, v24

    const-wide/16 v24, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object v12, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v10

    invoke-static/range {v12 .. v29}, Lk7/K;->a(Landroid/app/Application;Ljava/lang/String;JLandroid/location/Location;ILjava/nio/ByteBuffer;ZIIZZJIZII)Landroid/net/Uri;

    move-result-object v10

    move-wide/from16 v22, v8

    move-object v8, v12

    move-object/from16 v16, v13

    move/from16 v14, v17

    move/from16 v15, v19

    move/from16 v12, v20

    move/from16 v13, v21

    :goto_14
    if-eqz v4, :cond_1c

    if-eqz v3, :cond_1c

    if-eqz v10, :cond_1c

    iget-object v3, v0, Lp7/d;->a:Ljava/lang/String;

    const-string v4, "doStorage(addImage): defer + cai \u2192 signImage(file)"

    move-object/from16 v19, v11

    const/4 v9, 0x0

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lb2/b;->a:Lb2/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v19 .. v19}, Lb2/b;->g(Ljava/lang/String;)V

    goto :goto_15

    :cond_1c
    move-object/from16 v19, v11

    :goto_15
    if-eqz v10, :cond_33

    invoke-static/range {v16 .. v16}, Lk7/K;->t(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    if-eqz v32, :cond_20

    int-to-double v3, v12

    move-object v11, v10

    int-to-double v9, v13

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    move-wide/from16 v17, v3

    const/16 v9, 0x438

    int-to-double v3, v9

    div-double v3, v17, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v5, v14, v3, v11, v4}, LF1/w4;->d([BIILandroid/net/Uri;Z)LF1/w4;

    move-result-object v3

    if-eqz v3, :cond_1f

    array-length v4, v5

    int-to-long v9, v4

    invoke-virtual {v3, v9, v10}, LF1/w4;->s(J)V

    if-eqz v34, :cond_1d

    move-object/from16 v4, v34

    invoke-virtual {v4, v1, v3}, Lcom/android/camera/module/Camera2Module$e;->b(LRh/r;LF1/w4;)Z

    move-result v9

    if-nez v9, :cond_1e

    goto :goto_16

    :cond_1d
    move-object/from16 v4, v34

    :goto_16
    if-eqz v2, :cond_1e

    const/4 v9, 0x1

    invoke-interface {v2, v3, v9}, Lk7/A;->m(LF1/w4;Z)V

    sget-object v3, LPu/A;->a:LPu/A;

    :cond_1e
    sget-object v3, LPu/A;->a:LPu/A;

    const/4 v3, 0x1

    goto :goto_18

    :cond_1f
    move-object/from16 v4, v34

    if-eqz v2, :cond_21

    invoke-interface {v2}, Lk7/A;->k()V

    sget-object v3, LPu/A;->a:LPu/A;

    goto :goto_17

    :cond_20
    move-object v11, v10

    move-object/from16 v4, v34

    :cond_21
    :goto_17
    const/4 v3, 0x0

    :goto_18
    if-eqz v2, :cond_22

    const/16 v17, 0x2

    const/16 v18, 0x0

    move v9, v13

    move-object v13, v2

    move v2, v9

    move v9, v14

    move-object v14, v11

    invoke-interface/range {v13 .. v18}, Lk7/A;->o(Landroid/net/Uri;ZLjava/lang/String;IZ)V

    move-object v10, v13

    move/from16 v27, v15

    move-object/from16 v28, v16

    sget-object v13, LPu/A;->a:LPu/A;

    goto :goto_19

    :cond_22
    move-object v10, v2

    move v2, v13

    move v9, v14

    move/from16 v27, v15

    move-object/from16 v28, v16

    :goto_19
    if-eqz v6, :cond_24

    iget-object v3, v0, Lp7/d;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v13, v33

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v3, v4, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v6, LE2/a;->c:Ljava/lang/Long;

    invoke-static {v8, v6}, LH2/a;->c(Landroid/content/Context;LE2/a;)V

    if-eqz v10, :cond_23

    invoke-interface {v10, v11}, Lk7/A;->b(Landroid/net/Uri;)V

    sget-object v3, LPu/A;->a:LPu/A;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_23
    move-object v3, v7

    move v6, v9

    move-object v7, v10

    move-object/from16 v31, v11

    move/from16 v29, v12

    const/4 v4, 0x1

    goto/16 :goto_1c

    :cond_24
    if-nez v3, :cond_23

    int-to-double v13, v12

    move-object v3, v7

    int-to-double v6, v2

    :try_start_1
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    const/16 v13, 0x438

    int-to-double v13, v13

    div-double/2addr v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    const/4 v13, 0x0

    invoke-static {v5, v9, v6, v11, v13}, LF1/w4;->d([BIILandroid/net/Uri;Z)LF1/w4;

    move-result-object v6

    if-eqz v6, :cond_25

    array-length v7, v5

    int-to-long v13, v7

    invoke-virtual {v6, v13, v14}, LF1/w4;->s(J)V

    if-eqz v4, :cond_26

    invoke-virtual {v4, v1, v6}, Lcom/android/camera/module/Camera2Module$e;->b(LRh/r;LF1/w4;)Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_1a

    :cond_25
    const/4 v4, 0x1

    goto :goto_1b

    :cond_26
    :goto_1a
    if-eqz v10, :cond_25

    const/4 v4, 0x1

    invoke-interface {v10, v6, v4}, Lk7/A;->m(LF1/w4;Z)V

    sget-object v6, LPu/A;->a:LPu/A;

    goto :goto_1b

    :catchall_1
    move-exception v0

    goto/16 :goto_2a

    :goto_1b
    invoke-static {}, LQg/e;->b()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_27

    move/from16 v17, v9

    move-object v13, v10

    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    iget-object v6, v1, LRh/r;->k:LRh/A;

    iget-object v6, v6, LRh/A;->b:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v18, v12

    const/4 v12, 0x0

    move-object v7, v13

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move/from16 v26, v17

    const-wide/16 v16, 0x0

    move/from16 v29, v18

    const/16 v18, 0x0

    move-object/from16 v31, v11

    move-object/from16 v11, v19

    const/16 v19, 0x0

    move/from16 v38, v26

    move-object/from16 v26, v6

    move/from16 v6, v38

    invoke-static/range {v8 .. v26}, Lu7/d;->f(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JIIILjava/lang/String;JIZLjava/lang/String;)V

    goto :goto_1c

    :cond_27
    move v6, v9

    move-object v7, v10

    move-object/from16 v31, v11

    move/from16 v29, v12

    :goto_1c
    iget-object v8, v1, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/ExifData;->getPictureInfo()Lqh/f;

    move-result-object v8

    if-eqz v8, :cond_28

    iget-wide v8, v8, Lqh/f;->Q:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_1d

    :cond_28
    move-object/from16 v8, v30

    :goto_1d
    invoke-static {v8}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v36

    if-lez v8, :cond_29

    move v8, v4

    goto :goto_1e

    :cond_29
    const/4 v8, 0x0

    :goto_1e
    iget-object v9, v1, LRh/r;->b:LRh/a;

    iget v9, v9, LRh/a;->g:I

    const/16 v10, 0xe7

    if-ne v9, v10, :cond_2a

    invoke-virtual {v1}, LRh/r;->p()Z

    move-result v9

    if-eqz v9, :cond_2a

    if-nez v8, :cond_2a

    goto :goto_1f

    :cond_2a
    const/4 v4, 0x0

    :goto_1f
    iget-object v9, v1, LRh/r;->b:LRh/a;

    iget v9, v9, LRh/a;->g:I

    const/16 v10, 0xbf

    if-ne v9, v10, :cond_30

    if-nez v8, :cond_30

    invoke-static {v5}, Lrf/a;->c([B)Lrf/b;

    move-result-object v4

    if-eqz v4, :cond_2b

    const-string v5, "ImageWidth"

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v5}, Lrf/b;->g(ILjava/lang/String;)I

    move-result v5

    goto :goto_20

    :cond_2b
    const/4 v9, 0x0

    move v5, v9

    :goto_20
    if-eqz v4, :cond_2c

    const-string v8, "ImageLength"

    invoke-virtual {v4, v9, v8}, Lrf/b;->g(ILjava/lang/String;)I

    move-result v4

    move v10, v4

    goto :goto_21

    :cond_2c
    const/4 v10, 0x0

    :goto_21
    new-instance v12, Lm7/a;

    if-lez v5, :cond_2d

    move/from16 v18, v5

    goto :goto_22

    :cond_2d
    move/from16 v18, v29

    :goto_22
    if-lez v10, :cond_2e

    move/from16 v19, v10

    goto :goto_23

    :cond_2e
    move/from16 v19, v2

    :goto_23
    const/4 v14, 0x0

    move/from16 v17, v6

    move/from16 v16, v27

    move-object/from16 v15, v28

    move-object/from16 v13, v31

    invoke-direct/range {v12 .. v19}, Lm7/a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/String;ZIII)V

    move-object/from16 v16, v15

    if-eqz v7, :cond_2f

    invoke-interface {v7, v12}, Lk7/A;->n(Lm7/e;)V

    sget-object v2, LPu/A;->a:LPu/A;

    :cond_2f
    :goto_24
    move-object/from16 v14, v16

    goto :goto_26

    :cond_30
    move/from16 v17, v6

    move/from16 v15, v27

    move-object/from16 v16, v28

    move-object/from16 v11, v31

    const/16 v5, 0xe6

    if-eq v9, v5, :cond_32

    if-eqz v4, :cond_31

    goto :goto_25

    :cond_31
    const/16 v2, 0xaf

    if-ne v9, v2, :cond_2f

    iget-object v2, v1, LRh/r;->q:Lcom/android/camera/module/Camera2Module$e;

    if-eqz v2, :cond_2f

    iget-object v4, v1, LRh/r;->p:LRh/e;

    if-eqz v4, :cond_2f

    iput-object v11, v4, LRh/e;->g:Landroid/net/Uri;

    invoke-virtual {v2, v1, v4}, Lcom/android/camera/module/Camera2Module$e;->a(LRh/r;Ljava/lang/Object;)Z

    goto :goto_24

    :cond_32
    :goto_25
    new-instance v12, Lm7/a;

    const/4 v14, 0x0

    move-object/from16 v13, v16

    move/from16 v16, v15

    move-object v15, v13

    move/from16 v19, v2

    move-object v13, v11

    move/from16 v18, v29

    invoke-direct/range {v12 .. v19}, Lm7/a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/String;ZIII)V

    move-object/from16 v16, v15

    if-eqz v7, :cond_2f

    invoke-interface {v7, v12}, Lk7/A;->n(Lm7/e;)V

    sget-object v2, LPu/A;->a:LPu/A;

    goto :goto_24

    :cond_33
    move-object v3, v7

    move-object v11, v10

    move-object v7, v2

    invoke-static/range {v16 .. v16}, Lk7/K;->t(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    if-eqz v7, :cond_2f

    const/16 v17, 0x3

    const/16 v18, 0x0

    move-object v13, v7

    move-object v14, v11

    invoke-interface/range {v13 .. v18}, Lk7/A;->o(Landroid/net/Uri;ZLjava/lang/String;IZ)V

    move-object/from16 v14, v16

    sget-object v2, LPu/A;->a:LPu/A;

    :goto_26
    sget-object v2, LPu/A;->a:LPu/A;

    :goto_27
    iget-object v2, v1, LRh/r;->b:LRh/a;

    iget v2, v2, LRh/a;->f:I

    const/16 v4, 0x9

    if-eq v4, v2, :cond_36

    const-string v2, "key_picture_save"

    invoke-static {v2}, Lgq/h$a;->a(Ljava/lang/String;)Lgq/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lgq/h;->d()V

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, LS8/d;->b(Z)LGg/P;

    move-result-object v2

    invoke-virtual {v2}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object v2

    invoke-static/range {v35 .. v35}, LNh/d;->a(Z)Z

    move-result v4

    if-eqz v4, :cond_35

    if-eqz v2, :cond_35

    const-string v4, "key_watermark_capture"

    invoke-static {v4}, Lgq/h$a;->a(Ljava/lang/String;)Lgq/h;

    move-result-object v4

    const-string v5, "attr_watermark_status"

    const-string v6, "on"

    invoke-virtual {v4, v6, v5}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "attr_time_stamp"

    iget-object v6, v1, LRh/r;->a:LRh/z;

    iget-wide v6, v6, LRh/z;->f:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "attr_watermark_frame_color"

    invoke-virtual {v2}, Lcom/xiaomi/cam/watermark/a;->N()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {v2}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v6

    invoke-virtual {v6}, LGg/a0;->i()Ljava/lang/String;

    move-result-object v6

    goto :goto_28

    :cond_34
    move-object/from16 v6, v30

    :goto_28
    invoke-virtual {v4, v6, v5}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "attr_watermark_time"

    invoke-static {v2}, LW7/a$a;->b(Lcom/xiaomi/cam/watermark/a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "attr_watermark_location"

    invoke-static {v2}, LW7/a$a;->a(Lcom/xiaomi/cam/watermark/a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "attr_watermark_get_location_fail"

    iget-object v6, v1, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/ExifData;->getLocation()Landroid/location/Location;

    move-result-object v6

    iget-object v7, v1, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/ExifData;->getLatlngStringCache()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/ExifData;->getLocationAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, LW7/a$a;->c(Lcom/xiaomi/cam/watermark/a;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lgq/h;->d()V

    goto :goto_29

    :cond_35
    const-string v2, "key_watermark_capture"

    invoke-static {v2}, Lgq/h$a;->a(Ljava/lang/String;)Lgq/h;

    move-result-object v2

    const-string v4, "attr_watermark_status"

    const-string v5, "off"

    invoke-virtual {v2, v5, v4}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "attr_watermark"

    const-string v5, "none"

    invoke-virtual {v2, v5, v4}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lgq/h;->d()V

    :cond_36
    :goto_29
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v4, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v4}, Lu2/Q;->E(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    iget-object v4, v4, Lu6/f;->a:Lu6/b;

    iget v4, v4, Lu6/b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v14, v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v4, 0x15

    invoke-static {v4, v2}, LPh/h;->l(I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    iget-object v2, v1, LRh/r;->k:LRh/A;

    iget-object v3, v2, LRh/A;->g:Ljava/lang/String;

    iget-object v2, v2, LRh/A;->l:Ljava/lang/Object;

    instance-of v4, v2, Lk7/A;

    if-eqz v4, :cond_37

    move-object/from16 v30, v2

    check-cast v30, Lk7/A;

    :cond_37
    move-object/from16 v2, v30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v1, LRh/r;->a:LRh/z;

    iget-wide v7, v6, LRh/z;->h:J

    sub-long/2addr v4, v7

    cmp-long v7, v7, v36

    iget-object v8, v1, LRh/r;->j:LRh/y;

    if-eqz v7, :cond_38

    cmp-long v7, v4, v36

    if-lez v7, :cond_38

    const-string v7, "key_camera_performance"

    new-instance v9, Lgq/h;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v7, v9, Lgq/h;->a:Ljava/lang/String;

    new-instance v7, Lgq/f;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v10, v7, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v10, v7, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v10, v7, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v7, v9, Lgq/h;->b:Lgq/f;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v10, "attr_cost_time"

    invoke-virtual {v9, v7, v10}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lhq/d;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v7}, Lgq/h;->b(Lgq/e;)V

    new-instance v7, Lhq/e;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v7}, Lgq/h;->b(Lgq/e;)V

    new-instance v7, Lhq/e$a;

    iget-object v10, v8, LRh/y;->s:Ljava/lang/String;

    invoke-direct {v7, v10}, Lhq/e$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lgq/h;->d()V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v7

    iget-wide v9, v6, LRh/z;->h:J

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "algo_capture_total_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, LF6/q;->g(Ljava/lang/String;)J

    iget-wide v9, v6, LRh/z;->f:J

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "algo_image_save_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, LF6/q;->g(Ljava/lang/String;)J

    iget-wide v9, v6, LRh/z;->h:J

    const-string/jumbo v11, "shot_2_view_"

    invoke-static {v9, v10, v11}, LHs/a;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v4, v5, v9}, LF6/q;->f(JLjava/lang/String;)J

    move-result-wide v4

    invoke-static {}, LF6/q;->d()Z

    move-result v10

    if-eqz v10, :cond_38

    cmp-long v10, v4, v36

    if-lez v10, :cond_38

    invoke-virtual {v7, v4, v5, v9}, LF6/q;->p(JLjava/lang/String;)V

    :cond_38
    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, LJe/c;->h2()Z

    move-result v4

    iget-object v5, v1, LRh/r;->k:LRh/A;

    if-eqz v4, :cond_39

    iget-object v4, v0, Lp7/d;->a:Ljava/lang/String;

    iget-boolean v7, v8, LRh/y;->j:Z

    iget-wide v8, v6, LRh/z;->f:J

    iget-object v10, v5, LRh/A;->b:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "parallel save finish, isQuickSnapshot: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", timestamp: "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", mSavePath: "

    const-string v8, ", name "

    invoke-static {v11, v7, v3, v8, v10}, LN/i;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4, v3, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/camera/mivi/AidlProcClient;->getInstance()Lcom/xiaomi/camera/mivi/AidlProcClient;

    move-result-object v3

    iget-wide v7, v6, LRh/z;->f:J

    iget-object v4, v5, LRh/A;->b:Ljava/lang/String;

    invoke-virtual {v3, v7, v8, v4}, Lcom/xiaomi/camera/mivi/AidlProcClient;->setPhotoSaveCompleted(JLjava/lang/String;)V

    :cond_39
    iget-wide v3, v6, LRh/z;->f:J

    invoke-static {v3, v4}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->releaseUnuseEarlyImage(J)V

    iget-object v3, v0, Lp7/d;->a:Ljava/lang/String;

    const-string v4, "image save onFinish"

    invoke-static {v3, v4}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, LRh/r;->b:LRh/a;

    iget-boolean v3, v3, LRh/a;->l:Z

    if-nez v3, :cond_3a

    iget-wide v3, v6, LRh/z;->f:J

    iget-object v6, v0, Lp7/d;->a:Ljava/lang/String;

    iget-object v5, v5, LRh/A;->b:Ljava/lang/String;

    const-string v7, "CAPTURE"

    const/4 v9, 0x0

    invoke-static {v7, v9, v5}, Lcom/xiaomi/camera/mivi/util/LogPrefixUtil;->getPrefix(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saved image finished, timestamp: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v6, v3, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, LRh/r;->s()V

    :cond_3a
    invoke-static {v2}, Lfv/l;->e(Ljava/lang/Object;)V

    iget v0, v0, Ls7/d;->b:I

    invoke-interface {v2, v0}, Lk7/A;->p(I)V

    return-void

    :goto_2a
    monitor-exit v3

    throw v0
.end method

.method public final b(LRh/r;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRh/r<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "parallelTaskData"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LRh/r;->k:LRh/A;

    iget-object v1, v0, LRh/A;->g:Ljava/lang/String;

    iget-object v2, p1, LRh/r;->a:LRh/z;

    iget-object v2, v2, LRh/z;->i:[B

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object p0, p0, Lp7/d;->a:Ljava/lang/String;

    const-string p1, "imageData is null return"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    iget-boolean v4, v0, LRh/A;->p:Z

    if-nez v4, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, v0, LRh/A;->l:Ljava/lang/Object;

    instance-of v4, v0, Lk7/A;

    if-eqz v4, :cond_2

    check-cast v0, Lk7/A;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p1, LRh/r;->b:LRh/a;

    iget v5, v4, LRh/a;->g:I

    const/16 v6, 0xe4

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lk7/A;->onProcessorJpegFinish(LRh/r;)V

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, v4, LRh/a;->l:Z

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    iget-object p1, p0, Lp7/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "save, mData: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSavePath: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", savePath: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, LBw/i;->u()LF2/d;

    move-result-object p1

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object p1, p1, LF2/d;->a:LF2/b;

    invoke-virtual {p1, v1}, LF2/b;->f(Ljava/lang/String;)LE2/a;

    move-result-object p1

    iget-object p0, p0, Lp7/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "save, saveTask: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, p1}, LH2/a;->c(Landroid/content/Context;LE2/a;)V

    :cond_6
    :goto_3
    return v3
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Ls7/d;->c:Z

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    const-string p0, "StoPara"

    return-object p0
.end method

.method public final g(LRh/r;ILjava/lang/String;Landroid/net/Uri;[B)V
    .locals 7
    .annotation runtime Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRh/r<",
            "*>;I",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "[B)V"
        }
    .end annotation

    iget-object v0, p1, LRh/r;->a:LRh/z;

    iget v1, v0, LRh/z;->a:I

    iget v0, v0, LRh/z;->b:I

    iget-object v2, p1, LRh/r;->k:LRh/A;

    iget-object v2, v2, LRh/A;->l:Ljava/lang/Object;

    instance-of v3, v2, Lk7/A;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lk7/A;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-virtual {p1}, LRh/r;->m()Z

    move-result p1

    int-to-double v5, v1

    int-to-double v0, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const/16 v3, 0x200

    int-to-double v5, v3

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    iget-object p0, p0, Lp7/d;->a:Ljava/lang/String;

    const-string v1, "Uri changed, so must try to create thumbnail: "

    invoke-static {p4, v1}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p5, p2, v0, p4, v3}, LF1/w4;->d([BIILandroid/net/Uri;Z)LF1/w4;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_2

    invoke-static {p5}, Lfv/l;->e(Ljava/lang/Object;)V

    array-length p0, p5

    int-to-long v0, p0

    invoke-virtual {v4, v0, v1}, LF1/w4;->s(J)V

    if-eqz v2, :cond_2

    invoke-interface {v2, v4, v3}, Lk7/A;->m(LF1/w4;Z)V

    :cond_2
    if-eqz v2, :cond_3

    move p2, p1

    move-object p1, p4

    const/4 p4, 0x2

    const/4 p5, 0x0

    move-object p0, v2

    invoke-interface/range {p0 .. p5}, Lk7/A;->o(Landroid/net/Uri;ZLjava/lang/String;IZ)V

    :cond_3
    return-void
.end method

.method public final h(Landroid/app/Application;Ljava/lang/String;)LE2/a;
    .locals 11

    const-string v0, "recoverSaveTaskFromMediaStore: id = "

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lk7/K;->i(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v4

    const-string v2, "_id"

    const-string v3, "_data"

    const-string v5, "is_pending"

    const-string v6, "is_trashed"

    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "_data =?"

    :try_start_0
    sget-object v2, Lk7/o;->c:Lk7/o;

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lk7/o;->d(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v2, p1

    check-cast v2, Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x3

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iget-object v2, p0, Lp7/d;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " path = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pending = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " trashed = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, LE2/a;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v6

    :goto_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v5, v0, LE2/a;->e:I

    iput-object v1, v0, LE2/a;->c:Ljava/lang/Long;

    iput-object p2, v0, LE2/a;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    :cond_1
    :try_start_3
    sget-object p2, LPu/A;->a:LPu/A;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_1
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {p1, p2}, LJv/f;->b(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    iget-object p0, p0, Lp7/d;->a:Ljava/lang/String;

    const-string p2, "recoverSaveTaskFromMediaStore: query failed"

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method
