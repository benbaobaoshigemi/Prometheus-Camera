.class public final LB1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LC1/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ty"

    const-string v1, "d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LC1/c$a;->a([Ljava/lang/String;)LC1/c$a;

    move-result-object v0

    sput-object v0, LB1/h;->a:LC1/c$a;

    return-void
.end method

.method public static a(LC1/d;Lq1/i;)Ly1/c;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "o"

    const-string v3, "g"

    const-string v4, "d"

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v0}, LC1/d;->e()V

    const/4 v12, 0x2

    move v13, v12

    :goto_0
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v14

    if-eqz v14, :cond_2

    sget-object v14, LB1/h;->a:LC1/c$a;

    invoke-virtual {v0, v14}, LC1/d;->I(LC1/c$a;)I

    move-result v14

    if-eqz v14, :cond_1

    if-eq v14, v11, :cond_0

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v13

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_2
    move-object v14, v8

    :goto_1
    if-nez v14, :cond_3

    return-object v8

    :cond_3
    sget-object v15, Ly1/g;->b:Ly1/g;

    sget-object v16, Ly1/g;->a:Ly1/g;

    const/16 v17, 0x0

    const/16 v18, 0x64

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    move-object/from16 v19, v8

    :goto_2
    move v8, v9

    goto/16 :goto_4

    :sswitch_0
    move-object/from16 v19, v8

    const-string/jumbo v8, "tr"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v8, 0xd

    goto/16 :goto_4

    :sswitch_1
    move-object/from16 v19, v8

    const-string/jumbo v8, "tm"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_3

    :cond_5
    const/16 v8, 0xc

    goto/16 :goto_4

    :sswitch_2
    move-object/from16 v19, v8

    const-string/jumbo v8, "st"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v8, 0xb

    goto/16 :goto_4

    :sswitch_3
    move-object/from16 v19, v8

    const-string/jumbo v8, "sr"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v8, 0xa

    goto/16 :goto_4

    :sswitch_4
    move-object/from16 v19, v8

    const-string/jumbo v8, "sh"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_3

    :cond_8
    const/16 v8, 0x9

    goto/16 :goto_4

    :sswitch_5
    move-object/from16 v19, v8

    const-string/jumbo v8, "rp"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v8, 0x8

    goto/16 :goto_4

    :sswitch_6
    move-object/from16 v19, v8

    const-string v8, "rd"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto/16 :goto_3

    :cond_a
    const/4 v8, 0x7

    goto/16 :goto_4

    :sswitch_7
    move-object/from16 v19, v8

    const-string v8, "rc"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_3

    :cond_b
    const/4 v8, 0x6

    goto :goto_4

    :sswitch_8
    move-object/from16 v19, v8

    const-string v8, "mm"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_3

    :cond_c
    move v8, v7

    goto :goto_4

    :sswitch_9
    move-object/from16 v19, v8

    const-string v8, "gs"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_3

    :cond_d
    move v8, v6

    goto :goto_4

    :sswitch_a
    move-object/from16 v19, v8

    const-string v8, "gr"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_3

    :cond_e
    move v8, v5

    goto :goto_4

    :sswitch_b
    move-object/from16 v19, v8

    const-string v8, "gf"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_3

    :cond_f
    move v8, v12

    goto :goto_4

    :sswitch_c
    move-object/from16 v19, v8

    const-string v8, "fl"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_3

    :cond_10
    move v8, v11

    goto :goto_4

    :sswitch_d
    move-object/from16 v19, v8

    const-string v8, "el"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    :goto_3
    goto/16 :goto_2

    :cond_11
    move v8, v10

    :goto_4
    packed-switch v8, :pswitch_data_0

    const-string v1, "Unknown shape type "

    invoke-virtual {v1, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LD1/e;->b(Ljava/lang/String;)V

    :goto_5
    move-object/from16 v8, v19

    goto/16 :goto_27

    :pswitch_0
    invoke-static/range {p0 .. p1}, LB1/c;->a(LC1/d;Lq1/i;)Lx1/n;

    move-result-object v8

    goto/16 :goto_27

    :pswitch_1
    sget-object v2, LB1/K;->a:LC1/c$a;

    move/from16 v26, v10

    move-object/from16 v21, v19

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    :goto_6
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, LB1/K;->a:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    if-eqz v2, :cond_19

    if-eq v2, v11, :cond_18

    if-eq v2, v12, :cond_17

    if-eq v2, v5, :cond_16

    if-eq v2, v6, :cond_13

    if-eq v2, v7, :cond_12

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_6

    :cond_12
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v26

    goto :goto_6

    :cond_13
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    if-eq v2, v11, :cond_15

    if-ne v2, v12, :cond_14

    sget-object v2, Ly1/t$a;->b:Ly1/t$a;

    :goto_7
    move-object/from16 v22, v2

    goto :goto_6

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown trim path type "

    invoke-static {v2, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    sget-object v2, Ly1/t$a;->a:Ly1/t$a;

    goto :goto_7

    :cond_16
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v21

    goto :goto_6

    :cond_17
    invoke-static {v0, v1, v10}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v25

    goto :goto_6

    :cond_18
    invoke-static {v0, v1, v10}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v24

    goto :goto_6

    :cond_19
    invoke-static {v0, v1, v10}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v23

    goto :goto_6

    :cond_1a
    new-instance v20, Ly1/t;

    invoke-direct/range {v20 .. v26}, Ly1/t;-><init>(Ljava/lang/String;Ly1/t$a;Lx1/b;Lx1/b;Lx1/b;Z)V

    :goto_8
    move-object/from16 v8, v20

    goto/16 :goto_27

    :pswitch_2
    sget-object v5, LB1/J;->a:LC1/c$a;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move/from16 v30, v10

    move/from16 v29, v17

    move-object/from16 v6, v19

    move-object v7, v6

    move-object v8, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v21

    move-object/from16 v24, v22

    move-object/from16 v26, v24

    :cond_1b
    :goto_9
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v13

    if-eqz v13, :cond_23

    sget-object v13, LB1/J;->a:LC1/c$a;

    invoke-virtual {v0, v13}, LC1/d;->I(LC1/c$a;)I

    move-result v13

    packed-switch v13, :pswitch_data_1

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_9

    :pswitch_3
    invoke-virtual {v0}, LC1/d;->a()V

    :goto_a
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v13

    if-eqz v13, :cond_22

    invoke-virtual {v0}, LC1/d;->e()V

    move-object/from16 v13, v19

    move-object v14, v13

    :goto_b
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v15

    if-eqz v15, :cond_1e

    sget-object v15, LB1/J;->b:LC1/c$a;

    invoke-virtual {v0, v15}, LC1/d;->I(LC1/c$a;)I

    move-result v15

    if-eqz v15, :cond_1d

    if-eq v15, v11, :cond_1c

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_b

    :cond_1c
    invoke-static {v0, v1, v11}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v14

    goto :goto_b

    :cond_1d
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v13

    goto :goto_b

    :cond_1e
    invoke-virtual {v0}, LC1/d;->i()V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :goto_c
    move v13, v9

    goto :goto_d

    :sswitch_e
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1f

    goto :goto_c

    :cond_1f
    move v13, v12

    goto :goto_d

    :sswitch_f
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_20

    goto :goto_c

    :cond_20
    move v13, v11

    goto :goto_d

    :sswitch_10
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_21

    goto :goto_c

    :cond_21
    move v13, v10

    :goto_d
    packed-switch v13, :pswitch_data_2

    goto :goto_a

    :pswitch_4
    move-object/from16 v22, v14

    goto :goto_a

    :pswitch_5
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_22
    invoke-virtual {v0}, LC1/d;->h()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v13, v11, :cond_1b

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lx1/b;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :pswitch_6
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v30

    goto/16 :goto_9

    :pswitch_7
    invoke-virtual {v0}, LC1/d;->w()D

    move-result-wide v13

    double-to-float v13, v13

    move/from16 v29, v13

    goto/16 :goto_9

    :pswitch_8
    invoke-static {}, Ly1/s$b;->values()[Ly1/s$b;

    move-result-object v8

    invoke-virtual {v0}, LC1/d;->E()I

    move-result v13

    sub-int/2addr v13, v11

    aget-object v8, v8, v13

    goto/16 :goto_9

    :pswitch_9
    invoke-static {}, Ly1/s$a;->values()[Ly1/s$a;

    move-result-object v7

    invoke-virtual {v0}, LC1/d;->E()I

    move-result v13

    sub-int/2addr v13, v11

    aget-object v7, v7, v13

    goto/16 :goto_9

    :pswitch_a
    invoke-static/range {p0 .. p1}, LB1/d;->d(LC1/c;Lq1/i;)Lx1/d;

    move-result-object v6

    goto/16 :goto_9

    :pswitch_b
    invoke-static {v0, v1, v11}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v26

    goto/16 :goto_9

    :pswitch_c
    invoke-static/range {p0 .. p1}, LB1/d;->a(LC1/d;Lq1/i;)Lx1/a;

    move-result-object v24

    goto/16 :goto_9

    :pswitch_d
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_9

    :cond_23
    if-nez v6, :cond_24

    new-instance v6, Lx1/d;

    new-instance v1, LE1/a;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, LE1/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v1}, LQg/r;-><init>(Ljava/util/List;)V

    :cond_24
    move-object/from16 v25, v6

    if-nez v7, :cond_25

    sget-object v7, Ly1/s$a;->a:Ly1/s$a;

    :cond_25
    move-object/from16 v27, v7

    if-nez v8, :cond_26

    sget-object v8, Ly1/s$b;->a:Ly1/s$b;

    :cond_26
    move-object/from16 v28, v8

    new-instance v20, Ly1/s;

    move-object/from16 v23, v5

    invoke-direct/range {v20 .. v30}, Ly1/s;-><init>(Ljava/lang/String;Lx1/b;Ljava/util/ArrayList;Lx1/a;Lx1/d;Lx1/b;Ly1/s$a;Ly1/s$b;FZ)V

    goto/16 :goto_8

    :pswitch_e
    sget-object v2, LB1/A;->a:LC1/c$a;

    if-ne v13, v5, :cond_27

    move v2, v11

    goto :goto_e

    :cond_27
    move v2, v10

    :goto_e
    move/from16 v31, v2

    move/from16 v22, v10

    move/from16 v30, v22

    move-object/from16 v21, v19

    move-object/from16 v23, v21

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    :goto_f
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-object v2, LB1/A;->a:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    packed-switch v2, :pswitch_data_3

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_f

    :pswitch_f
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    if-ne v2, v5, :cond_28

    move/from16 v31, v11

    goto :goto_f

    :cond_28
    move/from16 v31, v10

    goto :goto_f

    :pswitch_10
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v30

    goto :goto_f

    :pswitch_11
    invoke-static {v0, v1, v10}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v28

    goto :goto_f

    :pswitch_12
    invoke-static {v0, v1, v11}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v26

    goto :goto_f

    :pswitch_13
    invoke-static {v0, v1, v10}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v29

    goto :goto_f

    :pswitch_14
    invoke-static {v0, v1, v11}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v27

    goto :goto_f

    :pswitch_15
    invoke-static {v0, v1, v10}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v25

    goto :goto_f

    :pswitch_16
    invoke-static/range {p0 .. p1}, LB1/a;->b(LC1/d;Lq1/i;)Lx1/o;

    move-result-object v24

    goto :goto_f

    :pswitch_17
    invoke-static {v0, v1, v10}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v23

    goto :goto_f

    :pswitch_18
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    invoke-static {v12}, LE0/e;->d(I)[I

    move-result-object v3

    array-length v4, v3

    move v6, v10

    :goto_10
    if-ge v6, v4, :cond_2c

    aget v7, v3, v6

    if-eq v7, v11, :cond_2a

    if-ne v7, v12, :cond_29

    move v8, v12

    goto :goto_11

    :cond_29
    throw v19

    :cond_2a
    move v8, v11

    :goto_11
    if-ne v8, v2, :cond_2b

    move/from16 v22, v7

    goto :goto_f

    :cond_2b
    add-int/2addr v6, v11

    goto :goto_10

    :cond_2c
    move/from16 v22, v10

    goto :goto_f

    :pswitch_19
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v21

    goto :goto_f

    :cond_2d
    new-instance v20, Ly1/k;

    invoke-direct/range {v20 .. v31}, Ly1/k;-><init>(Ljava/lang/String;ILx1/b;Lx1/o;Lx1/b;Lx1/b;Lx1/b;Lx1/b;Lx1/b;ZZ)V

    goto/16 :goto_8

    :pswitch_1a
    sget-object v2, LB1/I;->a:LC1/c$a;

    move v3, v10

    move v4, v3

    move-object/from16 v2, v19

    move-object v8, v2

    :goto_12
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v6

    if-eqz v6, :cond_32

    sget-object v6, LB1/I;->a:LC1/c$a;

    invoke-virtual {v0, v6}, LC1/d;->I(LC1/c$a;)I

    move-result v6

    if-eqz v6, :cond_31

    if-eq v6, v11, :cond_30

    if-eq v6, v12, :cond_2f

    if-eq v6, v5, :cond_2e

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_12

    :cond_2e
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v4

    goto :goto_12

    :cond_2f
    new-instance v2, Lx1/h;

    invoke-static {}, LD1/n;->c()F

    move-result v6

    sget-object v7, LB1/F;->a:LB1/F;

    invoke-static {v0, v1, v6, v7, v10}, LB1/u;->a(LC1/c;Lq1/i;FLB1/L;Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v2, v6}, LQg/r;-><init>(Ljava/util/List;)V

    goto :goto_12

    :cond_30
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v3

    goto :goto_12

    :cond_31
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v8

    goto :goto_12

    :cond_32
    new-instance v1, Ly1/r;

    invoke-direct {v1, v8, v3, v2, v4}, Ly1/r;-><init>(Ljava/lang/String;ILx1/h;Z)V

    :goto_13
    move-object v8, v1

    goto/16 :goto_27

    :pswitch_1b
    sget-object v2, LB1/C;->a:LC1/c$a;

    move/from16 v18, v10

    move-object/from16 v14, v19

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    :goto_14
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_38

    sget-object v2, LB1/C;->a:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    if-eqz v2, :cond_37

    if-eq v2, v11, :cond_36

    if-eq v2, v12, :cond_35

    if-eq v2, v5, :cond_34

    if-eq v2, v6, :cond_33

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_14

    :cond_33
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v18

    goto :goto_14

    :cond_34
    invoke-static/range {p0 .. p1}, LB1/c;->a(LC1/d;Lq1/i;)Lx1/n;

    move-result-object v17

    goto :goto_14

    :cond_35
    invoke-static {v0, v1, v10}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v16

    goto :goto_14

    :cond_36
    invoke-static {v0, v1, v10}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v15

    goto :goto_14

    :cond_37
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v14

    goto :goto_14

    :cond_38
    new-instance v13, Ly1/m;

    invoke-direct/range {v13 .. v18}, Ly1/m;-><init>(Ljava/lang/String;Lx1/b;Lx1/b;Lx1/n;Z)V

    :goto_15
    move-object v8, v13

    goto/16 :goto_27

    :pswitch_1c
    sget-object v2, LB1/D;->a:LC1/c$a;

    move-object/from16 v2, v19

    move-object v3, v2

    :goto_16
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v4

    if-eqz v4, :cond_3c

    sget-object v4, LB1/D;->a:LC1/c$a;

    invoke-virtual {v0, v4}, LC1/d;->I(LC1/c$a;)I

    move-result v4

    if-eqz v4, :cond_3b

    if-eq v4, v11, :cond_3a

    if-eq v4, v12, :cond_39

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_16

    :cond_39
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v10

    goto :goto_16

    :cond_3a
    invoke-static {v0, v1, v11}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v3

    goto :goto_16

    :cond_3b
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_3c
    if-eqz v10, :cond_3d

    goto/16 :goto_5

    :cond_3d
    new-instance v8, Ly1/n;

    invoke-direct {v8, v2, v3}, Ly1/n;-><init>(Ljava/lang/String;Lx1/b;)V

    goto/16 :goto_27

    :pswitch_1d
    sget-object v2, LB1/B;->a:LC1/c$a;

    move/from16 v18, v10

    move-object/from16 v14, v19

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    :goto_17
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_43

    sget-object v2, LB1/B;->a:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    if-eqz v2, :cond_42

    if-eq v2, v11, :cond_41

    if-eq v2, v12, :cond_40

    if-eq v2, v5, :cond_3f

    if-eq v2, v6, :cond_3e

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_17

    :cond_3e
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v18

    goto :goto_17

    :cond_3f
    invoke-static {v0, v1, v11}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v17

    goto :goto_17

    :cond_40
    invoke-static/range {p0 .. p1}, LB1/d;->e(LC1/d;Lq1/i;)Lx1/f;

    move-result-object v16

    goto :goto_17

    :cond_41
    invoke-static/range {p0 .. p1}, LB1/a;->b(LC1/d;Lq1/i;)Lx1/o;

    move-result-object v15

    goto :goto_17

    :cond_42
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v14

    goto :goto_17

    :cond_43
    new-instance v13, Ly1/l;

    invoke-direct/range {v13 .. v18}, Ly1/l;-><init>(Ljava/lang/String;Lx1/o;Lx1/f;Lx1/b;Z)V

    goto :goto_15

    :pswitch_1e
    sget-object v2, LB1/x;->a:LC1/c$a;

    move-object/from16 v2, v19

    move-object v8, v2

    :goto_18
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v3

    if-eqz v3, :cond_4c

    sget-object v3, LB1/x;->a:LC1/c$a;

    invoke-virtual {v0, v3}, LC1/d;->I(LC1/c$a;)I

    move-result v3

    if-eqz v3, :cond_4b

    if-eq v3, v11, :cond_45

    if-eq v3, v12, :cond_44

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_18

    :cond_44
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v10

    goto :goto_18

    :cond_45
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    sget-object v3, Ly1/j$a;->a:Ly1/j$a;

    if-eq v2, v11, :cond_46

    if-eq v2, v12, :cond_4a

    if-eq v2, v5, :cond_49

    if-eq v2, v6, :cond_48

    if-eq v2, v7, :cond_47

    :cond_46
    move-object v2, v3

    goto :goto_18

    :cond_47
    sget-object v2, Ly1/j$a;->e:Ly1/j$a;

    goto :goto_18

    :cond_48
    sget-object v2, Ly1/j$a;->d:Ly1/j$a;

    goto :goto_18

    :cond_49
    sget-object v2, Ly1/j$a;->c:Ly1/j$a;

    goto :goto_18

    :cond_4a
    sget-object v2, Ly1/j$a;->b:Ly1/j$a;

    goto :goto_18

    :cond_4b
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v8

    goto :goto_18

    :cond_4c
    new-instance v3, Ly1/j;

    invoke-direct {v3, v8, v2, v10}, Ly1/j;-><init>(Ljava/lang/String;Ly1/j$a;Z)V

    const-string v2, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {v1, v2}, Lq1/i;->a(Ljava/lang/String;)V

    move-object v8, v3

    goto/16 :goto_27

    :pswitch_1f
    sget-object v5, LB1/q;->a:LC1/c$a;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move/from16 v33, v10

    move/from16 v30, v17

    move-object/from16 v6, v19

    move-object/from16 v21, v6

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v25, v23

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v32, v29

    :cond_4d
    :goto_19
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v7

    if-eqz v7, :cond_59

    sget-object v7, LB1/q;->a:LC1/c$a;

    invoke-virtual {v0, v7}, LC1/d;->I(LC1/c$a;)I

    move-result v7

    packed-switch v7, :pswitch_data_4

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_19

    :pswitch_20
    invoke-virtual {v0}, LC1/d;->a()V

    :cond_4e
    :goto_1a
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-virtual {v0}, LC1/d;->e()V

    move-object/from16 v7, v19

    move-object v8, v7

    :goto_1b
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v12

    if-eqz v12, :cond_51

    sget-object v12, LB1/q;->c:LC1/c$a;

    invoke-virtual {v0, v12}, LC1/d;->I(LC1/c$a;)I

    move-result v12

    if-eqz v12, :cond_50

    if-eq v12, v11, :cond_4f

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_1b

    :cond_4f
    invoke-static {v0, v1, v11}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v8

    goto :goto_1b

    :cond_50
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v7

    goto :goto_1b

    :cond_51
    invoke-virtual {v0}, LC1/d;->i()V

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_52

    move-object/from16 v32, v8

    goto :goto_1a

    :cond_52
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_53

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    :cond_53
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_54
    invoke-virtual {v0}, LC1/d;->h()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v11, :cond_4d

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lx1/b;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :pswitch_21
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v33

    goto :goto_19

    :pswitch_22
    invoke-virtual {v0}, LC1/d;->w()D

    move-result-wide v7

    double-to-float v7, v7

    move/from16 v30, v7

    goto/16 :goto_19

    :pswitch_23
    invoke-static {}, Ly1/s$b;->values()[Ly1/s$b;

    move-result-object v7

    invoke-virtual {v0}, LC1/d;->E()I

    move-result v8

    sub-int/2addr v8, v11

    aget-object v29, v7, v8

    goto/16 :goto_19

    :pswitch_24
    invoke-static {}, Ly1/s$a;->values()[Ly1/s$a;

    move-result-object v7

    invoke-virtual {v0}, LC1/d;->E()I

    move-result v8

    sub-int/2addr v8, v11

    aget-object v28, v7, v8

    goto/16 :goto_19

    :pswitch_25
    invoke-static {v0, v1, v11}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v27

    goto/16 :goto_19

    :pswitch_26
    invoke-static/range {p0 .. p1}, LB1/d;->e(LC1/d;Lq1/i;)Lx1/f;

    move-result-object v26

    goto/16 :goto_19

    :pswitch_27
    invoke-static/range {p0 .. p1}, LB1/d;->e(LC1/d;Lq1/i;)Lx1/f;

    move-result-object v25

    goto/16 :goto_19

    :pswitch_28
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v7

    if-ne v7, v11, :cond_55

    move-object/from16 v22, v16

    goto/16 :goto_19

    :cond_55
    move-object/from16 v22, v15

    goto/16 :goto_19

    :pswitch_29
    invoke-static/range {p0 .. p1}, LB1/d;->d(LC1/c;Lq1/i;)Lx1/d;

    move-result-object v6

    goto/16 :goto_19

    :pswitch_2a
    invoke-virtual {v0}, LC1/d;->e()V

    move v7, v9

    :goto_1c
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v8

    if-eqz v8, :cond_58

    sget-object v8, LB1/q;->b:LC1/c$a;

    invoke-virtual {v0, v8}, LC1/d;->I(LC1/c$a;)I

    move-result v8

    if-eqz v8, :cond_57

    if-eq v8, v11, :cond_56

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_1c

    :cond_56
    invoke-static {v0, v1, v7}, LB1/d;->c(LC1/d;Lq1/i;I)Lx1/c;

    move-result-object v23

    goto :goto_1c

    :cond_57
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v7

    goto :goto_1c

    :cond_58
    invoke-virtual {v0}, LC1/d;->i()V

    goto/16 :goto_19

    :pswitch_2b
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_19

    :cond_59
    if-nez v6, :cond_5a

    new-instance v6, Lx1/d;

    new-instance v1, LE1/a;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, LE1/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v1}, LQg/r;-><init>(Ljava/util/List;)V

    :cond_5a
    move-object/from16 v24, v6

    new-instance v20, Ly1/f;

    move-object/from16 v31, v5

    invoke-direct/range {v20 .. v33}, Ly1/f;-><init>(Ljava/lang/String;Ly1/g;Lx1/c;Lx1/d;Lx1/f;Lx1/f;Lx1/b;Ly1/s$a;Ly1/s$b;FLjava/util/ArrayList;Lx1/b;Z)V

    goto/16 :goto_8

    :pswitch_2c
    sget-object v2, LB1/H;->a:LC1/c$a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v19

    :goto_1d
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v3

    if-eqz v3, :cond_60

    sget-object v3, LB1/H;->a:LC1/c$a;

    invoke-virtual {v0, v3}, LC1/d;->I(LC1/c$a;)I

    move-result v3

    if-eqz v3, :cond_5f

    if-eq v3, v11, :cond_5e

    if-eq v3, v12, :cond_5b

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_1d

    :cond_5b
    invoke-virtual {v0}, LC1/d;->a()V

    :cond_5c
    :goto_1e
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-static/range {p0 .. p1}, LB1/h;->a(LC1/d;Lq1/i;)Ly1/c;

    move-result-object v3

    if-eqz v3, :cond_5c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_5d
    invoke-virtual {v0}, LC1/d;->h()V

    goto :goto_1d

    :cond_5e
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v10

    goto :goto_1d

    :cond_5f
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v8

    goto :goto_1d

    :cond_60
    new-instance v1, Ly1/q;

    invoke-direct {v1, v8, v2, v10}, Ly1/q;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    goto/16 :goto_13

    :pswitch_2d
    sget-object v2, LB1/p;->a:LC1/c$a;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    move-object/from16 v23, v2

    move/from16 v28, v10

    move-object/from16 v8, v19

    move-object/from16 v21, v8

    move-object/from16 v22, v21

    move-object/from16 v24, v22

    move-object/from16 v26, v24

    move-object/from16 v27, v26

    :goto_1f
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_66

    sget-object v2, LB1/p;->a:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    packed-switch v2, :pswitch_data_5

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_1f

    :pswitch_2e
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v28

    goto :goto_1f

    :pswitch_2f
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    if-ne v2, v11, :cond_61

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_20
    move-object/from16 v23, v2

    goto :goto_1f

    :cond_61
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_20

    :pswitch_30
    invoke-static/range {p0 .. p1}, LB1/d;->e(LC1/d;Lq1/i;)Lx1/f;

    move-result-object v27

    goto :goto_1f

    :pswitch_31
    invoke-static/range {p0 .. p1}, LB1/d;->e(LC1/d;Lq1/i;)Lx1/f;

    move-result-object v26

    goto :goto_1f

    :pswitch_32
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    if-ne v2, v11, :cond_62

    move-object/from16 v22, v16

    goto :goto_1f

    :cond_62
    move-object/from16 v22, v15

    goto :goto_1f

    :pswitch_33
    invoke-static/range {p0 .. p1}, LB1/d;->d(LC1/c;Lq1/i;)Lx1/d;

    move-result-object v8

    goto :goto_1f

    :pswitch_34
    invoke-virtual {v0}, LC1/d;->e()V

    move v2, v9

    :goto_21
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v3

    if-eqz v3, :cond_65

    sget-object v3, LB1/p;->b:LC1/c$a;

    invoke-virtual {v0, v3}, LC1/d;->I(LC1/c$a;)I

    move-result v3

    if-eqz v3, :cond_64

    if-eq v3, v11, :cond_63

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_21

    :cond_63
    invoke-static {v0, v1, v2}, LB1/d;->c(LC1/d;Lq1/i;I)Lx1/c;

    move-result-object v24

    goto :goto_21

    :cond_64
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    goto :goto_21

    :cond_65
    invoke-virtual {v0}, LC1/d;->i()V

    goto :goto_1f

    :pswitch_35
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v21

    goto :goto_1f

    :cond_66
    if-nez v8, :cond_67

    new-instance v8, Lx1/d;

    new-instance v1, LE1/a;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, LE1/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v8, v1}, LQg/r;-><init>(Ljava/util/List;)V

    :cond_67
    move-object/from16 v25, v8

    new-instance v20, Ly1/e;

    invoke-direct/range {v20 .. v28}, Ly1/e;-><init>(Ljava/lang/String;Ly1/g;Landroid/graphics/Path$FillType;Lx1/c;Lx1/d;Lx1/f;Lx1/f;Z)V

    goto/16 :goto_8

    :pswitch_36
    sget-object v2, LB1/G;->a:LC1/c$a;

    move/from16 v21, v10

    move/from16 v25, v21

    move v2, v11

    move-object/from16 v8, v19

    move-object/from16 v20, v8

    move-object/from16 v23, v20

    :goto_22
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v3

    if-eqz v3, :cond_6e

    sget-object v3, LB1/G;->a:LC1/c$a;

    invoke-virtual {v0, v3}, LC1/d;->I(LC1/c$a;)I

    move-result v3

    if-eqz v3, :cond_6d

    if-eq v3, v11, :cond_6c

    if-eq v3, v12, :cond_6b

    if-eq v3, v5, :cond_6a

    if-eq v3, v6, :cond_69

    if-eq v3, v7, :cond_68

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_22

    :cond_68
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v25

    goto :goto_22

    :cond_69
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    goto :goto_22

    :cond_6a
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v21

    goto :goto_22

    :cond_6b
    invoke-static/range {p0 .. p1}, LB1/d;->d(LC1/c;Lq1/i;)Lx1/d;

    move-result-object v8

    goto :goto_22

    :cond_6c
    invoke-static/range {p0 .. p1}, LB1/d;->a(LC1/d;Lq1/i;)Lx1/a;

    move-result-object v23

    goto :goto_22

    :cond_6d
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v20

    goto :goto_22

    :cond_6e
    if-nez v8, :cond_6f

    new-instance v8, Lx1/d;

    new-instance v1, LE1/a;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, LE1/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v8, v1}, LQg/r;-><init>(Ljava/util/List;)V

    :cond_6f
    move-object/from16 v24, v8

    if-ne v2, v11, :cond_70

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_23
    move-object/from16 v22, v1

    goto :goto_24

    :cond_70
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_23

    :goto_24
    new-instance v19, Ly1/p;

    invoke-direct/range {v19 .. v25}, Ly1/p;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lx1/a;Lx1/d;Z)V

    goto/16 :goto_5

    :pswitch_37
    sget-object v2, LB1/f;->a:LC1/c$a;

    if-ne v13, v5, :cond_71

    move v2, v11

    goto :goto_25

    :cond_71
    move v2, v10

    :goto_25
    move/from16 v17, v2

    move/from16 v18, v10

    move-object/from16 v14, v19

    move-object v15, v14

    move-object/from16 v16, v15

    :goto_26
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_78

    sget-object v2, LB1/f;->a:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    if-eqz v2, :cond_77

    if-eq v2, v11, :cond_76

    if-eq v2, v12, :cond_75

    if-eq v2, v5, :cond_74

    if-eq v2, v6, :cond_72

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_26

    :cond_72
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    if-ne v2, v5, :cond_73

    move/from16 v17, v11

    goto :goto_26

    :cond_73
    move/from16 v17, v10

    goto :goto_26

    :cond_74
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v18

    goto :goto_26

    :cond_75
    invoke-static/range {p0 .. p1}, LB1/d;->e(LC1/d;Lq1/i;)Lx1/f;

    move-result-object v16

    goto :goto_26

    :cond_76
    invoke-static/range {p0 .. p1}, LB1/a;->b(LC1/d;Lq1/i;)Lx1/o;

    move-result-object v15

    goto :goto_26

    :cond_77
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v14

    goto :goto_26

    :cond_78
    new-instance v13, Ly1/b;

    invoke-direct/range {v13 .. v18}, Ly1/b;-><init>(Ljava/lang/String;Lx1/o;Lx1/f;ZZ)V

    goto/16 :goto_15

    :goto_27
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_27

    :cond_79
    invoke-virtual {v0}, LC1/d;->i()V

    return-object v8

    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_d
        0xcc6 -> :sswitch_c
        0xcdf -> :sswitch_b
        0xceb -> :sswitch_a
        0xcec -> :sswitch_9
        0xda0 -> :sswitch_8
        0xe31 -> :sswitch_7
        0xe32 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_2d
        :pswitch_2c
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_10
        0x67 -> :sswitch_f
        0x6f -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch
.end method
