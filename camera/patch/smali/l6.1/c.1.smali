.class public final Ll6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj9/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll6/c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(J)V
    .locals 0

    const-string p0, "anchor frame as thumbnail success "

    invoke-static {p1, p2, p0}, LHs/a;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Camera2Module"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b([BIIZLqh/a;)V
    .locals 9

    if-nez p1, :cond_0

    const-string p0, "Camera2Module"

    const-string/jumbo p1, "saveJpegAsThumbnail: jpeg data is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Ll6/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p5, :cond_2

    new-instance v1, Ll6/c$a;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Ll6/c$a;-><init>(Ll6/c;[BIIZ)V

    new-instance p0, Lcom/android/camera/module/A;

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/A;-><init>(Lcom/android/camera/module/Camera2Module;I)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    invoke-virtual {p5, v1, p0, p1}, Lqh/a;->b(Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/reactivex/v;)V

    return-void

    :cond_2
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    const/4 v8, 0x1

    move v7, v6

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v8}, Ll6/c;->d([BIIZZZ)V

    return-void
.end method

.method public final c(II[B)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v6}, Ll6/c;->d([BIIZZZ)V

    return-void
.end method

.method public final d([BIIZZZ)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v9, p4

    move/from16 v10, p5

    const-string v4, "Camera2Module"

    const-string v5, "E: do save thumbnail"

    const/4 v11, 0x0

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, LJe/c;->b()V

    iget-object v5, v0, Ll6/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/android/camera/module/Camera2Module;

    if-nez v12, :cond_0

    invoke-virtual {v4}, LJe/c;->b()V

    const-string v0, "Camera2Module"

    const-string v1, "Module is NULL when save thumbnail"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v12}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v13

    invoke-interface {v13}, Lj6/j;->V()Lj9/a;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, LJe/c;->b()V

    const-string v0, "Camera2Module"

    const-string v1, "Camera2Device is NULL when save thumbnail"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, LQ6/j1;->a()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, LJe/c;->b()V

    const-string v0, "Camera2Module"

    const-string v1, "TimeBurstProtocol is NULL when save thumbnail"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-interface {v13}, Lj6/j;->d0()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, LK2/e;->y()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, LK2/e;->B()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v12}, Lcom/android/camera/module/Camera2Module;->isFrontMirror()Z

    move-result v4

    if-ne v9, v4, :cond_4

    move-object v4, v5

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    move-object v4, v5

    move v5, v11

    :goto_0
    invoke-static {}, Lcom/android/camera/data/data/m;->f0()Z

    move-result v7

    invoke-interface {v13}, Lj6/j;->K0()Lj9/h0;

    move-result-object v6

    iget-object v6, v6, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v6}, Lj9/i0;->b()Ljava/lang/String;

    move-result-object v15

    sget-object v6, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v6}, Lwp/g;->a()Lwp/g$b;

    move-result-object v8

    const/16 v23, 0x0

    if-eqz v8, :cond_8

    invoke-virtual {v6}, Lwp/g;->a()Lwp/g$b;

    move-result-object v6

    invoke-virtual {v6}, Lwp/g$b;->c()Lwp/l;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v8, v6, Lwp/l;->l:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v6, v6, Lwp/l;->j:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    const/16 v24, 0x1

    move-object/from16 v14, v17

    check-cast v14, LRh/r;

    iget-object v14, v14, LRh/r;->k:LRh/A;

    iget-object v14, v14, LRh/A;->g:Ljava/lang/String;

    if-eqz v14, :cond_5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LRh/r;

    monitor-exit v8

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_6
    const/16 v24, 0x1

    monitor-exit v8

    :goto_1
    move-object/from16 v6, v23

    goto :goto_3

    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    const/16 v24, 0x1

    const-string v6, "LocalParallelService"

    const-string v8, "getParallelTaskData: null processor"

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v6, v8, v14}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :goto_3
    move-object v14, v6

    goto :goto_4

    :cond_8
    const/16 v24, 0x1

    move-object/from16 v14, v23

    :goto_4
    const/4 v6, -0x1

    if-eqz v14, :cond_9

    iget-object v8, v14, LRh/r;->a:LRh/z;

    iget v8, v8, LRh/z;->c:I

    goto :goto_5

    :cond_9
    move v8, v6

    :goto_5
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQ6/j1;

    invoke-interface {v13}, Lj6/j;->K0()Lj9/h0;

    move-result-object v11

    iget-object v11, v11, Lj9/h0;->a:Lj9/i0;

    iget-boolean v11, v11, Lj9/i0;->D1:Z

    if-eq v8, v6, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v12}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v6

    check-cast v6, Lj6/a;

    iget v8, v6, Lj6/a;->c:I

    :goto_6
    invoke-interface {v4, v8, v11}, LQ6/j1;->Pm(IZ)I

    move-result v11

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/camera/effect/EffectController;->i()I

    move-result v4

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/camera/effect/EffectController;->l()I

    move-result v6

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v8

    move/from16 v16, v4

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v8, v4, v6}, Lcom/xiaomi/camera/effect/EffectController;->q(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/camera/effect/EffectController;->o()I

    move-result v8

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v17

    move-object/from16 v26, v13

    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/camera/effect/EffectController;->z()I

    move-result v13

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v17

    move-object/from16 v27, v14

    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/camera/effect/EffectController;->g()I

    move-result v14

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v17

    move/from16 v28, v14

    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/camera/effect/EffectController;->f()I

    move-result v14

    invoke-virtual {v12}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v17

    if-eqz v9, :cond_b

    if-eqz v17, :cond_b

    move-object/from16 v18, v4

    iget v4, v12, Lcom/android/camera/module/Camera2Module;->mLightFilterId:I

    move/from16 v19, v5

    sget v5, Li3/b;->N:I

    if-eq v4, v5, :cond_c

    move/from16 v4, v24

    goto :goto_7

    :cond_b
    move-object/from16 v18, v4

    move/from16 v19, v5

    :cond_c
    const/4 v4, 0x0

    :goto_7
    invoke-interface/range {v26 .. v26}, Lj6/j;->o0()I

    move-result v5

    move/from16 v20, v4

    const/16 v4, 0x5a

    invoke-static {v5, v11, v4}, LBw/i;->H(III)I

    move-result v4

    if-eqz v19, :cond_d

    if-eqz v9, :cond_d

    add-int/lit16 v4, v4, 0xb4

    rem-int/lit16 v4, v4, 0x168

    :cond_d
    new-instance v5, Lcom/xiaomi/camera/mivi/filter/MIVIRenderTag;

    move/from16 v21, v6

    invoke-interface/range {v26 .. v26}, Lj6/j;->K0()Lj9/h0;

    move-result-object v6

    iget-object v6, v6, Lj9/h0;->a:Lj9/i0;

    iget-object v6, v6, Lj9/i0;->g:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    move/from16 v22, v7

    invoke-interface/range {v26 .. v26}, Lj6/j;->K0()Lj9/h0;

    move-result-object v7

    iget-object v7, v7, Lj9/h0;->a:Lj9/i0;

    iget-object v7, v7, Lj9/i0;->g:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7, v11, v4}, Lcom/xiaomi/camera/mivi/filter/MIVIRenderTag;-><init>(IIII)V

    if-eqz p6, :cond_14

    if-eqz v20, :cond_f

    :cond_e
    move/from16 v30, v4

    move-object/from16 v31, v5

    move v0, v8

    move/from16 v32, v13

    move/from16 v29, v14

    move/from16 v5, v19

    move/from16 v14, v20

    move/from16 v7, v22

    goto :goto_9

    :cond_f
    if-nez v19, :cond_10

    if-nez v22, :cond_10

    if-eqz v17, :cond_e

    :cond_10
    const-string/jumbo v7, "saveJpegAsThumbnail: decode bitmap now"

    const-string v6, "Camera2Module"

    invoke-static {v6, v7}, Lcom/android/camera/log/LogK;->v(Ljava/lang/String;Ljava/lang/String;)V

    array-length v7, v1

    move/from16 v30, v4

    const/4 v4, 0x0

    invoke-static {v1, v4, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_11

    const-string/jumbo v0, "saveJpegAsThumbnail: failed to decode bitmap"

    invoke-static {v6, v0}, Lcom/android/camera/log/LogK;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    move-object/from16 v31, v5

    move v0, v8

    move/from16 v32, v13

    move/from16 v29, v14

    move/from16 v5, v19

    move/from16 v14, v20

    move/from16 v7, v22

    move-object/from16 v1, v23

    :goto_9
    const/16 v13, 0x57

    goto :goto_a

    :cond_11
    iget-object v0, v0, Ll6/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_12

    goto :goto_8

    :cond_12
    int-to-float v6, v11

    move-object/from16 v31, v5

    move-object v4, v7

    move v0, v8

    move/from16 v32, v13

    move/from16 v29, v14

    move/from16 v8, v17

    move/from16 v5, v19

    move/from16 v14, v20

    move/from16 v7, v22

    const/16 v13, 0x57

    invoke-static/range {v4 .. v9}, LQg/f;->b(Landroid/graphics/Bitmap;ZFZZZ)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_13

    sget-object v1, LF1/g3;->c:LF1/g3;

    invoke-static {v13, v4}, Lvr/j;->g(ILandroid/graphics/Bitmap;)[B

    move-result-object v1

    :cond_13
    :goto_a
    move/from16 v9, p4

    move/from16 v34, v0

    move/from16 p0, v5

    move v0, v11

    move/from16 v4, v16

    move-object/from16 p6, v18

    move/from16 v6, v21

    move/from16 v11, v30

    move/from16 v33, v11

    move-object/from16 v16, v15

    goto/16 :goto_12

    :cond_14
    move/from16 v30, v4

    move-object/from16 v31, v5

    move v4, v8

    move/from16 v32, v13

    move/from16 v29, v14

    move/from16 v8, v17

    move/from16 v5, v19

    move/from16 v14, v20

    move/from16 v7, v22

    const/16 v13, 0x57

    iget-object v0, v0, Ll6/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_15

    move/from16 v9, p4

    move/from16 v34, v4

    move/from16 p0, v5

    move/from16 v4, v16

    move-object/from16 p6, v18

    move/from16 v6, v21

    move-object/from16 v1, v23

    move/from16 v33, v30

    :goto_b
    move-object/from16 v16, v15

    goto/16 :goto_11

    :cond_15
    const-string v0, "Camera2Module"

    if-nez v14, :cond_16

    if-nez v5, :cond_17

    if-nez v7, :cond_17

    if-eqz v8, :cond_16

    goto :goto_c

    :cond_16
    move/from16 v9, p4

    move/from16 v34, v4

    move/from16 v4, v16

    move-object/from16 v8, v18

    move/from16 v6, v21

    move/from16 v33, v30

    goto :goto_d

    :cond_17
    :goto_c
    const-string v6, "getJpegFromRgba: crop bitmap now"

    invoke-static {v0, v6}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    move v1, v4

    move-object v4, v6

    int-to-float v6, v11

    move/from16 v9, p4

    move/from16 v33, v30

    invoke-static/range {v4 .. v9}, LQg/f;->b(Landroid/graphics/Bitmap;ZFZZZ)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_18

    const-string v4, "getJpegFromRgba: bitmap is null"

    invoke-static {v0, v4}, Lcom/android/camera/log/LogK;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v34, v1

    move/from16 p0, v5

    move/from16 v4, v16

    move-object/from16 p6, v18

    move/from16 v6, v21

    move-object/from16 v1, v23

    goto :goto_b

    :cond_18
    sget-object v6, LF1/g3;->c:LF1/g3;

    invoke-static {v13, v4}, Lvr/j;->g(ILandroid/graphics/Bitmap;)[B

    move-result-object v4

    move/from16 v34, v1

    move-object v1, v4

    move/from16 p0, v5

    move/from16 v4, v16

    move-object/from16 p6, v18

    move/from16 v6, v21

    move-object/from16 v16, v15

    goto :goto_10

    :goto_d
    sget-object v16, LF1/g3;->c:LF1/g3;

    sget v16, Lcom/xiaomi/gl/texture/Jpeg;->a:I

    mul-int v16, v2, v3

    mul-int/lit8 v13, v16, 0x4

    move-object/from16 v16, v15

    array-length v15, v1

    if-eq v15, v13, :cond_19

    const-string/jumbo v15, "rgbaCompressToJpeg: size error, expected: "

    move/from16 p0, v5

    const-string v5, " x "

    move-object/from16 p6, v8

    const-string v8, " x 4 = "

    invoke-static {v2, v3, v15, v5, v8}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " dataLen: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    new-array v13, v8, [Ljava/lang/Object;

    const-string v8, "Jpeg"

    invoke-static {v8, v5, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_e
    const/16 v13, 0x57

    goto :goto_f

    :cond_19
    move/from16 p0, v5

    move-object/from16 p6, v8

    goto :goto_e

    :goto_f
    invoke-static {v1, v2, v3, v13}, Lcom/xiaomi/gl/texture/Jpeg;->rgbaToJpeg([BIII)[B

    move-result-object v1

    :goto_10
    if-eqz v1, :cond_1a

    array-length v5, v1

    if-nez v5, :cond_1b

    :cond_1a
    const-string v1, "getJpegFromRgba: jpeg data is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v23

    :cond_1b
    :goto_11
    sget-boolean v0, LK2/e;->n:Z

    if-eqz v0, :cond_1c

    if-eqz p0, :cond_1c

    add-int/lit16 v11, v11, 0xb4

    :cond_1c
    move v0, v11

    :goto_12
    invoke-interface/range {v26 .. v26}, Lj6/j;->V()Lj9/a;

    move-result-object v5

    if-eqz v1, :cond_2e

    if-nez v5, :cond_1d

    goto/16 :goto_1f

    :cond_1d
    sget-object v8, LGg/U;->n:LGg/U;

    invoke-virtual {v8}, LGg/P;->g()Z

    move-result v8

    if-nez v8, :cond_1e

    invoke-virtual {v12}, Lcom/android/camera/module/r;->isWCGOn()Z

    move-result v8

    if-eqz v8, :cond_1e

    move/from16 v8, v24

    goto :goto_13

    :cond_1e
    const/4 v8, 0x0

    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    if-eqz v8, :cond_20

    :try_start_1
    invoke-static {v1}, Lrf/a;->c([B)Lrf/b;

    move-result-object v13

    invoke-static {}, LMb/d;->c()[B

    move-result-object v15

    invoke-static {v13, v15}, Lk7/d;->c(Lrf/b;[B)V

    invoke-static {v13, v1}, Lrf/a;->g(Lrf/b;[B)[B

    move-result-object v13

    if-eqz v13, :cond_1f

    move-object v1, v13

    goto :goto_14

    :cond_1f
    const/4 v13, 0x0

    new-array v15, v13, [Ljava/lang/Object;

    const-string v13, "ExifToolBuild"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 p1, v1

    :try_start_2
    const-string/jumbo v1, "write exif error, exifJpegData is null"

    invoke-static {v13, v1, v15}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v1, p1

    :goto_14
    move/from16 v35, v11

    goto :goto_16

    :catch_0
    move-object/from16 p1, v1

    :catch_1
    const-string v1, "Camera2Module"

    const-string/jumbo v13, "writeImageWithExif error, return original jpeg"

    move/from16 v35, v11

    const/4 v15, 0x0

    new-array v11, v15, [Ljava/lang/Object;

    invoke-static {v1, v13, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_20
    move-object/from16 p1, v1

    move/from16 v35, v11

    :goto_15
    move-object/from16 v1, p1

    :goto_16
    const-string v11, "Camera2Module"

    const-string v13, "AnchorPreviewCallbackImpl#doSave, needIcc: "

    const-string v15, " ,mode: "

    invoke-static {v13, v15, v8}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v12}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " ,isCvWaterMarkEnabled: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, LGg/U;->n:LGg/U;

    invoke-virtual {v13}, LGg/P;->g()Z

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " ,cost: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v2, v19, v17

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v11, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Lj9/a;->t()Lj9/i0;

    move-result-object v2

    iget v2, v2, Lj9/i0;->a1:I

    invoke-virtual {v12, v2}, Lcom/android/camera/module/Camera2Module;->getPictureFormatSuitableForShot(I)I

    move-result v2

    const-string v3, "Camera2Module"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "saveJpegOrBitmapAsThumbnail: isParallel = "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v12, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v11, v11, Lv6/b;->e:Z

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", shot2Gallery = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v12, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", format = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, LQa/a;->c(I)Z

    move-result v11

    if-eqz v11, :cond_21

    const-string v11, "HEIC"

    goto :goto_17

    :cond_21
    const-string v11, "JPEG"

    :goto_17
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", data = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", anchorFrame= "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", noGaussian= "

    const-string v15, ", filterId= "

    invoke-static {v8, v9, v11, v10, v15}, LF1/u2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, LRh/r;

    iget v3, v5, Lj9/a;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-virtual {v12}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v8

    iget-wide v8, v8, Ll6/h;->y:J

    const/16 v22, -0x1

    move/from16 v21, v3

    move-wide/from16 v19, v8

    invoke-direct/range {v15 .. v22}, LRh/r;-><init>(Ljava/lang/String;JJII)V

    iget-object v3, v12, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v3, v3, Lv6/b;->e:Z

    if-nez v3, :cond_23

    iget-boolean v3, v12, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez v3, :cond_23

    iget-boolean v3, v12, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    if-eqz v3, :cond_22

    goto :goto_18

    :cond_22
    const/4 v3, 0x0

    goto :goto_19

    :cond_23
    :goto_18
    move/from16 v3, v24

    :goto_19
    iget-object v8, v15, LRh/r;->b:LRh/a;

    iput-boolean v3, v8, LRh/a;->i:Z

    const/4 v8, 0x0

    invoke-virtual {v15, v8, v1}, LRh/r;->a(I[B)V

    iget-object v1, v15, LRh/r;->g:LRh/s;

    iput-boolean v10, v1, LRh/s;->c:Z

    iget-object v1, v15, LRh/r;->j:LRh/y;

    iput-boolean v7, v1, LRh/y;->a:Z

    invoke-virtual {v5}, Lj9/a;->B()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v3, v15, LRh/r;->f:LRh/h;

    iput-object v1, v3, LRh/h;->b:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v1, v15, LRh/r;->d:LRh/f;

    iput-boolean v14, v1, LRh/f;->e:Z

    new-instance v1, Landroid/util/Size;

    move/from16 v3, p2

    move/from16 v5, p3

    invoke-direct {v1, v3, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v15, v1}, LRh/r;->C(Landroid/util/Size;)V

    iget-object v1, v15, LRh/r;->a:LRh/z;

    iput v2, v1, LRh/z;->j:I

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v3, v5}, Landroid/util/Size;-><init>(II)V

    iget-object v7, v15, LRh/r;->g:LRh/s;

    iput-object v1, v7, LRh/s;->s:Landroid/util/Size;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v3, v5}, Landroid/util/Size;-><init>(II)V

    iget-object v3, v15, LRh/r;->b:LRh/a;

    iput-object v1, v3, LRh/a;->b:Landroid/util/Size;

    invoke-interface/range {v26 .. v26}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->s4(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {v2}, LQa/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface/range {v26 .. v26}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->i1(Lj9/e;)Z

    move-result v1

    if-nez v1, :cond_25

    :cond_24
    move/from16 v1, v24

    goto :goto_1a

    :cond_25
    const/4 v1, 0x0

    :goto_1a
    iget-object v2, v15, LRh/r;->b:LRh/a;

    iput-boolean v1, v2, LRh/a;->c:Z

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, LNh/d;->a(Z)Z

    move-result v1

    invoke-virtual {v12}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v2

    check-cast v2, Lj6/a;

    iget-object v2, v2, Lj6/a;->q:Landroid/location/Location;

    sget-object v3, LS8/b;->g:LS8/b;

    if-eqz v1, :cond_26

    sget-object v3, LN5/c;->a:LN5/c;

    invoke-virtual {v3, v2}, LN5/c;->h(Landroid/location/Location;)LN5/c$a;

    move-result-object v23

    invoke-static {}, LS8/b;->b()LS8/b;

    move-result-object v3

    invoke-virtual {v3}, LS8/b;->a()Lcom/xiaomi/camera/bean/CloudWmAttribute;

    move-result-object v5

    move-object v7, v5

    move-object/from16 v5, v23

    goto :goto_1b

    :cond_26
    move-object/from16 v5, v23

    move-object v7, v5

    :goto_1b
    sget-object v8, LF1/g3;->c:LF1/g3;

    iget-object v8, v15, LRh/r;->d:LRh/f;

    const/16 v9, 0x57

    iput v9, v8, LRh/f;->g:I

    iget-object v8, v15, LRh/r;->a:LRh/z;

    iput v0, v8, LRh/z;->c:I

    move/from16 v0, v33

    iput v0, v8, LRh/z;->d:I

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvr/b0;->b(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v8, v15, LRh/r;->l:LRh/C;

    iput-boolean v0, v8, LRh/C;->v:Z

    invoke-virtual {v12}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget v0, v0, Lj6/a;->p:I

    iget-object v8, v15, LRh/r;->d:LRh/f;

    iput v0, v8, LRh/f;->f:I

    invoke-virtual {v13}, LGg/P;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v8, v15, LRh/r;->l:LRh/C;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v8, LRh/C;->w:Ljava/lang/String;

    iget-object v0, v15, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/ExifData;->setLocation(Landroid/location/Location;)V

    if-eqz v5, :cond_27

    iget-object v0, v5, LN5/c$a;->b:Ljava/lang/String;

    goto :goto_1c

    :cond_27
    const-string v0, ""

    :goto_1c
    iget-object v2, v15, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v2, v0}, Lcom/xiaomi/camera/core/ExifData;->setLocationAddress(Ljava/lang/String;)V

    if-eqz v5, :cond_28

    iget-object v0, v5, LN5/c$a;->c:Ljava/lang/String;

    goto :goto_1d

    :cond_28
    const-string v0, ""

    :goto_1d
    iget-object v2, v15, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v2, v0}, Lcom/xiaomi/camera/core/ExifData;->setLatlngStringCache(Ljava/lang/String;)V

    if-eqz v5, :cond_29

    iget-boolean v0, v5, LN5/c$a;->a:Z

    if-eqz v0, :cond_29

    move/from16 v0, v24

    goto :goto_1e

    :cond_29
    const/4 v0, 0x0

    :goto_1e
    iget-object v2, v15, LRh/r;->l:LRh/C;

    iput-boolean v0, v2, LRh/C;->m:Z

    invoke-virtual {v15, v4}, LRh/r;->t(I)V

    move/from16 v0, v32

    invoke-virtual {v15, v0}, LRh/r;->K(I)V

    move/from16 v2, v28

    invoke-virtual {v15, v2}, LRh/r;->M(I)V

    move/from16 v4, v29

    invoke-virtual {v15, v4}, LRh/r;->E(I)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/xiaomi/camera/effect/EffectController;->k(I)I

    move-result v0

    invoke-virtual {v15, v0}, LRh/r;->J(I)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/effect/EffectController;->C(I)I

    move-result v0

    invoke-virtual {v15, v0}, LRh/r;->L(I)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xiaomi/camera/effect/EffectController;->t(I)I

    move-result v0

    invoke-virtual {v15, v0}, LRh/r;->D(I)V

    invoke-virtual {v15, v6}, LRh/r;->x(I)V

    move-object/from16 v8, p6

    invoke-virtual {v15, v8}, LRh/r;->y(Ljava/lang/String;)V

    move/from16 v0, v34

    invoke-virtual {v15, v0}, LRh/r;->w(I)V

    invoke-virtual/range {v31 .. v31}, Lcom/xiaomi/camera/mivi/filter/MIVIRenderTag;->getLutBitmaps()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v15, LRh/r;->d:LRh/f;

    iput-object v0, v2, LRh/f;->h:Ljava/util/ArrayList;

    invoke-virtual/range {v31 .. v31}, Lcom/xiaomi/camera/mivi/filter/MIVIRenderTag;->getCandyParams()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v15, LRh/r;->d:LRh/f;

    iput-object v0, v2, LRh/f;->j:Ljava/util/ArrayList;

    iget-object v0, v15, LRh/r;->k:LRh/A;

    move/from16 v9, p4

    iput-boolean v9, v0, LRh/A;->a:Z

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/android/camera/module/Camera2Module;->getPictureInfo(Z)Lqh/f;

    move-result-object v2

    iget-object v0, v15, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/ExifData;->setPictureInfo(Lqh/f;)V

    iget-object v0, v15, LRh/r;->b:LRh/a;

    move/from16 v5, p0

    iput-boolean v5, v0, LRh/a;->h:Z

    invoke-static {}, LK2/e;->E()Z

    move-result v0

    iget-object v2, v15, LRh/r;->l:LRh/C;

    iput-boolean v0, v2, LRh/C;->k:Z

    invoke-static {}, Lcom/android/camera/module/Camera2Module;->getTiltShiftMode()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v15, LRh/r;->d:LRh/f;

    iget-object v2, v2, LRh/f;->k:Ln3/b$a;

    iput-object v0, v2, Ln3/b$a;->a:Ljava/lang/String;

    invoke-interface/range {v26 .. v26}, Lj6/j;->d0()Z

    move-result v0

    iget-object v2, v15, LRh/r;->b:LRh/a;

    iput-boolean v0, v2, LRh/a;->d:Z

    iget-object v0, v12, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    invoke-virtual {v0}, Lv6/b;->c()LFr/a;

    move-result-object v0

    invoke-virtual {v15, v0}, LRh/r;->v(LFr/a;)V

    iget-object v0, v15, LRh/r;->l:LRh/C;

    iput-boolean v1, v0, LRh/C;->e:Z

    iget-object v1, v3, LS8/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, LRh/C;->f:Ljava/lang/String;

    iget-boolean v0, v3, LS8/b;->b:Z

    iget-object v1, v15, LRh/r;->l:LRh/C;

    iput-boolean v0, v1, LRh/C;->g:Z

    iget-boolean v0, v3, LS8/b;->c:Z

    iput-boolean v0, v1, LRh/C;->h:Z

    iput-object v7, v1, LRh/C;->u:Lcom/xiaomi/camera/bean/CloudWmAttribute;

    move/from16 v11, v35

    iput v11, v1, LRh/C;->l:I

    invoke-static {}, LS8/d;->a()LS8/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LS8/d;->c()Z

    move-result v0

    iget-object v1, v15, LRh/r;->l:LRh/C;

    iput-boolean v0, v1, LRh/C;->n:Z

    invoke-static {}, Lcom/android/camera/data/data/w;->O()Z

    move-result v0

    iget-object v1, v15, LRh/r;->l:LRh/C;

    iput-boolean v0, v1, LRh/C;->o:Z

    invoke-static {}, Lcom/android/camera/data/data/E;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, v15, LRh/r;->l:LRh/C;

    iput v0, v1, LRh/C;->p:I

    invoke-virtual {v12}, Lcom/android/camera/module/Camera2Module;->getCaptureStartTime()J

    move-result-wide v0

    iget-object v2, v15, LRh/r;->a:LRh/z;

    iput-wide v0, v2, LRh/z;->h:J

    invoke-static {}, LQg/e;->b()I

    move-result v0

    iget-object v1, v15, LRh/r;->k:LRh/A;

    iput v0, v1, LRh/A;->f:I

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/effect/EffectController;->d()Li3/a;

    move-result-object v0

    iget-object v1, v15, LRh/r;->d:LRh/f;

    iput-object v0, v1, LRh/f;->b:Li3/a;

    move-object/from16 v6, v27

    if-eqz v27, :cond_2a

    iget-object v0, v6, LRh/r;->f:LRh/h;

    iget-object v0, v0, LRh/h;->c:Landroid/hardware/camera2/CaptureResult;

    iget-object v1, v15, LRh/r;->f:LRh/h;

    iput-object v0, v1, LRh/h;->c:Landroid/hardware/camera2/CaptureResult;

    :cond_2a
    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->p2()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v15, LRh/r;->g:LRh/s;

    const/4 v2, 0x1

    iput-boolean v2, v1, LRh/s;->h:Z

    :cond_2b
    invoke-virtual {v12}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-interface {v1}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v22}, Lk7/i;->G(LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/util/function/IntFunction;)V

    :cond_2c
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    const-string/jumbo v2, "shot_create_thumbnail"

    invoke-virtual {v1, v2}, LF6/q;->g(Ljava/lang/String;)J

    move-result-wide v1

    if-eqz v6, :cond_2d

    iget-object v3, v6, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ExifData;->getPictureInfo()Lqh/f;

    move-result-object v3

    if-eqz v3, :cond_2d

    iput-wide v1, v3, Lqh/f;->Q:J

    :cond_2d
    sget-boolean v1, LJe/c;->k:Z

    invoke-virtual {v0}, LJe/c;->b()V

    const-string v0, "Camera2Module"

    const-string v1, "X: do save thumbnail"

    const/4 v15, 0x0

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2e
    :goto_1f
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->b()V

    return-void
.end method
