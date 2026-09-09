.class public final LV9/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV9/k;
.implements LQ6/c0;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements LQ6/n1;


# instance fields
.field public I:LZ9/r;

.field public J:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;

.field public K:[I

.field public L:I

.field public M:Z

.field public N:Lcom/android/camera/data/observeable/VMFeature;

.field public final O:Ljava/util/HashMap;

.field public final P:Ljava/util/HashMap;

.field public a:Lcom/android/camera2/compat/theme/custom/mm/top/MainTopBarLayout;

.field public b:Lo5/q;

.field public c:LV9/h;

.field public d:Z

.field public e:Z

.field public f:Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;

.field public g:I

.field public h:Landroid/widget/TextView;

.field public i:Z

.field public final j:LV9/a;

.field public k:I

.field public l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

.field public m:Z

.field public n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

.field public o:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$j;

.field public p:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/j;

.field public q:I

.field public r:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/k;

.field public s:LZ9/p;

.field public t:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/expandview/TopBarExpandView;


# direct methods
.method public constructor <init>(LV9/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LV9/i0;->d:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, LV9/i0;->m:Z

    iput v0, p0, LV9/i0;->q:I

    iput v0, p0, LV9/i0;->L:I

    iput-boolean v0, p0, LV9/i0;->M:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LV9/i0;->O:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LV9/i0;->P:Ljava/util/HashMap;

    iput-object p1, p0, LV9/i0;->j:LV9/a;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v2, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v2}, Lu2/Q;->E(I)I

    move-result v0

    iput v0, p0, LV9/i0;->k:I

    new-instance v0, Lo5/q;

    invoke-direct {v0}, Lo5/q;-><init>()V

    iput-object v0, p0, LV9/i0;->b:Lo5/q;

    invoke-virtual {p1}, Lcom/android/camera/fragment/b;->getContainerType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/b;->setContainerType(I)V

    iget-object p0, p0, LV9/i0;->b:Lo5/q;

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/b;->setRegisterAuto(Z)V

    return-void
.end method


# virtual methods
.method public final A5()[[I
    .locals 9

    iget-object v0, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    iget-object v5, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, La5/i;

    if-eqz v7, :cond_1

    check-cast v6, La5/i;

    iget v6, v6, La5/i;->c:I

    iget v7, p0, LV9/i0;->k:I

    invoke-static {v6, v7}, LW9/O;->l(II)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-static {}, LK2/b;->P()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v1}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v6

    iput v7, v3, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    filled-new-array {v6, v7, v8, v5}, [I

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    invoke-static {}, LK2/b;->W()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    :goto_1
    move v4, v1

    :goto_2
    sub-int v5, p0, v0

    div-int/2addr v5, v3

    if-ge v4, v5, :cond_4

    sub-int v5, p0, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    add-int v7, v0, v4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    invoke-virtual {v2, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v7, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    new-array p0, v1, [[I

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0

    :cond_5
    new-array p0, v1, [[I

    return-object p0
.end method

.method public final B0()V
    .locals 0

    return-void
.end method

.method public final varargs Cp([IZ)V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, LV9/i0;->L:I

    const-string/jumbo v0, "setTopBarStatus: 1"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FragmentMainTopBar"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2, p1}, LV9/i0;->l0(IZ[I)V

    iput-object p1, p0, LV9/i0;->K:[I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setHideTopBarExcludeConfigItems: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, LF1/Q;->b([ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class p1, LQ6/M;

    invoke-virtual {p0, p1}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object p0

    check-cast p0, LQ6/M;

    if-eqz p0, :cond_0

    invoke-interface {p0}, LQ6/M;->A1()V

    :cond_0
    return-void
.end method

.method public final Do(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v0

    check-cast v0, LA2/a$a;

    invoke-virtual {v0}, LA2/a$a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/c0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c0;

    iget v1, p0, LV9/i0;->k:I

    invoke-virtual {v0, v1}, Lr2/c0;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/camera/data/data/y;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xd1

    invoke-virtual {p0, v0, p1, v1}, LV9/i0;->Li(Lcom/android/camera/data/data/c;Landroid/view/View;I)V

    return-void

    :cond_1
    iget p1, p0, LV9/i0;->k:I

    invoke-virtual {v0, p1}, Lr2/c0;->v(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, LQ6/P;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/t;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, LV9/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Ef(Z)V
    .locals 0

    iput-boolean p1, p0, LV9/i0;->e:Z

    return-void
.end method

.method public final varargs Eo([IZ)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, LV9/i0;->K:[I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setHideTopBarExcludeConfigItems: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, LF1/Q;->b([ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FragmentMainTopBar"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v1, p0, LV9/i0;->L:I

    const-string/jumbo v0, "setTopBarStatus: 0"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p2, p1}, LV9/i0;->l0(IZ[I)V

    :cond_0
    sget-object p1, LN6/h$a;->a:LN6/h;

    const-class p2, LQ6/M;

    invoke-virtual {p1, p2}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object p1

    check-cast p1, LQ6/M;

    if-eqz p1, :cond_1

    invoke-interface {p1}, LQ6/M;->jf()V

    :cond_1
    iget-object p1, p0, LV9/i0;->t:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/expandview/TopBarExpandView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, LV9/i0;->Wa(Z)Z

    :cond_2
    return-void
.end method

.method public final F9()Z
    .locals 0

    iget-boolean p0, p0, LV9/i0;->e:Z

    return p0
.end method

.method public final G1(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    iget-object v0, v0, Lr2/f0;->h:Lr2/g0;

    iget v2, p0, LV9/i0;->k:I

    invoke-virtual {v0, v2}, Lr2/g0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onVideoFpsClick: current fps:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",next fps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentMainTopBar"

    invoke-static {v3, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, LV9/i0;->k:I

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    invoke-virtual {v2, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/f0;

    iget-object v1, v1, Lr2/f0;->g:Lr2/h0;

    iget v2, p0, LV9/i0;->k:I

    iget-object v1, v1, Lr2/h0;->a:Lr2/f0;

    invoke-virtual {v1, v2}, Lr2/f0;->s(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, LOh/a;->c(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, LV9/i0;->k:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/data/data/w;->a1(IZ)V

    goto :goto_0

    :cond_1
    iget v0, p0, LV9/i0;->k:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/data/data/w;->a1(IZ)V

    :goto_0
    invoke-static {p1}, Lr2/g0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "top_bar"

    const-string v2, "attr_video_fps"

    const-string v3, "click"

    invoke-static {v2, v0, v3, v1}, Liq/d;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, LV9/i0;->T0([I)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG4/a;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, LG4/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final H1()V
    .locals 0

    return-void
.end method

.method public final Hj(Landroid/view/View;)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedMovieSolid"
        type = 0x0
    .end annotation

    invoke-static {}, Lcom/android/camera/data/data/j;->Q0()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, LWh/a;->g()LWh/a;

    iget v3, p0, LV9/i0;->k:I

    invoke-static {v3}, Lcom/android/camera/data/data/j;->G(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v2}, LWh/a;->c()V

    const/16 v2, 0xa0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p0, v2}, LV9/i0;->T0([I)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LV9/U;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, LV9/U;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f1413d2

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f1413f8

    invoke-virtual {p0, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f1413f7

    invoke-virtual {p0, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LV9/V;

    invoke-direct {v2, p0, v1}, LV9/V;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p0, LF1/D2;->f:LF1/D2;

    iget-boolean p0, p0, LF1/D2;->d:Z

    if-eqz p0, :cond_1

    new-instance p0, LV9/W;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, LV9/W;-><init>(ILandroid/view/View;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final J5(Landroid/view/View;)V
    .locals 3

    const-string v0, "FragmentMainTopBar"

    const-string v1, "onTimerClick"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, LV9/i0;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lr2/a0;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/a0;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/w0;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    :goto_0
    new-instance v1, LV9/b0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, LV9/b0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final K0()V
    .locals 8

    iget-object v0, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {v0}, LV9/a;->Mq()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v2, p0, LV9/i0;->k:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, LV9/i0;->S0(ILjava/util/Optional;ZZZZ)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "FragmentMainTopBar"

    const-string v1, "onConfigItemsUpdate"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final L()[I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getHideTopBarExcludeConfigItems: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LV9/i0;->K:[I

    invoke-static {v1, v0}, LF1/Q;->b([ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FragmentMainTopBar"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LV9/i0;->K:[I

    return-object p0
.end method

.method public final La(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, LV9/i0;->O:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Li(Lcom/android/camera/data/data/c;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LV9/i0;->I:LZ9/r;

    iget p0, p0, LV9/i0;->k:I

    iget-object v1, v0, LZ9/r;->a:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/expandview/TopBarExpandView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "TopBarExpandManager"

    const-string v5, "expandView"

    invoke-static {v4, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, v0, LZ9/r;->k:Lcom/android/camera/data/data/c;

    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, LZ9/r;->c:Ljava/lang/String;

    iput p3, v0, LZ9/r;->b:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance p0, Laa/a;

    invoke-virtual {p1}, Lcom/android/camera/data/data/c;->getItems()Ljava/util/List;

    move-result-object p1

    iget-object p3, v0, LZ9/r;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0}, Laa/a;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p0, v0, LZ9/r;->j:Laa/a;

    iget p1, v0, LZ9/r;->i:I

    iput p1, p0, Laa/a;->d:I

    new-instance p0, LQ5/F;

    invoke-direct {p0, v0, p2}, LQ5/F;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/expandview/TopBarExpandView;->setLayoutCallable(Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/expandview/TopBarExpandView$a;)V

    iget-object p0, v0, LZ9/r;->j:Laa/a;

    invoke-virtual {v1, p0}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/expandview/TopBarExpandView;->setAdapter(Laa/a;)V

    return-void
.end method

.method public final M8()V
    .locals 0

    return-void
.end method

.method public final Mj(Landroid/view/View;)V
    .locals 3

    const-string v0, "FragmentMainTopBar"

    const-string v1, "onRatioClick"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/Q;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/S;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, LV9/S;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v0, LF1/D2;->f:LF1/D2;

    iget-boolean v0, v0, LF1/D2;->d:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, LV9/T;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, LV9/T;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final Ml()V
    .locals 0

    return-void
.end method

.method public final Mp(Landroid/view/View;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isCloseFocusSupport"
        type = 0x2
    .end annotation

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LF1/l0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LF1/l0;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LA3/l;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LA3/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final N5()V
    .locals 1

    iget-object v0, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LV9/i0;->a:Lcom/android/camera2/compat/theme/custom/mm/top/MainTopBarLayout;

    invoke-static {p0}, LU1/b;->e(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final N7(I)V
    .locals 0

    return-void
.end method

.method public final Ni()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportLiveShot"
        type = 0x0
    .end annotation

    return-void
.end method

.method public final varargs O1([IZ)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    iget-object v3, p0, LV9/i0;->s:LZ9/p;

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, v3, LZ9/p;->m:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v2}, LV9/i0;->h0(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, LU1/d;->f(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final O9(LQ6/C;)V
    .locals 8

    const/4 v0, 0x6

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/16 v3, 0x8

    const-string/jumbo v4, "ultra_pixel_mutex"

    invoke-virtual {p0, v4}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    iget-object v4, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v4

    const v5, 0x7f1413c5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v7, 0x7f140802

    invoke-virtual {v4, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v5

    new-instance v7, LV9/s;

    invoke-direct {v7, v4, v6}, LV9/s;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    const-string/jumbo v4, "quality_fps_mutex"

    invoke-virtual {p0, v4}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-interface {p1}, LQ6/C;->Zb()V

    :cond_1
    const-string/jumbo v4, "smart_composition_mutex_hint"

    invoke-virtual {p0, v4}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LF1/H1;

    invoke-direct {v5, v2}, LF1/H1;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    const-string v4, "dolly_mutex"

    invoke-virtual {p0, v4}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LG3/h;

    invoke-direct {v5, v3}, LG3/h;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    const-string v4, "macro_mutex"

    invoke-virtual {p0, v4}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v4, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LC4/x;

    const/16 v7, 0x9

    invoke-direct {v5, v7}, LC4/x;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    const-string/jumbo v4, "pro_video_log_off_hint"

    invoke-virtual {p0, v4}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v4, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LE3/c;

    const/4 v7, 0x7

    invoke-direct {v5, v7}, LE3/c;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    const-string/jumbo v4, "video_filter_mutex"

    invoke-virtual {p0, v4}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v4, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LF4/f;

    invoke-direct {v5, v1}, LF4/f;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    const-string/jumbo v4, "video_bokeh_pro_mutex"

    invoke-virtual {p0, v4}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, v4, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LF4/g;

    invoke-direct {v5, v0}, LF4/g;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_7
    const-string v4, "beauty_mutex"

    invoke-virtual {p0, v4}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0, v4, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LC4/C;

    invoke-direct {v5, v3}, LC4/C;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_8
    const-string/jumbo v4, "super_eis_mutex"

    invoke-virtual {p0, v4}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0, v4, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LC4/E;

    invoke-direct {v5, v0}, LC4/E;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_9
    const-string/jumbo v0, "pro_video_opengate_on_hint"

    invoke-virtual {p0, v0}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0, v0, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v4, LC4/G;

    invoke-direct {v4, v2}, LC4/G;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_a
    invoke-interface {p1}, LQ6/C;->Hf()V

    const-string v0, "ai_watermark"

    invoke-virtual {p0, v0}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_b

    invoke-virtual {p0, v0, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-interface {p1, v4}, LQ6/C;->af(Z)V

    :cond_b
    const-string v0, "hdr"

    invoke-virtual {p0, v0}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0, v0, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-interface {p1}, LQ6/C;->yn()V

    :cond_c
    const-string v0, "cvtype"

    invoke-virtual {p0, v0}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0, v0, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-interface {p1}, LQ6/C;->b8()V

    :cond_d
    const-string v0, "live_shot"

    invoke-virtual {p0, v0}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0, v0, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-interface {p1}, LQ6/C;->S6()V

    :cond_e
    const-string/jumbo v0, "pro_mode_bt2020"

    invoke-virtual {p0, v0}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0, v0, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-interface {p1}, LQ6/C;->Ea()V

    :cond_f
    invoke-interface {p1}, LQ6/C;->yh()V

    iget-boolean v0, p0, LV9/i0;->d:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->O()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-boolean v0, LK2/e;->n:Z

    if-nez v0, :cond_10

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Y4()Z

    move-result v0

    if-eqz v0, :cond_10

    iput-boolean v6, p0, LV9/i0;->d:Z

    invoke-interface {p1}, LQ6/C;->k7()V

    :cond_10
    const-string/jumbo v0, "track_focus_desc"

    invoke-virtual {p0, v0}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/android/camera/data/data/E;->E()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0, v0, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-interface {p1}, LQ6/C;->mn()V

    :cond_11
    const-string v0, "audio_track_desc"

    invoke-virtual {p0, v0}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0, v0, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-interface {p1}, LQ6/C;->ea()V

    :cond_12
    const-string v0, "mutex_hdr_quality"

    invoke-virtual {p0, v0}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0, v0, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    iget-object v2, p0, LV9/i0;->P:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p1, v0}, LQ6/C;->sp(Landroid/os/Bundle;)V

    :cond_13
    const-string/jumbo v0, "smart_composition_hint"

    invoke-virtual {p0, v0}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0, v0, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-interface {p1}, LQ6/C;->fk()V

    :cond_14
    iget v0, p0, LV9/i0;->k:I

    const/16 v2, 0xa2

    if-eq v0, v2, :cond_15

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_16

    :cond_15
    invoke-static {}, LU6/c;->h()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v4

    goto :goto_0

    :cond_16
    move v0, v6

    :goto_0
    const-string v2, "macro"

    invoke-virtual {p0, v2}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    if-nez v0, :cond_17

    invoke-virtual {p0, v2, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-interface {p1}, LQ6/C;->v5()V

    :cond_17
    const-string/jumbo v0, "smart_scene_desc"

    invoke-virtual {p0, v0}, LV9/i0;->La(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0, v0, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-interface {p1}, LQ6/C;->ch()V

    :cond_18
    const-string/jumbo v0, "timer_burst"

    invoke-virtual {p0, v0, v6}, LV9/i0;->zd(Ljava/lang/String;Z)V

    invoke-interface {p1}, LQ6/C;->Ji()V

    invoke-interface {p1}, LQ6/C;->Sk()V

    invoke-interface {p1}, LQ6/C;->lc()V

    invoke-static {}, LQ6/u1;->b()LQ6/u1;

    move-result-object v0

    iget-boolean v2, p0, LV9/i0;->i:Z

    if-eqz v2, :cond_1a

    if-eqz v0, :cond_1a

    invoke-interface {v0}, LQ6/u1;->mq()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, LQ6/C;->Vd()V

    :cond_19
    invoke-virtual {p0}, LV9/i0;->X()Lo5/q;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lo5/q;->u1()V

    :cond_1a
    invoke-interface {p1}, LQ6/C;->uo()V

    invoke-static {}, LQ6/Z0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LI4/f;

    invoke-direct {v2, v1}, LI4/f;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-interface {p1}, LQ6/C;->j9()V

    :cond_1b
    invoke-virtual {p0}, LV9/i0;->X()Lo5/q;

    move-result-object v0

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v1

    const-class v2, Lw7/c;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw7/c;

    iget v2, p0, LV9/i0;->k:I

    invoke-static {v2}, Lcom/android/camera/data/data/j;->X0(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {}, Lcom/android/camera/data/data/E;->N()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Lw7/c;->b()Z

    move-result v1

    if-nez v1, :cond_1c

    if-eqz v0, :cond_1c

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    iget-boolean v1, v1, Lv2/D0;->B:Z

    if-nez v1, :cond_1c

    iget-object v1, v0, Lo5/q;->G0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4, v6, v1}, Lcom/android/camera/fragment/h;->animateViews(IZLandroid/view/View;)V

    iget-object v1, v0, Lo5/q;->G0:Landroid/widget/FrameLayout;

    const v2, 0x7f140c29

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lo5/q;->sr()V

    invoke-virtual {v0}, Lo5/q;->ws()V

    :cond_1c
    iget v1, p0, LV9/i0;->k:I

    invoke-static {v1}, Lcom/android/camera/data/data/j;->Y0(I)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/android/camera/data/data/E;->N()Z

    move-result v1

    if-nez v1, :cond_20

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lo5/q;->hr()V

    invoke-virtual {v0}, Lo5/q;->Vr()Lcom/android/camera/VolumeControlPanel;

    move-result-object v1

    iget p0, p0, LV9/i0;->k:I

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v5, Lr2/g;

    invoke-virtual {v2, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/g;

    invoke-virtual {v2, p0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 v2, 0x42480000    # 50.0f

    add-float/2addr p0, v2

    iget-boolean v2, v1, Lcom/android/camera/VolumeControlPanel;->c:Z

    if-eqz v2, :cond_1d

    iget v2, v1, Lcom/android/camera/VolumeControlPanel;->e:F

    mul-float/2addr p0, v2

    iput p0, v1, Lcom/android/camera/VolumeControlPanel;->j:F

    goto :goto_1

    :cond_1d
    iget v2, v1, Lcom/android/camera/VolumeControlPanel;->n:F

    iget v5, v1, Lcom/android/camera/VolumeControlPanel;->e:F

    mul-float/2addr p0, v5

    sub-float/2addr v2, p0

    iput v2, v1, Lcom/android/camera/VolumeControlPanel;->g:F

    :goto_1
    iget p0, v1, Lcom/android/camera/VolumeControlPanel;->a:F

    const/4 v2, 0x0

    cmpl-float p0, p0, v2

    if-nez p0, :cond_1e

    invoke-static {v6}, Lcom/android/camera/data/data/m;->L0(Z)V

    iget-object p0, v1, Lcom/android/camera/VolumeControlPanel;->o:Lcom/android/camera/VolumeControlPanel$a;

    check-cast p0, Lo5/q;

    invoke-virtual {p0, v4}, Lo5/q;->ls(Z)V

    goto :goto_2

    :cond_1e
    if-lez p0, :cond_1f

    invoke-static {v4}, Lcom/android/camera/data/data/m;->L0(Z)V

    iget-object p0, v1, Lcom/android/camera/VolumeControlPanel;->o:Lcom/android/camera/VolumeControlPanel$a;

    check-cast p0, Lo5/q;

    invoke-virtual {p0, v6}, Lo5/q;->ls(Z)V

    :cond_1f
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    invoke-virtual {v0}, Lo5/q;->is()V

    invoke-virtual {v0}, Lo5/q;->Vr()Lcom/android/camera/VolumeControlPanel;

    move-result-object p0

    if-eqz p0, :cond_20

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    invoke-interface {p1, v6}, LQ6/C;->xm(Z)V

    return-void
.end method

.method public final P0(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportRaw"
        type = 0x2
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/S;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/S;

    iget p0, p0, LV9/i0;->k:I

    invoke-virtual {v0, p0}, Lr2/S;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/F;

    invoke-direct {v1, p0, p1}, LV9/F;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/h;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, LEs/h;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final P4(Z)V
    .locals 5

    iget-object v0, p0, LV9/i0;->a:Lcom/android/camera2/compat/theme/custom/mm/top/MainTopBarLayout;

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    iget-object p0, p0, LV9/i0;->b:Lo5/q;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LU6/b;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, LU6/b;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/16 v3, 0xf0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final R0(Landroid/view/View;)V
    .locals 4

    const-string v0, "FragmentMainTopBar"

    const-string v1, "onFlashClick"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->h:Lq1/E;

    invoke-virtual {v1}, Lq1/E;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v1

    check-cast v1, LA2/a$a;

    invoke-virtual {v1}, LA2/a$a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/w;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/w;

    iget v2, p0, LV9/i0;->k:I

    invoke-virtual {v1, v2}, Lr2/w;->I(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lr2/w;->getDisableReasonString()I

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LH8/p;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LH8/p;-><init>(II)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    iget v2, p0, LV9/i0;->k:I

    invoke-virtual {v1, v2}, Lr2/w;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "108"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, LV9/i0;->j:LV9/a;

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object p0

    const p1, 0x7f14022b

    invoke-static {p0, p1}, LF1/C4;->g(Landroid/app/Activity;I)V

    return-void

    :cond_2
    invoke-virtual {v1}, Lr2/w;->disableUpdate()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lr2/w;->getDisableReasonString()I

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object p1

    invoke-static {p1, p0}, LF1/C4;->g(Landroid/app/Activity;I)V

    :cond_3
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "ignore click flash for disable update"

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v0, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    if-eqz v0, :cond_5

    invoke-interface {v1}, Lcom/android/camera/data/data/y;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xc1

    invoke-virtual {p0, v1, p1, v0}, LV9/i0;->Li(Lcom/android/camera/data/data/c;Landroid/view/View;I)V

    return-void

    :cond_5
    iget v0, p0, LV9/i0;->k:I

    invoke-virtual {v1, v0}, Lr2/w;->u(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LV9/i0;->p0(Ljava/lang/String;)V

    sget-object v0, LF1/D2;->f:LF1/D2;

    iget-boolean v0, v0, LF1/D2;->d:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    new-instance v0, LV9/O;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, LV9/O;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_0
    return-void
.end method

.method public final R1(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    iget-object v0, v0, Lr2/f0;->g:Lr2/h0;

    iget v2, p0, LV9/i0;->k:I

    iget-object v3, v0, Lr2/h0;->a:Lr2/f0;

    invoke-virtual {v3, v2}, Lr2/f0;->s(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onTopAnimClick: current quality:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",next quality:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FragmentMainTopBar"

    invoke-static {v4, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, LV9/i0;->k:I

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    invoke-virtual {v3, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/f0;

    iget-object v1, v1, Lr2/f0;->h:Lr2/g0;

    iget v3, p0, LV9/i0;->k:I

    invoke-virtual {v1, v3}, Lr2/g0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1}, LOh/a;->c(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, LV9/i0;->k:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/data/data/w;->a1(IZ)V

    goto :goto_0

    :cond_1
    iget v1, p0, LV9/i0;->k:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/data/data/w;->a1(IZ)V

    :goto_0
    iget v1, p0, LV9/i0;->k:I

    invoke-virtual {v0, v1, p1}, Lr2/h0;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LV9/E;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, LV9/E;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget p1, p0, LV9/i0;->k:I

    invoke-virtual {v0, p1}, Lr2/h0;->o(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "top_bar"

    const-string v1, "attr_video_quality"

    const-string v2, "click"

    invoke-static {v1, p1, v2, v0}, Liq/d;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xd0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, LV9/i0;->T0([I)V

    return-void
.end method

.method public final S0(ILjava/util/Optional;ZZZZ)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Optional<",
            "Ly3/s;",
            ">;ZZZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-nez p6, :cond_0

    iget-object v3, v0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    invoke-virtual {v3, v2}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;->setItemAnimator(Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$e;)V

    goto :goto_0

    :cond_0
    iget-object v3, v0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    iget-object v4, v0, LV9/i0;->J:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;

    invoke-virtual {v3, v4}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;->setItemAnimator(Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$e;)V

    :goto_0
    iget-boolean v3, v0, LV9/i0;->M:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, LV9/i0;->k:I

    const/16 v6, 0xa2

    if-ne v3, v6, :cond_1

    goto :goto_2

    :cond_1
    move v6, v4

    :goto_1
    move-object/from16 v3, p2

    goto :goto_3

    :cond_2
    :goto_2
    move v6, v5

    goto :goto_1

    :goto_3
    invoke-virtual {v0, v1, v3, v6}, LV9/i0;->a0(ILjava/util/Optional;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x4

    const-class v8, Lu2/t;

    if-nez v6, :cond_a

    move v6, v4

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_4

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La5/i;

    iget v10, v9, La5/i;->a:I

    const/16 v11, 0x11

    if-ne v10, v11, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    move-object v9, v2

    :goto_5
    iget v6, v0, LV9/i0;->k:I

    const/16 v10, 0xa8

    if-ne v6, v10, :cond_5

    goto :goto_6

    :cond_5
    if-nez v9, :cond_7

    iget-boolean v10, v0, LV9/i0;->M:Z

    if-eqz v10, :cond_6

    const/16 v10, 0xb7

    if-ne v6, v10, :cond_7

    sget-object v6, LJe/c$b;->a:LJe/c;

    iget-object v6, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->C4()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_6

    :cond_6
    iget-object v6, v0, LV9/i0;->r:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/k;

    iput-object v6, v0, LV9/i0;->o:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$j;

    iget-object v9, v0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    invoke-virtual {v9, v6}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;->setLayoutManager(Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$j;)V

    iput v5, v0, LV9/i0;->q:I

    iget-object v6, v0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, v0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v6

    invoke-virtual {v6, v8}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, LF1/C1;

    const/4 v8, 0x2

    invoke-direct {v7, v0, v8}, LF1/C1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_7

    :cond_7
    :goto_6
    iget-object v6, v0, LV9/i0;->p:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/j;

    iput-object v6, v0, LV9/i0;->o:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$j;

    iget-object v7, v0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    invoke-virtual {v7, v6}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;->setLayoutManager(Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$j;)V

    iput v4, v0, LV9/i0;->q:I

    iget-object v6, v0, LV9/i0;->I:LZ9/r;

    invoke-virtual {v6}, LZ9/r;->a()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v0, LV9/i0;->t:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/expandview/TopBarExpandView;

    if-eqz v6, :cond_9

    iget-boolean v7, v0, LV9/i0;->M:Z

    if-nez v7, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, LU6/c;->h()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/android/camera/data/data/j;->F1()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, LU6/c;->j()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, v0, LV9/i0;->k:I

    const/16 v7, 0xbe

    if-eq v6, v7, :cond_9

    :cond_8
    iget v6, v0, LV9/i0;->k:I

    const/16 v7, 0xfd

    if-eq v6, v7, :cond_9

    iget-object v6, v0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    iget-object v7, v0, LV9/i0;->j:LV9/a;

    invoke-virtual {v7, v5, v4, v6}, Lcom/android/camera/fragment/h;->animateViews(IZLandroid/view/View;)V

    :cond_9
    iget-object v6, v0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, v0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v6

    invoke-virtual {v6, v8}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, LP9/f;

    const/4 v8, 0x1

    invoke-direct {v7, v0, v8}, LP9/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_7

    :cond_a
    iget-object v6, v0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, v0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v6

    invoke-virtual {v6, v8}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, LC4/z;

    const/4 v8, 0x5

    invoke-direct {v7, v0, v8}, LC4/z;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_7
    iget-object v6, v0, LV9/i0;->s:LZ9/p;

    if-eqz v6, :cond_3e

    iput v1, v6, LZ9/p;->f:I

    iget v1, v0, LV9/i0;->q:I

    iput v1, v6, LZ9/p;->g:I

    iget-object v7, v6, LZ9/p;->b:Ljava/lang/String;

    const-class v8, Lv2/x0;

    if-eqz p3, :cond_25

    invoke-static {v3}, LZ9/p;->e(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, LGg/W;

    const/4 v12, 0x1

    invoke-direct {v11, v6, v12}, LGg/W;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    invoke-static {v10}, Lr2/v;->a(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object v10

    goto :goto_8

    :cond_b
    move-object v10, v2

    :goto_8
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10}, LZ9/p;->e(Ljava/util/List;)Z

    move-result v12

    iget-object v13, v6, LZ9/p;->e:Ljava/util/ArrayList;

    if-nez v12, :cond_d

    invoke-static {v13}, LZ9/p;->e(Ljava/util/List;)Z

    move-result v12

    if-nez v12, :cond_d

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La5/i;

    invoke-static {v13, v12}, LZ9/p;->b(Ljava/util/ArrayList;La5/i;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v12

    invoke-virtual {v12, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lv2/x0;

    invoke-static {v13}, LZ9/p;->e(Ljava/util/List;)Z

    move-result v14

    if-nez v14, :cond_24

    move v14, v4

    :goto_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_24

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, La5/i;

    iget v2, v15, La5/i;->c:I

    iget v5, v6, LZ9/p;->i:I

    if-ne v2, v5, :cond_e

    :goto_b
    move-object/from16 v17, v3

    move-object/from16 v20, v6

    move-object/from16 v19, v8

    move-object/from16 p3, v11

    move-object/from16 v18, v13

    goto/16 :goto_13

    :cond_e
    invoke-static {v11, v15}, LZ9/p;->b(Ljava/util/ArrayList;La5/i;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v10, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b

    :cond_f
    iget v2, v6, LZ9/p;->f:I

    iget-object v5, v15, La5/i;->g:La5/i$c;

    invoke-interface {v5, v2}, La5/i$c;->b(I)La5/j;

    move-result-object v2

    iget v2, v2, La5/j;->a:I

    iget v9, v6, LZ9/p;->f:I

    invoke-interface {v5, v9}, La5/i$c;->b(I)La5/j;

    move-result-object v5

    iget v5, v5, La5/j;->e:I

    iget v9, v15, La5/i;->c:I

    invoke-virtual {v12, v9}, Lv2/x0;->m(I)I

    move-result v1

    invoke-virtual {v12, v9}, Lv2/x0;->n(I)I

    move-result v4

    move-object/from16 v17, v3

    iget-object v3, v12, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    move-object/from16 p3, v11

    const-string v11, "configItem = "

    move-object/from16 v18, v13

    const-string v13, " lastImageId = "

    move-object/from16 v19, v8

    const-string v8, " lastAnimId = "

    invoke-static {v9, v1, v11, v13, v8}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " newImageId = "

    const-string v13, " newAnimId = "

    invoke-static {v8, v4, v11, v2, v13}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    new-array v13, v11, [Ljava/lang/Object;

    invoke-static {v3, v8, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, -0x1

    if-ne v1, v3, :cond_12

    if-ne v4, v3, :cond_12

    if-lez v2, :cond_10

    invoke-virtual {v12, v9, v2}, Lv2/x0;->o(II)V

    :cond_10
    if-lez v5, :cond_11

    invoke-virtual {v12, v9, v5}, Lv2/x0;->p(II)V

    :cond_11
    :goto_c
    move-object/from16 v20, v6

    const/4 v1, 0x0

    goto/16 :goto_12

    :cond_12
    if-lez v2, :cond_13

    if-ne v2, v1, :cond_13

    goto :goto_c

    :cond_13
    if-lez v5, :cond_14

    if-ne v5, v4, :cond_14

    goto :goto_c

    :cond_14
    if-lez v2, :cond_16

    if-lez v4, :cond_16

    iget-object v3, v12, Lv2/x0;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, -0x1

    invoke-virtual {v12, v9, v3}, Lv2/x0;->p(II)V

    goto :goto_d

    :cond_15
    const/4 v3, -0x1

    goto :goto_d

    :cond_16
    const/4 v3, -0x1

    if-lez v5, :cond_17

    if-lez v1, :cond_17

    iget-object v8, v12, Lv2/x0;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {v12, v9, v3}, Lv2/x0;->o(II)V

    :cond_17
    :goto_d
    if-gtz v5, :cond_18

    const/4 v3, 0x1

    goto :goto_e

    :cond_18
    const/4 v3, 0x0

    :goto_e
    const/16 v8, 0xc1

    if-eq v9, v8, :cond_1b

    const/16 v8, 0xd8

    if-eq v9, v8, :cond_19

    move v1, v3

    move-object/from16 v20, v6

    goto :goto_11

    :cond_19
    move-object/from16 v20, v6

    :cond_1a
    :goto_f
    const/4 v1, 0x0

    goto :goto_11

    :cond_1b
    sget-object v3, LX6/i;->a:LX6/j;

    const-string v8, "0"

    invoke-interface {v3, v8}, LX6/j;->z0(Ljava/lang/String;)I

    move-result v11

    const-string v13, "2"

    move-object/from16 v20, v6

    invoke-interface {v3, v13}, LX6/j;->z0(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v8}, LX6/j;->X(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v13}, LX6/j;->X(Ljava/lang/String;)I

    move-result v3

    if-lez v5, :cond_1d

    if-ne v8, v1, :cond_1c

    if-eq v11, v5, :cond_1a

    :cond_1c
    if-ne v3, v1, :cond_1d

    if-eq v6, v5, :cond_1a

    :cond_1d
    if-lez v2, :cond_1f

    if-ne v11, v4, :cond_1e

    if-eq v8, v2, :cond_1a

    :cond_1e
    if-ne v6, v4, :cond_1f

    if-ne v3, v2, :cond_1f

    :goto_10
    goto :goto_f

    :cond_1f
    if-ne v6, v4, :cond_20

    if-eq v11, v5, :cond_1a

    :cond_20
    if-ne v11, v4, :cond_21

    if-ne v6, v5, :cond_21

    goto :goto_10

    :cond_21
    const/4 v1, 0x1

    :goto_11
    if-lez v2, :cond_22

    invoke-virtual {v12, v9}, Lv2/x0;->m(I)I

    move-result v3

    iput v3, v12, Lv2/x0;->e:I

    invoke-virtual {v12, v9, v2}, Lv2/x0;->o(II)V

    :cond_22
    :goto_12
    if-eqz v1, :cond_23

    invoke-virtual {v10, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_23
    :goto_13
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, p3

    move-object/from16 v3, v17

    move-object/from16 v13, v18

    move-object/from16 v8, v19

    move-object/from16 v6, v20

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_a

    :cond_24
    move-object/from16 v17, v3

    move-object/from16 v20, v6

    move-object/from16 v19, v8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setData: removedItems="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_25
    move-object/from16 v17, v3

    move-object/from16 v20, v6

    move-object/from16 v19, v8

    const/4 v10, 0x0

    :goto_14
    if-eqz p4, :cond_29

    iget-object v1, v0, LV9/i0;->s:LZ9/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, LZ9/p;->e(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, LZ9/i;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, LZ9/i;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_15

    :cond_26
    const/4 v2, 0x0

    :goto_15
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v2}, LZ9/p;->e(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_28

    const/4 v4, 0x0

    :goto_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_28

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La5/i;

    iget-object v6, v1, LZ9/p;->e:Ljava/util/ArrayList;

    invoke-static {v6, v5}, LZ9/p;->b(Ljava/util/ArrayList;La5/i;)Z

    move-result v6

    if-nez v6, :cond_27

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setData: insertedItems="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v1, v1, LZ9/p;->b:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :cond_29
    const/4 v3, 0x0

    :goto_17
    if-eqz p5, :cond_2d

    iget-object v1, v0, LV9/i0;->s:LZ9/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, LZ9/p;->e(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, LZ9/k;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, LZ9/k;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_18

    :cond_2a
    const/4 v2, 0x0

    :goto_18
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v2}, LZ9/p;->e(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_2c

    iget-object v5, v1, LZ9/p;->e:Ljava/util/ArrayList;

    invoke-static {v5}, LZ9/p;->e(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_2c

    const/4 v6, 0x0

    :goto_19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2c

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La5/i;

    iget v8, v8, La5/i;->c:I

    const/16 v9, 0xd8

    if-eq v8, v9, :cond_2b

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La5/i;

    invoke-static {v5, v8}, LZ9/p;->b(Ljava/util/ArrayList;La5/i;)Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La5/i;

    invoke-virtual {v4, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setData: sameItems="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v1, v1, LZ9/p;->b:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v4

    :goto_1a
    move-object/from16 v1, v20

    goto :goto_1b

    :cond_2d
    const/4 v2, 0x0

    goto :goto_1a

    :goto_1b
    iget-object v4, v1, LZ9/p;->e:Ljava/util/ArrayList;

    const-string v5, "Adapter notifyItemInserted"

    const-string v6, "TopBarView_inserted_item"

    iget-object v8, v1, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$b;->a:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$c;

    if-eqz v10, :cond_32

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-eqz v9, :cond_32

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-lez v9, :cond_31

    const/4 v9, 0x0

    :goto_1c
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v9, v11, :cond_31

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La5/i;

    const/4 v13, 0x0

    :goto_1d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_2f

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, La5/i;

    invoke-virtual {v14, v12}, La5/i;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e

    move v11, v13

    goto :goto_1e

    :cond_2e
    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    :cond_2f
    :goto_1e
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v13

    move-object/from16 v14, v19

    invoke-virtual {v13, v14}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v13

    new-instance v15, LB4/j;

    move/from16 v16, v9

    const/16 v9, 0xa

    invoke-direct {v15, v12, v9}, LB4/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v13, v15}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/16 v9, 0xd8

    invoke-static {v9}, LV9/M5;->D(I)La5/i;

    move-result-object v13

    iget v15, v12, La5/i;->a:I

    iput v15, v13, La5/i;->a:I

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v15, v1, LZ9/p;->m:Ljava/util/ArrayList;

    iget v9, v12, La5/i;->c:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v11}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$b;->a(I)V

    invoke-virtual {v1, v12}, LZ9/p;->f(La5/i;)Z

    move-result v9

    if-nez v9, :cond_30

    invoke-virtual {v4, v11, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v9, 0x0

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v6, v5, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v11}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$c;->c(I)V

    :cond_30
    add-int/lit8 v9, v16, 0x1

    move-object/from16 v19, v14

    goto :goto_1c

    :cond_31
    move-object/from16 v14, v19

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setData: <afterDisappearData>mSupportedTopItems="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f

    :cond_32
    move-object/from16 v14, v19

    :goto_1f
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-eqz v9, :cond_38

    invoke-static {v4}, LZ9/p;->e(Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_37

    const/4 v9, 0x0

    :goto_20
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_37

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La5/i;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-eqz v11, :cond_35

    if-nez v10, :cond_33

    goto :goto_22

    :cond_33
    const/4 v11, 0x0

    :goto_21
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_35

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, La5/i;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    goto :goto_23

    :cond_34
    add-int/lit8 v11, v11, 0x1

    goto :goto_21

    :cond_35
    :goto_22
    const/4 v10, -0x1

    :goto_23
    if-ltz v10, :cond_36

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La5/i;

    invoke-virtual {v4, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x0

    new-array v10, v11, [Ljava/lang/Object;

    const-string v11, "TopBarView_changed_item"

    const-string v12, "Adapter notifyItemChanged"

    invoke-static {v11, v12, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$c;->b(I)V

    :cond_36
    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setData: <afterUpdateData>mSupportedTopItems="

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v7, v2, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_38
    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_3e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setData: mode:"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v1, LZ9/p;->f:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v7, v2, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_3d

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2, v14}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/x0;

    const/4 v11, 0x0

    :goto_24
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v11, v9, :cond_3d

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La5/i;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La5/i;

    iget-object v12, v12, La5/i;->g:La5/i$c;

    iget v13, v1, LZ9/p;->f:I

    invoke-interface {v12, v13}, La5/i$c;->b(I)La5/j;

    move-result-object v12

    iget v13, v10, La5/i;->c:I

    iget v14, v12, La5/j;->a:I

    iget v12, v12, La5/j;->e:I

    if-lez v12, :cond_3a

    iget-object v14, v2, Lv2/x0;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v14

    if-eqz v14, :cond_39

    const/4 v15, -0x1

    invoke-virtual {v2, v13, v15}, Lv2/x0;->o(II)V

    goto :goto_25

    :cond_39
    const/4 v15, -0x1

    :goto_25
    invoke-virtual {v2, v13, v12}, Lv2/x0;->p(II)V

    goto :goto_26

    :cond_3a
    const/4 v15, -0x1

    iget-object v12, v2, Lv2/x0;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    if-eqz v12, :cond_3b

    invoke-virtual {v2, v13, v15}, Lv2/x0;->p(II)V

    :cond_3b
    invoke-virtual {v2, v13, v14}, Lv2/x0;->o(II)V

    :goto_26
    invoke-virtual {v1, v10}, LZ9/p;->f(La5/i;)Z

    move-result v12

    if-nez v12, :cond_3c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v9, :cond_3c

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1, v9}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$b;->a(I)V

    :cond_3c
    invoke-virtual {v4, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v10, 0x0

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v6, v5, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$c;->c(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_24

    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setData: <afterNewData>mSupportedTopItems="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3e
    invoke-static {}, LQ6/v;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/T0;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, LF1/T0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final S1()V
    .locals 2

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v0

    check-cast v0, LA2/a$a;

    invoke-virtual {v0}, LA2/a$a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/w;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/w;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lr2/w;->u(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LV9/i0;->p0(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs T0([I)V
    .locals 12

    iget-object v0, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    const-string v1, "FragmentMainTopBar"

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, LV9/i0;->s:LZ9/p;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    array-length v0, p1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_c

    aget v4, p1, v3

    const-string/jumbo v5, "updateConfigItem configItem = "

    invoke-static {v4, v5}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, LV9/i0;->s:LZ9/p;

    iget-object v6, v5, LZ9/p;->e:Ljava/util/ArrayList;

    invoke-static {v6}, LZ9/p;->e(Ljava/util/List;)Z

    move-result v7

    iget-object v8, v5, LZ9/p;->b:Ljava/lang/String;

    if-eqz v7, :cond_1

    const-string/jumbo v5, "support config item is null or empty!"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v8, v5, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    const/4 v7, -0x1

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_2

    goto :goto_2

    :cond_2
    move v9, v2

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La5/i;

    iget v10, v10, La5/i;->c:I

    if-ne v4, v10, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move v9, v7

    :goto_3
    if-ne v9, v7, :cond_5

    goto :goto_4

    :cond_5
    const-string v10, "notifyTopBarItemChanged: "

    invoke-static {v4, v10}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La5/i;

    iget-object v10, v10, La5/i;->g:La5/i$c;

    iget v11, v5, LZ9/p;->f:I

    invoke-interface {v10, v11}, La5/i$c;->b(I)La5/j;

    move-result-object v10

    if-nez v10, :cond_6

    goto :goto_4

    :cond_6
    iget v10, v10, La5/j;->j:I

    if-nez v10, :cond_7

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La5/i;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "applyChange:"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v6, La5/i;->c:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v8, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "TopBarView_changed_item"

    const-string v8, "Adapter notifyItemChanged"

    invoke-static {v7, v8, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v5, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$b;->a:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$c;

    invoke-virtual {v5, v9}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$c;->b(I)V

    goto :goto_4

    :cond_7
    if-ne v9, v7, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5, v9}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$b;->a(I)V

    :goto_4
    sget-object v5, LN6/h$a;->a:LN6/h;

    const-class v6, LQ6/M;

    invoke-virtual {v5, v6}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object v5

    check-cast v5, LQ6/M;

    iget-object v6, p0, LV9/i0;->I:LZ9/r;

    if-eqz v6, :cond_9

    iget v7, p0, LV9/i0;->k:I

    invoke-virtual {v6, v7}, LZ9/r;->b(I)V

    :cond_9
    if-eqz v5, :cond_a

    iget v6, p0, LV9/i0;->k:I

    invoke-interface {v5, v6, p1}, LQ6/M;->Z1(I[I)V

    :cond_a
    iget-object v5, p0, LV9/i0;->c:LV9/h;

    if-eqz v5, :cond_b

    invoke-virtual {v5, v4}, LV9/h;->Hs(I)V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    return-void

    :cond_d
    :goto_5
    const-string/jumbo p0, "updateConfigItem: mTopBarView or mTopBarAdapter is null, skip"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final Tb()V
    .locals 0

    return-void
.end method

.method public final U3()V
    .locals 3

    iget-object v0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FragmentMainTopBar"

    const-string v2, "[VideoSwitch] forceShowMenuIndicator"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, LU1/b;

    iget-object p0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-direct {v0, p0}, LU1/b;-><init>(Landroid/view/View;)V

    invoke-static {v0}, LS1/h;->e(LU1/b;)V

    :cond_0
    return-void
.end method

.method public final U5(Landroid/view/View;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportApertureVersion1"
        type = 0x0
    .end annotation

    const-string v0, "FragmentMainTopBar"

    const-string v1, "onApertureClick"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/h;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/a0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, LV9/a0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final V7(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, LV9/i0;->P:Ljava/util/HashMap;

    const-string v0, "mutex_hdr_quality"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final Wa(Z)Z
    .locals 2

    iget-object v0, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, LV9/i0;->I:LZ9/r;

    invoke-virtual {p0, p1, v1}, LZ9/r;->c(ZZ)Z

    move-result p0

    return p0
.end method

.method public final X()Lo5/q;
    .locals 8

    iget v0, p0, LV9/i0;->k:I

    const/16 v1, 0xa4

    const-string v2, "getTopAlert(): fragment is not added yet"

    const-string v3, "getTopAlert(): fragment is null"

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, LV9/i0;->j:LV9/a;

    const-string v7, "FragmentMainTopBar"

    if-eq v0, v1, :cond_2

    iget-object v0, p0, LV9/i0;->b:Lo5/q;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v7, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v7, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_1
    iget-object p0, p0, LV9/i0;->b:Lo5/q;

    return-object p0

    :cond_2
    iget-object v0, p0, LV9/i0;->c:LV9/h;

    if-nez v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v7, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v7, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_4
    iget-object p0, p0, LV9/i0;->c:LV9/h;

    return-object p0
.end method

.method public final Xd(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    const-class v1, Lt2/g;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/g;

    iget v1, p0, LV9/i0;->k:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, LV9/i0;->k:I

    invoke-virtual {v0, v2}, Lt2/g;->m(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onMiLiveVideoQualityClick: current quality:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",next quality:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentMainTopBar"

    invoke-static {v3, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LQ6/C;->b()LQ6/C;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0xbb

    invoke-interface {v1, v2, v0}, LQ6/C;->o4(ILjava/lang/String;)V

    :cond_1
    sget-object v0, LF1/D2;->f:LF1/D2;

    iget-boolean v0, v0, LF1/D2;->d:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    new-instance v0, LI2/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, LI2/o;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final Ze(Landroid/view/View;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDualVideo"
        type = 0x0
    .end annotation

    const-string v0, "FragmentMainTopBar"

    const-string v1, "onDualVideoRecordTypeClick"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/C;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/P;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, LV9/P;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a0(ILjava/util/Optional;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Optional<",
            "Ly3/s;",
            ">;Z)",
            "Ljava/util/List<",
            "La5/i;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    const-string v1, "getTopConfigItemList: newMode = "

    const-string v2, " force = "

    const-string v3, "   "

    invoke-static {v1, p3, v2, p1, v3}, LZ1/c;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2, v1}, LF1/r0;->g(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "FragmentMainTopBar"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, LE3/s;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v1, v5}, LE3/s;-><init>(LN6/a;Ljava/lang/Object;I)V

    invoke-virtual {p2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, LJe/c;->B1()V

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, LV9/A;

    invoke-direct {v5, v2}, LV9/A;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xfe

    if-ne p1, v3, :cond_1

    :goto_0
    return-object v1

    :cond_1
    if-nez p3, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/j;->F1()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, LK2/b;->b0()Z

    move-result p3

    if-eqz p3, :cond_4

    iget p0, p0, LV9/i0;->k:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, LK2/b;->a0()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0xc5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p0, LI4/o;

    invoke-direct {p0, v0}, LI4/o;-><init>(I)V

    invoke-virtual {p2, p0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, LV9/C;

    invoke-direct {p2, p1, v2}, LV9/C;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lr2/v;->a(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p3

    const-class v0, Lu2/t;

    invoke-virtual {p3, v0}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p3

    new-instance v0, LV9/D;

    invoke-direct {v0, p0, p1, v1, p2}, LV9/D;-><init>(LV9/i0;ILjava/util/ArrayList;Ljava/util/Optional;)V

    invoke-virtual {p3, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LJe/d;->d()Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, LF1/d1;

    const/4 p1, 0x2

    invoke-direct {p0, v1, p1}, LF1/d1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    const-string p0, "getTopConfigItemList: topConfigItems = "

    invoke-static {p0, v1}, LF1/b0;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_6
    :goto_1
    new-instance p1, LI4/o;

    invoke-direct {p1, v0}, LI4/o;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget p0, p0, LV9/i0;->k:I

    invoke-static {p0}, Lcom/android/camera/data/data/m;->A(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, LV9/B;

    invoke-direct {p2, p0, v2}, LV9/B;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lr2/v;->a(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getTopConfigItemList: configItems = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v4, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public final ad(Landroid/view/View;)V
    .locals 3

    const-string v0, "FragmentMainTopBar"

    const-string v1, "onMeterClick"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/F;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/c0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, LV9/c0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v0, LF1/D2;->f:LF1/D2;

    iget-boolean v0, v0, LF1/D2;->d:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, LV9/d0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, LV9/d0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final b9(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    iget-object v0, v0, Lr2/f0;->h:Lr2/g0;

    iget-object v1, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/camera/data/data/y;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xae

    invoke-virtual {p0, v0, p1, v1}, LV9/i0;->Li(Lcom/android/camera/data/data/c;Landroid/view/View;I)V

    return-void

    :cond_0
    sget-object v1, LF1/D2;->f:LF1/D2;

    iget-boolean v1, v1, LF1/D2;->d:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    new-instance v1, LC3/l;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, LC3/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget p1, p0, LV9/i0;->k:I

    invoke-virtual {v0, p1}, Lr2/g0;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LV9/i0;->G1(Ljava/lang/String;)V

    return-void
.end method

.method public final canProvide()Z
    .locals 0

    iget-object p0, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    return p0
.end method

.method public final cf()V
    .locals 4

    iget-object v0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    if-eqz v0, :cond_2

    iget-object v1, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1400c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v0, LF1/D2;->f:LF1/D2;

    iget-boolean v0, v0, LF1/D2;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    if-eqz v0, :cond_0

    new-instance v1, LS8/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LS8/h;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object p0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    iget v0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->k()Lp9/J;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lo9/b;->k()Lp9/J;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;->p(Z)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    iget v1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;->r:I

    invoke-static {v1}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;->m(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expand: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "MenuIndicatorView"

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;->o()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final dj()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final varargs ga([IZ)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    iget-object v3, p0, LV9/i0;->s:LZ9/p;

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, LZ9/p;->c(Ljava/lang/Integer;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v2}, LV9/i0;->h0(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, LU1/b;->e(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final h0(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La5/i;

    if-eqz v2, :cond_0

    iget v2, v2, La5/i;->c:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, La5/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La5/i;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    iget v0, v0, La5/i;->c:I

    if-ne v0, p1, :cond_3

    iget-object p0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    return-object p0

    :cond_3
    return-object v1
.end method

.method public final isEnableClick()Z
    .locals 0

    iget-boolean p0, p0, LV9/i0;->m:Z

    return p0
.end method

.method public final kb()Z
    .locals 0

    iget-object p0, p0, LV9/i0;->t:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/expandview/TopBarExpandView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final varargs l0(IZ[I)V
    .locals 6

    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget v4, p3, v2

    const/16 v5, 0xc5

    if-ne v4, v5, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p3, p0, LV9/i0;->j:LV9/a;

    if-nez p1, :cond_2

    iget-object p1, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    iget-object p0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {p3, v3, p2, p0}, Lcom/android/camera/fragment/h;->animateViews(IZLandroid/view/View;)V

    return-void

    :cond_2
    iget-object p0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    if-eqz p0, :cond_3

    if-nez v1, :cond_3

    const/4 p1, -0x1

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/camera/fragment/h;->animateViews(IZLandroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final ma()V
    .locals 0

    iget-object p0, p0, LV9/i0;->b:Lo5/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lo5/q;->ma()V

    :cond_0
    return-void
.end method

.method public final n3()Z
    .locals 3

    iget-object p0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;->r:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v2, 0x4

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v0
.end method

.method public final needViewClear()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public final notifyAfterFrameAvailable(I)V
    .locals 8

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/x0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/x0;

    invoke-virtual {v0}, Lv2/x0;->r()V

    iget v2, p0, LV9/i0;->k:I

    iget-object v0, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {v0}, LV9/a;->Mq()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, LV9/i0;->S0(ILjava/util/Optional;ZZZZ)V

    invoke-virtual {v1}, LV9/i0;->X()Lo5/q;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LF1/g;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, LF1/g;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lo5/q;->notifyAfterFrameAvailable(I)V

    :cond_0
    iget p0, v1, LV9/i0;->k:I

    const/16 v2, 0xa2

    const/16 v3, 0xfe

    if-eq p0, v3, :cond_2

    const/16 v4, 0xd1

    if-eq p0, v4, :cond_2

    const/16 v4, 0xd2

    if-eq p0, v4, :cond_2

    const/16 v4, 0xa4

    if-eq p0, v4, :cond_2

    invoke-virtual {v1}, LV9/i0;->X()Lo5/q;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/16 p0, 0x8

    if-eq p1, p0, :cond_1

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LCs/f;

    const/4 v4, 0x7

    invoke-direct {p1, v4}, LCs/f;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/z2;

    const/4 v4, 0x3

    invoke-direct {p1, v4}, LF1/z2;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget p0, v1, LV9/i0;->k:I

    if-eq p0, v2, :cond_2

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LH3/m;

    const/4 v4, 0x3

    invoke-direct {p1, v4}, LH3/m;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    iget p0, v1, LV9/i0;->k:I

    if-eq p0, v2, :cond_3

    const/16 p1, 0xa3

    if-ne p0, p1, :cond_4

    :cond_3
    const/16 p0, 0xc1

    const/16 p1, 0xef

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-virtual {v1, p0}, LV9/i0;->T0([I)V

    :cond_4
    invoke-static {}, LQ6/C;->b()LQ6/C;

    move-result-object p0

    iget p1, v1, LV9/i0;->k:I

    if-eq p1, v3, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {v1, p0}, LV9/i0;->O9(LQ6/C;)V

    :cond_5
    invoke-static {}, LQ6/u1;->b()LQ6/u1;

    move-result-object p0

    invoke-static {}, LQ6/G;->b()LQ6/G;

    move-result-object p1

    invoke-static {}, Lrs/d;->b()Lrs/d;

    move-result-object v2

    invoke-static {}, LQ6/Z0;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LF1/R3;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, LF1/R3;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    invoke-static {}, LU6/c;->f()Z

    move-result v3

    if-nez v3, :cond_a

    iget-boolean v3, v1, LV9/i0;->i:Z

    if-eqz v3, :cond_6

    if-eqz p0, :cond_6

    invoke-interface {p0}, LQ6/u1;->mq()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-interface {p0}, LQ6/u1;->u9()Z

    move-result p0

    if-nez p0, :cond_a

    new-array p0, v4, [I

    invoke-virtual {v1, p0, v4}, LV9/i0;->Eo([IZ)V

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    invoke-interface {p1}, LQ6/G;->sb()Z

    move-result p0

    if-nez p0, :cond_a

    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lrs/d;->isShowing()Z

    move-result p0

    if-nez p0, :cond_a

    :cond_8
    invoke-static {}, LK2/b;->a0()Z

    move-result p0

    if-eqz p0, :cond_9

    iget p0, v1, LV9/i0;->k:I

    invoke-static {p0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result p0

    if-nez p0, :cond_a

    :cond_9
    const/16 p0, 0xd9

    const/16 p1, 0xbb

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-virtual {v1, p0, v4}, LV9/i0;->Eo([IZ)V

    :cond_a
    :goto_0
    iget p0, v1, LV9/i0;->k:I

    const/16 p1, 0xa8

    if-ne p0, p1, :cond_b

    invoke-virtual {v1, v4}, LV9/i0;->sk(Z)V

    :cond_b
    iget p0, v1, LV9/i0;->k:I

    invoke-static {p0}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, LQ6/L0;->b()LQ6/L0;

    move-result-object p1

    invoke-interface {p1, p0}, LQ6/L0;->A3(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    new-array p0, v4, [I

    invoke-virtual {v1, p0, v4}, LV9/i0;->Cp([IZ)V

    iget-object p0, v1, LV9/i0;->N:Lcom/android/camera/data/observeable/VMFeature;

    if-nez p0, :cond_c

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object p0

    const-class p1, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {p0, p1}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/observeable/VMFeature;

    iput-object p0, v1, LV9/i0;->N:Lcom/android/camera/data/observeable/VMFeature;

    new-instance p1, LV9/v;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, LV9/v;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/observeable/VMFeature;->startObservable(Landroidx/lifecycle/x;Lio/reactivex/functions/d;)V

    :cond_c
    return-void
.end method

.method public final notifyDataChanged(II)V
    .locals 3

    const-string v0, "notifyDataChanged currentMode = "

    invoke-static {p2, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FragmentMainTopBar"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/x0;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH3/p;

    invoke-direct {v1, p1}, LH3/p;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {p1}, Lcom/android/camera/fragment/h;->getResetType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, LV9/i0;->provideAnimateElement(ILjava/util/List;I)V

    :cond_0
    const/16 p1, 0xa2

    if-eq p2, p1, :cond_1

    const/16 p1, 0xe3

    if-ne p2, p1, :cond_2

    :cond_1
    const/16 p1, 0xb20

    const/16 v0, 0xb2

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, LV9/i0;->T0([I)V

    :cond_2
    const/16 p1, 0xcc

    const/16 v0, 0xce

    if-eq p2, p1, :cond_3

    if-ne p2, v0, :cond_4

    :cond_3
    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    invoke-virtual {p1}, LJe/c;->I0()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x201

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, LV9/i0;->T0([I)V

    :cond_4
    const/16 p1, 0xa3

    if-ne p2, p1, :cond_5

    const/16 p1, 0xc9

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, LV9/i0;->T0([I)V

    :cond_5
    const/16 p1, 0xab

    const/16 v0, 0xcd

    if-ne p2, p1, :cond_6

    filled-new-array {v0}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, LV9/i0;->T0([I)V

    :cond_6
    invoke-virtual {p0}, LV9/i0;->q()V

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object p1

    const-class p2, LFs/A;

    invoke-virtual {p1, p2}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object p1

    check-cast p1, LFs/A;

    invoke-virtual {p1}, LFs/A;->c()Z

    move-result p1

    const/16 p2, 0xc1

    if-nez p1, :cond_7

    const/16 p1, 0xcf

    const/16 v1, 0xef

    filled-new-array {p1, v0, p2, v1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, LV9/i0;->T0([I)V

    :cond_7
    iget-object p0, p0, LV9/i0;->c:LV9/h;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p2}, LV9/h;->Hs(I)V

    :cond_8
    return-void
.end method

.method public final notifyPreviewRectChange(LZ5/h;Landroid/graphics/Rect;FLZ5/p;)V
    .locals 1

    iget-object v0, p0, LV9/i0;->b:Lo5/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/camera/base/ui/fragments/d;->canProvide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LV9/i0;->b:Lo5/q;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo5/q;->notifyPreviewRectChange(LZ5/h;Landroid/graphics/Rect;FLZ5/p;)V

    :cond_0
    return-void
.end method

.method public final notifyThemeChanged(II)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFlashScreenHalo"
        type = 0x0
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FragmentMainTopBar"

    const-string v3, "notifyThemeChanged"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {v1}, LV9/a;->Mq()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v8}, LV9/i0;->S0(ILjava/util/Optional;ZZZZ)V

    goto :goto_0

    :cond_0
    move-object v2, p0

    move v3, p1

    :goto_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class p1, Lv2/F0;

    invoke-virtual {p0, p1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/F0;

    iget-object p0, p0, Lv2/F0;->b:Lv2/G0;

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v2, p0, v1, v3, p1}, LV9/i0;->v(Lv2/G0;Ljava/util/List;II)V

    :cond_1
    iget-object p0, v2, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    if-eqz p0, :cond_4

    iget v1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;->r:I

    if-eq v1, p1, :cond_2

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    :cond_2
    move v0, p1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;->p(Z)V

    :cond_4
    iget-object p0, v2, LV9/i0;->I:LZ9/r;

    if-eqz p0, :cond_5

    iget p1, v2, LV9/i0;->k:I

    invoke-virtual {p0, p1}, LZ9/r;->b(I)V

    :cond_5
    invoke-virtual {v2}, LV9/i0;->X()Lo5/q;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0, v3, p2}, Lo5/q;->notifyThemeChanged(II)V

    :cond_6
    return-void
.end method

.method public final onBackEvent(I)Z
    .locals 5

    iget-object v0, p0, LV9/i0;->I:LZ9/r;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v1}, LZ9/r;->c(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, LV9/i0;->k:I

    const/16 v2, 0xbc

    if-ne v0, v2, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/b1;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, LF1/b1;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-virtual {p0}, LV9/i0;->X()Lo5/q;

    move-result-object v0

    iget p0, p0, LV9/i0;->k:I

    const/16 v2, 0xb4

    const/4 v3, 0x0

    if-eq p0, v2, :cond_2

    const/16 v2, 0xa4

    if-ne p0, v2, :cond_5

    :cond_2
    invoke-static {}, Lcom/android/camera/data/data/w;->e0()Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lo5/q;->Ar()Lcom/android/camera/AudioMapMove;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    goto :goto_0

    :cond_3
    move p0, v3

    :goto_0
    const/16 v2, 0x8

    if-ne p0, v2, :cond_5

    iget-object p0, v0, Lo5/q;->x0:Landroid/os/Handler;

    iget-object v4, v0, Lo5/q;->c1:Lo5/q$m;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lo5/q;->is()V

    iget-object p0, v0, Lo5/q;->U0:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {v0}, Lo5/q;->Vr()Lcom/android/camera/VolumeControlPanel;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Lo5/q;->us(Z)V

    invoke-virtual {v0, v1}, Lo5/q;->ts(Z)V

    :cond_6
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LV9/L;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LV9/L;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x4

    if-eq p1, p0, :cond_7

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LFs/h;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, LFs/h;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v3

    :cond_7
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/F;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, LEs/F;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_8
    return v3
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La5/i;

    invoke-virtual {p0}, LV9/i0;->L()[I

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LV9/i0;->L()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v3, LV9/r;

    invoke-direct {v3, v0}, LV9/r;-><init>(La5/i;)V

    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {}, LU6/c;->b()Z

    move-result v3

    const-string v4, "FragmentMainTopBar"

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    const-string p0, "TopBar onClick: doing action"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-boolean v1, p0, LV9/i0;->m:Z

    if-nez v1, :cond_2

    const-string p0, "TopBar onClick: disable click"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, LU6/c;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "TopBar onClick: isPrepareRecording"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LF1/h;

    const/4 v5, 0x3

    invoke-direct {v3, v5}, LF1/h;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, LV6/c;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v5, LH8/r;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, LH8/r;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object v1, p0, LV9/i0;->I:LZ9/r;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, LZ9/r;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "TopBar onClick: item animate running"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    sget-object v1, LN6/h$a;->a:LN6/h;

    const-class v3, LQ6/p1;

    invoke-virtual {v1, v3}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo p0, "top editor running"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    if-eqz v0, :cond_c

    iget v1, v0, La5/i;->c:I

    const/16 v2, 0xd7

    if-ne v1, v2, :cond_7

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/camera/features/mode/capture/j;

    const/4 v3, 0x1

    const/16 v4, 0xd7

    invoke-direct {v2, v4, v3}, Lcom/android/camera/features/mode/capture/j;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_7
    invoke-static {}, LQ5/M;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LC4/p;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, LC4/p;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b06d2

    iget-object v3, v0, La5/i;->i:Landroid/view/View$OnClickListener;

    if-ne v2, v1, :cond_9

    iget-object p0, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_c

    invoke-interface {v3, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    :cond_9
    iget-object v1, p0, LV9/i0;->s:LZ9/p;

    if-eqz v1, :cond_a

    iget v2, v0, La5/i;->c:I

    const/16 v4, 0xd9

    if-eq v2, v4, :cond_a

    const/16 v4, 0xea

    if-eq v2, v4, :cond_a

    iput v2, v1, LZ9/p;->i:I

    :cond_a
    if-eqz v3, :cond_b

    const/4 v1, 0x1

    iput-boolean v1, v0, La5/i;->e:Z

    invoke-interface {v3, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-static {}, LV6/c;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LC4/q;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LC4/q;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_b
    iget-object p0, p0, LV9/i0;->s:LZ9/p;

    if-eqz p0, :cond_c

    const/16 p1, 0xb0

    iput p1, p0, LZ9/p;->i:I

    :cond_c
    :goto_1
    return-void

    :cond_d
    :goto_2
    const-string p0, "TopBar onClick: disable click, cuz zooming condition"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onLayoutChange(LZ5/h;LZ5/h;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    sget-object v0, Lf2/a;->f:Lf2/a;

    iget-boolean v0, v0, Lf2/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {v0}, LV9/a;->Mq()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v2, p0, LV9/i0;->k:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, LV9/i0;->S0(ILjava/util/Optional;ZZZZ)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class v0, LQ6/M;

    invoke-virtual {p0, v0}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object p0

    check-cast p0, LQ6/M;

    if-eqz p0, :cond_1

    invoke-interface {p0}, LQ6/M;->jf()V

    :cond_1
    invoke-virtual {v1}, LV9/i0;->X()Lo5/q;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->canProvide()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/b;->onLayoutChange(LZ5/h;LZ5/h;)V

    :cond_2
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {p1}, LV9/a;->Mq()Ljava/util/Optional;

    move-result-object p1

    iget p0, p0, LV9/i0;->k:I

    invoke-static {p0, p1}, LW9/O;->b(ILjava/util/Optional;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LU6/c;->h()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, LU6/c;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LW9/O;->h()V

    const-string p0, "click"

    const-string/jumbo p1, "top_bar"

    const-string v0, "attr_position_edit"

    const-string/jumbo v1, "topbar"

    invoke-static {v0, v1, p0, p1}, Liq/d;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onShot(Le2/h;)V
    .locals 0

    return-void
.end method

.method public final op(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    iget-object v0, v0, Lr2/f0;->g:Lr2/h0;

    iget-object v1, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/camera/data/data/y;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xad

    invoke-virtual {p0, v0, p1, v1}, LV9/i0;->Li(Lcom/android/camera/data/data/c;Landroid/view/View;I)V

    return-void

    :cond_0
    sget-object v1, LF1/D2;->f:LF1/D2;

    iget-boolean v1, v1, LF1/D2;->d:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    new-instance v1, LC3/j;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, LC3/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget p1, p0, LV9/i0;->k:I

    invoke-virtual {v0, p1}, Lr2/h0;->n(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LV9/i0;->R1(Ljava/lang/String;)V

    return-void
.end method

.method public final p0(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v0

    check-cast v0, LA2/a$a;

    invoke-virtual {v0}, LA2/a$a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/w;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/w;

    iget p0, p0, LV9/i0;->k:I

    invoke-virtual {v0, p0}, Lr2/w;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/p;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, LV9/p;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final p3(Landroid/view/View;)V
    .locals 10

    const-string v0, "off"

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "FragmentMainTopBar"

    const-string v6, "onHdrClick"

    invoke-static {v5, v6}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v5

    const-class v6, Lr2/z;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/z;

    const-class v7, Lr2/w;

    invoke-virtual {v5, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/w;

    invoke-virtual {v6}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Lr2/z;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v7, p0, LV9/i0;->k:I

    invoke-virtual {v6, v7}, Lr2/z;->m(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v8

    new-instance v9, LV9/K;

    invoke-direct {v9, v7, v4}, LV9/K;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget v8, p0, LV9/i0;->k:I

    invoke-virtual {v6, v8, v7}, Lr2/z;->setComponentValue(ILjava/lang/String;)V

    iget v8, p0, LV9/i0;->k:I

    invoke-virtual {v5, v8, v7}, Lr2/w;->N(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xc1

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {p0, v5}, LV9/i0;->T0([I)V

    :cond_1
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v5

    new-instance v8, LV9/M;

    invoke-direct {v8, v7, v4}, LV9/M;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget v5, p0, LV9/i0;->k:I

    invoke-virtual {v6, v5}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_0
    move v3, v2

    goto :goto_1

    :sswitch_0
    const-string v3, "auto"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :sswitch_2
    const-string v3, "on"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1

    :sswitch_3
    const-string v3, "normal"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v4

    :cond_5
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget v2, LQh/e;->tip_hdr_auto:I

    goto :goto_2

    :pswitch_1
    sget v2, LQh/e;->tip_hdr_off:I

    goto :goto_2

    :pswitch_2
    sget v2, LQh/e;->tip_hdr_auto:I

    :goto_2
    iget v3, p0, LV9/i0;->k:I

    invoke-virtual {v6, v3}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LV9/N;

    invoke-direct {v3, v2, v0}, LV9/N;-><init>(IZ)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v0, LF1/D2;->f:LF1/D2;

    iget-boolean v0, v0, LF1/D2;->d:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    new-instance v0, LD8/f;

    invoke-direct {v0, p0, p1}, LD8/f;-><init>(LV9/i0;Landroid/view/View;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    const-string/jumbo p0, "top_bar"

    const-string p1, "attr_hdr"

    const/4 v0, 0x0

    invoke-static {p1, v7, v0, p0}, Liq/d;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3df94319 -> :sswitch_3
        0xddf -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x2dddaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final pj(Z)V
    .locals 8

    iget-object v0, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {v0}, LV9/a;->Mq()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LV9/i0;->s:LZ9/p;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, LV9/i0;->M:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, LZ9/p;->j:Z

    iget v2, p0, LV9/i0;->k:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, LV9/i0;->S0(ILjava/util/Optional;ZZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final provideAnimateElement(ILjava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/b;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v0, "provideAnimateElement mode = "

    const-string v1, " resetType = "

    invoke-static {p1, p3, v0, v1}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FragmentMainTopBar"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {v0}, LV9/a;->Mq()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v2

    const-class v3, LFs/A;

    invoke-virtual {v2, v3}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v2

    check-cast v2, LFs/A;

    invoke-virtual {v2}, LFs/A;->c()Z

    move-result v3

    if-nez v3, :cond_1d

    iget-boolean v2, v2, LFs/A;->j:Z

    if-eqz v2, :cond_1

    goto/16 :goto_5

    :cond_1
    iget v2, p0, LV9/i0;->k:I

    if-eq v2, p1, :cond_3

    const/16 v3, 0xa4

    if-eq v2, v3, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LC4/k;

    const/4 v5, 0x6

    invoke-direct {v3, v5}, LC4/k;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne p3, v2, :cond_4

    move v5, v3

    goto :goto_0

    :cond_4
    move v5, v1

    :goto_0
    if-eqz v5, :cond_5

    new-array v6, v1, [I

    invoke-virtual {p0, v6, v3}, LV9/i0;->Eo([IZ)V

    :cond_5
    iget v6, p0, LV9/i0;->k:I

    if-eq p1, v6, :cond_7

    sget-boolean v6, LJe/c;->k:Z

    sget-object v6, LJe/c$b;->a:LJe/c;

    iget-object v6, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Y4()Z

    move-result v6

    if-eqz v6, :cond_6

    iput-boolean v3, p0, LV9/i0;->d:Z

    :cond_6
    iput-boolean v1, p0, LV9/i0;->M:Z

    :cond_7
    iput p1, p0, LV9/i0;->k:I

    invoke-virtual {v0}, Lcom/xiaomi/camera/base/ui/fragments/d;->isInModeChanging()Z

    move-result v6

    if-nez v6, :cond_8

    if-ne p3, v2, :cond_9

    :cond_8
    iput-boolean v1, p0, LV9/i0;->e:Z

    :cond_9
    const/16 v6, 0x40

    if-eq p3, v6, :cond_a

    const/16 v7, 0x10

    if-ne p3, v7, :cond_b

    :cond_a
    const/4 v2, 0x7

    :cond_b
    invoke-virtual {p0, v2}, LV9/i0;->onBackEvent(I)Z

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v7, Lv2/F0;

    invoke-virtual {v2, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/F0;

    iget-object v2, v2, Lv2/F0;->b:Lv2/G0;

    if-eqz v2, :cond_c

    invoke-virtual {p0, v2, p2, p1, p3}, LV9/i0;->v(Lv2/G0;Ljava/util/List;II)V

    :cond_c
    invoke-virtual {p0}, LV9/i0;->X()Lo5/q;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2, p1, p2, p3}, Lo5/q;->provideAnimateElement(ILjava/util/List;I)V

    :cond_d
    iget-object v2, p0, LV9/i0;->a:Lcom/android/camera2/compat/theme/custom/mm/top/MainTopBarLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v2

    const-class v7, Lw7/c;

    invoke-virtual {v2, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw7/c;

    invoke-virtual {v2}, Lw7/c;->b()Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz v5, :cond_e

    new-array v2, v1, [I

    invoke-virtual {p0, v2, v1}, LV9/i0;->Eo([IZ)V

    :cond_e
    invoke-virtual {v0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v2

    invoke-static {}, LK2/e;->E()Z

    move-result v5

    invoke-virtual {v0}, Lcom/android/camera/fragment/h;->isLeftLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v5, :cond_10

    :cond_f
    iget v0, p0, LV9/i0;->k:I

    invoke-static {v0}, Lcom/android/camera/module/Y;->b(I)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    const/16 v2, 0x5a

    :cond_11
    iget-object v0, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v2}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;->setDegree(I)V

    :cond_12
    invoke-static {}, LQ6/u1;->b()LQ6/u1;

    move-result-object v0

    iget-boolean v2, p0, LV9/i0;->i:Z

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    invoke-interface {v0}, LQ6/u1;->u9()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-interface {v0}, LQ6/u1;->mq()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    new-array v0, v1, [I

    invoke-virtual {p0, v0, v1}, LV9/i0;->Cp([IZ)V

    :cond_14
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-class v2, Lu2/t;

    invoke-virtual {v0, v2}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LV9/q;

    invoke-direct {v2, p0, v4, p1}, LV9/q;-><init>(LV9/i0;Ljava/util/Optional;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x2

    if-eq p3, v0, :cond_16

    if-ne p3, v6, :cond_15

    iget-object v2, p0, LV9/i0;->t:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/expandview/TopBarExpandView;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    move v5, v3

    goto :goto_1

    :cond_16
    move v5, v1

    :goto_1
    const/16 v2, 0x200

    if-eq p3, v2, :cond_18

    if-ne p3, v0, :cond_17

    goto :goto_2

    :cond_17
    move v6, v1

    goto :goto_3

    :cond_18
    :goto_2
    move v6, v3

    :goto_3
    if-eq p3, v2, :cond_19

    if-eq p3, v0, :cond_19

    if-eqz p2, :cond_19

    move v8, v3

    goto :goto_4

    :cond_19
    move v8, v1

    :goto_4
    const/4 v7, 0x1

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v8}, LV9/i0;->S0(ILjava/util/Optional;ZZZZ)V

    invoke-static {}, LK2/b;->a0()Z

    move-result p0

    if-eqz p0, :cond_1a

    iget p0, v2, LV9/i0;->k:I

    invoke-static {p0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result p0

    if-nez p0, :cond_1b

    :cond_1a
    iget p0, v2, LV9/i0;->k:I

    const/16 p1, 0xa8

    if-ne p0, p1, :cond_1c

    :cond_1b
    invoke-virtual {v2, v1}, LV9/i0;->sk(Z)V

    :cond_1c
    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Q6()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/16 p0, 0xb26    # 4.0E-42f

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {v2, p0}, LV9/i0;->T0([I)V

    :cond_1d
    :goto_5
    return-void
.end method

.method public final provideAnimateVisiable(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, LV9/i0;->X()Lo5/q;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lo5/q;->provideAnimateVisiable(ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public final provideRotateItem(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {v0}, Lcom/android/camera/fragment/h;->isLeftLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, LV9/i0;->k:I

    invoke-static {v0}, Lcom/android/camera/module/Y;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    invoke-virtual {v0, p2}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;->setDegree(I)V

    move v0, v1

    :goto_0
    iget-object v2, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, LV9/i0;->n:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, La5/i;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La5/i;

    iget-boolean v3, v3, La5/i;->f:Z

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LV9/i0;->t:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/expandview/TopBarExpandView;

    if-eqz v0, :cond_3

    iget-object v0, p0, LV9/i0;->I:LZ9/r;

    if-eqz v0, :cond_3

    iput p2, v0, LZ9/r;->i:I

    iget-object v0, v0, LZ9/r;->j:Laa/a;

    if-eqz v0, :cond_2

    iput p2, v0, Laa/a;->d:I

    :cond_2
    :goto_1
    iget-object v0, p0, LV9/i0;->t:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/expandview/TopBarExpandView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, LV9/i0;->t:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/expandview/TopBarExpandView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, LV9/i0;->h:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LV9/i0;->X()Lo5/q;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1, p2}, Lo5/q;->provideRotateItem(Ljava/util/List;I)V

    :cond_4
    return-void
.end method

.method public final q()V
    .locals 5

    iget-object v0, p0, LV9/i0;->b:Lo5/q;

    const/4 v1, 0x1

    iget-object v2, p0, LV9/i0;->j:LV9/a;

    if-nez v0, :cond_0

    new-instance v0, Lo5/q;

    invoke-direct {v0}, Lo5/q;-><init>()V

    iput-object v0, p0, LV9/i0;->b:Lo5/q;

    invoke-virtual {v2}, Lcom/android/camera/fragment/b;->getContainerType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/fragment/b;->setContainerType(I)V

    iget-object v0, p0, LV9/i0;->b:Lo5/q;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/b;->setRegisterAuto(Z)V

    :cond_0
    iget v0, p0, LV9/i0;->k:I

    const/16 v3, 0xa4

    const v4, 0x7f0b0b02

    if-ne v0, v3, :cond_2

    iget-object v0, p0, LV9/i0;->c:LV9/h;

    if-nez v0, :cond_1

    new-instance v0, LV9/h;

    invoke-direct {v0}, LV9/h;-><init>()V

    iput-object v0, p0, LV9/i0;->c:LV9/h;

    invoke-virtual {v2}, Lcom/android/camera/fragment/b;->getContainerType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/fragment/b;->setContainerType(I)V

    iget-object v0, p0, LV9/i0;->c:LV9/h;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/b;->setRegisterAuto(Z)V

    :cond_1
    iget-object v0, p0, LV9/i0;->c:LV9/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LV9/i0;->c:LV9/h;

    iput-boolean v1, v0, Lo5/q;->Y:Z

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object v0

    iget-object p0, p0, LV9/i0;->c:LV9/h;

    invoke-virtual {p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, p0, v1}, Lvr/A;->b(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, LV9/i0;->b:Lo5/q;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LV9/i0;->b:Lo5/q;

    iput-boolean v1, v0, Lo5/q;->Y:Z

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object v0

    iget-object p0, p0, LV9/i0;->b:Lo5/q;

    invoke-virtual {p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, p0, v1}, Lvr/A;->b(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final qj()V
    .locals 0

    iget-object p0, p0, LV9/i0;->O:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final registerProtocol()V
    .locals 0

    return-void
.end method

.method public final ri()V
    .locals 1

    iget-object p0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;->setState(I)V

    :cond_0
    return-void
.end method

.method public final rn()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final s9(Landroid/view/View;)V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportCvType"
        type = 0x0
    .end annotation

    const-string v0, "FragmentMainTopBar"

    const-string v1, "onCvClick"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/m;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/m;

    iget v1, p0, LV9/i0;->k:I

    invoke-virtual {v0, v1}, Lr2/m;->q(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, LV9/i0;->k:I

    invoke-static {v1}, Lcom/android/camera/data/data/E;->a(I)V

    invoke-static {}, Lcom/android/camera/data/data/m;->Y0()V

    iget v1, p0, LV9/i0;->k:I

    invoke-virtual {v0, v1, v2}, Lr2/m;->r(IZ)V

    const/4 v2, 0x1

    const-string v1, "1"

    goto :goto_0

    :cond_0
    iget v1, p0, LV9/i0;->k:I

    invoke-virtual {v0, v1}, Lr2/m;->m(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    if-nez v2, :cond_1

    iget v3, p0, LV9/i0;->k:I

    invoke-virtual {v0, v3}, Lr2/m;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, LV9/i0;->k:I

    invoke-virtual {v0, v3, v1}, Lr2/m;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LV9/x;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, LV9/x;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v3, LF1/D2;->f:LF1/D2;

    iget-boolean v3, v3, LF1/D2;->d:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    new-instance v3, LV9/y;

    invoke-direct {v3, p0, p1}, LV9/y;-><init>(LV9/i0;Landroid/view/View;)V

    const-wide/16 v4, 0x190

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/16 p1, 0xbe

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, LV9/i0;->T0([I)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v3, LV9/z;

    invoke-direct {v3, p0, v2, v0, v1}, LV9/z;-><init>(LV9/i0;ZLr2/m;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setClickEnable(Z)V
    .locals 0

    iput-boolean p1, p0, LV9/i0;->m:Z

    invoke-virtual {p0}, LV9/i0;->X()Lo5/q;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/b;->setClickEnable(Z)V

    :cond_0
    return-void
.end method

.method public final sg()V
    .locals 4

    iget-object v0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    if-eqz v0, :cond_2

    iget-object v1, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1400c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v0, LF1/D2;->f:LF1/D2;

    iget-boolean v0, v0, LF1/D2;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    if-eqz v0, :cond_0

    new-instance v1, LAs/v;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, LAs/v;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object p0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    iget v0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->k()Lp9/J;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lo9/b;->k()Lp9/J;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;->p(Z)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    iget v1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;->r:I

    invoke-static {v1}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;->m(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "collapse: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "MenuIndicatorView"

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;->o()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final sk(Z)V
    .locals 3

    iget-object v0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    iget-object p1, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, LV9/i0;->q:I

    if-nez p1, :cond_2

    iget-object p1, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    iget p1, p0, LV9/i0;->k:I

    iget-object v0, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {v0}, LV9/a;->Mq()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, LV9/i0;->a0(ILjava/util/Optional;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La5/i;

    iget v1, v0, La5/i;->a:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    iget-object p0, p0, LV9/i0;->l:Lcom/android/camera2/compat/theme/custom/mm/top/MenuIndicatorView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final tg()V
    .locals 1

    iget-object p0, p0, LV9/i0;->a:Lcom/android/camera2/compat/theme/custom/mm/top/MainTopBarLayout;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final u3()Z
    .locals 0

    iget-object p0, p0, LV9/i0;->I:LZ9/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LZ9/r;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final unRegisterProtocol()V
    .locals 0

    return-void
.end method

.method public final v(Lv2/G0;Ljava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/G0;",
            "Ljava/util/List<",
            "Lio/reactivex/b;",
            ">;II)V"
        }
    .end annotation

    invoke-static {}, LK2/b;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lv2/G0;->d()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    iget-object v0, p0, LV9/i0;->f:Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;->setBlackOriginHeight(I)V

    iget-object v0, p0, LV9/i0;->f:Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;->setCurrentRadius(I)V

    iget-object v0, p0, LV9/i0;->f:Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LV9/i0;->f:Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;->setBackgroundAlpha(I)V

    iget-object v0, p0, LV9/i0;->f:Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;

    invoke-virtual {v0, v1, p4}, Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;->g(II)V

    iget-object p4, p0, LV9/i0;->f:Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p4, p1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-object p4, p0, LV9/i0;->f:Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p4, p0, LV9/i0;->f:Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;

    invoke-virtual {p4}, Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result p4

    const/4 v0, 0x1

    if-le p1, p4, :cond_3

    goto :goto_2

    :cond_3
    const/16 p4, 0xfe

    if-ne p3, p4, :cond_5

    :goto_2
    iget-object p0, p0, LV9/i0;->f:Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;

    if-eqz p2, :cond_4

    move v1, v0

    :cond_4
    invoke-virtual {p0, p2, p1, v1}, Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;->e(Ljava/util/List;IZ)V

    return-void

    :cond_5
    if-nez p2, :cond_7

    iget-object p0, p0, LV9/i0;->f:Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;

    if-eqz p2, :cond_6

    move v1, v0

    :cond_6
    invoke-virtual {p0, p2, p1, v1}, Lcom/xiaomi/camera/ui/base/halo/ShapeBackGroundView;->e(Ljava/util/List;IZ)V

    :cond_7
    return-void
.end method

.method public final wj(Landroid/view/View;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportRaw"
        type = 0x2
    .end annotation

    const-string v0, "FragmentMainTopBar"

    const-string v1, "onRawClick"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/S;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/Z;

    invoke-direct {v1, p0, p1}, LV9/Z;-><init>(LV9/i0;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final xi(Landroid/view/View;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSuperEISPro"
        type = 0x0
    .end annotation

    const-string v0, "FragmentMainTopBar"

    const-string v1, "onSuperEisProClick"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/E;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/f0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, LV9/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v0, LF1/D2;->f:LF1/D2;

    iget-boolean v0, v0, LF1/D2;->d:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, LTx/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, LTx/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final xp()I
    .locals 0

    iget-object p0, p0, LV9/i0;->j:LV9/a;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result p0

    return p0
.end method

.method public final zd(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, LV9/i0;->O:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
