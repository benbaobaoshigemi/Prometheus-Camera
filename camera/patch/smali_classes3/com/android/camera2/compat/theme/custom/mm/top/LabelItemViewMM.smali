.class public Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Lcom/android/camera/ui/ColorImageView;

.field public final c:Lcom/android/camera/ui/ScrollTextview;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget-object p2, Lo9/a;->a:Lo9/b;

    invoke-interface {p2}, Lo9/b;->e()Lp9/t;

    move-result-object p2

    invoke-interface {p2}, Lp9/t;->I()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b0662

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/camera/ui/ColorImageView;

    iput-object p2, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->b:Lcom/android/camera/ui/ColorImageView;

    const p2, 0x7f0b053e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->a:Landroid/view/ViewGroup;

    const p2, 0x7f0b05a0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ScrollTextview;

    iput-object p1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->c:Lcom/android/camera/ui/ScrollTextview;

    return-void
.end method


# virtual methods
.method public final a(ZLcom/android/camera/data/data/d;ILandroid/graphics/drawable/Drawable;La5/i;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p2, Lcom/android/camera/data/data/d;->n:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->c:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget p1, p2, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->c:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    const-string p1, "bo"

    invoke-static {p1}, LQa/b;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->c:Lcom/android/camera/ui/ScrollTextview;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_2
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->c:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget p1, p2, Lcom/android/camera/data/data/d;->c:I

    if-ltz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->b:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->b:Lcom/android/camera/ui/ColorImageView;

    iget-object v1, p2, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iget p2, p2, Lcom/android/camera/data/data/d;->g:I

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    if-eqz v1, :cond_4

    sget-object p1, Lf2/e;->c:Lf2/e;

    const p2, 0x7f0601a0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lf2/e;->a(IZ)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->b:Lcom/android/camera/ui/ColorImageView;

    invoke-static {p1, v0}, Lf2/a;->f(IZ)Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    if-eqz p5, :cond_6

    iget-object p1, p5, La5/i;->h:La5/i$b;

    if-eqz p1, :cond_5

    sget p2, Lcom/android/camera/module/Y;->a:I

    invoke-interface {p1, p2}, La5/i$b;->b(I)La5/a;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    iget-boolean p1, p1, La5/a;->m:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->e:Z

    sget-object p1, Lf2/e;->c:Lf2/e;

    const p2, 0x7f060183

    invoke-static {}, Lf2/b;->e()Z

    move-result p5

    invoke-virtual {p1, p2, p5}, Lf2/e;->a(IZ)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->b:Lcom/android/camera/ui/ColorImageView;

    invoke-static {p1, v0}, Lf2/a;->f(IZ)Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->a:Landroid/view/ViewGroup;

    instance-of p2, p1, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    if-eqz p2, :cond_8

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x2

    if-le p3, p1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0717e7

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0717e6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_2
    iget-object p3, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->a:Landroid/view/ViewGroup;

    invoke-virtual {p3, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p3, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->a:Landroid/view/ViewGroup;

    check-cast p3, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p4, 0x7f0717f1

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    div-int/2addr p0, p1

    div-int/2addr p2, p1

    add-int/2addr p2, p0

    int-to-float p0, p2

    invoke-virtual {p3, p0}, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;->setCornerRadius(F)V

    :cond_8
    return-void
.end method

.method public setActiveBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImgColorAndRefresh(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->b:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->b:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    :cond_0
    return-void
.end method

.method public setItemHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->d:I

    return-void
.end method

.method public setTextColorAndRefresh(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->c:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->c:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
