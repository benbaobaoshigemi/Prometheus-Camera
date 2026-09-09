.class public final Lbr/j;
.super Landroidx/recyclerview/widget/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/x<",
        "LVq/b<",
        "*>;",
        "Lbr/j$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lbr/j$a;


# instance fields
.field public final b:I

.field public final c:Lir/b;

.field public final d:LOt/b;

.field public e:Lcom/xiaomi/camera/ui/base/top/data/model/TopTheme;

.field public f:Lbr/d;

.field public g:LVq/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LVq/b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbr/j$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/n$e;-><init>()V

    sput-object v0, Lbr/j;->h:Lbr/j$a;

    return-void
.end method

.method public constructor <init>(ILir/b;LOt/b;)V
    .locals 1

    sget-object v0, Lbr/j;->h:Lbr/j$a;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/x;-><init>(Landroidx/recyclerview/widget/n$e;)V

    iput p1, p0, Lbr/j;->b:I

    iput-object p2, p0, Lbr/j;->c:Lir/b;

    iput-object p3, p0, Lbr/j;->d:LOt/b;

    new-instance p1, Lcom/xiaomi/camera/ui/base/top/data/model/TopTheme;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/xiaomi/camera/ui/base/top/data/model/TopTheme;-><init>(Z)V

    iput-object p1, p0, Lbr/j;->e:Lcom/xiaomi/camera/ui/base/top/data/model/TopTheme;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/x;->a:Landroidx/recyclerview/widget/e;

    iget-object p0, p0, Landroidx/recyclerview/widget/e;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget p0, p0, Lbr/j;->b:I

    invoke-direct {v0, v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;II)V

    new-instance v1, Lbr/a;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ltq/m;->top_menu_item_gap_h:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Ltq/m;->top_menu_item_gap_v:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Ltq/m;->top_menu_item_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lbr/a;-><init>(IIII)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$B;I)V
    .locals 5

    check-cast p1, Lbr/j$b;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/x;->u(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LVq/b;

    invoke-static {p2}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lbr/j;->e:Lcom/xiaomi/camera/ui/base/top/data/model/TopTheme;

    const-string v1, "topTheme"

    invoke-static {v0, v1}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p2, LVq/b;->b:I

    if-lez v1, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p2, LVq/b;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p1, Lbr/j$b;->b:Landroid/widget/TextView;

    iget-object v2, p2, LVq/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v0, Lcom/xiaomi/camera/ui/base/top/data/model/TopTheme;->a:Z

    sget-object v1, Lf2/e;->c:Lf2/e;

    iget-object v2, p1, Lbr/j$b;->a:LOt/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, LOt/b;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    sget-object v2, Lf2/e;->c:Lf2/e;

    sget v3, Ltq/l;->icon_foreground_normal_selected_cv:I

    invoke-virtual {v2, v3, v0}, Lf2/e;->a(IZ)I

    move-result v2

    :goto_0
    sget v3, Ltq/l;->icon_foreground_normal_cv:I

    invoke-virtual {v1, v3, v0}, Lf2/e;->a(IZ)I

    move-result v3

    sget v4, Ltq/l;->top_menu_item_text_normal_cv:I

    invoke-virtual {v1, v4, v0}, Lf2/e;->a(IZ)I

    move-result v0

    iget-boolean v1, p2, LVq/b;->d:Z

    if-eqz v1, :cond_2

    move v3, v2

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    iget-object v0, p1, Lbr/j$b;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p1, Lbr/j$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lbr/j$b;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lbr/j$b;->c:Lcom/airbnb/lottie/LottieAnimationView;

    iget v1, p2, LVq/b;->a:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    const v2, 0x7f0808e4

    if-ne v1, v2, :cond_4

    instance-of v2, v0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;

    iget-boolean v2, p2, LVq/b;->d:Z

    invoke-virtual {v0, v2}, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->c(Z)V

    :cond_4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    new-instance v1, Lbr/i;

    invoke-direct {v1, p0, p2, p1}, Lbr/i;-><init>(Lbr/j;LVq/b;Lbr/j$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$B;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Ltq/q;->layout_round_img_holder:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lbr/j;->c:Lir/b;

    if-eqz p2, :cond_0

    sget v0, Ltq/o;->extra_tootle_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lir/b;->b(Landroid/view/View;)V

    :cond_0
    new-instance p2, Lbr/j$b;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object p0, p0, Lbr/j;->d:LOt/b;

    invoke-direct {p2, p1, p0}, Lbr/j$b;-><init>(Landroid/view/View;LOt/b;)V

    return-object p2
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    const-string p0, "recyclerView"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final v(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "LVq/b<",
            "*>;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/x;->v(Ljava/util/List;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/x;->a:Landroidx/recyclerview/widget/e;

    iget-object p1, p1, Landroidx/recyclerview/widget/e;->f:Ljava/util/List;

    const-string v0, "getCurrentList(...)"

    invoke-static {p1, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LVq/b;

    iget-boolean v1, v1, LVq/b;->d:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, LVq/b;

    iput-object v0, p0, Lbr/j;->g:LVq/b;

    return-void
.end method
