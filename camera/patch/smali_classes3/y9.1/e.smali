.class public final Ly9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/c;


# direct methods
.method private static phoenixApplyCustomShutterStyle(Lx8/d;)V
    .locals 7

    invoke-static {}, Lcom/android/camera/data/data/w;->v()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lx8/d;->i:Lx8/x;

    const-string v1, "custom_shutter_default"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Lx8/x;->s()V

    const/16 v1, 0x8

    iput v1, v3, Lt8/c;->e:I

    return-void

    :cond_0
    const-string v1, "custom_shutter_custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lx8/d;->n:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/camera/data/data/w;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lvr/z;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lx8/x;->s()V

    iput-object v0, v3, Lx8/x;->L:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lx8/x;->y(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f080249

    invoke-virtual {v3, v2, v4}, Lx8/x;->v(Landroid/content/Context;I)V

    iget-object v4, v3, Lx8/x;->J:Lx8/u;

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lx8/u;->r(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lx8/x;->s()V

    iput-object v0, v3, Lx8/x;->L:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Li7/c;->e(Landroid/content/Context;Ljava/lang/String;Lx8/x;)V

    :cond_2
    :goto_0
    invoke-virtual {v3}, Lx8/x;->u()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lx8/x;->I:Lx8/u;

    if-eqz v4, :cond_6

    :cond_3
    invoke-static {}, Lf2/b;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    const v4, 0x4d444444    # 2.05800512E8f

    goto :goto_1

    :cond_4
    const/4 v4, -0x1

    :goto_1
    iget-object v5, p0, Lx8/d;->d:Lx8/t;

    iget v1, p0, Lx8/d;->q:I

    int-to-float v1, v1

    const v6, 0x3f35c28f    # 0.71f

    const/4 v2, 0x0

    invoke-virtual {v5, v4, v6, v1, v2}, Lt8/c;->n(IFFI)V

    iget-object v5, p0, Lx8/d;->e:Lx8/y;

    const v6, 0x3f3c28f6    # 0.735f

    invoke-virtual {v5, v6, v2}, Lx8/y;->u(FI)V

    const v4, 0x444444

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v5, v4, v6, v1, v2}, Lt8/c;->n(IFFI)V

    iget-object v5, p0, Lx8/d;->f:Lx8/A;

    const/4 v4, -0x1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v5, v4, v6, v1, v2}, Lt8/c;->n(IFFI)V

    invoke-virtual {v5}, Lx8/A;->r()V

    iget-object v5, p0, Lx8/d;->g:Lx8/r;

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v4, -0x1000000

    const/16 v0, 0x19

    invoke-virtual {v5, v4, v6, v1, v0}, Lt8/c;->n(IFFI)V

    invoke-static {}, Lf2/b;->d()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v5, v2}, Lx8/r;->r(I)V

    const v4, 0x333333

    goto :goto_2

    :cond_5
    const/high16 v0, 0x25000000

    invoke-virtual {v5, v0}, Lx8/r;->r(I)V

    const/4 v4, -0x1

    :goto_2
    const v6, 0x3f466666    # 0.775f

    invoke-virtual {v3, v4, v6, v1, v2}, Lt8/c;->n(IFFI)V

    invoke-virtual {v3, v2}, Lt8/c;->i(I)V

    iput v2, v3, Lt8/c;->e:I

    const/16 v0, 0xff

    invoke-virtual {v3, v0}, Lt8/c;->e(I)V

    invoke-virtual {v3}, Lx8/x;->w()V

    :cond_6
    return-void
.end method


# virtual methods
.method public final a(IZ)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return p2

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Lx8/d;)Z
    .locals 3

    iget-object p0, p1, Lx8/d;->e:Lx8/y;

    iget-boolean v0, p0, Lx8/y;->R:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x3e570a3d    # 0.21f

    invoke-virtual {p0, v0}, Lx8/y;->o(F)Lt8/c;

    goto :goto_2

    :cond_0
    iget v0, p0, Lt8/c;->g:F

    const/high16 v2, 0x3f200000    # 0.625f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lx8/y;->o(F)Lt8/c;

    goto :goto_2

    :cond_1
    iget v0, p0, Lt8/c;->o:I

    const/16 v2, 0x66

    if-eq v0, v2, :cond_3

    iget v0, p0, Lt8/c;->s:I

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p1, Lx8/d;->f:Lx8/A;

    iget v0, v0, Lt8/c;->o:I

    if-eqz v0, :cond_4

    iget v0, p1, Lx8/d;->l:F

    invoke-virtual {p0, v0}, Lx8/y;->o(F)Lt8/c;

    goto :goto_2

    :cond_4
    iget-object p0, p1, Lx8/d;->d:Lx8/t;

    iget v0, p0, Lt8/c;->g:F

    invoke-virtual {p0, v0}, Lt8/c;->o(F)Lt8/c;

    iget-object p0, p1, Lx8/d;->e:Lx8/y;

    iget v0, p0, Lt8/c;->g:F

    invoke-virtual {p0, v0}, Lx8/y;->o(F)Lt8/c;

    iget-object p0, p1, Lx8/d;->g:Lx8/r;

    iget v0, p0, Lt8/c;->g:F

    invoke-virtual {p0, v0}, Lt8/c;->o(F)Lt8/c;

    :goto_2
    iget-object p0, p1, Lx8/d;->h:Lx8/s;

    invoke-virtual {p0}, Lx8/s;->t()Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    iget-object p0, p0, Lx8/s;->N:LEg/b;

    check-cast p0, Lx8/v;

    iget v0, p0, Lx8/v;->h:F

    iput v0, p0, Lx8/v;->g:F

    iput v2, p0, Lx8/v;->i:F

    :cond_5
    iget-object p0, p1, Lx8/d;->i:Lx8/x;

    invoke-virtual {p0, v2}, Lx8/x;->x(F)V

    iget-object p0, p1, Lx8/d;->e:Lx8/y;

    iget-object p0, p0, Lx8/y;->T:Lx8/z;

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    iget v0, p0, Lx8/z;->g:F

    iput v0, p0, Lx8/z;->f:F

    iput v2, p0, Lx8/z;->h:F

    :goto_3
    iget-object p0, p1, Lx8/d;->g:Lx8/r;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1
