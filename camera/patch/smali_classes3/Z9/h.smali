.class public final LZ9/h;
.super LZ9/s;
.source "SourceFile"


# virtual methods
.method public final g(La5/j;)V
    .locals 6

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;->d:Landroid/view/View;

    instance-of v0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iget v2, p1, La5/j;->e:I

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget-object v1, Lf2/e;->c:Lf2/e;

    iget-boolean v2, p1, La5/j;->m:Z

    const v3, 0x7f060b72

    invoke-virtual {v1, v3, v2}, Lf2/e;->a(IZ)I

    move-result v1

    sget-object v2, Lf2/a;->f:Lf2/a;

    iget-boolean v2, v2, Lf2/a;->b:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput v1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->g:I

    move v4, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v2}, Lcom/android/camera/ui/StrokeAdaptiveTextView;->setEnableStroke(Z)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v2, :cond_3

    invoke-static {v1, v3}, Lf2/a;->e(IZ)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    iget p1, p1, La5/j;->j:I

    if-nez p1, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
