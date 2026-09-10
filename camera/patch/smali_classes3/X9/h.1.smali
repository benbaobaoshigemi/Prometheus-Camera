.class public final LX9/h;
.super LX9/f;
.source "SourceFile"


# virtual methods
.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$B;I)V
    .locals 12

    move-object v5, p1

    check-cast v5, LX9/o;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "onBindViewHolder"

    iget-object v6, p0, LX9/f;->a:Ljava/lang/String;

    invoke-static {v6, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LX9/f;->d:Ljava/util/List;

    const-string/jumbo v7, "support config is null!"

    const-string v8, "position is larger than the supported config\uff01"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v1, p0

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, LX9/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {v6, v8, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move-object v1, p0

    goto/16 :goto_6

    :cond_2
    iget-object v0, p0, LX9/f;->f:Lcom/android/camera2/compat/theme/custom/mm/top/extratopbar/TopBarRecyclerView;

    invoke-virtual {v0}, Lcom/android/camera2/compat/theme/custom/mm/top/extratopbar/TopBarRecyclerView;->getDegree()I

    move-result v0

    iget-object v1, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v1

    int-to-float v0, v0

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    :cond_3
    iget-object v0, p0, LX9/f;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, La5/i;

    iput-boolean p1, v3, La5/i;->e:Z

    iget v0, p0, LX9/f;->e:I

    iget-object v1, v3, La5/i;->g:La5/i$c;

    invoke-interface {v1, v0}, La5/i$c;->b(I)La5/j;

    move-result-object v9

    if-nez v9, :cond_4

    const-string/jumbo v0, "top item resource is null!"

    new-array v1, p1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v9, La5/j;->f:I

    if-lez v2, :cond_5

    iget-object v4, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v0, v9, La5/j;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    iget v0, p0, LX9/f;->e:I

    invoke-interface {v1, v0}, La5/i$c;->b(I)La5/j;

    move-result-object v0

    iget-object v1, p0, LX9/f;->f:Lcom/android/camera2/compat/theme/custom/mm/top/extratopbar/TopBarRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v5, v0}, LX9/o;->c(La5/j;)V

    :goto_2
    move-object v1, p0

    goto :goto_3

    :cond_7
    iget v1, v0, La5/j;->e:I

    const-string/jumbo v2, "updateView - anim id = "

    invoke-static {v1, v2}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, p1, [Ljava/lang/Object;

    invoke-static {v6, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz v1, :cond_8

    invoke-virtual {v5, v0}, LX9/o;->c(La5/j;)V

    goto :goto_2

    :cond_8
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v4, Lv2/x0;

    invoke-virtual {v2, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/x0;

    iget v4, v3, La5/i;->c:I

    invoke-virtual {v2, v4, v1}, Lv2/x0;->q(II)Z

    move-result v2

    const-string v10, "enableAnim = "

    invoke-static {v10, v2}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    new-array v11, p1, [Ljava/lang/Object;

    invoke-static {v6, v10, v11}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_9

    iget-object v0, p0, LX9/f;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showJsonAnimation: configItem = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v3, La5/i;->c:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    move-object v2, v0

    check-cast v2, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;

    new-instance v0, LX9/a;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, LX9/a;-><init>(LX9/h;Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;La5/i;ILX9/o;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_9
    move-object v1, p0

    invoke-virtual {v5, v0}, LX9/o;->c(La5/j;)V

    :goto_3
    iget-object p0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    instance-of v0, p0, LV9/j;

    if-eqz v0, :cond_a

    check-cast p0, LV9/j;

    invoke-interface {p0}, LV9/j;->init()V

    :cond_a
    iget-object p0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    instance-of v0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;

    if-eqz v0, :cond_b

    iget v0, v3, La5/i;->c:I

    const/16 v2, 0xd7

    if-ne v0, v2, :cond_b

    check-cast p0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;

    iget-boolean v0, v9, La5/j;->h:Z

    invoke-virtual {p0, v0}, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->c(Z)V

    :cond_b
    iget-boolean p0, v9, La5/j;->k:Z

    const v0, 0x7f0b0b06

    if-eqz p0, :cond_c

    iget-object p0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_4

    :cond_c
    iget-object p0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_4
    iget p0, v9, La5/j;->j:I

    if-eqz p0, :cond_d

    iget-object p0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6

    :cond_d
    iget-object p0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    iget-object v0, v1, LX9/f;->b:LX9/s;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-static {p0}, LS1/i;->n(Landroid/view/View;)V

    goto :goto_6

    :goto_5
    new-array p0, p1, [Ljava/lang/Object;

    invoke-static {v6, v7, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    iget-object p0, v1, LX9/f;->d:Ljava/util/List;

    if-eqz p0, :cond_12

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_8

    :cond_e
    iget-object p0, v1, LX9/f;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p2, p0, :cond_f

    new-array p0, p1, [Ljava/lang/Object;

    invoke-static {v6, v8, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_f
    iget-object p0, v1, LX9/f;->d:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La5/i;

    iget-object p0, p0, La5/i;->g:La5/i$c;

    iget p1, v1, LX9/f;->e:I

    invoke-interface {p0, p1}, La5/i$c;->b(I)La5/j;

    move-result-object p0

    if-nez p0, :cond_10

    goto :goto_7

    :cond_10
    iget p0, p0, La5/j;->d:I

    if-ltz p0, :cond_11

    iget-object p1, v5, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_11
    :goto_7
    return-void

    :cond_12
    :goto_8
    new-array p0, p1, [Ljava/lang/Object;

    invoke-static {v6, v7, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
