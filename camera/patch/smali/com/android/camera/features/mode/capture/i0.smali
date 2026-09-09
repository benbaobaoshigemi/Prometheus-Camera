.class public final Lcom/android/camera/features/mode/capture/i0;
.super Ly3/c;
.source "SourceFile"


# virtual methods
.method public final f()Ljava/util/List;
    .locals 3
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

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->f()I

    move-result v1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lu6/f;->O(I)Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->e5(Lj9/e;)Z

    move-result v1

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-object p0, p0, Ly3/c;->f:LY4/l;

    const/4 v2, 0x3

    invoke-interface {p0, v2, v1}, LY4/h;->c(IZ)LY4/g;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final g()Lz4/g;
    .locals 5

    const/4 p0, 0x1

    new-instance v0, Lz4/g;

    invoke-static {}, LB3/e;->c()Lz4/M;

    move-result-object v1

    new-instance v2, Lz4/L$a;

    invoke-direct {v2}, Lz4/b$b;-><init>()V

    invoke-static {}, LK2/b;->a0()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, p0

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iput v3, v2, Lz4/b$b;->a:I

    invoke-virtual {v2}, Lz4/L$a;->a()Lz4/L;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lz4/b;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v2, v3, p0

    invoke-direct {v0, v3}, Lz4/g;-><init>([Lz4/b;)V

    return-object v0
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
    .locals 12

    const/4 p0, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "PhoenixProbe"

    const-string v10, "capture-producer-i0-entered"

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v10

    const-class v11, Lr2/F;

    invoke-virtual {v10, v11}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr2/F;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v11

    invoke-virtual {v11}, Lu2/Q;->C()I

    move-result v11

    const/4 v10, 0x1

    if-ne v11, v10, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v10

    const-class v11, Lr2/F;

    invoke-virtual {v10, v11}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr2/F;

    invoke-virtual {v10}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    const/16 v10, 0xd6

    invoke-static {v10}, LV9/M5;->D(I)La5/i;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v11, "PhoenixProbe"

    const-string v10, "capture-producer-i0-meter-added"

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    invoke-virtual {v4}, Lu2/Q;->S()Z

    move-result v5

    invoke-virtual {v4}, Lu2/Q;->Y()Z

    move-result v4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v6

    const-class v7, Lr2/U;

    invoke-virtual {v6, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/U;

    invoke-virtual {v6}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    sget-boolean v6, LJe/c;->k:Z

    sget-object v6, LJe/c$b;->a:LJe/c;

    invoke-virtual {v6}, LJe/c;->X0()V

    :cond_2
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v6

    const-class v7, Lr2/w;

    invoke-virtual {v6, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/w;

    invoke-virtual {v6}, Lr2/w;->U()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, La5/i$a;

    invoke-direct {v6}, La5/i$a;-><init>()V

    const/16 v7, 0xc1

    iput v7, v6, La5/i$a;->a:I

    const v7, 0x800003

    iput v7, v6, La5/i$a;->b:I

    new-instance v7, LV9/U1;

    invoke-direct {v7, v0}, LV9/U1;-><init>(I)V

    iput-object v7, v6, La5/i$a;->c:La5/i$c;

    new-instance v7, LV9/V1;

    invoke-direct {v7, v0}, LV9/V1;-><init>(I)V

    iput-object v7, v6, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v7, LF1/s2;

    invoke-direct {v7, v1}, LF1/s2;-><init>(I)V

    iput-object v7, v6, La5/i$a;->d:La5/i$b;

    new-instance v7, LV9/W1;

    invoke-direct {v7, v0}, LV9/W1;-><init>(I)V

    iput-object v7, v6, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v6, v2}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_3
    const-class v6, Lr2/Q;

    invoke-virtual {v3, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/Q;

    const/16 v7, 0xe2

    const/16 v8, 0xd2

    const v9, 0x800005

    if-nez v5, :cond_5

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3}, Lu2/Q;->R()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v6}, Lr2/Q;->u()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, La5/i$a;

    invoke-direct {v3}, La5/i$a;-><init>()V

    iput v8, v3, La5/i$a;->a:I

    iput v9, v3, La5/i$a;->b:I

    new-instance v4, LV9/Q3;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, La5/i$a;->c:La5/i$c;

    new-instance v4, LV9/R2;

    invoke-direct {v4, v1}, LV9/R2;-><init>(I)V

    iput-object v4, v3, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v4, LF1/E;

    invoke-direct {v4, p0}, LF1/E;-><init>(I)V

    iput-object v4, v3, La5/i$a;->d:La5/i$b;

    new-instance p0, LV9/E1;

    invoke-direct {p0, v1}, LV9/E1;-><init>(I)V

    iput-object p0, v3, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v3, v2}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_4
    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    iput v7, p0, La5/i$a;->a:I

    iput v9, p0, La5/i$a;->b:I

    new-instance v3, LV9/x2;

    invoke-direct {v3, v0}, LV9/x2;-><init>(I)V

    iput-object v3, p0, La5/i$a;->c:La5/i$c;

    new-instance v0, LV9/Q1;

    invoke-direct {v0, v1}, LV9/Q1;-><init>(I)V

    iput-object v0, p0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v0, LV9/Z1;

    invoke-direct {v0, v1}, LV9/Z1;-><init>(I)V

    iput-object v0, p0, La5/i$a;->d:La5/i$b;

    new-instance v0, LL3/b;

    invoke-direct {v0, v1}, LL3/b;-><init>(I)V

    iput-object v0, p0, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {p0, v2}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    return-object v2

    :cond_5
    invoke-static {}, Lvr/l;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, La5/i$a;

    invoke-direct {v5}, La5/i$a;-><init>()V

    const/16 v10, 0xce

    iput v10, v5, La5/i$a;->a:I

    iput v9, v5, La5/i$a;->b:I

    new-instance v10, LV9/k2;

    invoke-direct {v10, v0}, LV9/k2;-><init>(Z)V

    iput-object v10, v5, La5/i$a;->c:La5/i$c;

    new-instance v10, LV9/l2;

    invoke-direct {v10, v0}, LV9/l2;-><init>(Z)V

    iput-object v10, v5, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v10, LV9/n2;

    invoke-direct {v10, v0}, LV9/n2;-><init>(Z)V

    iput-object v10, v5, La5/i$a;->d:La5/i$b;

    new-instance v10, LV9/Y1;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, LV9/Y1;-><init>(I)V

    iput-object v10, v5, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v5, v2}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_6
    const-class v5, Lr2/z;

    invoke-virtual {v3, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/z;

    invoke-virtual {v5}, Lr2/z;->z()Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, La5/i$a;

    invoke-direct {v5}, La5/i$a;-><init>()V

    const/16 v10, 0xc2

    iput v10, v5, La5/i$a;->a:I

    iput v9, v5, La5/i$a;->b:I

    new-instance v10, LV9/x3;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v5, La5/i$a;->c:La5/i$c;

    new-instance v10, LV9/A1;

    invoke-direct {v10, v1}, LV9/A1;-><init>(I)V

    iput-object v10, v5, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v10, LF1/y3;

    invoke-direct {v10, v1}, LF1/y3;-><init>(I)V

    iput-object v10, v5, La5/i$a;->d:La5/i$b;

    new-instance v10, LV9/N1;

    invoke-direct {v10, v1}, LV9/N1;-><init>(I)V

    iput-object v10, v5, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v5, v2}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_7
    invoke-virtual {v6}, Lr2/Q;->u()Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, La5/i$a;

    invoke-direct {v5}, La5/i$a;-><init>()V

    iput v8, v5, La5/i$a;->a:I

    iput v9, v5, La5/i$a;->b:I

    new-instance v6, LV9/Q3;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v5, La5/i$a;->c:La5/i$c;

    new-instance v6, LV9/R2;

    invoke-direct {v6, v1}, LV9/R2;-><init>(I)V

    iput-object v6, v5, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v6, LF1/E;

    invoke-direct {v6, p0}, LF1/E;-><init>(I)V

    iput-object v6, v5, La5/i$a;->d:La5/i$b;

    new-instance p0, LV9/E1;

    invoke-direct {p0, v1}, LV9/E1;-><init>(I)V

    iput-object p0, v5, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v5, v2}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_8
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const-class v5, Lu2/v;

    invoke-virtual {p0, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu2/v;

    invoke-virtual {p0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->Q()Z

    move-result p0

    if-eqz p0, :cond_9

    move p0, v0

    goto :goto_1

    :cond_9
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const-string v5, "pref_camera_asd_group_key"

    invoke-virtual {p0, v5, v1}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_a

    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    const/16 v5, 0xb30

    iput v5, p0, La5/i$a;->a:I

    iput v9, p0, La5/i$a;->b:I

    new-instance v5, LQ1/a;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, La5/i$a;->d:La5/i$b;

    new-instance v5, LV9/P1;

    invoke-direct {v5, v1}, LV9/P1;-><init>(I)V

    iput-object v5, p0, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {p0, v2}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_a
    if-nez v4, :cond_b

    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    iput v7, p0, La5/i$a;->a:I

    iput v9, p0, La5/i$a;->b:I

    new-instance v4, LV9/x2;

    invoke-direct {v4, v0}, LV9/x2;-><init>(I)V

    iput-object v4, p0, La5/i$a;->c:La5/i$c;

    new-instance v0, LV9/Q1;

    invoke-direct {v0, v1}, LV9/Q1;-><init>(I)V

    iput-object v0, p0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v0, LV9/Z1;

    invoke-direct {v0, v1}, LV9/Z1;-><init>(I)V

    iput-object v0, p0, La5/i$a;->d:La5/i$b;

    new-instance v0, LL3/b;

    invoke-direct {v0, v1}, LL3/b;-><init>(I)V

    iput-object v0, p0, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {p0, v2}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_b
    invoke-static {}, LV9/M5;->I()La5/i$a;

    move-result-object p0

    new-instance v0, La5/i;

    invoke-direct {v0, p0}, La5/i;-><init>(La5/i$a;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p0, Lr2/m;

    invoke-virtual {v3, p0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/m;

    invoke-virtual {p0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object v0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->F3()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->X2()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->M()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {}, LV9/M5;->f()La5/i$a;

    move-result-object p0

    invoke-static {p0, v2}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_c
    const-class p0, Lr2/c0;

    invoke-virtual {v3, p0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/c0;

    invoke-virtual {p0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_d

    invoke-static {}, LV9/M5;->E()La5/i$a;

    move-result-object p0

    invoke-static {p0, v2}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_d
    return-object v2
.end method
