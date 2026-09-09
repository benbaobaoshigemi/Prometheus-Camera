.class public final LK4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK4/s;


# instance fields
.field public final a:Lcom/android/camera/data/data/c;

.field public final b:Lr9/a;

.field public final c:Landroid/widget/FrameLayout;

.field public final d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public final i:Lcom/android/camera/fragment/R0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/data/data/c;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LK4/p;->e:I

    iput v0, p0, LK4/p;->f:I

    const/4 v1, 0x1

    iput-boolean v1, p0, LK4/p;->g:Z

    iput-boolean v0, p0, LK4/p;->h:Z

    new-instance v1, Lcom/android/camera/fragment/R0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LK4/p;->i:Lcom/android/camera/fragment/R0;

    instance-of v0, p3, Lv2/w;

    if-eqz v0, :cond_0

    iget v0, p3, Lv2/w;->d:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    new-instance v2, Lp9/u;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, p1, p3}, Lp9/v;->g(Landroid/content/Context;Lcom/android/camera/data/data/c;)Lr9/a;

    move-result-object v1

    invoke-interface {v2}, Lp9/v;->a()Lx4/B;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/fragment/beauty/a;->g:Lx4/B;

    goto :goto_0

    :cond_0
    sget-object v1, Lo9/a;->a:Lo9/b;

    invoke-interface {v1}, Lo9/b;->a()Lp9/v;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lp9/v;->g(Landroid/content/Context;Lcom/android/camera/data/data/c;)Lr9/a;

    move-result-object v1

    :goto_0
    iput-object v1, p0, LK4/p;->b:Lr9/a;

    const v1, 0x7f0b028f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, LK4/p;->c:Landroid/widget/FrameLayout;

    const v3, 0x7f0b028e

    if-nez v2, :cond_1

    const v2, 0x7f0b0290

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, LK4/p;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    iput-object p2, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    const/4 v0, 0x0

    new-instance p2, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const-string v1, "beauty_lens_list"

    invoke-direct {p2, v0, p1, v1, v0}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(ILandroid/content/Context;Ljava/lang/String;Z)V

    iget-object p1, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-static {p1}, LG8/f;->b(Lcom/android/camera/ui/SideFadingMiuiRecyclerView;)LG8/f$a;

    move-result-object p1

    iget-object p2, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    iget-object v1, p1, LG8/f$a;->a:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    iget-object p2, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    iget-object v1, p1, LG8/f$a;->b:LAy/a;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->addSpringStateListener(LAy/a;)V

    iget-object p1, p1, LG8/f$a;->c:Lcom/android/camera/fragment/v;

    const-wide/16 v1, 0x96

    iput-wide v1, p1, Landroidx/recyclerview/widget/RecyclerView$l;->f:J

    iput-wide v1, p1, Landroidx/recyclerview/widget/RecyclerView$l;->e:J

    iput-wide v1, p1, Landroidx/recyclerview/widget/RecyclerView$l;->c:J

    iget-object p2, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/SideFadingMiuiRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object p1, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/SideFadingMiuiRecyclerView;->setAllowItemAnimatorByLayout(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    iput-object p1, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    :goto_1
    iput-object p3, p0, LK4/p;->a:Lcom/android/camera/data/data/c;

    return-void
.end method

.method public static a(LK4/p;Lcom/android/camera/data/data/d;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget p1, p1, Lcom/android/camera/data/data/d;->k:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final J0()V
    .locals 1

    iget-object v0, p0, LK4/p;->c:Landroid/widget/FrameLayout;

    invoke-static {v0}, LU1/d;->e(Landroid/view/View;)V

    iget-object p0, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-static {p0}, LU1/d;->e(Landroid/view/View;)V

    return-void
.end method

.method public final K0(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final L0()Z
    .locals 2

    iget-object v0, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, LK4/p;->g:Z

    invoke-static {}, Lcom/android/camera/fragment/R0;->b()V

    const/4 p0, 0x1

    return p0
.end method

.method public final M0()Z
    .locals 1

    iget-object v0, p0, LK4/p;->c:Landroid/widget/FrameLayout;

    invoke-interface {p0, v0}, LK4/s;->R0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final N0(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, LK4/p;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {}, LK2/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LK2/b;->P()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LK2/b;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, LG8/f;->f(Landroid/content/Context;)Lcom/android/camera/ui/f$a;

    move-result-object v0

    invoke-static {p1}, LG8/f;->f(Landroid/content/Context;)Lcom/android/camera/ui/f$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/f$b;->a(Lcom/android/camera/ui/f$a;Lcom/android/camera/ui/f$a;)Lcom/android/camera/ui/f;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/ui/f$b;->c()Lcom/android/camera/ui/f;

    move-result-object v0

    :goto_1
    iget-object v1, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/SideFadingMiuiRecyclerView;->setStyle(Lcom/android/camera/ui/f;)V

    iget-object v0, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_2
    iget-object v0, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, LK4/p;->a:Lcom/android/camera/data/data/c;

    instance-of v1, v1, Lv2/w;

    if-eqz v1, :cond_3

    iget-object v1, p0, LK4/p;->a:Lcom/android/camera/data/data/c;

    check-cast v1, Lv2/w;

    iget v1, v1, Lv2/w;->d:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    new-instance v2, Lp9/u;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    goto :goto_2

    :cond_3
    sget-object v2, Lo9/a;->a:Lo9/b;

    invoke-interface {v2}, Lo9/b;->a()Lp9/v;

    move-result-object v2

    :goto_2
    invoke-interface {v2, v0}, Lp9/v;->b(Landroid/content/res/Resources;)Lq8/h;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const-string v2, "beauty_lens_list"

    invoke-direct {v0, v1, p1, v2, v1}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(ILandroid/content/Context;Ljava/lang/String;Z)V

    iget-object p1, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    iget-object v0, p0, LK4/p;->b:Lr9/a;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    if-eqz v0, :cond_4

    iget p0, p0, LK4/p;->e:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    :cond_4
    return-void
.end method

.method public final O0(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, LK4/p;->g:Z

    iget-object v0, p0, LK4/p;->c:Landroid/widget/FrameLayout;

    invoke-static {v0}, LU1/b;->e(Landroid/view/View;)V

    iget-object v0, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-static {v0}, LU1/b;->e(Landroid/view/View;)V

    iget-object v0, p0, LK4/p;->a:Lcom/android/camera/data/data/c;

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/c;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, LK4/p;->e:I

    iget-object v2, p0, LK4/p;->b:Lr9/a;

    iput v1, v2, Lcom/android/camera/fragment/beauty/a;->a:I

    new-instance v1, LA9/d;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, LA9/d;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v2, Lcom/android/camera/fragment/beauty/a;->e:Lcom/android/camera/fragment/beauty/a$c;

    invoke-static {}, Lcom/android/camera/data/data/E;->I()Z

    move-result v1

    const-string v3, "click"

    if-eqz v1, :cond_0

    const-string v1, "intelligent_bokeh"

    const-string v4, "on"

    invoke-static {v4, v1, v3}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "bokeh_adjust_entry"

    const/4 v4, 0x0

    invoke-static {v4, v1, v3}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-static {}, LQ6/N;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LFn/D;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LFn/D;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->getItems()Ljava/util/List;

    move-result-object v0

    new-instance v1, LH4/i;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LH4/i;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, LK4/p;->i:Lcom/android/camera/fragment/R0;

    const v3, 0x7f070412

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/android/camera/fragment/R0;->a(Landroid/content/res/Resources;ILjava/util/List;Lev/l;)V

    iget p1, p0, LK4/p;->e:I

    iget-object v0, p0, LK4/p;->a:Lcom/android/camera/data/data/c;

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->getItems()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, v2, Lcom/android/camera/fragment/R0;->a:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/d;

    invoke-static {p0, p1}, LK4/p;->a(LK4/p;Lcom/android/camera/data/data/d;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/camera/fragment/R0;->c(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final Q0()V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 11

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    iget v1, p0, LK4/p;->e:I

    iput v1, p0, LK4/p;->f:I

    iput p1, p0, LK4/p;->e:I

    iget-object v1, p0, LK4/p;->b:Lr9/a;

    iput p1, v1, Lcom/android/camera/fragment/beauty/a;->a:I

    invoke-virtual {v1, p1}, Lcom/android/camera/fragment/beauty/a;->x(I)Z

    iget p1, p0, LK4/p;->f:I

    iget v2, p0, LK4/p;->e:I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/android/camera/fragment/D;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p1}, Lcom/android/camera/fragment/D;-><init>(ZI)V

    new-instance v5, Lcom/android/camera/fragment/D;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v2}, Lcom/android/camera/fragment/D;-><init>(ZI)V

    iget-object v7, p0, LK4/p;->a:Lcom/android/camera/data/data/c;

    if-le p1, v0, :cond_3

    sget-object v8, LF1/D2;->f:LF1/D2;

    iget-boolean v8, v8, LF1/D2;->d:Z

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/camera/data/data/c;->getItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/data/data/d;

    iget v8, v8, Lcom/android/camera/data/data/d;->k:I

    iget-object v9, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {v9, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$B;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    iget-object v10, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    if-lez v8, :cond_1

    goto :goto_0

    :cond_1
    const v8, 0x7f1408f4

    :goto_0
    invoke-virtual {v10, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v1, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    if-le v2, v0, :cond_5

    sget-object p1, LF1/D2;->f:LF1/D2;

    iget-boolean p1, p1, LF1/D2;->d:Z

    if-eqz p1, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/camera/data/data/c;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/d;

    iget p1, p1, Lcom/android/camera/data/data/d;->k:I

    iget-object p0, p0, LK4/p;->d:Lcom/android/camera/ui/SideFadingMiuiRecyclerView;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$B;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {v1, p1, p0, v6, v4}, Lcom/android/camera/fragment/beauty/a;->y(ILandroid/view/View;ZZ)V

    :cond_4
    invoke-virtual {v1, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method
