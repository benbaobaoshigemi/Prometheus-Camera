.class public final Lcom/android/camera/features/mode/capture/j0;
.super Ly3/c;
.source "SourceFile"


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

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 5
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

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/k0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/k0;

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->d1()V

    invoke-virtual {v1}, Lv2/k0;->W()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Ly3/c;->f:LY4/l;

    invoke-interface {v4}, LY4/h;->d()LY4/g;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Lv2/k0;->V()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Ly3/c;->f:LY4/l;

    if-eqz v3, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {p0, v1}, LY4/l;->h(I)LY4/g;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v2}, LJe/c;->z0()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->O()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v2}, LJe/c;->Q1()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v2}, LJe/c;->P1()Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, LY4/f$a;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, LY4/a$a;-><init>(I)V

    const v1, 0x7f0e004c

    iput v1, p0, LY4/c$a;->t:I

    new-instance v1, LB3/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LY4/c$a;->u:LY4/c$b;

    const/4 v1, 0x0

    iput-boolean v1, p0, LY4/a$a;->k:Z

    new-instance v1, LY4/f;

    invoke-direct {v1, p0}, LY4/c;-><init>(LY4/c$a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public final g()Lz4/g;
    .locals 4

    new-instance p0, Lz4/g;

    invoke-static {}, LB3/e;->c()Lz4/M;

    move-result-object v0

    new-instance v1, Lz4/L$a;

    invoke-direct {v1}, Lz4/b$b;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Lz4/b$b;->a:I

    invoke-virtual {v1}, Lz4/L$a;->a()Lz4/L;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lz4/b;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-direct {p0, v2}, Lz4/g;-><init>([Lz4/b;)V

    return-object p0
.end method

.method public final getModuleId()I
    .locals 0

    const/16 p0, 0xa3

    return p0
.end method

.method public final h()Landroid/util/SparseArray;
    .locals 2
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

    if-eqz v0, :cond_0

    const/16 v0, 0xff3

    filled-new-array {v0}, [I

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {p0, v1, v0}, Ly3/c;->n(I[I)V

    :cond_0
    iget-object p0, p0, Ly3/c;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final l()Ljava/util/ArrayList;
    .locals 11

    const/4 p0, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "PhoenixProbe"

    const-string v9, "capture-producer-j0-entered"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v9

    const-class v10, Lr2/F;

    invoke-virtual {v9, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr2/F;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v10

    invoke-virtual {v10}, Lu2/Q;->C()I

    move-result v10

    const/4 v9, 0x1

    if-ne v10, v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v9

    const-class v10, Lr2/F;

    invoke-virtual {v9, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr2/F;

    invoke-virtual {v9}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    const/16 v9, 0xd6

    invoke-static {v9}, LV9/M5;->D(I)La5/i;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "PhoenixProbe"

    const-string v9, "capture-producer-j0-meter-added"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v5

    invoke-virtual {v5}, Lu2/Q;->S()Z

    move-result v6

    invoke-virtual {v5}, Lu2/Q;->Y()Z

    move-result v5

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v7

    const-class v8, Lr2/w;

    invoke-virtual {v7, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr2/w;

    invoke-virtual {v7}, Lr2/w;->U()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, La5/i$a;

    invoke-direct {v7}, La5/i$a;-><init>()V

    const/16 v8, 0xc1

    iput v8, v7, La5/i$a;->a:I

    const v8, 0x800003

    iput v8, v7, La5/i$a;->b:I

    new-instance v8, LV9/U1;

    invoke-direct {v8, v1}, LV9/U1;-><init>(I)V

    iput-object v8, v7, La5/i$a;->c:La5/i$c;

    new-instance v8, LV9/V1;

    invoke-direct {v8, v1}, LV9/V1;-><init>(I)V

    iput-object v8, v7, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v8, LF1/s2;

    invoke-direct {v8, v2}, LF1/s2;-><init>(I)V

    iput-object v8, v7, La5/i$a;->d:La5/i$b;

    new-instance v8, LV9/W1;

    invoke-direct {v8, v1}, LV9/W1;-><init>(I)V

    iput-object v8, v7, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v7, v3}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_2
    const-class v7, Lr2/Q;

    invoke-virtual {v4, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr2/Q;

    const/16 v8, 0xe2

    const/16 v9, 0xd2

    const v10, 0x800005

    if-nez v6, :cond_4

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->R()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v7}, Lr2/Q;->u()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    iput v9, p0, La5/i$a;->a:I

    iput v10, p0, La5/i$a;->b:I

    new-instance v4, LV9/Q3;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, La5/i$a;->c:La5/i$c;

    new-instance v4, LV9/R2;

    invoke-direct {v4, v2}, LV9/R2;-><init>(I)V

    iput-object v4, p0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v4, LF1/E;

    invoke-direct {v4, v0}, LF1/E;-><init>(I)V

    iput-object v4, p0, La5/i$a;->d:La5/i$b;

    new-instance v0, LV9/E1;

    invoke-direct {v0, v2}, LV9/E1;-><init>(I)V

    iput-object v0, p0, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {p0, v3}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_3
    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    iput v8, p0, La5/i$a;->a:I

    iput v10, p0, La5/i$a;->b:I

    new-instance v0, LV9/x2;

    invoke-direct {v0, v1}, LV9/x2;-><init>(I)V

    iput-object v0, p0, La5/i$a;->c:La5/i$c;

    new-instance v0, LV9/Q1;

    invoke-direct {v0, v2}, LV9/Q1;-><init>(I)V

    iput-object v0, p0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v0, LV9/Z1;

    invoke-direct {v0, v2}, LV9/Z1;-><init>(I)V

    iput-object v0, p0, La5/i$a;->d:La5/i$b;

    new-instance v0, LL3/b;

    invoke-direct {v0, v2}, LL3/b;-><init>(I)V

    iput-object v0, p0, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {p0, v3}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    return-object v3

    :cond_4
    invoke-virtual {v7}, Lr2/Q;->u()Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, La5/i$a;

    invoke-direct {v6}, La5/i$a;-><init>()V

    iput v9, v6, La5/i$a;->a:I

    iput v10, v6, La5/i$a;->b:I

    new-instance v7, LV9/Q3;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v6, La5/i$a;->c:La5/i$c;

    new-instance v7, LV9/R2;

    invoke-direct {v7, v2}, LV9/R2;-><init>(I)V

    iput-object v7, v6, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v7, LF1/E;

    invoke-direct {v7, v0}, LF1/E;-><init>(I)V

    iput-object v7, v6, La5/i$a;->d:La5/i$b;

    new-instance v7, LV9/E1;

    invoke-direct {v7, v2}, LV9/E1;-><init>(I)V

    iput-object v7, v6, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v6, v3}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_5
    const-class v6, Lr2/m;

    invoke-virtual {v4, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/m;

    invoke-virtual {v6}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    sget-boolean v6, LJe/c;->k:Z

    sget-object v6, LJe/c$b;->a:LJe/c;

    iget-object v6, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->F3()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v6

    invoke-virtual {v6}, Lu2/Q;->M()Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, La5/i$a;

    invoke-direct {v6}, La5/i$a;-><init>()V

    const/16 v7, 0xbe

    iput v7, v6, La5/i$a;->a:I

    iput v10, v6, La5/i$a;->b:I

    new-instance v7, LV9/i2;

    invoke-direct {v7, v1}, LV9/i2;-><init>(I)V

    iput-object v7, v6, La5/i$a;->c:La5/i$c;

    new-instance v7, LV9/j2;

    invoke-direct {v7, v1}, LV9/j2;-><init>(I)V

    iput-object v7, v6, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v7, LEm/c;

    invoke-direct {v7, v2}, LEm/c;-><init>(I)V

    iput-object v7, v6, La5/i$a;->d:La5/i$b;

    new-instance v7, LE3/b;

    invoke-direct {v7, v2}, LE3/b;-><init>(I)V

    iput-object v7, v6, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v6, v3}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_6
    const-class v6, Lr2/z;

    invoke-virtual {v4, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/z;

    invoke-virtual {v4}, Lr2/z;->z()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, La5/i$a;

    invoke-direct {v4}, La5/i$a;-><init>()V

    const/16 v6, 0xc2

    iput v6, v4, La5/i$a;->a:I

    iput v10, v4, La5/i$a;->b:I

    new-instance v6, LV9/x3;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v4, La5/i$a;->c:La5/i$c;

    new-instance v6, LV9/A1;

    invoke-direct {v6, v2}, LV9/A1;-><init>(I)V

    iput-object v6, v4, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v6, LF1/y3;

    invoke-direct {v6, v2}, LF1/y3;-><init>(I)V

    iput-object v6, v4, La5/i$a;->d:La5/i$b;

    new-instance v6, LV9/N1;

    invoke-direct {v6, v2}, LV9/N1;-><init>(I)V

    iput-object v6, v4, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v4, v3}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_7
    invoke-static {}, Lvr/l;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, La5/i$a;

    invoke-direct {v4}, La5/i$a;-><init>()V

    const/16 v6, 0xce

    iput v6, v4, La5/i$a;->a:I

    iput v10, v4, La5/i$a;->b:I

    new-instance v6, LV9/k2;

    invoke-direct {v6, v1}, LV9/k2;-><init>(Z)V

    iput-object v6, v4, La5/i$a;->c:La5/i$c;

    new-instance v6, LV9/l2;

    invoke-direct {v6, v1}, LV9/l2;-><init>(Z)V

    iput-object v6, v4, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v6, LV9/n2;

    invoke-direct {v6, v1}, LV9/n2;-><init>(Z)V

    iput-object v6, v4, La5/i$a;->d:La5/i$b;

    new-instance v6, LV9/Y1;

    invoke-direct {v6, p0}, LV9/Y1;-><init>(I)V

    iput-object v6, v4, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v4, v3}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_8
    if-nez v5, :cond_9

    new-instance v4, La5/i$a;

    invoke-direct {v4}, La5/i$a;-><init>()V

    iput v8, v4, La5/i$a;->a:I

    iput v10, v4, La5/i$a;->b:I

    new-instance v5, LV9/x2;

    invoke-direct {v5, v1}, LV9/x2;-><init>(I)V

    iput-object v5, v4, La5/i$a;->c:La5/i$c;

    new-instance v1, LV9/Q1;

    invoke-direct {v1, v2}, LV9/Q1;-><init>(I)V

    iput-object v1, v4, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v1, LV9/Z1;

    invoke-direct {v1, v2}, LV9/Z1;-><init>(I)V

    iput-object v1, v4, La5/i$a;->d:La5/i$b;

    new-instance v1, LL3/b;

    invoke-direct {v1, v2}, LL3/b;-><init>(I)V

    iput-object v1, v4, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v4, v3}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_9
    invoke-static {}, La5/g;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, La5/i$a;

    invoke-direct {v1}, La5/i$a;-><init>()V

    const/16 v4, 0xdf

    iput v4, v1, La5/i$a;->a:I

    iput v10, v1, La5/i$a;->b:I

    new-instance v4, LV9/m2;

    invoke-direct {v4, v2}, LV9/m2;-><init>(I)V

    iput-object v4, v1, La5/i$a;->c:La5/i$c;

    new-instance v2, LC4/Q;

    invoke-direct {v2, v0}, LC4/Q;-><init>(I)V

    iput-object v2, v1, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v2, LB3/d;

    invoke-direct {v2, v0}, LB3/d;-><init>(I)V

    iput-object v2, v1, La5/i$a;->d:La5/i$b;

    new-instance v0, LV9/Y1;

    invoke-direct {v0, p0}, LV9/Y1;-><init>(I)V

    iput-object v0, v1, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v1, v3}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    return-object v3
.end method
