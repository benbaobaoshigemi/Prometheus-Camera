.class public Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements LV9/j;


# static fields
.field public static final synthetic i:I


# instance fields
.field public final a:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "LV9/A0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Landroid/content/Context;

.field public final d:F

.field public e:I

.field public final f:I

.field public g:I

.field public final h:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f07173f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->d:F

    iput-object p1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->c:Landroid/content/Context;

    new-instance p2, LV9/A0;

    invoke-direct {p2, p0}, LV9/A0;-><init>(Landroid/view/View;)V

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->a:Ljava/util/Optional;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {p2, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0714f2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->f:I

    new-instance p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->h:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p2, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->h:Landroid/widget/ImageView;

    const v1, 0x7f08072a

    invoke-static {p1, v1}, LX/a$a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p2, "misans-normal"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    const/16 v1, 0x226

    invoke-static {p2, v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p2

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    move v3, v0

    :goto_0
    iget v4, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->b:I

    if-ge v3, v4, :cond_0

    new-instance v4, Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5, v0}, Lcom/android/camera/ui/StrokeAdaptiveTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v4, v2}, Lcom/android/camera/ui/StrokeAdaptiveTextView;->setGravity(I)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, p2}, Lcom/android/camera/ui/StrokeAdaptiveTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget v5, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->d:F

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final d(LX9/f$a;I)V
    .locals 1

    new-instance v0, LV9/C0;

    invoke-direct {v0, p1, p2}, LV9/C0;-><init>(LX9/f$a;I)V

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->a:Ljava/util/Optional;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->g:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v1, LV9/t;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, v0}, LV9/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->a:Ljava/util/Optional;

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final init()V
    .locals 2

    new-instance v0, LC4/E;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LC4/E;-><init>(I)V

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->a:Ljava/util/Optional;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final reset()V
    .locals 2

    new-instance v0, LE3/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LE3/j;-><init>(I)V

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->a:Ljava/util/Optional;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setTexts([Ljava/lang/String;)V
    .locals 8

    array-length v0, p1

    iget v1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->b:I

    if-ne v1, v0, :cond_5

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f14135e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    aget-object p1, p1, v2

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v6, v1, -0x1

    aget-object v6, p1, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iput v0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->e:I

    move p1, v0

    move v1, p1

    move v3, v1

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, -0x2

    if-ge p1, v5, :cond_4

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v6, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v0, v3, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    iget-object v7, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v0, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v3, v6

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v6

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->f:I

    invoke-direct {p1, v6, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget v2, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v3, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f071737

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07173e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/camera2/compat/theme/custom/mm/top/TimerBurstView;->e:I

    sub-int/2addr p1, v1

    div-int/2addr p1, v4

    invoke-virtual {p0, v0, p1, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The length of texts is not match the number of textview."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
