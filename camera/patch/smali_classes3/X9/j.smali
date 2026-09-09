.class public final LX9/j;
.super LX9/o;
.source "SourceFile"


# virtual methods
.method public final c(La5/j;)V
    .locals 6

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    instance-of v0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget v2, p1, La5/j;->a:I

    iget-boolean v3, p1, La5/j;->m:Z

    iget-boolean v4, p1, La5/j;->h:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result v4

    goto :goto_0

    :cond_0
    sget-object v4, Lf2/e;->c:Lf2/e;

    const v5, 0x7f060b72

    invoke-virtual {v4, v5, v3}, Lf2/e;->a(IZ)I

    move-result v4

    :goto_0
    invoke-static {v4, v3}, Lf2/a;->e(IZ)Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    const v3, 0x7f0808e4

    if-ne v2, v3, :cond_1

    iget-boolean v3, p1, La5/j;->h:Z

    invoke-virtual {p0, v3}, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->c(Z)V

    :cond_1
    iget v2, p1, La5/j;->f:I

    if-lez v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget p1, p1, La5/j;->j:I

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
