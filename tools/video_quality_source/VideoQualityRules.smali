.class public final Lcom/prometheus/camera/video/VideoQualityRules;
.super Ljava/lang/Object;

.method public static apply(Lr2/f0;Lr2/j1$a;Ljava/util/ArrayList;ILj9/e;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-string v6, "8,120"

    const-string v7, "8,60"

    const-string v8, "8,24"

    const-string v9, "6,60"

    const-string v11, "6,24"

    const-string v13, "3001"

    const-string v14, "8"

    const/16 v16, 0x2

    const-string v15, "6"

    const-string v12, "5"

    const-string v10, "3001,24"

    const/16 v17, -0x1

    const/16 v18, 0x6

    const/16 v19, 0x8

    const/4 v3, 0x0

    iput v3, v0, Lr2/f0;->j:I

    invoke-static {v5}, Lcom/android/camera/data/data/E;->u(I)Z

    move-result v21

    if-eqz v21, :cond_1

    sget-boolean v21, LJe/c;->k:Z

    const/16 v21, 0x61e

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->x()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lr2/f0;->P([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v1, Lr2/j1$a;->a:Ljava/util/List;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move/from16 v2, v21

    goto :goto_0

    :cond_0
    const/16 v2, 0x51e

    :goto_0
    iput v2, v0, Lr2/f0;->j:I

    goto :goto_1

    :cond_1
    const/16 v21, 0x61e

    :goto_1
    invoke-static {v5, v4}, Lcom/android/camera/data/data/m;->r0(ILj9/e;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v4, Lj9/e;->H3:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    sget-object v2, Lga/w0;->w2:Lga/D0;

    invoke-virtual {v4, v2}, Lj9/e;->X0(Lga/D0;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v4, Lj9/e;->H3:Ljava/util/ArrayList;

    :cond_2
    iget-object v2, v4, Lj9/e;->H3:Ljava/util/ArrayList;

    new-instance v3, Lr2/j1$a;

    invoke-direct {v3}, Lr2/j1$a;-><init>()V

    iput-object v3, v0, Lr2/f0;->f:Lr2/j1$a;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v0, Lr2/f0;->f:Lr2/j1$a;

    const/16 v3, 0x800

    iput v3, v2, Lr2/j1$a;->b:I

    const/16 v3, 0x1e

    iput v3, v2, Lr2/j1$a;->e:I

    iput v3, v2, Lr2/j1$a;->d:I

    :goto_2
    move/from16 v2, v21

    goto :goto_3

    :cond_3
    iget-object v3, v0, Lr2/f0;->f:Lr2/j1$a;

    iput-object v2, v3, Lr2/j1$a;->a:Ljava/util/List;

    goto :goto_2

    :goto_3
    iput v2, v0, Lr2/f0;->j:I

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    iput-object v2, v0, Lr2/f0;->f:Lr2/j1$a;

    :goto_4
    invoke-static {v5}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v2

    const/16 v3, 0x600

    if-eqz v2, :cond_8

    iget-object v2, v4, Lj9/e;->I3:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    sget-object v2, Lga/w0;->x2:Lga/D0;

    invoke-virtual {v4, v2}, Lj9/e;->X0(Lga/D0;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v4, Lj9/e;->I3:Ljava/util/ArrayList;

    :cond_5
    iget-object v2, v4, Lj9/e;->I3:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_6

    iput-object v2, v1, Lr2/j1$a;->a:Ljava/util/List;

    :goto_5
    const/4 v2, 0x1

    goto :goto_8

    :cond_6
    iget-object v2, v0, Lr2/f0;->e:Lj9/e;

    invoke-static {v2}, Lj9/f;->R4(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x700

    iput v2, v1, Lr2/j1$a;->b:I

    iput v3, v1, Lr2/j1$a;->c:I

    :goto_6
    const/16 v2, 0x1e

    goto :goto_7

    :cond_7
    iput v3, v1, Lr2/j1$a;->c:I

    iput v3, v1, Lr2/j1$a;->b:I

    goto :goto_6

    :goto_7
    iput v2, v1, Lr2/j1$a;->e:I

    iput v2, v1, Lr2/j1$a;->d:I

    goto :goto_5

    :goto_8
    iput-boolean v2, v1, Lr2/j1$a;->f:Z

    const/16 v2, 0x61e

    iput v2, v0, Lr2/f0;->j:I

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    move/from16 v23, v2

    const-class v2, Ls2/c;

    invoke-virtual {v3, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls2/c;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v5}, Ls2/c;->isSwitchOn(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    move/from16 v24, v2

    const/16 v3, 0xa2

    if-eq v5, v3, :cond_d

    const/16 v3, 0xa4

    if-eq v5, v3, :cond_d

    const/16 v3, 0xb4

    if-eq v5, v3, :cond_d

    invoke-static {v5}, Lcom/android/camera/data/data/E;->L(I)Z

    move-result v3

    move/from16 v24, v2

    if-eqz v3, :cond_d

    const/16 v3, 0xe3

    if-eq v5, v3, :cond_d

    const/16 v3, 0xd6

    if-eq v5, v3, :cond_d

    invoke-static {}, Lcom/android/camera/data/data/E;->E()Z

    move-result v3

    if-nez v3, :cond_d

    const/16 v3, 0x500

    iput v3, v1, Lr2/j1$a;->c:I

    iput v3, v1, Lr2/j1$a;->b:I

    const/16 v3, 0x1e

    iput v3, v1, Lr2/j1$a;->e:I

    iput v3, v1, Lr2/j1$a;->d:I

    const/16 v3, 0x51e

    iput v3, v0, Lr2/f0;->j:I

    invoke-static {}, Lcom/android/camera/data/data/j;->Z()I

    move-result v3

    const/16 v2, 0xc8

    if-eq v3, v2, :cond_b

    iget-object v2, v4, Lj9/e;->M3:Ljava/util/ArrayList;

    if-nez v2, :cond_a

    sget-object v2, Lga/w0;->z2:Lga/D0;

    invoke-virtual {v4, v2}, Lj9/e;->X0(Lga/D0;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v4, Lj9/e;->M3:Ljava/util/ArrayList;

    :cond_a
    iget-object v2, v4, Lj9/e;->M3:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v3, 0x600

    iput v3, v1, Lr2/j1$a;->b:I

    const/16 v2, 0x61e

    iput v2, v0, Lr2/f0;->j:I

    invoke-static {v4}, Lj9/f;->c2(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v3, 0x800

    iput v3, v1, Lr2/j1$a;->b:I

    const/16 v2, 0x3c

    iput v2, v1, Lr2/j1$a;->d:I

    :cond_b
    :goto_b
    const/4 v2, 0x1

    goto :goto_c

    :cond_c
    iput-object v2, v1, Lr2/j1$a;->a:Ljava/util/List;

    goto :goto_b

    :goto_c
    iput-boolean v2, v1, Lr2/j1$a;->f:Z

    const/4 v2, 0x1

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    if-eqz v4, :cond_f

    const/4 v3, 0x0

    invoke-static {v5, v3}, Lcom/android/camera/data/data/j;->w0(ILx4/s;)Z

    move-result v25

    if-nez v25, :cond_e

    invoke-static {}, Lcom/android/camera/data/data/j;->x1()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    const/16 v3, 0x500

    goto :goto_e

    :cond_f
    move/from16 v25, v2

    move-object v2, v0

    goto/16 :goto_1d

    :goto_e
    iput v3, v1, Lr2/j1$a;->c:I

    iput v3, v1, Lr2/j1$a;->b:I

    const/16 v3, 0x1e

    iput v3, v1, Lr2/j1$a;->e:I

    iput v3, v1, Lr2/j1$a;->d:I

    const/16 v3, 0x51e

    iput v3, v0, Lr2/f0;->j:I

    iget-object v3, v4, Lj9/e;->F0:[Ljava/lang/String;

    move/from16 v25, v2

    iget-object v2, v4, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v3, :cond_1e

    sget-object v3, Lga/w0;->i:Lga/D0;

    invoke-virtual {v3}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    sget v5, Lga/E0;->a:I

    invoke-static {v2, v3, v5}, Lga/E0;->i(Landroid/hardware/camera2/CameraCharacteristics;Lga/D0;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    if-eqz v3, :cond_1c

    array-length v5, v3

    if-lez v5, :cond_1c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v2

    const/4 v2, 0x0

    :goto_f
    array-length v0, v3

    if-ge v2, v0, :cond_1a

    aget-object v0, v3, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v27

    sparse-switch v27, :sswitch_data_0

    :goto_10
    move/from16 v27, v17

    goto/16 :goto_11

    :sswitch_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_10

    goto :goto_10

    :cond_10
    const/16 v27, 0x9

    goto/16 :goto_11

    :sswitch_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_11

    goto :goto_10

    :cond_11
    move/from16 v27, v19

    goto :goto_11

    :sswitch_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_12

    goto :goto_10

    :cond_12
    const/16 v27, 0x7

    goto :goto_11

    :sswitch_3
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_13

    goto :goto_10

    :cond_13
    move/from16 v27, v18

    goto :goto_11

    :sswitch_4
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_14

    goto :goto_10

    :cond_14
    const/16 v27, 0x5

    goto :goto_11

    :sswitch_5
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_15

    goto :goto_10

    :cond_15
    const/16 v27, 0x4

    goto :goto_11

    :sswitch_6
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_16

    goto :goto_10

    :cond_16
    const/16 v27, 0x3

    goto :goto_11

    :sswitch_7
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_17

    goto :goto_10

    :cond_17
    move/from16 v27, v16

    goto :goto_11

    :sswitch_8
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_18

    goto :goto_10

    :cond_18
    const/16 v27, 0x1

    goto :goto_11

    :sswitch_9
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_19

    goto :goto_10

    :cond_19
    const/16 v27, 0x0

    :goto_11
    packed-switch v27, :pswitch_data_0

    move/from16 v27, v2

    const-string v2, "getComponentConfigVideoQuality unknown quality: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v28, v3

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "CameraCapabilities"

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_12

    :pswitch_0
    move/from16 v27, v2

    move-object/from16 v28, v3

    move-object v2, v6

    goto :goto_12

    :pswitch_1
    move/from16 v27, v2

    move-object/from16 v28, v3

    move-object v2, v7

    goto :goto_12

    :pswitch_2
    move/from16 v27, v2

    move-object/from16 v28, v3

    move-object v2, v8

    goto :goto_12

    :pswitch_3
    move/from16 v27, v2

    move-object/from16 v28, v3

    move-object v2, v9

    goto :goto_12

    :pswitch_4
    move/from16 v27, v2

    move-object/from16 v28, v3

    move-object v2, v11

    goto :goto_12

    :pswitch_5
    move/from16 v27, v2

    move-object/from16 v28, v3

    move-object v2, v13

    goto :goto_12

    :pswitch_6
    move/from16 v27, v2

    move-object/from16 v28, v3

    move-object v2, v14

    goto :goto_12

    :pswitch_7
    move/from16 v27, v2

    move-object/from16 v28, v3

    move-object v2, v15

    goto :goto_12

    :pswitch_8
    move/from16 v27, v2

    move-object/from16 v28, v3

    move-object v2, v12

    goto :goto_12

    :pswitch_9
    move/from16 v27, v2

    move-object/from16 v28, v3

    move-object v2, v10

    :goto_12
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v27, 0x2

    move-object/from16 v3, v28

    goto/16 :goto_f

    :cond_1a
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    new-array v0, v2, [Ljava/lang/String;

    goto :goto_13

    :cond_1b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_13
    iput-object v0, v4, Lj9/e;->F0:[Ljava/lang/String;

    goto :goto_14

    :cond_1c
    move-object/from16 v26, v2

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, v4, Lj9/e;->F0:[Ljava/lang/String;

    goto :goto_14

    :cond_1d
    move-object/from16 v26, v2

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, v4, Lj9/e;->F0:[Ljava/lang/String;

    goto :goto_14

    :cond_1e
    move-object/from16 v26, v2

    :goto_14
    iget-object v0, v4, Lj9/e;->F0:[Ljava/lang/String;

    if-eqz v0, :cond_1f

    array-length v2, v0

    if-nez v2, :cond_20

    :cond_1f
    move-object/from16 v2, p0

    goto :goto_18

    :cond_20
    array-length v2, v0

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_22

    aget-object v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v6, v5, :cond_21

    shl-int/lit8 v5, v5, 0x8

    iput v5, v1, Lr2/j1$a;->b:I

    :cond_21
    const/16 v20, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_22
    iget v2, v1, Lr2/j1$a;->b:I

    const/16 v3, 0x600

    if-lt v2, v3, :cond_23

    const/16 v3, 0x61e

    move-object/from16 v2, p0

    iput v3, v2, Lr2/f0;->j:I

    goto :goto_16

    :cond_23
    move-object/from16 v2, p0

    :goto_16
    invoke-static {v0}, Lr2/f0;->P([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lr2/j1$a;->a:Ljava/util/List;

    :cond_24
    move/from16 v5, p5

    :cond_25
    :goto_17
    const/4 v0, 0x1

    goto/16 :goto_1c

    :goto_18
    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->C5()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v4, Lj9/e;->G0:Ljava/lang/Boolean;

    if-nez v0, :cond_29

    sget-object v0, Lga/w0;->e:Lga/D0;

    invoke-virtual {v0}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v4, Lj9/e;->G0:Ljava/lang/Boolean;

    goto :goto_1b

    :cond_26
    const v3, 0xbabe

    move-object/from16 v5, v26

    invoke-static {v5, v0, v3}, Lga/E0;->i(Landroid/hardware/camera2/CameraCharacteristics;Lga/D0;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-eqz v0, :cond_28

    array-length v3, v0

    if-eqz v3, :cond_28

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_19

    :cond_27
    const/4 v0, 0x0

    goto :goto_1a

    :cond_28
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lj9/e;->G0:Ljava/lang/Boolean;

    :cond_29
    :goto_1b
    iget-object v0, v4, Lj9/e;->G0:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v5, p5

    const/4 v3, 0x0

    if-nez v0, :cond_2a

    invoke-static {v5, v3}, Lcom/android/camera/data/data/j;->w0(ILx4/s;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_2a
    invoke-static {v5, v3}, Lcom/android/camera/data/data/j;->w0(ILx4/s;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/android/camera/data/data/j;->x1()Z

    move-result v0

    if-nez v0, :cond_25

    :cond_2b
    const/16 v3, 0x600

    iput v3, v1, Lr2/j1$a;->b:I

    const/16 v3, 0x61e

    iput v3, v2, Lr2/f0;->j:I

    goto :goto_17

    :goto_1c
    iput-boolean v0, v1, Lr2/j1$a;->f:Z

    const/4 v0, 0x1

    goto :goto_1e

    :goto_1d
    const/4 v0, 0x0

    :goto_1e
    invoke-static {v5}, Lcom/android/camera/data/data/w;->j0(I)Z

    move-result v3

    const/16 v6, 0x81e

    if-eqz v3, :cond_30

    if-eqz v4, :cond_2e

    iget-object v3, v4, Lj9/e;->N3:Ljava/util/ArrayList;

    if-nez v3, :cond_2c

    sget-object v3, Lga/w0;->A2:Lga/D0;

    invoke-virtual {v4, v3}, Lj9/e;->X0(Lga/D0;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v4, Lj9/e;->N3:Ljava/util/ArrayList;

    :cond_2c
    iget-object v3, v4, Lj9/e;->N3:Ljava/util/ArrayList;

    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    if-le v3, v7, :cond_2d

    goto :goto_21

    :cond_2d
    :goto_1f
    const/16 v3, 0x800

    goto :goto_20

    :cond_2e
    const/4 v7, 0x1

    goto :goto_1f

    :goto_20
    iput v3, v1, Lr2/j1$a;->c:I

    iput v3, v1, Lr2/j1$a;->b:I

    const/16 v3, 0x1e

    iput v3, v1, Lr2/j1$a;->e:I

    iput v3, v1, Lr2/j1$a;->d:I

    :goto_21
    iput-boolean v7, v1, Lr2/j1$a;->f:Z

    invoke-virtual {v2}, Lcom/android/camera/data/data/c;->getCurrentMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/data/data/E;->K(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/16 v3, 0x3c

    iput v3, v1, Lr2/j1$a;->d:I

    :cond_2f
    iput v6, v2, Lr2/f0;->j:I

    const/4 v3, 0x1

    goto :goto_22

    :cond_30
    const/4 v3, 0x0

    :goto_22
    const-string v7, "ComponentConfigVideoQuality"

    const/16 v8, 0x18

    if-nez v25, :cond_31

    if-nez v0, :cond_31

    if-nez v23, :cond_31

    const/16 v9, 0xe3

    if-eq v5, v9, :cond_31

    invoke-static {}, Lcom/android/camera/data/data/E;->X()Z

    move-result v9

    if-nez v9, :cond_31

    invoke-static {v5}, Lcom/android/camera/data/data/m;->O(I)Z

    move-result v9

    if-eqz v9, :cond_31

    iput v8, v1, Lr2/j1$a;->e:I

    const/16 v9, 0x3c

    iput v9, v1, Lr2/j1$a;->d:I

    const/4 v9, 0x1

    iput-boolean v9, v1, Lr2/j1$a;->f:Z

    if-nez v3, :cond_32

    const/16 v3, 0x61e

    iput v3, v2, Lr2/f0;->j:I

    :cond_31
    const/16 v3, 0x1e

    goto :goto_23

    :cond_32
    const/16 v3, 0x83c

    invoke-static {v3, v4}, Lr2/f0;->G(ILj9/e;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, "CinematicAspectRatio: video log not support 4k@60fps reset fps"

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v7, v3, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0x1e

    iput v3, v1, Lr2/j1$a;->e:I

    iput v3, v1, Lr2/j1$a;->d:I

    :goto_23
    invoke-static {v5}, Lcom/android/camera/data/data/m;->W(I)Z

    move-result v9

    if-eqz v9, :cond_33

    iput v3, v1, Lr2/j1$a;->e:I

    const/16 v3, 0x3c

    iput v3, v1, Lr2/j1$a;->d:I

    const/16 v3, 0x800

    iput v3, v1, Lr2/j1$a;->c:I

    iput v3, v1, Lr2/j1$a;->b:I

    iput v6, v2, Lr2/f0;->j:I

    const/4 v9, 0x1

    iput-boolean v9, v1, Lr2/j1$a;->f:Z

    goto :goto_24

    :cond_33
    const/4 v9, 0x1

    :goto_24
    invoke-static {v5}, Lcom/android/camera/data/data/m;->b0(I)Z

    move-result v3

    if-eqz v3, :cond_34

    iput-boolean v9, v1, Lr2/j1$a;->f:Z

    const/16 v3, 0x600

    iput v3, v1, Lr2/j1$a;->c:I

    iput v3, v1, Lr2/j1$a;->b:I

    const/16 v3, 0x61e

    iput v3, v2, Lr2/f0;->j:I

    :cond_34
    invoke-static {v5}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v3

    if-eqz v3, :cond_38

    iput v8, v1, Lr2/j1$a;->e:I

    const/16 v3, 0x3c

    iput v3, v1, Lr2/j1$a;->d:I

    const/16 v3, 0x500

    iput v3, v1, Lr2/j1$a;->c:I

    const/16 v3, 0x800

    iput v3, v1, Lr2/j1$a;->b:I

    invoke-static {}, LB2/c;->j()I

    move-result v3

    invoke-static {v3}, Lr2/f0;->B(I)Z

    move-result v3

    sget-object v6, LJe/c$b;->a:LJe/c;

    invoke-virtual {v6}, LJe/c;->a0()Z

    move-result v6

    if-nez v6, :cond_36

    if-eqz v3, :cond_35

    const/16 v6, 0x600

    goto :goto_25

    :cond_35
    const/16 v6, 0x500

    :goto_25
    iput v6, v1, Lr2/j1$a;->b:I

    const/16 v6, 0x1e

    iput v6, v1, Lr2/j1$a;->d:I

    :cond_36
    const/4 v9, 0x1

    iput-boolean v9, v1, Lr2/j1$a;->f:Z

    if-eqz v3, :cond_37

    const/16 v3, 0x61e

    goto :goto_26

    :cond_37
    const/16 v3, 0x51e

    :goto_26
    iput v3, v2, Lr2/f0;->j:I

    :cond_38
    invoke-static {}, Lcom/android/camera/module/Y;->k()Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-static {}, Lcom/android/camera/module/Y;->e()Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_27

    :cond_39
    const/16 v3, 0x600

    goto :goto_2c

    :cond_3a
    :goto_27
    invoke-static {}, Lcom/android/camera/data/data/j;->Q0()Z

    move-result v3

    if-eqz v3, :cond_39

    const v3, 0xbb900

    const/16 v6, 0x800

    const/16 v9, 0x600

    const/16 v10, 0x500

    filled-new-array {v10, v9, v6, v3}, [I

    move-result-object v3

    const/16 v6, 0x78

    const/16 v9, 0x1e

    const/16 v10, 0x3c

    filled-new-array {v8, v9, v10, v6}, [I

    move-result-object v6

    move/from16 v10, v17

    const/4 v9, 0x0

    :goto_28
    const/4 v11, 0x4

    if-ge v9, v11, :cond_3d

    aget v12, v3, v9

    move v13, v10

    const/4 v10, 0x0

    :goto_29
    if-ge v10, v11, :cond_3c

    aget v14, v6, v10

    iget-object v15, v2, Lr2/f0;->e:Lj9/e;

    shr-int/lit8 v11, v12, 0x8

    invoke-static {v11, v14, v15}, Lj9/f;->g1(IILj9/e;)Z

    move-result v11

    if-eqz v11, :cond_3b

    if-le v14, v13, :cond_3b

    move v13, v14

    :cond_3b
    const/16 v20, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x4

    goto :goto_29

    :cond_3c
    const/16 v20, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v13

    goto :goto_28

    :cond_3d
    if-lez v10, :cond_3e

    iget v3, v1, Lr2/j1$a;->d:I

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Lr2/j1$a;->d:I

    :cond_3e
    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->T1()Z

    move-result v3

    if-nez v3, :cond_3f

    const/16 v3, 0x600

    iput v3, v1, Lr2/j1$a;->b:I

    :goto_2a
    const/4 v9, 0x1

    goto :goto_2b

    :cond_3f
    const/16 v3, 0x600

    goto :goto_2a

    :goto_2b
    iput-boolean v9, v1, Lr2/j1$a;->f:Z

    :goto_2c
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v6

    const-class v9, Lv2/n0;

    invoke-virtual {v6, v9}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv2/n0;

    if-eqz v6, :cond_40

    invoke-virtual {v2}, Lcom/android/camera/data/data/c;->getCurrentMode()I

    move-result v9

    invoke-virtual {v6, v9}, Lv2/n0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/camera/data/data/c;->getCurrentMode()I

    move-result v10

    invoke-virtual {v6, v10}, Lv2/n0;->isSupportMode(I)Z

    move-result v6

    if-eqz v6, :cond_40

    const-string v6, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    iput v8, v1, Lr2/j1$a;->e:I

    iget v6, v1, Lr2/j1$a;->d:I

    const/16 v10, 0x3c

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v1, Lr2/j1$a;->d:I

    const/16 v10, 0x500

    iput v10, v1, Lr2/j1$a;->c:I

    iget v6, v1, Lr2/j1$a;->b:I

    const/16 v8, 0x800

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v1, Lr2/j1$a;->b:I

    const/4 v9, 0x1

    iput-boolean v9, v1, Lr2/j1$a;->f:Z

    goto :goto_2d

    :cond_40
    const/16 v8, 0x800

    :goto_2d
    const-string v6, "104"

    if-nez v25, :cond_44

    if-nez v0, :cond_44

    invoke-static {v5}, Lcom/android/camera/data/data/m;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {v5}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_2e

    :cond_41
    move v3, v8

    :goto_2e
    iput v3, v1, Lr2/j1$a;->b:I

    :cond_42
    const/16 v3, 0x1e

    iput v3, v1, Lr2/j1$a;->e:I

    iput v3, v1, Lr2/j1$a;->d:I

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->r()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-nez v0, :cond_43

    iput v3, v1, Lr2/j1$a;->d:I

    :cond_43
    const/4 v9, 0x1

    iput-boolean v9, v1, Lr2/j1$a;->f:Z

    const/16 v3, 0x61e

    iput v3, v2, Lr2/f0;->j:I

    :cond_44
    if-eqz v25, :cond_45

    invoke-static {v5}, Lcom/android/camera/data/data/m;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/16 v3, 0x1e

    iput v3, v1, Lr2/j1$a;->e:I

    iput v3, v1, Lr2/j1$a;->d:I

    :cond_45
    const/16 v0, 0xb4

    const/4 v9, 0x1

    if-ne v5, v0, :cond_46

    iput-boolean v9, v1, Lr2/j1$a;->f:Z

    :cond_46
    invoke-static {v5}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v3

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_47

    iput-boolean v9, v1, Lr2/j1$a;->f:Z

    :cond_47
    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, LJe/c;->E1()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-static {}, Lcom/android/camera/data/data/j;->C1()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-static {}, Lcom/android/camera/data/data/w;->L0()Z

    move-result v6

    if-eqz v6, :cond_49

    if-eqz v24, :cond_48

    invoke-static {v4}, Lj9/f;->k5(Lj9/e;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_2f

    :cond_48
    invoke-static {v4}, Lj9/f;->l5(Lj9/e;)Ljava/util/ArrayList;

    move-result-object v6

    :goto_2f
    if-eqz v6, :cond_49

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_49

    iput-object v6, v1, Lr2/j1$a;->a:Ljava/util/List;

    const/4 v9, 0x1

    iput-boolean v9, v1, Lr2/j1$a;->f:Z

    const-string v6, "limit video watermark qualities from native"

    const/4 v9, 0x0

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    iget v6, v2, Lr2/f0;->j:I

    if-nez v6, :cond_57

    const/16 v6, 0xa1

    if-eq v5, v6, :cond_55

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    const/16 v6, 0xa2

    const/16 v7, 0x618

    if-eq v5, v6, :cond_51

    if-eq v5, v0, :cond_50

    const/16 v0, 0xd6

    if-eq v5, v0, :cond_4d

    const/16 v9, 0xe3

    if-eq v5, v9, :cond_4b

    move/from16 v0, p3

    :cond_4a
    const/16 v4, 0x61e

    const/4 v9, 0x1

    goto/16 :goto_30

    :cond_4b
    invoke-static {v4}, Lj9/f;->u2(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/16 v3, 0x61e

    iput v3, v2, Lr2/f0;->j:I

    goto/16 :goto_31

    :cond_4c
    iput v7, v2, Lr2/f0;->j:I

    goto/16 :goto_31

    :cond_4d
    invoke-static {v4}, Lcom/android/camera/data/data/r;->j(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v5, p2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iput v7, v2, Lr2/f0;->j:I

    goto/16 :goto_31

    :cond_4e
    move/from16 v0, p3

    const/4 v9, 0x1

    if-ne v0, v9, :cond_4f

    const/16 v4, 0x61e

    iput v4, v2, Lr2/f0;->j:I

    goto :goto_31

    :cond_4f
    if-nez v0, :cond_56

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr2/j1;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lr2/f0;->j:I

    goto :goto_31

    :cond_50
    const/16 v4, 0x61e

    iput v4, v2, Lr2/f0;->j:I

    goto :goto_31

    :cond_51
    move-object/from16 v5, p2

    move/from16 v0, p3

    invoke-static {}, Lcom/android/camera/data/data/E;->X()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-static {v4}, Lcom/android/camera/data/data/r;->j(Lj9/e;)Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    iput v7, v2, Lr2/f0;->j:I

    goto :goto_31

    :cond_52
    const/4 v9, 0x1

    if-ne v0, v9, :cond_53

    const/16 v4, 0x61e

    iput v4, v2, Lr2/f0;->j:I

    goto :goto_31

    :cond_53
    if-nez v0, :cond_56

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr2/j1;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lr2/f0;->j:I

    goto :goto_31

    :goto_30
    if-ne v0, v9, :cond_54

    iput v4, v2, Lr2/f0;->j:I

    goto :goto_31

    :cond_54
    if-nez v0, :cond_56

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr2/j1;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lr2/f0;->j:I

    goto :goto_31

    :cond_55
    const/16 v4, 0x61e

    invoke-virtual {v3}, LJe/c;->E()V

    iput v4, v2, Lr2/f0;->j:I

    :cond_56
    :goto_31
    iget v0, v2, Lr2/f0;->j:I

    invoke-virtual {v1, v0}, Lr2/j1$a;->b(I)Z

    move-result v0

    if-nez v0, :cond_57

    iget v0, v1, Lr2/j1$a;->b:I

    iget v1, v1, Lr2/j1$a;->d:I

    or-int/2addr v0, v1

    iput v0, v2, Lr2/f0;->j:I

    :cond_57
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x217e3a70 -> :sswitch_9
        0x35 -> :sswitch_8
        0x36 -> :sswitch_7
        0x38 -> :sswitch_6
        0x17e91e -> :sswitch_5
        0x193778 -> :sswitch_4
        0x1937f0 -> :sswitch_3
        0x1a2036 -> :sswitch_2
        0x1a20ae -> :sswitch_1
        0x329e2bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
