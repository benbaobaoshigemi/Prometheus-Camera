.class public final Lcom/android/camera/features/mode/capture/c;
.super Ly3/c;
.source "SourceFile"


# virtual methods
.method public final b()Ljava/util/ArrayList;
    .locals 4
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

    const/16 v0, 0x21

    const/16 v1, 0x20

    const/16 v2, 0x22

    const/16 v3, 0x23

    invoke-static {v0, p0, v1, v2, v3}, LF1/U;->f(ILjava/util/ArrayList;III)V

    const/16 v0, 0x24

    const/16 v1, 0x27

    const/16 v2, 0x29

    const/16 v3, 0x14

    invoke-static {v0, p0, v1, v2, v3}, LF1/U;->f(ILjava/util/ArrayList;III)V

    const/16 v0, 0x15

    const/16 v1, 0x16

    const/16 v2, 0x17

    const/16 v3, 0x19

    invoke-static {v0, p0, v1, v2, v3}, LF1/U;->f(ILjava/util/ArrayList;III)V

    const/16 v0, 0x18

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/16 v3, 0x2b

    invoke-static {v0, p0, v1, v2, v3}, LF1/U;->f(ILjava/util/ArrayList;III)V

    return-object p0
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v5

    invoke-virtual {v5}, Lu2/Q;->S()Z

    move-result v5

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v6

    invoke-virtual {v6}, Lu2/Q;->P()Z

    move-result v6

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v7

    invoke-virtual {v7}, Lu2/Q;->Y()Z

    move-result v7

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v8

    const-class v9, Lr2/w;

    invoke-virtual {v8, v9}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr2/w;

    invoke-virtual {v8}, Lr2/w;->U()Z

    move-result v8

    const v9, 0x800003

    if-eqz v8, :cond_0

    new-instance v8, La5/i$a;

    invoke-direct {v8}, La5/i$a;-><init>()V

    const/16 v10, 0xc1

    iput v10, v8, La5/i$a;->a:I

    iput v9, v8, La5/i$a;->b:I

    new-instance v10, LV9/U1;

    invoke-direct {v10, v2}, LV9/U1;-><init>(I)V

    iput-object v10, v8, La5/i$a;->c:La5/i$c;

    new-instance v10, LV9/V1;

    invoke-direct {v10, v2}, LV9/V1;-><init>(I)V

    iput-object v10, v8, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v10, LF1/s2;

    invoke-direct {v10, v1}, LF1/s2;-><init>(I)V

    iput-object v10, v8, La5/i$a;->d:La5/i$b;

    new-instance v10, LV9/W1;

    invoke-direct {v10, v2}, LV9/W1;-><init>(I)V

    iput-object v10, v8, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v8, v3}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_0
    if-eqz v5, :cond_1

    sget-boolean v8, LJe/c;->k:Z

    sget-object v8, LJe/c$b;->a:LJe/c;

    iget-object v8, v8, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->u1()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    invoke-virtual {v8}, Lu2/Q;->M()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, La5/i$a;

    invoke-direct {v8}, La5/i$a;-><init>()V

    const/16 v10, 0x95

    iput v10, v8, La5/i$a;->a:I

    iput v9, v8, La5/i$a;->b:I

    new-instance v10, LV9/T4;

    invoke-direct {v10, v1}, LV9/T4;-><init>(I)V

    iput-object v10, v8, La5/i$a;->c:La5/i$c;

    new-instance v10, LV9/W1;

    invoke-direct {v10, v1}, LV9/W1;-><init>(I)V

    iput-object v10, v8, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v10, LV9/c2;

    invoke-direct {v10, v1}, LV9/c2;-><init>(I)V

    iput-object v10, v8, La5/i$a;->d:La5/i$b;

    new-instance v10, LV9/j2;

    invoke-direct {v10, v0}, LV9/j2;-><init>(I)V

    iput-object v10, v8, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v8, v3}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_1
    invoke-static {}, Lvr/l;->b()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    if-nez v7, :cond_2

    iget-object p0, p0, Ly3/c;->c:Ly3/u;

    iget-boolean p0, p0, Ly3/u;->e:Z

    if-nez p0, :cond_2

    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    const/16 v7, 0xf2

    iput v7, p0, La5/i$a;->a:I

    iput v9, p0, La5/i$a;->b:I

    new-instance v7, LV9/m1;

    invoke-direct {v7, v1}, LV9/m1;-><init>(I)V

    iput-object v7, p0, La5/i$a;->c:La5/i$c;

    new-instance v1, LV9/e5;

    invoke-direct {v1, v2}, LV9/e5;-><init>(I)V

    iput-object v1, p0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v1, LP0/g;

    invoke-direct {v1, v0}, LP0/g;-><init>(I)V

    iput-object v1, p0, La5/i$a;->d:La5/i$b;

    new-instance v0, LV9/k5;

    invoke-direct {v0, v2}, LV9/k5;-><init>(I)V

    iput-object v0, p0, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {p0, v3}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_2
    invoke-static {}, LV9/M5;->p()La5/i$a;

    move-result-object p0

    new-instance v0, La5/i;

    invoke-direct {v0, p0}, La5/i;-><init>(La5/i$a;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p0, Lr2/m;

    invoke-virtual {v4, p0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/m;

    invoke-virtual {p0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->F3()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->M()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, LV9/M5;->f()La5/i$a;

    move-result-object p0

    invoke-static {p0, v3}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_3
    invoke-static {}, Lvr/l;->a()Z

    move-result p0

    if-eqz p0, :cond_5

    if-nez v5, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->z2()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {v6}, LV9/M5;->m(Z)La5/i$a;

    move-result-object p0

    invoke-static {p0, v3}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_5
    return-object v3
.end method

.method public final f()Ljava/util/List;
    .locals 8
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

    move-result v1

    iget-object v2, p0, Ly3/c;->a:Landroid/content/Context;

    const/16 v3, 0xa3

    invoke-static {v2, v3}, Lcom/android/camera/features/mode/capture/h0;->a(Landroid/content/Context;I)LY4/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/k0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/k0;

    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, LJe/c;->d1()V

    invoke-virtual {v2}, Lv2/k0;->W()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Ly3/c;->f:LY4/l;

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v6

    invoke-virtual {v6}, Lu6/f;->f()I

    move-result v6

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v7

    invoke-virtual {v7, v6}, Lu6/f;->O(I)Lj9/e;

    move-result-object v6

    invoke-static {v6}, Lj9/f;->e5(Lj9/e;)Z

    invoke-virtual {v5}, LY4/l;->a()LY4/g;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lv2/k0;->V()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Li2/a;->a:Li2/b;

    invoke-interface {v2}, Li2/b;->a()Lj2/k;

    move-result-object v2

    invoke-interface {v2}, Lj2/k;->c()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p0, p0, Ly3/c;->f:LY4/l;

    if-eqz v4, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    :goto_0
    invoke-virtual {p0, v2}, LY4/l;->h(I)LY4/g;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v3}, LJe/c;->z0()Z

    move-result p0

    if-eqz p0, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {v3}, LJe/c;->Q1()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v3}, LJe/c;->P1()Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, LY4/f$a;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, LY4/a$a;-><init>(I)V

    const v1, 0x7f0e004c

    iput v1, p0, LY4/c$a;->t:I

    const/4 v1, 0x0

    iput v1, p0, LY4/a$a;->o:I

    new-instance v2, LB3/c;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, LY4/c$a;->u:LY4/c$b;

    const/4 v2, 0x1

    iput-boolean v2, p0, LY4/c$a;->v:Z

    iput-boolean v2, p0, LY4/a$a;->m:Z

    iput-boolean v1, p0, LY4/a$a;->k:Z

    new-instance v1, LY4/f;

    invoke-direct {v1, p0}, LY4/c;-><init>(LY4/c$a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public final getModuleId()I
    .locals 0

    const/16 p0, 0xa3

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

    const/16 v1, 0x14

    if-eqz v0, :cond_0

    const/16 v0, 0xff3

    filled-new-array {v0}, [I

    move-result-object v0

    const/16 v2, 0x16

    invoke-virtual {p0, v2, v0}, Ly3/c;->n(I[I)V

    goto :goto_0

    :cond_0
    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->m1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/w;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0xffffff7

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ly3/c;->n(I[I)V

    :cond_1
    :goto_0
    const v0, 0xfffff

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0}, Ly3/c;->n(I[I)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->P()Lj9/e;

    move-result-object v0

    const/16 v2, 0xa3

    invoke-static {v2, v0}, Lcom/android/camera/data/data/E;->c0(ILj9/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->S()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xee5

    filled-new-array {v0}, [I

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0}, Ly3/c;->n(I[I)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/data/data/w;->w0()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xee7

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ly3/c;->n(I[I)V

    :cond_3
    :goto_1
    iget-object p0, p0, Ly3/c;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final j()LZ4/d;
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSplitInner"
        type = 0x0
    .end annotation

    invoke-static {}, Lcom/android/camera/data/data/E;->j0()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, LZ4/d$a;

    invoke-direct {p0}, LZ4/d$a;-><init>()V

    const/16 v0, 0xe4

    iput v0, p0, LZ4/d$a;->e:I

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/c;

    iput-object v0, p0, LZ4/d$a;->a:Lcom/android/camera/data/data/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, LZ4/d$a;->d:Z

    sget-object v0, LZ4/d$b;->a:LZ4/d$b;

    iput-object v0, p0, LZ4/d$a;->c:LZ4/d$b;

    new-instance v0, LZ4/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LZ4/d$a;->b:LZ4/b;

    new-instance v0, LZ4/d;

    invoke-direct {v0, p0}, LZ4/d;-><init>(LZ4/d$a;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final l()Ljava/util/ArrayList;
    .locals 15

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v14, "PhoenixProbe"

    const-string v13, "capture-producer-c-entered"

    invoke-static {v14, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v13

    const-class v14, Lr2/F;

    invoke-virtual {v13, v14}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lr2/F;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v14

    invoke-virtual {v14}, Lu2/Q;->C()I

    move-result v14

    const/4 v13, 0x1

    if-ne v14, v13, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v13

    const-class v14, Lr2/F;

    invoke-virtual {v13, v14}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lr2/F;

    invoke-virtual {v13}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    const/16 v13, 0xd6

    invoke-static {v13}, LV9/M5;->D(I)La5/i;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v14, "PhoenixProbe"

    const-string v13, "capture-producer-c-meter-added"

    invoke-static {v14, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v6

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v7

    invoke-virtual {v7}, Lu2/Q;->S()Z

    move-result v7

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    invoke-virtual {v8}, Lu2/Q;->Y()Z

    move-result v8

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v9

    invoke-virtual {v9}, Lu2/Q;->P()Z

    move-result v9

    const-class v10, Lr2/z;

    invoke-virtual {v6, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr2/z;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v11

    invoke-virtual {v11}, Lu2/Q;->C()I

    move-result v11

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v12

    const-class v13, Lr2/D0;

    invoke-virtual {v12, v13}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v12

    new-instance v13, Lcom/android/camera/features/mode/capture/b;

    invoke-direct {v13, p0, v5}, Lcom/android/camera/features/mode/capture/b;-><init>(Lcom/android/camera/features/mode/capture/c;Ljava/util/ArrayList;)V

    invoke-virtual {v12, v13}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v10}, Lr2/z;->z()Z

    move-result v10

    const v12, 0x800005

    if-eqz v10, :cond_2

    if-eqz v7, :cond_2

    new-instance v10, La5/i$a;

    invoke-direct {v10}, La5/i$a;-><init>()V

    const/16 v13, 0xc2

    iput v13, v10, La5/i$a;->a:I

    iput v12, v10, La5/i$a;->b:I

    new-instance v13, LV9/x3;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput-object v13, v10, La5/i$a;->c:La5/i$c;

    new-instance v13, LV9/A1;

    invoke-direct {v13, v4}, LV9/A1;-><init>(I)V

    iput-object v13, v10, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v13, LF1/y3;

    invoke-direct {v13, v4}, LF1/y3;-><init>(I)V

    iput-object v13, v10, La5/i$a;->d:La5/i$b;

    new-instance v13, LV9/N1;

    invoke-direct {v13, v4}, LV9/N1;-><init>(I)V

    iput-object v13, v10, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v10, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_2
    const-class v10, Lr2/c;

    invoke-virtual {v6, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr2/c;

    invoke-virtual {v10}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    if-eqz v7, :cond_3

    new-instance v10, La5/i$a;

    invoke-direct {v10}, La5/i$a;-><init>()V

    const/16 v13, 0xc9

    iput v13, v10, La5/i$a;->a:I

    new-instance v13, LV9/B5;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput-object v13, v10, La5/i$a;->c:La5/i$c;

    new-instance v13, LV9/C5;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput-object v13, v10, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v13, LF1/y3;

    invoke-direct {v13, v3}, LF1/y3;-><init>(I)V

    iput-object v13, v10, La5/i$a;->d:La5/i$b;

    new-instance v13, LV9/Y1;

    invoke-direct {v13, v2}, LV9/Y1;-><init>(I)V

    iput-object v13, v10, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v10, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_3
    const/16 v10, 0xd2

    if-nez v7, :cond_8

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->R()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Ly3/c;->c:Ly3/u;

    iget-object v1, v1, Ly3/u;->h:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, La5/i$a;

    invoke-direct {v1}, La5/i$a;-><init>()V

    iput v10, v1, La5/i$a;->a:I

    iput v12, v1, La5/i$a;->b:I

    new-instance v2, LV9/Q3;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, La5/i$a;->c:La5/i$c;

    new-instance v2, LV9/R2;

    invoke-direct {v2, v4}, LV9/R2;-><init>(I)V

    iput-object v2, v1, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v2, LF1/E;

    invoke-direct {v2, v0}, LF1/E;-><init>(I)V

    iput-object v2, v1, La5/i$a;->d:La5/i$b;

    new-instance v0, LV9/E1;

    invoke-direct {v0, v4}, LV9/E1;-><init>(I)V

    iput-object v0, v1, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v1, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_4
    invoke-static {}, LV9/M5;->C()La5/i$a;

    move-result-object v0

    invoke-static {v0, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->e()Lp9/t;

    move-result-object v1

    invoke-interface {v1}, Lp9/t;->z()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, LV9/M5;->w()La5/i$a;

    move-result-object v1

    invoke-static {v1, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_5
    invoke-static {}, Lvr/l;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->z2()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v9, :cond_6

    invoke-static {v9}, LV9/M5;->m(Z)La5/i$a;

    move-result-object v1

    invoke-static {v1, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_6
    invoke-interface {v0}, Lo9/b;->e()Lp9/t;

    move-result-object v0

    invoke-interface {v0}, Lp9/t;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, LV9/M5;->b()La5/i$a;

    move-result-object v0

    invoke-static {v0, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_7
    iget-object p0, p0, Ly3/c;->c:Ly3/u;

    iget-object p0, p0, Ly3/u;->g:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-static {}, LV9/M5;->t()La5/i$a;

    move-result-object p0

    invoke-static {p0, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    return-object v5

    :cond_8
    const-class v7, Lr2/c0;

    invoke-virtual {v6, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr2/c0;

    invoke-virtual {v7}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {}, LV9/M5;->E()La5/i$a;

    move-result-object v7

    invoke-static {v7, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_9
    iget-object v7, p0, Ly3/c;->c:Ly3/u;

    iget-object v7, v7, Ly3/u;->h:Ljava/util/function/Supplier;

    invoke-interface {v7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v7, La5/i$a;

    invoke-direct {v7}, La5/i$a;-><init>()V

    iput v10, v7, La5/i$a;->a:I

    iput v12, v7, La5/i$a;->b:I

    new-instance v10, LV9/Q3;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v7, La5/i$a;->c:La5/i$c;

    new-instance v10, LV9/R2;

    invoke-direct {v10, v4}, LV9/R2;-><init>(I)V

    iput-object v10, v7, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v10, LF1/E;

    invoke-direct {v10, v0}, LF1/E;-><init>(I)V

    iput-object v10, v7, La5/i$a;->d:La5/i$b;

    new-instance v10, LV9/E1;

    invoke-direct {v10, v4}, LV9/E1;-><init>(I)V

    iput-object v10, v7, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v7, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_a
    if-nez v11, :cond_b

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v7

    invoke-virtual {v7}, Lu6/f;->P()Lj9/e;

    move-result-object v7

    invoke-static {v7}, Lj9/f;->M3(Lj9/e;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, La5/i$a;

    invoke-direct {v7}, La5/i$a;-><init>()V

    const/16 v10, 0xb25

    iput v10, v7, La5/i$a;->a:I

    new-instance v10, LV9/Q2;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v7, La5/i$a;->c:La5/i$c;

    new-instance v10, LV9/R2;

    invoke-direct {v10, v1}, LV9/R2;-><init>(I)V

    iput-object v10, v7, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v10, LS1/h;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v7, La5/i$a;->d:La5/i$b;

    new-instance v10, LV9/S2;

    invoke-direct {v10, v1}, LV9/S2;-><init>(I)V

    iput-object v10, v7, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v7, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_b
    if-nez v8, :cond_c

    new-instance v7, La5/i$a;

    invoke-direct {v7}, La5/i$a;-><init>()V

    const/16 v10, 0xe2

    iput v10, v7, La5/i$a;->a:I

    iput v12, v7, La5/i$a;->b:I

    new-instance v10, LV9/x2;

    invoke-direct {v10, v1}, LV9/x2;-><init>(I)V

    iput-object v10, v7, La5/i$a;->c:La5/i$c;

    new-instance v10, LV9/Q1;

    invoke-direct {v10, v4}, LV9/Q1;-><init>(I)V

    iput-object v10, v7, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v10, LV9/Z1;

    invoke-direct {v10, v4}, LV9/Z1;-><init>(I)V

    iput-object v10, v7, La5/i$a;->d:La5/i$b;

    new-instance v10, LL3/b;

    invoke-direct {v10, v4}, LL3/b;-><init>(I)V

    iput-object v10, v7, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v7, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_c
    sget-boolean v7, LJe/c;->k:Z

    sget-object v7, LJe/c$b;->a:LJe/c;

    iget-object v10, v7, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v10}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->T7()Z

    move-result v10

    if-eqz v10, :cond_d

    new-instance v10, La5/i$a;

    invoke-direct {v10}, La5/i$a;-><init>()V

    const/16 v12, 0xaa

    iput v12, v10, La5/i$a;->a:I

    new-instance v12, LV9/X0;

    invoke-direct {v12, v4}, LV9/X0;-><init>(I)V

    iput-object v12, v10, La5/i$a;->c:La5/i$c;

    new-instance v12, LV9/s1;

    invoke-direct {v12, v3}, LV9/s1;-><init>(I)V

    iput-object v12, v10, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v12, LI4/t;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v12, v10, La5/i$a;->d:La5/i$b;

    new-instance v12, La5/i$a;

    invoke-direct {v12}, La5/i$a;-><init>()V

    const/16 v13, 0xf8

    iput v13, v12, La5/i$a;->a:I

    new-instance v14, LF1/B2;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput-object v14, v12, La5/i$a;->d:La5/i$b;

    new-instance v14, La5/i;

    invoke-direct {v14, v12}, La5/i;-><init>(La5/i$a;)V

    invoke-static {v14}, LBw/i;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    iput-object v12, v10, La5/i$a;->g:Ljava/util/List;

    new-instance v12, LV9/Y1;

    invoke-direct {v12, v2}, LV9/Y1;-><init>(I)V

    iput-object v12, v10, La5/i$a;->f:Landroid/view/View$OnClickListener;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, La5/i$a;

    invoke-direct {v14}, La5/i$a;-><init>()V

    iput v13, v14, La5/i$a;->a:I

    new-instance v13, LQ4/D;

    invoke-direct {v13, v0}, LQ4/D;-><init>(I)V

    iput-object v13, v14, La5/i$a;->d:La5/i$b;

    invoke-static {v14, v12}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    iput-object v12, v10, La5/i$a;->g:Ljava/util/List;

    invoke-static {v10, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_d
    iget-object v0, v7, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    if-nez v11, :cond_e

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->w5()Z

    move-result v10

    if-eqz v10, :cond_e

    new-instance v10, La5/i$a;

    invoke-direct {v10}, La5/i$a;-><init>()V

    const/16 v11, 0xe4

    iput v11, v10, La5/i$a;->a:I

    new-instance v11, LV9/m2;

    invoke-direct {v11, v1}, LV9/m2;-><init>(I)V

    iput-object v11, v10, La5/i$a;->c:La5/i$c;

    new-instance v1, LC4/Q;

    invoke-direct {v1, v3}, LC4/Q;-><init>(I)V

    iput-object v1, v10, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v1, LB3/d;

    invoke-direct {v1, v3}, LB3/d;-><init>(I)V

    iput-object v1, v10, La5/i$a;->d:La5/i$b;

    new-instance v1, LV9/Y1;

    invoke-direct {v1, v2}, LV9/Y1;-><init>(I)V

    iput-object v1, v10, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v10, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_e
    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->R3()Z

    move-result v1

    if-eqz v1, :cond_f

    if-nez v8, :cond_f

    new-instance v1, La5/i$a;

    invoke-direct {v1}, La5/i$a;-><init>()V

    const/16 v8, 0x93

    iput v8, v1, La5/i$a;->a:I

    new-instance v8, LV9/w3;

    invoke-direct {v8, v4}, LV9/w3;-><init>(I)V

    iput-object v8, v1, La5/i$a;->c:La5/i$c;

    new-instance v4, LV9/S2;

    invoke-direct {v4, v3}, LV9/S2;-><init>(I)V

    iput-object v4, v1, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v3, LV9/r4;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, La5/i$a;->d:La5/i$b;

    new-instance v3, LV9/Y1;

    invoke-direct {v3, v2}, LV9/Y1;-><init>(I)V

    iput-object v3, v1, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v1, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_f
    invoke-static {}, LV9/M5;->I()La5/i$a;

    move-result-object v1

    new-instance v2, La5/i;

    invoke-direct {v2, v1}, La5/i;-><init>(La5/i$a;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v1, Lr2/h;

    invoke-virtual {v6, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/h;

    invoke-virtual {v1}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v7}, LJe/c;->P1()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->O()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, LV9/M5;->c()La5/i$a;

    move-result-object v1

    invoke-static {v1, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_10
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/h;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/h;

    iget-boolean v1, v1, Lv2/h;->V:Z

    if-eqz v1, :cond_11

    invoke-static {}, LV9/M5;->a()La5/i$a;

    move-result-object v1

    invoke-static {v1, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_11
    invoke-static {}, Lvr/l;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->z2()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {v9}, LV9/M5;->m(Z)La5/i$a;

    move-result-object v0

    invoke-static {v0, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_12
    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->e()Lp9/t;

    move-result-object v1

    invoke-interface {v1}, Lp9/t;->c()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, LV9/M5;->b()La5/i$a;

    move-result-object v1

    invoke-static {v1, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_13
    iget-object p0, p0, Ly3/c;->c:Ly3/u;

    iget-object p0, p0, Ly3/u;->g:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-static {}, LV9/M5;->t()La5/i$a;

    move-result-object p0

    invoke-static {p0, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_14
    invoke-interface {v0}, Lo9/b;->e()Lp9/t;

    move-result-object p0

    invoke-interface {p0}, Lp9/t;->z()Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-static {}, LV9/M5;->w()La5/i$a;

    move-result-object p0

    invoke-static {p0, v5}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_15
    return-object v5
.end method

.method public final m()Ly3/q;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFlipPhone"
        type = 0x0
    .end annotation

    iget-object v0, p0, Ly3/c;->h:Ly3/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/features/mode/capture/c$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ly3/c;->h:Ly3/q;

    :cond_0
    iget-object p0, p0, Ly3/c;->h:Ly3/q;

    return-object p0
.end method
