.class public final LB1/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LC1/c$a;

.field public static final b:LC1/c$a;

.field public static final c:LC1/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-string v24, "ao"

    const-string v25, "bm"

    const-string v1, "nm"

    const-string v2, "ind"

    const-string v3, "refId"

    const-string/jumbo v4, "ty"

    const-string v5, "parent"

    const-string/jumbo v6, "sw"

    const-string/jumbo v7, "sh"

    const-string/jumbo v8, "sc"

    const-string v9, "ks"

    const-string/jumbo v10, "tt"

    const-string v11, "masksProperties"

    const-string/jumbo v12, "shapes"

    const-string/jumbo v13, "t"

    const-string v14, "ef"

    const-string/jumbo v15, "sr"

    const-string/jumbo v16, "st"

    const-string/jumbo v17, "w"

    const-string v18, "h"

    const-string v19, "ip"

    const-string v20, "op"

    const-string/jumbo v21, "tm"

    const-string v22, "cl"

    const-string v23, "hd"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LC1/c$a;->a([Ljava/lang/String;)LC1/c$a;

    move-result-object v0

    sput-object v0, LB1/v;->a:LC1/c$a;

    const-string v0, "d"

    const-string v1, "a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LC1/c$a;->a([Ljava/lang/String;)LC1/c$a;

    move-result-object v0

    sput-object v0, LB1/v;->b:LC1/c$a;

    const-string/jumbo v0, "ty"

    const-string v1, "nm"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LC1/c$a;->a([Ljava/lang/String;)LC1/c$a;

    move-result-object v0

    sput-object v0, LB1/v;->c:LC1/c$a;

    return-void
.end method

.method public static a(LC1/d;Lq1/i;)Lz1/e;
    .locals 53
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v5, 0x1

    sget-object v7, Lz1/e$b;->a:Lz1/e$b;

    sget-object v8, Ly1/h;->a:Ly1/h;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, LC1/d;->e()V

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const-string v15, "UNSET"

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/4 v3, 0x0

    const-wide/16 v20, -0x1

    move/from16 v28, v3

    move/from16 v30, v28

    move/from16 v35, v30

    move-object/from16 v22, v7

    move-object/from16 v38, v8

    move/from16 v23, v11

    move/from16 v24, v23

    move/from16 v32, v24

    move/from16 v33, v32

    move-object/from16 v29, v12

    move-object/from16 v31, v14

    move-object v7, v15

    move-object/from16 v19, v16

    move-object/from16 v25, v19

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v34, v27

    move-object/from16 v36, v34

    move-object/from16 v37, v36

    move-object/from16 v39, v37

    move-object/from16 v40, v39

    const/16 v41, -0x1

    move/from16 v12, v35

    move v14, v12

    move/from16 v16, v33

    move v15, v13

    move-object/from16 v11, v40

    move/from16 v13, v16

    :goto_0
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v42

    if-eqz v42, :cond_43

    sget-object v2, LB1/v;->a:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    move-object/from16 v46, v8

    move/from16 v47, v12

    move v12, v3

    goto/16 :goto_20

    :pswitch_0
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    invoke-static {}, Ly1/h;->values()[Ly1/h;

    move-result-object v6

    array-length v6, v6

    if-lt v2, v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported Blend Mode: "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq1/i;->a(Ljava/lang/String;)V

    move-object/from16 v38, v8

    goto :goto_0

    :cond_0
    invoke-static {}, Ly1/h;->values()[Ly1/h;

    move-result-object v4

    aget-object v38, v4, v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    if-ne v2, v5, :cond_1

    move/from16 v28, v5

    goto :goto_0

    :cond_1
    move/from16 v28, v3

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v35

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v1, v3}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v40

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, LC1/d;->w()D

    move-result-wide v3

    double-to-float v3, v3

    move/from16 v23, v3

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0}, LC1/d;->w()D

    move-result-wide v3

    double-to-float v13, v3

    goto :goto_1

    :pswitch_7
    invoke-virtual {v0}, LC1/d;->w()D

    move-result-wide v3

    invoke-static {}, LD1/n;->c()F

    move-result v6

    move-wide/from16 v44, v3

    float-to-double v2, v6

    mul-double v3, v44, v2

    double-to-float v2, v3

    move/from16 v33, v2

    goto :goto_1

    :pswitch_8
    invoke-virtual {v0}, LC1/d;->w()D

    move-result-wide v2

    invoke-static {}, LD1/n;->c()F

    move-result v4

    float-to-double v5, v4

    mul-double/2addr v2, v5

    double-to-float v2, v2

    move/from16 v32, v2

    :goto_2
    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v0}, LC1/d;->w()D

    move-result-wide v2

    double-to-float v2, v2

    move/from16 v16, v2

    goto :goto_2

    :pswitch_a
    invoke-virtual {v0}, LC1/d;->w()D

    move-result-wide v2

    double-to-float v15, v2

    goto :goto_2

    :pswitch_b
    invoke-virtual {v0}, LC1/d;->a()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, LC1/d;->e()V

    :cond_2
    :goto_5
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, LB1/v;->c:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_5

    :cond_3
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    const/16 v4, 0x1d

    if-ne v2, v4, :cond_d

    sget-object v2, LB1/e;->a:LC1/c$a;

    move-object/from16 v36, v34

    :goto_6
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, LB1/e;->a:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_6

    :cond_5
    invoke-virtual {v0}, LC1/d;->a()V

    :cond_6
    :goto_7
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, LC1/d;->e()V

    move-object/from16 v4, v34

    :cond_7
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, LB1/e;->b:LC1/c$a;

    invoke-virtual {v0, v5}, LC1/d;->I(LC1/c$a;)I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_8

    :cond_8
    if-eqz v2, :cond_9

    new-instance v4, Ly1/a;

    invoke-static {v0, v1, v6}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v5

    invoke-direct {v4, v5}, Ly1/a;-><init>(Lx1/b;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {v0}, LC1/d;->i()V

    if-eqz v4, :cond_6

    move-object/from16 v36, v4

    goto :goto_7

    :cond_c
    invoke-virtual {v0}, LC1/d;->h()V

    goto :goto_6

    :cond_d
    const/16 v4, 0x19

    if-ne v2, v4, :cond_2

    new-instance v4, LB1/k;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    :goto_9
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, LB1/k;->f:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_9

    :cond_e
    invoke-virtual {v0}, LC1/d;->a()V

    :goto_a
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, LC1/d;->e()V

    const-string v2, ""

    move-object v5, v2

    :goto_b
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, LB1/k;->g:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v6, 0x1

    if-eq v2, v6, :cond_f

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_b

    :cond_f
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_c
    move/from16 v2, v41

    goto :goto_d

    :sswitch_0
    const-string v2, "Softness"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_c

    :cond_10
    const/4 v2, 0x4

    goto :goto_d

    :sswitch_1
    const-string v2, "Shadow Color"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_c

    :cond_11
    const/4 v2, 0x3

    goto :goto_d

    :sswitch_2
    const-string v2, "Direction"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_c

    :cond_12
    const/4 v2, 0x2

    goto :goto_d

    :sswitch_3
    const-string v2, "Opacity"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_c

    :cond_13
    const/4 v2, 0x1

    goto :goto_d

    :sswitch_4
    const-string v2, "Distance"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_c

    :cond_14
    const/4 v2, 0x0

    :goto_d
    packed-switch v2, :pswitch_data_1

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_b

    :pswitch_c
    const/4 v6, 0x1

    invoke-static {v0, v1, v6}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v2

    iput-object v2, v4, LB1/k;->e:Lx1/b;

    goto :goto_b

    :pswitch_d
    invoke-static/range {p0 .. p1}, LB1/d;->a(LC1/d;Lq1/i;)Lx1/a;

    move-result-object v2

    iput-object v2, v4, LB1/k;->a:Lx1/a;

    goto :goto_b

    :pswitch_e
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v6

    iput-object v6, v4, LB1/k;->c:Lx1/b;

    goto :goto_b

    :pswitch_f
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v6

    iput-object v6, v4, LB1/k;->b:Lx1/b;

    goto/16 :goto_b

    :pswitch_10
    const/4 v6, 0x1

    invoke-static {v0, v1, v6}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v2

    iput-object v2, v4, LB1/k;->d:Lx1/b;

    goto/16 :goto_b

    :cond_15
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_b

    :cond_16
    invoke-virtual {v0}, LC1/d;->i()V

    goto/16 :goto_a

    :cond_17
    invoke-virtual {v0}, LC1/d;->h()V

    goto/16 :goto_9

    :cond_18
    iget-object v2, v4, LB1/k;->a:Lx1/a;

    if-eqz v2, :cond_19

    iget-object v5, v4, LB1/k;->b:Lx1/b;

    if-eqz v5, :cond_19

    iget-object v6, v4, LB1/k;->c:Lx1/b;

    if-eqz v6, :cond_19

    move-object/from16 v46, v2

    iget-object v2, v4, LB1/k;->d:Lx1/b;

    if-eqz v2, :cond_19

    iget-object v4, v4, LB1/k;->e:Lx1/b;

    if-eqz v4, :cond_19

    new-instance v45, LB1/j;

    move-object/from16 v49, v2

    move-object/from16 v50, v4

    move-object/from16 v47, v5

    move-object/from16 v48, v6

    invoke-direct/range {v45 .. v50}, LB1/j;-><init>(Lx1/a;Lx1/b;Lx1/b;Lx1/b;Lx1/b;)V

    move-object/from16 v37, v45

    goto/16 :goto_5

    :cond_19
    move-object/from16 v37, v34

    goto/16 :goto_5

    :cond_1a
    invoke-virtual {v0}, LC1/d;->i()V

    goto/16 :goto_4

    :cond_1b
    invoke-virtual {v0}, LC1/d;->h()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq1/i;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {v0}, LC1/d;->e()V

    :goto_e
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_32

    sget-object v2, LB1/v;->b:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    if-eqz v2, :cond_31

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1c

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_e

    :cond_1c
    invoke-virtual {v0}, LC1/d;->a()V

    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_2f

    sget-object v2, LB1/b;->a:LC1/c$a;

    invoke-virtual {v0}, LC1/d;->e()V

    move-object/from16 v3, v34

    move-object v4, v3

    :goto_f
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_2e

    sget-object v2, LB1/b;->a:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    if-eqz v2, :cond_24

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1d

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_f

    :cond_1d
    invoke-virtual {v0}, LC1/d;->e()V

    move-object/from16 v46, v34

    move-object/from16 v47, v46

    move-object/from16 v48, v47

    move-object/from16 v49, v48

    move-object/from16 v50, v49

    :goto_10
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_23

    sget-object v2, LB1/b;->c:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    if-eqz v2, :cond_22

    const/4 v6, 0x1

    if-eq v2, v6, :cond_21

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1f

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1e

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_10

    :cond_1e
    invoke-static/range {p0 .. p1}, LB1/d;->d(LC1/c;Lq1/i;)Lx1/d;

    move-result-object v50

    goto :goto_10

    :cond_1f
    invoke-static {v0, v1, v6}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v49

    goto :goto_10

    :cond_20
    invoke-static {v0, v1, v6}, LB1/d;->b(LC1/c;Lq1/i;Z)Lx1/b;

    move-result-object v48

    goto :goto_10

    :cond_21
    invoke-static/range {p0 .. p1}, LB1/d;->a(LC1/d;Lq1/i;)Lx1/a;

    move-result-object v47

    goto :goto_10

    :cond_22
    invoke-static/range {p0 .. p1}, LB1/d;->a(LC1/d;Lq1/i;)Lx1/a;

    move-result-object v46

    goto :goto_10

    :cond_23
    invoke-virtual {v0}, LC1/d;->i()V

    new-instance v45, Lx1/m;

    invoke-direct/range {v45 .. v50}, Lx1/m;-><init>(Lx1/a;Lx1/a;Lx1/b;Lx1/b;Lx1/d;)V

    move-object/from16 v3, v45

    goto :goto_f

    :cond_24
    invoke-virtual {v0}, LC1/d;->e()V

    move-object/from16 v2, v34

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    :goto_11
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v39

    if-eqz v39, :cond_2c

    move-object/from16 v39, v2

    sget-object v2, LB1/b;->b:LC1/c$a;

    invoke-virtual {v0, v2}, LC1/d;->I(LC1/c$a;)I

    move-result v2

    if-eqz v2, :cond_2b

    move-object/from16 v45, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2a

    const/4 v4, 0x2

    if-eq v2, v4, :cond_29

    const/4 v4, 0x3

    if-eq v2, v4, :cond_25

    invoke-virtual {v0}, LC1/d;->K()V

    invoke-virtual {v0}, LC1/d;->O()V

    :goto_12
    move-object/from16 v2, v39

    move-object/from16 v4, v45

    goto :goto_11

    :cond_25
    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    sget-object v4, Ly1/u;->b:Ly1/u;

    move-object/from16 v39, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_28

    const/4 v4, 0x2

    if-eq v2, v4, :cond_27

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v46, v8

    const-string v8, "Unsupported text range units: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq1/i;->a(Ljava/lang/String;)V

    :cond_26
    move-object/from16 v2, v39

    :goto_13
    move-object/from16 v4, v45

    move-object/from16 v8, v46

    goto :goto_11

    :cond_27
    const/4 v4, 0x1

    :cond_28
    move-object/from16 v46, v8

    if-ne v2, v4, :cond_26

    sget-object v2, Ly1/u;->a:Ly1/u;

    goto :goto_13

    :cond_29
    move-object/from16 v46, v8

    invoke-static/range {p0 .. p1}, LB1/d;->d(LC1/c;Lq1/i;)Lx1/d;

    move-result-object v6

    goto :goto_12

    :cond_2a
    move-object/from16 v46, v8

    invoke-static/range {p0 .. p1}, LB1/d;->d(LC1/c;Lq1/i;)Lx1/d;

    move-result-object v5

    goto :goto_12

    :cond_2b
    move-object/from16 v46, v8

    invoke-static/range {p0 .. p1}, LB1/d;->d(LC1/c;Lq1/i;)Lx1/d;

    move-result-object v4

    move-object/from16 v2, v39

    goto :goto_11

    :cond_2c
    move-object/from16 v39, v2

    move-object/from16 v45, v4

    move-object/from16 v46, v8

    invoke-virtual {v0}, LC1/d;->i()V

    if-nez v45, :cond_2d

    if-eqz v5, :cond_2d

    new-instance v4, Lx1/d;

    new-instance v8, LE1/a;

    const/16 v43, 0x0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v47, v12

    move-object/from16 v12, v39

    invoke-direct {v8, v2}, LE1/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, LQg/r;-><init>(Ljava/util/List;)V

    goto :goto_14

    :cond_2d
    move/from16 v47, v12

    move-object/from16 v12, v39

    move-object/from16 v4, v45

    :goto_14
    new-instance v2, Lx1/l;

    invoke-direct {v2, v4, v5, v6, v12}, Lx1/l;-><init>(Lx1/d;Lx1/d;Lx1/d;Ly1/u;)V

    move-object v4, v2

    move-object/from16 v8, v46

    move/from16 v12, v47

    goto/16 :goto_f

    :cond_2e
    move-object/from16 v46, v8

    move/from16 v47, v12

    invoke-virtual {v0}, LC1/d;->i()V

    new-instance v2, Lx1/k;

    invoke-direct {v2, v3, v4}, Lx1/k;-><init>(Lx1/m;Lx1/l;)V

    move-object/from16 v39, v2

    goto :goto_15

    :cond_2f
    move-object/from16 v46, v8

    move/from16 v47, v12

    :goto_15
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v0}, LC1/d;->O()V

    goto :goto_15

    :cond_30
    invoke-virtual {v0}, LC1/d;->h()V

    :goto_16
    move-object/from16 v8, v46

    move/from16 v12, v47

    goto/16 :goto_e

    :cond_31
    move-object/from16 v46, v8

    move/from16 v47, v12

    new-instance v3, Lx1/j;

    invoke-static {}, LD1/n;->c()F

    move-result v2

    sget-object v4, LB1/i;->a:LB1/i;

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v4, v5}, LB1/u;->a(LC1/c;Lq1/i;FLB1/L;Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, LQg/r;-><init>(Ljava/util/List;)V

    move-object/from16 v19, v3

    goto :goto_16

    :cond_32
    move-object/from16 v46, v8

    move/from16 v47, v12

    invoke-virtual {v0}, LC1/d;->i()V

    goto/16 :goto_2

    :pswitch_12
    move-object/from16 v46, v8

    move/from16 v47, v12

    invoke-virtual {v0}, LC1/d;->a()V

    :cond_33
    :goto_17
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-static/range {p0 .. p1}, LB1/h;->a(LC1/d;Lq1/i;)Ly1/c;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_34
    invoke-virtual {v0}, LC1/d;->h()V

    const/4 v12, 0x0

    goto/16 :goto_20

    :pswitch_13
    move-object/from16 v46, v8

    move/from16 v47, v12

    invoke-virtual {v0}, LC1/d;->a()V

    :goto_18
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {v0}, LC1/d;->e()V

    move-object/from16 v4, v34

    move-object v5, v4

    move-object v6, v5

    const/4 v3, 0x0

    :goto_19
    invoke-virtual {v0}, LC1/d;->q()Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-virtual {v0}, LC1/d;->n0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    :goto_1a
    move/from16 v43, v41

    goto :goto_1b

    :sswitch_5
    const-string v12, "mode"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_35

    goto :goto_1a

    :cond_35
    const/16 v43, 0x3

    goto :goto_1b

    :sswitch_6
    const-string v12, "inv"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_36

    goto :goto_1a

    :cond_36
    const/16 v43, 0x2

    goto :goto_1b

    :sswitch_7
    const-string v12, "pt"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_37

    goto :goto_1a

    :cond_37
    const/16 v43, 0x1

    goto :goto_1b

    :sswitch_8
    const-string v12, "o"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_38

    goto :goto_1a

    :cond_38
    const/16 v43, 0x0

    :goto_1b
    packed-switch v43, :pswitch_data_2

    invoke-virtual {v0}, LC1/d;->O()V

    :goto_1c
    const/4 v12, 0x0

    goto :goto_19

    :pswitch_14
    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Ly1/i$a;->a:Ly1/i$a;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v43

    sparse-switch v43, :sswitch_data_2

    :goto_1d
    move/from16 v2, v41

    goto :goto_1e

    :sswitch_9
    const-string/jumbo v2, "s"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_1d

    :cond_39
    const/4 v2, 0x3

    goto :goto_1e

    :sswitch_a
    const-string v2, "n"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_1d

    :cond_3a
    const/4 v2, 0x2

    goto :goto_1e

    :sswitch_b
    const-string v2, "i"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_1d

    :cond_3b
    const/4 v2, 0x1

    goto :goto_1e

    :sswitch_c
    const-string v2, "a"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_1d

    :cond_3c
    const/4 v2, 0x0

    :goto_1e
    packed-switch v2, :pswitch_data_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unknown mask mode "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Defaulting to Add."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LD1/e;->b(Ljava/lang/String;)V

    :pswitch_15
    move-object v4, v12

    goto :goto_1c

    :pswitch_16
    sget-object v2, Ly1/i$a;->b:Ly1/i$a;

    :goto_1f
    move-object v4, v2

    goto :goto_1c

    :pswitch_17
    sget-object v2, Ly1/i$a;->d:Ly1/i$a;

    goto :goto_1f

    :pswitch_18
    const-string v2, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {v1, v2}, Lq1/i;->a(Ljava/lang/String;)V

    sget-object v2, Ly1/i$a;->c:Ly1/i$a;

    goto :goto_1f

    :pswitch_19
    invoke-virtual {v0}, LC1/d;->v()Z

    move-result v2

    move v3, v2

    goto :goto_1c

    :pswitch_1a
    new-instance v5, Lx1/h;

    invoke-static {}, LD1/n;->c()F

    move-result v2

    sget-object v8, LB1/F;->a:LB1/F;

    const/4 v12, 0x0

    invoke-static {v0, v1, v2, v8, v12}, LB1/u;->a(LC1/c;Lq1/i;FLB1/L;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v5, v2}, LQg/r;-><init>(Ljava/util/List;)V

    goto/16 :goto_19

    :pswitch_1b
    const/4 v12, 0x0

    invoke-static/range {p0 .. p1}, LB1/d;->d(LC1/c;Lq1/i;)Lx1/d;

    move-result-object v6

    goto/16 :goto_19

    :cond_3d
    const/4 v12, 0x0

    invoke-virtual {v0}, LC1/d;->i()V

    new-instance v2, Ly1/i;

    invoke-direct {v2, v4, v5, v6, v3}, Ly1/i;-><init>(Ly1/i$a;Lx1/h;Lx1/d;Z)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :cond_3e
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v1, Lq1/i;->o:I

    add-int/2addr v3, v2

    iput v3, v1, Lq1/i;->o:I

    invoke-virtual {v0}, LC1/d;->h()V

    goto :goto_20

    :pswitch_1c
    move-object/from16 v46, v8

    move/from16 v47, v12

    move v12, v3

    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    invoke-static {}, Lz1/e$b;->values()[Lz1/e$b;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_3f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported matte type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq1/i;->a(Ljava/lang/String;)V

    :goto_20
    move v3, v12

    move-object/from16 v8, v46

    move/from16 v12, v47

    goto/16 :goto_3

    :cond_3f
    invoke-static {}, Lz1/e$b;->values()[Lz1/e$b;

    move-result-object v3

    aget-object v22, v3, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_41

    const/4 v4, 0x4

    if-eq v2, v4, :cond_40

    goto :goto_21

    :cond_40
    const-string v2, "Unsupported matte type: Luma Inverted"

    invoke-virtual {v1, v2}, Lq1/i;->a(Ljava/lang/String;)V

    goto :goto_21

    :cond_41
    const/4 v4, 0x4

    const-string v2, "Unsupported matte type: Luma"

    invoke-virtual {v1, v2}, Lq1/i;->a(Ljava/lang/String;)V

    :goto_21
    iget v2, v1, Lq1/i;->o:I

    const/16 v44, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lq1/i;->o:I

    :goto_22
    move v3, v12

    move/from16 v5, v44

    move-object/from16 v8, v46

    :goto_23
    move/from16 v12, v47

    goto/16 :goto_0

    :pswitch_1d
    move/from16 v44, v5

    move-object/from16 v46, v8

    move/from16 v47, v12

    const/4 v4, 0x4

    move v12, v3

    const/4 v3, 0x3

    invoke-static/range {p0 .. p1}, LB1/c;->a(LC1/d;Lq1/i;)Lx1/n;

    move-result-object v25

    :goto_24
    move v3, v12

    goto :goto_23

    :pswitch_1e
    move/from16 v44, v5

    move-object/from16 v46, v8

    move/from16 v47, v12

    const/4 v4, 0x4

    move v12, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    goto :goto_24

    :pswitch_1f
    move/from16 v44, v5

    move-object/from16 v46, v8

    move/from16 v47, v12

    const/4 v4, 0x4

    move v12, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, LD1/n;->c()F

    move-result v5

    mul-float/2addr v5, v2

    float-to-int v2, v5

    move/from16 v30, v2

    :goto_25
    move v3, v12

    move/from16 v5, v44

    goto :goto_23

    :pswitch_20
    move v12, v3

    move/from16 v44, v5

    move-object/from16 v46, v8

    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, LD1/n;->c()F

    move-result v5

    mul-float/2addr v5, v2

    float-to-int v2, v5

    move v3, v12

    move/from16 v5, v44

    move v12, v2

    goto/16 :goto_0

    :pswitch_21
    move/from16 v44, v5

    move-object/from16 v46, v8

    move/from16 v47, v12

    const/4 v4, 0x4

    move v12, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    int-to-long v5, v2

    move-wide/from16 v20, v5

    goto :goto_25

    :pswitch_22
    move/from16 v44, v5

    move-object/from16 v46, v8

    move/from16 v47, v12

    const/4 v4, 0x4

    move v12, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    const/4 v5, 0x6

    if-ge v2, v5, :cond_42

    invoke-static {}, Lz1/e$a;->values()[Lz1/e$a;

    move-result-object v5

    aget-object v26, v5, v2

    goto/16 :goto_22

    :cond_42
    sget-object v26, Lz1/e$a;->c:Lz1/e$a;

    goto/16 :goto_22

    :pswitch_23
    move/from16 v44, v5

    move-object/from16 v46, v8

    move/from16 v47, v12

    const/4 v4, 0x4

    move v12, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_24

    :pswitch_24
    move/from16 v44, v5

    move-object/from16 v46, v8

    move/from16 v47, v12

    const/4 v4, 0x4

    move v12, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, LC1/d;->E()I

    move-result v2

    int-to-long v5, v2

    move-wide/from16 v17, v5

    goto :goto_25

    :pswitch_25
    move/from16 v44, v5

    move-object/from16 v46, v8

    move/from16 v47, v12

    const/4 v4, 0x4

    move v12, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, LC1/d;->F()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_24

    :cond_43
    move/from16 v47, v12

    invoke-virtual {v0}, LC1/d;->i()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    cmpl-float v0, v13, v24

    if-lez v0, :cond_44

    new-instance v0, LE1/a;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, v29

    move-object/from16 v2, v29

    invoke-direct/range {v0 .. v6}, LE1/a;-><init>(Lq1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    cmpl-float v0, v23, v24

    if-lez v0, :cond_45

    goto :goto_26

    :cond_45
    iget v0, v1, Lq1/i;->m:F

    move/from16 v23, v0

    :goto_26
    new-instance v0, LE1/a;

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v4, 0x0

    move-object/from16 v3, v31

    move v5, v13

    move-object/from16 v2, v31

    invoke-direct/range {v0 .. v6}, LE1/a;-><init>(Lq1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LE1/a;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v3, v29

    move-object/from16 v1, p1

    move/from16 v5, v23

    move-object/from16 v2, v29

    invoke-direct/range {v0 .. v6}, LE1/a;-><init>(Lq1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "ai"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_28

    :cond_46
    :goto_27
    move/from16 v3, v28

    goto :goto_29

    :cond_47
    :goto_28
    const-string v0, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v1, v0}, Lq1/i;->a(Ljava/lang/String;)V

    goto :goto_27

    :goto_29
    if-eqz v3, :cond_49

    if-nez v25, :cond_48

    new-instance v25, Lx1/n;

    invoke-direct/range {v25 .. v25}, Lx1/n;-><init>()V

    :cond_48
    move-object/from16 v0, v25

    iput-boolean v3, v0, Lx1/n;->j:Z

    move-object v11, v0

    goto :goto_2a

    :cond_49
    move-object/from16 v11, v25

    :goto_2a
    new-instance v0, Lz1/e;

    move-object v2, v1

    move-object v3, v7

    move-object v1, v9

    move-wide/from16 v4, v17

    move-object/from16 v6, v26

    move-object/from16 v9, v27

    move/from16 v13, v30

    move/from16 v17, v32

    move/from16 v18, v33

    move/from16 v24, v35

    move-object/from16 v25, v36

    move-object/from16 v26, v37

    move-object/from16 v27, v38

    move-object/from16 v23, v40

    move/from16 v12, v47

    move-wide/from16 v51, v20

    move-object/from16 v21, v8

    move-wide/from16 v7, v51

    move-object/from16 v20, v39

    invoke-direct/range {v0 .. v27}, Lz1/e;-><init>(Ljava/util/List;Lq1/i;Ljava/lang/String;JLz1/e$a;JLjava/lang/String;Ljava/util/List;Lx1/n;IIIFFFFLx1/j;Lx1/k;Ljava/util/List;Lz1/e$b;Lx1/b;ZLy1/a;LB1/j;Ly1/h;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_b
        :pswitch_a
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

    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x6f -> :sswitch_8
        0xe04 -> :sswitch_7
        0x197f1 -> :sswitch_6
        0x3339a3 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_14
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x61 -> :sswitch_c
        0x69 -> :sswitch_b
        0x6e -> :sswitch_a
        0x73 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_15
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method
