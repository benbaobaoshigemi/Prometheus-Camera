.class public final Lu2/S;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu2/S$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public static a()Z
    .locals 4

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    const/16 v1, 0xb6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    iget-boolean v0, v0, Lv2/D0;->x:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v3, Lr2/k;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/k;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lr2/k;->b:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    const-string v3, "pref_retain_camera_mode_key"

    invoke-virtual {v1, v3, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    const-class v3, Lu2/P;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu2/P;

    invoke-virtual {v1, v0}, Lu2/P;->E(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return v2

    :cond_3
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->L()Z

    move-result v0

    return v0
.end method

.method public static b(I)Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, LK2/j;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public static c(I)Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, LK2/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0xb0

    if-ne p0, v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public static d(Lvr/m;ZZZ)I
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lvr/m;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xa3

    const/16 v2, 0xa0

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "MANUAL_MODE"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "PANORAMA"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "PANORAMIC"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "PORTRAIT"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "SUPER_NIGHT"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "POLAROID"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "CAPTURE"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "FAST_MOTION"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "CINEMATIC"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "VIDEO"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "SHORT_VIDEO"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "SLOW_MOTION"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "DOC"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "ULTRA_PIXEL"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "COSMETIC_MIRROR"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "FRIEND_SHOT_INTER"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_10
    const-string v4, "AI_WATERMARK"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_11
    const-string v4, "CINEMASTER"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_12
    const-string v4, "SUPER_NIGHT_VIDEO"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_13
    const-string v4, "STREET"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_14
    const-string v4, "SQUARE"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_15
    const-string v4, "MIMOJI"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_16
    const-string v4, "MANUAL"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_0

    :cond_16
    move v3, v0

    goto :goto_0

    :sswitch_17
    const-string v4, "LEGEND"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    :cond_18
    move p0, v2

    goto/16 :goto_1

    :pswitch_0
    const/16 p0, 0xa6

    goto/16 :goto_1

    :pswitch_1
    const/16 p0, 0xab

    goto/16 :goto_1

    :pswitch_2
    const/16 p0, 0xad

    goto/16 :goto_1

    :pswitch_3
    const/16 p0, 0xe4

    goto/16 :goto_1

    :pswitch_4
    const/16 p0, 0xa9

    goto/16 :goto_1

    :pswitch_5
    const/16 p0, 0xe3

    goto/16 :goto_1

    :pswitch_6
    const/16 p0, 0xa2

    goto/16 :goto_1

    :pswitch_7
    if-eqz p1, :cond_19

    const/16 p0, 0xb7

    goto/16 :goto_1

    :cond_19
    if-eqz p2, :cond_1a

    const/16 p0, 0xbe

    goto :goto_1

    :cond_1a
    const/16 p0, 0xa1

    goto :goto_1

    :pswitch_8
    if-eqz p3, :cond_18

    const/16 p0, 0xac

    goto :goto_1

    :pswitch_9
    const/16 p0, 0xba

    goto :goto_1

    :pswitch_a
    const/16 p0, 0xaf

    goto :goto_1

    :pswitch_b
    const/16 p0, 0xe0

    goto :goto_1

    :pswitch_c
    const/16 p0, 0xe2

    goto :goto_1

    :pswitch_d
    const/16 p0, 0xcd

    goto :goto_1

    :pswitch_e
    const/16 p0, 0xa4

    goto :goto_1

    :pswitch_f
    const/16 p0, 0xd6

    goto :goto_1

    :pswitch_10
    invoke-static {}, Lcom/android/camera/data/data/w;->d()Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-static {}, LQ5/J;->d()Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-static {}, LQ6/d0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/K1;

    invoke-direct {p1, v0}, LF1/K1;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, 0xe5

    goto :goto_1

    :cond_1b
    const/16 p0, 0xe1

    goto :goto_1

    :pswitch_11
    move p0, v1

    goto :goto_1

    :pswitch_12
    const/16 p0, 0xb8

    goto :goto_1

    :pswitch_13
    const/16 p0, 0xa7

    goto :goto_1

    :pswitch_14
    const/16 p0, 0x100

    :goto_1
    invoke-static {}, Lcom/android/camera/data/data/j;->v0()Z

    move-result p1

    if-eqz p1, :cond_1e

    if-ne p0, v2, :cond_1c

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    iget p1, p0, Lu2/Q;->u:I

    invoke-virtual {p0, p1}, Lu2/Q;->E(I)I

    move-result p0

    :cond_1c
    invoke-static {}, LK2/e;->y()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {p0}, Lu2/S;->f(I)I

    move-result p1

    goto :goto_2

    :cond_1d
    invoke-static {p0}, Lu2/S;->e(I)I

    move-result p1

    :goto_2
    if-eq p0, p1, :cond_1e

    move p0, p1

    :cond_1e
    if-eq p0, v2, :cond_1f

    invoke-static {p0}, Lt3/a;->c(I)Lcom/android/camera/module/entry/a;

    move-result-object p1

    if-nez p1, :cond_1f

    return v1

    :cond_1f
    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7a6207f3 -> :sswitch_17
        -0x78e2243a -> :sswitch_16
        -0x7871f203 -> :sswitch_15
        -0x6dc0b2e3 -> :sswitch_14
        -0x6d97bbfd -> :sswitch_13
        -0x5dcc4990 -> :sswitch_12
        -0x5979fac1 -> :sswitch_11
        -0x560d9713 -> :sswitch_10
        -0x41245888 -> :sswitch_f
        -0x390810d1 -> :sswitch_e
        -0x892fc0d -> :sswitch_d
        0x10918 -> :sswitch_c
        0x3edbbb4 -> :sswitch_b
        0x49256b8 -> :sswitch_a
        0x4de1c5b -> :sswitch_9
        0x55f2bdd -> :sswitch_8
        0xe9700f9 -> :sswitch_7
        0x4bbb5326 -> :sswitch_6
        0x4ed50dcc -> :sswitch_5
        0x4fe51614 -> :sswitch_4
        0x5a1dab9b -> :sswitch_3
        0x5f263966 -> :sswitch_2
        0x6e6c9675 -> :sswitch_1
        0x6f917a7c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method public static e(I)I
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-class v1, Lu2/P;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xab

    const/16 v1, 0xe6

    const/16 v2, 0xa2

    const/16 v3, 0xa3

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    if-ne p0, v2, :cond_0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    iget p0, p0, Lu2/Q;->u:I

    invoke-static {p0}, Lu2/Q;->G(I)I

    move-result p0

    return p0
.end method

.method public static f(I)I
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-class v1, Lu2/P;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lu2/P;->w()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    if-ne p0, v2, :cond_0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    iget p0, p0, Lu2/Q;->u:I

    invoke-static {p0}, Lu2/Q;->G(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final g(Lvr/m;ZZZ)Lh0/b;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvr/m;",
            "ZZZ)",
            "Lh0/b<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    const-string v5, "Function"

    const-string v6, "Global"

    const-string v7, "Manual"

    const/4 v10, 0x0

    const-string v0, "desk_widget_launch"

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v12

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v13

    iput v10, v13, Lv2/D0;->z:I

    const/4 v13, 0x0

    iput-object v13, v12, Lu2/Q;->w:Ljava/lang/String;

    iput v10, v12, Lu2/Q;->y:I

    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v14

    const/16 v15, 0xa3

    if-eqz v14, :cond_0

    invoke-virtual {v12, v15}, Lu2/Q;->c0(I)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v14

    move/from16 v16, v15

    const-class v15, Lv2/B0;

    invoke-virtual {v14, v15}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv2/B0;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lv2/B0;->w(F)V

    invoke-static {v10}, Lcom/android/camera/data/data/w;->Z0(I)V

    goto :goto_0

    :cond_0
    move/from16 v16, v15

    :goto_0
    iget-object v14, v2, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v14}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, LQa/i;->d()Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    move v15, v10

    :goto_1
    invoke-virtual {v2}, Lvr/m;->c()Z

    move-result v17

    sget-boolean v18, LJe/c;->k:Z

    sget-object v13, LJe/c$b;->a:LJe/c;

    iget-object v8, v13, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a3()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, LQ5/J;->f()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_2
    const/16 v19, 0x1

    goto :goto_3

    :cond_2
    move v8, v10

    goto :goto_2

    :goto_3
    invoke-virtual {v13}, LJe/c;->q1()Z

    move-result v11

    invoke-virtual {v13}, LJe/c;->f1()Z

    move-result v20

    if-nez v20, :cond_4

    invoke-virtual {v13}, LJe/c;->g1()Z

    move-result v20

    if-eqz v20, :cond_3

    goto :goto_4

    :cond_3
    move v9, v10

    goto :goto_5

    :cond_4
    :goto_4
    move/from16 v9, v19

    :goto_5
    invoke-virtual {v13}, LJe/c;->e1()Z

    move-result v10

    invoke-virtual {v13}, LJe/c;->E2()Z

    move-result v13

    move/from16 v22, v8

    iget-object v8, v2, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v8}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v8

    move/from16 v23, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v11, v8}, Lvr/m;->y(ZLjava/lang/Boolean;)Lvr/m$b;

    move-result-object v8

    move/from16 v17, v11

    iget-object v11, v8, Lvr/m$b;->d:Ljava/lang/String;

    iput-object v11, v12, Lu2/Q;->w:Ljava/lang/String;

    move-object/from16 v24, v7

    const-string/jumbo v7, "setLaunchSource = "

    invoke-static {v7, v11}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v25, v5

    const/4 v11, 0x0

    new-array v5, v11, [Ljava/lang/Object;

    const-string v11, "IntentParser"

    invoke-static {v11, v7, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, v8, Lvr/m$b;->b:Z

    iget v7, v8, Lvr/m$b;->c:I

    move/from16 v26, v5

    const-class v5, Lu2/P;

    move-object/from16 v30, v8

    if-eqz v26, :cond_1e

    invoke-static {v2, v9, v10, v13}, Lu2/S;->d(Lvr/m;ZZZ)I

    move-result v6

    const-string v8, "before pendingOpenModule = "

    invoke-static {v6, v8}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v31, v14

    const/4 v14, 0x0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v11, v8, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xa7

    if-eq v6, v1, :cond_a

    const/16 v1, 0xad

    if-eq v6, v1, :cond_9

    const/16 v1, 0xb4

    if-eq v6, v1, :cond_8

    const/16 v1, 0xb8

    if-eq v6, v1, :cond_7

    const/16 v1, 0xcb

    if-eq v6, v1, :cond_6

    const/16 v1, 0xd6

    if-eq v6, v1, :cond_5

    goto :goto_6

    :cond_5
    invoke-static/range {v19 .. v19}, Lcom/android/camera/data/data/m;->H0(Z)V

    goto :goto_6

    :cond_6
    invoke-static/range {v19 .. v19}, Lcom/android/camera/data/data/w;->U0(Z)V

    goto :goto_6

    :cond_7
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/camera/data/data/w;->U0(Z)V

    goto :goto_6

    :cond_8
    const/16 v21, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/camera/data/data/m;->J0(Z)V

    goto :goto_6

    :cond_9
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/camera/data/data/m;->H0(Z)V

    goto :goto_6

    :cond_a
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/camera/data/data/m;->J0(Z)V

    :goto_6
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v2}, Lvr/m;->d()Ljava/lang/String;

    move-result-object v8

    const-string v14, "com.android.camera"

    invoke-static {v8, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    :try_start_0
    invoke-static/range {v31 .. v31}, Lvr/m;->w(Landroid/content/Intent;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    move/from16 v26, v9

    goto :goto_8

    :catch_0
    const/4 v8, 0x0

    goto :goto_7

    :goto_8
    new-instance v9, Lgq/h;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move/from16 v28, v10

    const-string v10, "key_common"

    iput-object v10, v9, Lgq/h;->a:Ljava/lang/String;

    new-instance v10, Lgq/f;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    move/from16 v29, v13

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v13, v10, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v13, v10, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v13, v10, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v10, v9, Lgq/h;->b:Lgq/f;

    new-instance v10, LN7/e;

    invoke-direct {v10, v8, v6}, LN7/e;-><init>(ZI)V

    invoke-virtual {v9, v10}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lgq/h;->d()V

    goto :goto_9

    :cond_b
    move/from16 v26, v9

    move/from16 v28, v10

    move/from16 v29, v13

    :goto_9
    const/16 v8, 0xa0

    if-ne v6, v8, :cond_d

    invoke-static {}, Lu2/S;->a()Z

    move-result v6

    const-string v9, "isTimeOut = "

    const-string v10, ", isResumeFromPause = "

    invoke-static {v9, v10, v6, v4}, LF1/P;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v13, v10, [Ljava/lang/Object;

    invoke-static {v11, v9, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_c

    if-nez v4, :cond_c

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lu2/Q;->G(I)I

    move-result v6

    goto :goto_a

    :cond_c
    invoke-virtual {v1, v7}, Lu2/Q;->E(I)I

    move-result v6

    :cond_d
    :goto_a
    :try_start_1
    iget-object v4, v2, Lvr/m;->a:Landroid/content/Intent;

    if-nez v4, :cond_e

    :goto_b
    const/4 v4, 0x0

    goto :goto_c

    :cond_e
    const-string v9, "android.intent.extra.USE_REAR_CAMERA"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_b

    :cond_f
    iget-object v4, v2, Lvr/m;->a:Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    :goto_c
    if-eqz v4, :cond_11

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    iget-object v9, v2, Lvr/m;->a:Landroid/content/Intent;

    if-nez v9, :cond_10

    const/4 v9, 0x0

    goto :goto_d

    :cond_10
    invoke-static {v9}, Lvr/m;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    :goto_d
    iput-boolean v9, v4, Lv2/D0;->i:Z

    goto :goto_f

    :cond_11
    iget-object v4, v2, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v4}, Lvr/m;->w(Landroid/content/Intent;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_10

    :catch_1
    iget-object v4, v2, Lvr/m;->a:Landroid/content/Intent;

    if-eqz v4, :cond_12

    const-string v9, "NoUiQuery"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    move/from16 v4, v19

    goto :goto_e

    :cond_12
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_13

    :goto_f
    const/4 v1, 0x0

    goto :goto_10

    :cond_13
    invoke-static {}, Lu2/S;->a()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_f

    :cond_14
    invoke-virtual {v1, v6}, Lu2/Q;->D(I)I

    move-result v1

    :goto_10
    invoke-static {v1}, Lu2/S;->b(I)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v1, 0x0

    :cond_15
    invoke-static {v6}, Lu2/S;->c(I)Z

    move-result v4

    if-eqz v4, :cond_16

    const/16 v6, 0xa6

    :cond_16
    new-instance v4, Lh0/b;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Lh0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v9, "parseIntent: intent from voice control assist : pendingOpenId = "

    const-string v10, ";pendingOpenModule = "

    const-string v13, ",newIntentType = "

    invoke-static {v1, v6, v9, v10, v13}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", justFetch="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v13, v10, [Ljava/lang/Object;

    invoke-static {v11, v9, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v7, v12, Lu2/Q;->u:I

    invoke-virtual {v12, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu2/P;

    invoke-virtual {v5, v7}, Lu2/P;->J(I)V

    iput-boolean v15, v12, Lu2/Q;->t:Z

    if-nez v3, :cond_a2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    iget v5, v3, Lu2/Q;->u:I

    invoke-virtual {v3, v5}, Lu2/Q;->E(I)I

    move-result v5

    if-eq v6, v5, :cond_17

    invoke-virtual {v3, v6}, Lu2/Q;->c0(I)V

    sput v6, Lcom/android/camera/module/Y;->a:I

    :cond_17
    invoke-virtual {v3}, Lu2/Q;->C()I

    move-result v5

    if-eq v1, v5, :cond_18

    invoke-virtual {v3, v1}, Lu2/Q;->a0(I)V

    :cond_18
    invoke-virtual {v2}, Lvr/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move/from16 v10, v26

    move/from16 v1, v28

    move/from16 v3, v29

    invoke-static {v2, v10, v1, v3}, Lu2/S;->d(Lvr/m;ZZZ)I

    move-result v1

    move-object/from16 v9, p0

    if-eq v1, v8, :cond_1b

    iget v3, v9, Lu2/S;->b:I

    if-eq v1, v3, :cond_1b

    iget-object v2, v2, Lvr/m;->a:Landroid/content/Intent;

    if-nez v2, :cond_19

    const/4 v0, 0x0

    goto :goto_11

    :cond_19
    invoke-static {v2}, Lvr/m;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_11
    if-eqz v0, :cond_1a

    goto :goto_12

    :cond_1a
    const/4 v0, 0x0

    goto :goto_13

    :cond_1b
    :goto_12
    move/from16 v0, v19

    :goto_13
    const-string v2, "parse intent, intent mode: "

    const-string v3, ", last mode: "

    invoke-static {v1, v2, v3}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lu2/S;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", keep data item running: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v11, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-le v1, v8, :cond_1c

    iput v1, v9, Lu2/S;->b:I

    :cond_1c
    move v10, v0

    goto :goto_14

    :cond_1d
    const/4 v1, -0x1

    move-object/from16 v9, p0

    iput v1, v9, Lu2/S;->b:I

    const/4 v10, 0x0

    :goto_14
    if-nez v10, :cond_a2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-virtual {v0}, Lv2/D0;->B()V

    sget-object v0, Lg2/a$a;->a:Lg2/a;

    iget-object v0, v0, Lg2/a;->a:LZ8/b;

    iget-object v0, v0, LZ8/b;->a:Ljava/lang/Object;

    check-cast v0, Lh2/a;

    iget-object v0, v0, Lh2/a;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto/16 :goto_61

    :cond_1e
    const/16 v1, 0xad

    move-object/from16 v9, p0

    move-object/from16 v31, v14

    iput v7, v12, Lu2/Q;->u:I

    invoke-virtual {v12, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/P;

    invoke-virtual {v0, v7}, Lu2/P;->J(I)V

    const/4 v8, -0x1

    iput v8, v9, Lu2/S;->b:I

    invoke-virtual {v2}, Lvr/m;->d()Ljava/lang/String;

    move-result-object v8

    const-string v10, "foreground_input"

    move-object/from16 v13, v31

    invoke-virtual {v13, v10}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "CameraAgent"

    if-eqz v14, :cond_20

    invoke-virtual {v14}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    check-cast v0, Ljava/lang/String;

    const-string v4, "foreground_input: "

    move-object/from16 v31, v8

    const-string v8, " | "

    invoke-static {v4, v0, v8}, LP/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v4, p4

    move-object/from16 v8, v31

    move-object/from16 v0, v32

    goto :goto_15

    :cond_1f
    move-object/from16 v31, v8

    const-string v0, "in"

    invoke-virtual {v14, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "caller"

    invoke-virtual {v14, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lu2/Q;->z:Ljava/lang/String;

    goto :goto_17

    :cond_20
    move-object/from16 v31, v8

    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_21
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_22

    :try_start_2
    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const-string v8, "micamera_wkspkey"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v0, v8}, Lxe/b;->d([B[B)[B

    move-result-object v0

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v8

    goto :goto_17

    :catch_2
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v32, v4

    const-string v4, "parseAndGetNormalPendingInfo: "

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v8}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_22
    move-object/from16 v32, v4

    :goto_16
    move-object/from16 v0, v32

    goto :goto_17

    :cond_23
    const/4 v0, 0x0

    :goto_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v8, "extra_agent_workspace_parameters"

    if-nez v4, :cond_25

    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_18
    const/4 v4, 0x0

    goto :goto_1b

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v36, v7

    move-object/from16 v33, v11

    :goto_19
    move-object/from16 v34, v13

    move/from16 v35, v15

    :cond_24
    :goto_1a
    const/4 v15, 0x0

    goto/16 :goto_3c

    :cond_25
    const/4 v0, 0x0

    goto :goto_18

    :goto_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_26

    invoke-virtual {v13, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_26
    const-string v8, "agentString: "

    invoke-static {v8, v0}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v33, v11

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v3, v8, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    :goto_1c
    move/from16 v36, v7

    goto :goto_19

    :cond_27
    invoke-static/range {v31 .. v31}, LF1/F2;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_1c

    :cond_28
    if-eqz v14, :cond_29

    const-string v4, "action_request_id"

    invoke-virtual {v14, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "action_callback_uri"

    invoke-virtual {v14, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1d

    :cond_29
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_1d
    sget-boolean v11, LJe/c;->k:Z

    sget-object v11, LJe/c$b;->a:LJe/c;

    iget-object v11, v11, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v11}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->w()I

    move-result v11

    if-gtz v11, :cond_2a

    move/from16 v11, v19

    invoke-static {v11, v4, v8}, LF1/F2;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_2a
    invoke-static {}, LSh/c;->c()Z

    move-result v11

    if-nez v11, :cond_2b

    invoke-virtual {v13, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/16 v0, -0x67

    invoke-static {v0, v4, v8}, LF1/F2;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_2b
    const-string v10, ";"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v10, v0

    const/4 v11, 0x3

    if-lt v10, v11, :cond_55

    const/16 v21, 0x0

    aget-object v10, v0, v21

    const-string v14, "a_"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_55

    aget-object v10, v0, v21

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v14, 0x2

    if-le v10, v14, :cond_55

    const/16 v19, 0x1

    aget-object v10, v0, v19

    move/from16 v31, v11

    const-string/jumbo v11, "s_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_55

    aget-object v10, v0, v19

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v14, :cond_55

    aget-object v10, v0, v14

    const-string/jumbo v11, "t_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_55

    aget-object v10, v0, v14

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v14, :cond_55

    const/4 v10, 0x0

    aget-object v11, v0, v10

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const/16 v19, 0x1

    aget-object v10, v0, v19

    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v34, v13

    aget-object v13, v0, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    array-length v14, v0

    add-int/lit8 v14, v14, -0x3

    new-array v2, v14, [Ljava/lang/String;

    move/from16 v35, v15

    array-length v15, v0

    add-int/lit8 v15, v15, -0x3

    move/from16 v36, v7

    move/from16 v7, v31

    const/4 v9, 0x0

    invoke-static {v0, v7, v2, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string/jumbo v0, "workspace"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v11, v9

    move v15, v11

    move/from16 v21, v15

    const/4 v7, -0x1

    const/16 v9, 0xfd

    :goto_1e
    if-ge v11, v14, :cond_2e

    aget-object v37, v2, v11

    invoke-static/range {v37 .. v37}, LT9/r;->u(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    aget-object v0, v37, v21

    move-object/from16 v39, v2

    const-string v2, "pref_camera_mode_key_intent_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v19, 0x1

    aget-object v0, v37, v19

    const/16 v2, 0xfd

    invoke-static {v2, v0}, LF1/F2;->f(ILjava/lang/String;)I

    move-result v9

    goto :goto_1f

    :cond_2c
    const/16 v19, 0x1

    aget-object v0, v37, v21

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    aget-object v0, v37, v19

    const/4 v2, -0x1

    invoke-static {v2, v0}, LF1/F2;->f(ILjava/lang/String;)I

    move-result v0

    move v7, v0

    goto :goto_1f

    :cond_2d
    move/from16 v15, v19

    :goto_1f
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v39

    const/16 v21, 0x0

    goto :goto_1e

    :cond_2e
    move-object/from16 v39, v2

    const/16 v2, 0xfd

    if-ne v9, v2, :cond_2f

    const-string v0, "mode illegal"

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_20
    const/4 v2, 0x0

    goto :goto_24

    :cond_2f
    invoke-static {v9}, Lt3/a;->c(I)Lcom/android/camera/module/entry/a;

    move-result-object v0

    const/16 v2, 0xe4

    if-ne v9, v2, :cond_30

    if-eqz v0, :cond_30

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v11

    invoke-virtual {v11, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lu2/P;

    iget-object v11, v11, Lu2/P;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const/4 v2, 0x0

    goto :goto_21

    :cond_30
    const/4 v2, 0x1

    :goto_21
    if-nez v0, :cond_35

    const-string v0, " not supported"

    const/16 v11, 0xb7

    if-eq v9, v11, :cond_33

    const/16 v11, 0xcc

    if-eq v9, v11, :cond_31

    invoke-static {v9, v0}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_22
    move v2, v11

    goto :goto_24

    :cond_31
    const/4 v11, 0x0

    const/16 v14, 0xce

    invoke-static {v14}, Lt3/a;->c(I)Lcom/android/camera/module/entry/a;

    move-result-object v21

    if-eqz v21, :cond_32

    :goto_23
    move v9, v14

    goto :goto_24

    :cond_32
    invoke-static {v9, v0}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22

    :cond_33
    const/4 v11, 0x0

    const/16 v14, 0xbe

    invoke-static {v14}, Lt3/a;->c(I)Lcom/android/camera/module/entry/a;

    move-result-object v21

    if-eqz v21, :cond_34

    goto :goto_23

    :cond_34
    invoke-static {v9, v0}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20

    :cond_35
    :goto_24
    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->c()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_25

    :cond_36
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v14, -0x77102c1a

    move/from16 v37, v0

    const-string v0, "_"

    if-eq v11, v14, :cond_3a

    const v14, 0x5629d7f8

    if-eq v11, v14, :cond_39

    const v14, 0x7f4defc3

    if-eq v11, v14, :cond_38

    :cond_37
    move/from16 v38, v2

    move/from16 v40, v7

    move/from16 v41, v15

    goto :goto_26

    :cond_38
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_37

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/16 v21, 0x0

    aget-object v11, v11, v21

    new-instance v14, Lgq/h;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    move/from16 v38, v2

    const-string v2, "key_action"

    iput-object v2, v14, Lgq/h;->a:Ljava/lang/String;

    new-instance v2, Lgq/f;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move/from16 v40, v7

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v2, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v2, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v2, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v2, v14, Lgq/h;->b:Lgq/f;

    new-instance v2, LI7/a;

    const-string v7, "featureName"

    invoke-static {v11, v7}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "agent_scene"

    move/from16 v41, v15

    const/4 v15, 0x0

    invoke-direct {v2, v9, v7, v11, v15}, LI7/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lgq/h;->d()V

    :goto_26
    move-object/from16 v7, v24

    move-object/from16 v2, v25

    goto :goto_27

    :cond_39
    move/from16 v38, v2

    move/from16 v40, v7

    move/from16 v41, v15

    move-object/from16 v2, v25

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v7, v24

    goto :goto_27

    :cond_3a
    move/from16 v38, v2

    move/from16 v40, v7

    move/from16 v41, v15

    move-object/from16 v7, v24

    move-object/from16 v2, v25

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    :goto_27
    const/4 v11, 0x4

    const/4 v14, 0x5

    if-nez v38, :cond_3d

    if-eqz v37, :cond_3b

    iput v11, v12, Lu2/Q;->y:I

    goto :goto_28

    :cond_3b
    iput v14, v12, Lu2/Q;->y:I

    :goto_28
    const-string v0, "LOCAL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, -0x2

    goto :goto_29

    :cond_3c
    const/4 v0, 0x1

    :goto_29
    invoke-static {v0, v4, v8}, LF1/F2;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lh0/b;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v15, v0

    goto/16 :goto_3c

    :cond_3d
    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v15, v0

    const/4 v11, 0x1

    if-ne v15, v11, :cond_3e

    const/16 v21, 0x0

    aget-object v0, v0, v21

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v13

    const/4 v15, 0x0

    iput-object v15, v13, Lv2/D0;->m:Ljava/lang/String;

    goto :goto_2b

    :cond_3e
    const/16 v21, 0x0

    aget-object v15, v0, v21

    aget-object v0, v0, v11

    sget-boolean v19, LQa/b;->S:Z

    if-eqz v19, :cond_3f

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    iput-object v13, v0, Lv2/D0;->m:Ljava/lang/String;

    goto :goto_2a

    :cond_3f
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_40

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v11

    iput-object v0, v11, Lv2/D0;->n:Ljava/lang/String;

    goto :goto_2a

    :cond_40
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v11

    iput-object v0, v11, Lv2/D0;->m:Ljava/lang/String;

    :goto_2a
    move-object v0, v15

    :goto_2b
    const v11, 0xa001

    if-eqz v37, :cond_46

    invoke-virtual {v12, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu2/P;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lu2/P;->w()[I

    move-result-object v5

    const/4 v13, 0x0

    :goto_2c
    if-ge v13, v14, :cond_42

    aget v15, v5, v13

    if-ne v15, v9, :cond_41

    const/4 v5, 0x1

    goto :goto_2d

    :cond_41
    const/16 v19, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_2c

    :cond_42
    const/4 v5, 0x0

    :goto_2d
    if-eqz v5, :cond_45

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_44

    const v13, 0xa004

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_44

    if-nez v41, :cond_43

    goto :goto_2e

    :cond_43
    move/from16 v25, v11

    const/4 v5, 0x0

    goto :goto_2f

    :cond_44
    :goto_2e
    const-string v13, "flip sample, allowed"

    move/from16 v25, v11

    const/4 v15, 0x0

    new-array v11, v15, [Ljava/lang/Object;

    invoke-static {v3, v13, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2f

    :cond_45
    move/from16 v25, v11

    :goto_2f
    if-nez v5, :cond_47

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const/4 v15, 0x0

    iput-object v15, v0, Lv2/D0;->m:Ljava/lang/String;

    const/4 v0, 0x6

    iput v0, v12, Lu2/Q;->y:I

    const/4 v10, 0x0

    invoke-static {v10, v4, v8}, LF1/F2;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_46
    move/from16 v25, v11

    :cond_47
    sget-boolean v3, LQa/b;->i:Z

    if-nez v3, :cond_48

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    iput-object v0, v3, Lv2/D0;->o:Ljava/lang/String;

    :cond_48
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    iput-object v0, v3, Lv2/D0;->p:Ljava/lang/String;

    if-nez v41, :cond_49

    const/4 v3, 0x0

    goto :goto_30

    :cond_49
    move-object/from16 v3, v39

    :goto_30
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_31
    const/4 v2, -0x1

    goto :goto_32

    :sswitch_0
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_31

    :cond_4a
    const/4 v2, 0x2

    goto :goto_32

    :sswitch_1
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_31

    :cond_4b
    const/4 v2, 0x1

    goto :goto_32

    :sswitch_2
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_31

    :cond_4c
    const/4 v2, 0x0

    :goto_32
    packed-switch v2, :pswitch_data_0

    goto :goto_33

    :pswitch_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    iput-object v3, v2, Lv2/D0;->s:[Ljava/lang/String;

    goto :goto_33

    :pswitch_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_33

    :pswitch_2
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    iput-object v3, v2, Lv2/D0;->t:[Ljava/lang/String;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const/4 v10, 0x0

    iput-boolean v10, v2, Lv2/D0;->j:Z

    :goto_33
    const v2, 0xa01c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/16 v2, 0xbb

    if-ne v9, v2, :cond_4d

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/f;

    :goto_34
    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/f;

    goto :goto_35

    :cond_4d
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/C;

    goto :goto_34

    :goto_35
    if-eqz v2, :cond_4e

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lr2/f;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v10}, Lcom/android/camera/data/data/c;->isContain(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/16 v19, 0x1

    :goto_36
    const/4 v11, 0x1

    goto :goto_37

    :cond_4e
    const/16 v19, 0x0

    goto :goto_36

    :goto_37
    xor-int/lit8 v2, v19, 0x1

    goto :goto_38

    :cond_4f
    const v2, 0xa03c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const/16 v2, 0xaf

    if-eq v9, v2, :cond_50

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->b2()Z

    move-result v2

    if-nez v2, :cond_50

    const/4 v2, 0x1

    goto :goto_38

    :cond_50
    const/4 v2, 0x0

    :goto_38
    if-eqz v2, :cond_52

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const/4 v15, 0x0

    iput-object v15, v0, Lv2/D0;->s:[Ljava/lang/String;

    if-eqz v37, :cond_51

    const/4 v0, 0x4

    iput v0, v12, Lu2/Q;->y:I

    :goto_39
    const/4 v11, 0x1

    goto :goto_3a

    :cond_51
    iput v14, v12, Lu2/Q;->y:I

    goto :goto_39

    :goto_3a
    invoke-static {v11, v4, v8}, LF1/F2;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lh0/b;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v15, v1, v0}, Lh0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    :cond_52
    const/4 v10, 0x0

    invoke-static {v10, v4, v8}, LF1/F2;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    if-eqz v37, :cond_53

    const/4 v14, 0x2

    iput v14, v12, Lu2/Q;->y:I

    goto :goto_3b

    :cond_53
    const/4 v7, 0x3

    iput v7, v12, Lu2/Q;->y:I

    goto :goto_3b

    :cond_54
    const/4 v11, 0x1

    iput v11, v12, Lu2/Q;->y:I

    :goto_3b
    new-instance v15, Lh0/b;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v15, v0, v1}, Lh0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    :cond_55
    move/from16 v36, v7

    move-object/from16 v34, v13

    move/from16 v35, v15

    const-string v0, "illegal agent parameters"

    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v11, 0x1

    invoke-static {v11, v4, v8}, LF1/F2;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :goto_3c
    if-eqz v15, :cond_56

    const/4 v0, 0x1

    goto :goto_3d

    :cond_56
    const/4 v0, 0x0

    :goto_3d
    if-eqz p3, :cond_58

    invoke-static {}, Lu2/S;->a()Z

    move-result v1

    if-nez v1, :cond_57

    if-eqz v0, :cond_58

    :cond_57
    const/4 v11, 0x1

    :goto_3e
    move-object/from16 v1, p0

    goto :goto_3f

    :cond_58
    const/4 v11, 0x0

    goto :goto_3e

    :goto_3f
    iget v0, v1, Lu2/S;->a:I

    move/from16 v2, v36

    if-ne v0, v2, :cond_5a

    iget-boolean v0, v12, Lu2/Q;->t:Z

    move/from16 v10, v35

    if-eq v0, v10, :cond_59

    goto :goto_40

    :cond_59
    const/4 v0, 0x0

    goto :goto_41

    :cond_5a
    move/from16 v10, v35

    :goto_40
    const/4 v0, 0x1

    :goto_41
    const/16 v3, 0xa2

    if-nez v15, :cond_92

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    move-object/from16 v5, p1

    iget-object v6, v5, Lvr/m;->a:Landroid/content/Intent;

    if-nez v6, :cond_5b

    const/4 v6, -0x1

    const/4 v8, -0x1

    goto :goto_42

    :cond_5b
    const-string v7, "android.intent.extras.CAMERA_FACING"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    move/from16 v6, v20

    :goto_42
    if-eqz v6, :cond_5d

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5c

    goto :goto_43

    :cond_5c
    move v6, v8

    :cond_5d
    :goto_43
    if-eq v6, v8, :cond_5e

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v7

    invoke-virtual {v7, v6}, Lu2/Q;->b0(I)V

    :cond_5e
    move-object/from16 v7, v30

    iget-object v8, v7, Lvr/m$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_5f

    const-string v14, "com.xiaomi.camera.action.VIDEO_CAST"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5f

    invoke-virtual {v4, v3}, Lu2/Q;->D(I)I

    move-result v14

    move v13, v3

    move v9, v14

    :goto_44
    const/4 v3, 0x1

    goto/16 :goto_51

    :cond_5f
    invoke-virtual {v5}, Lvr/m;->t()Z

    move-result v14

    const-string v15, "android.media.action.STILL_IMAGE_CAMERA"

    if-eqz v14, :cond_60

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_60

    move/from16 v14, v16

    invoke-virtual {v4, v14}, Lu2/Q;->D(I)I

    move-result v15

    move v9, v15

    :goto_45
    const/4 v3, 0x1

    const/16 v13, 0xa3

    goto/16 :goto_51

    :cond_60
    invoke-virtual {v5}, Lvr/m;->t()Z

    move-result v14

    const-string v9, "android.media.action.VIDEO_CAMERA"

    if-eqz v14, :cond_61

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_61

    invoke-virtual {v4, v3}, Lu2/Q;->D(I)I

    move-result v9

    :goto_46
    move v13, v3

    goto :goto_44

    :cond_61
    const-string v14, "POLAROID"

    const/16 v13, 0xe1

    if-eqz v0, :cond_67

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_67

    if-eqz v22, :cond_62

    iget-object v9, v5, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v9}, Lvr/m;->v(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_62

    invoke-static {}, Lcom/android/camera/data/data/w;->d()Z

    move-result v9

    if-eqz v9, :cond_66

    invoke-static {}, LQ6/d0;->a()Ljava/util/Optional;

    move-result-object v9

    new-instance v14, LF1/K1;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, LF1/K1;-><init>(I)V

    invoke-virtual {v9, v14}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_66

    const/16 v13, 0xe5

    goto :goto_48

    :cond_62
    if-eqz v17, :cond_64

    iget-object v9, v5, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v9}, Lvr/m;->p(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_63

    invoke-virtual {v5}, Lvr/m;->e()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_63

    const/4 v9, 0x1

    goto :goto_47

    :cond_63
    const/4 v9, 0x0

    :goto_47
    if-eqz v9, :cond_64

    const/16 v13, 0xe4

    goto :goto_48

    :cond_64
    if-eqz v11, :cond_65

    const/16 v13, 0xa3

    goto :goto_48

    :cond_65
    invoke-virtual {v4, v2}, Lu2/Q;->E(I)I

    move-result v9

    move v13, v9

    :cond_66
    :goto_48
    invoke-virtual {v4, v13}, Lu2/Q;->D(I)I

    move-result v9

    goto/16 :goto_44

    :cond_67
    if-eqz v0, :cond_68

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    invoke-virtual {v4, v3}, Lu2/Q;->D(I)I

    move-result v9

    goto :goto_46

    :cond_68
    const-string v9, "com.android.systemui.action.SYSTEM_UI"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_69

    const/16 v9, 0xba

    invoke-virtual {v4, v9}, Lu2/Q;->D(I)I

    move-result v13

    :goto_49
    move v3, v13

    move v13, v9

    move v9, v3

    goto/16 :goto_44

    :cond_69
    const/16 v9, 0xba

    const/16 v15, 0x8

    if-ne v2, v15, :cond_6c

    const/4 v15, 0x1

    if-eq v6, v15, :cond_6a

    if-nez v6, :cond_6b

    :cond_6a
    const/16 v15, 0xa3

    goto :goto_4b

    :cond_6b
    const/16 v15, 0xa3

    invoke-virtual {v4, v15}, Lu2/Q;->D(I)I

    move-result v13

    move v9, v13

    :goto_4a
    move v13, v15

    goto/16 :goto_44

    :goto_4b
    move v9, v6

    goto :goto_4a

    :cond_6c
    const/16 v15, 0xa3

    if-eqz v0, :cond_6d

    if-eqz v23, :cond_6d

    invoke-virtual {v4, v15}, Lu2/Q;->D(I)I

    move-result v13

    move v9, v13

    goto/16 :goto_45

    :cond_6d
    if-eqz v22, :cond_6f

    iget-object v15, v5, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v15}, Lvr/m;->v(Landroid/content/Intent;)Z

    move-result v15

    if-eqz v15, :cond_6f

    invoke-static {}, Lcom/android/camera/data/data/w;->d()Z

    move-result v14

    if-eqz v14, :cond_6e

    invoke-static {}, LQ6/d0;->a()Ljava/util/Optional;

    move-result-object v14

    new-instance v15, LF1/K1;

    const/4 v9, 0x1

    invoke-direct {v15, v9}, LF1/K1;-><init>(I)V

    invoke-virtual {v14, v15}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6e

    const/16 v13, 0xe5

    :cond_6e
    invoke-virtual {v4, v13}, Lu2/Q;->D(I)I

    move-result v9

    goto/16 :goto_44

    :cond_6f
    if-eqz v17, :cond_71

    iget-object v9, v5, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v9}, Lvr/m;->p(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_70

    invoke-virtual {v5}, Lvr/m;->e()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_70

    const/4 v9, 0x1

    goto :goto_4c

    :cond_70
    const/4 v9, 0x0

    :goto_4c
    if-eqz v9, :cond_71

    const/16 v9, 0xe4

    invoke-virtual {v4, v9}, Lu2/Q;->D(I)I

    move-result v13

    move v9, v13

    const/4 v3, 0x1

    const/16 v13, 0xe4

    goto/16 :goto_51

    :cond_71
    iget-object v9, v5, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v9}, Lvr/m;->s(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_72

    invoke-virtual {v4, v3}, Lu2/Q;->D(I)I

    move-result v9

    goto/16 :goto_46

    :cond_72
    if-eqz v11, :cond_74

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lu2/Q;->G(I)I

    move-result v9

    if-gez v6, :cond_73

    const/4 v13, 0x0

    goto/16 :goto_49

    :cond_73
    invoke-virtual {v4, v9}, Lu2/Q;->D(I)I

    move-result v13

    goto/16 :goto_49

    :cond_74
    invoke-virtual {v4, v2}, Lu2/Q;->E(I)I

    move-result v9

    const/4 v15, 0x1

    if-eq v6, v15, :cond_75

    const/16 v14, 0xa6

    goto :goto_4d

    :cond_75
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v9

    invoke-virtual {v9, v2}, Lu2/Q;->E(I)I

    move-result v9

    const/16 v14, 0xa6

    if-eq v9, v14, :cond_76

    const/16 v15, 0xa7

    if-eq v9, v15, :cond_76

    const/16 v15, 0xa9

    if-eq v9, v15, :cond_77

    const/16 v15, 0xaf

    if-eq v9, v15, :cond_76

    if-eq v9, v13, :cond_76

    const/16 v15, 0xe4

    if-eq v9, v15, :cond_76

    packed-switch v9, :pswitch_data_1

    goto :goto_4d

    :pswitch_3
    sget-boolean v15, LJe/c;->k:Z

    sget-object v15, LJe/c$b;->a:LJe/c;

    invoke-virtual {v15}, LJe/c;->J1()Z

    move-result v15

    if-nez v15, :cond_78

    :cond_76
    :pswitch_4
    const/16 v9, 0xa3

    goto :goto_4d

    :cond_77
    :pswitch_5
    move v9, v3

    :cond_78
    :goto_4d
    invoke-virtual {v4, v9}, Lu2/Q;->D(I)I

    move-result v15

    const/16 v13, 0xe4

    if-ne v9, v13, :cond_79

    sget-boolean v13, LJe/c;->k:Z

    sget-object v13, LJe/c$b;->a:LJe/c;

    invoke-virtual {v13}, LJe/c;->q1()Z

    move-result v13

    if-eqz v13, :cond_7a

    sget-object v13, Lg4/h;->a:Lg4/h;

    invoke-static {}, Lg4/h;->c()Z

    move-result v13

    if-nez v13, :cond_79

    goto :goto_4e

    :cond_79
    const/16 v13, 0xe5

    goto :goto_4f

    :cond_7a
    :goto_4e
    const/4 v3, 0x1

    const/16 v17, 0xa3

    goto :goto_50

    :goto_4f
    if-ne v9, v13, :cond_7b

    invoke-static {}, LQ6/d0;->a()Ljava/util/Optional;

    move-result-object v13

    new-instance v14, LF1/K1;

    const/4 v3, 0x1

    invoke-direct {v14, v3}, LF1/K1;-><init>(I)V

    invoke-virtual {v13, v14}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v13, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_7c

    const/16 v17, 0xe1

    goto :goto_50

    :cond_7b
    const/4 v3, 0x1

    :cond_7c
    move/from16 v17, v9

    :goto_50
    move v9, v15

    move/from16 v13, v17

    :goto_51
    invoke-static {v9}, Lu2/S;->b(I)Z

    move-result v14

    if-eqz v14, :cond_7d

    const/4 v9, 0x0

    :cond_7d
    const/16 v14, 0xaa

    const/16 v15, 0xac

    if-ne v13, v14, :cond_7f

    sget-object v13, LJe/c$b;->a:LJe/c;

    invoke-virtual {v13}, LJe/c;->E2()Z

    move-result v13

    if-eqz v13, :cond_7e

    move v13, v15

    goto/16 :goto_56

    :cond_7e
    const/16 v13, 0xa2

    goto/16 :goto_56

    :cond_7f
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v14

    invoke-virtual {v14}, Lu2/Q;->L()Z

    move-result v14

    if-eqz v14, :cond_81

    if-eqz p4, :cond_80

    goto :goto_53

    :cond_80
    :goto_52
    const/16 v14, 0xa9

    goto :goto_54

    :cond_81
    :goto_53
    if-eqz v0, :cond_8a

    goto :goto_52

    :goto_54
    if-eq v13, v14, :cond_89

    if-eq v13, v15, :cond_88

    const/16 v14, 0xb3

    if-eq v13, v14, :cond_87

    const/16 v14, 0xb9

    if-eq v13, v14, :cond_86

    const/16 v14, 0xbd

    if-eq v13, v14, :cond_85

    const/16 v14, 0xdc

    const/16 v15, 0xcc

    if-eq v13, v15, :cond_84

    const/16 v15, 0xd9

    if-eq v13, v15, :cond_85

    const/16 v15, 0xdb

    if-eq v13, v15, :cond_83

    const/16 v15, 0xb6

    if-eq v13, v15, :cond_82

    const/16 v15, 0xb7

    if-eq v13, v15, :cond_84

    const/16 v15, 0xd4

    if-eq v13, v15, :cond_85

    const/16 v15, 0xd5

    if-eq v13, v15, :cond_85

    packed-switch v13, :pswitch_data_2

    goto :goto_56

    :cond_82
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v14

    const-class v15, Lr2/k;

    invoke-virtual {v14, v15}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lr2/k;

    if-eqz v14, :cond_8a

    iget-boolean v14, v14, Lr2/k;->b:Z

    if-nez v14, :cond_8a

    const/16 v13, 0xba

    goto :goto_56

    :cond_83
    :goto_55
    move v13, v14

    goto :goto_56

    :cond_84
    :pswitch_6
    sget-object v15, LJe/c$b;->a:LJe/c;

    iget-object v15, v15, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v15}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->C4()Z

    move-result v15

    if-eqz v15, :cond_8a

    goto :goto_55

    :cond_85
    :pswitch_7
    const/16 v13, 0xd3

    goto :goto_56

    :cond_86
    const/16 v13, 0xd2

    goto :goto_56

    :cond_87
    const/16 v13, 0xd1

    goto :goto_56

    :cond_88
    sget-object v14, LJe/c$b;->a:LJe/c;

    invoke-virtual {v14, v9}, LJe/c;->L1(I)Z

    goto :goto_56

    :cond_89
    sget-object v14, LJe/c$b;->a:LJe/c;

    invoke-virtual {v14}, LJe/c;->S1()Z

    :cond_8a
    :goto_56
    invoke-static {v9}, Lu2/S;->b(I)Z

    move-result v14

    if-eqz v14, :cond_8b

    const/4 v9, 0x0

    :cond_8b
    invoke-static {v13}, Lu2/S;->c(I)Z

    move-result v14

    if-eqz v14, :cond_8c

    const/16 v27, 0xa6

    goto :goto_57

    :cond_8c
    move/from16 v27, v13

    :goto_57
    invoke-static {}, LK2/e;->y()Z

    move-result v13

    if-eqz v13, :cond_8d

    invoke-static/range {v27 .. v27}, Lu2/S;->f(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lu2/Q;->D(I)I

    move-result v13

    move/from16 v42, v13

    move v13, v9

    move/from16 v9, v42

    goto :goto_58

    :cond_8d
    move/from16 v13, v27

    :goto_58
    invoke-static {}, LK2/e;->B()Z

    move-result v14

    if-eqz v14, :cond_8f

    invoke-static {v13}, Lu2/S;->e(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lu2/Q;->D(I)I

    move-result v4

    move v13, v9

    move v9, v4

    :cond_8e
    :goto_59
    const/16 v4, 0xd6

    goto :goto_5a

    :cond_8f
    invoke-static {}, LK2/e;->B()Z

    move-result v4

    if-eqz v4, :cond_90

    goto :goto_59

    :cond_90
    const/16 v4, 0xe6

    if-ne v13, v4, :cond_8e

    const/16 v4, 0xd6

    const/16 v13, 0xa3

    :goto_5a
    if-ne v13, v4, :cond_91

    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->P7()Z

    move-result v4

    if-nez v4, :cond_91

    const/16 v13, 0xad

    :cond_91
    const-string v4, "parseIntent timeOut = "

    const-string v14, ", intentChanged = "

    const-string v15, ", action = "

    invoke-static {v4, v14, v11, v0, v15}, LF1/Q2;->g(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", pendingOpenId = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", pendingOpenModule = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", intentCameraId = "

    const-string v14, ", intentType = "

    invoke-static {v4, v13, v8, v6, v14}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x0

    new-array v6, v14, [Ljava/lang/Object;

    move-object/from16 v8, v33

    invoke-static {v8, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lh0/b;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v6, v9}, Lh0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5b

    :cond_92
    move-object/from16 v5, p1

    move-object/from16 v7, v30

    move-object/from16 v8, v33

    const/4 v3, 0x1

    move-object v4, v15

    :goto_5b
    iget-object v6, v4, Lh0/b;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v9, v4, Lh0/b;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v13, v5, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v13}, Lvr/m;->v(Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_93

    if-nez v22, :cond_93

    const/4 v15, 0x0

    iput-object v15, v12, Lu2/Q;->w:Ljava/lang/String;

    const-string/jumbo v13, "setLaunchSource = null"

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v8, v13, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "com.android.systemui.camera_launch_source"

    move-object/from16 v13, v34

    invoke-virtual {v13, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_93
    if-eqz p2, :cond_94

    if-eqz v22, :cond_a2

    iget-object v5, v5, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v5}, Lvr/m;->v(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_a2

    :cond_94
    iget-object v5, v12, Lu2/Q;->m:Ljava/util/HashMap;

    invoke-virtual {v12}, Lu2/Q;->J()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v5, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_95

    iput v2, v1, Lu2/S;->a:I

    iget v1, v7, Lvr/m$b;->e:I

    iput v1, v12, Lu2/Q;->v:I

    iput-boolean v10, v12, Lu2/Q;->t:Z

    :cond_95
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v2, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v2}, Lu2/Q;->E(I)I

    move-result v2

    if-eq v9, v2, :cond_96

    invoke-virtual {v1, v9}, Lu2/Q;->c0(I)V

    sput v9, Lcom/android/camera/module/Y;->a:I

    :cond_96
    invoke-virtual {v1}, Lu2/Q;->C()I

    move-result v2

    if-eq v6, v2, :cond_97

    invoke-virtual {v1, v6}, Lu2/Q;->a0(I)V

    :cond_97
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v2, "pref_last_camera_process_id"

    const/4 v8, -0x1

    invoke-virtual {v12, v2, v8}, LWh/a;->j(Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_98

    move v1, v3

    goto :goto_5c

    :cond_98
    const/4 v1, 0x0

    :goto_5c
    if-nez v11, :cond_9a

    if-nez v0, :cond_9a

    if-eqz v1, :cond_99

    goto :goto_5d

    :cond_99
    const/4 v2, 0x0

    goto :goto_5e

    :cond_9a
    :goto_5d
    move v2, v3

    :goto_5e
    if-eqz v2, :cond_9b

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2}, Lv2/D0;->B()V

    sget-object v2, Lg2/a$a;->a:Lg2/a;

    iget-object v2, v2, Lg2/a;->a:LZ8/b;

    iget-object v2, v2, LZ8/b;->a:Ljava/lang/Object;

    check-cast v2, Lh2/a;

    iget-object v2, v2, Lh2/a;->a:Landroid/util/SparseArray;

    if-eqz v2, :cond_9b

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    :cond_9b
    if-nez v11, :cond_9d

    if-nez v0, :cond_9d

    if-eqz v1, :cond_9c

    goto :goto_5f

    :cond_9c
    const/4 v11, 0x0

    goto :goto_60

    :cond_9d
    :goto_5f
    move v11, v3

    :goto_60
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    invoke-static {v9}, Lu2/P;->z(I)I

    move-result v2

    invoke-static {}, LK2/e;->y()Z

    move-result v3

    invoke-virtual {v0, v9, v2, v6, v3}, Lu2/Q;->F(IIIZ)I

    move-result v2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    sget-object v5, Lg2/a$a;->a:Lg2/a;

    iget-object v5, v5, Lg2/a;->a:LZ8/b;

    iget-object v5, v5, LZ8/b;->a:Ljava/lang/Object;

    check-cast v5, Lh2/a;

    and-int/lit16 v6, v2, 0xff

    invoke-static {v6}, Lu2/P;->z(I)I

    move-result v6

    invoke-virtual {v5, v2, v6, v3}, Lh2/a;->a(IILv2/D0;)I

    move-result v6

    invoke-virtual {v5, v6, v2, v3}, Lh2/a;->b(IILv2/D0;)V

    if-lez v6, :cond_9e

    const-class v3, Lr2/t;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/c;

    const-class v7, Lr2/E;

    invoke-virtual {v1, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/data/data/c;

    filled-new-array {v3, v7}, [Lcom/android/camera/data/data/c;

    move-result-object v3

    invoke-virtual {v5, v6, v1, v2, v3}, Lh2/a;->c(ILr2/f1;I[Lcom/android/camera/data/data/c;)V

    :cond_9e
    const/16 v1, 0xa2

    if-ne v9, v1, :cond_9f

    invoke-virtual {v0}, Lu2/Q;->L()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/z;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/z;

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    invoke-virtual {v1}, LWh/a;->g()LWh/a;

    invoke-virtual {v0, v1}, Lr2/z;->x(LWh/a;)V

    :cond_9f
    const/16 v14, 0xa3

    if-eq v9, v14, :cond_a0

    const/16 v15, 0xa7

    if-ne v9, v15, :cond_a2

    :cond_a0
    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->b2()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v1, "pref_retain_ultra_pixel_params_key"

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a2

    if-eqz v11, :cond_a2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/c0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c0;

    const-string v1, "OFF"

    const/16 v15, 0xa7

    if-ne v9, v15, :cond_a1

    invoke-virtual {v0, v9, v1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    goto :goto_61

    :cond_a1
    const/16 v14, 0xa3

    invoke-virtual {v0, v14}, Lr2/c0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AUTO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    invoke-virtual {v0, v9, v1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_a2
    :goto_61
    return-object v4

    :sswitch_data_0
    .sparse-switch
        -0x77102c1a -> :sswitch_2
        0x5629d7f8 -> :sswitch_1
        0x7f4defc3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xab
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xce
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
