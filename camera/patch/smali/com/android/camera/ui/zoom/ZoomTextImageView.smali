.class public Lcom/android/camera/ui/zoom/ZoomTextImageView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field public I:Landroid/animation/ObjectAnimator;

.field public J:F

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:F

.field public R:F

.field public S:F

.field public T:F

.field public U:F

.field public V:F

.field public W:F

.field public a:I

.field public a0:F

.field public b:I

.field public b0:Z

.field public c:Ljava/lang/String;

.field public c0:Z

.field public d:Ljava/lang/String;

.field public d0:F

.field public final e:Landroid/graphics/Paint;

.field public e0:[F

.field public final f:Landroid/graphics/Paint;

.field public final f0:Ljava/lang/String;

.field public final g:Landroid/graphics/Paint;

.field public final g0:I

.field public final h:Landroid/graphics/Paint;

.field public h0:F

.field public final i:I

.field public i0:F

.field public final j:Landroid/text/TextPaint;

.field public final j0:I

.field public final k:Landroid/text/TextPaint;

.field public k0:Z

.field public final l:Landroid/text/TextPaint;

.field public l0:Z

.field public m:Z

.field public final m0:I

.field public final n:F

.field public n0:Z

.field public o:Z

.field public o0:I

.field public p:I

.field public p0:F

.field public q:I

.field public q0:F

.field public r:I

.field public r0:Z

.field public s:I

.field public s0:F

.field public t:I

.field public t0:F

.field public u0:F

.field public v0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 6

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-direct {p0, p1, p2, p3, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0xa0

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->m:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->T:F

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->U:F

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->V:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c0:Z

    const/high16 v1, 0x41b80000    # 23.0f

    iput v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->d0:F

    const-string/jumbo v1, "x"

    iput-object v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r0:Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lo9/a;->a:Lo9/b;

    invoke-interface {v4}, Lo9/b;->b()Lp9/K;

    move-result-object v5

    invoke-interface {v5}, Lp9/K;->s()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-interface {v4}, Lo9/b;->d()Lp9/f;

    move-result-object v2

    invoke-interface {v2}, Lp9/f;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-interface {v4}, Lo9/b;->d()Lp9/f;

    move-result-object v3

    invoke-interface {v3}, Lp9/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lna/a;->b(Landroid/graphics/Paint;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "sans-serif-medium"

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    sget-object v2, Lna/a;->a:Ljava/util/HashMap;

    :goto_0
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v4}, Lo9/b;->b()Lp9/K;

    move-result-object v5

    invoke-interface {v5}, Lp9/K;->f()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    const v2, 0x1010161

    const v3, 0x1010164

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const v3, 0x7f1502a8

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p2

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->n:F

    invoke-virtual {v2, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->n:F

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-virtual {v2, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060c12

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p:I

    new-instance p2, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071ab3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070268

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    const v0, 0x7f060026

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i:I

    new-instance v0, Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h:Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k:Landroid/text/TextPaint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->g:Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->l:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->l:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->l:Landroid/text/TextPaint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-interface {v4}, Lo9/b;->b()Lp9/K;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    invoke-interface {v4}, Lo9/b;->b()Lp9/K;

    move-result-object p2

    invoke-interface {p2, p1}, Lp9/K;->k(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->g0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071ac0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j0:I

    iput p3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->m0:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->m:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k0:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->l0:Z

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->m0:I

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r:I

    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->b()Lp9/K;

    move-result-object v0

    invoke-interface {v0, p1}, Lp9/K;->c(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->m:Z

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k0:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->l0:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->L:I

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->P:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final g(Z)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lf2/b;->b()Z

    move-result v2

    invoke-static {}, Lcom/android/camera/data/data/E;->o()I

    move-result v3

    sget-object v4, Lf2/e;->c:Lf2/e;

    const v5, 0x7f060c1a

    invoke-virtual {v4, v5, v2}, Lf2/e;->a(IZ)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->s:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060c1c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->t:I

    iget-object v4, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->s:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->s:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->g:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->s:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060c12

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a:I

    const v7, 0x7f060c10

    const v8, 0x7f060c17

    if-eqz v6, :cond_a

    if-eq v6, v1, :cond_a

    const/4 v9, 0x2

    if-eq v6, v9, :cond_8

    const/4 p1, 0x5

    const v5, 0x7f060c1f

    const v7, 0x7f060c38

    if-eq v6, p1, :cond_2

    const/4 p1, 0x6

    if-eq v6, p1, :cond_2

    const/4 p1, 0x7

    if-eq v6, p1, :cond_2

    const/16 p1, 0x9

    if-eq v6, p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Lf2/e;->c:Lf2/e;

    invoke-virtual {p1, v5, v2}, Lf2/e;->a(IZ)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p:I

    sget-object p1, Lf2/e;->c:Lf2/e;

    invoke-virtual {p1, v8, v2}, Lf2/e;->a(IZ)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    sget-object p1, Lf2/e;->c:Lf2/e;

    const v4, 0x7f060c1d

    invoke-virtual {p1, v4, v2}, Lf2/e;->a(IZ)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r:I

    iget-object v4, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    const-string p1, "mipro-medium"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    sget-object p1, Lna/a;->a:Ljava/util/HashMap;

    if-nez v3, :cond_0

    sget-object p1, Lf2/e;->c:Lf2/e;

    invoke-virtual {p1, v7, v2}, Lf2/e;->a(IZ)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r:I

    :cond_0
    if-ne v3, v1, :cond_1

    sget-object p1, Lf2/e;->c:Lf2/e;

    invoke-virtual {p1, v7, v2}, Lf2/e;->a(IZ)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p:I

    sget-object p1, Lf2/e;->c:Lf2/e;

    invoke-virtual {p1, v7, v2}, Lf2/e;->a(IZ)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r:I

    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Lf2/e;->c:Lf2/e;

    invoke-virtual {p1, v5, v2}, Lf2/e;->a(IZ)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p:I

    invoke-static {}, Lcom/android/camera/data/data/E;->o()I

    move-result p1

    invoke-static {p1}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {}, LK2/b;->U()Z

    move-result v3

    if-eqz v3, :cond_3

    move p1, v2

    goto :goto_0

    :cond_3
    new-array v3, v9, [I

    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v5, Landroid/graphics/Rect;

    aget v0, v3, v0

    aget v6, v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v0

    aget v3, v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v3

    invoke-direct {v5, v0, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    xor-int/2addr p1, v1

    :goto_0
    sget-object v0, Lf2/e;->c:Lf2/e;

    invoke-static {}, LK2/b;->c()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, LK2/b;->W()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    move v8, v7

    :cond_5
    invoke-virtual {v0, v8, v2}, Lf2/e;->a(IZ)I

    move-result v0

    goto :goto_2

    :cond_6
    :goto_1
    const v1, 0x7f060a4a

    invoke-virtual {v0, v1, v2}, Lf2/e;->a(IZ)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r:I

    if-eqz p1, :cond_7

    sget-object p1, Lf2/e;->c:Lf2/e;

    invoke-virtual {p1, v7, v2}, Lf2/e;->a(IZ)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p:I

    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    return-void

    :cond_8
    new-array v1, v1, [Landroid/view/View;

    aput-object p0, v1, v0

    invoke-static {v1}, LS1/i;->m([Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p1, :cond_9

    sget-object p1, Lf2/e;->c:Lf2/e;

    invoke-virtual {p1, v7, v2}, Lf2/e;->a(IZ)I

    move-result p1

    goto :goto_3

    :cond_9
    sget-object p1, Lf2/e;->c:Lf2/e;

    invoke-virtual {p1, v5, v2}, Lf2/e;->a(IZ)I

    move-result p1

    :goto_3
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p:I

    sget-object v0, Lf2/e;->c:Lf2/e;

    invoke-virtual {v0, v8, v2}, Lf2/e;->a(IZ)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    return-void

    :cond_a
    new-array v1, v1, [Landroid/view/View;

    aput-object p0, v1, v0

    invoke-static {v1}, LS1/i;->m([Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p1, :cond_b

    sget-object p1, Lf2/e;->c:Lf2/e;

    invoke-virtual {p1, v7, v2}, Lf2/e;->a(IZ)I

    move-result p1

    goto :goto_4

    :cond_b
    sget-object p1, Lf2/e;->c:Lf2/e;

    invoke-virtual {p1, v5, v2}, Lf2/e;->a(IZ)I

    move-result p1

    :goto_4
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p:I

    sget-object v0, Lf2/e;->c:Lf2/e;

    invoke-virtual {v0, v8, v2}, Lf2/e;->a(IZ)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r:I

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    :cond_c
    return-void
.end method

.method public getCurrentText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getExpandedDelta()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->u0:F

    return p0
.end method

.method public getFilterType()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o0:I

    return p0
.end method

.method public getNumWidth()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    return p0
.end method

.method public getTemporaryTranslation()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->q0:F

    return p0
.end method

.method public getTranslationUnit()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p0:F

    return p0
.end method

.method public getZoomRatio()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->s0:F

    return p0
.end method

.method public final h(II)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a:I

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->g(Z)V

    return-void
.end method

.method public final i(FZ)V
    .locals 7

    invoke-static {p1}, LO0/A;->B(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v2, v0, v1

    rem-float/2addr v2, v1

    const/4 v1, 0x0

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    float-to-int v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->s0:F

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c0:Z

    const-string v3, ""

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e0:[F

    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    div-float/2addr v0, p2

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->d0:F

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e0:[F

    array-length v4, v2

    if-ge p1, v4, :cond_4

    aget v2, v2, p1

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3d4ccccd    # 0.05f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e0:[F

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_4
    float-to-int p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->d:Ljava/lang/String;

    :cond_5
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->g1(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lj9/f;->n2()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v2, Lv2/i0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/i0;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iget-object v2, v0, Lv2/i0;->a:Lrh/a;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lrh/a;->h:Ljava/util/ArrayList;

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    iget-object v0, v0, Lv2/i0;->a:Lrh/a;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v0, v0, Lrh/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, "iterator(...)"

    invoke-static {v0, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, -0x40800000    # -1.0f

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrh/b;

    iget v5, v4, Lrh/b;->c:F

    sub-float v5, p1, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-float v5, v5

    cmpg-float v6, v5, v2

    if-ltz v6, :cond_9

    cmpg-float v6, v2, v1

    if-gez v6, :cond_8

    :cond_9
    iget p2, v4, Lrh/b;->c:F

    move v2, v5

    goto :goto_5

    :cond_a
    move p1, p2

    :cond_b
    :goto_6
    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setText(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f140092

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-virtual {p0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_e
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setText(Ljava/lang/String;)V

    if-nez p2, :cond_10

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f14009c

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_8
    invoke-virtual {p0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_10
    invoke-virtual {p0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->t0:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final k(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->I:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eqz p2, :cond_3

    const-string p2, "backgroundColor"

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p:I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->I:Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r:I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->I:Landroid/animation/ObjectAnimator;

    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->I:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->I:Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->I:Landroid/animation/ObjectAnimator;

    new-instance p2, LLy/g;

    invoke-direct {p2}, LLy/g;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->I:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r:I

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p:I

    :goto_1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->q:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final l(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    iput p3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    iput p4, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->P:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->L:I

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    :cond_0
    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->L:I

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->L:I

    :cond_1
    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    :cond_2
    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    :cond_3
    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    :cond_4
    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->P:I

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->P:I

    :cond_5
    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->L:I

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->P:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    iput v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a:I

    const/4 v9, 0x0

    const-string v10, "mm"

    const/high16 v11, 0x3f800000    # 1.0f

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    if-nez v2, :cond_f

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060a45

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j0:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j0:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_1
    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->q:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->J:F

    add-float/2addr v2, v9

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    if-eqz v2, :cond_6

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    add-float/2addr v3, v4

    div-float/2addr v3, v8

    sub-float v3, v2, v3

    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    neg-float v2, v2

    div-float/2addr v2, v8

    add-float v4, v2, v11

    iput v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    sub-int/2addr v5, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v5, v8, v4}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    sub-int/2addr v5, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v5, v8, v4}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_6
    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    div-float/2addr v3, v8

    sub-float v3, v2, v3

    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->U:F

    div-float/2addr v3, v8

    sub-float v3, v2, v3

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v2

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->V:F

    sub-float/2addr v2, v5

    div-float/2addr v2, v8

    sub-float/2addr v4, v2

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k:Landroid/text/TextPaint;

    const-string v2, "mm"

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->U:F

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->V:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v8

    sub-float/2addr v4, v3

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v2, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_2
    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->q:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b0:Z

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_7
    invoke-static {}, Lo9/a;->a()Lo9/b;

    move-result-object v2

    invoke-interface {v2}, Lo9/b;->b()Lp9/K;

    move-result-object v11

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget-object v13, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    iget v14, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->s:I

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->d()Z

    move-result v15

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    iget-boolean v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->n0:Z

    iget-boolean v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->v0:Z

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-interface/range {v11 .. v18}, Lp9/K;->r(Landroid/content/res/Resources;Landroid/graphics/Paint;IZZZZ)V

    invoke-static {}, Lo9/a;->a()Lo9/b;

    move-result-object v2

    invoke-interface {v2}, Lo9/b;->b()Lp9/K;

    move-result-object v11

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget-object v13, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h:Landroid/graphics/Paint;

    iget v14, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->s:I

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->d()Z

    move-result v15

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    iget-boolean v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->n0:Z

    iget-boolean v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->v0:Z

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-interface/range {v11 .. v18}, Lp9/K;->r(Landroid/content/res/Resources;Landroid/graphics/Paint;IZZZZ)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->J:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    div-float/2addr v3, v8

    sub-float v3, v2, v3

    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->g0:I

    int-to-float v4, v2

    iput v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->U:F

    div-float/2addr v3, v8

    sub-float v3, v2, v3

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    neg-float v2, v2

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->V:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    sub-float/2addr v2, v4

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->g0:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k:Landroid/text/TextPaint;

    const-string v2, "mm"

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->U:F

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    neg-float v3, v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->V:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->g0:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_3
    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    int-to-float v6, v2

    add-float v2, v3, v6

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->J:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float v4, v3, v6

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v6

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    div-float/2addr v3, v8

    sub-float v3, v2, v3

    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float v3, v2, v6

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->T:F

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    add-float/2addr v4, v2

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->l:Landroid/text/TextPaint;

    const-string v2, "mm"

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v6, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->T:F

    div-float/2addr v3, v8

    sub-float/2addr v6, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    add-float/2addr v2, v3

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v6, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_4
    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->q:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lo9/a;->a()Lo9/b;

    move-result-object v2

    invoke-interface {v2}, Lo9/b;->b()Lp9/K;

    move-result-object v12

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget-object v14, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    iget v15, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->s:I

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->d()Z

    move-result v16

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    const/16 v18, 0x0

    iget-boolean v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->v0:Z

    move/from16 v17, v2

    move/from16 v19, v3

    invoke-interface/range {v12 .. v19}, Lp9/K;->r(Landroid/content/res/Resources;Landroid/graphics/Paint;IZZZZ)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    iget-boolean v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    if-eqz v3, :cond_8

    const/high16 v3, -0x1000000

    goto :goto_1

    :cond_8
    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->s:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    iget-boolean v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    goto :goto_2

    :cond_9
    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->J:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    div-float/2addr v3, v8

    sub-float v3, v2, v3

    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    neg-float v2, v2

    div-float/2addr v2, v8

    add-float v4, v2, v11

    iput v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object v12, v0

    iget-object v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v4, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_5
    move-object v12, v0

    iget-object v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070b6c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v0, v0

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    int-to-float v2, v2

    add-float/2addr v2, v9

    iget v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->L:I

    int-to-float v3, v3

    iget v4, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->P:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    iget v5, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v8

    add-float/2addr v4, v9

    iget-object v5, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    div-float/2addr v5, v8

    add-float/2addr v5, v0

    iget-object v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float/2addr v0, v8

    sub-float/2addr v2, v0

    iget-object v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float/2addr v0, v8

    sub-float/2addr v3, v0

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget-object v6, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    div-float/2addr v6, v8

    sub-float/2addr v0, v6

    iget v6, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget-object v7, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v7, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    move/from16 v21, v5

    move v5, v0

    move-object v0, v1

    move v1, v4

    move v4, v3

    move v3, v2

    move/from16 v2, v21

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v9, v0}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v6, v13

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v0, v6

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    iget v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->T:F

    add-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float v3, v0, v2

    iput v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    neg-float v0, v0

    div-float/2addr v0, v8

    add-float v4, v0, v11

    iput v4, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    move-object v0, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->T:F

    invoke-static {v2, v3, v8, v6}, LN/i;->a(FFFF)F

    move-result v3

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v2, v2

    div-float/2addr v2, v8

    add-float v4, v2, v11

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    const-string v2, "mm"

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    sub-int/2addr v0, v2

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v0, v2

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->T:F

    invoke-static {v0, v2, v8, v6}, LN/i;->a(FFFF)F

    move-result v0

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v2, v2

    div-float/2addr v2, v8

    add-float/2addr v2, v11

    iget-object v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_6
    move-object v12, v0

    iget-object v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    if-eqz v0, :cond_14

    const/4 v0, 0x6

    if-ne v2, v0, :cond_b

    iget-object v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_b
    iget-object v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_3
    iget v10, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    iget-boolean v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r0:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lo9/a;->a()Lo9/b;

    move-result-object v0

    invoke-interface {v0}, Lo9/b;->b()Lp9/K;

    move-result-object v0

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    int-to-float v3, v10

    add-float/2addr v3, v2

    iget v4, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget-object v5, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    div-float/2addr v5, v8

    sub-float v5, v2, v5

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lo9/a;->a()Lo9/b;

    move-result-object v6

    invoke-interface {v6}, Lo9/b;->b()Lp9/K;

    move-result-object v6

    invoke-interface {v6}, Lp9/K;->h()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v6, v2

    iget-object v7, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-interface/range {v0 .. v7}, Lp9/K;->u(Landroid/content/Context;Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object v1, v2

    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->J:F

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    int-to-float v6, v10

    add-float v3, v2, v6

    iget v4, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v9, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v0, v6

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    iget v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    add-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float v3, v0, v2

    iput v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    neg-float v0, v0

    div-float/2addr v0, v8

    add-float v4, v0, v11

    iput v4, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    move-object v0, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v4

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v4, v8, v6}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    iget v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    sub-int/2addr v2, v3

    iget v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v2, v3

    iget v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v2, v3, v8, v6}, LN/i;->a(FFFF)F

    move-result v2

    iget v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v3, v3

    div-float/2addr v3, v8

    add-float/2addr v3, v11

    iget-object v4, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_7
    move-object v12, v0

    iget-object v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-static {}, Lo9/a;->a()Lo9/b;

    move-result-object v0

    invoke-interface {v0}, Lo9/b;->b()Lp9/K;

    move-result-object v13

    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-object v15, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->s:I

    invoke-virtual {v12}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->d()Z

    move-result v17

    iget-boolean v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    const/16 v19, 0x0

    iget-boolean v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->v0:Z

    move/from16 v16, v0

    move/from16 v18, v2

    move/from16 v20, v3

    invoke-interface/range {v13 .. v20}, Lp9/K;->r(Landroid/content/res/Resources;Landroid/graphics/Paint;IZZZZ)V

    iget-boolean v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    if-eqz v0, :cond_d

    iget-object v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->q:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lo9/a;->a()Lo9/b;

    move-result-object v0

    invoke-interface {v0}, Lo9/b;->b()Lp9/K;

    move-result-object v0

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v5, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    add-float v3, v5, v2

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v2, v2

    add-float v4, v5, v2

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lo9/a;->a()Lo9/b;

    move-result-object v6

    invoke-interface {v6}, Lo9/b;->b()Lp9/K;

    move-result-object v6

    invoke-interface {v6}, Lp9/K;->h()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v6, v2

    iget-object v7, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-interface/range {v0 .. v7}, Lp9/K;->u(Landroid/content/Context;Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object v1, v2

    :cond_d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->J:F

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v4, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v9, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    if-eqz v0, :cond_e

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v0, v0

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v0, v2

    iget v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    iget v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    add-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float v3, v0, v2

    iput v3, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v0, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    neg-float v0, v0

    div-float/2addr v0, v8

    add-float v4, v0, v11

    iput v4, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    move-object v0, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    sub-int/2addr v5, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v5, v8, v4}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    sub-int/2addr v5, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v5, v8, v4}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_e
    move-object v0, v12

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    div-float/2addr v3, v8

    sub-float v3, v2, v3

    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    neg-float v2, v2

    div-float/2addr v2, v8

    add-float v4, v2, v11

    iput v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_f
    :pswitch_8
    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->q:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->J:F

    add-float/2addr v2, v9

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {}, Lo9/a;->a()Lo9/b;

    move-result-object v2

    invoke-interface {v2}, Lo9/b;->b()Lp9/K;

    move-result-object v12

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget-object v14, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    iget v15, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->s:I

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->d()Z

    move-result v16

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    iget-boolean v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->n0:Z

    iget-boolean v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->v0:Z

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-interface/range {v12 .. v19}, Lp9/K;->r(Landroid/content/res/Resources;Landroid/graphics/Paint;IZZZZ)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    if-eqz v2, :cond_10

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->t0:F

    sub-float v5, v11, v5

    mul-float/2addr v5, v4

    add-float/2addr v5, v3

    div-float/2addr v5, v8

    sub-float v3, v2, v5

    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    neg-float v2, v2

    div-float/2addr v2, v8

    add-float v4, v2, v11

    iput v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->t0:F

    sub-float v3, v11, v3

    int-to-float v4, v6

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->t0:F

    sub-float v3, v11, v3

    int-to-float v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    sub-int/2addr v5, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v5, v8, v4}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    sub-int/2addr v5, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v5, v8, v4}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_10
    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->t0:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    div-float/2addr v4, v8

    sub-float v3, v2, v4

    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    neg-float v2, v2

    div-float/2addr v2, v8

    add-float v4, v2, v11

    iput v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->t0:F

    int-to-float v4, v6

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->t0:F

    int-to-float v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    sub-int/2addr v5, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v5, v8, v4}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    sub-int/2addr v5, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v5, v8, v4}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_5
    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_9
    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->J:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    add-float/2addr v3, v4

    div-float/2addr v3, v8

    sub-float v3, v2, v3

    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    neg-float v2, v2

    div-float/2addr v2, v8

    add-float v4, v2, v11

    iput v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    sub-int/2addr v5, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v5, v8, v4}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    sub-int/2addr v5, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v5, v8, v4}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_a
    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->t:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    :cond_11
    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->s:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_6
    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->q:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->J:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    add-float/2addr v3, v4

    div-float/2addr v3, v8

    sub-float v3, v2, v3

    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    neg-float v2, v2

    div-float/2addr v2, v8

    add-float v4, v2, v11

    iput v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    sub-int/2addr v5, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v5, v8, v4}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    sub-int/2addr v5, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v5, v8, v4}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_b
    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->q:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->t:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    :cond_12
    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->s:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_7
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->J:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o:Z

    if-eqz v2, :cond_13

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    add-float/2addr v3, v4

    div-float/2addr v3, v8

    sub-float v3, v2, v3

    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    neg-float v2, v2

    div-float/2addr v2, v8

    add-float v4, v2, v11

    iput v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    sub-int/2addr v5, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v5, v8, v4}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v4, v3

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    sub-int/2addr v5, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    invoke-static {v3, v5, v8, v4}, LN/i;->a(FFFF)F

    move-result v3

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    neg-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v4, v11

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_13
    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->Q:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    div-float/2addr v3, v8

    sub-float v3, v2, v3

    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    neg-float v2, v2

    div-float/2addr v2, v8

    add-float v4, v2, v11

    iput v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->j:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h0:F

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i0:F

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_8
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final sendAccessibilityEvent(I)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->q:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBaseFocalLens(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->d0:F

    return-void
.end method

.method public setBgAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->n0:Z

    return-void
.end method

.method public setConverted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->v0:Z

    return-void
.end method

.method public setEnableStroke(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->l0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->m:Z

    return-void
.end method

.method public setExpandedDelta(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->u0:F

    return-void
.end method

.method public setFilterType(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->o0:I

    return-void
.end method

.method public setFocalLengthMap([F)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e0:[F

    return-void
.end method

.method public setIsOnlyZoomCount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b0:Z

    return-void
.end method

.method public setIsShowRatioAsFocalLens(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c0:Z

    return-void
.end method

.method public setIsVerType(Z)V
    .locals 0

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->J:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSupportOpticalZoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k0:Z

    return-void
.end method

.method public setTemporaryTranslation(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->q0:F

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->R:F

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->g:Landroid/graphics/Paint;

    const-string v0, "mm"

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->T:F

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->U:F

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->V:F

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->W:F

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->S:F

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->a0:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTranslationUnit(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->p0:F

    return-void
.end method

.method public setZoomRatioFocal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->d:Ljava/lang/String;

    return-void
.end method
