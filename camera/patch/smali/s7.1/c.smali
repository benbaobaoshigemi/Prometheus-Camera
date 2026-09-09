.class public final Ls7/c;
.super Ls7/a;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lp7/d;-><init>()V

    iput p1, p0, Ls7/c;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls7/c;->c:Z

    return-void
.end method


# virtual methods
.method public final a(LRh/r;)V
    .locals 37
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

    new-instance v2, Lfv/B;

    invoke-direct {v2}, Lfv/B;-><init>()V

    iget-object v3, v1, LRh/r;->a:LRh/z;

    iget-object v4, v3, LRh/z;->i:[B

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    iput-object v4, v2, Lfv/B;->a:Ljava/lang/Object;

    iget-object v4, v1, LRh/r;->k:LRh/A;

    iget-object v5, v4, LRh/A;->g:Ljava/lang/String;

    iget v14, v3, LRh/z;->a:I

    iget v15, v3, LRh/z;->b:I

    iget v11, v3, LRh/z;->c:I

    iget-object v6, v4, LRh/A;->l:Ljava/lang/Object;

    instance-of v7, v6, Lk7/A;

    const/16 v24, 0x0

    if-eqz v7, :cond_0

    check-cast v6, Lk7/A;

    move-object/from16 v16, v6

    goto :goto_0

    :cond_0
    move-object/from16 v16, v24

    :goto_0
    invoke-virtual {v1}, LRh/r;->m()Z

    move-result v18

    iget-wide v8, v3, LRh/z;->g:J

    iget-object v6, v1, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/ExifData;->getLocation()Landroid/location/Location;

    move-result-object v12

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v7

    iget-object v10, v1, LRh/r;->b:LRh/a;

    iget-boolean v13, v10, LRh/a;->i:Z

    move-object/from16 v25, v5

    iget-object v5, v4, LRh/A;->n:Landroid/net/Uri;

    move/from16 v17, v13

    move v13, v11

    iget-object v11, v4, LRh/A;->j:Ljava/lang/String;

    move-object/from16 v19, v5

    iget-object v5, v4, LRh/A;->k:Ljava/lang/String;

    move-object/from16 v20, v5

    iget-boolean v5, v4, LRh/A;->o:Z

    move/from16 v21, v5

    iget-boolean v5, v10, LRh/a;->h:Z

    move-object/from16 v26, v3

    iget v3, v10, LRh/a;->k:I

    move-object/from16 v22, v10

    move-object/from16 v10, v19

    invoke-virtual/range {p0 .. p1}, Ls7/a;->f(LRh/r;)I

    move-result v19

    move-object/from16 v23, v6

    iget-object v6, v2, Lfv/B;->a:Ljava/lang/Object;

    check-cast v6, [B

    move-object/from16 v27, v7

    const-string v7, "<this>"

    invoke-static {v6, v7}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v6

    move-wide/from16 v28, v8

    const/high16 v8, 0x80000

    const/16 v30, 0x1

    if-gt v7, v8, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, v6, v7

    const/16 v8, 0x56

    const-string v9, "CaiUtil"

    if-ne v7, v8, :cond_2

    array-length v7, v6

    const v8, 0x7ffff

    sub-int/2addr v7, v8

    aget-byte v6, v6, v7

    const/16 v7, 0x55

    if-ne v6, v7, :cond_2

    const-string v6, "hasCaiFlag: has flag"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v9, v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    const-string v6, "hasCaiFlag: no flag"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v9, v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v6, v1, LRh/r;->l:LRh/C;

    iget-boolean v6, v6, LRh/C;->d:Z

    if-eqz v6, :cond_3

    :goto_2
    move/from16 v31, v30

    goto :goto_3

    :cond_3
    move/from16 v31, v7

    :goto_3
    iget-object v6, v1, LRh/r;->n:Lp7/e;

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v6, v24

    :goto_4
    if-eqz v6, :cond_6

    iget-object v6, v6, Lp7/e;->b:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    move/from16 v8, v30

    if-ne v6, v8, :cond_5

    move/from16 v30, v8

    goto :goto_6

    :cond_5
    :goto_5
    move/from16 v30, v7

    goto :goto_6

    :cond_6
    move/from16 v8, v30

    goto :goto_5

    :goto_6
    if-eqz v10, :cond_9

    if-eqz v30, :cond_7

    move v6, v8

    new-instance v8, LNf/b;

    invoke-direct {v8, v1}, LNf/b;-><init>(LRh/r;)V

    move/from16 v9, v18

    move-object/from16 v18, v20

    invoke-static {}, LQg/e;->d()Z

    move-result v20

    sget-object v21, Lk7/K;->a:Ljava/lang/String;

    move/from16 v21, v6

    new-instance v6, Lk7/H;

    move/from16 v32, v3

    move v3, v7

    move-object/from16 v33, v16

    move-object/from16 v34, v22

    move-object/from16 v7, v27

    move-wide/from16 v35, v28

    move/from16 v29, v17

    move-object/from16 v28, v23

    move-wide/from16 v16, v35

    invoke-direct/range {v6 .. v20}, Lk7/H;-><init>(Landroid/app/Application;LNf/b;ZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIJLjava/lang/String;IZ)V

    move-object/from16 v19, v11

    const-string v8, "Storage.updateImage(writer)"

    invoke-static {v8, v6}, Lvr/a0;->a(Ljava/lang/String;Lev/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    goto :goto_7

    :cond_7
    move/from16 v32, v3

    move v3, v7

    move-object/from16 v33, v16

    move/from16 v9, v18

    move-object/from16 v18, v20

    move-object/from16 v34, v22

    move-object/from16 v7, v27

    move/from16 v20, v19

    move-object/from16 v19, v11

    move-wide/from16 v35, v28

    move/from16 v29, v17

    move-object/from16 v28, v23

    move-wide/from16 v16, v35

    sget-object v6, Lb2/b;->a:Lb2/b;

    iget-object v8, v2, Lfv/B;->a:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9}, Lb2/b;->h([BZ)Ljava/nio/ByteBuffer;

    move-result-object v8

    move/from16 v19, v20

    invoke-static {}, LQg/e;->d()Z

    move-result v20

    sget-object v6, Lk7/K;->a:Ljava/lang/String;

    new-instance v6, Lk7/F;

    invoke-direct/range {v6 .. v20}, Lk7/F;-><init>(Landroid/app/Application;Ljava/nio/ByteBuffer;ZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIJLjava/lang/String;IZ)V

    move-object/from16 v19, v11

    const-string v8, "Storage.updateImage"

    invoke-static {v8, v6}, Lvr/a0;->a(Ljava/lang/String;Lev/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    :goto_7
    move-object v8, v7

    if-eqz v6, :cond_8

    move-object v7, v10

    goto/16 :goto_a

    :cond_8
    move-object v6, v10

    :goto_8
    move-object v7, v6

    goto/16 :goto_a

    :cond_9
    move/from16 v32, v3

    move v3, v7

    move-object/from16 v33, v16

    move/from16 v9, v18

    move/from16 v20, v19

    move-object/from16 v34, v22

    move-object/from16 v7, v27

    move-object/from16 v19, v11

    move-wide/from16 v35, v28

    move/from16 v29, v17

    move-object/from16 v28, v23

    move-wide/from16 v16, v35

    if-eqz v30, :cond_a

    move v11, v13

    new-instance v13, LNf/b;

    invoke-direct {v13, v1}, LNf/b;-><init>(LRh/r;)V

    move-object/from16 v8, v19

    invoke-static {}, LQg/e;->d()Z

    move-result v19

    sget-object v6, Lk7/K;->a:Ljava/lang/String;

    new-instance v6, Lk7/G;

    move/from16 v18, v14

    move v14, v9

    move-wide/from16 v9, v16

    move/from16 v16, v15

    move/from16 v15, v18

    move-object/from16 v18, v12

    move v12, v11

    move-object/from16 v11, v18

    move/from16 v18, v20

    move/from16 v17, v21

    invoke-direct/range {v6 .. v19}, Lk7/G;-><init>(Landroid/app/Application;Ljava/lang/String;JLandroid/location/Location;ILNf/b;ZIIZIZ)V

    move-object/from16 v19, v8

    move v13, v12

    move v9, v14

    move v14, v15

    move/from16 v15, v16

    const-string v8, "Storage.addImage(writer)"

    invoke-static {v8, v6}, Lvr/a0;->a(Ljava/lang/String;Lev/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    goto :goto_9

    :cond_a
    sget-object v6, Lb2/b;->a:Lb2/b;

    iget-object v8, v2, Lfv/B;->a:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9}, Lb2/b;->h([BZ)Ljava/nio/ByteBuffer;

    move-result-object v6

    move/from16 v18, v9

    move-wide/from16 v8, v16

    move/from16 v17, v21

    invoke-static {}, LQg/e;->d()Z

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v16, 0x0

    move/from16 v10, v18

    move-object/from16 v11, v19

    const-wide/16 v18, 0x0

    move-object/from16 v35, v12

    move-object v12, v6

    move-object v6, v7

    move-object v7, v11

    move v11, v13

    move v13, v10

    move-object/from16 v10, v35

    invoke-static/range {v6 .. v23}, Lk7/K;->a(Landroid/app/Application;Ljava/lang/String;JLandroid/location/Location;ILjava/nio/ByteBuffer;ZIIZZJIZII)Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v19, v7

    move v9, v13

    move-object v7, v6

    move v13, v11

    move-object v6, v8

    :goto_9
    move-object v8, v7

    goto/16 :goto_8

    :goto_a
    if-eqz v30, :cond_c

    if-eqz v31, :cond_c

    if-eqz v6, :cond_c

    if-eqz v25, :cond_c

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_b

    goto :goto_b

    :cond_b
    iget-object v10, v0, Lp7/d;->a:Ljava/lang/String;

    const-string v11, "doStorage: defer + cai \u2192 signImage(file)"

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v10, Lb2/b;->a:Lb2/b;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v25 .. v25}, Lb2/b;->g(Ljava/lang/String;)V

    :cond_c
    :goto_b
    invoke-static {v8}, Lk7/K;->f(Landroid/app/Application;)V

    move-object/from16 v8, v33

    if-eqz v29, :cond_e

    if-eqz v8, :cond_d

    iget-boolean v10, v4, LRh/A;->m:Z

    invoke-interface {v8, v10}, Lk7/A;->d(Z)Z

    move-result v10

    goto :goto_c

    :cond_d
    move v10, v3

    :goto_c
    if-eqz v10, :cond_e

    const/4 v10, 0x1

    goto :goto_d

    :cond_e
    move v10, v3

    :goto_d
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v11

    invoke-virtual {v11}, Lu6/f;->P()Lj9/e;

    move-result-object v11

    invoke-virtual {v1}, LRh/r;->N()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v12

    invoke-static {v11, v12}, Lj9/f;->p(Lj9/e;Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "getDsacQuickShotValue(...)"

    invoke-static {v11, v12}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v1, LRh/r;->j:LRh/y;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v11, v12, LRh/y;->s:Ljava/lang/String;

    const-wide/16 v22, 0x0

    if-eqz v7, :cond_1a

    if-eqz v10, :cond_13

    int-to-double v10, v14

    move-object/from16 v25, v4

    int-to-double v3, v15

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    const/16 v10, 0x438

    int-to-double v10, v10

    div-double/2addr v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    iget-object v4, v0, Lp7/d;->a:Ljava/lang/String;

    const-string v10, "image save try to create thumbnail"

    move-object/from16 v16, v7

    const/4 v11, 0x0

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v2, Lfv/B;->a:Ljava/lang/Object;

    check-cast v4, [B

    invoke-static {v4, v13, v3, v6, v5}, LF1/w4;->d([BIILandroid/net/Uri;Z)LF1/w4;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v2, v2, Lfv/B;->a:Ljava/lang/Object;

    check-cast v2, [B

    array-length v2, v2

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, LF1/w4;->s(J)V

    if-eqz v8, :cond_10

    const/4 v4, 0x1

    invoke-interface {v8, v3, v4}, Lk7/A;->m(LF1/w4;Z)V

    goto :goto_e

    :cond_f
    if-eqz v8, :cond_10

    invoke-interface {v8}, Lk7/A;->k()V

    :cond_10
    :goto_e
    if-eqz v3, :cond_11

    iget-object v2, v3, LF1/w4;->b:Landroid/graphics/Bitmap;

    :goto_f
    move-object/from16 v17, v6

    goto :goto_10

    :cond_11
    move-object/from16 v2, v24

    goto :goto_f

    :goto_10
    new-instance v6, Lm7/a;

    move v3, v14

    move-object v14, v12

    move v12, v3

    move-object v3, v8

    move v10, v9

    move v11, v13

    move v13, v15

    move-object/from16 v7, v16

    move-object/from16 v5, v17

    move-object/from16 v9, v19

    move-object v8, v2

    invoke-direct/range {v6 .. v13}, Lm7/a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/String;ZIII)V

    move/from16 v18, v10

    if-eqz v3, :cond_12

    invoke-interface {v3, v6}, Lk7/A;->n(Lm7/e;)V

    :cond_12
    move-object/from16 v2, v25

    move-object/from16 v4, v34

    goto :goto_15

    :cond_13
    move-object/from16 v25, v4

    move-object v5, v6

    move-object v3, v8

    move/from16 v18, v9

    move/from16 v16, v15

    const/4 v4, 0x1

    move v15, v14

    move-object v14, v12

    if-eqz v3, :cond_14

    new-instance v6, Ls7/b;

    move/from16 v8, v32

    invoke-direct {v6, v0, v8, v5, v2}, Ls7/b;-><init>(Ls7/c;ILandroid/net/Uri;Lfv/B;)V

    invoke-interface {v3, v6}, Lk7/A;->f(Ljava/util/function/Consumer;)V

    :cond_14
    move-object/from16 v6, v34

    if-nez v29, :cond_15

    iget v8, v6, LRh/a;->f:I

    const/16 v9, 0x11

    if-ne v8, v9, :cond_15

    move v9, v4

    :goto_11
    move-object/from16 v34, v6

    goto :goto_12

    :cond_15
    const/4 v9, 0x0

    goto :goto_11

    :goto_12
    new-instance v6, Lm7/b;

    iget-object v2, v2, Lfv/B;->a:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, [B

    move-object/from16 v2, v25

    if-nez v9, :cond_16

    iget-boolean v9, v2, LRh/A;->m:Z

    if-eqz v9, :cond_16

    move v12, v4

    :goto_13
    move v9, v13

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v13, v19

    move-object/from16 v4, v34

    goto :goto_14

    :cond_16
    const/4 v12, 0x0

    goto :goto_13

    :goto_14
    invoke-direct/range {v6 .. v13}, Lm7/b;-><init>(Landroid/net/Uri;[BIIIZLjava/lang/String;)V

    move-object/from16 v19, v13

    if-eqz v3, :cond_17

    invoke-interface {v3, v6}, Lk7/A;->n(Lm7/e;)V

    :cond_17
    :goto_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz v3, :cond_18

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    invoke-interface/range {v16 .. v21}, Lk7/A;->o(Landroid/net/Uri;ZLjava/lang/String;IZ)V

    :cond_18
    move-object/from16 v11, v19

    move-object/from16 v3, v26

    iget-wide v8, v3, LRh/z;->h:J

    sub-long/2addr v6, v8

    cmp-long v5, v8, v22

    if-eqz v5, :cond_19

    cmp-long v5, v6, v22

    if-lez v5, :cond_19

    new-instance v5, Lgq/h;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const-string v8, "key_camera_performance"

    iput-object v8, v5, Lgq/h;->a:Ljava/lang/String;

    new-instance v8, Lgq/f;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v9, v8, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v9, v8, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v9, v8, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v8, v5, Lgq/h;->b:Lgq/f;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "attr_cost_time"

    invoke-virtual {v5, v6, v7}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lhq/d;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v6}, Lgq/h;->b(Lgq/e;)V

    new-instance v6, Lhq/e;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v6}, Lgq/h;->b(Lgq/e;)V

    new-instance v6, Lhq/e$a;

    iget-object v7, v14, LRh/y;->s:Ljava/lang/String;

    invoke-direct {v6, v7}, Lhq/e$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lgq/h;->d()V

    :cond_19
    iget-object v5, v0, Lp7/d;->a:Ljava/lang/String;

    const-string v6, "ImageSaveRequest: image save finished"

    invoke-static {v5, v6}, LF6/k;->o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lp7/d;->a:Ljava/lang/String;

    iget-object v6, v2, LRh/A;->b:Ljava/lang/String;

    const-string v7, "CAPTURE"

    const/4 v8, 0x0

    invoke-static {v7, v8, v6}, Lcom/xiaomi/camera/mivi/util/LogPrefixUtil;->getPrefix(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v3, LRh/z;->f:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "saved image finished, timestamp: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", title:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v8}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_1a
    move-object v2, v4

    move-object/from16 v16, v8

    move-object/from16 v11, v19

    move-object/from16 v3, v26

    move/from16 v8, v32

    move-object/from16 v4, v34

    invoke-static {v11}, Lk7/K;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    if-eqz v16, :cond_1d

    const/16 v17, 0x0

    const/16 v20, 0x3

    const/16 v21, 0x0

    move/from16 v18, v9

    move-object/from16 v19, v11

    invoke-interface/range {v16 .. v21}, Lk7/A;->o(Landroid/net/Uri;ZLjava/lang/String;IZ)V

    goto :goto_16

    :cond_1b
    move-object/from16 v6, v16

    iget-object v5, v0, Lp7/d;->a:Ljava/lang/String;

    const-string v7, "image save failed"

    const/4 v11, 0x0

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v5, v7, v9}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v10, :cond_1c

    if-eqz v6, :cond_1d

    invoke-interface {v6}, Lk7/A;->k()V

    goto :goto_16

    :cond_1c
    iget-object v5, v0, Lp7/d;->a:Ljava/lang/String;

    const-string/jumbo v7, "set mWaitingForUri is false"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v5, v7, v9}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_1d

    new-instance v5, LZ4/a;

    invoke-direct {v5, v0, v8}, LZ4/a;-><init>(Ls7/c;I)V

    invoke-interface {v6, v5}, Lk7/A;->f(Ljava/util/function/Consumer;)V

    :cond_1d
    :goto_16
    iget v4, v4, LRh/a;->f:I

    const/16 v5, 0x9

    if-eq v5, v4, :cond_1f

    const-string v4, "key_picture_save"

    invoke-static {v4}, Lgq/h$a;->a(Ljava/lang/String;)Lgq/h;

    move-result-object v4

    invoke-virtual {v4, v1}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lgq/h;->d()V

    sget-object v4, LGg/U;->n:LGg/U;

    invoke-virtual {v4}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object v4

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, LNh/d;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_1f

    if-eqz v4, :cond_1f

    const-string v5, "key_watermark_capture"

    invoke-static {v5}, Lgq/h$a;->a(Ljava/lang/String;)Lgq/h;

    move-result-object v5

    iget-wide v6, v3, LRh/z;->f:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "attr_time_stamp"

    invoke-virtual {v5, v6, v7}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->N()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v6

    invoke-virtual {v6}, LGg/a0;->i()Ljava/lang/String;

    move-result-object v6

    goto :goto_17

    :cond_1e
    move-object/from16 v6, v24

    :goto_17
    const-string v7, "attr_watermark_frame_color"

    invoke-virtual {v5, v6, v7}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, LW7/a$a;->b(Lcom/xiaomi/cam/watermark/a;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "attr_watermark_time"

    invoke-virtual {v5, v6, v7}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, LW7/a$a;->a(Lcom/xiaomi/cam/watermark/a;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "attr_watermark_location"

    invoke-virtual {v5, v6, v7}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lcom/xiaomi/camera/core/ExifData;->getLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/xiaomi/camera/core/ExifData;->getLatlngStringCache()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v28 .. v28}, Lcom/xiaomi/camera/core/ExifData;->getLocationAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, LW7/a$a;->c(Lcom/xiaomi/cam/watermark/a;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "attr_watermark_get_location_fail"

    invoke-virtual {v5, v6, v7}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lgq/h;->d()V

    :cond_1f
    iget-object v4, v0, Lp7/d;->a:Ljava/lang/String;

    const-string v5, "image save onFinish"

    invoke-static {v4, v5}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, LRh/A;->l:Ljava/lang/Object;

    instance-of v4, v2, Lk7/A;

    if-eqz v4, :cond_20

    move-object/from16 v24, v2

    check-cast v24, Lk7/A;

    :cond_20
    move-object/from16 v2, v24

    invoke-virtual {v1}, LRh/r;->s()V

    iget-wide v4, v3, LRh/z;->h:J

    cmp-long v1, v4, v22

    if-eqz v1, :cond_21

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "algo_capture_total_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, LF6/q;->g(Ljava/lang/String;)J

    iget-wide v6, v3, LRh/z;->f:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "algo_image_save_"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, LF6/q;->g(Ljava/lang/String;)J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "shot_2_view_"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v1, v6, v7, v3}, LF6/q;->f(JLjava/lang/String;)J

    move-result-wide v4

    invoke-static {}, LF6/q;->d()Z

    move-result v6

    if-eqz v6, :cond_21

    cmp-long v6, v4, v22

    if-lez v6, :cond_21

    invoke-virtual {v1, v4, v5, v3}, LF6/q;->p(JLjava/lang/String;)V

    :cond_21
    if-eqz v2, :cond_22

    iget v0, v0, Ls7/c;->b:I

    invoke-interface {v2, v0}, Lk7/A;->p(I)V

    :cond_22
    return-void
.end method

.method public final b(LRh/r;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRh/r<",
            "*>;)Z"
        }
    .end annotation

    const-string p0, "parallelTaskData"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, LRh/r;->k:LRh/A;

    iget-boolean p0, p0, LRh/A;->p:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, LRh/r;->a:LRh/z;

    iget-object p0, p0, LRh/z;->i:[B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Ls7/c;->c:Z

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    const-string p0, "StoImage"

    return-object p0
.end method
