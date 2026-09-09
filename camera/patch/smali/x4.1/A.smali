.class public abstract Lx4/A;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx4/A$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lx4/A$a;",
        ">;"
    }
.end annotation


# static fields
.field public static k:Z


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/F;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroidx/fragment/app/l;

.field public e:Landroid/widget/AdapterView$OnItemClickListener;

.field public f:Landroidx/recyclerview/widget/RecyclerView;

.field public final g:I

.field public final h:I

.field public i:Lv2/k0;

.field public j:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/l;Ljava/util/List;II)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lx4/A;->a:I

    iput v0, p0, Lx4/A;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lx4/A;->j:I

    iput-object p1, p0, Lx4/A;->d:Landroidx/fragment/app/l;

    iput-object p2, p0, Lx4/A;->c:Ljava/util/List;

    iput p3, p0, Lx4/A;->g:I

    iput p4, p0, Lx4/A;->h:I

    invoke-static {}, LK2/b;->P()Z

    invoke-static {}, LK2/b;->a0()Z

    move-result p1

    sput-boolean p1, Lx4/A;->k:Z

    invoke-static {}, LK2/b;->R()Z

    invoke-static {}, LQ6/x0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LE3/g;

    const/16 p3, 0x10

    invoke-direct {p2, p0, p3}, LE3/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static u(Lx4/A;Lcom/android/camera/ui/ColorImageView;Lcom/android/camera/ui/AdaptiveTextView;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lf2/a;->e(IZ)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget-object p1, Lf2/a;->f:Lf2/a;

    iget-boolean p1, p1, Lf2/a;->b:Z

    iget-object p0, p0, Lx4/A;->d:Landroidx/fragment/app/l;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f060026

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, v0, v0, v0, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void

    :cond_0
    const p1, 0x7f060b72

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07147d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    const p3, 0x7f060034

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p1, v0, v0, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lx4/A;->c:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lx4/A;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$B;I)V
    .locals 0

    .line 1
    check-cast p1, Lx4/A$a;

    invoke-virtual {p0, p1, p2}, Lx4/A;->x(Lx4/A$a;I)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$B;ILjava/util/List;)V
    .locals 1

    .line 2
    check-cast p1, Lx4/A$a;

    .line 3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$g;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$B;ILjava/util/List;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lx4/A;->x(Lx4/A$a;I)V

    return-void
.end method

.method public final v(Lx4/A$a;I)V
    .locals 2

    iget-object v0, p1, Lx4/A$a;->a:Landroid/view/View;

    const v1, 0x7f0b066a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lx4/A;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/F;

    iget-boolean v1, v0, Lcom/android/camera/data/data/F;->d:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lx4/A;->i:Lv2/k0;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lv2/k0;->T:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lx4/A$a;->a:Landroid/view/View;

    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, LS1/i;->m([Landroid/view/View;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1, v0, p2}, Lx4/A$a;->e(Lcom/android/camera/data/data/F;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "MakeupSingleCheckAdapter"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final w(I)Z
    .locals 2

    iget v0, p0, Lx4/A;->g:I

    if-ltz v0, :cond_0

    if-lt p1, v0, :cond_0

    iget v0, p0, Lx4/A;->h:I

    if-le p1, v0, :cond_1

    :cond_0
    if-ltz p1, :cond_2

    iget-object p0, p0, Lx4/A;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/F;

    iget-object v0, v0, Lcom/android/camera/data/data/F;->c:Ljava/lang/String;

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/F;

    iget-object p0, p0, Lcom/android/camera/data/data/F;->c:Ljava/lang/String;

    const-string p1, "AI_BEAUTY"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public x(Lx4/A$a;I)V
    .locals 0

    invoke-static {}, LK2/b;->P()Z

    invoke-static {}, LK2/b;->a0()Z

    move-result p0

    sput-boolean p0, Lx4/A;->k:Z

    invoke-static {}, LK2/b;->R()Z

    return-void
.end method

.method public final y(IZLandroid/view/View;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f140107

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object p0, LF1/D2;->f:LF1/D2;

    iget-boolean p0, p0, LF1/D2;->d:Z

    if-eqz p0, :cond_2

    new-instance p0, LR4/a;

    const/16 p1, 0xa

    invoke-direct {p0, p3, p1}, LR4/a;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v0, 0x64

    invoke-virtual {p3, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
