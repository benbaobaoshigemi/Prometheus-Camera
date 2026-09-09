.class public final LZ9/f;
.super LZ9/s;
.source "SourceFile"


# virtual methods
.method public final g(La5/j;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;->d:Landroid/view/View;

    instance-of v1, v0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;

    iget v1, p1, La5/j;->a:I

    if-gez v1, :cond_0

    iget p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "StrikethroughImageViewHolder"

    const-string v0, "configItem=%d,newImageResourceId=%s, topItemResource:%s"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v2, p1, La5/j;->m:Z

    iget-boolean v3, p1, La5/j;->h:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result v2

    goto :goto_0

    :cond_1
    sget-object v3, Lf2/e;->c:Lf2/e;

    const v4, 0x7f060b72

    invoke-virtual {v3, v4, v2}, Lf2/e;->a(IZ)I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lf2/a;->e(IZ)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    iget v4, p0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;->b:I

    const/16 v1, 0xd7

    if-ne v4, v1, :cond_2

    iget-boolean v1, p1, La5/j;->h:Z

    invoke-virtual {v0, v1}, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->c(Z)V

    :cond_2
    iget p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;->c:I

    if-ltz p0, :cond_3

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    iget p0, p1, La5/j;->j:I

    if-nez p0, :cond_4

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
