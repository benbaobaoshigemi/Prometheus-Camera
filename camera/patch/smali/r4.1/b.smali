.class public final Lr4/b;
.super Ly3/c;
.source "SourceFile"


# instance fields
.field public final i:LCs/G;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/c;-><init>(Landroid/content/Context;)V

    new-instance p1, LCs/G;

    invoke-direct {p1, p0}, LCs/G;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lr4/b;->i:LCs/G;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 7

    const/4 p0, 0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->X()Z

    move-result v2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3}, Lu2/Q;->S()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v5, Lr2/i;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/i;

    iget-boolean v5, v4, Lr2/i;->b:Z

    if-eqz v5, :cond_0

    new-instance v5, La5/i$a;

    invoke-direct {v5}, La5/i$a;-><init>()V

    const/16 v6, 0xd7

    iput v6, v5, La5/i$a;->a:I

    new-instance v6, LEs/CclockTop;

    invoke-direct {v6, v4}, LEs/CclockTop;-><init>(Lr2/i;)V

    iput-object v6, v5, La5/i$a;->c:La5/i$c;

    new-instance v6, LEs/S;

    const/4 p0, 0x2

    invoke-direct {v6, v4, p0}, LEs/S;-><init>(Ljava/lang/Object;I)V

    iput-object v6, v5, La5/i$a;->d:La5/i$b;

    new-instance v6, LS9/h;

    const/4 p0, 0x1

    invoke-direct {v6, v4, p0}, LS9/h;-><init>(Ljava/lang/Object;I)V

    iput-object v6, v5, La5/i$a;->e:Landroid/view/View$OnClickListener;

    invoke-static {v5, v1}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v5, Lr2/w;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/w;

    invoke-virtual {v4}, Lr2/w;->U()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, La5/i$a;

    invoke-direct {v4}, La5/i$a;-><init>()V

    const/16 v5, 0xc1

    iput v5, v4, La5/i$a;->a:I

    const v5, 0x800003

    iput v5, v4, La5/i$a;->b:I

    new-instance v5, LV9/U1;

    invoke-direct {v5, v0}, LV9/U1;-><init>(I)V

    iput-object v5, v4, La5/i$a;->c:La5/i$c;

    new-instance v5, LV9/V1;

    invoke-direct {v5, v0}, LV9/V1;-><init>(I)V

    iput-object v5, v4, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v5, LF1/s2;

    invoke-direct {v5, p0}, LF1/s2;-><init>(I)V

    iput-object v5, v4, La5/i$a;->d:La5/i$b;

    new-instance v5, LV9/W1;

    invoke-direct {v5, v0}, LV9/W1;-><init>(I)V

    iput-object v5, v4, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v4, v1}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    new-instance v0, La5/i$a;

    invoke-direct {v0}, La5/i$a;-><init>()V

    const/16 v4, 0xc5

    iput v4, v0, La5/i$a;->a:I

    const/16 v4, 0x11

    iput v4, v0, La5/i$a;->b:I

    new-instance v4, LV9/J3;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, La5/i$a;->c:La5/i$c;

    new-instance v4, LV9/J2;

    invoke-direct {v4, p0}, LV9/J2;-><init>(I)V

    iput-object v4, v0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_3
    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->B1()V

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/camera/data/data/m;->e0()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, LV9/M5;->G()La5/i$a;

    move-result-object p0

    new-instance v0, La5/i;

    invoke-direct {v0, p0}, La5/i;-><init>(La5/i$a;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, LV9/M5;->H()La5/i$a;

    move-result-object p0

    invoke-static {p0, v1}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    return-object v1

    :cond_4
    invoke-static {}, Lcom/android/camera/data/data/m;->e0()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, LV9/M5;->y()La5/i$a;

    move-result-object p0

    new-instance v0, La5/i;

    invoke-direct {v0, p0}, La5/i;-><init>(La5/i$a;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, LV9/M5;->z()La5/i$a;

    move-result-object p0

    invoke-static {p0, v1}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_5
    :goto_0
    return-object v1
.end method

.method public final f()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LY4/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->M()Z

    iget-object v1, p0, Ly3/c;->a:Landroid/content/Context;

    const/16 v2, 0xa2

    invoke-static {v1, v2}, Lcom/android/camera/features/mode/capture/h0;->a(Landroid/content/Context;I)LY4/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v3, Lv2/k0;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/k0;

    iget-boolean v4, v1, Lv2/k0;->k:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    new-instance v4, LY4/f$a;

    const/16 v6, 0x13

    invoke-direct {v4, v6}, LY4/a$a;-><init>(I)V

    const v6, 0x7f0e0066

    iput v6, v4, LY4/c$a;->t:I

    iget-object v6, p0, Lr4/b;->i:LCs/G;

    iput-object v6, v4, LY4/c$a;->u:LY4/c$b;

    iput v5, v4, LY4/a$a;->o:I

    new-instance v6, Lr4/a;

    invoke-direct {v6, p0}, Lr4/a;-><init>(Lr4/b;)V

    iput-object v6, v4, LY4/a$a;->a:Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/android/camera/data/data/E;->l0()Z

    move-result v6

    iput-boolean v6, v4, LY4/a$a;->j:Z

    const v6, 0x7f14003b

    iput v6, v4, LY4/a$a;->g:I

    invoke-virtual {v4}, LY4/c$a;->f()LY4/c;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    invoke-virtual {v4, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/k0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/camera/data/data/j;->w0(ILx4/s;)Z

    move-result v4

    invoke-static {v2}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    move v4, v6

    :cond_3
    invoke-static {}, Lcom/android/camera/data/data/E;->X()Z

    move-result v2

    if-eqz v2, :cond_4

    move v4, v6

    :cond_4
    invoke-static {}, Lcom/android/camera/data/data/m;->R()Z

    move-result v2

    if-eqz v2, :cond_5

    move v4, v6

    :cond_5
    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result v2

    if-eqz v2, :cond_6

    move v4, v6

    :cond_6
    if-eqz v4, :cond_7

    iget-boolean v2, v3, Lv2/k0;->a0:Z

    if-nez v2, :cond_7

    iget-boolean v2, v3, Lv2/k0;->q:Z

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move v5, v6

    :goto_0
    const/4 v2, 0x4

    if-eqz v5, :cond_8

    new-instance v3, LY4/g$a;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, LY4/a$a;-><init>(I)V

    iput v2, v3, LY4/a$a;->o:I

    const v4, 0x7f080878

    iput v4, v3, LY4/a$a;->d:I

    const v4, 0x7f14002f

    iput v4, v3, LY4/a$a;->g:I

    iput-boolean v6, v3, LY4/a$a;->k:Z

    new-instance v4, LV9/e5;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, LV9/e5;-><init>(I)V

    iput-object v4, v3, LY4/a$a;->a:Landroid/view/View$OnClickListener;

    invoke-static {v3, v0}, LO2/b;->f(LY4/g$a;Ljava/util/ArrayList;)V

    :cond_8
    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, LJe/c;->d1()V

    invoke-virtual {v1}, Lv2/k0;->W()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v4, p0, Ly3/c;->f:LY4/l;

    invoke-virtual {v4}, LY4/l;->a()LY4/g;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v1}, Lv2/k0;->V()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Li2/a;->a:Li2/b;

    invoke-interface {v1}, Li2/b;->a()Lj2/k;

    move-result-object v1

    invoke-interface {v1}, Lj2/k;->c()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object p0, p0, Ly3/c;->f:LY4/l;

    if-eqz v3, :cond_a

    goto :goto_1

    :cond_a
    const/4 v2, 0x3

    :goto_1
    invoke-virtual {p0, v2}, LY4/l;->h(I)LY4/g;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_2
    return-object v0
.end method

.method public final g()Lz4/g;
    .locals 8

    const/4 v0, 0x1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->X()Z

    move-result v1

    const/16 v2, 0xc1

    const/16 v3, 0xc0

    if-eqz v1, :cond_0

    invoke-static {}, LQ6/u1;->b()LQ6/u1;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, LQ6/u1;->mq()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_0
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->Q()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, LK2/j;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->S()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xcb

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/data/data/E;->X()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_6

    new-instance v1, Lz4/g;

    iget-object v5, p0, Ly3/c;->g:Lz4/c;

    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    invoke-interface {v5, v4}, Lz4/c;->d(I)Lz4/b;

    move-result-object v4

    iget-object v5, p0, Ly3/c;->g:Lz4/c;

    invoke-interface {v5}, Lz4/c;->a()Lz4/b;

    move-result-object v5

    iget-object v6, p0, Ly3/c;->g:Lz4/c;

    invoke-virtual {p0}, Lr4/b;->m()Ly3/q;

    move-result-object v7

    invoke-interface {v6, v7}, Lz4/c;->b(Ly3/q;)Lz4/b;

    move-result-object v6

    iget-object p0, p0, Ly3/c;->g:Lz4/c;

    invoke-interface {p0, v2}, Lz4/c;->c(I)Lz4/b;

    move-result-object p0

    new-instance v2, Lz4/N$a;

    invoke-direct {v2}, Lz4/N$a;-><init>()V

    iput-boolean v0, v2, Lz4/b$b;->c:Z

    iput v3, v2, Lz4/b$b;->b:I

    new-instance v3, Lz4/N;

    invoke-direct {v3, v2}, Lz4/b;-><init>(Lz4/b$b;)V

    iget v2, v2, Lz4/b$b;->b:I

    iput v2, v3, Lz4/N;->e:I

    const/4 v2, 0x5

    new-array v2, v2, [Lz4/b;

    const/4 v7, 0x0

    aput-object v4, v2, v7

    aput-object v5, v2, v0

    const/4 v0, 0x2

    aput-object v6, v2, v0

    const/4 v0, 0x3

    aput-object p0, v2, v0

    const/4 p0, 0x4

    aput-object v3, v2, p0

    invoke-direct {v1, v2}, Lz4/g;-><init>([Lz4/b;)V

    return-object v1

    :cond_6
    new-instance v1, Lz4/g;

    iget-object v3, p0, Ly3/c;->g:Lz4/c;

    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v5

    if-eqz v5, :cond_7

    move v0, v4

    :cond_7
    invoke-interface {v3, v0}, Lz4/c;->d(I)Lz4/b;

    move-result-object v0

    iget-object v3, p0, Ly3/c;->g:Lz4/c;

    invoke-interface {v3}, Lz4/c;->a()Lz4/b;

    move-result-object v3

    iget-object v4, p0, Ly3/c;->g:Lz4/c;

    invoke-virtual {p0}, Lr4/b;->m()Ly3/q;

    move-result-object v5

    invoke-interface {v4, v5}, Lz4/c;->b(Ly3/q;)Lz4/b;

    move-result-object v4

    iget-object p0, p0, Ly3/c;->g:Lz4/c;

    invoke-interface {p0, v2}, Lz4/c;->c(I)Lz4/b;

    move-result-object p0

    filled-new-array {v0, v3, v4, p0}, [Lz4/b;

    move-result-object p0

    invoke-direct {v1, p0}, Lz4/g;-><init>([Lz4/b;)V

    return-object v1
.end method

.method public final getModuleId()I
    .locals 0

    const/16 p0, 0xa2

    return p0
.end method

.method public final h()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    invoke-super {p0}, Ly3/c;->h()Landroid/util/SparseArray;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->Q()Z

    move-result v0

    const v1, 0xfffe

    const/16 v2, 0x16

    if-eqz v0, :cond_0

    const/16 v0, 0xff3

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ly3/c;->n(I[I)V

    goto :goto_0

    :cond_0
    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ly3/c;->n(I[I)V

    :goto_0
    iget-object p0, p0, Ly3/c;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final l()Ljava/util/ArrayList;
    .locals 14

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v6

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v7

    invoke-virtual {v7}, Lu2/Q;->X()Z

    move-result v7

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    invoke-virtual {v8}, Lu2/Q;->C()I

    move-result v8

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v9

    invoke-virtual {v9}, Lu2/Q;->S()Z

    move-result v9

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v10

    const-class v11, Lr2/D0;

    invoke-virtual {v10, v11}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v10

    new-instance v11, LEr/a;

    invoke-direct {v11, v2, p0, v5}, LEr/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-class v10, Lr2/z;

    invoke-virtual {v6, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr2/z;

    invoke-virtual {v10}, Lr2/z;->z()Z

    move-result v10

    const v11, 0x800005

    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    new-instance v10, La5/i$a;

    invoke-direct {v10}, La5/i$a;-><init>()V

    const/16 v12, 0xc2

    iput v12, v10, La5/i$a;->a:I

    iput v11, v10, La5/i$a;->b:I

    new-instance v12, LV9/x3;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v12, v10, La5/i$a;->c:La5/i$c;

    new-instance v12, LV9/A1;

    invoke-direct {v12, v4}, LV9/A1;-><init>(I)V

    iput-object v12, v10, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v12, LF1/y3;

    invoke-direct {v12, v4}, LF1/y3;-><init>(I)V

    iput-object v12, v10, La5/i$a;->d:La5/i$b;

    new-instance v12, LV9/N1;

    invoke-direct {v12, v4}, LV9/N1;-><init>(I)V

    iput-object v12, v10, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v10, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_0
    const/16 v10, 0xd2

    const-class v12, Lr2/Q;

    if-eqz v8, :cond_2

    if-eq v8, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v6, v12}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/Q;

    invoke-virtual {p0}, Lr2/Q;->u()Z

    move-result p0

    if-eqz p0, :cond_9

    if-nez v7, :cond_9

    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    iput v10, p0, La5/i$a;->a:I

    iput v11, p0, La5/i$a;->b:I

    new-instance v6, LV9/Q3;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, La5/i$a;->c:La5/i$c;

    new-instance v6, LV9/R2;

    invoke-direct {v6, v4}, LV9/R2;-><init>(I)V

    iput-object v6, p0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v6, LF1/E;

    invoke-direct {v6, v2}, LF1/E;-><init>(I)V

    iput-object v6, p0, La5/i$a;->d:La5/i$b;

    new-instance v6, LV9/E1;

    invoke-direct {v6, v4}, LV9/E1;-><init>(I)V

    iput-object v6, p0, La5/i$a;->f:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-static {p0, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    goto/16 :goto_3

    :cond_2
    iget-object p0, p0, Ly3/c;->c:Ly3/u;

    iget-object p0, p0, Ly3/u;->g:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez v7, :cond_3

    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    const/16 v13, 0x209

    iput v13, p0, La5/i$a;->a:I

    iput v11, p0, La5/i$a;->b:I

    new-instance v13, LV9/f4;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput-object v13, p0, La5/i$a;->c:La5/i$c;

    new-instance v13, LV9/T1;

    invoke-direct {v13, v4}, LV9/T1;-><init>(I)V

    iput-object v13, p0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v13, LL/a;

    invoke-direct {v13, v1}, LL/a;-><init>(I)V

    iput-object v13, p0, La5/i$a;->d:La5/i$b;

    invoke-static {p0, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_3
    invoke-virtual {v6, v12}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/Q;

    invoke-virtual {p0}, Lr2/Q;->u()Z

    move-result p0

    if-eqz p0, :cond_4

    if-nez v7, :cond_4

    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    iput v10, p0, La5/i$a;->a:I

    iput v11, p0, La5/i$a;->b:I

    new-instance v6, LV9/Q3;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, La5/i$a;->c:La5/i$c;

    new-instance v6, LV9/R2;

    invoke-direct {v6, v4}, LV9/R2;-><init>(I)V

    iput-object v6, p0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v6, LF1/E;

    invoke-direct {v6, v2}, LF1/E;-><init>(I)V

    iput-object v6, p0, La5/i$a;->d:La5/i$b;

    new-instance v6, LV9/E1;

    invoke-direct {v6, v4}, LV9/E1;-><init>(I)V

    iput-object v6, p0, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {p0, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_4
    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object v6, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->W5()Z

    move-result v6

    iget-object v10, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    if-nez v6, :cond_5

    invoke-virtual {v10}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->P7()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v9, :cond_5

    if-nez v8, :cond_5

    new-instance v6, La5/i$a;

    invoke-direct {v6}, La5/i$a;-><init>()V

    const/16 v12, 0xd41

    iput v12, v6, La5/i$a;->a:I

    new-instance v12, LV9/f3;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v12, v6, La5/i$a;->c:La5/i$c;

    new-instance v12, LL9/y;

    invoke-direct {v12, v1}, LL9/y;-><init>(I)V

    iput-object v12, v6, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v12, LF1/o2;

    invoke-direct {v12, v2}, LF1/o2;-><init>(I)V

    iput-object v12, v6, La5/i$a;->d:La5/i$b;

    new-instance v12, LV9/Y1;

    invoke-direct {v12, v0}, LV9/Y1;-><init>(I)V

    iput-object v12, v6, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v6, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_5
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v6

    invoke-virtual {v6, v8}, Lu6/f;->O(I)Lj9/e;

    move-result-object v6

    invoke-static {v6}, Lj9/f;->D1(Lj9/e;)Z

    move-result v6

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v12

    const-class v13, Lv2/X;

    invoke-virtual {v12, v13}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lv2/X;

    invoke-virtual {v12}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    if-nez v7, :cond_6

    if-nez v6, :cond_6

    new-instance v6, La5/i$a;

    invoke-direct {v6}, La5/i$a;-><init>()V

    const/16 v12, 0xb23

    iput v12, v6, La5/i$a;->a:I

    iput v11, v6, La5/i$a;->b:I

    iput-boolean v3, v6, La5/i$a;->h:Z

    new-instance v12, LV9/f2;

    invoke-direct {v12, v4}, LV9/f2;-><init>(I)V

    iput-object v12, v6, La5/i$a;->c:La5/i$c;

    new-instance v12, LV9/g2;

    invoke-direct {v12, v4}, LV9/g2;-><init>(I)V

    iput-object v12, v6, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v12, LEh/a;

    invoke-direct {v12, v2}, LEh/a;-><init>(I)V

    iput-object v12, v6, La5/i$a;->d:La5/i$b;

    new-instance v12, LV9/h2;

    invoke-direct {v12, v4}, LV9/h2;-><init>(I)V

    iput-object v12, v6, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v6, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_6
    if-eqz v9, :cond_8

    invoke-virtual {v10}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->o5()Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v7, :cond_8

    invoke-virtual {p0}, LJe/c;->z1()Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    const/16 v6, 0xa5

    iput v6, p0, La5/i$a;->a:I

    new-instance v6, LV9/X1;

    invoke-direct {v6, v4}, LV9/X1;-><init>(I)V

    iput-object v6, p0, La5/i$a;->c:La5/i$c;

    new-instance v6, LV9/Y1;

    invoke-direct {v6, v4}, LV9/Y1;-><init>(I)V

    iput-object v6, p0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v6, LV9/F2;

    invoke-direct {v6, v3}, LV9/F2;-><init>(I)V

    iput-object v6, p0, La5/i$a;->d:La5/i$b;

    new-instance v6, LV9/G2;

    invoke-direct {v6, v3}, LV9/G2;-><init>(I)V

    iput-object v6, p0, La5/i$a;->f:Landroid/view/View$OnClickListener;

    :goto_1
    invoke-static {p0, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_7
    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    const/16 v6, 0xda

    iput v6, p0, La5/i$a;->a:I

    new-instance v6, LV9/Y2;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, La5/i$a;->c:La5/i$c;

    new-instance v6, LB3/a;

    invoke-direct {v6, v4}, LB3/a;-><init>(I)V

    iput-object v6, p0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v6, LB3/c;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, La5/i$a;->d:La5/i$b;

    new-instance v6, LV9/Y1;

    invoke-direct {v6, v0}, LV9/Y1;-><init>(I)V

    iput-object v6, p0, La5/i$a;->f:Landroid/view/View$OnClickListener;

    goto :goto_1

    :cond_8
    :goto_2
    if-eqz v9, :cond_9

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v6, Lv2/h;

    invoke-virtual {p0, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/h;

    iget-boolean p0, p0, Lv2/h;->V:Z

    if-eqz p0, :cond_9

    if-nez v7, :cond_9

    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    const/16 v6, 0xd40

    iput v6, p0, La5/i$a;->a:I

    iput-boolean v3, p0, La5/i$a;->h:Z

    new-instance v6, LV9/L1;

    invoke-direct {v6, v3}, LV9/L1;-><init>(I)V

    iput-object v6, p0, La5/i$a;->c:La5/i$c;

    new-instance v6, LV9/S1;

    invoke-direct {v6, v3}, LV9/S1;-><init>(I)V

    iput-object v6, p0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v6, LV9/b2;

    invoke-direct {v6, v3}, LV9/b2;-><init>(I)V

    iput-object v6, p0, La5/i$a;->d:La5/i$b;

    new-instance v6, LV9/e2;

    invoke-direct {v6, v3}, LV9/e2;-><init>(I)V

    iput-object v6, p0, La5/i$a;->f:Landroid/view/View$OnClickListener;

    goto/16 :goto_0

    :cond_9
    :goto_3
    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->y1()Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v9, :cond_a

    if-nez v7, :cond_a

    new-instance v6, La5/i$a;

    invoke-direct {v6}, La5/i$a;-><init>()V

    const/16 v10, 0xdc

    iput v10, v6, La5/i$a;->a:I

    new-instance v10, LV9/M1;

    invoke-direct {v10, v1}, LV9/M1;-><init>(I)V

    iput-object v10, v6, La5/i$a;->c:La5/i$c;

    new-instance v10, LV9/E5;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v6, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v10, LF1/r0;

    invoke-direct {v10, v2}, LF1/r0;-><init>(I)V

    iput-object v10, v6, La5/i$a;->d:La5/i$b;

    new-instance v10, LV9/Y1;

    invoke-direct {v10, v0}, LV9/Y1;-><init>(I)V

    iput-object v10, v6, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v6, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_a
    iget-object v6, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->F5()Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v9, :cond_b

    if-nez v7, :cond_b

    new-instance v10, La5/i$a;

    invoke-direct {v10}, La5/i$a;-><init>()V

    const/16 v12, 0xd3

    iput v12, v10, La5/i$a;->a:I

    new-instance v12, LV9/w3;

    invoke-direct {v12, v3}, LV9/w3;-><init>(I)V

    iput-object v12, v10, La5/i$a;->c:La5/i$c;

    new-instance v12, LV9/S2;

    invoke-direct {v12, v4}, LV9/S2;-><init>(I)V

    iput-object v12, v10, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v12, LHs/a;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v12, v10, La5/i$a;->d:La5/i$b;

    new-instance v12, LV9/Y1;

    invoke-direct {v12, v0}, LV9/Y1;-><init>(I)V

    iput-object v12, v10, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v10, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_b
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v10

    const-class v12, Lv2/t;

    invoke-virtual {v10, v12}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv2/t;

    iget-boolean v10, v10, Lv2/t;->b:Z

    if-eqz v10, :cond_c

    if-nez v7, :cond_c

    new-instance v10, La5/i$a;

    invoke-direct {v10}, La5/i$a;-><init>()V

    const/16 v12, 0x212

    iput v12, v10, La5/i$a;->a:I

    const v12, 0x800003

    iput v12, v10, La5/i$a;->b:I

    new-instance v12, LV9/O1;

    invoke-direct {v12, v4}, LV9/O1;-><init>(I)V

    iput-object v12, v10, La5/i$a;->c:La5/i$c;

    new-instance v12, LV9/P1;

    invoke-direct {v12, v1}, LV9/P1;-><init>(I)V

    iput-object v12, v10, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v12, LBa/i;

    invoke-direct {v12, v2}, LBa/i;-><init>(I)V

    iput-object v12, v10, La5/i$a;->d:La5/i$b;

    new-instance v12, LV9/Q1;

    invoke-direct {v12, v1}, LV9/Q1;-><init>(I)V

    iput-object v12, v10, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v10, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_c
    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->l3()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {}, LI1/a;->h()Z

    move-result v10

    if-eqz v10, :cond_d

    if-nez v7, :cond_d

    if-eqz v9, :cond_d

    if-ne v8, v4, :cond_d

    new-instance v7, La5/i$a;

    invoke-direct {v7}, La5/i$a;-><init>()V

    const/16 v10, 0xb6

    iput v10, v7, La5/i$a;->a:I

    new-instance v10, LV9/H2;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v7, La5/i$a;->c:La5/i$c;

    new-instance v10, LV9/I2;

    invoke-direct {v10, v3}, LV9/I2;-><init>(I)V

    iput-object v10, v7, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v10, LMe/a;

    invoke-direct {v10, v4}, LMe/a;-><init>(I)V

    iput-object v10, v7, La5/i$a;->d:La5/i$b;

    new-instance v10, LV9/J2;

    invoke-direct {v10, v3}, LV9/J2;-><init>(I)V

    iput-object v10, v7, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v7, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_d
    invoke-virtual {p0}, LJe/c;->S1()Z

    invoke-virtual {p0, v8}, LJe/c;->L1(I)Z

    sget-object v7, Lo9/a;->a:Lo9/b;

    invoke-interface {v7}, Lo9/b;->e()Lp9/t;

    move-result-object v8

    invoke-interface {v8}, Lp9/t;->c()Z

    move-result v8

    if-eqz v8, :cond_e

    new-instance v8, La5/i$a;

    invoke-direct {v8}, La5/i$a;-><init>()V

    const/16 v10, 0xef

    iput v10, v8, La5/i$a;->a:I

    new-instance v10, LV9/R1;

    invoke-direct {v10, v4}, LV9/R1;-><init>(I)V

    iput-object v10, v8, La5/i$a;->c:La5/i$c;

    new-instance v10, LL9/z;

    invoke-direct {v10, v2}, LL9/z;-><init>(I)V

    iput-object v10, v8, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v10, LF1/b0;

    invoke-direct {v10, v1}, LF1/b0;-><init>(I)V

    iput-object v10, v8, La5/i$a;->d:La5/i$b;

    new-instance v10, LV9/T1;

    invoke-direct {v10, v1}, LV9/T1;-><init>(I)V

    iput-object v10, v8, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v8, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_e
    if-eqz v9, :cond_f

    new-instance v1, La5/i$a;

    invoke-direct {v1}, La5/i$a;-><init>()V

    const/16 v6, 0xb22

    iput v6, v1, La5/i$a;->a:I

    new-instance v6, LV9/M1;

    invoke-direct {v6, v3}, LV9/M1;-><init>(I)V

    iput-object v6, v1, La5/i$a;->c:La5/i$c;

    new-instance v6, LF1/J3;

    invoke-direct {v6, v4}, LF1/J3;-><init>(I)V

    iput-object v6, v1, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v6, LF1/U;

    invoke-direct {v6, v2}, LF1/U;-><init>(I)V

    iput-object v6, v1, La5/i$a;->d:La5/i$b;

    new-instance v6, LV9/N1;

    invoke-direct {v6, v3}, LV9/N1;-><init>(I)V

    iput-object v6, v1, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v1, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_f
    invoke-virtual {p0}, LJe/c;->E1()Z

    move-result p0

    if-eqz p0, :cond_10

    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    const/16 v1, 0xdf

    iput v1, p0, La5/i$a;->a:I

    iput v11, p0, La5/i$a;->b:I

    new-instance v1, LV9/m2;

    invoke-direct {v1, v4}, LV9/m2;-><init>(I)V

    iput-object v1, p0, La5/i$a;->c:La5/i$c;

    new-instance v1, LC4/Q;

    invoke-direct {v1, v2}, LC4/Q;-><init>(I)V

    iput-object v1, p0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v1, LB3/d;

    invoke-direct {v1, v2}, LB3/d;-><init>(I)V

    iput-object v1, p0, La5/i$a;->d:La5/i$b;

    new-instance v1, LV9/Y1;

    invoke-direct {v1, v0}, LV9/Y1;-><init>(I)V

    iput-object v1, p0, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {p0, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_10
    invoke-interface {v7}, Lo9/b;->e()Lp9/t;

    move-result-object p0

    invoke-interface {p0}, Lp9/t;->z()Z

    move-result p0

    if-eqz p0, :cond_11

    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    const/16 v0, 0xe0

    iput v0, p0, La5/i$a;->a:I

    new-instance v0, LSc/A;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La5/i$a;->d:La5/i$b;

    invoke-static {p0, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_11
    return-object v5
.end method

.method public final m()Ly3/q;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSplitInner"
        type = 0x0
    .end annotation

    iget-object v0, p0, Ly3/c;->h:Ly3/q;

    if-nez v0, :cond_0

    new-instance v0, Lr4/b$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ly3/c;->h:Ly3/q;

    :cond_0
    iget-object p0, p0, Ly3/c;->h:Ly3/q;

    return-object p0
.end method
