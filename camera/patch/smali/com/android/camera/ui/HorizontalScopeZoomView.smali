.class public Lcom/android/camera/ui/HorizontalScopeZoomView;
.super Lcom/android/camera/ui/HorizontalZoomView;
.source "SourceFile"


# static fields
.field public static final synthetic m0:I


# instance fields
.field public K:I

.field public final L:Landroid/graphics/Paint;

.field public final M:Landroid/graphics/Paint;

.field public final N:Landroid/graphics/Paint;

.field public final O:I

.field public final P:I

.field public Q:I

.field public R:Landroid/animation/ValueAnimator;

.field public S:Landroid/animation/ValueAnimator;

.field public final T:Landroid/graphics/Paint;

.field public U:Z

.field public V:I

.field public W:I

.field public a0:F

.field public b0:F

.field public c0:Z

.field public d0:Z

.field public e0:I

.field public f0:Ljava/lang/String;

.field public g0:Ljava/lang/String;

.field public h0:Z

.field public i0:Landroid/animation/ValueAnimator;

.field public j0:Landroid/animation/ValueAnimator;

.field public final k0:I

.field public l0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/HorizontalScopeZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    const/4 p3, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/HorizontalZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->K:I

    .line 4
    iput p3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->V:I

    const/16 v1, 0x14

    .line 5
    iput v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->W:I

    const/16 v1, 0xa

    .line 6
    iput v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->e0:I

    .line 7
    const-string v1, "1.0"

    iput-object v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->f0:Ljava/lang/String;

    .line 8
    const-string v1, "3.0"

    iput-object v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->g0:Ljava/lang/String;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->h0:Z

    .line 10
    iput-boolean p3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->l0:Z

    .line 11
    invoke-static {}, LK2/b;->W()Z

    move-result v2

    sget-object v3, Lcom/android/camera/ui/a$b;->a:Lcom/android/camera/ui/a$b;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/camera/ui/a$b;->b:Lcom/android/camera/ui/a$b;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    .line 12
    sget-object v2, LF1/Y3;->BaseHorizontalZoomView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f07156d

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 14
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07126d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->k0:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070306

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->O:I

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070305

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->P:I

    .line 20
    iget-object p1, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq p1, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071b0d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071b0c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->Q:I

    .line 22
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->O:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    .line 25
    iget p2, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->O:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->M:Landroid/graphics/Paint;

    .line 28
    iget p2, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->O:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    sget-object p1, Lo9/a;->a:Lo9/b;

    .line 31
    invoke-interface {p1}, Lo9/b;->d()Lp9/f;

    move-result-object p2

    invoke-interface {p2}, Lp9/f;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 32
    iget-object p2, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    invoke-interface {p1}, Lo9/b;->d()Lp9/f;

    move-result-object p3

    invoke-interface {p3}, Lp9/f;->e()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lna/a;->b(Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    invoke-interface {p1}, Lo9/b;->d()Lp9/f;

    move-result-object p3

    invoke-interface {p3}, Lp9/f;->e()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lna/a;->b(Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->M:Landroid/graphics/Paint;

    invoke-interface {p1}, Lo9/b;->d()Lp9/f;

    move-result-object p1

    invoke-interface {p1}, Lp9/f;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lna/a;->b(Landroid/graphics/Paint;Ljava/lang/String;)V

    goto :goto_2

    .line 35
    :cond_2
    const-string/jumbo p1, "sans-serif-medium"

    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 36
    sget-object p1, Lna/a;->a:Ljava/util/HashMap;

    .line 37
    :goto_2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->T:Landroid/graphics/Paint;

    .line 38
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->T:Landroid/graphics/Paint;

    const/16 p2, 0x4d

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->T:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public getLeftZoomRatio()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->U:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->g0:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->f0:Ljava/lang/String;

    return-object p0
.end method

.method public getRightZoomRatio()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->U:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->f0:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->g0:Ljava/lang/String;

    return-object p0
.end method

.method public final k(Z)V
    .locals 10

    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->P:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->O:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/ui/HorizontalZoomView;->m:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget v6, p0, Lcom/android/camera/ui/HorizontalZoomView;->n:I

    if-ne v4, v6, :cond_1

    iget v6, p0, Lcom/android/camera/ui/HorizontalZoomView;->J:F

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/camera/ui/HorizontalZoomView;->o:Z

    if-ne v6, p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->r()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->o()V

    iput v4, p0, Lcom/android/camera/ui/HorizontalZoomView;->n:I

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->o:Z

    new-array v6, v5, [F

    if-eqz p1, :cond_2

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    goto :goto_0

    :cond_2
    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    :goto_0
    iput-object v6, p0, Lcom/android/camera/ui/HorizontalZoomView;->I:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-static {v6}, LF1/b0;->c(Landroid/animation/ValueAnimator;)V

    iget-object v6, p0, Lcom/android/camera/ui/HorizontalZoomView;->I:Landroid/animation/ValueAnimator;

    new-instance v9, Lq8/K;

    invoke-direct {v9, p0, v3}, Lq8/K;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v6, p0, Lcom/android/camera/ui/HorizontalZoomView;->I:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/camera/ui/HorizontalScopeZoomView$a;

    invoke-direct {v9, p0, v4, p1}, Lcom/android/camera/ui/HorizontalScopeZoomView$a;-><init>(Lcom/android/camera/ui/HorizontalScopeZoomView;IZ)V

    invoke-virtual {v6, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/camera/ui/HorizontalZoomView;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p1, :cond_3

    int-to-float v1, v1

    int-to-float v0, v0

    new-array v4, v5, [F

    aput v1, v4, v3

    aput v0, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    int-to-float v1, v1

    new-array v4, v5, [F

    aput v0, v4, v3

    aput v1, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v0}, LF1/b0;->c(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->R:Landroid/animation/ValueAnimator;

    new-instance v1, Lg3/a;

    invoke-direct {v1, p0, v2}, Lg3/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->R:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/HorizontalScopeZoomView$b;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/HorizontalScopeZoomView$b;-><init>(Lcom/android/camera/ui/HorizontalScopeZoomView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-nez p1, :cond_4

    const/16 p1, 0xff

    filled-new-array {v3, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-static {p1}, LF1/b0;->c(Landroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->S:Landroid/animation/ValueAnimator;

    new-instance v0, Lg5/K;

    invoke-direct {v0, p0, v2}, Lg5/K;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->S:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/HorizontalScopeZoomView$c;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalScopeZoomView$c;-><init>(Lcom/android/camera/ui/HorizontalScopeZoomView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->I:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->R:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->S:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/ui/HorizontalZoomView;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    if-eqz p0, :cond_1

    check-cast p0, LQ4/L;

    iget-object v0, p0, LQ4/L;->e0:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, LQ4/L;->e0:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, LQ4/L;->f0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, LQ4/L;->f0:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    sget-object v13, Lcom/android/camera/ui/a$b;->a:Lcom/android/camera/ui/a$b;

    const/4 v14, 0x2

    if-eq v2, v13, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->k0:I

    :goto_0
    sub-int/2addr v2, v3

    int-to-float v2, v2

    move v15, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v14

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    if-nez v2, :cond_1

    goto/16 :goto_2a

    :cond_1
    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->g:F

    const/16 v16, 0x0

    cmpl-float v2, v2, v16

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v2, v13, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    :goto_2
    sub-int/2addr v2, v3

    int-to-float v2, v2

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    goto :goto_2

    :goto_3
    iput v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->g:F

    iget-object v3, v0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    iput v2, v3, Lcom/android/camera/ui/a$a;->P:F

    :cond_3
    iget-boolean v7, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->U:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    iget-object v2, v0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v2}, Lcom/android/camera/ui/a$a;->t()I

    move-result v2

    sub-int/2addr v2, v8

    move v10, v2

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    if-eqz v7, :cond_5

    const/4 v11, 0x0

    goto :goto_5

    :cond_5
    iget-object v2, v0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v2}, Lcom/android/camera/ui/a$a;->t()I

    move-result v2

    sub-int/2addr v2, v8

    move v11, v2

    :goto_5
    if-eqz v7, :cond_6

    const/16 v17, -0x1

    goto :goto_6

    :cond_6
    move/from16 v17, v8

    :goto_6
    iget v2, v0, Lcom/android/camera/ui/HorizontalZoomView;->h:F

    invoke-virtual {v0, v10}, Lcom/android/camera/ui/HorizontalZoomView;->c(I)F

    move-result v3

    const/high16 v18, 0x40000000    # 2.0f

    div-float v3, v3, v18

    add-float v19, v3, v2

    iget v2, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->V:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_7

    iget v4, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->W:I

    if-eq v4, v3, :cond_7

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HorizontalScopeZoomView;->p(I)F

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    iget v2, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->W:I

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HorizontalScopeZoomView;->p(I)F

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    iput v3, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->V:I

    iput v3, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->W:I

    :cond_7
    iget v2, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->i(F)F

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    iget v2, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->i(F)F

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    iget v2, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v4, v3, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->e0:I

    if-ne v4, v5, :cond_8

    move/from16 v20, v8

    goto :goto_7

    :cond_8
    const/16 v20, 0x0

    :goto_7
    sget-object v4, Lo9/a;->a:Lo9/b;

    invoke-interface {v4}, Lo9/b;->b()Lp9/K;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->f0:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Lur/i;->b(F)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->g0:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Lur/i;->b(F)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v12, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    move/from16 v22, v14

    iget-object v14, v0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v14, v13, :cond_9

    iget-object v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    iget-object v12, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v6, v12

    iget-object v12, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Paint$FontMetrics;->top:F

    iget-object v14, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v12, v14

    iget v14, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->Q:I

    int-to-float v14, v14

    add-float/2addr v14, v15

    iget v8, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    div-float v6, v6, v18

    sub-float/2addr v8, v6

    iget-object v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v14, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v4, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->Q:I

    int-to-float v4, v4

    add-float/2addr v4, v15

    iget v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    div-float v12, v12, v18

    sub-float/2addr v6, v12

    iget-object v8, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_8
    move/from16 v24, v7

    goto/16 :goto_9

    :cond_9
    iget-boolean v8, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->c0:Z

    const-string/jumbo v14, "x"

    if-eqz v8, :cond_a

    iget v8, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    div-float v24, v6, v18

    sub-float v8, v8, v24

    iget v9, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->Q:I

    int-to-float v9, v9

    sub-float v9, v15, v9

    move/from16 v26, v6

    iget-object v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v4, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    div-float v12, v12, v18

    sub-float/2addr v4, v12

    iget v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->Q:I

    int-to-float v6, v6

    sub-float v6, v15, v6

    iget-object v8, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v4, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    sub-float v4, v4, v24

    add-float v4, v4, v26

    iget v5, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->Q:I

    int-to-float v5, v5

    sub-float v5, v15, v5

    iget-object v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->M:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_a
    move/from16 v26, v6

    iget-boolean v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->d0:Z

    if-eqz v6, :cond_b

    iget v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    div-float v8, v12, v18

    sub-float/2addr v6, v8

    iget v9, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->Q:I

    int-to-float v9, v9

    sub-float v9, v15, v9

    move/from16 v24, v7

    iget-object v7, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v9, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v5, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    div-float v6, v26, v18

    sub-float/2addr v5, v6

    iget v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->Q:I

    int-to-float v6, v6

    sub-float v6, v15, v6

    iget-object v7, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v4, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    sub-float/2addr v4, v8

    add-float/2addr v4, v12

    iget v5, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->Q:I

    int-to-float v5, v5

    sub-float v5, v15, v5

    iget-object v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->M:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_b
    move/from16 v24, v7

    iget v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    div-float v7, v26, v18

    sub-float/2addr v6, v7

    iget v7, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->Q:I

    int-to-float v7, v7

    sub-float v7, v15, v7

    iget-object v8, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v4, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    div-float v12, v12, v18

    sub-float/2addr v4, v12

    iget v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->Q:I

    int-to-float v6, v6

    sub-float v6, v15, v6

    iget-object v7, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_9
    iget-boolean v4, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->c0:Z

    if-eqz v4, :cond_d

    iget-boolean v4, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->d0:Z

    if-nez v4, :cond_c

    goto :goto_a

    :cond_c
    move v14, v2

    move v9, v3

    goto/16 :goto_e

    :cond_d
    :goto_a
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HorizontalScopeZoomView;->p(I)F

    move-result v4

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/HorizontalScopeZoomView;->p(I)F

    move-result v5

    iget v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    iget v7, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_e

    const/4 v6, 0x1

    goto :goto_b

    :cond_e
    const/4 v6, 0x0

    :goto_b
    iget-object v7, v0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    check-cast v7, LQ4/L;

    if-eqz v6, :cond_f

    move v8, v4

    goto :goto_c

    :cond_f
    move v8, v5

    :goto_c
    if-eqz v6, :cond_10

    move v4, v5

    :cond_10
    iget v5, v0, Lcom/android/camera/ui/HorizontalZoomView;->n:I

    iget-object v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->T:Landroid/graphics/Paint;

    iget-object v9, v0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v9, v13, :cond_11

    const/4 v9, 0x1

    goto :goto_d

    :cond_11
    const/4 v9, 0x0

    :goto_d
    iget-boolean v12, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->l0:Z

    if-nez v5, :cond_12

    iget v5, v7, Lcom/android/camera/ui/a$a;->g:F

    iput v5, v7, Lcom/android/camera/ui/a$a;->q:F

    :cond_12
    if-eqz v9, :cond_13

    iget v5, v7, Lcom/android/camera/ui/a$a;->q:F

    neg-float v9, v5

    add-float/2addr v9, v15

    iget v7, v7, LQ4/L;->m0:F

    sub-float/2addr v9, v7

    sub-float/2addr v8, v7

    add-float/2addr v5, v15

    add-float/2addr v5, v7

    add-float/2addr v4, v7

    move v14, v5

    move v5, v4

    move v4, v14

    move v14, v2

    move v2, v9

    move v9, v3

    move v3, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v1, p1

    goto :goto_e

    :cond_13
    move v14, v2

    move v9, v3

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v12, :cond_14

    iget v1, v7, LQ4/L;->m0:F

    add-float v2, v8, v1

    iget v3, v7, Lcom/android/camera/ui/a$a;->b:F

    div-float v3, v3, v18

    move v5, v3

    sub-float v3, v15, v5

    sub-float/2addr v4, v1

    add-float/2addr v5, v15

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_e

    :cond_14
    iget v1, v7, LQ4/L;->m0:F

    add-float v2, v8, v1

    iget v3, v7, Lcom/android/camera/ui/a$a;->q:F

    neg-float v5, v3

    add-float/2addr v5, v15

    sub-float/2addr v5, v1

    sub-float/2addr v4, v1

    add-float/2addr v3, v15

    add-float/2addr v3, v1

    move v1, v5

    move v5, v3

    move v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_e
    const/4 v2, 0x0

    const/4 v12, -0x1

    :goto_f
    iget-object v3, v0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v3}, Lcom/android/camera/ui/a$a;->t()I

    move-result v3

    if-ge v2, v3, :cond_41

    mul-int v3, v2, v17

    add-int/2addr v3, v10

    add-int/lit8 v21, v2, 0x1

    mul-int v2, v21, v17

    add-int/2addr v2, v10

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/HorizontalZoomView;->b(I)F

    move-result v4

    add-float v4, v4, v19

    iget v5, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    sub-float v6, v4, v5

    iget v7, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    sub-float v7, v4, v7

    iget v8, v0, Lcom/android/camera/ui/HorizontalZoomView;->h:F

    invoke-virtual {v0, v10}, Lcom/android/camera/ui/HorizontalZoomView;->c(I)F

    move-result v19

    div-float v19, v19, v18

    add-float v19, v19, v8

    cmpg-float v5, v5, v19

    if-gtz v5, :cond_15

    move v2, v10

    goto :goto_10

    :cond_15
    iget v5, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    iget v8, v0, Lcom/android/camera/ui/HorizontalZoomView;->i:F

    invoke-virtual {v0, v11}, Lcom/android/camera/ui/HorizontalZoomView;->c(I)F

    move-result v19

    div-float v19, v19, v18

    sub-float v8, v8, v19

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_16

    move v2, v11

    goto :goto_10

    :cond_16
    cmpg-float v5, v6, v16

    if-gtz v5, :cond_17

    neg-float v5, v6

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->b(I)F

    move-result v8

    div-float v8, v8, v18

    cmpg-float v5, v5, v8

    if-lez v5, :cond_18

    :cond_17
    cmpl-float v5, v6, v16

    if-ltz v5, :cond_19

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/HorizontalZoomView;->b(I)F

    move-result v5

    div-float v5, v5, v18

    cmpg-float v5, v6, v5

    if-gtz v5, :cond_19

    :cond_18
    move v12, v3

    :cond_19
    cmpg-float v5, v7, v16

    if-gtz v5, :cond_1a

    neg-float v5, v7

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->b(I)F

    move-result v2

    div-float v2, v2, v18

    cmpg-float v2, v5, v2

    if-lez v2, :cond_1b

    :cond_1a
    cmpl-float v2, v7, v16

    if-ltz v2, :cond_1c

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/HorizontalZoomView;->b(I)F

    move-result v2

    div-float v2, v2, v18

    cmpg-float v2, v7, v2

    if-gtz v2, :cond_1c

    :cond_1b
    move v2, v3

    goto :goto_10

    :cond_1c
    move v2, v12

    :goto_10
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, v0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v5, v13, :cond_1d

    invoke-virtual {v1, v15, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_11

    :cond_1d
    invoke-virtual {v1, v4, v15}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_11
    if-lt v3, v14, :cond_21

    if-ge v3, v9, :cond_21

    iget-object v5, v0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    check-cast v5, LQ4/L;

    iget-boolean v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->l0:Z

    if-ne v2, v3, :cond_1e

    const/4 v7, 0x1

    goto :goto_12

    :cond_1e
    const/4 v7, 0x0

    :goto_12
    if-eqz v20, :cond_20

    iget-boolean v8, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->d0:Z

    if-nez v8, :cond_1f

    iget-boolean v8, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->c0:Z

    if-eqz v8, :cond_20

    :cond_1f
    const/4 v8, 0x1

    goto :goto_13

    :cond_20
    const/4 v8, 0x0

    :goto_13
    invoke-virtual {v5, v3, v6, v7, v8}, LQ4/L;->J(IZZZ)V

    const/4 v7, 0x0

    goto :goto_16

    :cond_21
    iget-object v5, v0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    check-cast v5, LQ4/L;

    iget-boolean v6, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->l0:Z

    if-ne v2, v3, :cond_22

    const/4 v8, 0x1

    :goto_14
    const/4 v7, 0x0

    goto :goto_15

    :cond_22
    const/4 v8, 0x0

    goto :goto_14

    :goto_15
    invoke-virtual {v5, v3, v6, v8, v7}, LQ4/L;->J(IZZZ)V

    :goto_16
    iget-object v5, v0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    move-object v8, v5

    check-cast v8, LQ4/L;

    iget-boolean v5, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->l0:Z

    if-eqz v24, :cond_24

    if-ne v9, v3, :cond_23

    :goto_17
    const/4 v6, 0x1

    goto :goto_18

    :cond_23
    move v6, v7

    goto :goto_18

    :cond_24
    if-ne v14, v3, :cond_23

    goto :goto_17

    :goto_18
    if-eqz v24, :cond_26

    if-ne v14, v3, :cond_25

    :goto_19
    const/4 v12, 0x1

    goto :goto_1a

    :cond_25
    move v12, v7

    goto :goto_1a

    :cond_26
    if-ne v9, v3, :cond_25

    goto :goto_19

    :goto_1a
    iget v7, v0, Lcom/android/camera/ui/HorizontalZoomView;->n:I

    iget v1, v0, Lcom/android/camera/ui/HorizontalZoomView;->J:F

    move/from16 v19, v2

    if-ne v14, v3, :cond_27

    iget-boolean v2, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->c0:Z

    if-nez v2, :cond_28

    :cond_27
    if-ne v9, v3, :cond_29

    iget-boolean v2, v0, Lcom/android/camera/ui/HorizontalScopeZoomView;->d0:Z

    if-eqz v2, :cond_29

    :cond_28
    const/16 v26, 0x1

    goto :goto_1b

    :cond_29
    const/16 v26, 0x0

    :goto_1b
    iget-object v2, v0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v2, v13, :cond_2a

    move v2, v9

    const/4 v9, 0x1

    goto :goto_1c

    :cond_2a
    move v2, v9

    const/4 v9, 0x0

    :goto_1c
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_39

    if-nez v6, :cond_2b

    if-eqz v12, :cond_2c

    :cond_2b
    move/from16 v27, v2

    move/from16 v28, v4

    move/from16 v25, v11

    move/from16 v29, v19

    const/4 v0, 0x0

    move-object/from16 v2, p1

    move/from16 v19, v10

    goto/16 :goto_22

    :cond_2c
    const/4 v1, 0x1

    invoke-virtual {v8, v3, v1}, LQ4/L;->H(IZ)Z

    move-result v5

    if-eqz v5, :cond_2e

    sget-object v3, Lo9/a;->a:Lo9/b;

    invoke-interface {v3}, Lo9/b;->b()Lp9/K;

    move-result-object v3

    move v5, v2

    iget-object v2, v8, Lcom/android/camera/ui/a$a;->a0:Landroid/content/Context;

    move v6, v5

    iget v5, v8, Lcom/android/camera/ui/a$a;->q:F

    move v7, v6

    iget v6, v8, Lcom/android/camera/ui/a$a;->i:F

    move v12, v7

    iget v7, v8, LQ4/L;->m0:F

    move/from16 v23, v10

    iget-object v10, v8, Lcom/android/camera/ui/a$a;->A:Landroid/graphics/Paint;

    move/from16 v26, v11

    iget v11, v8, Lcom/android/camera/ui/a$a;->l:I

    move/from16 v27, v12

    iget-object v12, v8, Lcom/android/camera/ui/a$a;->E:Landroid/graphics/Paint;

    move v8, v4

    const/4 v4, 0x1

    move/from16 v28, v8

    const/4 v8, 0x1

    move-object v1, v3

    move/from16 v29, v19

    move/from16 v19, v23

    move/from16 v25, v26

    const/4 v0, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v1 .. v12}, Lp9/K;->g(Landroid/content/Context;Landroid/graphics/Canvas;ZFFFZZLandroid/graphics/Paint;ILandroid/graphics/Paint;)V

    :cond_2d
    :goto_1d
    move/from16 v11, v22

    const/4 v10, 0x1

    goto/16 :goto_29

    :cond_2e
    move/from16 v27, v2

    move/from16 v28, v4

    move/from16 v25, v11

    move/from16 v29, v19

    const/4 v0, 0x0

    move/from16 v19, v10

    iget-object v1, v8, LQ4/L;->j0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v2, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v4

    add-float/2addr v2, v1

    invoke-static {}, Lur/i;->i()F

    move-result v1

    iget v4, v8, LQ4/L;->h0:F

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v5

    const/high16 v6, 0x3f000000    # 0.5f

    if-gez v1, :cond_31

    invoke-static {}, Lur/i;->i()F

    move-result v1

    sub-float/2addr v2, v1

    rem-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_2f

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_30

    :cond_2f
    const/4 v1, 0x1

    invoke-virtual {v8, v3, v1}, LQ4/L;->H(IZ)Z

    move-result v2

    if-nez v2, :cond_30

    :goto_1e
    const/4 v1, 0x1

    goto :goto_21

    :cond_30
    :goto_1f
    move v1, v0

    goto :goto_21

    :cond_31
    invoke-static {}, Lur/i;->h()F

    move-result v1

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_33

    invoke-static {}, Lur/i;->h()F

    move-result v1

    sub-float/2addr v2, v1

    rem-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_32

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_30

    :cond_32
    const/4 v1, 0x1

    invoke-virtual {v8, v3, v1}, LQ4/L;->H(IZ)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_1e

    :cond_33
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_36

    const v1, 0x3e4ccccd    # 0.2f

    rem-float/2addr v2, v1

    cmpg-float v4, v2, v5

    if-ltz v4, :cond_34

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_35

    :cond_34
    const/4 v1, 0x1

    goto :goto_20

    :cond_35
    const/4 v1, 0x1

    goto :goto_1f

    :goto_20
    invoke-virtual {v8, v3, v1}, LQ4/L;->H(IZ)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_21

    :cond_36
    const/4 v1, 0x1

    invoke-virtual {v8, v3, v1}, LQ4/L;->H(IZ)Z

    move-result v2

    xor-int/2addr v2, v1

    move v1, v2

    :goto_21
    if-eqz v1, :cond_37

    sget-object v1, Lo9/a;->a:Lo9/b;

    invoke-interface {v1}, Lo9/b;->b()Lp9/K;

    move-result-object v1

    iget-object v2, v8, Lcom/android/camera/ui/a$a;->a0:Landroid/content/Context;

    iget v5, v8, Lcom/android/camera/ui/a$a;->q:F

    iget v6, v8, Lcom/android/camera/ui/a$a;->i:F

    iget v7, v8, LQ4/L;->m0:F

    iget-object v10, v8, Lcom/android/camera/ui/a$a;->A:Landroid/graphics/Paint;

    iget v11, v8, Lcom/android/camera/ui/a$a;->l:I

    iget-object v12, v8, Lcom/android/camera/ui/a$a;->C:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p1

    invoke-interface/range {v1 .. v12}, Lp9/K;->g(Landroid/content/Context;Landroid/graphics/Canvas;ZFFFZZLandroid/graphics/Paint;ILandroid/graphics/Paint;)V

    move-object v2, v3

    goto/16 :goto_1d

    :cond_37
    move-object/from16 v2, p1

    goto/16 :goto_1d

    :goto_22
    iget-object v1, v8, LQ4/L;->e0:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v1, :cond_38

    if-eqz v6, :cond_38

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    iget-object v5, v8, LQ4/L;->e0:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v1, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_38
    iget-object v1, v8, LQ4/L;->f0:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2d

    if-eqz v12, :cond_2d

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    iget-object v5, v8, LQ4/L;->f0:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v1, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1d

    :cond_39
    move/from16 v27, v2

    move/from16 v28, v4

    move/from16 v25, v11

    move/from16 v29, v19

    const/4 v0, 0x0

    move-object/from16 v2, p1

    move/from16 v19, v10

    if-nez v6, :cond_3a

    if-eqz v12, :cond_3b

    :cond_3a
    const/4 v10, 0x1

    goto :goto_27

    :cond_3b
    invoke-virtual {v8, v3, v0}, LQ4/L;->H(IZ)Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v1, v8, Lcom/android/camera/ui/a$a;->E:Landroid/graphics/Paint;

    :goto_23
    move-object v12, v1

    goto :goto_24

    :cond_3c
    iget-object v1, v8, Lcom/android/camera/ui/a$a;->C:Landroid/graphics/Paint;

    goto :goto_23

    :goto_24
    if-eqz v4, :cond_3d

    iget v1, v8, Lcom/android/camera/ui/a$a;->k:F

    :goto_25
    move v6, v1

    goto :goto_26

    :cond_3d
    iget v1, v8, Lcom/android/camera/ui/a$a;->i:F

    goto :goto_25

    :goto_26
    sget-object v1, Lo9/a;->a:Lo9/b;

    invoke-interface {v1}, Lo9/b;->b()Lp9/K;

    move-result-object v1

    iget-object v2, v8, Lcom/android/camera/ui/a$a;->a0:Landroid/content/Context;

    iget v5, v8, Lcom/android/camera/ui/a$a;->q:F

    iget v7, v8, LQ4/L;->m0:F

    iget-object v10, v8, Lcom/android/camera/ui/a$a;->A:Landroid/graphics/Paint;

    iget v11, v8, Lcom/android/camera/ui/a$a;->l:I

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v1 .. v12}, Lp9/K;->g(Landroid/content/Context;Landroid/graphics/Canvas;ZFFFZZLandroid/graphics/Paint;ILandroid/graphics/Paint;)V

    goto/16 :goto_1d

    :goto_27
    move/from16 v11, v22

    if-eq v7, v10, :cond_3e

    if-ne v7, v11, :cond_3f

    :cond_3e
    if-eqz v26, :cond_3f

    iget v2, v8, Lcom/android/camera/ui/a$a;->f:F

    iget v3, v8, Lcom/android/camera/ui/a$a;->c:F

    invoke-static {v3, v2, v1, v2}, LP/e;->a(FFFF)F

    move-result v1

    iput v1, v8, Lcom/android/camera/ui/a$a;->p:F

    goto :goto_28

    :cond_3f
    iget v1, v8, Lcom/android/camera/ui/a$a;->f:F

    iput v1, v8, Lcom/android/camera/ui/a$a;->p:F

    :goto_28
    iget v1, v8, Lcom/android/camera/ui/a$a;->j:F

    const/high16 v7, 0x41600000    # 14.0f

    const/high16 v12, 0x41200000    # 10.0f

    const/high16 v22, 0x41400000    # 12.0f

    if-eqz v9, :cond_40

    iget v2, v8, Lcom/android/camera/ui/a$a;->p:F

    neg-float v3, v2

    mul-float/2addr v3, v12

    div-float v3, v3, v22

    iget v4, v8, LQ4/L;->m0:F

    div-float v4, v4, v18

    sub-float/2addr v3, v4

    neg-float v5, v1

    div-float v9, v5, v18

    move v5, v2

    move v2, v3

    sub-float v3, v9, v4

    mul-float/2addr v5, v7

    div-float v5, v5, v22

    add-float/2addr v5, v4

    div-float v23, v1, v18

    add-float v4, v4, v23

    iget-object v6, v8, Lcom/android/camera/ui/a$a;->A:Landroid/graphics/Paint;

    move v1, v5

    move v5, v4

    move v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v8, Lcom/android/camera/ui/a$a;->p:F

    neg-float v2, v1

    mul-float/2addr v2, v12

    div-float v2, v2, v22

    mul-float/2addr v1, v7

    div-float v4, v1, v22

    iget-object v6, v8, Lcom/android/camera/ui/a$a;->D:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v9

    move/from16 v5, v23

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_29

    :cond_40
    neg-float v2, v1

    div-float v9, v2, v18

    iget v2, v8, LQ4/L;->m0:F

    div-float v2, v2, v18

    move v3, v2

    sub-float v2, v9, v3

    iget v4, v8, Lcom/android/camera/ui/a$a;->p:F

    neg-float v5, v4

    mul-float/2addr v5, v7

    div-float v5, v5, v22

    sub-float/2addr v5, v3

    div-float v23, v1, v18

    move v1, v4

    add-float v4, v3, v23

    mul-float/2addr v1, v12

    div-float v1, v1, v22

    add-float/2addr v1, v3

    iget-object v6, v8, Lcom/android/camera/ui/a$a;->A:Landroid/graphics/Paint;

    move v3, v5

    move v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v8, Lcom/android/camera/ui/a$a;->p:F

    neg-float v2, v1

    mul-float/2addr v2, v7

    div-float v3, v2, v22

    mul-float/2addr v1, v12

    div-float v5, v1, v22

    iget-object v6, v8, Lcom/android/camera/ui/a$a;->D:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v9

    move/from16 v4, v23

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_29
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v22, v11

    move/from16 v10, v19

    move/from16 v2, v21

    move/from16 v11, v25

    move/from16 v9, v27

    move/from16 v19, v28

    move/from16 v12, v29

    goto/16 :goto_f

    :cond_41
    :goto_2a
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {p0}, Lcom/android/camera/ui/a$a;->t()I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-static {v0, v1, p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/HorizontalZoomView;->onMeasure(II)V

    invoke-static {}, LK2/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/HorizontalZoomView;->onMeasure(II)V

    return-void

    :cond_1
    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->b()Lp9/K;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    sget-object v1, Lcom/android/camera/ui/a$b;->a:Lcom/android/camera/ui/a$b;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    :goto_2
    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->h:F

    iget-object v0, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    :goto_3
    int-to-float v0, v0

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    goto :goto_3

    :goto_4
    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->i:F

    iget-object v0, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    :goto_5
    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->g:F

    iget-object p0, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    if-eqz p0, :cond_5

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_5

    iput p1, p0, Lcom/android/camera/ui/a$a;->P:F

    :cond_5
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->m:I

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sget-object v2, Lcom/android/camera/ui/a$b;->a:Lcom/android/camera/ui/a$b;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_32

    const-string v5, " event.getX() "

    const-string v6, " mTouchX = "

    const-string v7, " mSelectPointXRight = "

    const-string v8, "HorizontalScopeZoomView"

    const/4 v9, 0x3

    const/4 v10, -0x1

    if-eq v0, v4, :cond_20

    if-eq v0, v3, :cond_6

    if-eq v0, v9, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_23

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalScopeZoomView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput v10, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->K:I

    goto/16 :goto_23

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->K:I

    if-eq v0, v1, :cond_3b

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/a;->d:Lcom/android/camera/ui/a$e;

    if-eqz v0, :cond_5

    invoke-interface {v0, v9}, Lcom/android/camera/ui/a$e;->oa(I)V

    :cond_5
    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->m:I

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->d0:Z

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->c0:Z

    iput v10, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->K:I

    goto/16 :goto_23

    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->d0:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->c0:Z

    if-nez v0, :cond_7

    goto/16 :goto_23

    :cond_7
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->m:I

    if-ne v0, v4, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->m(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v9, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->K:I

    if-eq v0, v9, :cond_a

    :cond_9
    :goto_0
    return v4

    :cond_a
    :goto_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->m:I

    if-ne v0, v3, :cond_3b

    iget-object v0, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v0, v2, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_2
    iget v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->q:F

    sub-float/2addr v0, v3

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    :goto_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v9, 0x40000000    # 2.0f

    cmpg-float v3, v3, v9

    if-gez v3, :cond_c

    goto/16 :goto_23

    :cond_c
    iget v3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v9, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {p0, v9}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v9, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->e0:I

    if-gt v3, v9, :cond_d

    move v3, v4

    goto :goto_4

    :cond_d
    move v3, v1

    :goto_4
    iget-boolean v9, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->c0:Z

    const/high16 v10, 0x40e00000    # 7.0f

    const/4 v11, 0x0

    if-eqz v9, :cond_15

    iget v9, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {p0, v9}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-eqz v9, :cond_e

    iget-object v12, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v12}, Lcom/android/camera/ui/a$a;->t()I

    move-result v12

    sub-int/2addr v12, v4

    if-ne v9, v12, :cond_f

    :cond_e
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v10

    if-gez v0, :cond_f

    goto/16 :goto_23

    :cond_f
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->U:Z

    if-eqz v0, :cond_11

    if-eqz v3, :cond_13

    iget-object v0, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v0, v2, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_5
    iget v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->q:F

    sub-float/2addr v0, v3

    goto :goto_6

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_5

    :goto_6
    cmpg-float v0, v0, v11

    if-gez v0, :cond_13

    goto/16 :goto_23

    :cond_11
    if-eqz v3, :cond_13

    iget-object v0, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v0, v2, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_7
    iget v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->q:F

    sub-float/2addr v0, v3

    goto :goto_8

    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_7

    :goto_8
    cmpl-float v0, v0, v11

    if-lez v0, :cond_13

    goto/16 :goto_23

    :cond_13
    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    iget-object v3, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v3, v2, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    :goto_9
    iget v9, p0, Lcom/android/camera/ui/HorizontalZoomView;->q:F

    sub-float/2addr v3, v9

    goto :goto_a

    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    goto :goto_9

    :goto_a
    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->i(F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v0, v3, v0

    iget v9, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->e0:I

    if-ge v0, v9, :cond_1d

    sub-int/2addr v3, v9

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v3}, Lcom/android/camera/ui/a$a;->t()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->p(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    goto/16 :goto_11

    :cond_15
    iget-boolean v9, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->d0:Z

    if-eqz v9, :cond_1d

    iget v9, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {p0, v9}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-eqz v9, :cond_16

    iget-object v12, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v12}, Lcom/android/camera/ui/a$a;->t()I

    move-result v12

    sub-int/2addr v12, v4

    if-ne v9, v12, :cond_17

    :cond_16
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v10

    if-gez v0, :cond_17

    goto/16 :goto_23

    :cond_17
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->U:Z

    if-eqz v0, :cond_19

    if-eqz v3, :cond_1b

    iget-object v0, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v0, v2, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_b
    iget v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->q:F

    sub-float/2addr v0, v3

    goto :goto_c

    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_b

    :goto_c
    cmpl-float v0, v0, v11

    if-lez v0, :cond_1b

    goto/16 :goto_23

    :cond_19
    if-eqz v3, :cond_1b

    iget-object v0, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v0, v2, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_d
    iget v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->q:F

    sub-float/2addr v0, v3

    goto :goto_e

    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_d

    :goto_e
    cmpg-float v0, v0, v11

    if-gez v0, :cond_1b

    goto/16 :goto_23

    :cond_1b
    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    iget-object v3, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v3, v2, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    :goto_f
    iget v9, p0, Lcom/android/camera/ui/HorizontalZoomView;->q:F

    sub-float/2addr v3, v9

    goto :goto_10

    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    goto :goto_f

    :goto_10
    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->i(F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v3, v0

    iget v9, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->e0:I

    if-ge v3, v9, :cond_1d

    iget-object v3, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v3}, Lcom/android/camera/ui/a$a;->t()I

    move-result v3

    sub-int/2addr v3, v4

    iget v9, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->e0:I

    add-int/2addr v0, v9

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->p(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    :cond_1d
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "move mSelectPointXLeft = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->q:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->c0:Z

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/HorizontalScopeZoomView;->t(FI)V

    goto :goto_12

    :cond_1e
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->d0:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/HorizontalScopeZoomView;->t(FI)V

    :cond_1f
    :goto_12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_23

    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v11, p0, Lcom/android/camera/ui/a;->d:Lcom/android/camera/ui/a$e;

    if-eqz v11, :cond_21

    invoke-interface {v11, v9}, Lcom/android/camera/ui/a$e;->oa(I)V

    :cond_21
    iget v9, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->K:I

    if-eq v0, v9, :cond_22

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HorizontalScopeZoomView;->v(Z)V

    return v4

    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HorizontalScopeZoomView;->v(Z)V

    return v4

    :cond_23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    long-to-float v0, v11

    iget v9, p0, Lcom/android/camera/ui/HorizontalZoomView;->s:F

    sub-float/2addr v0, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v0, v0, v9

    if-lez v0, :cond_24

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->m:I

    if-eq v0, v3, :cond_24

    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->m:I

    return v4

    :cond_24
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->m:I

    if-ne v0, v3, :cond_31

    iget-object v0, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v0, v2, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_13
    iget v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->q:F

    sub-float/2addr v0, v3

    goto :goto_14

    :cond_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_13

    :goto_14
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_26

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/HorizontalScopeZoomView;->v(Z)V

    goto/16 :goto_23

    :cond_26
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->c0:Z

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v3, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v3}, Lcom/android/camera/ui/a$a;->t()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v0, v3, :cond_27

    goto :goto_17

    :cond_27
    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    iget-object v3, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v3, v2, :cond_28

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    :goto_15
    iget v9, p0, Lcom/android/camera/ui/HorizontalZoomView;->q:F

    sub-float/2addr v3, v9

    goto :goto_16

    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    goto :goto_15

    :goto_16
    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->i(F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v0, v3, v0

    iget v9, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->e0:I

    if-ge v0, v9, :cond_29

    sub-int/2addr v3, v9

    iget-object v0, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v0}, Lcom/android/camera/ui/a$a;->t()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->p(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    :cond_29
    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/ui/HorizontalScopeZoomView;->t(FI)V

    goto/16 :goto_1b

    :cond_2a
    :goto_17
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/HorizontalScopeZoomView;->v(Z)V

    goto/16 :goto_23

    :cond_2b
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->d0:Z

    if-eqz v0, :cond_30

    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v3, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v3}, Lcom/android/camera/ui/a$a;->t()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v0, v3, :cond_2c

    goto :goto_1a

    :cond_2c
    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    iget-object v3, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v3, v2, :cond_2d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    :goto_18
    iget v9, p0, Lcom/android/camera/ui/HorizontalZoomView;->q:F

    sub-float/2addr v3, v9

    goto :goto_19

    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    goto :goto_18

    :goto_19
    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->i(F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v3, v0

    iget v9, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->e0:I

    if-ge v3, v9, :cond_2e

    add-int/2addr v0, v9

    iget-object v3, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v3}, Lcom/android/camera/ui/a$a;->t()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->p(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    :cond_2e
    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/ui/HorizontalScopeZoomView;->t(FI)V

    goto :goto_1b

    :cond_2f
    :goto_1a
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/HorizontalScopeZoomView;->v(Z)V

    goto/16 :goto_23

    :cond_30
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "up mSelectPointXLeft = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/ui/HorizontalZoomView;->q:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/HorizontalScopeZoomView;->v(Z)V

    iput v10, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->K:I

    goto :goto_1c

    :cond_31
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HorizontalScopeZoomView;->v(Z)V

    :goto_1c
    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->m:I

    goto/16 :goto_23

    :cond_32
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->o()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    long-to-float v0, v5

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->s:F

    iget-object v0, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v0, v2, :cond_33

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_1d

    :cond_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_1d
    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->p:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->K:I

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->p:F

    iget v5, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/android/camera/ui/HorizontalZoomView;->p:F

    iget v6, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x42700000    # 60.0f

    cmpg-float v7, v0, v6

    if-gez v7, :cond_34

    move v7, v4

    goto :goto_1e

    :cond_34
    move v7, v1

    :goto_1e
    cmpg-float v6, v5, v6

    if-gez v6, :cond_35

    move v6, v4

    goto :goto_1f

    :cond_35
    move v6, v1

    :goto_1f
    if-eqz v7, :cond_37

    if-eqz v6, :cond_37

    cmpg-float v0, v0, v5

    if-gez v0, :cond_36

    move v0, v4

    goto :goto_20

    :cond_36
    move v0, v1

    :goto_20
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->c0:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->d0:Z

    goto :goto_21

    :cond_37
    iput-boolean v7, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->c0:Z

    iput-boolean v6, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->d0:Z

    :goto_21
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->c0:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_22

    :cond_38
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->d0:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_39
    :goto_22
    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->m:I

    if-ne v0, v3, :cond_3a

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/HorizontalScopeZoomView;->k(Z)V

    goto :goto_23

    :cond_3a
    iput v4, p0, Lcom/android/camera/ui/HorizontalZoomView;->m:I

    :cond_3b
    :goto_23
    iget-object v0, p0, Lcom/android/camera/ui/a;->c:Lcom/android/camera/ui/a$b;

    if-eq v0, v2, :cond_3c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_24

    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_24
    iput p1, p0, Lcom/android/camera/ui/HorizontalZoomView;->q:F

    return v4
.end method

.method public final p(I)F
    .locals 8

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->U:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v3}, Lcom/android/camera/ui/a$a;->t()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_1

    const/4 v4, -0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iget v5, p0, Lcom/android/camera/ui/HorizontalZoomView;->h:F

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalZoomView;->c(I)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    if-ne v3, p1, :cond_2

    goto :goto_6

    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    if-eqz v5, :cond_7

    :goto_2
    iget-object v5, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v5}, Lcom/android/camera/ui/a$a;->t()I

    move-result v5

    if-ge v2, v5, :cond_7

    mul-int v5, v2, v4

    add-int/2addr v5, v3

    if-eqz v0, :cond_4

    if-le v5, p1, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/HorizontalZoomView;->b(I)F

    move-result v5

    :goto_3
    add-float/2addr v5, v6

    move v6, v5

    goto :goto_5

    :cond_3
    sub-int v7, p1, v5

    if-ltz v7, :cond_6

    if-gt v7, v1, :cond_6

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/HorizontalZoomView;->b(I)F

    move-result p0

    :goto_4
    sub-int/2addr v1, v7

    int-to-float p1, v1

    mul-float/2addr p0, p1

    add-float/2addr p0, v6

    return p0

    :cond_4
    if-ge v5, p1, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/HorizontalZoomView;->b(I)F

    move-result v5

    goto :goto_3

    :cond_5
    sub-int v7, v5, p1

    if-ltz v7, :cond_6

    if-gt v7, v1, :cond_6

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/HorizontalZoomView;->b(I)F

    move-result p0

    goto :goto_4

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_6
    return v6
.end method

.method public final q(F)F
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->U:Z

    iget v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->h:F

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalZoomView;->c(I)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    iget v2, p0, Lcom/android/camera/ui/HorizontalZoomView;->i:F

    iget-object v5, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v5}, Lcom/android/camera/ui/a$a;->t()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/HorizontalZoomView;->c(I)F

    move-result v5

    div-float/2addr v5, v4

    sub-float/2addr v2, v5

    sub-float/2addr v2, v3

    cmpg-float v4, v2, v1

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    sub-float/2addr p1, v3

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {p0}, Lcom/android/camera/ui/a$a;->t()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, v2

    sub-float/2addr v0, p1

    mul-float/2addr v0, p0

    return v0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {p0}, Lcom/android/camera/ui/a$a;->t()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    div-float/2addr p1, v2

    mul-float/2addr p1, p0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->M:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->O:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->O:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->M:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->O:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->c0:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->d0:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final s()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->q:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->o:Z

    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->n:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/ui/HorizontalZoomView;->J:F

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->c0:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->d0:Z

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->O:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->N:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->O:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->M:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->O:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setIsMasterLiveMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->l0:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLayoutType(Lcom/android/camera/ui/a$b;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/a;->setLayoutType(Lcom/android/camera/ui/a$b;)V

    new-instance p1, LF1/Z1;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, LF1/Z1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setLeftZoomRatio(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->f0:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    check-cast v0, LQ4/L;

    invoke-virtual {v0, p1}, LQ4/L;->j(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->V:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalScopeZoomView;->p(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    return-void
.end method

.method public setLineCenterYBottom(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRightZoomRatio(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->g0:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    check-cast v0, LQ4/L;

    invoke-virtual {v0, p1}, LQ4/L;->j(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->W:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalScopeZoomView;->p(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    return-void
.end method

.method public final t(FI)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->i(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-virtual {v0}, Lcom/android/camera/ui/a$a;->t()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, LPq/b;->o(FFF)F

    move-result p1

    if-ne p2, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->i(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->i(F)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HorizontalScopeZoomView;->q(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v0

    iget-object v4, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-interface {v4, v3}, Lcom/android/camera/ui/d;->k(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->f0:Ljava/lang/String;

    int-to-float v3, v2

    iget-object v5, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    invoke-interface {v5, v3}, Lcom/android/camera/ui/d;->k(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->g0:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "selectByPointX(): index = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " leftIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rightIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " leftZoomRatio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->f0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " rightZoomRatio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->g0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "HorizontalScopeZoomView"

    invoke-static {v6, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->e0:I

    if-ne v0, v3, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->h0:Z

    if-eqz p2, :cond_1

    iput-boolean v4, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->h0:Z

    invoke-static {}, LU6/c;->h()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object p2

    invoke-virtual {p2}, LBr/e;->p()V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->e0:I

    if-le p2, v0, :cond_2

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->h0:Z

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    if-eqz p2, :cond_3

    instance-of v0, p2, Lcom/android/camera/ui/a$c;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/android/camera/ui/a$c;

    const/4 v0, 0x3

    invoke-interface {p2, p0, p1, v0, v4}, Lcom/android/camera/ui/a$c;->i(Lcom/android/camera/ui/a;FII)V

    :cond_3
    return-void
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->i0:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->j0:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return v3

    :cond_2
    iput-boolean p3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->U:Z

    iget-object v2, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    iput-boolean p3, v2, Lcom/android/camera/ui/a$a;->Q:Z

    const-string/jumbo v2, "setIsAdverse(): isAdverse = "

    const-string v4, " leftRatio = "

    const-string v5, " rightRatio = "

    invoke-static {v2, v4, p1, v5, p3}, LB3/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isByClick = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isFinalRTL = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->U:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "HorizontalScopeZoomView"

    invoke-static {v5, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    check-cast v2, LQ4/L;

    invoke-virtual {v2, p1}, LQ4/L;->j(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    check-cast v4, LQ4/L;

    invoke-virtual {v4, p2}, LQ4/L;->j(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    if-eqz p4, :cond_5

    if-eqz p3, :cond_3

    move p1, v4

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalScopeZoomView;->p(I)F

    move-result p1

    if-eqz p3, :cond_4

    move p2, v2

    goto :goto_1

    :cond_4
    move p2, v4

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/HorizontalScopeZoomView;->p(I)F

    move-result p2

    const-string/jumbo p3, "setIsAdverse(): leftIndex = "

    const-string p4, " rightIndex = "

    const-string v6, " leftTargetX = "

    invoke-static {v2, v4, p3, p4, v6}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, " rightTargetX = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {v5, p3, p4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->a0:F

    iget p4, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->b0:F

    new-array v2, v0, [F

    aput p3, v2, v3

    aput p1, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->i0:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p3, LLy/f;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->i0:Landroid/animation/ValueAnimator;

    new-instance p3, Lq8/L;

    invoke-direct {p3, p0, v3}, Lq8/L;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->i0:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/camera/ui/b;

    invoke-direct {p3, p0}, Lcom/android/camera/ui/b;-><init>(Lcom/android/camera/ui/HorizontalScopeZoomView;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->i0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    new-array p1, v0, [F

    aput p4, p1, v3

    aput p2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, LLy/f;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->j0:Landroid/animation/ValueAnimator;

    new-instance p2, Lq8/M;

    invoke-direct {p2, p0, v3}, Lq8/M;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->j0:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/c;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/c;-><init>(Lcom/android/camera/ui/HorizontalScopeZoomView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_5
    iget-boolean p3, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->U:Z

    if-eqz p3, :cond_6

    iput v4, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->V:I

    iput v2, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->W:I

    iput-object p2, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->f0:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->g0:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iput v2, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->V:I

    iput v4, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->W:I

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->f0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->g0:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method public final v(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->k(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalScopeZoomView;->r()V

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/HorizontalZoomView;->m:I

    return-void
.end method

.method public final w(Ljava/lang/Float;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->e0:I

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->l0:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/ui/a$a;->t()I

    move-result p1

    const/16 v0, 0x62

    if-ne p1, v0, :cond_1

    const/16 p1, 0xb

    iput p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->e0:I

    return-void

    :cond_1
    const/16 p1, 0xa

    iput p1, p0, Lcom/android/camera/ui/HorizontalScopeZoomView;->e0:I

    return-void
.end method