.end method

.method public final c(Ljava/lang/Boolean;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f130247

    goto :goto_0

    :cond_1
    const p0, 0x7f130249

    :goto_0
    sget-object p1, Lo9/a;->a:Lo9/b;

    invoke-interface {p1}, Lo9/b;->g()Lp9/c;

    move-result-object p1

    invoke-interface {p1, p0}, Lp9/c;->g(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    sget-object p0, Lf2/a;->f:Lf2/a;

    invoke-virtual {p0}, Lf2/a;->i()Z

    move-result p0

    const p1, 0x7f060be1

    invoke-static {p1}, Lf2/b;->a(I)I

    move-result p1

    invoke-static {p1, p2, p0}, LG8/c;->c(ILcom/airbnb/lottie/LottieAnimationView;Z)V

    return-void
.end method

.method public final d(Lz4/J;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/content/res/Resources;I)V
    .locals 0

    const p0, 0x7f070843

    invoke-virtual {p4, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    const/high16 p1, 0x7f090000

    invoke-static {p0, p1}, LY/g;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, p1}, LY/g;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public final e(Lx8/d;)Z
    .locals 5

    iget-object p0, p1, Lx8/d;->e:Lx8/y;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx8/y;->g0:Z

    iget-boolean v1, p0, Lx8/y;->R:Z

    const/4 v2, 0x1

    const v3, 0x3f666666    # 0.9f

    if-eqz v1, :cond_0

    const v0, 0x3e418937    # 0.189f

    invoke-virtual {p0, v0}, Lx8/y;->o(F)Lt8/c;

    goto :goto_1

    :cond_0
    iget v1, p0, Lt8/c;->g:F

    const/high16 v4, 0x3f200000    # 0.625f

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    mul-float/2addr v1, v3

    invoke-virtual {p0, v1}, Lx8/y;->o(F)Lt8/c;

    goto :goto_1

    :cond_1
    iget v1, p0, Lt8/c;->o:I

    const/16 v4, 0x66

    if-eq v1, v4, :cond_2

    iget v1, p0, Lt8/c;->s:I

    if-ne v1, v4, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    if-nez v0, :cond_5

    iget-object v0, p1, Lx8/d;->d:Lx8/t;

    iget-boolean v1, v0, Lt8/c;->b:Z

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    iget p0, v0, Lt8/c;->g:F

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr p0, v1

    invoke-virtual {v0, p0}, Lt8/c;->o(F)Lt8/c;

    iget-object p0, p1, Lx8/d;->e:Lx8/y;

    iget v0, p0, Lt8/c;->g:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lx8/y;->o(F)Lt8/c;

    iget-object p0, p1, Lx8/d;->g:Lx8/r;

    iget v0, p0, Lt8/c;->g:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lt8/c;->o(F)Lt8/c;

    goto :goto_1

    :cond_5
    :goto_0
    iget v0, p0, Lt8/c;->m:F

    mul-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lx8/y;->o(F)Lt8/c;

    :goto_1
    iget-object p0, p1, Lx8/d;->h:Lx8/s;

    invoke-virtual {p0}, Lx8/s;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lx8/s;->N:LEg/b;

    check-cast p0, Lx8/v;

    iget v0, p0, Lx8/v;->h:F

    iput v0, p0, Lx8/v;->g:F

    iput v3, p0, Lx8/v;->i:F

    :cond_6
    iget-object p0, p1, Lx8/d;->i:Lx8/x;

    invoke-virtual {p0, v3}, Lx8/x;->x(F)V

    iget-object p0, p1, Lx8/d;->e:Lx8/y;

    iget-object p0, p0, Lx8/y;->T:Lx8/z;

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    iget v0, p0, Lx8/z;->g:F

    iput v0, p0, Lx8/z;->f:F

    iput v3, p0, Lx8/z;->h:F

    :goto_2
    iget-object p0, p1, Lx8/d;->g:Lx8/r;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v2
.end method

.method public final f(Lx8/d;)F
    .locals 0

    iget-object p0, p1, Lx8/d;->e:Lx8/y;

    iget p0, p0, Lt8/c;->g:F

    const p1, 0x3f59999a    # 0.85f

    mul-float/2addr p0, p1

    return p0
.end method

.method public final g(I)I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    sparse-switch p1, :sswitch_data_0

    return p1

    :sswitch_0
    const p0, 0x7f13024c

    return p0

    :sswitch_1
    const p0, 0x7f13024a

    return p0

    :sswitch_2
    const p0, 0x7f130248

    return p0

    :sswitch_3
    const p0, 0x7f130246

    return p0

    :sswitch_4
    const p0, 0x7f0808d3

    return p0

    :sswitch_5
    const p0, 0x7f0808c5

    return p0

    :sswitch_6
    const p0, 0x7f0808c3

    return p0

    :sswitch_7
    const p0, 0x7f0808c1

    return p0

    :sswitch_8
    const p0, 0x7f0808be

    return p0

    :sswitch_9
    const p0, 0x7f080896

    return p0

    :sswitch_a
    const p0, 0x7f080857

    return p0

    :sswitch_b
    const p0, 0x7f080807

    return p0

    :sswitch_c
    const p0, 0x7f080723

    return p0

    :sswitch_d
    const p0, 0x7f080721

    return p0

    :sswitch_e
    const p0, 0x7f080255

    return p0

    :sswitch_f
    const p0, 0x7f080240

    return p0

    :sswitch_data_0
    .sparse-switch
        0x7f08023f -> :sswitch_f
        0x7f080254 -> :sswitch_e
        0x7f080720 -> :sswitch_d
        0x7f080722 -> :sswitch_c
        0x7f080805 -> :sswitch_b
        0x7f080856 -> :sswitch_a
        0x7f080895 -> :sswitch_9
        0x7f0808bd -> :sswitch_8
        0x7f0808c0 -> :sswitch_7
        0x7f0808c2 -> :sswitch_6
        0x7f0808c4 -> :sswitch_5
        0x7f0808d1 -> :sswitch_4
        0x7f130245 -> :sswitch_3
        0x7f130247 -> :sswitch_2
        0x7f130249 -> :sswitch_1
        0x7f13024b -> :sswitch_0
    .end sparse-switch
.end method

.method public final h(Landroid/content/Context;Landroidx/cardview/widget/CardView;Z)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070239

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f071794

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final i(Landroid/widget/ImageView;Landroid/view/ViewGroup;ZLjava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    const v0, 0x7f0808bd

    goto :goto_0

    :cond_0
    const v0, 0x7f0808c2

    :goto_0
    invoke-virtual {p0, v0}, Ly9/e;->g(I)I

    move-result p0

    if-eqz p3, :cond_1

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p0, 0x7f0b0a40

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const p1, 0x7f0b0a41

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-object p3, Lo9/a;->a:Lo9/b;

    invoke-interface {p3}, Lo9/b;->d()Lp9/f;

    move-result-object v0

    invoke-interface {v0}, Lp9/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lna/a;->c(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-interface {p3}, Lo9/b;->d()Lp9/f;

    move-result-object p3

    invoke-interface {p3}, Lp9/f;->e()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lna/a;->c(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    invoke-static {p3}, Lcom/android/camera/data/data/c;->formatFloatToString(F)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "MF\n"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p0, "m"

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final j(Lv2/G0;Lx8/d;)Z
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v4, 0x8

    invoke-static {}, Lf2/b;->d()Z

    move-result v5

    invoke-virtual {v1}, Lx8/d;->b()V

    iget-object v6, v1, Lx8/d;->h:Lx8/s;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lt8/c;->i(I)V

    iput v4, v6, Lt8/c;->e:I

    iget-object v8, v1, Lx8/d;->i:Lx8/x;

    invoke-virtual {v8, v7}, Lt8/c;->i(I)V

    invoke-virtual {v8}, Lx8/x;->s()V

    iput v4, v8, Lt8/c;->e:I

    iget-object v9, v1, Lx8/d;->g:Lx8/r;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v1, Lx8/d;->g:Lx8/r;

    const/4 v10, 0x0

    iput-object v10, v9, Lx8/r;->Q:Ljava/lang/String;

    iput-boolean v5, v9, Lx8/r;->e0:Z

    iget-object v9, v1, Lx8/d;->j:Lx8/F;

    iput v4, v9, Lt8/c;->e:I

    iget-object v9, v1, Lx8/d;->k:Lx8/G;

    invoke-virtual {v9, v4}, Lx8/G;->p(I)V

    const/high16 v9, 0x3f200000    # 0.625f

    iput v9, v1, Lx8/d;->l:F

    iget-object v11, v1, Lx8/d;->e:Lx8/y;

    iget v12, v11, Lt8/c;->g:F

    invoke-virtual {v11, v12, v7}, Lx8/y;->u(FI)V

    iget-object v11, v1, Lx8/d;->g:Lx8/r;

    invoke-virtual {v11, v7}, Lx8/r;->r(I)V

    iget v11, v1, Lx8/d;->q:I

    if-nez v11, :cond_1

    iget-boolean v11, v0, Lv2/G0;->f:Z

    if-eqz v11, :cond_0

    const v11, 0x400ccccd    # 2.2f

    invoke-static {v11}, LK2/e;->b(F)I

    move-result v11

    iput v11, v1, Lx8/d;->q:I

    goto :goto_0

    :cond_0
    const v11, 0x4059999a    # 3.4f

    invoke-static {v11}, LK2/e;->b(F)I

    move-result v11

    iput v11, v1, Lx8/d;->q:I

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    const v11, -0xcccccd

    goto :goto_1

    :cond_2
    const/4 v11, -0x1

    :goto_1
    if-eqz v5, :cond_3

    const v12, 0x4d444444    # 2.05800512E8f

    goto :goto_2

    :cond_3
    const/4 v12, -0x1

    :goto_2
    if-eqz v5, :cond_4

    const v13, 0x333333

    goto :goto_3

    :cond_4
    const/4 v13, -0x1

    :goto_3
    iget v14, v0, Lv2/G0;->a:I

    iget-object v15, v1, Lx8/d;->f:Lx8/A;

    const/16 p0, 0x1

    const/16 v2, 0xa6

    const/high16 v16, 0x3f800000    # 1.0f

    const v4, 0x3f35c28f    # 0.71f

    const v3, 0x3f3c28f6    # 0.735f

    if-eq v14, v2, :cond_26

    const/16 v2, 0xa7

    if-eq v14, v2, :cond_25

    const/16 v2, 0xa9

    if-eq v14, v2, :cond_24

    const/16 v2, 0xd9

    if-eq v14, v2, :cond_23

    const/16 v2, 0xe7

    if-eq v14, v2, :cond_25

    const/16 v2, 0xfc

    if-eq v14, v2, :cond_22

    const/16 v2, 0xfe

    if-eq v14, v2, :cond_27

    iget-object v2, v1, Lx8/d;->n:Landroid/content/Context;

    const/16 v10, 0x100

    if-eq v14, v10, :cond_11

    const/16 v10, 0xaf

    if-eq v14, v10, :cond_25

    const/16 v10, 0xb0

    if-eq v14, v10, :cond_26

    const/16 v10, 0xb3

    if-eq v14, v10, :cond_10

    const/16 v10, 0xb4

    if-eq v14, v10, :cond_10

    const/16 v10, 0xdb

    if-eq v14, v10, :cond_10

    const v17, 0x3f333333    # 0.7f

    const/16 v10, 0xdc

    const/high16 v18, 0x25000000

    const v9, 0x2effffff

    if-eq v14, v10, :cond_d

    packed-switch v14, :pswitch_data_0

    packed-switch v14, :pswitch_data_1

    packed-switch v14, :pswitch_data_2

    packed-switch v14, :pswitch_data_3

    packed-switch v14, :pswitch_data_4

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0}, Lx8/y;->t()V

    goto/16 :goto_12

    :pswitch_0
    iget-object v6, v1, Lx8/d;->d:Lx8/t;

    iget v10, v1, Lx8/d;->q:I

    int-to-float v10, v10

    invoke-virtual {v6, v12, v4, v10, v7}, Lt8/c;->n(IFFI)V

    iget-object v4, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v4, v3, v7}, Lx8/y;->u(FI)V

    iget-object v4, v1, Lx8/d;->e:Lx8/y;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v4, v7, v3, v6, v7}, Lt8/c;->n(IFFI)V

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v6, -0x1

    invoke-virtual {v15, v6, v3, v4, v7}, Lt8/c;->n(IFFI)V

    invoke-virtual {v15}, Lx8/A;->r()V

    iget v0, v0, Lv2/G0;->e:I

    invoke-static {v0, v7}, LPq/b;->K(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    invoke-virtual {v0, v9, v3, v4, v7}, Lt8/c;->n(IFFI)V

    goto :goto_4

    :cond_5
    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    invoke-virtual {v0, v13, v3, v4, v7}, Lt8/c;->n(IFFI)V

    :goto_4
    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    if-eqz v5, :cond_6

    move v1, v7

    goto :goto_5

    :cond_6
    move/from16 v1, v18

    :goto_5
    invoke-virtual {v0, v1}, Lx8/r;->r(I)V

    const v0, 0x3f466666    # 0.775f

    invoke-virtual {v8, v13, v0, v4, v7}, Lt8/c;->n(IFFI)V

    const/16 v0, 0xff

    invoke-virtual {v8, v0}, Lt8/c;->e(I)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->N()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "custom_shutter_equip_2"

    goto :goto_6

    :cond_7
    const-string v0, "custom_shutter_equip"

    :goto_6
    invoke-static {v2, v0, v8}, Li7/c;->e(Landroid/content/Context;Ljava/lang/String;Lx8/x;)V

    iput-object v0, v8, Lx8/x;->L:Ljava/lang/String;

    iput v7, v8, Lt8/c;->e:I

    invoke-virtual {v8}, Lx8/x;->w()V

    goto/16 :goto_12

    :pswitch_1
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->I0()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v8, Lv2/B;

    invoke-virtual {v0, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/B;

    iget-boolean v0, v0, Lv2/B;->a:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lx8/d;->d:Lx8/t;

    iget v8, v1, Lx8/d;->q:I

    int-to-float v8, v8

    const/4 v9, -0x1

    invoke-virtual {v0, v9, v4, v8, v7}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v3, v9}, Lx8/y;->u(FI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    iget v4, v1, Lx8/d;->l:F

    mul-float v4, v4, v17

    const/high16 v8, 0x41700000    # 15.0f

    const/16 v10, 0xff

    invoke-virtual {v0, v9, v4, v8, v10}, Lt8/c;->n(IFFI)V

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v15, v9, v3, v4, v7}, Lt8/c;->n(IFFI)V

    invoke-virtual {v15}, Lx8/A;->r()V

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    const/16 v3, 0x19

    const/high16 v8, -0x1000000

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-virtual {v0, v8, v9, v4, v3}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    if-eqz v5, :cond_8

    move v1, v7

    goto :goto_7

    :cond_8
    move/from16 v1, v18

    :goto_7
    invoke-virtual {v0, v1}, Lx8/r;->r(I)V

    invoke-virtual {v6, v10}, Lt8/c;->i(I)V

    iput v7, v6, Lt8/c;->e:I

    const v0, 0x7f080902

    invoke-virtual {v6, v2, v0}, Lx8/s;->s(Landroid/content/Context;I)V

    goto/16 :goto_12

    :cond_9
    const/16 v10, 0xff

    iget-object v0, v1, Lx8/d;->d:Lx8/t;

    iget v2, v1, Lx8/d;->q:I

    int-to-float v2, v2

    invoke-virtual {v0, v12, v4, v2, v10}, Lt8/c;->n(IFFI)V

    const/high16 v0, 0x3f200000    # 0.625f

    iput v0, v1, Lx8/d;->l:F

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v3, v7}, Lx8/y;->u(FI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    iget v2, v1, Lx8/d;->l:F

    const v4, -0x1ee4e5

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v0, v4, v2, v6, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    iget v2, v1, Lx8/d;->l:F

    invoke-virtual {v0, v2}, Lx8/y;->x(F)V

    invoke-static/range {v16 .. v16}, LK2/e;->b(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v6, -0x1

    invoke-virtual {v15, v6, v3, v0, v7}, Lt8/c;->n(IFFI)V

    invoke-virtual {v15}, Lx8/A;->r()V

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    iput v7, v0, Lt8/c;->e:I

    const v1, 0x3f41bda5    # 0.7568f

    const/16 v3, 0x19

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v8, v1, v4, v3}, Lt8/c;->n(IFFI)V

    goto/16 :goto_12

    :pswitch_2
    iget-boolean v2, v0, Lv2/G0;->d:Z

    if-eqz v2, :cond_b

    iget-object v2, v1, Lx8/d;->d:Lx8/t;

    iget v5, v1, Lx8/d;->q:I

    int-to-float v5, v5

    const/16 v10, 0xff

    invoke-virtual {v2, v12, v4, v5, v10}, Lt8/c;->n(IFFI)V

    const/high16 v2, 0x3f200000    # 0.625f

    iput v2, v1, Lx8/d;->l:F

    iget-object v2, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v2, v3, v7}, Lx8/y;->u(FI)V

    iget-object v2, v1, Lx8/d;->e:Lx8/y;

    iget v4, v1, Lx8/d;->l:F

    const v5, -0x1ee4e5

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v2, v5, v4, v6, v10}, Lt8/c;->n(IFFI)V

    iget-object v2, v1, Lx8/d;->e:Lx8/y;

    iget v4, v1, Lx8/d;->l:F

    invoke-virtual {v2, v4}, Lx8/y;->x(F)V

    invoke-static/range {v16 .. v16}, LK2/e;->b(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v6, -0x1

    invoke-virtual {v15, v6, v3, v2, v7}, Lt8/c;->n(IFFI)V

    invoke-virtual {v15}, Lx8/A;->r()V

    iget-object v2, v1, Lx8/d;->g:Lx8/r;

    iput v7, v2, Lt8/c;->e:I

    iget v0, v0, Lv2/G0;->e:I

    invoke-static {v0, v7}, LPq/b;->K(IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0x2e

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v0, v9, v1, v4, v2}, Lt8/c;->n(IFFI)V

    goto/16 :goto_12

    :cond_a
    const/high16 v4, 0x40400000    # 3.0f

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    const v1, 0x3f41bda5    # 0.7568f

    const/16 v3, 0x19

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v8, v1, v4, v3}, Lt8/c;->n(IFFI)V

    goto/16 :goto_12

    :cond_b
    iget-object v0, v1, Lx8/d;->d:Lx8/t;

    iget v2, v1, Lx8/d;->q:I

    int-to-float v2, v2

    const/16 v10, 0xff

    invoke-virtual {v0, v12, v4, v2, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v3, v7}, Lx8/y;->u(FI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    iget v2, v1, Lx8/d;->l:F

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v0, v11, v2, v6, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    iget v2, v1, Lx8/d;->l:F

    invoke-virtual {v0, v2}, Lx8/y;->x(F)V

    invoke-static/range {v16 .. v16}, LK2/e;->b(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v6, -0x1

    invoke-virtual {v15, v6, v3, v0, v7}, Lt8/c;->n(IFFI)V

    invoke-virtual {v15}, Lx8/A;->s()V

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    iput v7, v0, Lt8/c;->e:I

    const v1, 0x3f41bda5    # 0.7568f

    const/16 v3, 0x19

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v8, v1, v4, v3}, Lt8/c;->n(IFFI)V

    goto/16 :goto_12

    :pswitch_3
    iget-object v2, v1, Lx8/d;->d:Lx8/t;

    iget v5, v1, Lx8/d;->q:I

    int-to-float v5, v5

    invoke-virtual {v2, v12, v4, v5, v7}, Lt8/c;->n(IFFI)V

    const/high16 v2, 0x3f200000    # 0.625f

    iput v2, v1, Lx8/d;->l:F

    iget-object v2, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v2, v3, v7}, Lx8/y;->u(FI)V

    iget-object v2, v1, Lx8/d;->e:Lx8/y;

    iget v4, v1, Lx8/d;->l:F

    const v5, -0x1ee4e5

    const/high16 v6, 0x41700000    # 15.0f

    const/16 v10, 0xff

    invoke-virtual {v2, v5, v4, v6, v10}, Lt8/c;->n(IFFI)V

    iget-object v2, v1, Lx8/d;->e:Lx8/y;

    iget v4, v1, Lx8/d;->l:F

    invoke-virtual {v2, v4}, Lx8/y;->x(F)V

    invoke-static/range {v16 .. v16}, LK2/e;->b(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v6, -0x1

    invoke-virtual {v15, v6, v3, v2, v10}, Lt8/c;->n(IFFI)V

    iget-boolean v0, v0, Lv2/G0;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Lx8/E;

    invoke-direct {v0, v15}, LEg/b;-><init>(Lt8/c;)V

    iput-object v0, v15, Lx8/A;->b0:LEg/b;

    goto :goto_8

    :cond_c
    invoke-virtual {v15}, Lx8/A;->s()V

    :goto_8
    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    iput v7, v0, Lt8/c;->e:I

    const v1, 0x3f41bda5    # 0.7568f

    const/16 v3, 0x19

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v8, v1, v4, v3}, Lt8/c;->n(IFFI)V

    goto/16 :goto_12

    :cond_d
    :pswitch_4
    iget-object v8, v1, Lx8/d;->d:Lx8/t;

    iget v10, v1, Lx8/d;->q:I

    int-to-float v10, v10

    const/4 v11, -0x1

    invoke-virtual {v8, v11, v4, v10, v7}, Lt8/c;->n(IFFI)V

    iget-object v4, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v4, v3, v11}, Lx8/y;->u(FI)V

    iget-object v4, v1, Lx8/d;->e:Lx8/y;

    iget v8, v1, Lx8/d;->l:F

    mul-float v8, v8, v17

    const/high16 v10, 0x41700000    # 15.0f

    invoke-virtual {v4, v11, v8, v10, v7}, Lt8/c;->n(IFFI)V

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v15, v11, v3, v4, v7}, Lt8/c;->n(IFFI)V

    invoke-virtual {v15}, Lx8/A;->r()V

    iget v0, v0, Lv2/G0;->e:I

    invoke-static {v0, v7}, LPq/b;->K(IZ)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    const/16 v8, 0x2e

    invoke-virtual {v0, v9, v3, v4, v8}, Lt8/c;->n(IFFI)V

    goto :goto_9

    :cond_e
    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    const/16 v8, 0x21

    const/4 v9, -0x1

    invoke-virtual {v0, v9, v3, v4, v8}, Lt8/c;->n(IFFI)V

    :goto_9
    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    if-eqz v5, :cond_f

    move v1, v7

    goto :goto_a

    :cond_f
    move/from16 v1, v18

    :goto_a
    invoke-virtual {v0, v1}, Lx8/r;->r(I)V

    const/16 v10, 0xff

    invoke-virtual {v6, v10}, Lt8/c;->i(I)V

    iput v7, v6, Lt8/c;->e:I

    const v0, 0x7f080902

    invoke-virtual {v6, v2, v0}, Lx8/s;->s(Landroid/content/Context;I)V

    goto/16 :goto_12

    :cond_10
    :pswitch_5
    iget-object v0, v1, Lx8/d;->d:Lx8/t;

    iget v2, v1, Lx8/d;->q:I

    int-to-float v2, v2

    const/16 v10, 0xff

    invoke-virtual {v0, v12, v4, v2, v10}, Lt8/c;->n(IFFI)V

    const/high16 v2, 0x3f200000    # 0.625f

    iput v2, v1, Lx8/d;->l:F

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v3, v7}, Lx8/y;->u(FI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    iget v2, v1, Lx8/d;->l:F

    const v5, -0x1ee4e5

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v0, v5, v2, v6, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    iget v2, v1, Lx8/d;->l:F

    invoke-virtual {v0, v2}, Lx8/y;->x(F)V

    invoke-static/range {v16 .. v16}, LK2/e;->b(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v6, -0x1

    invoke-virtual {v15, v6, v3, v0, v7}, Lt8/c;->n(IFFI)V

    invoke-virtual {v15}, Lx8/A;->r()V

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    iput v7, v0, Lt8/c;->e:I

    const v2, 0x3f41bda5    # 0.7568f

    const/16 v3, 0x19

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v8, v2, v4, v3}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->k:Lx8/G;

    const v1, 0x3e4ccccd    # 0.2f

    const/16 v10, 0xff

    invoke-virtual {v0, v12, v1, v4, v10}, Lt8/c;->n(IFFI)V

    goto/16 :goto_12

    :cond_11
    :pswitch_6
    invoke-static {}, Lcom/android/camera/data/data/w;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_b
    const/4 v6, -0x1

    goto/16 :goto_c

    :sswitch_0
    const-string v6, "custom_shutter_grey"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_b

    :cond_12
    const/16 v6, 0x9

    goto/16 :goto_c

    :sswitch_1
    const-string v6, "custom_shutter_gold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_b

    :cond_13
    const/16 v6, 0x8

    goto/16 :goto_c

    :sswitch_2
    const-string v6, "custom_shutter_dark"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    goto :goto_b

    :cond_14
    const/4 v6, 0x7

    goto :goto_c

    :sswitch_3
    const-string v6, "custom_shutter_red"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_b

    :cond_15
    const/4 v6, 0x6

    goto :goto_c

    :sswitch_4
    const-string v6, "custom_shutter_default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    goto :goto_b

    :cond_16
    const/4 v6, 0x5

    goto :goto_c

    :sswitch_5
    const-string v6, "custom_shutter_white"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    goto :goto_b

    :cond_17
    const/4 v6, 0x4

    goto :goto_c

    :sswitch_6
    const-string v6, "custom_shutter_custom4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    goto :goto_b

    :cond_18
    const/4 v6, 0x3

    goto :goto_c

    :sswitch_7
    const-string v6, "custom_shutter_custom3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_b

    :cond_19
    const/4 v6, 0x2

    goto :goto_c

    :sswitch_8
    const-string v6, "custom_shutter_custom2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    goto :goto_b

    :cond_1a
    move/from16 v6, p0

    goto :goto_c

    :sswitch_9
    const-string v6, "custom_shutter_custom1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_b

    :cond_1b
    move v6, v7

    :goto_c
    packed-switch v6, :pswitch_data_5

    goto :goto_e

    :pswitch_7
    const/4 v6, -0x1

    const/4 v10, 0x0

    :goto_d
    move/from16 v9, p0

    goto :goto_10

    :pswitch_8
    invoke-static {v2, v5, v8}, Li7/c;->e(Landroid/content/Context;Ljava/lang/String;Lx8/x;)V

    :goto_e
    move v9, v7

    const/4 v6, -0x1

    const/4 v10, 0x0

    goto :goto_10

    :pswitch_9
    invoke-static {v5}, Lcom/android/camera/data/data/w;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lvr/z;->j(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1c

    goto :goto_f

    :cond_1c
    const v6, 0x7f080249

    move v9, v7

    goto :goto_10

    :cond_1d
    :goto_f
    const/4 v6, -0x1

    goto :goto_d

    :goto_10
    const v14, 0x444444

    if-eqz v9, :cond_1f

    iget v0, v0, Lv2/G0;->a:I

    const/16 v5, 0x100

    if-ne v0, v5, :cond_1e

    iget-object v0, v1, Lx8/d;->d:Lx8/t;

    iget v5, v1, Lx8/d;->q:I

    int-to-float v5, v5

    invoke-virtual {v0, v12, v4, v5, v7}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v3, v7}, Lx8/y;->u(FI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v0, v14, v3, v6, v7}, Lt8/c;->n(IFFI)V

    const v0, 0x3f466666    # 0.775f

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v8, v13, v0, v4, v7}, Lt8/c;->n(IFFI)V

    const/16 v10, 0xff

    invoke-virtual {v8, v10}, Lt8/c;->e(I)V

    const-string v0, "custom_shutter_legendary"

    invoke-static {v2, v0, v8}, Li7/c;->e(Landroid/content/Context;Ljava/lang/String;Lx8/x;)V

    iput-object v0, v8, Lx8/x;->L:Ljava/lang/String;

    iput v7, v8, Lt8/c;->e:I

    invoke-virtual {v8}, Lx8/x;->w()V

    invoke-virtual {v15, v7, v3, v4, v7}, Lt8/c;->n(IFFI)V

    invoke-virtual {v15}, Lx8/A;->r()V

    goto/16 :goto_12

    :cond_1e
    iget-object v0, v1, Lx8/d;->d:Lx8/t;

    iget v2, v1, Lx8/d;->q:I

    int-to-float v2, v2

    const v4, 0x3f30a3d7    # 0.69f

    const/16 v10, 0xff

    invoke-virtual {v0, v12, v4, v2, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v3, v7}, Lx8/y;->u(FI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    const/high16 v6, 0x41700000    # 15.0f

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-virtual {v0, v11, v9, v6, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v9}, Lx8/y;->x(F)V

    invoke-static/range {v16 .. v16}, LK2/e;->b(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v6, -0x1

    invoke-virtual {v15, v6, v3, v0, v7}, Lt8/c;->n(IFFI)V

    invoke-virtual {v15}, Lx8/A;->s()V

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    iput v7, v0, Lt8/c;->e:I

    const v1, 0x3f41bda5    # 0.7568f

    const/16 v3, 0x19

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v8, v1, v4, v3}, Lt8/c;->n(IFFI)V

    goto/16 :goto_12

    :cond_1f
    iput-object v5, v8, Lx8/x;->L:Ljava/lang/String;

    iget-object v0, v1, Lx8/d;->d:Lx8/t;

    iget v5, v1, Lx8/d;->q:I

    int-to-float v5, v5

    invoke-virtual {v0, v12, v4, v5, v7}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v3, v7}, Lx8/y;->u(FI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v0, v14, v3, v4, v7}, Lt8/c;->n(IFFI)V

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v9, -0x1

    invoke-virtual {v15, v9, v3, v4, v7}, Lt8/c;->n(IFFI)V

    invoke-virtual {v15}, Lx8/A;->r()V

    if-ne v6, v9, :cond_20

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v5, v3, v4, v7}, Lt8/c;->n(IFFI)V

    goto :goto_11

    :cond_20
    const/high16 v5, -0x1000000

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    const v3, 0x3f5d70a4    # 0.865f

    invoke-virtual {v0, v5, v3, v4, v7}, Lt8/c;->n(IFFI)V

    :goto_11
    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    invoke-virtual {v0, v7}, Lx8/r;->r(I)V

    const v0, 0x3f466666    # 0.775f

    invoke-virtual {v8, v13, v0, v4, v7}, Lt8/c;->n(IFFI)V

    const/16 v0, 0xff

    invoke-virtual {v8, v0}, Lt8/c;->e(I)V

    invoke-virtual {v8, v2, v10}, Lx8/x;->y(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v2, v6}, Lx8/x;->v(Landroid/content/Context;I)V

    iget-object v0, v8, Lx8/x;->J:Lx8/u;

    if-eqz v0, :cond_21

    invoke-virtual {v0, v7}, Lx8/u;->r(I)V

    :cond_21
    iput v7, v8, Lt8/c;->e:I

    invoke-virtual {v8}, Lx8/x;->w()V

    goto/16 :goto_12

    :cond_22
    iget-object v0, v1, Lx8/d;->d:Lx8/t;

    iget v2, v1, Lx8/d;->q:I

    int-to-float v2, v2

    const v4, 0x3f30a3d7    # 0.69f

    const/16 v10, 0xff

    invoke-virtual {v0, v12, v4, v2, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v3, v7}, Lx8/y;->u(FI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    const/high16 v6, 0x41700000    # 15.0f

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-virtual {v0, v11, v9, v6, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v9}, Lx8/y;->x(F)V

    invoke-static/range {v16 .. v16}, LK2/e;->b(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v6, -0x1

    invoke-virtual {v15, v6, v3, v0, v7}, Lt8/c;->n(IFFI)V

    invoke-virtual {v15}, Lx8/A;->s()V

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    iput v7, v0, Lt8/c;->e:I

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v8, v9, v4, v7}, Lt8/c;->n(IFFI)V

    goto/16 :goto_12

    :cond_23
    :pswitch_a
    iget-object v0, v1, Lx8/d;->d:Lx8/t;

    iget v2, v1, Lx8/d;->q:I

    int-to-float v2, v2

    const/16 v10, 0xff

    invoke-virtual {v0, v12, v4, v2, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v3, v7}, Lx8/y;->u(FI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    const v2, 0x3e428f5c    # 0.19f

    const v5, -0x1ee4e5

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v0, v5, v2, v6, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v2}, Lx8/y;->x(F)V

    invoke-static/range {v16 .. v16}, LK2/e;->b(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v6, -0x1

    invoke-virtual {v15, v6, v3, v0, v7}, Lt8/c;->n(IFFI)V

    invoke-virtual {v15}, Lx8/A;->r()V

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    iput v7, v0, Lt8/c;->e:I

    const v1, 0x3f41bda5    # 0.7568f

    const/16 v3, 0x19

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v8, v1, v4, v3}, Lt8/c;->n(IFFI)V

    goto/16 :goto_12

    :cond_24
    iget-object v0, v1, Lx8/d;->d:Lx8/t;

    iget v2, v1, Lx8/d;->q:I

    int-to-float v2, v2

    invoke-virtual {v0, v12, v4, v2, v7}, Lt8/c;->n(IFFI)V

    const/high16 v2, 0x3f200000    # 0.625f

    iput v2, v1, Lx8/d;->l:F

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v3, v7}, Lx8/y;->u(FI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    iget v2, v1, Lx8/d;->l:F

    const v5, -0x1ee4e5

    const/high16 v6, 0x41700000    # 15.0f

    const/16 v10, 0xff

    invoke-virtual {v0, v5, v2, v6, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    iget v2, v1, Lx8/d;->l:F

    invoke-virtual {v0, v2}, Lx8/y;->x(F)V

    invoke-static/range {v16 .. v16}, LK2/e;->b(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v6, -0x1

    invoke-virtual {v15, v6, v3, v0, v10}, Lt8/c;->n(IFFI)V

    new-instance v0, Lx8/B;

    invoke-direct {v0, v15}, LEg/b;-><init>(Lt8/c;)V

    iput-object v0, v15, Lx8/A;->b0:LEg/b;

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    iput v7, v0, Lt8/c;->e:I

    const v1, 0x3f41bda5    # 0.7568f

    const/16 v3, 0x19

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v8, v1, v4, v3}, Lt8/c;->n(IFFI)V

    goto :goto_12

    :cond_25
    :pswitch_b
    iget-object v0, v1, Lx8/d;->d:Lx8/t;

    iget v2, v1, Lx8/d;->q:I

    int-to-float v2, v2

    const/16 v10, 0xff

    invoke-virtual {v0, v12, v4, v2, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v3, v7}, Lx8/y;->u(FI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v0, v11, v3, v6, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    iget v2, v1, Lx8/d;->l:F

    invoke-virtual {v0, v2}, Lx8/y;->x(F)V

    invoke-static/range {v16 .. v16}, LK2/e;->b(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v6, -0x1

    invoke-virtual {v15, v6, v3, v0, v7}, Lt8/c;->n(IFFI)V

    invoke-virtual {v15}, Lx8/A;->s()V

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    iput v7, v0, Lt8/c;->e:I

    const v1, 0x3f41bda5    # 0.7568f

    const/16 v3, 0x19

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v8, v1, v4, v3}, Lt8/c;->n(IFFI)V

    goto :goto_12

    :cond_26
    iget-object v0, v1, Lx8/d;->d:Lx8/t;

    iget v2, v1, Lx8/d;->q:I

    int-to-float v2, v2

    const/16 v10, 0xff

    invoke-virtual {v0, v12, v4, v2, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    invoke-virtual {v0, v3, v7}, Lx8/y;->u(FI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v0, v11, v3, v6, v10}, Lt8/c;->n(IFFI)V

    iget-object v0, v1, Lx8/d;->e:Lx8/y;

    iget v2, v1, Lx8/d;->l:F

    invoke-virtual {v0, v2}, Lx8/y;->x(F)V

    invoke-static/range {v16 .. v16}, LK2/e;->b(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v6, -0x1

    invoke-virtual {v15, v6, v3, v0, v7}, Lt8/c;->n(IFFI)V

    invoke-virtual {v15}, Lx8/A;->s()V

    iget-object v0, v1, Lx8/d;->g:Lx8/r;

    iput v7, v0, Lt8/c;->e:I

    const v1, 0x3f41bda5    # 0.7568f

    const/16 v3, 0x19

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v8, v1, v4, v3}, Lt8/c;->n(IFFI)V

    :cond_27
    :goto_12
    move-object/from16 v0, p1

    iget v0, v0, Lv2/G0;->a:I

    const/16 v1, 0xab

    if-eq v0, v1, :cond_28

    invoke-static {v0}, LMb/d;->g(I)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_28
    move-object/from16 v1, p2

    invoke-static {v1}, Ly9/e;->phoenixApplyCustomShutterStyle(Lx8/d;)V

    :cond_29
    return p0

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_5
        :pswitch_5
        :pswitch_b
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xab
        :pswitch_b
        :pswitch_3
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb6
        :pswitch_b
        :pswitch_5
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_5
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xcb
        :pswitch_2
        :pswitch_1
        :pswitch_b
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_a
        :pswitch_a
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xe1
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_b
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x63d8fc40 -> :sswitch_9
        -0x63d8fc3f -> :sswitch_8
        -0x63d8fc3e -> :sswitch_7
        -0x63d8fc3d -> :sswitch_6
        -0x4c035af7 -> :sswitch_5
        -0x4b0008df -> :sswitch_4
        -0x191eb68f -> :sswitch_3
        -0xabe856a -> :sswitch_2
        -0xabcf480 -> :sswitch_1
        -0xabcea01 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
