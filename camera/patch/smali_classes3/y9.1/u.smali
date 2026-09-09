.class public final Ly9/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/t;


# virtual methods
.method public final A(Landroid/content/Context;II)LY4/a;
    .locals 9

    const-string p2, "context"

    invoke-static {p1, p2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p2

    const-class v0, Lr2/T;

    invoke-virtual {p2, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr2/T;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "on"

    const v3, 0x7f1300f7

    const-string v4, "auto"

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0xddf

    if-eq v5, v6, :cond_4

    const v6, 0x1ad6f

    if-eq v5, v6, :cond_3

    const v6, 0x2dddaf

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const v3, 0x7f1300f5

    goto :goto_1

    :cond_3
    const-string v5, "off"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const v3, 0x7f1300f9

    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f140100

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(...)"

    invoke-static {v5, v6}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f140103

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v8, 0x7f140102

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    invoke-virtual {p2, p3}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-static {v0, v2}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v5, v7

    goto :goto_2

    :cond_8
    invoke-static {v0, v4}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    move-object v5, v1

    :goto_2
    new-instance v0, LY4/b$a;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LY4/b$a;-><init>(I)V

    const v2, 0x7f0e006b

    iput v2, v0, LY4/c$a;->t:I

    const/4 v2, 0x1

    if-eqz p2, :cond_a

    invoke-virtual {p2, p3}, Lr2/T;->isSwitchOn(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v2

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v0, LY4/a$a;->j:Z

    new-instance v4, Ly9/r;

    invoke-direct {v4, p2, p3, p0}, Ly9/r;-><init>(Lr2/T;ILy9/u;)V

    iput-object v4, v0, LY4/a$a;->a:Landroid/view/View$OnClickListener;

    new-instance p2, Ly9/q;

    invoke-direct {p2, p1, p3, p0}, Ly9/q;-><init>(Landroid/content/Context;ILy9/u;)V

    iput-object p2, v0, LY4/c$a;->u:LY4/c$b;

    iput-boolean v2, v0, LY4/a$a;->k:Z

    const/16 p0, 0x23

    iput p0, v0, LY4/a$a;->q:I

    invoke-virtual {v0, v5}, LY4/a$a;->b(Ljava/lang/String;)LY4/a$a;

    check-cast v0, LY4/c$a;

    invoke-virtual {v0, v1}, LY4/a$a;->c(I)LY4/a$a;

    move-result-object p0

    check-cast p0, LY4/b$a;

    iput v3, p0, LY4/b$a;->w:I

    new-instance p1, LY4/b;

    invoke-direct {p1, p0}, LY4/c;-><init>(LY4/c$a;)V

    iget p0, p0, LY4/b$a;->w:I

    iput p0, p1, LY4/b;->L:I

    return-object p1
.end method

.method public final B()I
    .locals 2

    sget-object p0, Lf2/e;->c:Lf2/e;

    const v0, 0x7f060b72

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lf2/e;->a(IZ)I

    move-result p0

    return p0
.end method

.method public final C(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object p1, LY/g;->a:Ljava/lang/ThreadLocal;

    const p1, 0x7f080a48

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LY/g$a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p0, :cond_0

    const p1, 0x7f060be4

    invoke-static {p1}, Lf2/b;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public final D(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f071792

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final E(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0c007f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public final F(Landroid/content/Context;I)LY4/a;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140fd6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1413f8

    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f1413f7

    invoke-virtual {p1, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/data/j;->s0()Z

    move-result v0

    new-instance v2, LY4/b$a;

    invoke-direct {v2, p2}, LY4/b$a;-><init>(I)V

    const p2, 0x7f0e0067

    iput p2, v2, LY4/c$a;->t:I

    iput-boolean v0, v2, LY4/a$a;->j:Z

    new-instance p2, Lr8/b;

    const/16 v3, 0xe8

    invoke-direct {p2, v3, p0}, Lr8/b;-><init>(ILy9/u;)V

    iput-object p2, v2, LY4/a$a;->a:Landroid/view/View$OnClickListener;

    new-instance p2, Ly9/h;

    const v3, 0x7f1300eb

    const v4, 0x7f1300ea

    invoke-direct {p2, v3, v4, p0}, Ly9/h;-><init>(IILy9/u;)V

    iput-object p2, v2, LY4/c$a;->u:LY4/c$b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, v2, LY4/a$a;->i:Ljava/lang/String;

    const/16 p0, 0xa

    iput p0, v2, LY4/a$a;->q:I

    const/4 p0, 0x1

    iput p0, v2, LY4/a$a;->o:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput v3, v2, LY4/b$a;->w:I

    new-instance p0, LY4/b;

    invoke-direct {p0, v2}, LY4/c;-><init>(LY4/c$a;)V

    iget p1, v2, LY4/b$a;->w:I

    iput p1, p0, LY4/b;->L:I

    return-object p0
.end method

.method public final G(Landroid/content/Context;I)LY4/a;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f141230

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1413f8

    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f1413f7

    invoke-virtual {p1, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa3

    invoke-static {v0}, Lcom/android/camera/data/data/j;->U0(I)Z

    move-result v0

    new-instance v2, LY4/b$a;

    invoke-direct {v2, p2}, LY4/b$a;-><init>(I)V

    const p2, 0x7f0e006c

    iput p2, v2, LY4/c$a;->t:I

    iput-boolean v0, v2, LY4/a$a;->j:Z

    new-instance p2, Lr8/b;

    const/16 v3, 0xa7

    invoke-direct {p2, v3, p0}, Lr8/b;-><init>(ILy9/u;)V

    iput-object p2, v2, LY4/a$a;->a:Landroid/view/View$OnClickListener;

    new-instance p2, Ly9/h;

    const v3, 0x7f1300f1

    const v4, 0x7f1300f3

    invoke-direct {p2, v3, v4, p0}, Ly9/h;-><init>(IILy9/u;)V

    iput-object p2, v2, LY4/c$a;->u:LY4/c$b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, v2, LY4/a$a;->i:Ljava/lang/String;

    const/4 p0, 0x5

    iput p0, v2, LY4/a$a;->q:I

    const/4 p0, 0x1

    iput p0, v2, LY4/a$a;->o:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput v3, v2, LY4/b$a;->w:I

    new-instance p0, LY4/b;

    invoke-direct {p0, v2}, LY4/c;-><init>(LY4/c$a;)V

    iget p1, v2, LY4/b$a;->w:I

    iput p1, p0, LY4/b;->L:I

    return-object p0
.end method

.method public final H(IZ)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    if-eqz p2, :cond_0

    const p0, 0x7f13022d

    return p0

    :cond_0
    const p0, 0x7f130225

    return p0

    :cond_1
    if-eqz p2, :cond_2

    const p0, 0x7f13022c

    return p0

    :cond_2
    const p0, 0x7f130224

    return p0

    :cond_3
    if-eqz p2, :cond_4

    const p0, 0x7f13022a

    return p0

    :cond_4
    const p0, 0x7f130222

    return p0

    :cond_5
    if-eqz p2, :cond_6

    const p0, 0x7f130228

    return p0

    :cond_6
    const p0, 0x7f130220

    return p0
.end method

.method public final I()I
    .locals 0

    const p0, 0x7f0e0038

    return p0
.end method

.method public final J(Z)I
    .locals 0

    const p0, 0x7f060beb

    invoke-static {p0}, Lf2/b;->a(I)I

    move-result p0

    return p0
.end method

.method public final K(Landroid/widget/FrameLayout;)I
    .locals 0

    const-string p0, "mCustomRoot"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070251

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final L(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f071794

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final M(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0716dc

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final N(Landroid/widget/ImageView;Lcom/android/camera/ui/StrokeAdaptiveTextView;Lcom/android/camera/ui/StrokeAdaptiveTextView;FLandroid/content/Context;Landroid/view/View;)V
    .locals 8

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v7

    invoke-virtual {v7}, Lu2/Q;->O()Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x8

    invoke-virtual {p6, v7}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string p0, "context"

    invoke-static {p5, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p0, "EV"

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lf2/e;->c:Lf2/e;

    const v0, 0x7f060be1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lf2/e;->a(IZ)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07021c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3, p0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p1, "lg-family"

    invoke-static {p3, p1}, Lna/a;->c(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v2, p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    invoke-virtual {p6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    :cond_2
    const/4 v2, 0x0

    cmpg-float v4, p4, v2

    if-nez v4, :cond_3

    const-string v5, "0"

    goto :goto_1

    :cond_3
    int-to-float v5, v1

    rem-float v5, p4, v5

    cmpg-float v5, v5, v2

    const-string v6, "-"

    const-string v7, "+"

    if-nez v5, :cond_5

    cmpl-float v5, p4, v2

    if-lez v5, :cond_4

    move-object v6, v7

    :cond_4
    float-to-int v5, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    cmpl-float v5, p4, v2

    if-lez v5, :cond_6

    move-object v6, v7

    :cond_6
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    int-to-float v4, v1

    rem-float/2addr p4, v4

    cmpg-float p4, p4, v2

    if-nez p4, :cond_8

    goto :goto_2

    :cond_8
    move v1, p0

    :goto_2
    if-eqz p1, :cond_a

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v2, 0x7f07021d

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    neg-int p4, p4

    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 p4, 0x7

    const/16 v2, 0xe

    if-eqz v1, :cond_9

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 p4, 0x13

    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, p4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f070217

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f070244

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const p1, 0x800053

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v1, :cond_c

    goto :goto_4

    :cond_c
    const v0, 0x7f07021f

    :goto_4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final O(Landroid/content/Context;I)LY4/a;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140b4b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1413f8

    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f1413f7

    invoke-virtual {p1, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/data/j;->c1()Z

    move-result v0

    new-instance v2, LY4/b$a;

    invoke-direct {v2, p2}, LY4/b$a;-><init>(I)V

    const p2, 0x7f0e006e

    iput p2, v2, LY4/c$a;->t:I

    iput-boolean v0, v2, LY4/a$a;->j:Z

    new-instance p2, Lr8/b;

    const/16 v3, 0xfa

    invoke-direct {p2, v3, p0}, Lr8/b;-><init>(ILy9/u;)V

    iput-object p2, v2, LY4/a$a;->a:Landroid/view/View$OnClickListener;

    new-instance p2, Ly9/h;

    const v3, 0x7f1300fb

    const v4, 0x7f1300fd

    invoke-direct {p2, v3, v4, p0}, Ly9/h;-><init>(IILy9/u;)V

    iput-object p2, v2, LY4/c$a;->u:LY4/c$b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, v2, LY4/a$a;->i:Ljava/lang/String;

    const/16 p0, 0x1e

    iput p0, v2, LY4/a$a;->q:I

    const/4 p0, 0x1

    iput p0, v2, LY4/a$a;->o:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput v3, v2, LY4/b$a;->w:I

    new-instance p0, LY4/b;

    invoke-direct {p0, v2}, LY4/c;-><init>(LY4/c$a;)V

    iget p1, v2, LY4/b$a;->w:I

    iput p1, p0, LY4/b;->L:I

    return-object p0
.end method

.method public final P()[I
    .locals 1

    const p0, 0x7f14028e

    const v0, 0x7f1412c5

    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public final Q(Landroid/view/View;Landroid/graphics/drawable/InsetDrawable;)V
    .locals 0

    const-string/jumbo p0, "v"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final R(La5/j$a;Lr2/w;I)La5/j$a;
    .locals 0

    const-string p0, "componentFlash"

    invoke-static {p2, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/android/camera/data/data/y;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p3}, Lr2/w;->E(I)I

    move-result p0

    iput p0, p1, La5/j$a;->a:I

    return-object p1

    :cond_0
    invoke-virtual {p2, p3}, Lr2/w;->t(I)I

    move-result p0

    if-eqz p0, :cond_1

    iput p0, p1, La5/j$a;->d:I

    :cond_1
    return-object p1
.end method

.method public final S(Landroid/widget/FrameLayout;)I
    .locals 0

    const-string p0, "mCustomRoot"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070244

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final T(Landroid/view/View;ZZII)V
    .locals 0

    const p0, 0x7f0b0ae9

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f0b0aed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    if-ne p4, p5, :cond_0

    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Lq1/E;

    invoke-virtual {p1}, Lq1/E;->l()Z

    move-result p1

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void

    :cond_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p3, :cond_1

    new-instance p1, Ly9/m;

    invoke-direct {p1, p0, p5}, Ly9/m;-><init>(Lcom/airbnb/lottie/LottieAnimationView;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ly9/n;

    invoke-direct {p1, p0, p5}, Ly9/n;-><init>(Lcom/airbnb/lottie/LottieAnimationView;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result p1

    sget-object p2, Lf2/a;->f:Lf2/a;

    invoke-virtual {p2}, Lf2/a;->i()Z

    move-result p2

    new-instance p3, Ly9/o;

    invoke-direct {p3, p1, p0, p2}, Ly9/o;-><init>(ILcom/airbnb/lottie/LottieAnimationView;Z)V

    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/LottieAnimationView;->f(Lq1/J;)V

    const p1, 0x7f060be4

    invoke-static {p1}, Lf2/b;->a(I)I

    move-result p1

    invoke-static {}, Lf2/b;->e()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lf2/a;->d(IZ)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final U(Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "**"

    if-eqz p2, :cond_0

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v0, LE1/c;

    invoke-direct {v0, p2}, LE1/c;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lw1/e;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lw1/e;-><init>([Ljava/lang/String;)V

    sget-object p0, Lq1/K;->F:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, p2, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->g(Lw1/e;Ljava/lang/Object;LE1/c;)V

    return-void

    :cond_0
    new-instance p2, Lw1/e;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lw1/e;-><init>([Ljava/lang/String;)V

    sget-object p0, Lq1/K;->F:Landroid/graphics/ColorFilter;

    new-instance v0, LE1/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LE1/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->g(Lw1/e;Ljava/lang/Object;LE1/c;)V

    return-void
.end method

.method public final W(Z)I
    .locals 1

    sget-object p0, Lf2/e;->c:Lf2/e;

    const v0, 0x7f060428

    invoke-virtual {p0, v0, p1}, Lf2/e;->a(IZ)I

    move-result p0

    return p0
.end method

.method public final a(I)I
    .locals 1

    sget-object p0, Ly9/d;->a:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final b(ZZ)I
    .locals 0

    const p0, 0x7f060beb

    invoke-static {p0}, Lf2/b;->a(I)I

    move-result p0

    return p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d()I
    .locals 0

    const p0, 0x7f0e0069

    return p0
.end method

.method public final e()I
    .locals 0

    const p0, 0x7f0712eb

    return p0
.end method

.method public final f(Landroid/widget/FrameLayout;)V
    .locals 2

    const-string p0, "bubbleDeleteView"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071866

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p0, 0x7f0806df

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public final g()Landroid/graphics/Paint;
    .locals 1

    new-instance p0, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    const v0, 0x7f060be4

    invoke-static {v0}, Lf2/b;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object p0
.end method

.method public final h(Z)I
    .locals 0

    const p0, 0x7f060be1

    invoke-static {p0}, Lf2/b;->a(I)I

    move-result p0

    return p0
.end method

.method public final i(Landroid/content/Context;)Landroid/util/Size;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0717f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0717dc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public final j()I
    .locals 0

    const p0, 0x7f0712e6

    return p0
.end method

.method public final k(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f071745

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final l()I
    .locals 0

    const p0, 0x7f0712f1

    return p0
.end method

.method public final m()I
    .locals 0

    const p0, 0x7f0712e5

    return p0
.end method

.method public final n(Landroid/view/View;III)V
    .locals 1

    const/4 p0, 0x3

    if-ne p4, p0, :cond_0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string p4, "null cannot be cast to non-null type android.widget.GridLayout.LayoutParams"

    invoke-static {p2, p4}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f0717de

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    mul-int/lit8 p4, p4, 0x6

    sub-int/2addr p3, p4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f071779

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    mul-int/2addr p4, p0

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    iput p3, p2, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    iput p3, p2, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final o(La5/a$a;Lr2/w;I)La5/a$a;
    .locals 0

    const-string p0, "componentFlash"

    invoke-static {p2, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/android/camera/data/data/y;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p3}, Lr2/w;->D(I)I

    move-result p0

    iput p0, p1, La5/a$a;->a:I

    return-object p1

    :cond_0
    invoke-virtual {p2, p3}, Lr2/w;->t(I)I

    move-result p0

    iput p0, p1, La5/a$a;->b:I

    return-object p1
.end method

.method public final p(ILandroid/view/View;)V
    .locals 6

    const/4 p0, 0x4

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, LY/g;->a:Ljava/lang/ThreadLocal;

    const v1, 0x7f080a48

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LY/g$a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/F0;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LQ5/B;

    invoke-direct {v1, p0}, LQ5/B;-><init>(I)V

    new-instance v3, LV4/r;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v4}, LV4/r;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    new-instance v4, LV9/S4;

    invoke-direct {v4, p0}, LV9/S4;-><init>(I)V

    new-instance p0, LV9/m5;

    const/4 v5, 0x1

    invoke-direct {p0, v5, v4}, LV9/m5;-><init>(ILev/l;)V

    invoke-virtual {v0, p0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/module/Y;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f060be4

    goto :goto_1

    :cond_2
    :goto_0
    const p0, 0x7f060026

    :goto_1
    if-eqz v2, :cond_3

    invoke-static {p0}, Lf2/b;->a(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final r(Landroid/content/Context;Z)Landroid/graphics/Paint;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    const p2, 0x7f060be4

    invoke-static {p2}, Lf2/b;->a(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071793

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public final s(ZZ)I
    .locals 0

    const p0, 0x7f060be1

    invoke-static {p0}, Lf2/b;->a(I)I

    move-result p0

    return p0
.end method

.method public final t(Landroid/widget/FrameLayout;)I
    .locals 1

    const-string p0, "mCustomRoot"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070244

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u(Lcom/airbnb/lottie/LottieAnimationView;LY4/a;IZZ)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object p5, p2

    check-cast p5, LY4/b;

    iget p5, p5, LY4/b;->L:I

    if-eq p5, p3, :cond_1

    new-instance v0, Ly9/i;

    move-object v4, p0

    move-object v1, p1

    move-object v3, p2

    move v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ly9/i;-><init>(Lcom/airbnb/lottie/LottieAnimationView;ILY4/a;Ly9/u;Z)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    move-object v4, p0

    move-object v1, p1

    move v5, p4

    new-instance p0, Ly9/j;

    invoke-direct {p0, v1, v4, v5}, Ly9/j;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Ly9/u;Z)V

    invoke-virtual {v1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final v(I)I
    .locals 3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->O()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f080533

    return p0

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lv2/k0;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/k0;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f080866

    return p0

    :cond_1
    const-string v0, "16"

    invoke-virtual {p0, v0}, Lv2/k0;->n(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1}, Lr2/E;->q(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/E;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/a;

    goto :goto_0

    :cond_2
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/c0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/a;

    goto :goto_0

    :cond_3
    sget-object v0, Lr2/t;->e:Ljava/util/List;

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/t;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/a;

    :goto_0
    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getComponentValue(...)"

    invoke-static {p1, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p0, :cond_4

    invoke-static {}, LA9/h;->d()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {}, LA9/h;->c()Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Li3/b;

    if-eqz p0, :cond_6

    iget v2, v1, Li3/b;->m:I

    if-ne v2, p1, :cond_5

    iget p0, v1, Li3/b;->d:I

    return p0

    :cond_6
    invoke-virtual {v1}, Li3/b;->a()I

    move-result v2

    if-ne v2, p1, :cond_5

    iget p0, v1, Li3/b;->d:I

    return p0

    :cond_7
    const p0, 0x7f080534

    return p0
.end method

.method public final w(Landroid/view/View;Landroid/widget/ImageView;Lcom/android/camera/ui/StrokeAdaptiveTextView;Landroid/content/Context;ZI)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "iv"

    invoke-static {v0, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    move-object/from16 v3, p4

    invoke-static {v3, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/data/E;->o0()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/data/E;->I()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lww/k;->m(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    const/high16 v8, 0x447a0000    # 1000.0f

    invoke-static {v7, v8}, Lfv/l;->a(Ljava/lang/Float;F)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/E;->l0()Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v7, 0xa2

    move/from16 v8, p6

    if-ne v8, v7, :cond_1

    goto :goto_0

    :cond_1
    move v7, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v6

    :goto_1
    const v8, 0x7f060be4

    invoke-static {v8}, Lf2/b;->a(I)I

    move-result v8

    invoke-static {}, Lf2/b;->e()Z

    move-result v9

    xor-int/lit8 v10, v9, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    const-string v12, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v11, v12}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    const/16 v14, 0x2bc

    invoke-static {v13, v14, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/camera/ui/StrokeAdaptiveTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v13, 0x8

    if-eqz v4, :cond_3

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v14, 0x11

    invoke-virtual {v11, v14}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_3
    const-string v14, ""

    const v15, 0x7f07020f

    const v5, 0x7f07020e

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v12}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    neg-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0807f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_4
    const v4, 0x7f060b34

    const v15, 0x7f060171

    if-nez v7, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v11, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v11, v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v5, 0x7f070212

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const v5, 0x7f070211

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f070248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v9, :cond_5

    sget-object v2, Lf2/e;->c:Lf2/e;

    invoke-virtual {v2, v15, v6}, Lf2/e;->a(IZ)I

    move-result v2

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0807fb

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    if-nez v9, :cond_6

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3, v2, v2, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_3
    if-eqz v9, :cond_7

    sget-object v1, Lf2/e;->c:Lf2/e;

    invoke-virtual {v1, v15, v6}, Lf2/e;->a(IZ)I

    move-result v1

    goto :goto_4

    :cond_7
    sget-object v1, Lf2/e;->c:Lf2/e;

    invoke-virtual {v1, v4, v6}, Lf2/e;->a(IZ)I

    move-result v1

    :goto_4
    invoke-static {v1, v8, v10}, Lf2/a;->a(IIZ)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v12}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const v5, 0x7f07020f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0807fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v9, :cond_9

    sget-object v1, Lf2/e;->c:Lf2/e;

    invoke-virtual {v1, v15, v6}, Lf2/e;->a(IZ)I

    move-result v1

    goto :goto_5

    :cond_9
    sget-object v1, Lf2/e;->c:Lf2/e;

    invoke-virtual {v1, v4, v6}, Lf2/e;->a(IZ)I

    move-result v1

    :goto_5
    invoke-static {v1, v8, v10}, Lf2/a;->a(IIZ)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final x(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07174b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final y(Landroid/widget/FrameLayout;)I
    .locals 0

    const-string p0, "bubbleDeleteView"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f071866

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final z()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
