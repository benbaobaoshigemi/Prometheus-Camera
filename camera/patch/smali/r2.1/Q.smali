.class public final Lr2/Q;
.super Lcom/android/camera/data/data/c;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/data/data/n;
.implements Lcom/android/camera/data/data/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/data/data/c;",
        "Lcom/android/camera/data/data/n;",
        "Lcom/android/camera/data/data/y;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public constructor <init>(Lr2/f1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/c;-><init>(LWh/a;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lr2/Q;->a:Ljava/util/HashMap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr2/Q;->f:Z

    return-void
.end method

.method public static m(Ljava/util/ArrayList;)V
    .locals 4

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v1, "3x2"

    iput-object v1, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v2, LX6/i;->a:LX6/j;

    invoke-interface {v2, v1}, LX6/j;->S(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v2, v1}, LX6/j;->S(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v2, v1}, LX6/j;->S(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v2, v1}, LX6/j;->S(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/data/data/d;->g:I

    sget v1, LQh/e;->pref_camera_picturesize_entry_2_3:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    sget v1, LQh/e;->accessibility_picturesize_2_3_button:I

    iput v1, v0, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static n(Ljava/util/ArrayList;)V
    .locals 7

    const/4 v0, 0x1

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->R()V

    sget-boolean v1, LK2/e;->o:Z

    sget-object v2, Lr2/b;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/16 v6, 0x15

    if-ge v4, v6, :cond_1

    aget-object v5, v2, v4

    invoke-static {v5}, LJp/a;->b(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, LK2/b;->e0(F)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    move v5, v6

    goto :goto_1

    :cond_0
    add-int/2addr v4, v0

    move v5, v6

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    xor-int/2addr v1, v0

    and-int/2addr v1, v5

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->Q()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, LK2/e;->w()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    if-eqz v1, :cond_5

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    const-string v0, "9x8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    iput v3, v0, Lcom/android/camera/data/data/d;->z:I

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v1, LX6/i;->a:LX6/j;

    invoke-interface {v1, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v1, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v1, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    sget v1, LQh/b;->ic_config_8_9_top_mm:I

    iput v1, v0, Lcom/android/camera/data/data/d;->g:I

    sget v1, LQh/e;->pref_camera_picturesize_entry_8_9:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    sget v1, LQh/e;->accessibility_picturesize_8_9_button:I

    iput v1, v0, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    const-string v0, "21.35x9"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    iput v3, v0, Lcom/android/camera/data/data/d;->z:I

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v1, LX6/i;->a:LX6/j;

    invoke-interface {v1, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v1, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v1, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v1, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/data/data/d;->g:I

    sget v1, LQh/e;->pref_camera_picturesize_entry_fullscreen:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    sget v1, LQh/e;->accessibility_picturesize_fullscreen_button:I

    iput v1, v0, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    iput v3, v0, Lcom/android/camera/data/data/d;->z:I

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v1, LX6/i;->a:LX6/j;

    invoke-interface {v1, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v1, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v1, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v1, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/data/data/d;->g:I

    sget v1, LQh/e;->pref_camera_picturesize_entry_fullscreen:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    sget v1, LQh/e;->accessibility_picturesize_fullscreen_button:I

    iput v1, v0, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string v0, "7x10"

    const-string v1, "21x9"

    const-string v2, "9x8"

    const-string v3, "7x6"

    const-string v4, "7x5"

    const-string v5, "21.35x9"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_2
    const-string v7, "20x9"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, LK2/e;->x()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v4

    :pswitch_1
    invoke-static {}, LK2/b;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v2

    :pswitch_2
    const v0, 0x400e38e4

    invoke-static {v0}, LK2/b;->e0(F)Z

    move-result v0

    if-nez v0, :cond_7

    const-string p0, "4x3"

    return-object p0

    :pswitch_3
    const v0, 0x40155555

    invoke-static {v0}, LK2/b;->e0(F)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v1

    :pswitch_4
    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-nez v0, :cond_7

    return-object v5

    :pswitch_5
    invoke-static {}, LK2/e;->x()Z

    move-result v1

    if-nez v1, :cond_7

    return-object v0

    :pswitch_6
    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v3

    :cond_7
    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x54cab90e -> :sswitch_6
        0xdd34 -> :sswitch_5
        0xdd35 -> :sswitch_4
        0xe4b9 -> :sswitch_3
        0x177d7f -> :sswitch_2
        0x178140 -> :sswitch_1
        0x1ac900 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final R(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/camera/data/data/B;

    iget v0, p1, Lcom/android/camera/data/data/B;->a:I

    iget v1, p1, Lcom/android/camera/data/data/B;->b:I

    iget-object p1, p1, Lcom/android/camera/data/data/B;->c:Lj9/e;

    invoke-virtual {p0, v0, v1, p1}, Lr2/Q;->t(IILj9/e;)V

    return-void
.end method

.method public final autoFillDefaultValueIfNotFound()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getComponentValue(I)Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lr2/Q;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lr2/Q;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v0, 0xa3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lr2/Q;->r()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lr2/Q;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr2/Q;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr2/Q;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0xab

    if-ne p1, v1, :cond_4

    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/camera/data/data/r;->g()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/camera/data/data/r;->h()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    const-string p0, "4x3"

    return-object p0

    :cond_4
    iget-boolean v1, p0, Lr2/Q;->d:Z

    if-nez v1, :cond_5

    invoke-static {p1}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "16x9"

    return-object p0

    :cond_5
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lw2/a;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw2/a;

    invoke-virtual {v1, p1}, Lw2/a;->n(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/camera/data/data/E;->Q(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p0}, Lr2/Q;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/d;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-object v0

    :cond_8
    invoke-virtual {p0, p1}, Lr2/Q;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultValue(I)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->O()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "4x3"

    goto :goto_0

    :cond_0
    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x378fc28d

    const-string/jumbo v1, "\u3d47\u3d0b\u3d40"

    invoke-static {v0, v1}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lr2/Q;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    move-object v0, p0

    :cond_1
    invoke-static {v0}, Lr2/Q;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayTitleString()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    sget p0, LQh/e;->pref_camera_picturesize_title_simple_mode:I

    return p0
.end method

.method public final getItems()Ljava/util/List;
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/d;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->C()I

    move-result v1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->P()Lj9/e;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lr2/Q;->t(IILj9/e;)V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public final getKey(I)Ljava/lang/String;
    .locals 2

    const/16 p0, 0xa3

    if-eq p1, p0, :cond_2

    const/16 p0, 0xa7

    if-eq p1, p0, :cond_2

    const/16 p0, 0xa9

    const-string v0, "pref_camera_picturesize_key_"

    if-eq p1, p0, :cond_1

    const/16 p0, 0xba

    if-eq p1, p0, :cond_2

    const/16 p0, 0xe1

    if-eq p1, p0, :cond_0

    const/16 p0, 0xe5

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-static {p1, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->C()I

    move-result v1

    invoke-virtual {v0, v1}, LJe/c;->L1(I)Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "pref_camera_picturesize_key_225"

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->S1()Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :pswitch_1
    const-string p0, "pref_camera_picturesize_key"

    :goto_0
    invoke-static {}, Lcom/android/camera/data/data/j;->v0()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/android/camera/data/data/c;->getKey4ExternalScreen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0xab
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ComponentConfigRatio"

    return-object p0
.end method

.method public final h()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/data/data/c;->getCurrentMode()I

    move-result v0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lw2/a;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw2/a;

    invoke-virtual {v1, v0}, Lw2/a;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/data/data/c;->getCurrentMode()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/E;->Q(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isShowText()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final p(I)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/d;

    iget-object v3, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/d;

    iget-object v1, v1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public final q(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr2/Q;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final r()Z
    .locals 4

    iget-boolean v0, p0, Lr2/Q;->d:Z

    const/16 v1, 0xa3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, LK2/e;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/android/camera/data/data/E;->Q(I)Z

    move-result v0

    const-string v3, "1x1"

    if-eqz v0, :cond_2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lw2/a;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw2/a;

    invoke-virtual {p0, v1}, Lw2/a;->n(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lr2/Q;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v2

    :cond_3
    invoke-super {p0, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v2
.end method

.method public final s()Z
    .locals 1

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa2

    invoke-super {p0, v0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "7x6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t(IILj9/e;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    iget-object v5, v0, Lr2/Q;->a:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_0
    iput v1, v0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-static {}, LK2/b;->a0()Z

    move-result v5

    const-string v6, "16x9"

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0xa2

    const/16 v11, 0xab

    const/16 v12, 0xa3

    const-string v13, "1x1"

    const-string v14, "4x3"

    if-eqz v5, :cond_5

    iput-object v9, v0, Lr2/Q;->b:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eq v1, v10, :cond_4

    if-eq v1, v12, :cond_1

    if-eq v1, v11, :cond_3

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v14, v0, Lr2/Q;->b:Ljava/lang/String;

    :cond_2
    new-instance v1, Lcom/android/camera/data/data/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v8, v1, Lcom/android/camera/data/data/d;->c:I

    iput v8, v1, Lcom/android/camera/data/data/d;->d:I

    iput v8, v1, Lcom/android/camera/data/data/d;->e:I

    iput v8, v1, Lcom/android/camera/data/data/d;->f:I

    iput v8, v1, Lcom/android/camera/data/data/d;->h:I

    iput v8, v1, Lcom/android/camera/data/data/d;->j:I

    iput v8, v1, Lcom/android/camera/data/data/d;->k:I

    iput v7, v1, Lcom/android/camera/data/data/d;->z:I

    iput-object v13, v1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v3, LX6/i;->a:LX6/j;

    invoke-interface {v3, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v3, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v3, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v3, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/camera/data/data/d;->g:I

    sget v3, LQh/e;->pref_camera_picturesize_entry_1_1:I

    iput v3, v1, Lcom/android/camera/data/data/d;->k:I

    sget v3, LQh/e;->accessibility_picturesize_1_1_button:I

    iput v3, v1, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v1, Lcom/android/camera/data/data/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v8, v1, Lcom/android/camera/data/data/d;->c:I

    iput v8, v1, Lcom/android/camera/data/data/d;->d:I

    iput v8, v1, Lcom/android/camera/data/data/d;->e:I

    iput v8, v1, Lcom/android/camera/data/data/d;->f:I

    iput v8, v1, Lcom/android/camera/data/data/d;->h:I

    iput v8, v1, Lcom/android/camera/data/data/d;->j:I

    iput v8, v1, Lcom/android/camera/data/data/d;->k:I

    iput v7, v1, Lcom/android/camera/data/data/d;->z:I

    iput-object v14, v1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v3, LX6/i;->a:LX6/j;

    invoke-interface {v3, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v3, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v3, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v3, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/camera/data/data/d;->g:I

    sget v4, LQh/e;->pref_camera_picturesize_entry_3_4:I

    iput v4, v1, Lcom/android/camera/data/data/d;->k:I

    sget v4, LQh/e;->accessibility_picturesize_3_4_button:I

    iput v4, v1, Lcom/android/camera/data/data/d;->m:I

    invoke-static {v2, v1}, LHy/a;->b(Ljava/util/ArrayList;Lcom/android/camera/data/data/d;)Lcom/android/camera/data/data/d;

    move-result-object v1

    iput v8, v1, Lcom/android/camera/data/data/d;->c:I

    iput v8, v1, Lcom/android/camera/data/data/d;->d:I

    iput v8, v1, Lcom/android/camera/data/data/d;->e:I

    iput v8, v1, Lcom/android/camera/data/data/d;->f:I

    iput v8, v1, Lcom/android/camera/data/data/d;->h:I

    iput v8, v1, Lcom/android/camera/data/data/d;->j:I

    iput v8, v1, Lcom/android/camera/data/data/d;->k:I

    iput v7, v1, Lcom/android/camera/data/data/d;->z:I

    iput-object v6, v1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v3, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v3, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v3, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v3, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/camera/data/data/d;->g:I

    sget v3, LQh/e;->pref_camera_picturesize_entry_9_16:I

    iput v3, v1, Lcom/android/camera/data/data/d;->k:I

    sget v3, LQh/e;->accessibility_picturesize_9_16_button:I

    iput v3, v1, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lr2/Q;->n(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lr2/Q;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/camera/data/data/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v8, v1, Lcom/android/camera/data/data/d;->c:I

    iput v8, v1, Lcom/android/camera/data/data/d;->d:I

    iput v8, v1, Lcom/android/camera/data/data/d;->e:I

    iput v8, v1, Lcom/android/camera/data/data/d;->f:I

    iput v8, v1, Lcom/android/camera/data/data/d;->h:I

    iput v8, v1, Lcom/android/camera/data/data/d;->j:I

    iput v8, v1, Lcom/android/camera/data/data/d;->k:I

    iput v7, v1, Lcom/android/camera/data/data/d;->z:I

    iput-object v6, v1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v3, LX6/i;->a:LX6/j;

    invoke-interface {v3, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v3, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v3, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v3, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/camera/data/data/d;->g:I

    sget v3, LQh/e;->pref_camera_picturesize_entry_9_16:I

    iput v3, v1, Lcom/android/camera/data/data/d;->k:I

    sget v3, LQh/e;->accessibility_picturesize_9_16_button:I

    iput v3, v1, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lr2/Q;->n(Ljava/util/ArrayList;)V

    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    return-void

    :cond_5
    invoke-static {}, LK2/b;->b0()Z

    move-result v5

    const/16 v15, 0xe0

    if-eqz v5, :cond_c

    iput-object v9, v0, Lr2/Q;->b:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "7x6"

    if-eq v1, v10, :cond_b

    if-eq v1, v12, :cond_9

    if-eq v1, v11, :cond_a

    const/16 v5, 0xac

    if-eq v1, v5, :cond_8

    if-eq v1, v15, :cond_7

    const/16 v2, 0xe4

    if-eq v1, v2, :cond_6

    const/16 v2, 0xe6

    if-eq v1, v2, :cond_6

    goto/16 :goto_1

    :cond_6
    iput-object v14, v0, Lr2/Q;->b:Ljava/lang/String;

    new-instance v2, Lcom/android/camera/data/data/d;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput v8, v2, Lcom/android/camera/data/data/d;->c:I

    iput v8, v2, Lcom/android/camera/data/data/d;->d:I

    iput v8, v2, Lcom/android/camera/data/data/d;->e:I

    iput v8, v2, Lcom/android/camera/data/data/d;->f:I

    iput v8, v2, Lcom/android/camera/data/data/d;->h:I

    iput v8, v2, Lcom/android/camera/data/data/d;->j:I

    iput v8, v2, Lcom/android/camera/data/data/d;->k:I

    iput v7, v2, Lcom/android/camera/data/data/d;->z:I

    iput-object v14, v2, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v5, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v5, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v5, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/camera/data/data/d;->g:I

    sget v5, LQh/e;->pref_camera_picturesize_entry_3_4:I

    iput v5, v2, Lcom/android/camera/data/data/d;->k:I

    sget v5, LQh/e;->accessibility_picturesize_3_4_button:I

    iput v5, v2, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    iput-object v4, v0, Lr2/Q;->b:Ljava/lang/String;

    invoke-static {v3}, Lr2/Q;->n(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_8
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0, v2}, LJe/c;->L1(I)Z

    return-void

    :cond_9
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v2

    if-eqz v2, :cond_a

    iput-object v14, v0, Lr2/Q;->b:Ljava/lang/String;

    :cond_a
    new-instance v2, Lcom/android/camera/data/data/d;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput v8, v2, Lcom/android/camera/data/data/d;->c:I

    iput v8, v2, Lcom/android/camera/data/data/d;->d:I

    iput v8, v2, Lcom/android/camera/data/data/d;->e:I

    iput v8, v2, Lcom/android/camera/data/data/d;->f:I

    iput v8, v2, Lcom/android/camera/data/data/d;->h:I

    iput v8, v2, Lcom/android/camera/data/data/d;->j:I

    iput v8, v2, Lcom/android/camera/data/data/d;->k:I

    iput v7, v2, Lcom/android/camera/data/data/d;->z:I

    iput-object v14, v2, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v5, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v5, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v5, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/android/camera/data/data/d;->g:I

    sget v9, LQh/e;->pref_camera_picturesize_entry_3_4:I

    iput v9, v2, Lcom/android/camera/data/data/d;->k:I

    sget v9, LQh/e;->accessibility_picturesize_3_4_button:I

    iput v9, v2, Lcom/android/camera/data/data/d;->m:I

    invoke-static {v3, v2}, LHy/a;->b(Ljava/util/ArrayList;Lcom/android/camera/data/data/d;)Lcom/android/camera/data/data/d;

    move-result-object v2

    iput v8, v2, Lcom/android/camera/data/data/d;->c:I

    iput v8, v2, Lcom/android/camera/data/data/d;->d:I

    iput v8, v2, Lcom/android/camera/data/data/d;->e:I

    iput v8, v2, Lcom/android/camera/data/data/d;->f:I

    iput v8, v2, Lcom/android/camera/data/data/d;->h:I

    iput v8, v2, Lcom/android/camera/data/data/d;->j:I

    iput v8, v2, Lcom/android/camera/data/data/d;->k:I

    iput v7, v2, Lcom/android/camera/data/data/d;->z:I

    iput-object v6, v2, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v5, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v5, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v5, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v5, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/camera/data/data/d;->g:I

    sget v5, LQh/e;->pref_camera_picturesize_entry_9_16:I

    iput v5, v2, Lcom/android/camera/data/data/d;->k:I

    sget v5, LQh/e;->accessibility_picturesize_9_16_button:I

    iput v5, v2, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lr2/Q;->n(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_b
    new-instance v2, Lcom/android/camera/data/data/d;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput v8, v2, Lcom/android/camera/data/data/d;->c:I

    iput v8, v2, Lcom/android/camera/data/data/d;->d:I

    iput v8, v2, Lcom/android/camera/data/data/d;->e:I

    iput v8, v2, Lcom/android/camera/data/data/d;->f:I

    iput v8, v2, Lcom/android/camera/data/data/d;->h:I

    iput v8, v2, Lcom/android/camera/data/data/d;->j:I

    iput v8, v2, Lcom/android/camera/data/data/d;->k:I

    iput v7, v2, Lcom/android/camera/data/data/d;->z:I

    iput-object v6, v2, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v5, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v5, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v5, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/camera/data/data/d;->g:I

    sget v5, LQh/e;->pref_camera_picturesize_entry_9_16:I

    iput v5, v2, Lcom/android/camera/data/data/d;->k:I

    sget v5, LQh/e;->accessibility_picturesize_9_16_button:I

    iput v5, v2, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lr2/Q;->n(Ljava/util/ArrayList;)V

    :goto_1
    iget-object v2, v0, Lr2/Q;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    return-void

    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lr2/Q;->b:Ljava/lang/String;

    if-eq v1, v12, :cond_1f

    if-eq v1, v11, :cond_1c

    const/16 v9, 0xad

    if-eq v1, v9, :cond_1f

    const/16 v9, 0xb6

    if-eq v1, v9, :cond_1b

    const/16 v9, 0xcb

    if-eq v1, v9, :cond_19

    const/16 v9, 0xcd

    if-eq v1, v9, :cond_1b

    const/16 v9, 0xd5

    if-eq v1, v9, :cond_18

    const/16 v9, 0xd8

    if-eq v1, v9, :cond_18

    const/16 v9, 0x100

    const-string v10, "3x2"

    if-eq v1, v9, :cond_17

    const/16 v9, 0xaf

    if-eq v1, v9, :cond_16

    const/16 v9, 0xb0

    if-eq v1, v9, :cond_1b

    if-eq v1, v15, :cond_15

    const/16 v9, 0xe1

    if-eq v1, v9, :cond_11

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_5

    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/data/j;->L0()Z

    move-result v9

    if-eqz v9, :cond_d

    move-object v9, v6

    goto :goto_2

    :cond_d
    move-object v9, v14

    :goto_2
    iput-object v9, v0, Lr2/Q;->b:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_1
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v9

    if-eqz v9, :cond_e

    iput-object v14, v0, Lr2/Q;->b:Ljava/lang/String;

    :cond_e
    invoke-static {v3}, Lj9/f;->A4(Lj9/e;)Z

    move-result v9

    if-eqz v9, :cond_f

    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v13, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v10, LX6/i;->a:LX6/j;

    invoke-interface {v10, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v15

    iput v15, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v15

    iput v15, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v15

    iput v15, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->g:I

    sget v10, LQh/e;->pref_camera_picturesize_entry_1_1:I

    iput v10, v9, Lcom/android/camera/data/data/d;->k:I

    sget v10, LQh/e;->accessibility_picturesize_1_1_button:I

    iput v10, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v14, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v10, LX6/i;->a:LX6/j;

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/android/camera/data/data/d;->g:I

    sget v13, LQh/e;->pref_camera_picturesize_entry_3_4:I

    iput v13, v9, Lcom/android/camera/data/data/d;->k:I

    sget v13, LQh/e;->accessibility_picturesize_3_4_button:I

    iput v13, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v9, LJe/c;->k:Z

    sget-object v9, LJe/c$b;->a:LJe/c;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result v9

    if-eqz v9, :cond_10

    const/16 v15, 0xe1

    if-ne v1, v15, :cond_10

    invoke-static {v5}, Lr2/Q;->m(Ljava/util/ArrayList;)V

    :cond_10
    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v6, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->g:I

    sget v10, LQh/e;->pref_camera_picturesize_entry_9_16:I

    iput v10, v9, Lcom/android/camera/data/data/d;->k:I

    sget v10, LQh/e;->accessibility_picturesize_9_16_button:I

    iput v10, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lr2/Q;->n(Ljava/util/ArrayList;)V

    goto/16 :goto_5

    :cond_11
    :pswitch_2
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lj9/e;->V()I

    move-result v15

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_14

    new-instance v15, Lcom/android/camera/data/data/d;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput v8, v15, Lcom/android/camera/data/data/d;->c:I

    iput v8, v15, Lcom/android/camera/data/data/d;->d:I

    iput v8, v15, Lcom/android/camera/data/data/d;->e:I

    iput v8, v15, Lcom/android/camera/data/data/d;->f:I

    iput v8, v15, Lcom/android/camera/data/data/d;->h:I

    iput v8, v15, Lcom/android/camera/data/data/d;->j:I

    iput v8, v15, Lcom/android/camera/data/data/d;->k:I

    iput v7, v15, Lcom/android/camera/data/data/d;->z:I

    iput-object v13, v15, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    move/from16 v16, v9

    sget-object v9, LX6/i;->a:LX6/j;

    invoke-interface {v9, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v15, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v9, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v15, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v9, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v15, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v9, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v15, Lcom/android/camera/data/data/d;->g:I

    sget v11, LQh/e;->pref_camera_picturesize_entry_1_1:I

    iput v11, v15, Lcom/android/camera/data/data/d;->k:I

    sget v11, LQh/e;->accessibility_picturesize_1_1_button:I

    iput v11, v15, Lcom/android/camera/data/data/d;->m:I

    invoke-static {v5, v15}, LHy/a;->b(Ljava/util/ArrayList;Lcom/android/camera/data/data/d;)Lcom/android/camera/data/data/d;

    move-result-object v11

    iput v8, v11, Lcom/android/camera/data/data/d;->c:I

    iput v8, v11, Lcom/android/camera/data/data/d;->d:I

    iput v8, v11, Lcom/android/camera/data/data/d;->e:I

    iput v8, v11, Lcom/android/camera/data/data/d;->f:I

    iput v8, v11, Lcom/android/camera/data/data/d;->h:I

    iput v8, v11, Lcom/android/camera/data/data/d;->j:I

    iput v8, v11, Lcom/android/camera/data/data/d;->k:I

    iput v7, v11, Lcom/android/camera/data/data/d;->z:I

    iput-object v14, v11, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v9, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v9, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v9, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v9, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/android/camera/data/data/d;->g:I

    sget v13, LQh/e;->pref_camera_picturesize_entry_3_4:I

    iput v13, v11, Lcom/android/camera/data/data/d;->k:I

    sget v13, LQh/e;->accessibility_picturesize_3_4_button:I

    iput v13, v11, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v15, 0xe1

    if-ne v1, v15, :cond_12

    invoke-static {v5}, Lr2/Q;->m(Ljava/util/ArrayList;)V

    :cond_12
    invoke-virtual {v3}, Lj9/e;->V()I

    move-result v11

    and-int/lit8 v11, v11, 0x40

    if-eqz v11, :cond_13

    goto :goto_3

    :cond_13
    new-instance v11, Lcom/android/camera/data/data/d;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput v8, v11, Lcom/android/camera/data/data/d;->c:I

    iput v8, v11, Lcom/android/camera/data/data/d;->d:I

    iput v8, v11, Lcom/android/camera/data/data/d;->e:I

    iput v8, v11, Lcom/android/camera/data/data/d;->f:I

    iput v8, v11, Lcom/android/camera/data/data/d;->h:I

    iput v8, v11, Lcom/android/camera/data/data/d;->j:I

    iput v8, v11, Lcom/android/camera/data/data/d;->k:I

    iput v7, v11, Lcom/android/camera/data/data/d;->z:I

    iput-object v6, v11, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v9, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v9, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v9, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v9, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v9

    iput v9, v11, Lcom/android/camera/data/data/d;->g:I

    sget v9, LQh/e;->pref_camera_picturesize_entry_9_16:I

    iput v9, v11, Lcom/android/camera/data/data/d;->k:I

    sget v9, LQh/e;->accessibility_picturesize_9_16_button:I

    iput v9, v11, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lr2/Q;->n(Ljava/util/ArrayList;)V

    :goto_3
    iget-object v9, v0, Lr2/Q;->a:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lr2/Q;->a:Ljava/util/HashMap;

    const/16 v11, 0xe5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_14
    iput-object v14, v0, Lr2/Q;->b:Ljava/lang/String;

    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v14, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v10, LX6/i;->a:LX6/j;

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->g:I

    sget v10, LQh/e;->pref_camera_picturesize_entry_3_4:I

    iput v10, v9, Lcom/android/camera/data/data/d;->k:I

    sget v10, LQh/e;->accessibility_picturesize_3_4_button:I

    iput v10, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_15
    :pswitch_3
    iput-object v6, v0, Lr2/Q;->b:Ljava/lang/String;

    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v6, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v10, LX6/i;->a:LX6/j;

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->g:I

    sget v10, LQh/e;->pref_camera_picturesize_entry_9_16:I

    iput v10, v9, Lcom/android/camera/data/data/d;->k:I

    sget v10, LQh/e;->accessibility_picturesize_9_16_button:I

    iput v10, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_16
    iput-object v14, v0, Lr2/Q;->b:Ljava/lang/String;

    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v14, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v10, LX6/i;->a:LX6/j;

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->g:I

    sget v10, LQh/e;->pref_camera_picturesize_entry_3_4:I

    iput v10, v9, Lcom/android/camera/data/data/d;->k:I

    sget v10, LQh/e;->accessibility_picturesize_3_4_button:I

    iput v10, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_17
    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v10, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v11, LX6/i;->a:LX6/j;

    invoke-interface {v11, v10}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v11, v10}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v11, v10}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v11, v10}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->g:I

    sget v10, LQh/e;->pref_camera_picturesize_entry_2_3:I

    iput v10, v9, Lcom/android/camera/data/data/d;->k:I

    sget v10, LQh/e;->accessibility_picturesize_2_3_button:I

    iput v10, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-static {v5, v9}, LHy/a;->b(Ljava/util/ArrayList;Lcom/android/camera/data/data/d;)Lcom/android/camera/data/data/d;

    move-result-object v9

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v14, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v11, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v11, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v11, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v11, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->g:I

    sget v10, LQh/e;->pref_camera_picturesize_entry_3_4:I

    iput v10, v9, Lcom/android/camera/data/data/d;->k:I

    sget v10, LQh/e;->accessibility_picturesize_3_4_button:I

    iput v10, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-static {v5, v9}, LHy/a;->b(Ljava/util/ArrayList;Lcom/android/camera/data/data/d;)Lcom/android/camera/data/data/d;

    move-result-object v9

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v6, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v11, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v11, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v11, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v11, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->g:I

    sget v10, LQh/e;->pref_camera_picturesize_entry_9_16:I

    iput v10, v9, Lcom/android/camera/data/data/d;->k:I

    sget v10, LQh/e;->accessibility_picturesize_9_16_button:I

    iput v10, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_18
    :pswitch_4
    iput-object v14, v0, Lr2/Q;->b:Ljava/lang/String;

    goto/16 :goto_4

    :cond_19
    :pswitch_5
    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v14, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v10, LX6/i;->a:LX6/j;

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->g:I

    sget v11, LQh/e;->pref_camera_picturesize_entry_3_4:I

    iput v11, v9, Lcom/android/camera/data/data/d;->k:I

    sget v11, LQh/e;->accessibility_picturesize_3_4_button:I

    iput v11, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, LO6/a;->a()Ljava/util/Optional;

    move-result-object v9

    new-instance v11, LV4/n;

    invoke-direct {v11, v4}, LV4/n;-><init>(I)V

    invoke-virtual {v9, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1a

    goto/16 :goto_5

    :cond_1a
    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v6, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->g:I

    sget v10, LQh/e;->pref_camera_picturesize_entry_9_16:I

    iput v10, v9, Lcom/android/camera/data/data/d;->k:I

    sget v10, LQh/e;->accessibility_picturesize_9_16_button:I

    iput v10, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lr2/Q;->n(Ljava/util/ArrayList;)V

    goto/16 :goto_5

    :cond_1b
    :pswitch_6
    iput-object v14, v0, Lr2/Q;->b:Ljava/lang/String;

    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v14, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v10, LX6/i;->a:LX6/j;

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->g:I

    sget v10, LQh/e;->pref_camera_picturesize_entry_3_4:I

    iput v10, v9, Lcom/android/camera/data/data/d;->k:I

    sget v10, LQh/e;->accessibility_picturesize_3_4_button:I

    iput v10, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_1c
    invoke-static {v3}, Lj9/f;->u3(Lj9/e;)Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-static {}, LK2/b;->b0()Z

    move-result v9

    if-nez v9, :cond_1d

    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v13, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v10, LX6/i;->a:LX6/j;

    invoke-interface {v10, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->g:I

    sget v10, LQh/e;->pref_camera_picturesize_entry_1_1:I

    iput v10, v9, Lcom/android/camera/data/data/d;->k:I

    sget v10, LQh/e;->accessibility_picturesize_1_1_button:I

    iput v10, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v14, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v10, LX6/i;->a:LX6/j;

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->g:I

    sget v11, LQh/e;->pref_camera_picturesize_entry_3_4:I

    iput v11, v9, Lcom/android/camera/data/data/d;->k:I

    sget v11, LQh/e;->accessibility_picturesize_3_4_button:I

    iput v11, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v9, LJe/c;->k:Z

    sget-object v9, LJe/c$b;->a:LJe/c;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result v9

    if-eqz v9, :cond_1e

    const/16 v15, 0xe1

    if-ne v1, v15, :cond_1e

    invoke-static {v5}, Lr2/Q;->m(Ljava/util/ArrayList;)V

    :cond_1e
    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v6, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->g:I

    sget v10, LQh/e;->pref_camera_picturesize_entry_9_16:I

    iput v10, v9, Lcom/android/camera/data/data/d;->k:I

    sget v10, LQh/e;->accessibility_picturesize_9_16_button:I

    iput v10, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lr2/Q;->n(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result v9

    if-eqz v9, :cond_26

    invoke-static {}, Lcom/android/camera/data/data/r;->g()Z

    move-result v9

    if-nez v9, :cond_26

    invoke-static {}, Lcom/android/camera/data/data/r;->h()Z

    move-result v9

    if-nez v9, :cond_26

    iput-object v14, v0, Lr2/Q;->b:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1f
    :goto_4
    :pswitch_7
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v9

    if-nez v9, :cond_20

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v9

    const-class v10, Lv2/a;

    invoke-virtual {v9, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv2/a;

    invoke-virtual {v9}, Lv2/a;->m()Z

    move-result v9

    if-eqz v9, :cond_21

    :cond_20
    iput-object v14, v0, Lr2/Q;->b:Ljava/lang/String;

    :cond_21
    if-ne v1, v12, :cond_22

    invoke-virtual {v0}, Lr2/Q;->r()Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-static {v3}, Lj9/f;->A4(Lj9/e;)Z

    move-result v9

    if-nez v9, :cond_22

    iput-object v14, v0, Lr2/Q;->b:Ljava/lang/String;

    :cond_22
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v9

    invoke-virtual {v9}, Lu2/Q;->R()Z

    move-result v9

    if-eqz v9, :cond_23

    iput-object v14, v0, Lr2/Q;->b:Ljava/lang/String;

    :cond_23
    if-ne v1, v12, :cond_24

    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v13, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v10, LX6/i;->a:LX6/j;

    invoke-interface {v10, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v13}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->g:I

    sget v10, LQh/e;->pref_camera_picturesize_entry_1_1:I

    iput v10, v9, Lcom/android/camera/data/data/d;->k:I

    sget v10, LQh/e;->accessibility_picturesize_1_1_button:I

    iput v10, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v14, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v10, LX6/i;->a:LX6/j;

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v14}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->g:I

    sget v11, LQh/e;->pref_camera_picturesize_entry_3_4:I

    iput v11, v9, Lcom/android/camera/data/data/d;->k:I

    sget v11, LQh/e;->accessibility_picturesize_3_4_button:I

    iput v11, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v9, LJe/c;->k:Z

    sget-object v9, LJe/c$b;->a:LJe/c;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result v9

    if-eqz v9, :cond_25

    const/16 v15, 0xe1

    if-ne v1, v15, :cond_25

    invoke-static {v5}, Lr2/Q;->m(Ljava/util/ArrayList;)V

    :cond_25
    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v6, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v10, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/camera/data/data/d;->g:I

    sget v10, LQh/e;->pref_camera_picturesize_entry_9_16:I

    iput v10, v9, Lcom/android/camera/data/data/d;->k:I

    sget v10, LQh/e;->accessibility_picturesize_9_16_button:I

    iput v10, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lr2/Q;->n(Ljava/util/ArrayList;)V

    :cond_26
    :goto_5
    iget-object v9, v0, Lcom/android/camera/data/data/c;->mParentDataItem:LWh/a;

    invoke-virtual/range {p0 .. p1}, Lr2/Q;->getKey(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v14}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2.39x1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v11, 0xa8

    if-eqz v9, :cond_2c

    const/16 v9, 0xab

    if-ne v1, v9, :cond_27

    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-static {}, Lcom/android/camera/data/data/r;->g()Z

    move-result v9

    if-nez v9, :cond_27

    invoke-static {}, Lcom/android/camera/data/data/r;->h()Z

    move-result v9

    if-eqz v9, :cond_28

    :cond_27
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v9

    if-eqz v9, :cond_29

    :cond_28
    iput-object v14, v0, Lr2/Q;->b:Ljava/lang/String;

    goto :goto_6

    :cond_29
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v9

    invoke-virtual {v9, v2}, Lu6/f;->O(I)Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->t0(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v9, 0xab

    if-eq v1, v9, :cond_2a

    if-eq v1, v12, :cond_2a

    if-eq v1, v11, :cond_2a

    const/16 v2, 0xa2

    if-ne v1, v2, :cond_2c

    :cond_2a
    iput-object v10, v0, Lr2/Q;->b:Ljava/lang/String;

    goto :goto_6

    :cond_2b
    iput-object v6, v0, Lr2/Q;->b:Ljava/lang/String;

    :cond_2c
    :goto_6
    iput-boolean v7, v0, Lr2/Q;->d:Z

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->S()Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v2, "2.39x1_new"

    if-eq v1, v11, :cond_38

    const/16 v9, 0xa9

    const/16 v11, 0xb4

    const/16 v12, 0xe3

    if-eq v1, v9, :cond_2d

    if-eq v1, v11, :cond_2d

    const/16 v9, 0xd6

    if-eq v1, v9, :cond_2d

    if-eq v1, v12, :cond_2d

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    goto/16 :goto_11

    :pswitch_8
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->C()I

    move-result v2

    invoke-virtual {v1, v2}, LJe/c;->L1(I)Z

    goto/16 :goto_11

    :cond_2d
    :pswitch_9
    iget-object v9, v0, Lr2/Q;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v4, v0, Lr2/Q;->d:Z

    new-instance v13, Lcom/android/camera/data/data/d;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput v8, v13, Lcom/android/camera/data/data/d;->c:I

    iput v8, v13, Lcom/android/camera/data/data/d;->d:I

    iput v8, v13, Lcom/android/camera/data/data/d;->e:I

    iput v8, v13, Lcom/android/camera/data/data/d;->f:I

    iput v8, v13, Lcom/android/camera/data/data/d;->h:I

    iput v8, v13, Lcom/android/camera/data/data/d;->j:I

    iput v8, v13, Lcom/android/camera/data/data/d;->k:I

    iput v7, v13, Lcom/android/camera/data/data/d;->z:I

    iput-object v2, v13, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v14, LX6/i;->a:LX6/j;

    invoke-interface {v14, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v15

    iput v15, v13, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v14, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v15

    iput v15, v13, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v14, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v15

    iput v15, v13, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v14, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v15

    iput v15, v13, Lcom/android/camera/data/data/d;->g:I

    sget v15, LQh/e;->config_name_ratio:I

    iput v15, v13, Lcom/android/camera/data/data/d;->k:I

    sget v15, LQh/e;->accessibility_picturesize_real_cinematic_button:I

    iput v15, v13, Lcom/android/camera/data/data/d;->m:I

    if-eq v1, v12, :cond_2e

    sget-boolean v9, LJe/c;->k:Z

    sget-object v9, LJe/c$b;->a:LJe/c;

    iget-object v9, v9, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :cond_2e
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lj9/f;->Y2(Lj9/e;)Z

    move-result v13

    if-eqz v13, :cond_2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    :cond_2f
    :goto_7
    new-instance v9, Lcom/android/camera/data/data/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/camera/data/data/d;->c:I

    iput v8, v9, Lcom/android/camera/data/data/d;->d:I

    iput v8, v9, Lcom/android/camera/data/data/d;->e:I

    iput v8, v9, Lcom/android/camera/data/data/d;->f:I

    iput v8, v9, Lcom/android/camera/data/data/d;->h:I

    iput v8, v9, Lcom/android/camera/data/data/d;->j:I

    iput v8, v9, Lcom/android/camera/data/data/d;->k:I

    iput v7, v9, Lcom/android/camera/data/data/d;->z:I

    iput-object v6, v9, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v14, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v14, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v14, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v14, v6}, LX6/j;->S(Ljava/lang/String;)I

    move-result v6

    iput v6, v9, Lcom/android/camera/data/data/d;->g:I

    sget v6, LQh/e;->pref_camera_picturesize_entry_9_16:I

    iput v6, v9, Lcom/android/camera/data/data/d;->k:I

    sget v6, LQh/e;->accessibility_picturesize_9_16_button:I

    iput v6, v9, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v11, :cond_33

    if-eqz v3, :cond_33

    iget-object v6, v3, Lj9/e;->W1:Ljava/lang/Boolean;

    if-nez v6, :cond_32

    sget-object v6, Lga/w0;->F0:Lga/D0;

    invoke-virtual {v6}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_30

    const v9, 0xdead

    iget-object v11, v3, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v11, v6, v9}, Lga/E0;->i(Landroid/hardware/camera2/CameraCharacteristics;Lga/D0;I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_8

    :cond_30
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_31

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_31

    move v6, v4

    goto :goto_9

    :cond_31
    move v6, v7

    :goto_9
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v3, Lj9/e;->W1:Ljava/lang/Boolean;

    :cond_32
    iget-object v6, v3, Lj9/e;->W1:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_33

    new-instance v6, Lcom/android/camera/data/data/d;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput v8, v6, Lcom/android/camera/data/data/d;->c:I

    iput v8, v6, Lcom/android/camera/data/data/d;->d:I

    iput v8, v6, Lcom/android/camera/data/data/d;->e:I

    iput v8, v6, Lcom/android/camera/data/data/d;->f:I

    iput v8, v6, Lcom/android/camera/data/data/d;->h:I

    iput v8, v6, Lcom/android/camera/data/data/d;->j:I

    iput v8, v6, Lcom/android/camera/data/data/d;->k:I

    iput v7, v6, Lcom/android/camera/data/data/d;->z:I

    const-string v9, "open_gate"

    iput-object v9, v6, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v14, v9}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v6, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v14, v9}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v6, Lcom/android/camera/data/data/d;->e:I

    invoke-interface {v14, v9}, LX6/j;->S(Ljava/lang/String;)I

    move-result v11

    iput v11, v6, Lcom/android/camera/data/data/d;->f:I

    invoke-interface {v14, v9}, LX6/j;->S(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/android/camera/data/data/d;->g:I

    sget v9, LQh/e;->pref_camera_picturesize_entry_opengate:I

    iput v9, v6, Lcom/android/camera/data/data/d;->k:I

    sget v9, LQh/e;->accessibility_picturesize_opengate_button:I

    iput v9, v6, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    if-ne v1, v12, :cond_34

    invoke-static {v3}, Lj9/f;->u2(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_a

    :cond_34
    move v4, v7

    :goto_a
    invoke-static {v3}, Lj9/f;->C4(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_3c

    if-nez v4, :cond_3c

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lj9/f;->t0(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_b

    :cond_35
    move-object v2, v10

    :goto_b
    invoke-interface {v14, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v8, v3, Lcom/android/camera/data/data/d;->d:I

    iput v8, v3, Lcom/android/camera/data/data/d;->h:I

    iput v8, v3, Lcom/android/camera/data/data/d;->j:I

    iput v8, v3, Lcom/android/camera/data/data/d;->k:I

    iput v7, v3, Lcom/android/camera/data/data/d;->z:I

    iput-object v10, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iput v2, v3, Lcom/android/camera/data/data/d;->c:I

    iput v2, v3, Lcom/android/camera/data/data/d;->e:I

    iput v2, v3, Lcom/android/camera/data/data/d;->f:I

    iput v2, v3, Lcom/android/camera/data/data/d;->g:I

    if-eqz v1, :cond_36

    sget v2, LQh/e;->pref_camera_picturesize_entry_real_cinematic:I

    goto :goto_c

    :cond_36
    sget v2, LQh/e;->pref_camera_picturesize_entry_cinematic:I

    :goto_c
    iput v2, v3, Lcom/android/camera/data/data/d;->k:I

    if-eqz v1, :cond_37

    goto :goto_d

    :cond_37
    sget v15, LQh/e;->accessibility_picturesize_cinematic_button:I

    :goto_d
    iput v15, v3, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_38
    :pswitch_a
    iput-boolean v4, v0, Lr2/Q;->d:Z

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lj9/f;->t0(Lj9/e;)Z

    move-result v1

    sget-object v3, LX6/i;->a:LX6/j;

    if-eqz v1, :cond_39

    goto :goto_e

    :cond_39
    move-object v2, v10

    :goto_e
    invoke-interface {v3, v2}, LX6/j;->S(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v8, v3, Lcom/android/camera/data/data/d;->d:I

    iput v8, v3, Lcom/android/camera/data/data/d;->h:I

    iput v8, v3, Lcom/android/camera/data/data/d;->j:I

    iput v8, v3, Lcom/android/camera/data/data/d;->k:I

    iput v7, v3, Lcom/android/camera/data/data/d;->z:I

    iput-object v10, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iput v2, v3, Lcom/android/camera/data/data/d;->c:I

    iput v2, v3, Lcom/android/camera/data/data/d;->e:I

    iput v2, v3, Lcom/android/camera/data/data/d;->f:I

    iput v2, v3, Lcom/android/camera/data/data/d;->g:I

    if-eqz v1, :cond_3a

    sget v2, LQh/e;->pref_camera_picturesize_entry_real_cinematic:I

    goto :goto_f

    :cond_3a
    sget v2, LQh/e;->pref_camera_picturesize_entry_cinematic:I

    :goto_f
    iput v2, v3, Lcom/android/camera/data/data/d;->k:I

    if-eqz v1, :cond_3b

    sget v1, LQh/e;->accessibility_picturesize_real_cinematic_button:I

    goto :goto_10

    :cond_3b
    sget v1, LQh/e;->accessibility_picturesize_cinematic_button:I

    :goto_10
    iput v1, v3, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    :goto_11
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa6
        :pswitch_3
        :pswitch_1
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb8
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe4
        :pswitch_6
        :pswitch_2
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa2
        :pswitch_9
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xab
        :pswitch_a
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
