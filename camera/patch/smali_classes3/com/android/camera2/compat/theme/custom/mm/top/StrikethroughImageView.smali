.class public Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "SourceFile"

# interfaces
.implements LV9/j;


# static fields
.field public static final synthetic t:I


# instance fields
.field public final r:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "LV9/A0;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->s:Landroid/graphics/RectF;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance p1, LV9/A0;

    invoke-direct {p1, p0}, LV9/A0;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->r:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final c(Z)V
    .locals 2

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->r:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV9/A0;

    invoke-virtual {v0, p1}, LV9/A0;->e(Z)V

    return-void
.end method

.method public final d(LX9/f$a;I)V
    .locals 2

    new-instance v0, LU4/e;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1, p1}, LU4/e;-><init>(IILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->r:Ljava/util/Optional;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final init()V
    .locals 2

    new-instance v0, LC4/E;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LC4/E;-><init>(I)V

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->r:Ljava/util/Optional;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    move-object v3, p0

    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->l()V

    new-instance v0, LF4/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LF4/f;-><init>(I)V

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->r:Ljava/util/Optional;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0406

    if-ne v0, v1, :cond_0

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->s:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    new-instance v1, LV9/B0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v0}, LV9/B0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->r:Ljava/util/Optional;

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public final reset()V
    .locals 2

    new-instance v0, LC4/C;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LC4/C;-><init>(I)V

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->r:Ljava/util/Optional;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
