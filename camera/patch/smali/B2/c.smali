.class public final LB2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(III)I
    .locals 7

    invoke-static {}, LQa/b;->a()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v2, 0xa2

    if-eq v2, p2, :cond_e

    const/16 v2, 0xa3

    if-eq v2, p2, :cond_e

    const/16 v2, 0xe6

    if-eq v2, p2, :cond_e

    const/16 v2, 0xe7

    if-eq v2, p2, :cond_e

    const/16 v2, 0xe1

    if-eq v2, p2, :cond_e

    const/16 v2, 0xba

    if-eq v2, p2, :cond_e

    const/16 v2, 0xbc

    if-eq v2, p2, :cond_e

    const/16 v2, 0xe8

    if-eq v2, p2, :cond_e

    invoke-static {}, Lur/c;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v3

    iget-object v3, v3, Lu6/f;->a:Lu6/b;

    invoke-virtual {v3}, Lu6/b;->P()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj9/e;

    invoke-static {v3}, Lj9/f;->O1(Lj9/e;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lj9/e;->J()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_4
    move v0, v5

    :goto_0
    if-eqz v0, :cond_e

    const-string v0, "[IMMUNESYS] bogusCameraId: "

    const-string v3, " actualCameraId: "

    const-string v4, " currentMode: "

    invoke-static {p0, p1, v0, v3, v4}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v3, "ActualOpenCameraId"

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->f()I

    move-result p0

    if-eq p0, v1, :cond_5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    iget-object p0, p0, Lu6/f;->a:Lu6/b;

    invoke-virtual {p0}, Lu6/b;->P()Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v5

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj9/e;

    invoke-static {v1}, Lj9/f;->k(Lj9/e;)I

    move-result v4

    invoke-static {v1}, Lj9/f;->s1(Lj9/e;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v1}, Lj9/f;->O1(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    move p0, v4

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move p0, p1

    :goto_2
    const/16 v0, 0xa7

    if-eq p2, v0, :cond_8

    const/16 v0, 0xb4

    if-ne p2, v0, :cond_d

    :cond_8
    invoke-static {p0}, Lu6/f;->h0(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "ultra"

    goto :goto_3

    :cond_9
    invoke-static {p0}, Lu6/f;->e0(I)Z

    move-result v0

    const-string/jumbo v1, "wide"

    if-eqz v0, :cond_b

    :cond_a
    move-object v0, v1

    goto :goto_3

    :cond_b
    invoke-static {p0}, Lu6/f;->b0(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "tele"

    goto :goto_3

    :cond_c
    invoke-static {p0}, Lu6/f;->g0(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Standalone"

    :goto_3
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/z0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/z0;

    if-eqz v1, :cond_d

    invoke-virtual {v1, p2, v0}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_d
    const-string p2, "[IMMUNESYS] replace camera id: "

    const-string v0, " to: "

    invoke-static {p1, p0, p2, v0}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_e
    :goto_4
    return p1
.end method

.method public static declared-synchronized b(II)I
    .locals 2

    const-class v0, LB2/c;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, LB2/c;->c(IIZ)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized c(IIZ)I
    .locals 22

    move/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "Use video mode camera id :"

    const-string v3, "Currently user selected zoom ratio is "

    const-string v4, "Currently user selected zoom ratio is "

    const-string/jumbo v5, "return previous actualCameraId : "

    const-string v6, "Currently user selected zoom ratio is "

    const-string v7, "Currently user selected zoom ratio is "

    const-string v8, "Currently selected camera lens: "

    const-string v9, "Currently user selected zoom ratio is "

    const-string v10, "Currently user selected zoom ratio is "

    const-string v11, "Currently user selected zoom ratio is "

    const-string v12, "live reopen cameraId: "

    const-string v13, "getActualOpenCameraId: #light tripartite. "

    const-string v14, "getActualOpenCameraId: #not support aux camera. "

    const-string v15, "getActualOpenCameraId: #dummy system enable. "

    move-object/from16 v16, v10

    const-string v10, "getActualOpenCameraId: #init failed. "

    const-class v17, LB2/c;

    monitor-enter v17

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lu6/f;->f()I

    move-result v18

    :goto_0
    move-object/from16 v19, v6

    move/from16 v6, v18

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :cond_0
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lu6/f;->A()I

    move-result v18

    goto :goto_0

    :goto_1
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lu6/f;->isInitialized()Z

    move-result v18

    move-object/from16 v20, v11

    const/4 v11, 0x0

    if-nez v18, :cond_1

    const-string v0, "ActualOpenCameraId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v17

    return v6

    :cond_1
    :try_start_1
    invoke-static {}, Lg2/a;->f()Lv2/D0;

    move-result-object v10

    invoke-virtual {v10}, Lv2/D0;->E()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v0, "ActualOpenCameraId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v17

    return v6

    :cond_2
    const/4 v10, 0x1

    if-nez v0, :cond_6f

    :try_start_2
    invoke-static {}, Lcom/android/camera/module/Y;->i()Z

    move-result v15

    if-nez v15, :cond_5

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v15

    const-string v11, "pref_camera_dual_enable_key"

    invoke-virtual {v15, v11, v10}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/android/camera/data/data/r;->o()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v11

    invoke-virtual {v11}, LJe/c;->I1()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v11

    invoke-virtual {v11}, Lu6/f;->l()Z

    move-result v11

    if-nez v11, :cond_5

    :cond_3
    invoke-static {}, Lcom/android/camera/data/data/r;->n()Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    invoke-static/range {p0 .. p1}, LB2/c;->g(II)I

    move-result v2

    invoke-static {v0, v2, v1}, LB2/c;->a(III)I

    move-result v0

    const-string v1, "ActualOpenCameraId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v17

    return v0

    :cond_5
    :goto_2
    :try_start_3
    invoke-static {}, Lg2/a;->c()Lu2/Q;

    move-result-object v11

    invoke-virtual {v11}, Lu2/Q;->S()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v11

    iget-object v11, v11, Lu6/f;->a:Lu6/b;

    invoke-virtual {v11}, Lu6/b;->P()Landroid/util/SparseArray;

    move-result-object v11

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v14

    invoke-virtual {v14}, Lu6/f;->f()I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lj9/e;

    invoke-static {v11}, Lj9/f;->X2(Lj9/e;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v2

    invoke-static {v0, v2, v1}, LB2/c;->a(III)I

    move-result v0

    const-string v1, "ActualOpenCameraId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v17

    return v0

    :cond_6
    const/16 v11, 0xaf

    if-eq v1, v11, :cond_5f

    const/16 v11, 0xba

    if-eq v1, v11, :cond_55

    const/16 v11, 0xbc

    if-eq v1, v11, :cond_55

    const/16 v11, 0xbe

    const/4 v14, -0x1

    if-eq v1, v11, :cond_4d

    const/16 v11, 0x100

    if-eq v1, v11, :cond_47

    const/16 v11, 0xb3

    if-eq v1, v11, :cond_46

    const/16 v11, 0xa7

    const/16 v15, 0xb4

    const/high16 v21, 0x3f800000    # 1.0f

    if-eq v1, v15, :cond_36

    const/16 v13, 0xb6

    if-eq v1, v13, :cond_6b

    const/16 v13, 0xb7

    if-eq v1, v13, :cond_4e

    const/16 v12, 0xe0

    if-eq v1, v12, :cond_56

    const/16 v12, 0xe1

    if-eq v1, v12, :cond_35

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    :try_start_4
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto/16 :goto_10

    :pswitch_0
    invoke-static {v1}, LB2/c;->f(I)I

    move-result v6

    goto/16 :goto_10

    :pswitch_1
    invoke-static {}, Lg2/a;->f()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/B;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/B;

    invoke-virtual {v2}, Lv2/B;->n()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    sget-object v3, Lf3/k;->b:Lf3/k;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto/16 :goto_10

    :pswitch_2
    invoke-static {v1}, Lcom/android/camera/data/data/r;->i(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto/16 :goto_10

    :cond_7
    invoke-static {v1}, Lcom/android/camera/data/data/j;->v1(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v6

    goto/16 :goto_10

    :cond_8
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->D()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-static {v1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v2

    const-string v3, "ActualOpenCameraId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmpg-float v3, v2, v21

    if-gez v3, :cond_9

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v6

    goto/16 :goto_10

    :cond_9
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v3

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->y5()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v3

    invoke-virtual {v3}, LJe/c;->N1()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lur/i;->i()F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_a

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->M()I

    move-result v6

    goto/16 :goto_10

    :cond_a
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v3

    invoke-virtual {v3}, Lu6/f;->r()I

    move-result v3

    if-eq v3, v14, :cond_c

    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v3

    invoke-virtual {v3}, LJe/c;->M1()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lur/i;->h()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_c

    invoke-static {}, Lg2/a;->f()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2}, Lv2/D0;->F()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto/16 :goto_10

    :cond_b
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->r()I

    move-result v6

    goto/16 :goto_10

    :cond_c
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto/16 :goto_10

    :pswitch_3
    invoke-static {v1}, LB2/c;->k(I)I

    move-result v6

    goto/16 :goto_10

    :pswitch_4
    invoke-static {}, LK2/e;->y()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {}, LK2/e;->B()Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_3

    :cond_d
    invoke-static {}, Lg2/a;->f()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/B0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/B0;

    invoke-virtual {v2}, Lv2/B0;->t()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lg2/a;->b()Lr2/f1;

    move-result-object v2

    invoke-virtual {v2}, Lr2/f1;->B()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    invoke-static {}, Lg2/a;->f()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2}, Lv2/D0;->C()I

    move-result v2

    if-lez v2, :cond_10

    :cond_f
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->d()I

    move-result v2

    if-eq v2, v14, :cond_10

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->d()I

    move-result v6

    goto/16 :goto_10

    :cond_10
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    iget-object v2, v2, Lu6/f;->a:Lu6/b;

    invoke-virtual {v2}, Lu6/b;->P()Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v3

    invoke-virtual {v3}, Lu6/f;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj9/e;

    invoke-static {v2}, Lj9/f;->i2(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->v()I

    move-result v6

    goto/16 :goto_10

    :cond_11
    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->y()I

    move-result v6

    goto/16 :goto_10

    :cond_12
    invoke-static {}, Lcom/android/camera/data/data/r;->n()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->d()I

    move-result v6

    goto/16 :goto_10

    :cond_13
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->y()I

    move-result v2

    if-eq v2, v14, :cond_14

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->y()I

    move-result v6

    goto/16 :goto_10

    :cond_14
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->d()I

    move-result v2

    if-eq v2, v14, :cond_15

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->d()I

    move-result v6

    goto/16 :goto_10

    :cond_15
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->v()I

    move-result v6

    goto/16 :goto_10

    :cond_16
    :goto_3
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v2

    invoke-static {v1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v3

    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v4

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->z5()Z

    move-result v4

    if-eqz v4, :cond_4f

    cmpg-float v3, v3, v21

    if-gez v3, :cond_4f

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v2

    goto/16 :goto_b

    :pswitch_5
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/c0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/c0;

    invoke-static {v11}, Lcom/android/camera/data/data/m;->m0(I)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v3

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->b2()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-interface {v2}, Lcom/android/camera/data/data/y;->h()Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_17
    invoke-static {v1}, LB2/c;->l(I)I

    move-result v6

    goto/16 :goto_10

    :pswitch_6
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v6

    invoke-virtual {v6}, LJe/c;->A1()Z

    move-result v6

    if-eqz v6, :cond_1a

    const/16 v6, 0xa2

    if-ne v1, v6, :cond_1a

    invoke-static {}, Lg2/a;->d()Lt2/j;

    move-result-object v6

    iget v6, v6, Lt2/j;->t:I

    invoke-static {}, Lcom/android/camera/data/data/j;->F1()Z

    move-result v7

    if-nez v7, :cond_1a

    if-eqz p2, :cond_18

    invoke-static {}, Lg2/a;->d()Lt2/j;

    move-result-object v6

    invoke-virtual {v6}, Lt2/j;->C()I

    move-result v6

    goto :goto_4

    :cond_18
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v7

    invoke-virtual {v7}, Lu6/f;->A()I

    move-result v7

    if-eq v6, v7, :cond_19

    goto :goto_4

    :cond_19
    invoke-static/range {p0 .. p2}, LB2/c;->m(IIZ)I

    move-result v6

    :goto_4
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v7

    invoke-virtual {v7}, Lu6/f;->h()I

    move-result v7

    if-eq v6, v7, :cond_1a

    if-eq v6, v14, :cond_1a

    const-string v2, "ActualOpenCameraId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_1a
    invoke-static {}, Lcom/android/camera/data/data/E;->X()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto/16 :goto_10

    :cond_1b
    invoke-static {}, Lcom/android/camera/data/data/m;->e0()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v1}, LB2/c;->k(I)I

    move-result v6

    goto/16 :goto_10

    :cond_1c
    invoke-static {}, LK2/e;->y()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    invoke-static {v1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v2

    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v3

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->z5()Z

    move-result v3

    if-eqz v3, :cond_6e

    cmpg-float v2, v2, v21

    if-gez v2, :cond_6e

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v6

    goto/16 :goto_10

    :cond_1d
    :pswitch_7
    invoke-static {}, LK2/e;->y()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto/16 :goto_10

    :cond_1e
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v5

    invoke-virtual {v5}, LJe/c;->L()V

    invoke-static {}, Lg2/a;->b()Lr2/f1;

    move-result-object v5

    const-class v6, Lr2/f0;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/f0;

    invoke-virtual {v5, v1}, Lr2/f0;->getPreferComponentValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/camera/data/data/j;->Q1(ILjava/lang/String;)Z

    move-result v6

    invoke-static {v1}, Lcom/android/camera/data/data/m;->q0(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    if-nez v6, :cond_1f

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    const-string v2, "ActualOpenCameraId"

    const-string v3, "Use main camera when video HDR is on"

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_1f
    invoke-static {v1}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-static {}, LB2/c;->i()I

    move-result v6

    goto/16 :goto_10

    :cond_20
    invoke-static {v1}, Lcom/android/camera/data/data/m;->t0(I)Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-static/range {p0 .. p2}, LB2/c;->m(IIZ)I

    move-result v6

    goto/16 :goto_10

    :cond_21
    invoke-static {v1}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->P()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->R4(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static/range {p0 .. p2}, LB2/c;->m(IIZ)I

    move-result v6

    goto/16 :goto_10

    :cond_22
    invoke-static {v1}, Lcom/android/camera/data/data/E;->m(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PRO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v6

    goto/16 :goto_10

    :cond_23
    invoke-static {v1}, Lcom/android/camera/data/data/E;->m(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "ActualOpenCameraId"

    const-string v3, "Use main camera when SuperEISProValue is normal"

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto/16 :goto_10

    :cond_24
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v2

    invoke-virtual {v2}, LJe/c;->q0()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v2

    :goto_5
    move v6, v2

    goto :goto_6

    :cond_25
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v2

    goto :goto_5

    :goto_6
    const-string v2, "ActualOpenCameraId"

    const-string v3, "Use main camera when SuperEisUseWideCamera"

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_26
    invoke-static {v1}, Lcom/android/camera/data/data/j;->v1(I)Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v6

    goto/16 :goto_10

    :cond_27
    invoke-static {v1}, Lcom/android/camera/data/data/m;->E(I)Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    const-string v2, "ActualOpenCameraId"

    const-string v3, "Use main camera when 4K120Fps on"

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lur/i;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v10, :cond_6e

    invoke-static {}, Lur/i;->h()F

    move-result v3

    invoke-static {}, Lur/i;->i()F

    move-result v5

    invoke-static {v1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v7

    const-string v8, "ActualOpenCameraId"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v8, v4, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v8, LB2/a;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9}, LB2/a;-><init>(FI)V

    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_28

    cmpl-float v4, v7, v5

    if-ltz v4, :cond_28

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->M()I

    move-result v2

    const-string v3, "ActualOpenCameraId"

    const-string v4, "Use ultra tele camera when 4K120Fps on"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_28
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, LB2/b;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, LB2/b;-><init>(FI)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_6e

    cmpl-float v2, v7, v3

    if-ltz v2, :cond_6e

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->r()I

    move-result v2

    const-string v3, "ActualOpenCameraId"

    const-string v4, "Use tele camera when 4K120Fps on"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_29
    invoke-static {v1}, Lcom/android/camera/data/data/E;->J(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v2, "ActualOpenCameraId"

    const-string v3, "Use main camera when lofic is enable"

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto/16 :goto_10

    :cond_2a
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->D()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-static {v1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v4

    const-string v6, "ActualOpenCameraId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v3, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_2b

    invoke-virtual {v5, v1}, Lr2/f0;->getPersistValue(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_2b
    invoke-virtual {v5, v1}, Lr2/f0;->getPreferComponentValue(I)Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-static {v1, v3}, Lcom/android/camera/data/data/j;->Q1(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-static {v1, v10}, Lcom/android/camera/data/data/j;->f(IZ)Z

    move-result v6

    if-nez v6, :cond_2c

    invoke-static {v1, v10}, Lcom/android/camera/data/data/j;->e(IZ)Z

    move-result v6

    if-eqz v6, :cond_2e

    :cond_2c
    cmpg-float v6, v4, v21

    if-gez v6, :cond_2e

    const-string v6, "8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2d

    const-string v6, "6,60"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2d

    goto :goto_8

    :cond_2d
    const/4 v10, 0x0

    :cond_2e
    :goto_8
    if-eqz v10, :cond_30

    invoke-virtual {v5, v3}, Lr2/f0;->t(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Lcom/android/camera/data/data/j;->F1()Z

    move-result v7

    if-nez v7, :cond_2f

    invoke-static {}, Lg2/a;->d()Lt2/j;

    move-result-object v7

    iget v7, v7, Lt2/j;->t:I

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v8

    invoke-virtual {v8}, Lu6/f;->A()I

    move-result v8

    if-ne v7, v8, :cond_2f

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v6

    invoke-virtual {v6}, Lu2/Q;->B()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lr2/f0;->t(Ljava/lang/String;)I

    move-result v6

    :cond_2f
    if-eq v6, v14, :cond_30

    const-string v2, "ActualOpenCameraId"

    const-string v3, "Use dynamic camera id when support video sat"

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_30
    cmpg-float v6, v4, v21

    if-gez v6, :cond_31

    if-nez v10, :cond_31

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v6

    const-string v2, "ActualOpenCameraId"

    const-string v3, "Use ultra wide camera id when zoom ratio is less than RATIO_WIDE"

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_31
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v6

    iget-object v6, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->I5()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-static {}, Lur/i;->i()F

    move-result v6

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_33

    if-nez v10, :cond_33

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->M()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lr2/f0;->F(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->r()I

    move-result v2

    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v4

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H5()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v5, v2, v3}, Lr2/f0;->F(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    const-string v3, "ActualOpenCameraId"

    const-string v4, "Use tele camera when VideoToUltraTele no supportVideoQuality"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_32
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v2

    const-string v3, "ActualOpenCameraId"

    const-string v4, "Use main camera when VideoToUltraTele no supportVideoQuality"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_33
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v6

    iget-object v6, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H5()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-static {}, Lur/i;->h()F

    move-result v6

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_34

    if-nez v10, :cond_34

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->r()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lr2/f0;->F(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    const-string v2, "ActualOpenCameraId"

    const-string v3, "Use main camera when VideoToTele no supportVideoQuality"

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_34
    invoke-static/range {p0 .. p2}, LB2/c;->m(IIZ)I

    move-result v6

    const-string v3, "ActualOpenCameraId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_35
    :pswitch_8
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->n()I

    move-result v6

    goto/16 :goto_10

    :cond_36
    :pswitch_9
    invoke-static {v1}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->j()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {}, LB2/c;->h()I

    move-result v6

    goto/16 :goto_10

    :cond_37
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v2

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K7()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->o()I

    move-result v6

    goto/16 :goto_10

    :cond_38
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v2

    invoke-virtual {v2}, LJe/c;->z2()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->r()I

    move-result v6

    goto/16 :goto_10

    :cond_39
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v6

    goto/16 :goto_10

    :cond_3a
    invoke-static {v1}, Lcom/android/camera/data/data/r;->p(I)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-static {v1}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActualOpenCameraId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v3, "wide"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto :goto_9

    :cond_3b
    const-string/jumbo v3, "tele"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->r()I

    move-result v6

    goto :goto_9

    :cond_3c
    const-string/jumbo v3, "ultra"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v6

    goto :goto_9

    :cond_3d
    const-string v3, "macro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->o()I

    move-result v6

    goto :goto_9

    :cond_3e
    const-string v3, "Standalone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->M()I

    move-result v6

    :cond_3f
    :goto_9
    if-ne v6, v14, :cond_40

    invoke-static {v0}, LB2/c;->e(I)I

    move-result v6

    :cond_40
    invoke-static/range {p1 .. p2}, Lcom/android/camera/data/data/j;->j1(IZ)Z

    move-result v2

    if-eqz v2, :cond_6e

    if-ne v1, v11, :cond_41

    invoke-static {}, Lcom/android/camera/data/data/r;->o()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->v()I

    move-result v6

    goto/16 :goto_10

    :cond_41
    if-ne v1, v15, :cond_6e

    invoke-static {v1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v2

    const-string v3, "ActualOpenCameraId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->b()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/f0;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/f0;

    if-eqz p2, :cond_42

    invoke-virtual {v3, v1}, Lr2/f0;->getPersistValue(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_42
    invoke-virtual {v3, v1}, Lr2/f0;->getPreferComponentValue(I)Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-static {v1, v10}, Lcom/android/camera/data/data/j;->f(IZ)Z

    move-result v5

    if-nez v5, :cond_43

    invoke-static {v1, v10}, Lcom/android/camera/data/data/j;->e(IZ)Z

    move-result v5

    if-eqz v5, :cond_44

    :cond_43
    cmpg-float v2, v2, v21

    if-gez v2, :cond_44

    const-string v2, "8"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "6,60"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    :cond_44
    invoke-virtual {v3, v4}, Lr2/f0;->t(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v14, :cond_45

    const-string v2, "ActualOpenCameraId"

    const-string v3, "Use dynamic camera id when support video sat"

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_45
    invoke-static/range {p0 .. p2}, LB2/c;->m(IIZ)I

    move-result v6

    goto/16 :goto_10

    :cond_46
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto/16 :goto_10

    :cond_47
    const/high16 v21, 0x3f800000    # 1.0f

    :pswitch_a
    invoke-static {v1}, Lcom/android/camera/data/data/m;->m0(I)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v2

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->b2()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-static {v1}, LB2/c;->l(I)I

    move-result v6

    goto/16 :goto_10

    :cond_48
    const/16 v2, 0xe7

    if-ne v1, v2, :cond_56

    invoke-static {}, Lcom/android/camera/data/data/j;->L0()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-static {v1}, Lcom/android/camera/data/data/j;->O0(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v2

    invoke-static {v1}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    const-class v5, Lv2/d0;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/d0;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lv2/d0;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4f

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4f

    const-string/jumbo v5, "tele"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->r()I

    move-result v2

    goto/16 :goto_b

    :cond_49
    const-string/jumbo v5, "ultra"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v2

    goto :goto_b

    :cond_4a
    const-string v5, "macro"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->o()I

    move-result v2

    goto :goto_b

    :cond_4b
    const-string v5, "Standalone"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->M()I

    move-result v2

    goto :goto_b

    :cond_4c
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->v()I

    move-result v6

    goto/16 :goto_10

    :cond_4d
    const/high16 v21, 0x3f800000    # 1.0f

    :cond_4e
    invoke-static {}, Lg2/a;->d()Lt2/j;

    move-result-object v2

    invoke-virtual {v2}, Lt2/j;->D()I

    move-result v2

    invoke-static {}, Lg2/a;->d()Lt2/j;

    move-result-object v3

    const-class v4, Lt2/c;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt2/c;

    iget-object v3, v3, Lt2/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_50

    if-eq v2, v14, :cond_50

    const-string v3, "ActualOpenCameraId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4f
    :goto_b
    move v6, v2

    goto/16 :goto_10

    :cond_50
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->D()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-static {v1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v2

    const-string v3, "ActualOpenCameraId"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmpg-float v3, v2, v21

    if-gez v3, :cond_52

    invoke-static {}, Lg2/a;->b()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/f0;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/f0;

    if-eqz p2, :cond_51

    invoke-virtual {v3, v1}, Lr2/f0;->getPersistValue(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_51
    invoke-virtual {v3, v1}, Lr2/f0;->getPreferComponentValue(I)Ljava/lang/String;

    move-result-object v3

    :goto_c
    invoke-static {v1, v3}, Lcom/android/camera/data/data/j;->Q1(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v6

    goto/16 :goto_10

    :cond_52
    invoke-static {}, Lg2/a;->d()Lt2/j;

    move-result-object v3

    const-class v4, Lt2/g;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt2/g;

    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v4

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->I5()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-static {}, Lur/i;->i()F

    move-result v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_53

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->M()I

    move-result v6

    invoke-virtual {v3, v1, v6}, Lt2/g;->p(II)Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto/16 :goto_10

    :cond_53
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v4

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H5()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-static {}, Lur/i;->h()F

    move-result v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_54

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->r()I

    move-result v6

    invoke-virtual {v3, v1, v6}, Lt2/g;->p(II)Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto/16 :goto_10

    :cond_54
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto/16 :goto_10

    :cond_55
    const/high16 v21, 0x3f800000    # 1.0f

    :cond_56
    :pswitch_b
    invoke-static {v1}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->j()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-static {}, LB2/c;->h()I

    move-result v6

    goto/16 :goto_10

    :cond_57
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v2

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K7()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->o()I

    move-result v6

    goto/16 :goto_10

    :cond_58
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v2

    invoke-virtual {v2}, LJe/c;->z2()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->r()I

    move-result v6

    goto/16 :goto_10

    :cond_59
    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v2

    invoke-virtual {v2}, LJe/c;->B2()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->M()I

    move-result v6

    goto/16 :goto_10

    :cond_5a
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v6

    goto/16 :goto_10

    :cond_5b
    invoke-static {}, LEv/G;->c()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-static {}, Lcom/android/camera/data/data/r;->o()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-static {v1}, Lcom/android/camera/data/data/j;->v1(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v2

    :goto_d
    move v6, v2

    goto :goto_e

    :cond_5c
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->v()I

    move-result v2

    goto :goto_d

    :cond_5d
    invoke-static {v1}, Lcom/android/camera/data/data/j;->v1(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v2

    goto :goto_d

    :cond_5e
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v2

    goto :goto_d

    :goto_e
    invoke-static {}, Lcom/android/camera/data/data/r;->o()Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->D()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-static {v1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v2

    const-string v3, "ActualOpenCameraId"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmpg-float v2, v2, v21

    if-gez v2, :cond_6e

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v6

    goto/16 :goto_10

    :cond_5f
    const/high16 v21, 0x3f800000    # 1.0f

    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v2

    invoke-virtual {v2}, LJe/c;->p1()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-static {}, Lj9/q0;->g()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-static {}, Lj9/q0;->f()Z

    move-result v2

    if-nez v2, :cond_63

    :cond_60
    invoke-static {}, Lj9/q0;->g()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-static {}, Lj9/q0;->e()Z

    move-result v2

    if-nez v2, :cond_63

    :cond_61
    invoke-static {}, Lj9/q0;->g()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-static {}, Lj9/q0;->h()Z

    move-result v2

    if-nez v2, :cond_63

    :cond_62
    invoke-static {}, Lj9/q0;->h()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-static {}, Lj9/q0;->e()Z

    move-result v2

    if-eqz v2, :cond_6b

    :cond_63
    invoke-static {v1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v2

    const-string v3, "ActualOpenCameraId"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v3

    invoke-virtual {v3}, LJe/c;->i1()Z

    move-result v3

    if-nez v3, :cond_68

    invoke-static {}, Lg2/a;->f()Lv2/D0;

    move-result-object v3

    invoke-virtual {v3}, Lv2/D0;->D()Z

    move-result v3

    if-eqz v3, :cond_64

    goto :goto_f

    :cond_64
    cmpg-float v3, v2, v21

    if-gez v3, :cond_65

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v6

    goto/16 :goto_10

    :cond_65
    invoke-static {}, Lur/i;->i()F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_66

    invoke-static {}, LJe/c;->B()LJe/c;

    move-result-object v3

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->y5()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->M()I

    move-result v6

    goto/16 :goto_10

    :cond_66
    invoke-static {}, Lur/i;->h()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_67

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->r()I

    move-result v6

    goto/16 :goto_10

    :cond_67
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto/16 :goto_10

    :cond_68
    :goto_f
    invoke-static {}, Lg2/a;->b()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/c0;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/c0;

    if-eqz v3, :cond_69

    invoke-virtual {v3}, Lr2/c0;->D()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->M()I

    move-result v2

    goto/16 :goto_b

    :cond_69
    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Lr2/c0;->C()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-static {}, Lur/i;->h()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6a

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->r()I

    move-result v2

    goto/16 :goto_b

    :cond_6a
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v2

    goto/16 :goto_b

    :cond_6b
    invoke-static {v1}, Lcom/android/camera/data/data/r;->p(I)Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-static {v1}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wide"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    goto :goto_10

    :cond_6c
    const-string v3, "Standalone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->M()I

    move-result v6

    goto :goto_10

    :cond_6d
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v6

    :cond_6e
    :goto_10
    invoke-static {v0, v6, v1}, LB2/c;->a(III)I

    move-result v6

    if-eqz p2, :cond_70

    invoke-static {}, Lg2/a;->d()Lt2/j;

    move-result-object v2

    invoke-virtual {v2, v6}, Lt2/j;->F(I)V

    goto :goto_11

    :cond_6f
    if-ne v0, v10, :cond_70

    invoke-static/range {p0 .. p1}, LB2/c;->d(II)I

    move-result v6

    :cond_70
    :goto_11
    const-string v2, "ActualOpenCameraId"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "getActualOpenCameraId: mode=%x, id=%d->%d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v17

    return v6

    :goto_12
    :try_start_5
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa6
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xab
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xcc
        :pswitch_1
        :pswitch_b
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xe3
        :pswitch_0
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static d(II)I
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0xab

    const/4 v2, 0x0

    const-string v3, "ActualOpenCameraId"

    if-ne p1, v1, :cond_3

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->S()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->r3(Lj9/e;)Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result p1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v5, Lv2/i0;

    invoke-virtual {v1, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/i0;

    invoke-virtual {v1, p1, v0}, Lv2/i0;->w(FZ)F

    move-result p1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-static {p1, v0}, Lj9/q0;->c(FZ)I

    move-result v0

    iget-object v1, v1, Lu6/f;->a:Lu6/b;

    invoke-interface {v1, v0}, Lu6/a;->q(I)I

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "getActualOpenFrontCameraId: fail to get camera id, current zoom ratio = "

    invoke-static {v0, p1}, LP0/g;->d(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    return v0

    :cond_1
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p1

    invoke-virtual {p1}, Lu6/f;->m()I

    move-result p1

    if-ne p1, v4, :cond_2

    return p0

    :cond_2
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->m()I

    move-result p0

    return p0

    :cond_3
    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0, p1}, LJe/c;->S(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    const-string v4, "pref_camera_dual_enable_key"

    invoke-virtual {v1, v4, v0}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    iget-object v0, v0, Lu6/f;->a:Lu6/b;

    invoke-interface {v0}, Lu6/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->D()I

    move-result p0

    return p0

    :cond_4
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->A()I

    move-result v0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    iget-object v1, v1, Lu6/f;->a:Lu6/b;

    invoke-interface {v1}, Lu6/a;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, LJe/c;->S(I)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {p1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result p0

    const-string p1, "Currently user selected zoom ratio is "

    invoke-static {p1, p0}, LP0/g;->d(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lur/i;->d()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_5

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->G()I

    move-result p0

    return p0

    :cond_5
    return v0
.end method

.method public static e(I)I
    .locals 5

    invoke-static {}, LQa/b;->a()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lur/c;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    if-ne v3, v0, :cond_2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->f()I

    move-result v0

    if-eq v0, v1, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    iget-object v0, v0, Lu6/f;->a:Lu6/b;

    invoke-virtual {v0}, Lu6/b;->P()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_5

    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj9/e;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lj9/e;->y()I

    move-result v4

    if-ne v4, v3, :cond_4

    iget p0, v1, Lj9/e;->e:I

    return p0

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return p0
.end method

.method public static f(I)I
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportCinematicPortrait"
        type = 0x2
    .end annotation

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->f()I

    move-result v0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu6/f;->O(I)Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->u2(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/camera/data/data/j;->N(I)F

    move-result p0

    const-string v1, "getCinematicActualCameraId, zoom ratio: "

    invoke-static {v1, p0}, LP0/g;->d(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ActualOpenCameraId"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lur/i;->h()F

    move-result v1

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->r()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static g(II)I
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {p1}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object v0, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K7()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p1

    invoke-virtual {p1}, Lu6/f;->o()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LJe/c;->z2()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p1

    invoke-virtual {p1}, Lu6/f;->r()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p1

    invoke-virtual {p1}, Lu6/f;->k()I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/data/data/r;->o()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->D()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p1

    invoke-virtual {p1}, Lu6/f;->k()I

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    if-ne p1, v1, :cond_4

    invoke-static {p0}, LB2/c;->e(I)I

    move-result p0

    return p0

    :cond_4
    return p1
.end method

.method public static h()I
    .locals 2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->N()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->s()I

    move-result v0

    return v0
.end method

.method public static i()I
    .locals 2

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K7()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->o()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, LJe/c;->z2()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->r()I

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, LJe/c;->B2()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->M()I

    move-result v0

    return v0

    :cond_2
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    iget-object v0, v0, Lu6/f;->a:Lu6/b;

    invoke-interface {v0}, Lu6/a;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LB2/c;->h()I

    move-result v0

    return v0

    :cond_3
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->k()I

    move-result v0

    return v0
.end method

.method public static j()I
    .locals 2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    iget-object v0, v0, Lu6/f;->a:Lu6/b;

    invoke-interface {v0}, Lu6/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LB2/c;->h()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K7()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->o()I

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, LJe/c;->z2()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->r()I

    move-result v0

    return v0

    :cond_2
    invoke-virtual {v0}, LJe/c;->B2()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->M()I

    move-result v0

    return v0

    :cond_3
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->k()I

    move-result v0

    return v0
.end method

.method public static k(I)I
    .locals 3

    invoke-static {p0}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    iget-object p0, p0, Lu6/f;->a:Lu6/b;

    invoke-interface {p0}, Lu6/a;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LB2/c;->h()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object v0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K7()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->o()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, LJe/c;->z2()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->r()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, LJe/c;->B2()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->M()I

    move-result p0

    return p0

    :cond_3
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->k()I

    move-result p0

    return p0

    :cond_4
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/W;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/W;

    invoke-static {p0}, Lcom/android/camera/data/data/j;->N(I)F

    move-result p0

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "ultra_wide"

    invoke-virtual {v0, v1}, Lr2/W;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_5

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->k()I

    move-result p0

    return p0

    :cond_5
    const-string/jumbo v1, "tele"

    invoke-virtual {v0, v1}, Lr2/W;->p(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lur/i;->h()F

    move-result v2

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_6

    invoke-static {}, Lur/i;->i()F

    move-result v2

    cmpg-float v2, p0, v2

    if-ltz v2, :cond_7

    :cond_6
    invoke-virtual {v0, v1}, Lr2/W;->p(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "ultra_tele"

    if-eqz v1, :cond_8

    invoke-virtual {v0, v2}, Lr2/W;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lur/i;->i()F

    move-result v1

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_8

    :cond_7
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->r()I

    move-result p0

    return p0

    :cond_8
    invoke-virtual {v0, v2}, Lr2/W;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lur/i;->i()F

    move-result v0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_9

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->M()I

    move-result p0

    return p0

    :cond_9
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->f()I

    move-result p0

    return p0
.end method

.method public static l(I)I
    .locals 3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/c0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c0;

    invoke-virtual {v0, p0}, Lr2/c0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "REARx7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lr2/c0;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->M()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lr2/c0;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->r()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0}, Lr2/c0;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->f()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {v0, p0}, Lr2/c0;->P(I)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->f()I

    move-result p0

    return p0

    :cond_3
    invoke-static {p0}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->k()I

    move-result p0

    return p0

    :cond_4
    invoke-static {}, Lur/i;->i()F

    move-result v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_5

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->y5()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->M()I

    move-result p0

    return p0

    :cond_5
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    iget-object v2, v2, Lu6/f;->a:Lu6/b;

    invoke-interface {v2}, Lu6/a;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lur/i;->h()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_6

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->r()I

    move-result p0

    return p0

    :cond_6
    invoke-virtual {v0, p0}, Lr2/c0;->P(I)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->f()I

    move-result p0

    return p0
.end method

.method public static m(IIZ)I
    .locals 8

    invoke-static {p1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/f0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/f0;

    if-eqz p2, :cond_0

    invoke-virtual {v1, p1}, Lr2/f0;->getPersistValue(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lr2/f0;->getPreferComponentValue(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lcom/android/camera/data/data/j;->Q1(ILjava/lang/String;)Z

    move-result v1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->Z()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->R4(Lj9/e;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const/16 v4, 0xa2

    const-string v5, "ActualOpenCameraId"

    if-ne p1, v4, :cond_7

    if-nez v1, :cond_7

    invoke-static {p1}, Lcom/android/camera/data/data/m;->t0(I)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lj9/q0;->f:Lj9/q0$o;

    invoke-virtual {v6}, LQg/r;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lj9/q0;->a()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    :cond_2
    if-eqz v2, :cond_7

    :cond_3
    invoke-static {}, Lur/i;->i()F

    move-result p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_4

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->y5()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Use ultra tele camera id"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->M()I

    move-result p0

    return p0

    :cond_4
    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, v0, p0

    if-gez p0, :cond_5

    const-string p0, "Use ultra wide camera id"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->k()I

    move-result p0

    return p0

    :cond_5
    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H5()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lur/i;->h()F

    move-result p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_6

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    iget-object p0, p0, Lu6/f;->a:Lu6/b;

    invoke-interface {p0}, Lu6/a;->g()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "Use aux camera id"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->r()I

    move-result p0

    return p0

    :cond_6
    const-string p0, "Use main camera when #1"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->f()I

    move-result p0

    return p0

    :cond_7
    invoke-static {p1}, Lcom/android/camera/data/data/m;->t0(I)Z

    move-result v2

    if-eqz v2, :cond_a

    if-ne p1, v4, :cond_9

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->y5()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p1

    invoke-virtual {p1}, Lu6/f;->M()I

    move-result p1

    invoke-virtual {p0, p1}, Lu6/f;->O(I)Lj9/e;

    move-result-object p0

    invoke-static {p0}, Lj9/f;->U0(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lur/i;->i()F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_8

    const-string p0, "Use main camera when 8KOpen and (zoomRatio < UltraTeleMinZoomRatio)"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->f()I

    move-result p0

    return p0

    :cond_8
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->M()I

    move-result p0

    return p0

    :cond_9
    const-string p0, "Use main camera when 8KOpen"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->f()I

    move-result p0

    return p0

    :cond_a
    invoke-static {}, LEv/G;->c()Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->C2()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "Use main camera when no supportVideoSAT"

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v5, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, LB2/c;->e(I)I

    move-result p0

    return p0

    :cond_b
    if-nez v1, :cond_c

    const-string p0, "Use main camera when no supportVideoSATForVideoQuality, mode: "

    const-string v0, ", video quality: "

    invoke-static {p1, p0, v0, p2}, LI4/c;->f(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->f()I

    move-result p0

    return p0

    :cond_c
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->h()I

    move-result p0

    return p0
.end method

.method public static n(IIII)Z
    .locals 4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->P()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->G3(Lj9/e;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eq p2, p0, :cond_1

    goto/16 :goto_6

    :cond_1
    const/16 p0, 0xcc

    const/4 p2, 0x1

    if-eq p3, p0, :cond_3

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p0, p2

    :goto_1
    const/16 v1, 0xce

    if-eq p3, v1, :cond_5

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v1, p2

    :goto_3
    if-nez p0, :cond_11

    if-eqz v1, :cond_6

    goto/16 :goto_6

    :cond_6
    const/16 p0, 0xe2

    if-ne p3, p0, :cond_7

    goto/16 :goto_6

    :cond_7
    const/16 p0, 0xa9

    if-ne p1, p0, :cond_8

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->M()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v3, Lr2/B0;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/B0;

    invoke-virtual {v1, p0}, Lr2/B0;->t(I)Z

    move-result p0

    if-eqz p0, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    iget v1, p0, Lu2/Q;->u:I

    invoke-virtual {p0, v1}, Lu2/Q;->E(I)I

    move-result p0

    const/16 v1, 0xd6

    if-eq p0, v1, :cond_9

    if-ne p3, v1, :cond_d

    :cond_9
    if-eqz v0, :cond_d

    iget-object p0, v0, Lj9/e;->U3:Ljava/lang/Boolean;

    if-nez p0, :cond_c

    sget-object p0, Lga/w0;->D2:Lga/D0;

    invoke-virtual {p0}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget v1, Lga/E0;->a:I

    iget-object v3, v0, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v3, p0, v1}, Lga/E0;->i(Landroid/hardware/camera2/CameraCharacteristics;Lga/D0;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_a

    move p0, p2

    goto :goto_4

    :cond_a
    move p0, v2

    :goto_4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lj9/e;->U3:Ljava/lang/Boolean;

    goto :goto_5

    :cond_b
    new-array p0, v2, [Ljava/lang/Object;

    const-string v1, "CameraCapabilities"

    const-string v3, "isVideoNightNeedReopenCamera not defined"

    invoke-static {v1, v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, v0, Lj9/e;->U3:Ljava/lang/Boolean;

    :cond_c
    :goto_5
    iget-object p0, v0, Lj9/e;->U3:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_6

    :cond_d
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    iget-boolean p0, p0, Lu2/Q;->B:Z

    if-eqz p0, :cond_e

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    iput-boolean v2, p0, Lu2/Q;->B:Z

    return v2

    :cond_e
    const/16 p0, 0xa2

    if-ne p3, p0, :cond_f

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->P()Lj9/e;

    move-result-object p0

    invoke-static {p0}, Lj9/f;->o1(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {p3}, Lcom/android/camera/data/data/E;->U(I)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_6

    :cond_f
    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0xab

    if-ne p1, p0, :cond_10

    invoke-static {v0}, Lj9/f;->s1(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {p1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result p0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    const-class p3, Lv2/i0;

    invoke-virtual {p1, p3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/i0;

    invoke-virtual {p1, p0, v2}, Lv2/i0;->w(FZ)F

    move-result p0

    invoke-static {p0, v2}, Lj9/q0;->c(FZ)I

    move-result p0

    const/16 p1, 0x44

    if-eq p0, p1, :cond_11

    :cond_10
    return p2

    :cond_11
    :goto_6
    return v2
.end method
