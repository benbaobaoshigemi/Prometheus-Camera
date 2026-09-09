.class public final LP4/G;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/constraintlayout/widget/ConstraintLayout;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 4

    const-string/jumbo v0, "rootView"

    invoke-static {p0, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b08e8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1300d8

    goto :goto_0

    :cond_0
    const v1, 0x7f1300d7

    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060bb5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const v2, 0x3f666666    # 0.9f

    invoke-static {v2, v1, v0}, LS1/i;->l(FILandroid/view/View;)V

    const-string v0, "apply(...)"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static b(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 10

    const-string/jumbo v0, "rootView"

    invoke-static {p0, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-class v3, Lr2/A0;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/A0;

    const-class v4, Lr2/D0;

    invoke-virtual {v0, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/D0;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    iget-boolean v5, v3, Lr2/A0;->a:Z

    if-nez v5, :cond_0

    new-instance v4, LP4/N;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0706aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, v3, v5}, LP4/N;-><init>(Lcom/android/camera/data/data/c;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, LP4/N;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0706ac

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, LP4/N;-><init>(Lcom/android/camera/data/data/c;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const-class v3, Lr2/m0;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/m0;

    if-eqz v3, :cond_2

    iget-boolean v4, v3, Lv2/h;->W:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    new-instance v4, LP4/N;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0706a9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, v3, v5}, LP4/N;-><init>(Lcom/android/camera/data/data/c;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    iget v4, v3, Lu2/Q;->u:I

    invoke-virtual {v3, v4}, Lu2/Q;->E(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/data/data/j;->j1(IZ)Z

    move-result v3

    const-class v5, Lr2/B0;

    if-eqz v3, :cond_4

    const-class v6, Lr2/H0;

    invoke-virtual {v0, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/H0;

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lr2/B0;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lr2/B0;

    :goto_1
    if-eqz v6, :cond_5

    new-instance v5, LP4/N;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0706ab

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, LP4/N;-><init>(Lcom/android/camera/data/data/c;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-class v5, Lr2/L0;

    if-eqz v3, :cond_7

    const-class v3, Lr2/M0;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/M0;

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/L0;

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/L0;

    :goto_2
    if-eqz v3, :cond_8

    new-instance v5, LP4/N;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0706af

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v5, v3, v6}, LP4/N;-><init>(Lcom/android/camera/data/data/c;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-class v3, Lr2/c1;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/c1;

    if-eqz v3, :cond_9

    new-instance v5, LP4/N;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0706b0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v5, v3, v6}, LP4/N;-><init>(Lcom/android/camera/data/data/c;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-class v3, Lr2/I0;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/I0;

    if-eqz v0, :cond_a

    new-instance v3, LP4/N;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0706ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v0, v5}, LP4/N;-><init>(Lcom/android/camera/data/data/c;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result v3

    if-eqz v3, :cond_b

    const v3, 0x7f070849

    goto :goto_3

    :cond_b
    const v3, 0x7f0706ae

    :goto_3
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, LQu/n;->V(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LP4/N;

    iget-object v6, v5, LP4/N;->a:Lcom/android/camera/data/data/c;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0e0151

    invoke-virtual {v7, v8, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v8, LP4/J;

    new-instance v9, Landroid/util/Size;

    iget v5, v5, LP4/N;->b:I

    invoke-direct {v9, v5, v0}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v8, v7, v6, v9}, LP4/J;-><init>(Landroid/view/View;Lcom/android/camera/data/data/c;Landroid/util/Size;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    return-object v3
.end method
