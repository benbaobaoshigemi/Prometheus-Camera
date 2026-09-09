.class public final LB9/h;
.super LV9/n0;
.source "SourceFile"


# instance fields
.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static f(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, La5/i;

    if-eqz v0, :cond_1

    check-cast p0, La5/i;

    iget-object p0, p0, La5/i;->h:La5/i$b;

    if-eqz p0, :cond_1

    sget v0, Lcom/android/camera/module/Y;->a:I

    invoke-interface {p0, v0}, La5/i$b;->b(I)La5/a;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-boolean v0, p0, La5/a;->h:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, La5/a;->j:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    const-string v0, "alpha"

    invoke-static {p1, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, LLy/e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3ee66666    # 0.45f
    .end array-data
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, LLy/g;

    invoke-direct {v0}, LLy/g;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, LB9/h$a;

    invoke-direct {v0, p0}, LB9/h$a;-><init>(LB9/h;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final c(Ljava/util/ArrayList;Z)V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, LV9/n0;->f:Z

    if-eqz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iput-boolean v2, p0, LV9/n0;->f:Z

    iput-boolean v2, p0, LV9/n0;->h:Z

    iget-object v3, p0, LV9/n0;->j:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, LV9/n0;->j:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v3, p0, LB9/h;->k:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, LB9/h;->k:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget v3, p0, LV9/n0;->b:I

    iget-object v4, p0, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v4}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v4

    rem-int/2addr v3, v4

    iget v4, p0, LV9/n0;->g:I

    iget-object v5, p0, LV9/n0;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_b

    iget-object v7, p0, LV9/n0;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type com.android.camera.fragment.modeui.topconfig.TopConfigItem"

    invoke-static {v8, v9}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, La5/i;

    iget v8, v8, La5/i;->b:I

    iget-object v9, p0, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v9}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v9

    rem-int/2addr v8, v9

    if-le v3, v8, :cond_3

    neg-int v8, v4

    goto :goto_3

    :cond_3
    move v8, v4

    :goto_3
    if-eqz p2, :cond_4

    neg-int v8, v8

    :cond_4
    iget-object v9, p0, LB9/h;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    if-nez v9, :cond_5

    goto :goto_5

    :cond_5
    iget-object v9, p0, LB9/h;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v11, p0, LB9/h;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v11, :cond_6

    invoke-virtual {v11, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    :goto_5
    int-to-float v8, v8

    const/4 v9, 0x0

    new-array v10, v0, [F

    aput v9, v10, v1

    aput v8, v10, v2

    const-string/jumbo v8, "translationX"

    invoke-static {v7, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v10

    new-array v11, v0, [F

    aput v10, v11, v1

    aput v9, v11, v2

    const-string v9, "alpha"

    invoke-static {v7, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x64

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v11, LLy/g;

    invoke-direct {v11}, LLy/g;-><init>()V

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v11, v0, [Landroid/animation/Animator;

    aput-object v8, v11, v1

    aput-object v9, v11, v2

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    iget-object v8, p0, LV9/n0;->j:Ljava/util/ArrayList;

    if-eqz v8, :cond_a

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-static {v7}, LB9/h;->f(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0, v7}, LB9/h;->a(Landroid/view/View;)V

    :cond_9
    iget-object v8, p0, LB9/h;->k:Ljava/util/ArrayList;

    if-eqz v8, :cond_a

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    add-int/2addr v6, v2

    goto/16 :goto_2

    :cond_b
    :goto_7
    return-void
.end method

.method public final e(ZZLF1/W1;)Z
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    iget-object v2, p0, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-boolean v4, v2, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->c:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v4, v2, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->d:Z

    if-eqz v4, :cond_1

    :goto_0
    return v3

    :cond_1
    iget-boolean v4, p0, LV9/n0;->f:Z

    if-nez v4, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object v2

    invoke-virtual {v2}, LBr/e;->g()V

    :cond_3
    iput-boolean v1, p0, LV9/n0;->f:Z

    iget-object v2, p0, LV9/n0;->j:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    iget-object v2, p0, LV9/n0;->a:La5/i;

    iget v2, v2, La5/i;->b:I

    iget-object v4, p0, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v4}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v4

    rem-int/2addr v2, v4

    iget-object v4, p0, LV9/n0;->j:Ljava/util/ArrayList;

    const-string v5, "mHidedViews"

    invoke-static {v4, v5}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type com.android.camera.fragment.modeui.topconfig.TopConfigItem"

    invoke-static {v6, v7}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, La5/i;

    iget v6, v6, La5/i;->b:I

    iget-object v7, p0, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v7}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v7

    rem-int/2addr v6, v7

    if-lt v6, v2, :cond_5

    sub-int v7, v2, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v3

    goto :goto_2

    :cond_5
    sub-int v7, v2, v6

    :goto_2
    iget-object v8, p0, LV9/n0;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0717c4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, p0, LV9/n0;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0717c3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/2addr v9, v7

    add-int/2addr v9, v8

    if-le v2, v6, :cond_6

    neg-int v9, v9

    :cond_6
    if-eqz p2, :cond_7

    neg-int v9, v9

    :cond_7
    iget-object v6, p0, LB9/h;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v6, :cond_8

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v6, p0, LB9/h;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_8
    int-to-float v6, v9

    const/4 v7, 0x0

    new-array v8, v0, [F

    aput v6, v8, v1

    aput v7, v8, v3

    const-string/jumbo v6, "translationX"

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {v5}, LB9/h;->f(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_9
    const v10, 0x3ecccccd    # 0.4f

    :goto_3
    const-string v11, "alpha"

    new-array v12, v0, [F

    aput v7, v12, v1

    aput v10, v12, v3

    invoke-static {v5, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v8, LLy/g;

    invoke-direct {v8}, LLy/g;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v8, v0, [Landroid/animation/Animator;

    aput-object v6, v8, v1

    aput-object v5, v8, v3

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    iget-object v5, p0, LB9/h;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    iget-object p2, p0, LB9/h;->k:Ljava/util/ArrayList;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, LB9/h;->f(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0, v0}, LB9/h;->b(Landroid/view/View;)V

    goto :goto_4

    :cond_c
    iget-object p2, p0, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    new-instance v0, LB9/g;

    move-object/from16 v2, p3

    invoke-direct {v0, v1, p0, v2}, LB9/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p1, v0}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->b(ZLjava/lang/Runnable;)V

    return v3
.end method
