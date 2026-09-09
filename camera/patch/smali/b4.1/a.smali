.class public final Lb4/a;
.super Ly3/c;
.source "SourceFile"


# virtual methods
.method public final e()Ljava/util/ArrayList;
    .locals 5

    const/4 p0, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/F;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/F;

    invoke-virtual {v1}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xd6

    invoke-static {v1}, LV9/M5;->D(I)La5/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "PhoenixProbe"

    const-string v1, "global-meter-night-added"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/h;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/h;

    invoke-static {}, LV9/M5;->a()La5/i$a;

    move-result-object v1

    invoke-static {v1, v0}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    const-string v2, "PhoenixProbe"

    const-string v1, "global-aperture-night-added"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/w;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/w;

    invoke-virtual {v2}, Lr2/w;->U()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, La5/i$a;

    invoke-direct {v2}, La5/i$a;-><init>()V

    const/16 v3, 0xc1

    iput v3, v2, La5/i$a;->a:I

    new-instance v3, LV9/U1;

    invoke-direct {v3, p0}, LV9/U1;-><init>(I)V

    iput-object v3, v2, La5/i$a;->c:La5/i$c;

    new-instance v3, LV9/V1;

    invoke-direct {v3, p0}, LV9/V1;-><init>(I)V

    iput-object v3, v2, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v3, LF1/s2;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, LF1/s2;-><init>(I)V

    iput-object v3, v2, La5/i$a;->d:La5/i$b;

    new-instance v3, LV9/W1;

    invoke-direct {v3, p0}, LV9/W1;-><init>(I)V

    iput-object v3, v2, La5/i$a;->f:Landroid/view/View$OnClickListener;

    const p0, 0x800003

    iput p0, v2, La5/i$a;->b:I

    invoke-static {v2, v0}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_1
    invoke-static {}, LV9/M5;->p()La5/i$a;

    move-result-object p0

    new-instance v2, La5/i;

    invoke-direct {v2, p0}, La5/i;-><init>(La5/i$a;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p0, Lr2/m;

    invoke-virtual {v1, p0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/m;

    invoke-virtual {p0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->F3()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->M()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, LV9/M5;->f()La5/i$a;

    move-result-object p0

    invoke-static {p0, v0}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_2
    return-object v0
.end method

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

    iget-object v1, p0, Ly3/c;->a:Landroid/content/Context;

    const/16 v2, 0xad

    invoke-static {v1, v2}, Lcom/android/camera/features/mode/capture/h0;->a(Landroid/content/Context;I)LY4/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-static {}, LS6/e;->b()LS6/e;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->S()Z

    move-result v2

    invoke-virtual {v1}, LJe/c;->d1()V

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->X3()Z

    move-result v1

    nop

    nop

    nop

    nop

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/k0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/k0;

    invoke-virtual {v1}, Lv2/k0;->V()Z

    move-result v1

    nop

    nop

    iget-object p0, p0, Ly3/c;->f:LY4/l;

    nop

    invoke-virtual {p0}, LY4/l;->a()LY4/g;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final g()Lz4/g;
    .locals 8

    const/4 v0, 0x1

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->Q()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, LK2/j;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xcb

    goto :goto_1

    :cond_0
    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->P7()Z

    move-result v2

    const/16 v4, 0xc1

    if-eqz v2, :cond_2

    new-instance v1, Lz4/p$a;

    invoke-direct {v1}, Lz4/p$a;-><init>()V

    iput-boolean v0, v1, Lz4/b$b;->c:Z

    iput-boolean v0, v1, Lz4/p$a;->d:Z

    invoke-virtual {v1}, Lz4/p$a;->a()Lz4/p;

    move-result-object v3

    :cond_1
    :goto_0
    move v1, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->X6()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Y6()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc0

    :goto_1
    new-instance v2, Lz4/g;

    iget-object v4, p0, Ly3/c;->g:Lz4/c;

    invoke-interface {v4}, Lz4/c;->f()Lz4/b;

    move-result-object v4

    iget-object v5, p0, Ly3/c;->g:Lz4/c;

    invoke-interface {v5}, Lz4/c;->a()Lz4/b;

    move-result-object v5

    iget-object v6, p0, Ly3/c;->g:Lz4/c;

    invoke-interface {v6, v1}, Lz4/c;->c(I)Lz4/b;

    move-result-object v1

    iget-object v6, p0, Ly3/c;->g:Lz4/c;

    invoke-virtual {p0}, Lb4/a;->m()Ly3/q;

    move-result-object p0

    invoke-interface {v6, p0}, Lz4/c;->b(Ly3/q;)Lz4/b;

    move-result-object p0

    const/4 v6, 0x5

    new-array v6, v6, [Lz4/b;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    aput-object v5, v6, v0

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object p0, v6, v0

    invoke-direct {v2, v6}, Lz4/g;-><init>([Lz4/b;)V

    return-object v2
.end method

.method public final getModuleId()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/16 p0, 0xad

    return p0
.end method

.method public final l()Ljava/util/ArrayList;
    .locals 7

    const/4 p0, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    invoke-virtual {v4}, Lu2/Q;->M()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    const-class v5, Lv2/D;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/D;

    iget-boolean v4, v4, Lv2/D;->f:Z

    if-eqz v4, :cond_0

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, LJe/c;->Z1()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, La5/i$a;

    invoke-direct {v4}, La5/i$a;-><init>()V

    const/16 v5, 0xb27    # 4.001E-42f

    iput v5, v4, La5/i$a;->a:I

    new-instance v5, LV9/R1;

    invoke-direct {v5, p0}, LV9/R1;-><init>(I)V

    iput-object v5, v4, La5/i$a;->c:La5/i$c;

    new-instance v5, LL9/z;

    invoke-direct {v5, v1}, LL9/z;-><init>(I)V

    iput-object v5, v4, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v5, LF1/p2;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, LF1/p2;-><init>(I)V

    iput-object v5, v4, La5/i$a;->d:La5/i$b;

    new-instance v5, LV9/T1;

    invoke-direct {v5, p0}, LV9/T1;-><init>(I)V

    iput-object v5, v4, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {v4, v2}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_0
    const-class p0, Lr2/Q;

    invoke-virtual {v3, p0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/Q;

    invoke-virtual {p0}, Lr2/Q;->u()Z

    move-result p0

    const v3, 0x800005

    if-eqz p0, :cond_1

    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    const/16 v4, 0xd2

    iput v4, p0, La5/i$a;->a:I

    iput v3, p0, La5/i$a;->b:I

    new-instance v4, LV9/Q3;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, La5/i$a;->c:La5/i$c;

    new-instance v4, LV9/R2;

    invoke-direct {v4, v1}, LV9/R2;-><init>(I)V

    iput-object v4, p0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v4, LF1/E;

    invoke-direct {v4, v0}, LF1/E;-><init>(I)V

    iput-object v4, p0, La5/i$a;->d:La5/i$b;

    new-instance v4, LV9/E1;

    invoke-direct {v4, v1}, LV9/E1;-><init>(I)V

    iput-object v4, p0, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {p0, v2}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_1
    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    const/16 v4, 0xdf

    iput v4, p0, La5/i$a;->a:I

    iput v3, p0, La5/i$a;->b:I

    new-instance v3, LV9/m2;

    invoke-direct {v3, v1}, LV9/m2;-><init>(I)V

    iput-object v3, p0, La5/i$a;->c:La5/i$c;

    new-instance v1, LC4/Q;

    invoke-direct {v1, v0}, LC4/Q;-><init>(I)V

    iput-object v1, p0, La5/i$a;->e:Landroid/view/View$OnClickListener;

    new-instance v1, LB3/d;

    invoke-direct {v1, v0}, LB3/d;-><init>(I)V

    iput-object v1, p0, La5/i$a;->d:La5/i$b;

    new-instance v0, LV9/Y1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LV9/Y1;-><init>(I)V

    iput-object v0, p0, La5/i$a;->f:Landroid/view/View$OnClickListener;

    invoke-static {p0, v2}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    sget-object p0, Lo9/a;->a:Lo9/b;

    invoke-interface {p0}, Lo9/b;->e()Lp9/t;

    move-result-object p0

    invoke-interface {p0}, Lp9/t;->z()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, La5/i$a;

    invoke-direct {p0}, La5/i$a;-><init>()V

    const/16 v0, 0xe0

    iput v0, p0, La5/i$a;->a:I

    new-instance v0, LSc/A;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La5/i$a;->d:La5/i$b;

    invoke-static {p0, v2}, LE0/d;->a(La5/i$a;Ljava/util/ArrayList;)V

    :cond_2
    return-object v2
.end method

.method public final m()Ly3/q;
    .locals 1

    iget-object v0, p0, Ly3/c;->h:Ly3/q;

    if-nez v0, :cond_0

    new-instance v0, Lb4/a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ly3/c;->h:Ly3/q;

    :cond_0
    iget-object p0, p0, Ly3/c;->h:Ly3/q;

    return-object p0
.end method

.method public final o(Lz4/e;)Lz4/c;
    .locals 0

    new-instance p0, Lb4/b;

    invoke-direct {p0, p1}, Lz4/d;-><init>(Lz4/e;)V

    return-object p0
.end method
