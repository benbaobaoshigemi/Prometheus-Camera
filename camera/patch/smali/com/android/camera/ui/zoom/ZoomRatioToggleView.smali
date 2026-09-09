.class public Lcom/android/camera/ui/zoom/ZoomRatioToggleView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/zoom/ZoomRatioToggleView$f;,
        Lcom/android/camera/ui/zoom/ZoomRatioToggleView$e;,
        Lcom/android/camera/ui/zoom/ZoomRatioToggleView$d;,
        Lcom/android/camera/ui/zoom/ZoomRatioToggleView$c;
    }
.end annotation


# static fields
.field public static final synthetic z0:I


# instance fields
.field public I:I

.field public J:Landroid/animation/AnimatorSet;

.field public K:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$e;

.field public L:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$d;

.field public M:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$c;

.field public N:I

.field public O:Z

.field public final P:Landroid/os/Handler;

.field public Q:[F

.field public R:F

.field public S:I

.field public T:I

.field public U:I

.field public V:F

.field public W:F

.field public a:Z

.field public a0:I

.field public b:Z

.field public b0:F

.field public c:Z

.field public c0:Landroid/graphics/Paint;

.field public d:F

.field public d0:LH8/h;

.field public e:I

.field public final e0:[Landroid/animation/ValueAnimator;

.field public f:Ljava/lang/CharSequence;

.field public f0:Z

.field public g:I

.field public g0:Z

.field public h:Z

.field public h0:Z

.field public i:[F

.field public i0:Z

.field public j:Z

.field public j0:Z

.field public k:Z

.field public k0:F

.field public l:Z

.field public l0:Z

.field public m:I

.field public m0:Landroid/animation/ValueAnimator;

.field public n:Landroid/graphics/Rect;

.field public n0:F

.field public o:I

.field public final o0:Ljava/util/ArrayList;

.field public p:F

.field public final p0:Ljava/util/ArrayList;

.field public q:I

.field public final q0:Ljava/util/ArrayList;

.field public r:I

.field public r0:F

.field public s:Landroid/graphics/Paint;

.field public s0:F

.field public t:I

.field public t0:Z

.field public u0:Z

.field public v0:Z

.field public w0:F

.field public x0:F

.field public final y0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->e:I

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g:I

    iput-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->h:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l:Z

    const/16 v1, 0xa3

    iput v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iput v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->N:I

    iput-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->O:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->P:Landroid/os/Handler;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->R:F

    iput v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->W:F

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a0:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b0:F

    new-array v1, p2, [Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->e0:[Landroid/animation/ValueAnimator;

    iput-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    iput-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->h0:Z

    iput-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->i0:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->j0:Z

    const/high16 v1, 0x41b80000    # 23.0f

    iput v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->k0:F

    iput-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l0:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o0:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p0:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q0:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t0:Z

    new-instance p2, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$b;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$b;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->y0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$b;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->v(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Lcom/android/camera/ui/zoom/ZoomTextImageView;)F
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, LH8/h;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getExpandedDelta()F

    move-result p1

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {p0}, LH8/h;->e()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic b(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getLeftEdge()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getNormalBgColor()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result p0

    return p0
.end method

.method public static e(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Landroid/widget/FrameLayout;)V
    .locals 12

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ", add index: "

    const-string v3, ", value: "

    const-string v4, "ZoomRatioToggleView"

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v5

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    iget-boolean v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v7, :cond_1

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1
    move-object v7, v1

    check-cast v7, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_2

    add-int/lit8 v8, v8, 0x1

    neg-int v8, v8

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "startToggleAnimation, complete to add normal view: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v2, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v8, v2, v8

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v0, p1, LH8/h;->n:[I

    aget v0, v0, v5

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object p1, p1, LH8/h;->o:Ljava/util/ArrayList;

    move v6, v1

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    if-ge v6, v7, :cond_6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v5

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_5

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v9}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    new-instance v8, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v5, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v8, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setSupportOpticalZoom(Z)V

    const/16 v9, 0xc

    iget v10, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v8, v9, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    invoke-virtual {v8, v5, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "startToggleAnimation, complete to add optical view: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v9, v2, v0}, LDn/g;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v4, v7, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v7, v0, 0x1

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    iget v10, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    iget v11, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v8, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v6, v6, 0x1

    move v0, v7

    goto/16 :goto_2

    :cond_6
    return-void
.end method

.method public static g([F)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget v2, p0, v2

    aput v2, p0, v0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aput v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getBgColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getNormalBgColor()I

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a0:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-boolean v1, v0, LH8/h;->y:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v1}, LH8/h;->m(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->b()Lp9/K;

    move-result-object v0

    invoke-interface {v0}, Lp9/K;->b()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getNormalBgColor()I

    move-result p0

    return p0

    :cond_1
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getNormalBgColor()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method private getEdge()I
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    div-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    div-int/lit8 v1, v1, 0x2

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getOneZoomRatioEdge()I

    move-result v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, v0

    add-int/2addr p0, v1

    return p0
.end method

.method private getLeftEdge()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget v2, v2, LH8/h;->t:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    mul-int/2addr p0, v0

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private getNormalBgColor()I
    .locals 6

    invoke-static {}, Lf2/b;->b()Z

    move-result v0

    invoke-static {}, LK2/b;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, LK2/b;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f060c37

    goto :goto_1

    :cond_1
    :goto_0
    const v1, 0x7f060026

    :goto_1
    sget-object v2, Lf2/e;->c:Lf2/e;

    invoke-virtual {v2, v1, v0}, Lf2/e;->a(IZ)I

    move-result v1

    invoke-static {}, LK2/b;->R()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    invoke-static {}, LK2/b;->T()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/E;->o()I

    move-result v4

    iget-boolean v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getPadZoomViewRightToScreenLeft()I

    move-result p0

    invoke-static {v4}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge p0, v4, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    invoke-static {}, LK2/b;->a0()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x4

    if-eq v4, p0, :cond_3

    const/4 p0, 0x3

    if-eq v4, p0, :cond_3

    goto :goto_2

    :cond_5
    invoke-static {}, LK2/b;->X()Z

    move-result v3

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    sget-object p0, Lf2/e;->c:Lf2/e;

    const v1, 0x7f060be4

    invoke-virtual {p0, v1, v0}, Lf2/e;->a(IZ)I

    move-result p0

    return p0

    :cond_7
    return v1
.end method

.method private getOneZoomRatioEdge()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, LK2/b;->a0()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0714b4

    goto :goto_0

    :cond_0
    const v1, 0x7f070b6b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private getTargetItemGap()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {p0}, LH8/h;->e()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    :cond_0
    invoke-static {}, LK2/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070683

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071af0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0
.end method

.method private getVisibleCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getZoomBgViewExpandedDelta()F
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, LH8/h;->y:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LH8/h;->e()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m:I

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {p0}, LH8/h;->e()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j([F[F)F
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p0

    :goto_1
    if-ge v2, p1, :cond_2

    aget v1, p0, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method public final A(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {p0, p1}, LH8/h;->n(I)Z

    move-result p0

    return p0
.end method

.method public final B()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-boolean p0, p0, LH8/h;->y:Z

    return p0
.end method

.method public final C()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, LH8/h;->z:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final D(I)Z
    .locals 4

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->N:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x2

    if-ne p0, v3, :cond_1

    const/4 p0, -0x1

    if-eq p1, p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-nez v2, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    :goto_2
    return v1
.end method

.method public final E()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final F(I[F)Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_e

    const/16 v3, 0xa7

    if-eq p1, v3, :cond_e

    const/16 v4, 0xa4

    if-eq p1, v4, :cond_e

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    invoke-virtual {p1}, LJe/c;->s1()V

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    if-eq v5, v1, :cond_e

    if-eq v5, v3, :cond_e

    if-eq v5, v4, :cond_e

    invoke-virtual {p1}, LJe/c;->s1()V

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz p1, :cond_4

    iget-boolean p1, p1, LH8/h;->y:Z

    if-eqz p1, :cond_4

    array-length p1, p2

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v1, v1

    if-ne p1, v1, :cond_4

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    if-eq p1, v1, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->j0:Z

    if-nez p1, :cond_5

    goto/16 :goto_1

    :cond_5
    if-eqz p1, :cond_6

    array-length v1, p2

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v3, v3

    if-ne v1, v3, :cond_6

    goto/16 :goto_1

    :cond_6
    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    invoke-static {p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->j([F[F)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g:I

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {}, LK2/b;->b0()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->h:Z

    if-eqz p1, :cond_a

    iput-boolean v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->h:Z

    return v2

    :cond_a
    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LF1/u1;

    const/4 v1, 0x5

    invoke-direct {p2, v1}, LF1/u1;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    iput-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->h:Z

    return v2

    :cond_b
    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LO5/a;

    invoke-direct {p1, v2}, LO5/a;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_1

    :cond_c
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/M;

    invoke-direct {p1, v0}, LF1/M;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_1

    :cond_d
    :goto_0
    return v0

    :cond_e
    :goto_1
    return v2
.end method

.method public final varargs G([I)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c(Z)V

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final H()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ZoomRatioToggleView"

    const-string v3, "resetAnimators"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->J:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->e0:[Landroid/animation/ValueAnimator;

    aget-object p0, p0, v0

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/Animator;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v0, LEs/l;

    invoke-direct {v0, v2}, LEs/l;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final I()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, LH8/h;->x:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, LH8/h;->y:Z

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelOpticalZoomAnimation: mCurrentIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, LH8/h;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTargetIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, LH8/h;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "OpticalZoomConfig"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, LH8/h;->l:Z

    iget-object v1, v0, LH8/h;->i:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-boolean v3, v0, LH8/h;->x:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LH8/h;->o()V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T(Z)V

    :cond_2
    return-void
.end method

.method public final J(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->e0:[Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, p0, v0

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    aget-object p1, p0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    aget-object p1, p0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x0

    aput-object p1, p0, v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final K()V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedSwitchZoomButton"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v0, v1}, LJe/c;->O1(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->j:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    invoke-virtual {v0, v1}, LJe/c;->O1(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/E;->e0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, LJe/c;->s1()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget-boolean v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->O:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setIgnoreFreshSuppress(Z)V

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Z(Lcom/android/camera/ui/zoom/ZoomTextImageView;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->A(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xc

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatioFocal(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public final L(IIZZ)Z
    .locals 38

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v7, p3

    move/from16 v3, p4

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    invoke-virtual {v4}, Lu2/Q;->O()Z

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/E;->Z()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v9

    goto :goto_0

    :cond_0
    move v5, v8

    :goto_0
    const/16 v6, 0xab

    if-ne v1, v6, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/j;->v0()Z

    move-result v6

    invoke-static {v4, v6}, Lj9/q0;->d(ZZ)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Lcom/android/camera/data/data/j;->g1(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lj9/f;->n2()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/16 v4, 0xbc

    if-ne v1, v4, :cond_3

    :cond_2
    move v10, v9

    goto :goto_1

    :cond_3
    move v10, v8

    :goto_1
    iget-boolean v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->j:Z

    const/16 v6, 0xa4

    if-eqz v4, :cond_4

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->i:[F

    iput-boolean v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->j:Z

    move-object v11, v1

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->E()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setCurrentMode(I)V

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {v4, v3}, Lcom/android/camera/data/data/j;->U(IZ)[F

    move-result-object v4

    iget v11, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v12, 0xb4

    if-eq v11, v12, :cond_7

    const/16 v12, 0xa7

    if-ne v11, v12, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    iget v11, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    if-ne v11, v6, :cond_8

    :cond_7
    iget v11, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {v11, v8}, Lcom/android/camera/data/data/j;->j1(IZ)Z

    move-result v11

    if-nez v11, :cond_8

    move v11, v9

    goto :goto_2

    :cond_8
    move v11, v8

    :goto_2
    iput-boolean v11, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f0:Z

    invoke-virtual {v0, v4, v10, v7, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t([FZZZ)[F

    move-result-object v4

    array-length v11, v4

    const-string v12, "ZoomRatioToggleView"

    const-string/jumbo v13, "setCapturingMode with: capturingMode: "

    const-string v14, ", suppressed: "

    const-string v15, ", isRecording: "

    invoke-static {v13, v7, v14, v1, v15}, LZ1/c;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", count: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", childCount: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v13, v8, [Ljava/lang/Object;

    invoke-static {v12, v1, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz v11, :cond_9

    return v8

    :cond_9
    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v1, :cond_a

    invoke-static {v4}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g([F)V

    :cond_a
    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    xor-int/lit8 v12, v1, 0x1

    iput-boolean v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->j0:Z

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget v1, v1, LH8/h;->q:I

    add-int/2addr v11, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eq v11, v1, :cond_b

    move v1, v9

    goto :goto_3

    :cond_b
    move v1, v8

    :goto_3
    iput-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->j0:Z

    :cond_c
    invoke-virtual {v0, v2, v4}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->F(I[F)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->u0:Z

    move-object v11, v4

    :goto_4
    array-length v1, v11

    iput v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m:I

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->u0:Z

    const/16 v13, 0x8

    if-eqz v1, :cond_55

    const-string v1, "ZoomRatioToggleView"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "old supportedZoomRatios: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    invoke-static {v15}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", new supportedZoomRatios: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", mLastModule: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", mCurrentModule: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {v15, v14}, LMf/c;->g(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v14

    new-array v15, v8, [Ljava/lang/Object;

    invoke-static {v1, v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    filled-new-array {v1, v11}, [[F

    move-result-object v1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v14

    const-class v15, Lv2/v0;

    invoke-virtual {v14, v15}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv2/v0;

    const/4 v15, 0x2

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v14, :cond_11

    const/16 v12, 0xa3

    invoke-virtual {v14, v12}, Lv2/v0;->s(I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/data/data/d;

    invoke-static {}, Lcom/android/camera/data/data/w;->m()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iget v4, v14, Lcom/android/camera/data/data/d;->f:I

    int-to-float v4, v4

    invoke-static {v6, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v14, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_6

    :cond_d
    const/16 v6, 0xa4

    goto :goto_5

    :cond_e
    move/from16 v4, p1

    :goto_6
    cmpl-float v6, v4, p1

    if-eqz v6, :cond_11

    move v6, v8

    :goto_7
    if-ge v6, v15, :cond_11

    aget-object v12, v1, v6

    move v14, v8

    :goto_8
    array-length v15, v12

    if-ge v14, v15, :cond_10

    aget v15, v12, v14

    cmpl-float v15, v15, v4

    if-nez v15, :cond_f

    aput p1, v12, v14

    goto :goto_9

    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_10
    :goto_9
    add-int/lit8 v6, v6, 0x1

    const/4 v15, 0x2

    goto :goto_7

    :cond_11
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-string v4, "pref_camera_zoom_running_key"

    iget-object v6, v1, LWh/a;->a:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v1, v1, LWh/a;->b:LJ/g;

    invoke-virtual {v1, v4}, LJ/g;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_54

    if-eq v2, v13, :cond_54

    array-length v1, v11

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r0:F

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v1, :cond_12

    invoke-static {v11}, Ljava/util/Arrays;->sort([F)V

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    invoke-static {v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g([F)V

    :cond_12
    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-virtual {v11}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {v12, v3, v6, v5}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result v5

    iget-boolean v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v6, :cond_13

    array-length v12, v2

    sub-int/2addr v12, v9

    sub-int v5, v12, v5

    :cond_13
    array-length v12, v2

    if-ne v12, v9, :cond_14

    move v5, v8

    :cond_14
    iget v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    iget v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-static {v1, v12, v14, v6}, Lcom/android/camera/data/data/j;->J([FIFZ)I

    move-result v6

    iget-boolean v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v12, :cond_15

    array-length v12, v1

    sub-int/2addr v12, v9

    sub-int v6, v12, v6

    :cond_15
    invoke-direct {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result v12

    if-ne v12, v9, :cond_16

    move v6, v8

    :cond_16
    array-length v12, v2

    array-length v14, v1

    if-le v12, v14, :cond_17

    aget v12, v1, v6

    aget v5, v2, v5

    cmpl-float v12, v12, v5

    if-eqz v12, :cond_18

    aput v5, v1, v6

    goto :goto_a

    :cond_17
    array-length v12, v2

    array-length v14, v1

    if-ge v12, v14, :cond_18

    aget v12, v2, v5

    aget v6, v1, v6

    cmpl-float v12, v12, v6

    if-eqz v12, :cond_18

    aput v6, v2, v5

    :cond_18
    :goto_a
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v5

    const-class v6, Lv2/v0;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv2/v0;

    iget v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    iget-boolean v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {v5, v12, v14, v1}, Lv2/v0;->B(IZ[F)V

    invoke-static {}, Lj9/f;->l3()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v5

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv2/v0;

    iget v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v5, v6, v3, v1}, Lv2/v0;->v(IZ[F)V

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {v5, v8, v8}, LH4/h0;->a(IZZ)Lcom/android/camera/ui/zoom/ZoomRatioToggleView$f;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->w(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$f;)V

    :cond_19
    array-length v5, v1

    iget-object v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    const-string v12, "ZoomRatioToggleView"

    if-eqz v6, :cond_1b

    iget-boolean v14, v6, LH8/h;->y:Z

    if-eqz v14, :cond_1b

    iget-object v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v14, v14

    iget v15, v6, LH8/h;->q:I

    if-gt v14, v15, :cond_1a

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "handleZoomToggleSwitchRecordAnimation: expanded state mismatch, mZoomArray.length="

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v14, v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", criticalCount="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget v14, v14, LH8/h;->q:I

    const-string v15, ", reset optical animation"

    invoke-static {v6, v15, v14}, LP/e;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-array v14, v8, [Ljava/lang/Object;

    invoke-static {v12, v6, v14}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->I()V

    goto :goto_b

    :cond_1a
    invoke-virtual {v6, v1}, LH8/h;->c([F)[F

    move-result-object v1

    array-length v5, v1

    iget-object v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget v6, v6, LH8/h;->q:I

    sub-int/2addr v5, v6

    :cond_1b
    :goto_b
    array-length v6, v2

    array-length v14, v1

    sub-int/2addr v6, v14

    int-to-float v6, v6

    iput v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r0:F

    array-length v6, v2

    const-string v14, ", nextIndex: "

    const-string v15, ", nextCenterIndex: "

    move/from16 v18, v9

    iget-object v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q0:Ljava/util/ArrayList;

    const-string/jumbo v8, "startToggleAnimation -> switch record, i: "

    const-string v13, ", value: "

    move-object/from16 p2, v4

    const-string v4, ", lastIndex: "

    const-string v7, ", lastCenterIndex: "

    move/from16 v20, v10

    const-string v10, ", new offset: "

    move-object/from16 v21, v11

    const-string v11, ", old offset: "

    move-object/from16 v22, v15

    const-string v15, ", final offset: "

    move-object/from16 v23, v14

    const-string v14, ", count: "

    move-object/from16 v24, v9

    const-string v9, ""

    const/high16 v25, 0x40000000    # 2.0f

    if-le v5, v6, :cond_39

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v5, v5, v25

    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float v6, v6, v25

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v25

    move-object/from16 v26, v2

    if-nez v25, :cond_1d

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move-object/from16 v27, v12

    invoke-direct {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result v12

    if-eq v2, v12, :cond_1c

    goto :goto_c

    :cond_1c
    const/4 v2, 0x0

    goto :goto_d

    :cond_1d
    move-object/from16 v27, v12

    :goto_c
    move/from16 v2, v18

    :goto_d
    iget v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    move/from16 v25, v2

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    move-object/from16 v28, v14

    iget-boolean v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {v1, v12, v2, v14}, Lcom/android/camera/data/data/j;->J([FIFZ)I

    move-result v2

    iget v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    move-object/from16 v29, v11

    iget-boolean v11, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {v11, v3, v14, v12}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result v11

    iget-object v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o0:Ljava/util/ArrayList;

    if-eqz p3, :cond_29

    const/4 v11, 0x0

    :goto_e
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-ge v11, v14, :cond_28

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v3

    move-object/from16 v32, v15

    const/16 v15, 0x8

    if-ne v3, v15, :cond_1e

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    move-object/from16 v33, v1

    move/from16 v34, v2

    move-object/from16 v35, v9

    move-object/from16 v3, v27

    move-object/from16 v1, v28

    move-object/from16 v15, v29

    move-object/from16 v2, v32

    goto/16 :goto_14

    :cond_1e
    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v3, :cond_20

    iget-boolean v15, v3, LH8/h;->y:Z

    if-eqz v15, :cond_20

    invoke-virtual {v3, v11}, LH8/h;->n(I)Z

    move-result v3

    if-eqz v3, :cond_20

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v15, 0xc

    invoke-virtual {v14, v15, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    invoke-virtual {v14, v9}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatioFocal(Ljava/lang/String;)V

    iget-boolean v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    invoke-virtual {v14, v15}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b(Z)V

    iget v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v3, 0xa4

    if-ne v15, v3, :cond_1f

    move/from16 v3, v18

    goto :goto_10

    :cond_1f
    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v14, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e(Z)V

    const/4 v3, 0x0

    invoke-virtual {v14, v3, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    const/4 v3, 0x2

    invoke-virtual {v14, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    goto :goto_f

    :cond_20
    invoke-virtual {v14}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v3

    iget-object v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v15, :cond_21

    if-eqz v25, :cond_21

    invoke-virtual {v15}, LH8/h;->f()F

    move-result v15

    cmpl-float v3, v3, v15

    if-ltz v3, :cond_21

    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-boolean v15, v3, LH8/h;->y:Z

    if-nez v15, :cond_21

    iget v3, v3, LH8/h;->q:I

    sub-int v3, v11, v3

    goto :goto_11

    :cond_21
    move v3, v11

    :goto_11
    if-ne v2, v3, :cond_27

    iget-boolean v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v3, :cond_22

    array-length v15, v1

    add-int/lit8 v15, v15, -0x1

    sub-int/2addr v15, v2

    :goto_12
    move/from16 v22, v3

    goto :goto_13

    :cond_22
    move v15, v2

    goto :goto_12

    :goto_13
    int-to-float v3, v15

    sub-float/2addr v3, v5

    move-object/from16 v33, v1

    move/from16 v34, v2

    const/4 v1, 0x0

    int-to-float v2, v1

    sub-float/2addr v2, v6

    sub-float v1, v2, v3

    move-object/from16 v35, v9

    iget-boolean v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez v9, :cond_23

    if-eqz v22, :cond_24

    :cond_23
    neg-float v1, v1

    :cond_24
    invoke-virtual {v14, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTranslationUnit(F)V

    const/4 v9, 0x4

    invoke-virtual {v14, v9}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    iget-object v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v9, :cond_26

    iget-boolean v9, v9, LH8/h;->y:Z

    if-eqz v9, :cond_26

    iget-boolean v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-eqz v9, :cond_25

    neg-float v2, v2

    :cond_25
    invoke-virtual {v14, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setExpandedDelta(F)V

    :cond_26
    invoke-static {v11, v8, v13}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", nextIndex: 0, nextCenterIndex: "

    invoke-static {v9, v5, v14, v6, v10}, LF1/K2;->d(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    move-object/from16 v15, v29

    move-object/from16 v14, v32

    invoke-static {v9, v2, v15, v3, v14}, LF1/K2;->d(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v1, v28

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v9, v3, [Ljava/lang/Object;

    move-object/from16 v3, v27

    invoke-static {v3, v2, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v14

    goto :goto_14

    :cond_27
    move-object/from16 v33, v1

    move/from16 v34, v2

    move-object/from16 v35, v9

    move-object/from16 v3, v27

    move-object/from16 v1, v28

    move-object/from16 v15, v29

    move-object/from16 v2, v32

    const/4 v9, 0x6

    invoke-virtual {v14, v9}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v28, v1

    move-object/from16 v27, v3

    move-object/from16 v29, v15

    move-object/from16 v1, v33

    move-object/from16 v9, v35

    move/from16 v3, p4

    move-object v15, v2

    move/from16 v2, v34

    goto/16 :goto_e

    :cond_28
    move-object/from16 v33, v1

    goto/16 :goto_1d

    :cond_29
    move-object/from16 v33, v1

    move/from16 v34, v2

    move-object/from16 v35, v9

    move-object v2, v15

    move-object/from16 v3, v27

    move-object/from16 v1, v28

    move-object/from16 v15, v29

    const/4 v9, 0x0

    :goto_15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-ge v9, v14, :cond_38

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-object/from16 v25, v12

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v12

    move-object/from16 v27, v3

    const/16 v3, 0x8

    if-ne v12, v3, :cond_2a

    move-object v12, v1

    move-object v3, v10

    move-object/from16 v1, v25

    :goto_16
    move-object v10, v2

    move-object/from16 v2, v23

    move/from16 v23, v11

    move-object/from16 v11, v22

    move/from16 v22, v5

    move-object/from16 v5, v27

    goto/16 :goto_1c

    :cond_2a
    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v3, :cond_2d

    iget-boolean v12, v3, LH8/h;->y:Z

    if-eqz v12, :cond_2d

    invoke-virtual {v3, v9}, LH8/h;->n(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v12, 0xc

    invoke-virtual {v14, v12, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    move-object/from16 v12, v35

    invoke-virtual {v14, v12}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatioFocal(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    invoke-virtual {v14, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b(Z)V

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v12, 0xa4

    if-ne v3, v12, :cond_2b

    move/from16 v3, v18

    goto :goto_17

    :cond_2b
    const/4 v3, 0x0

    :goto_17
    invoke-virtual {v14, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e(Z)V

    const/4 v3, 0x0

    invoke-virtual {v14, v3, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    iget-object v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    move/from16 v19, v3

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v12, v3}, LH8/h;->n(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v3, v3, LH8/h;->n:[I

    aget v3, v3, v19

    goto :goto_18

    :cond_2c
    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    :goto_18
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    move-object/from16 v28, v1

    move/from16 v1, v19

    invoke-virtual {v3, v12, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    const/4 v3, 0x2

    invoke-virtual {v14, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    move-object/from16 v1, v24

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v10

    move-object/from16 v1, v25

    move-object/from16 v12, v28

    goto :goto_16

    :cond_2d
    move-object/from16 v28, v1

    move-object/from16 v1, v24

    invoke-virtual {v14}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v3

    iget-object v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    move-object/from16 v24, v1

    if-eqz v12, :cond_2e

    iget-boolean v1, v12, LH8/h;->z:Z

    if-eqz v1, :cond_2e

    invoke-virtual {v12}, LH8/h;->f()F

    move-result v1

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_2e

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-boolean v12, v1, LH8/h;->y:Z

    if-nez v12, :cond_2e

    iget v1, v1, LH8/h;->q:I

    sub-int v1, v9, v1

    :goto_19
    move/from16 v12, v34

    goto :goto_1a

    :cond_2e
    move v1, v9

    goto :goto_19

    :goto_1a
    if-ne v12, v1, :cond_32

    int-to-float v1, v12

    sub-float/2addr v1, v5

    int-to-float v3, v11

    sub-float/2addr v3, v6

    move/from16 v29, v1

    sub-float v1, v3, v29

    move-object/from16 v32, v2

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez v2, :cond_2f

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v2, :cond_30

    :cond_2f
    neg-float v1, v1

    :cond_30
    invoke-virtual {v14, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTranslationUnit(F)V

    const/4 v2, 0x4

    invoke-virtual {v14, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v2, :cond_31

    iget-boolean v2, v2, LH8/h;->y:Z

    if-eqz v2, :cond_31

    invoke-virtual {v14, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setExpandedDelta(F)V

    :cond_31
    invoke-static {v9, v8, v13}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v14, v23

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v23, v11

    move-object/from16 v11, v22

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v6, v10, v3, v15}, LF1/K2;->d(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    move/from16 v34, v12

    move-object/from16 v22, v14

    move-object/from16 v12, v28

    move/from16 v14, v29

    move-object/from16 v3, v32

    invoke-static {v2, v14, v3, v1, v12}, LF1/K2;->d(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v14, v2, [Ljava/lang/Object;

    move-object/from16 v2, v27

    invoke-static {v2, v1, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v5

    move-object v5, v2

    move-object/from16 v2, v22

    move/from16 v22, v1

    move-object v1, v10

    move-object v10, v3

    move-object v3, v1

    :goto_1b
    move-object/from16 v1, v25

    goto/16 :goto_1c

    :cond_32
    move-object/from16 v36, v2

    move/from16 v34, v12

    move-object/from16 v2, v23

    move/from16 v23, v11

    move-object/from16 v11, v22

    iget v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    move/from16 v22, v6

    iget-boolean v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    move-object/from16 v29, v10

    move-object/from16 v10, v33

    invoke-static {v10, v12, v3, v6}, Lcom/android/camera/data/data/j;->J([FIFZ)I

    move-result v3

    iget-boolean v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v6, :cond_33

    array-length v6, v10

    add-int/lit8 v6, v6, -0x1

    sub-int v3, v6, v3

    :cond_33
    aget v6, v10, v3

    move-object/from16 v12, v26

    invoke-static {v12, v6}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v6

    if-ltz v6, :cond_37

    int-to-float v1, v1

    sub-float/2addr v1, v5

    move-object/from16 v33, v10

    int-to-float v10, v6

    sub-float v10, v10, v22

    move-object/from16 v26, v12

    sub-float v12, v10, v1

    move/from16 v32, v1

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez v1, :cond_34

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v1, :cond_35

    :cond_34
    neg-float v12, v12

    :cond_35
    invoke-virtual {v14, v12}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTranslationUnit(F)V

    const/4 v1, 0x4

    invoke-virtual {v14, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v1, :cond_36

    iget-boolean v1, v1, LH8/h;->y:Z

    if-eqz v1, :cond_36

    invoke-virtual {v14, v10}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setExpandedDelta(F)V

    :cond_36
    invoke-static {v9, v8, v13}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v22

    move-object/from16 v3, v29

    invoke-static {v1, v6, v3, v10, v15}, LF1/K2;->d(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    move/from16 v22, v5

    move-object/from16 v14, v28

    move/from16 v5, v32

    move-object/from16 v10, v36

    invoke-static {v1, v5, v10, v12, v14}, LF1/K2;->d(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v12, v5, [Ljava/lang/Object;

    move-object/from16 v5, v27

    invoke-static {v5, v1, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v12, v14

    goto/16 :goto_1b

    :cond_37
    move-object/from16 v33, v10

    move-object/from16 v26, v12

    move/from16 v6, v22

    move-object/from16 v12, v28

    move-object/from16 v3, v29

    move-object/from16 v10, v36

    const/4 v1, 0x6

    move/from16 v22, v5

    move-object/from16 v5, v27

    invoke-virtual {v14, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    move-object/from16 v1, v25

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v37, v12

    move-object v12, v1

    move-object/from16 v1, v37

    move/from16 v37, v23

    move-object/from16 v23, v2

    move-object v2, v10

    move-object v10, v3

    move-object v3, v5

    move/from16 v5, v22

    move-object/from16 v22, v11

    move/from16 v11, v37

    goto/16 :goto_15

    :cond_38
    :goto_1d
    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->P()V

    move-object/from16 v6, p2

    move/from16 v2, p4

    move-object/from16 v12, v26

    move-object/from16 v1, v33

    :goto_1e
    const/4 v3, 0x0

    goto/16 :goto_30

    :cond_39
    move-object/from16 v33, v1

    move-object v1, v2

    move-object/from16 v35, v9

    move-object v3, v10

    move-object v6, v12

    move-object v12, v14

    move-object v10, v15

    move-object/from16 v2, v23

    move-object v15, v11

    move-object/from16 v11, v22

    array-length v9, v1

    if-ge v5, v9, :cond_52

    move-object/from16 v5, v33

    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float v9, v9, v25

    array-length v14, v1

    add-int/lit8 v14, v14, -0x1

    int-to-float v14, v14

    div-float v14, v14, v25

    move-object/from16 v22, v8

    iget v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    move-object/from16 v23, v13

    iget v13, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    move-object/from16 v27, v6

    iget-boolean v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {v5, v8, v13, v6}, Lcom/android/camera/data/data/j;->J([FIFZ)I

    move-result v6

    iget v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v13, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    move-object/from16 v33, v5

    iget-boolean v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    move-object/from16 v32, v10

    move/from16 v10, p4

    invoke-static {v5, v10, v13, v8}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result v5

    iget-boolean v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v8, :cond_3a

    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    sub-int v5, v8, v5

    :cond_3a
    invoke-direct {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result v8

    move/from16 v13, v18

    if-ne v8, v13, :cond_3f

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    const/4 v8, 0x3

    iget v10, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v13, v8, v10}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iput-boolean v8, v10, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r0:Z

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    const/4 v13, 0x1

    invoke-virtual {v10, v13, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v10

    if-eqz v10, :cond_3b

    iget-object v10, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {v10, v5}, LH8/h;->n(I)Z

    move-result v10

    if-eqz v10, :cond_3b

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v10, v13}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setSupportOpticalZoom(Z)V

    :cond_3b
    int-to-float v8, v6

    sub-float/2addr v8, v9

    int-to-float v10, v5

    sub-float/2addr v10, v14

    sub-float v13, v10, v8

    move-object/from16 v26, v1

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez v1, :cond_3d

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v1, :cond_3c

    goto :goto_20

    :cond_3c
    :goto_1f
    const/4 v1, 0x0

    goto :goto_21

    :cond_3d
    :goto_20
    neg-float v13, v13

    goto :goto_1f

    :goto_21
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    move/from16 v17, v8

    move-object/from16 v8, v16

    check-cast v8, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v8, v13}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTranslationUnit(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "startToggleAnimation -> switch record, i: 0, value: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v14, v3, v10, v15}, LF1/K2;->d(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    move/from16 v8, v17

    move-object/from16 v10, v32

    invoke-static {v1, v8, v10, v13, v12}, LF1/K2;->d(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    move-object/from16 v8, v27

    invoke-static {v8, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3e
    move-object/from16 v34, v26

    goto/16 :goto_2d

    :cond_3f
    move-object/from16 v26, v1

    move-object/from16 v8, v27

    move-object/from16 v10, v32

    const/4 v1, 0x0

    :goto_22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v1, v13, :cond_3e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move/from16 v25, v5

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v5

    move-object/from16 v27, v8

    const/16 v8, 0x8

    if-ne v5, v8, :cond_40

    move-object v5, v10

    move-object/from16 v8, v22

    move-object/from16 v13, v23

    move-object/from16 v34, v26

    :goto_23
    move/from16 v23, v1

    move-object v1, v15

    move-object/from16 v15, v27

    goto/16 :goto_2c

    :cond_40
    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v5, :cond_43

    iget-boolean v8, v5, LH8/h;->y:Z

    if-eqz v8, :cond_43

    invoke-virtual {v5, v1}, LH8/h;->n(I)Z

    move-result v5

    if-eqz v5, :cond_43

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v8, 0xc

    invoke-virtual {v13, v8, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    const/4 v8, 0x0

    invoke-virtual {v13, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    move-object/from16 v5, v35

    invoke-virtual {v13, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatioFocal(Ljava/lang/String;)V

    iget-boolean v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    invoke-virtual {v13, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b(Z)V

    iget v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v5, 0xa4

    if-ne v8, v5, :cond_41

    const/4 v5, 0x1

    goto :goto_24

    :cond_41
    const/4 v5, 0x0

    :goto_24
    invoke-virtual {v13, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e(Z)V

    const/4 v8, 0x0

    invoke-virtual {v13, v8, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    move/from16 v19, v8

    iget v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v5, v8}, LH8/h;->n(I)Z

    move-result v5

    if-eqz v5, :cond_42

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v5, v5, LH8/h;->n:[I

    aget v5, v5, v19

    goto :goto_25

    :cond_42
    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    :goto_25
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    move-object/from16 v28, v12

    move/from16 v12, v19

    invoke-virtual {v5, v8, v12}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    move-object/from16 v8, v24

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v10

    move-object/from16 v8, v22

    move-object/from16 v13, v23

    move-object/from16 v34, v26

    move-object/from16 v12, v28

    goto :goto_23

    :cond_43
    move-object/from16 v28, v12

    move-object/from16 v8, v24

    const/4 v5, 0x2

    invoke-virtual {v13}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v12

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    move-object/from16 v24, v8

    if-eqz v5, :cond_44

    iget-boolean v8, v5, LH8/h;->z:Z

    if-eqz v8, :cond_44

    invoke-virtual {v5}, LH8/h;->f()F

    move-result v5

    cmpl-float v5, v12, v5

    if-ltz v5, :cond_44

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-boolean v8, v5, LH8/h;->y:Z

    if-nez v8, :cond_44

    iget v5, v5, LH8/h;->q:I

    sub-int v5, v1, v5

    goto :goto_26

    :cond_44
    move v5, v1

    :goto_26
    iget v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    move-object/from16 v32, v10

    iget-boolean v10, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    move-object/from16 v29, v15

    move-object/from16 v15, v33

    invoke-static {v15, v8, v12, v10}, Lcom/android/camera/data/data/j;->J([FIFZ)I

    move-result v8

    iget-boolean v10, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v10, :cond_45

    array-length v10, v15

    const/16 v18, 0x1

    add-int/lit8 v10, v10, -0x1

    sub-int v8, v10, v8

    :cond_45
    aget v10, v15, v8

    move/from16 v30, v8

    move-object/from16 v8, v26

    invoke-static {v8, v10}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v10

    if-ltz v10, :cond_4f

    move/from16 v26, v10

    if-ne v6, v5, :cond_46

    move v10, v6

    goto :goto_27

    :cond_46
    move/from16 v10, v30

    :goto_27
    int-to-float v10, v10

    sub-float/2addr v10, v9

    move/from16 v31, v12

    if-ne v6, v5, :cond_47

    move/from16 v12, v25

    goto :goto_28

    :cond_47
    move/from16 v12, v26

    :goto_28
    int-to-float v12, v12

    sub-float/2addr v12, v14

    move-object/from16 v33, v15

    sub-float v15, v12, v10

    move-object/from16 v34, v8

    iget-boolean v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez v8, :cond_48

    iget-boolean v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v8, :cond_49

    :cond_48
    neg-float v15, v15

    :cond_49
    invoke-virtual {v13, v15}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTranslationUnit(F)V

    const/16 v8, 0x8

    invoke-virtual {v13, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    iget-object v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v8, :cond_4b

    iget-boolean v8, v8, LH8/h;->y:Z

    if-eqz v8, :cond_4b

    iget-boolean v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-eqz v8, :cond_4a

    neg-float v12, v12

    :cond_4a
    invoke-virtual {v13, v12}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setExpandedDelta(F)V

    :cond_4b
    move-object/from16 v8, v22

    move-object/from16 v13, v23

    move/from16 v22, v15

    invoke-static {v1, v8, v13}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v23, v1

    if-ne v6, v5, :cond_4c

    iget v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    goto :goto_29

    :cond_4c
    move/from16 v1, v31

    :goto_29
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v6, v5, :cond_4d

    move v1, v6

    goto :goto_2a

    :cond_4d
    move/from16 v1, v30

    :goto_2a
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v6, v5, :cond_4e

    move/from16 v1, v25

    goto :goto_2b

    :cond_4e
    move/from16 v1, v26

    :goto_2b
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v29

    move-object/from16 v5, v32

    invoke-static {v15, v12, v1, v10, v5}, LF1/K2;->d(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    move/from16 v10, v22

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v12, v28

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    new-array v0, v15, [Ljava/lang/Object;

    move-object/from16 v15, v27

    invoke-static {v15, v10, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c

    :cond_4f
    move-object/from16 v34, v8

    move-object/from16 v33, v15

    move-object/from16 v8, v22

    move-object/from16 v13, v23

    move-object/from16 v15, v27

    move-object/from16 v12, v28

    move-object/from16 v5, v32

    move/from16 v23, v1

    move-object/from16 v1, v29

    :goto_2c
    add-int/lit8 v0, v23, 0x1

    move-object v10, v5

    move-object/from16 v22, v8

    move-object/from16 v23, v13

    move-object v8, v15

    move/from16 v5, v25

    move-object/from16 v26, v34

    move-object v15, v1

    move v1, v0

    move-object/from16 v0, p0

    goto/16 :goto_22

    :goto_2d
    move-object/from16 v2, v34

    const/4 v6, 0x0

    :goto_2e
    array-length v0, v2

    if-ge v6, v0, :cond_51

    aget v0, v2, v6

    move-object/from16 v1, v33

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v0

    if-gez v0, :cond_50

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move v3, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->i([F[FFLandroid/widget/FrameLayout;ZI)V

    move v12, v6

    move-object v6, v4

    move v4, v12

    move-object v12, v2

    move v2, v5

    goto :goto_2f

    :cond_50
    move-object/from16 v0, p0

    move-object v12, v2

    move v4, v6

    move v3, v14

    move-object/from16 v6, p2

    move/from16 v2, p4

    :goto_2f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v33, v1

    move v14, v3

    move-object/from16 p2, v6

    move-object v2, v12

    move v6, v4

    goto :goto_2e

    :cond_51
    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object v12, v2

    move-object/from16 v1, v33

    move/from16 v2, p4

    goto/16 :goto_1e

    :cond_52
    move-object/from16 v6, p2

    move/from16 v2, p4

    move-object v12, v1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v12}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->R([F[F)V

    goto/16 :goto_1e

    :goto_30
    invoke-virtual {v0, v1, v12, v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p([F[FZZ)I

    move-result v4

    move/from16 v5, p3

    move v3, v2

    move-object v2, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q([F[FZIZ)V

    move-object v1, v6

    move v6, v4

    move v4, v5

    move-object v5, v1

    move v2, v3

    move/from16 v3, v20

    move-object/from16 v1, v21

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->U([FZZZLandroid/widget/FrameLayout;I)V

    move v4, v6

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v5

    long-to-float v3, v5

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v5

    float-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v5

    long-to-float v3, v5

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v5

    float-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_31

    :cond_53
    iget v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b0(II)V

    const/16 v18, 0x1

    return v18

    :cond_54
    move/from16 v18, v9

    move/from16 v4, p3

    move/from16 v2, p4

    move v3, v10

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->u([FZZZZ)V

    return v18

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_55
    move v2, v3

    move v4, v7

    move/from16 v20, v10

    move-object v1, v11

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    if-eqz v5, :cond_58

    iget-boolean v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->j0:Z

    if-nez v5, :cond_58

    const/4 v3, 0x0

    if-eqz v4, :cond_57

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v5, :cond_56

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v8, 0x8

    if-eq v6, v8, :cond_56

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Z(Lcom/android/camera/ui/zoom/ZoomTextImageView;)V

    :cond_56
    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    :cond_57
    invoke-virtual {v0, v4, v3, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->O(ZZZ)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v4, Lv2/v0;

    invoke-virtual {v2, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/v0;

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget-boolean v0, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {v2, v4, v0, v1}, Lv2/v0;->B(IZ[F)V

    return v3

    :cond_58
    const-string v5, "ZoomRatioToggleView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "old supportedZoomRatios is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    invoke-static {v7}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",new supportedZoomRatios is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",mIsZoomSliderUpdate is false,mCurrentModule is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", isSupportOpticalZoom: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->e0:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v8

    if-eqz v5, :cond_59

    invoke-virtual {v5}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->e0:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->e0:[Landroid/animation/ValueAnimator;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->e0:[Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    aput-object v6, v5, v8

    :cond_59
    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->H()V

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->removeAllViews()V

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b0:F

    const/4 v5, -0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_5e

    new-instance v7, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-boolean v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    iget v10, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v12, 0xa4

    if-ne v10, v12, :cond_5a

    const/4 v10, 0x1

    goto :goto_32

    :cond_5a
    const/4 v10, 0x0

    :goto_32
    invoke-direct {v7, v8, v9, v10}, Lcom/android/camera/ui/zoom/ZoomTextImageView;-><init>(Landroid/content/Context;ZZ)V

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsOnlyZoomCount(Z)V

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Z(Lcom/android/camera/ui/zoom/ZoomTextImageView;)V

    iget-boolean v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsVerType(Z)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setFocusable(Z)V

    if-nez v20, :cond_5d

    iget-boolean v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f0:Z

    if-eqz v9, :cond_5b

    goto :goto_33

    :cond_5b
    iget v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    cmpl-float v10, v9, v6

    if-nez v10, :cond_5c

    aget v9, v1, v8

    :cond_5c
    invoke-virtual {v7, v9, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    goto :goto_34

    :cond_5d
    :goto_33
    iget v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {v9}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v9

    invoke-virtual {v7, v9, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    :goto_34
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    iget v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    iget v10, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-direct {v8, v9, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move/from16 p2, v6

    const/4 v8, 0x0

    goto/16 :goto_3c

    :cond_5e
    iget-boolean v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f0:Z

    if-eqz v7, :cond_5f

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getLensZoomIndex()I

    move-result v7

    goto :goto_35

    :cond_5f
    iget v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {v9, v2, v8, v7}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result v7

    :goto_35
    array-length v8, v1

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v9

    if-eqz v9, :cond_64

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_36
    if-ge v9, v8, :cond_63

    iget-object v11, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v11, :cond_62

    add-int/lit8 v12, v9, -0x1

    iget-object v13, v11, LH8/h;->n:[I

    const/4 v15, 0x0

    aget v13, v13, v15

    if-ne v13, v12, :cond_61

    iget-object v10, v11, LH8/h;->o:Ljava/util/ArrayList;

    move v11, v9

    const/4 v12, 0x1

    :goto_37
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    if-ge v12, v13, :cond_60

    new-instance v13, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v13, v3, v15, v15}, Lcom/android/camera/ui/zoom/ZoomTextImageView;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v13, v14}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setSupportOpticalZoom(Z)V

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v14, 0xc

    invoke-virtual {v13, v14, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v13, v3, v15}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    invoke-virtual {v13, v15, v15}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v13, v15}, Landroid/view/View;->setFocusable(Z)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    move/from16 p2, v6

    iget v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    iget v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    add-int/2addr v6, v14

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {v3, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v3, 0x8

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v6, p2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_37

    :cond_60
    move/from16 p2, v6

    const/16 v3, 0x8

    move v10, v11

    goto :goto_39

    :cond_61
    :goto_38
    move/from16 p2, v6

    const/16 v3, 0x8

    goto :goto_39

    :cond_62
    const/4 v15, 0x0

    goto :goto_38

    :goto_39
    aget v6, v1, v9

    invoke-virtual {v0, v9, v6, v10, v7}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f(IFII)V

    add-int/lit8 v9, v9, 0x1

    const/16 v18, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v6, p2

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_36

    :cond_63
    move/from16 p2, v6

    goto :goto_3b

    :cond_64
    move/from16 p2, v6

    const/4 v15, 0x0

    :goto_3a
    if-ge v15, v8, :cond_65

    aget v3, v1, v15

    invoke-virtual {v0, v15, v3, v15, v7}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f(IFII)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3a

    :cond_65
    :goto_3b
    move v8, v7

    :goto_3c
    iput v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    if-nez v20, :cond_66

    iget-boolean v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f0:Z

    if-eqz v3, :cond_67

    :cond_66
    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {v3}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v3

    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    :cond_67
    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    cmpl-float v5, v3, p2

    if-nez v5, :cond_68

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_3d

    :cond_68
    move v12, v3

    :goto_3d
    iput v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    if-nez v4, :cond_6a

    iget-boolean v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f0:Z

    if-eqz v3, :cond_69

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getLensZoomIndex()I

    move-result v3

    goto :goto_3e

    :cond_69
    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget-boolean v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {v5, v2, v12, v3}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result v3

    :goto_3e
    iput v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->e:I

    :cond_6a
    const/4 v13, 0x1

    invoke-virtual {v0, v4, v13, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->O(ZZZ)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/v0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/v0;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget-boolean v0, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {v2, v3, v0, v1}, Lv2/v0;->B(IZ[F)V

    return v13
.end method

.method public final M(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBgAnim(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final N(FIZ)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {p0, v1, p3, p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->n(ZZFI)I

    move-result p3

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->h0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->h0:Z

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setZoomRatio(): a = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, LDe/c;->f(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",i = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",z = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ",ti ="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",tz ="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomRatioToggleView"

    invoke-static {p1, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "setZoomRatio() must be called on main ui thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final O(ZZZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l0:Z

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const-string/jumbo v0, "setSuppressed(): "

    invoke-static {v0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ZoomRatioToggleView"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->O:Z

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    const-string/jumbo p0, "setSuppressed() ignored: "

    invoke-static {p0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->O:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f0:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getLensZoomIndex()I

    move-result p1

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {v0, p3, p2, p1}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move p3, v1

    :goto_1
    if-ge p3, p2, :cond_5

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-ne p3, p1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method public final P()V
    .locals 12

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_f

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result v7

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    move v6, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v1

    :goto_2
    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v7}, LH8/h;->f()F

    move-result v7

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-boolean v7, v5, LH8/h;->y:Z

    if-nez v7, :cond_3

    iget v5, v5, LH8/h;->q:I

    sub-int v5, v3, v5

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    invoke-virtual {v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getFilterType()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_e

    int-to-float v7, v5

    cmpg-float v8, v7, v0

    const/4 v9, 0x1

    if-gez v8, :cond_7

    add-int/lit8 v8, v5, 0x1

    :goto_4
    iget-object v10, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v10, v10

    if-gt v8, v10, :cond_b

    if-eqz v6, :cond_4

    iget-object v10, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-boolean v11, v10, LH8/h;->y:Z

    if-nez v11, :cond_4

    invoke-virtual {v10, v8}, LH8/h;->d(I)I

    move-result v10

    goto :goto_5

    :cond_4
    move v10, v8

    :goto_5
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getFilterType()I

    move-result v11

    and-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_6

    iget-boolean v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-eqz v6, :cond_5

    sub-int/2addr v5, v8

    int-to-float v5, v5

    invoke-virtual {v10}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getTranslationUnit()F

    move-result v6

    goto :goto_8

    :cond_5
    invoke-virtual {v10}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getTranslationUnit()F

    move-result v5

    goto :goto_9

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v8, v5, -0x1

    :goto_6
    if-ltz v8, :cond_b

    if-eqz v6, :cond_8

    iget-object v10, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-boolean v11, v10, LH8/h;->y:Z

    if-nez v11, :cond_8

    invoke-virtual {v10, v8}, LH8/h;->d(I)I

    move-result v10

    goto :goto_7

    :cond_8
    move v10, v8

    :goto_7
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getFilterType()I

    move-result v11

    and-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_a

    iget-boolean v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-eqz v6, :cond_9

    sub-int/2addr v5, v8

    int-to-float v5, v5

    invoke-virtual {v10}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getTranslationUnit()F

    move-result v6

    :goto_8
    add-float/2addr v6, v5

    goto :goto_a

    :cond_9
    invoke-virtual {v10}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getTranslationUnit()F

    move-result v5

    :goto_9
    int-to-float v6, v8

    add-float/2addr v5, v6

    sub-float v6, v5, v7

    goto :goto_a

    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    :cond_b
    move v6, v9

    :goto_a
    cmpl-float v5, v6, v9

    if-nez v5, :cond_d

    iget-boolean v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-eqz v5, :cond_c

    sub-float v5, v0, v7

    neg-float v6, v5

    goto :goto_b

    :cond_c
    sub-float v6, v0, v7

    :cond_d
    :goto_b
    invoke-virtual {v4, v6}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTranslationUnit(F)V

    :cond_e
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public final Q([F[FZIZ)V
    .locals 9

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    iget-boolean v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {p0, p1, v2, v1, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o([FIFZ)I

    move-result v2

    iget-boolean v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    array-length v3, p1

    sub-int/2addr v3, v4

    sub-int v2, v3, v2

    :cond_1
    aget v2, p1, v2

    invoke-static {p2, v2}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    iget-boolean v6, v3, LH8/h;->y:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    iget-object v7, v3, LH8/h;->n:[I

    aget v8, v7, v5

    if-le v6, v8, :cond_4

    aget v7, v7, v4

    if-ge v6, v7, :cond_4

    invoke-virtual {v3}, LH8/h;->g()F

    move-result p1

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v0, v0, LH8/h;->n:[I

    aget v0, v0, v5

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {v1, p3, p1, v0}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result p1

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {v3, p3, v1, v0}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result p3

    if-eqz p5, :cond_2

    move p1, v5

    move p3, p1

    :cond_2
    iget-object p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object p5, p5, LH8/h;->n:[I

    aget p5, p5, v5

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getTranslationUnit()F

    move-result p5

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-eqz v0, :cond_3

    neg-float p5, p5

    :cond_3
    sub-int p1, p3, p1

    int-to-float p1, p1

    add-float/2addr p1, p5

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s0:F

    goto :goto_3

    :cond_4
    if-ltz v2, :cond_7

    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {v1, p3, v0, p5}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result p3

    array-length p5, p2

    if-ne p5, v4, :cond_5

    array-length p1, p1

    array-length p5, p2

    if-le p1, p5, :cond_5

    move p3, v5

    :cond_5
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz p1, :cond_6

    array-length p1, p2

    sub-int/2addr p1, v4

    sub-int/2addr p1, p3

    move p3, p1

    :cond_6
    sub-int p1, p3, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s0:F

    goto :goto_3

    :cond_7
    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    iget-boolean v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {p0, p1, p5, v1, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o([FIFZ)I

    move-result p5

    iget-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v1, :cond_8

    array-length v1, p1

    sub-int/2addr v1, v4

    sub-int/2addr v1, p5

    move v2, v1

    goto :goto_1

    :cond_8
    move v2, p5

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m([F[FZ)I

    move-result p1

    if-gez p1, :cond_9

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    :cond_9
    move p3, p1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getTranslationUnit()F

    move-result p1

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    :goto_2
    iget-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz p2, :cond_c

    :cond_b
    neg-float p1, p1

    :cond_c
    sub-int p2, p3, v2

    int-to-float p2, p2

    add-float/2addr p2, p1

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s0:F

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "startToggleAnimation, mZoomRatio: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", currentSelectedChildIndex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    const-string p5, ", targetChildIndex: "

    const-string v0, ", nextSelectedIndex: "

    invoke-static {p1, p2, p5, p4, v0}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p2, ", lastSelectedIndex: "

    const-string p4, ", selectedBackgroundOffset: "

    invoke-static {p1, p3, p2, v2, p4}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s0:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "ZoomRatioToggleView"

    invoke-static {p3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    return-void

    :cond_e
    :goto_4
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s0:F

    neg-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s0:F

    return-void
.end method

.method public final R([F[F)V
    .locals 8

    array-length p1, p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    array-length v2, p2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget-object v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v5, :cond_2

    iget-object v6, v5, LH8/h;->n:[I

    aget v7, v6, v1

    if-lt v3, v7, :cond_0

    aget v7, v6, v0

    if-le v3, v7, :cond_2

    :cond_0
    aget v6, v6, v0

    if-le v3, v6, :cond_1

    iget v5, v5, LH8/h;->q:I

    sub-int v5, v3, v5

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    aget v5, p2, v5

    invoke-virtual {v4, v5, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v5, :cond_4

    iget-boolean v6, v5, LH8/h;->y:Z

    if-eqz v6, :cond_4

    invoke-virtual {v5, v3}, LH8/h;->n(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xc

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatioFocal(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b(Z)V

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v6, 0xa4

    if-ne v5, v6, :cond_3

    move v5, v0

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e(Z)V

    invoke-virtual {v4, v1, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    iget-object v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q0:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v5

    invoke-static {p2, v5}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v5

    int-to-float v6, v3

    sub-float/2addr v6, p1

    int-to-float v5, v5

    sub-float/2addr v5, v2

    sub-float v6, v5, v6

    iget-boolean v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v7, :cond_6

    :cond_5
    neg-float v6, v6

    :cond_6
    invoke-virtual {v4, v6}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTranslationUnit(F)V

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    iget-object v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v6, :cond_8

    iget-boolean v6, v6, LH8/h;->y:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-eqz v6, :cond_7

    neg-float v5, v5

    :cond_7
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setExpandedDelta(F)V

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final S(IIZZZZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    const-string/jumbo v6, "showZoomChildView(): targetChildIndex\uff1a"

    const-string v7, ", isSupportCallBack\uff1a "

    const-string v8, ", isLayoutChange\uff1a "

    invoke-static {v6, v3, v7, v1, v8}, LZ1/c;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isRecording\uff1a "

    const-string v8, ", action\uff1a "

    invoke-static {v6, v4, v7, v5, v8}, LF1/u2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "ZoomRatioToggleView"

    invoke-static {v9, v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->u0:Z

    if-nez v6, :cond_15

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->E()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_e

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget v10, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v10}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->A(I)Z

    move-result v10

    iget v11, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget-boolean v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {v0, v11, v1, v12, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l(IIZZ)F

    move-result v11

    iget v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v13, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    iget-boolean v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {v0, v12, v13, v14, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l(IIZZ)F

    move-result v5

    iget v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    const/4 v13, 0x1

    if-ne v12, v1, :cond_1

    move v12, v13

    goto :goto_0

    :cond_1
    move v12, v7

    :goto_0
    if-nez v12, :cond_a

    invoke-virtual {v0, v13}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->J(Z)V

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "showZoomChildView isLayoutChange :"

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-array v15, v7, [Ljava/lang/Object;

    invoke-static {v9, v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_3

    iget-boolean v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->k:Z

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    iget-object v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->P:Landroid/os/Handler;

    new-instance v14, LH8/l;

    invoke-direct {v14, v0, v4, v1}, LH8/l;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;II)V

    invoke-virtual {v9, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v4, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b0(II)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q(I)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setZoomSelectedViewPosition(F)V

    :goto_1
    iget-object v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->K:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$e;

    if-eqz v4, :cond_4

    check-cast v4, LH4/f0;

    if-ne v2, v13, :cond_4

    invoke-virtual {v4}, LH4/f0;->cr()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object v2

    invoke-virtual {v2}, LBr/e;->p()V

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->A(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->K()V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v4, 0xa7

    if-eq v2, v4, :cond_6

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_5

    goto :goto_2

    :cond_5
    move v2, v7

    goto :goto_3

    :cond_6
    :goto_2
    const/16 v2, 0x12

    goto :goto_3

    :cond_7
    const/16 v2, 0x17

    :goto_3
    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->z(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->z(I)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->B()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v4, v4, LH8/h;->j:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    iget-object v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    new-instance v9, LH8/n;

    invoke-direct {v9, v0}, LH8/n;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Landroid/animation/ValueAnimator;

    invoke-direct {v14}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v14, v4, LH8/h;->j:Landroid/animation/ValueAnimator;

    iget v15, v4, LH8/h;->d:I

    filled-new-array {v7, v15}, [I

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v14, v4, LH8/h;->j:Landroid/animation/ValueAnimator;

    move-object/from16 v16, v8

    const-wide/16 v7, 0xc8

    invoke-virtual {v14, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v7, v4, LH8/h;->j:Landroid/animation/ValueAnimator;

    new-instance v8, LLy/f;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, v4, LH8/h;->j:Landroid/animation/ValueAnimator;

    new-instance v8, LH8/e;

    invoke-direct {v8, v4, v9}, LH8/e;-><init>(LH8/h;LH8/n;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v7, v4, LH8/h;->j:Landroid/animation/ValueAnimator;

    new-instance v8, LH8/g;

    invoke-direct {v8, v4, v9}, LH8/g;-><init>(LH8/h;LH8/n;)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, v4, LH8/h;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_9
    move-object/from16 v16, v8

    :goto_4
    iput v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    goto :goto_5

    :cond_a
    move-object/from16 v16, v8

    :goto_5
    const/16 v1, 0xa4

    move-object/from16 v8, v16

    if-eqz v16, :cond_10

    const/4 v15, 0x0

    invoke-virtual {v8, v15, v15}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    const-class v7, Lv2/v0;

    invoke-virtual {v4, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/v0;

    if-eqz v4, :cond_b

    iget-boolean v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f0:Z

    if-nez v4, :cond_b

    goto :goto_6

    :cond_b
    const/4 v12, 0x0

    :goto_6
    if-nez v12, :cond_d

    iget-boolean v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l:Z

    if-eqz v4, :cond_c

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    move v4, v13

    :goto_8
    invoke-virtual {v8, v5, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    iget-boolean v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    invoke-virtual {v8, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b(Z)V

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    if-ne v4, v1, :cond_e

    move v4, v13

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v8, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e(Z)V

    const/16 v4, 0x17

    if-ne v2, v4, :cond_10

    if-eqz v10, :cond_f

    const/16 v4, 0xc

    goto :goto_a

    :cond_f
    const/4 v4, 0x3

    :goto_a
    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v8, v4, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    const-string v4, ""

    invoke-virtual {v8, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatioFocal(Ljava/lang/String;)V

    :cond_10
    if-eqz v6, :cond_15

    move/from16 v4, p3

    invoke-virtual {v6, v13, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    if-eqz v3, :cond_11

    :goto_b
    const/4 v15, 0x0

    goto :goto_c

    :cond_11
    iget v11, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    goto :goto_b

    :goto_c
    invoke-virtual {v6, v11, v15}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->K:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$e;

    if-eqz v3, :cond_12

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    check-cast v3, LH4/f0;

    invoke-virtual {v3, v4, v2}, LH4/f0;->ir(II)V

    :cond_12
    if-eqz v8, :cond_14

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    invoke-virtual {v8, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b(Z)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    if-ne v2, v1, :cond_13

    move v7, v13

    goto :goto_d

    :cond_13
    move v7, v15

    :goto_d
    invoke-virtual {v8, v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e(Z)V

    :cond_14
    iget-boolean v1, v6, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c0:Z

    if-nez v1, :cond_15

    invoke-virtual {v6}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->h(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_e
    return-void
.end method

.method public final T(Z)V
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->J(Z)V

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {}, LU6/c;->h()Z

    move-result v4

    invoke-virtual {p0, v3, v4, v2, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->n(ZZFI)I

    move-result v7

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v1, v2}, LH8/h;->n(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v1, v1, LH8/h;->n:[I

    aget v1, v1, v0

    :goto_0
    move v8, v1

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    goto :goto_0

    :goto_1
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    iget v9, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, LH8/h;->i(IIIIZ)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v2, v2, LH8/h;->n:[I

    aget v3, v2, v0

    aget v2, v2, v1

    filled-new-array {v3, v2, v7, v8}, [I

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->G([I)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->W:F

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a0:I

    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iput v0, v2, LH8/h;->D:I

    invoke-virtual {p0, v8, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->M(IZ)V

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getShrinkViewWidth()I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    invoke-virtual {p0, v8, v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r(III)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setZoomSelectedViewPosition(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_2
    const-string/jumbo v2, "shrinkOpticalZoomArea: currentIndex: "

    const-string v3, " targetIndex: "

    const-string v4, ", mZoomRatio: "

    invoke-static {v7, v8, v2, v3, v4}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", isAnim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "ZoomRatioToggleView"

    invoke-static {v3, p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->A(I)Z

    move-result v4

    if-eqz v2, :cond_4

    if-eqz v4, :cond_2

    const/16 v4, 0xc

    goto :goto_3

    :cond_2
    const/4 v4, 0x3

    :goto_3
    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatioFocal(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b(Z)V

    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v5, 0xa4

    if-ne v4, v5, :cond_3

    move v4, v1

    goto :goto_4

    :cond_3
    move v4, v0

    :goto_4
    invoke-virtual {v2, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e(Z)V

    invoke-virtual {v2, v0, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1, v3, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    invoke-virtual {p1, v1, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    :cond_5
    iput v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    return-void
.end method

.method public final U([FZZZLandroid/widget/FrameLayout;I)V
    .locals 13

    move/from16 v0, p6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->w0:F

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->x0:F

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->y()Z

    move-result v0

    invoke-static {}, Lj9/f;->l3()Z

    move-result v4

    const/4 v6, 0x0

    const-class v8, Lv2/v0;

    if-eqz v4, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    invoke-virtual {v4, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/v0;

    iget v9, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {}, LU6/c;->h()Z

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v10, v11}, Lv2/v0;->v(IZ[F)V

    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {v4, v6, v6}, LH4/h0;->a(IZZ)Lcom/android/camera/ui/zoom/ZoomRatioToggleView$f;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->w(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$f;)V

    :cond_0
    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v9, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v10, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {}, LU6/c;->h()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v9, v4}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->n(ZZFI)I

    move-result v4

    iget-object v9, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    invoke-virtual {v9, v4}, LH8/h;->m(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v10

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    invoke-static {}, Lj9/f;->l3()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v9

    invoke-virtual {v9, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv2/v0;

    iget v9, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {}, LU6/c;->h()Z

    move-result v11

    iget-object v12, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    invoke-virtual {v8, v9, v11, v12}, Lv2/v0;->v(IZ[F)V

    iget v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {v8, v6, v6}, LH4/h0;->a(IZZ)Lcom/android/camera/ui/zoom/ZoomRatioToggleView$f;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->w(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$f;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v9, v8, LH8/h;->n:[I

    const-string v11, "OpticalZoomConfig"

    if-nez v9, :cond_3

    const-string v4, "isNeedDrawOpticalLine: mOpticalLineZoomToggleIndexes is null"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v11, v4, v8}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    array-length v9, v9

    if-nez v9, :cond_4

    const-string v4, "isNeedDrawOpticalLine: mOpticalLineZoomToggleIndexes is empty"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v11, v4, v8}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-boolean v8, v8, LH8/h;->y:Z

    if-nez v8, :cond_5

    if-nez v4, :cond_5

    move v4, v10

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v6

    :goto_2
    iput-boolean v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->v0:Z

    if-eqz v0, :cond_6

    if-nez v4, :cond_7

    :cond_6
    if-nez v0, :cond_8

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    move v4, v6

    goto :goto_4

    :cond_8
    :goto_3
    move v4, v10

    :goto_4
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/zoom/a;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/zoom/a;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;FFZLcom/android/camera/ui/zoom/ZoomTextImageView;[FLcom/android/camera/ui/zoom/ZoomTextImageView;)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/zoom/b;

    move-object v2, p1

    move v3, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/zoom/b;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;[FZLandroid/widget/FrameLayout;Lcom/android/camera/ui/zoom/ZoomTextImageView;ZZ)V

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final V()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {v0}, LH8/h;->e()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->x0:F

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->w0:F

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTargetItemGap()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->x0:F

    return-void
.end method

.method public final W(IZ)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getLensZoomIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {p0, v2, p2, v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->n(ZZFI)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->e:I

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->O:Z

    const-string v1, "ZoomRatioToggleView"

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->E()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->L:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$d;

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    check-cast p2, LH4/f0;

    invoke-virtual {p2, v0}, LH4/f0;->br(I)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setSuppressedZoomRatio(F)V

    const-string/jumbo p0, "updateParamByZoomRatio(): mIsSuppressed"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz p1, :cond_e

    const/4 v0, 0x6

    if-eq p1, v0, :cond_e

    const/16 v0, 0x17

    if-eq p1, v0, :cond_e

    if-eq p1, v2, :cond_e

    const/16 v0, 0x12

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {v0, v3}, Lcom/android/camera/data/data/j;->j1(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-static {}, Lcom/android/camera/data/data/E;->b0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v0, :cond_6

    iget-boolean v2, v0, LH8/h;->y:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-virtual {v0, v2}, LH8/h;->l(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v0, v0, LH8/h;->n:[I

    aget v0, v0, v3

    :goto_1
    move v5, v0

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {p0, v4, p2, v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->n(ZZFI)I

    move-result v0

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f0:Z

    if-eqz v0, :cond_9

    if-eq p1, v1, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getLensZoomIndex()I

    move-result v0

    goto :goto_1

    :cond_8
    :goto_2
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-virtual {v0, v2}, LH8/h;->l(F)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v0, v0, LH8/h;->n:[I

    aget v0, v0, v3

    goto :goto_1

    :cond_a
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {p0, v4, p2, v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->n(ZZFI)I

    move-result v0

    goto :goto_1

    :goto_3
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    if-eq v5, v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    move v0, v3

    goto :goto_5

    :cond_c
    :goto_4
    move v0, v1

    :goto_5
    xor-int/lit8 v7, v0, 0x1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_d

    move v9, v1

    goto :goto_6

    :cond_d
    move v9, v3

    :goto_6
    const/4 v8, 0x0

    move-object v4, p0

    move v6, p1

    move v10, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S(IIZZZZ)V

    return-void

    :cond_e
    :goto_7
    const-string/jumbo p0, "updateParamByZoomRatio(): ignored as source is toggle button"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final X(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->d()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Y(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->X(IZ)V

    sget-object p1, Lo9/a;->a:Lo9/b;

    invoke-interface {p1}, Lo9/b;->b()Lp9/K;

    move-result-object p1

    invoke-interface {p1}, Lp9/K;->b()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a0:I

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iput-boolean v0, p0, LH8/h;->C:Z

    return-void
.end method

.method public final Z(Lcom/android/camera/ui/zoom/ZoomTextImageView;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l0:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v4, 0xab

    if-ne v3, v4, :cond_3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3}, Lu2/Q;->O()Z

    move-result v3

    invoke-static {}, Lcom/android/camera/data/data/j;->v0()Z

    move-result v5

    invoke-static {v3, v5}, Lj9/q0;->d(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v4, v2}, Lcom/android/camera/data/data/j;->U(IZ)[F

    move-result-object v3

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v5

    invoke-virtual {v5}, Lu2/Q;->O()Z

    move-result v5

    invoke-virtual {v4, v5}, LJe/c;->l(Z)[I

    move-result-object v4

    array-length v5, v3

    array-length v6, v4

    const-string v7, "ZoomRatioToggleView"

    if-eq v5, v6, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getZoomRatioSparseArray: invalid data! zoomArray = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", focalLengthArray = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v7, v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    array-length v5, v3

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v6, v5, 0x2

    new-array v6, v6, [F

    move v8, v2

    :goto_0
    if-ge v8, v5, :cond_2

    mul-int/lit8 v9, v8, 0x2

    aget v10, v3, v8

    aput v10, v6, v9

    add-int/2addr v9, v0

    aget v10, v4, v8

    int-to-float v10, v10

    aput v10, v6, v9

    add-int/2addr v8, v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateFocalLengthMap: FocalLengthMap "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v1}, LN/i;->d([FLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFocalLengthMap([F)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    const/16 v0, 0x9

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {v2}, Lcom/android/camera/module/Y;->l(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    const/4 v0, 0x7

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v2, 0xbc

    if-eq v0, v2, :cond_5

    const/16 v2, 0xaf

    if-eq v0, v2, :cond_5

    const/16 v2, 0xad

    if-ne v0, v2, :cond_6

    :cond_5
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->N:I

    if-ne v0, v1, :cond_7

    :cond_6
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->O()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x6

    goto :goto_1

    :cond_7
    const/4 v0, 0x5

    :goto_1
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->k0:F

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBaseFocalLens(F)V

    return-void
.end method

.method public final a0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v0, :cond_0

    invoke-static {}, Lf2/b;->b()Z

    move-result v1

    iget-object v0, v0, LH8/h;->a:Landroid/graphics/Paint;

    sget-object v2, Lo9/a;->a:Lo9/b;

    invoke-interface {v2}, Lo9/b;->b()Lp9/K;

    move-result-object v2

    invoke-interface {v2, v1}, Lp9/K;->d(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setEnableStroke(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b0(II)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->E()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getTranslationUnit()F

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getFilterType()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, LH8/h;->y:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getExpandedDelta()F

    move-result p2

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {v0}, LH8/h;->e()I

    move-result v0

    int-to-float v0, v0

    mul-float v2, p2, v0

    :cond_3
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v1, :cond_4

    iget-boolean v1, v1, LH8/h;->y:Z

    if-eqz v1, :cond_4

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v1

    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getExpandedDelta()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {v1}, LH8/h;->e()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    move v2, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q(I)F

    move-result p1

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s0:F

    add-float/2addr v3, p2

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr v3, p2

    add-float/2addr v3, p1

    sub-float/2addr v3, v2

    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    new-instance v0, LH8/o;

    invoke-direct {v0, p0, p1, v3}, LH8/o;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;FF)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q(I)F

    move-result v2

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q(I)F

    move-result v3

    new-array v1, v1, [F

    aput v2, v1, v0

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->e0:[Landroid/animation/ValueAnimator;

    aput-object v1, v2, v0

    new-instance v4, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$a;

    invoke-direct {v4, p0, p1, p2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$a;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;IIF)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    aget-object p1, v2, v0

    new-instance v1, LH8/m;

    invoke-direct {v1, p0, v3, p2}, LH8/m;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;FI)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    invoke-direct {p0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    const p1, 0x3f666666    # 0.9f

    invoke-virtual {p0, p1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    aget-object p1, v2, v0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aget-object p0, v2, v0

    const-wide/16 p1, 0x384

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    aget-object p0, v2, v0

    invoke-static {p0}, LEp/i;->e(Landroid/animation/ValueAnimator;)V

    aget-object p0, v2, v0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->P()V

    const/4 p0, 0x0

    return p0
.end method

.method public final f(IFII)V
    .locals 7

    new-instance v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v4, 0xa4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->z(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setSupportOpticalZoom(Z)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    invoke-virtual {v0, p2, v6}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    sget-object p2, LJe/c$b;->a:LJe/c;

    invoke-virtual {p2}, LJe/c;->s1()V

    if-ne p1, p4, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    invoke-virtual {v0, v5, v6}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    iget p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getItemBackgroundPadding()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->U:I

    return p0
.end method

.method public getItemSize()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    return p0
.end method

.method public getItemWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    return p0
.end method

.method public getLensZoomIndex()I
    .locals 4

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ultra"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lur/i;->a:F

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v1, "wide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lur/c;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {v0}, LH8/h;->f()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "tele"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {v0}, LH8/h;->f()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    cmpl-float v2, v1, v0

    if-ltz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lur/i;->h()F

    move-result v0

    goto :goto_0

    :cond_4
    const-string v1, "macro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lur/i;->c:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_5
    const-string v1, "Standalone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lur/i;->i()F

    move-result v0

    goto :goto_0

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget-boolean v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->n(ZZFI)I

    move-result p0

    const-string v0, "getLensZoomIndex() index = "

    invoke-static {p0, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "ZoomRatioToggleView"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public getOpticalZoomStartPosition()I
    .locals 1

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, LH8/h;->n:[I

    aget p0, p0, v0

    return p0
.end method

.method public getPadZoomViewRightToScreenLeft()I
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPad"
        type = 0x0
    .end annotation

    sget-boolean v0, LK2/e;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, LK2/b;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, LJe/d;->c:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0

    :cond_1
    invoke-static {}, LK2/b;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    return p0

    :cond_2
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v2, 0xa7

    const v3, 0x7f0704fb

    if-eq v1, v2, :cond_4

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v1

    return p0

    :cond_4
    :goto_1
    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071243

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    return p0
.end method

.method public getPreVisibility()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g:I

    return p0
.end method

.method public getShrinkViewWidth()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget v3, v3, LH8/h;->q:I

    sub-int/2addr v1, v3

    mul-int/2addr v1, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071abc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method public getViewHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, LK2/b;->a0()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0714d8

    goto :goto_0

    :cond_0
    const v1, 0x7f071abc

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getEdge()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    mul-int/2addr p0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public getViewWidth()I
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getEdge()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071abc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getZoomSelectedViewPosition()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b0:F

    return p0
.end method

.method public getZoomViewBgDelta()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->V:F

    return p0
.end method

.method public final h(Ljava/lang/CharSequence;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->P:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->y0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$b;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final i([F[FFLandroid/widget/FrameLayout;ZI)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getLensZoomIndex()I

    move-result p5

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {v2, p5, v1, v0}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result p5

    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    array-length v0, p2

    sub-int/2addr v0, v1

    sub-int p5, v0, p5

    :cond_1
    aget v0, p2, p6

    new-instance v2, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v6, 0xa4

    const/4 v7, 0x0

    if-ne v5, v6, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    invoke-direct {v2, v3, v4, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v3, v3, LH8/h;->o:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setSupportOpticalZoom(Z)V

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    invoke-virtual {v2, v0, v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    aget v0, p2, p6

    invoke-static {p2, v0}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v0

    int-to-float v3, v0

    sub-float/2addr v3, p3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startToggleAnimation, prepare to add: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", nextIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", relative to center: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", selectedChildIndex: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    new-array v0, v7, [Ljava/lang/Object;

    const-string v5, "ZoomRatioToggleView"

    invoke-static {v5, p5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    const/4 v0, 0x2

    if-eqz p5, :cond_6

    new-instance p5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    iget v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    add-int/2addr v6, v8

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget-boolean v5, LK2/e;->n:Z

    if-eqz v5, :cond_4

    const/4 v7, 0x4

    :cond_4
    invoke-static {v7}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0704fb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v4, p5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v4, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v6

    iput v4, p5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sget-boolean v4, LK2/e;->n:Z

    if-nez v4, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071279

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_5
    invoke-virtual {v2, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr p5, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    invoke-static {v4, v5, v0, p5}, LF1/r0;->a(IIII)I

    move-result p5

    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    invoke-static {v5, v6, v0, v4}, LF1/r0;->a(IIII)I

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v6, v0

    invoke-virtual {v2, p5, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_6
    new-instance p5, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {p5, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr p5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    invoke-static {v4, v5, v0, p5}, LF1/r0;->a(IIII)I

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    invoke-static {v6, v7, v0, v5}, LF1/r0;->a(IIII)I

    move-result v0

    invoke-virtual {v2, p5, v4, v5, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_2
    array-length p5, p1

    sub-int/2addr p5, v1

    int-to-float p5, p5

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p5, v0

    int-to-float v1, p6

    cmpg-float v1, v1, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-gez v1, :cond_b

    add-int/lit8 v1, p6, 0x1

    :goto_3
    int-to-float v7, v1

    cmpg-float v7, v7, p3

    if-gtz v7, :cond_10

    aget v7, p2, v1

    invoke-static {p1, v7}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v7

    if-ltz v7, :cond_a

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz p1, :cond_7

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    add-float/2addr p3, p1

    int-to-float p1, v7

    sub-float/2addr p1, p5

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemWidth()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p1, p5

    sub-float/2addr p3, p1

    sub-float/2addr p3, v6

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    int-to-float p1, p1

    sub-float/2addr p3, p1

    sub-int p1, v1, p6

    int-to-float p1, p1

    aget p2, p2, v1

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->k(F)F

    move-result p2

    add-float/2addr p2, p1

    goto :goto_5

    :cond_7
    sub-int p1, p6, v1

    int-to-float p1, p1

    aget p3, p2, v1

    invoke-virtual {p0, p3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->k(F)F

    move-result p3

    add-float/2addr p1, p3

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v0

    sub-float/2addr p3, v8

    int-to-float v7, v7

    sub-float/2addr v7, p5

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemWidth()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, v7

    add-float/2addr p5, p3

    sub-float/2addr p5, v6

    iget-object p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz p3, :cond_8

    iget-boolean v8, p3, LH8/h;->y:Z

    if-eqz v8, :cond_8

    invoke-virtual {p3}, LH8/h;->e()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr v7, p3

    goto :goto_4

    :cond_8
    move v7, v4

    :goto_4
    sub-float p3, p5, v7

    iget-boolean p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-eqz p5, :cond_9

    sub-int p1, v1, p6

    int-to-float p1, p1

    aget p2, p2, v1

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->k(F)F

    move-result p2

    add-float/2addr p2, p1

    neg-float p3, p3

    goto :goto_5

    :cond_9
    move p2, p1

    :goto_5
    invoke-virtual {v2, p3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTemporaryTranslation(F)V

    goto/16 :goto_9

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_b
    add-int/lit8 v1, p6, -0x1

    :goto_6
    int-to-float v7, v1

    cmpl-float v7, v7, p3

    if-ltz v7, :cond_10

    aget v7, p2, v1

    invoke-static {p1, v7}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v7

    if-ltz v7, :cond_f

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz p1, :cond_c

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    add-float/2addr p3, p1

    int-to-float p1, v7

    sub-float/2addr p1, p5

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemWidth()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p1, p5

    sub-float/2addr p3, p1

    sub-float/2addr p3, v6

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    int-to-float p1, p1

    sub-float/2addr p3, p1

    sub-int p1, v1, p6

    int-to-float p1, p1

    aget p2, p2, v1

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->k(F)F

    move-result p2

    add-float/2addr p2, p1

    goto :goto_8

    :cond_c
    sub-int p1, p6, v1

    int-to-float p1, p1

    aget p3, p2, v1

    invoke-virtual {p0, p3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->k(F)F

    move-result p3

    add-float/2addr p3, p1

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v0

    sub-float/2addr p1, v8

    int-to-float v7, v7

    sub-float/2addr v7, p5

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemWidth()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, v7

    add-float/2addr p5, p1

    sub-float/2addr p5, v6

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz p1, :cond_d

    iget-boolean v8, p1, LH8/h;->y:Z

    if-eqz v8, :cond_d

    invoke-virtual {p1}, LH8/h;->e()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v7, p1

    goto :goto_7

    :cond_d
    move v7, v4

    :goto_7
    sub-float p1, p5, v7

    iget-boolean p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-eqz p5, :cond_e

    sub-int p3, v1, p6

    int-to-float p3, p3

    aget p2, p2, v1

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->k(F)F

    move-result p2

    add-float/2addr p2, p3

    neg-float p3, p1

    goto :goto_8

    :cond_e
    move p2, p3

    move p3, p1

    :goto_8
    invoke-virtual {v2, p3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTemporaryTranslation(F)V

    goto :goto_9

    :cond_f
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_6

    :cond_10
    move p2, v5

    :goto_9
    cmpl-float p1, p2, v5

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz p1, :cond_11

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    add-float/2addr p2, p1

    sub-float/2addr p2, v6

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    neg-float p1, v3

    goto :goto_a

    :cond_11
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    sub-float p2, p1, v6

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-eqz p1, :cond_12

    neg-float p1, v3

    neg-float p2, p2

    goto :goto_a

    :cond_12
    move p1, v3

    :goto_a
    invoke-virtual {v2, p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTemporaryTranslation(F)V

    move p2, p1

    :cond_13
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setExpandedDelta(F)V

    invoke-virtual {v2, p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTranslationUnit(F)V

    const/16 p1, 0x9

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d:F

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setRotation(F)V

    invoke-virtual {p4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p0:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k(F)F
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v3

    cmpl-float v3, v3, p1

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getTranslationUnit()F

    move-result p0

    return p0

    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v3, :cond_1

    iget-object v4, v3, LH8/h;->n:[I

    aget v4, v4, v0

    if-ne v4, v1, :cond_1

    invoke-virtual {v3}, LH8/h;->g()F

    move-result v3

    cmpl-float v3, v3, p1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v4

    invoke-virtual {v3, v4}, LH8/h;->l(F)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getTranslationUnit()F

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getTranslationUnit()F

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final l(IIZZ)F
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/android/camera/data/data/j;->H(IIZZ)F

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v1, v0, LH8/h;->n:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    if-ge p2, v2, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/android/camera/data/data/j;->H(IIZZ)F

    move-result p0

    return p0

    :cond_1
    const/4 v3, 0x1

    aget v1, v1, v3

    if-gt p2, v1, :cond_5

    sub-int v1, p2, v2

    iget-object v2, v0, LH8/h;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, v0, LH8/h;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v0, LH8/h;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    :goto_1
    cmpg-float v1, v0, v3

    if-gtz v1, :cond_4

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget p0, p0, LH8/h;->q:I

    sub-int/2addr p2, p0

    invoke-static {p1, p2, p3, p4}, Lcom/android/camera/data/data/j;->H(IIZZ)F

    move-result p0

    return p0

    :cond_4
    return v0

    :cond_5
    iget p0, v0, LH8/h;->q:I

    sub-int/2addr p2, p0

    invoke-static {p1, p2, p3, p4}, Lcom/android/camera/data/data/j;->H(IIZZ)F

    move-result p0

    return p0
.end method

.method public final m([F[FZ)I
    .locals 3

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {v2, p3, v1, v0}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result p3

    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p3, 0x0

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz p0, :cond_1

    array-length p0, p2

    sub-int/2addr p0, v1

    sub-int p3, p0, p3

    :cond_1
    aget p0, p2, p3

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result p0

    return p0
.end method

.method public final n(ZZFI)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {v0}, LH8/h;->g()F

    move-result v1

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_2

    invoke-virtual {v0}, LH8/h;->f()F

    move-result v0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {p0, p3}, LH8/h;->j(F)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-static {p1, p2, p3, p4}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result p1

    invoke-virtual {p0, p1}, LH8/h;->d(I)I

    move-result p0

    return p0
.end method

.method public final o([FIFZ)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-boolean v1, v0, LH8/h;->y:Z

    if-eqz v1, :cond_8

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    array-length v2, p1

    iget v3, v0, LH8/h;->q:I

    if-gt v2, v3, :cond_0

    goto :goto_2

    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v3

    new-array v2, v2, [F

    move v3, v1

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    invoke-virtual {v0, v1}, LH8/h;->n(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    aget v4, p1, v1

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v2

    goto :goto_4

    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getShrunkOpticalZoomArray: invalid state, length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    array-length v3, p1

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", criticalCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, LH8/h;->q:I

    const-string v3, ", return origin array"

    invoke-static {v2, v3, v0}, LP/e;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "OpticalZoomConfig"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_5

    new-array p1, v1, [F

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {v0}, LH8/h;->g()F

    move-result v1

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_7

    invoke-virtual {v0}, LH8/h;->f()F

    move-result v0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_7

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {p0, p3}, LH8/h;->j(F)I

    move-result p0

    return p0

    :cond_7
    :goto_5
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-static {p1, p2, p3, p4}, Lcom/android/camera/data/data/j;->J([FIFZ)I

    move-result p1

    invoke-virtual {p0, p1}, LH8/h;->d(I)I

    move-result p0

    return p0

    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/android/camera/data/data/j;->J([FIFZ)I

    move-result p0

    return p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LH8/k;

    invoke-direct {v3, v1}, LH8/k;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1a

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->E()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1a

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->x()Z

    move-result v2

    const-string v3, "ZoomRatioToggleView"

    if-eqz v2, :cond_2

    const-string v0, "onClick: optical zooming"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/camera/data/data/E;->D0(IZ)V

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-static {}, LU6/c;->h()Z

    move-result v6

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2e

    const-string v5, "clickChildAtIndex: "

    invoke-static {v2, v5, v3}, LF1/j3;->f(ILjava/lang/String;Ljava/lang/String;)V

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v7

    const-string v10, ""

    const-class v13, Lv2/v0;

    if-nez v7, :cond_3

    goto/16 :goto_c

    :cond_3
    iget-object v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-boolean v14, v7, LH8/h;->y:Z

    if-eqz v14, :cond_4

    goto/16 :goto_c

    :cond_4
    iget v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    if-eq v5, v2, :cond_5

    iget-object v15, v7, LH8/h;->n:[I

    aget v11, v15, v1

    if-eq v11, v2, :cond_8

    aget v11, v15, v4

    if-ne v2, v11, :cond_5

    goto :goto_1

    :cond_5
    if-ne v5, v2, :cond_6

    iget-object v5, v7, LH8/h;->n:[I

    aget v11, v5, v1

    if-eq v11, v2, :cond_7

    aget v5, v5, v4

    if-ne v2, v5, :cond_6

    goto :goto_0

    :cond_6
    move v8, v1

    goto/16 :goto_b

    :cond_7
    :goto_0
    iget-object v5, v7, LH8/h;->o:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_8
    :goto_1
    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v11, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    iget-boolean v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {v0, v7, v11, v14, v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l(IIZZ)F

    move-result v7

    iget v11, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    if-ne v11, v2, :cond_9

    move v11, v4

    goto :goto_2

    :cond_9
    move v11, v1

    :goto_2
    const-string v14, ", targetIndex: "

    if-eqz v11, :cond_a

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v12, "expendOpticalZoom: mZoomRatio: "

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v12, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {v0, v15, v6, v12, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->n(ZZFI)I

    move-result v2

    :cond_a
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->J(Z)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    move/from16 v22, v4

    iget-boolean v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {v0, v15, v2, v4, v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l(IIZZ)F

    move-result v4

    iget v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->A(I)Z

    move-result v6

    iget v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v15}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s(I)I

    move-result v15

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "expandOpticalZoomAnimation with: mCurrent: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    const-string v1, ", currentIndex: "

    invoke-static {v8, v9, v1, v15, v14}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v3, v1, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->z(I)Z

    move-result v1

    xor-int/lit8 v21, v1, 0x1

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->x()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->I()V

    :cond_b
    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v3, v1, LH8/h;->i:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    move-object/from16 v16, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v18, v15

    invoke-virtual/range {v16 .. v21}, LH8/h;->i(IIIIZ)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_c
    move/from16 v19, v2

    move/from16 v18, v15

    move-object v2, v1

    move/from16 v1, v21

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    new-instance v8, Lcom/android/camera/ui/zoom/c;

    invoke-direct {v8, v0}, Lcom/android/camera/ui/zoom/c;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    iput-boolean v1, v2, LH8/h;->l:Z

    new-instance v9, Landroid/animation/ValueAnimator;

    invoke-direct {v9}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v9, v2, LH8/h;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v14, 0xc8

    invoke-virtual {v9, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v9, v2, LH8/h;->i:Landroid/animation/ValueAnimator;

    new-instance v14, LLy/f;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v8, v2, LH8/h;->A:Lcom/android/camera/ui/zoom/c;

    iget-object v9, v2, LH8/h;->i:Landroid/animation/ValueAnimator;

    new-instance v14, LH8/d;

    invoke-direct {v14, v2, v8}, LH8/d;-><init>(LH8/h;Lcom/android/camera/ui/zoom/c;)V

    invoke-virtual {v9, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v9, v2, LH8/h;->i:Landroid/animation/ValueAnimator;

    new-instance v14, LH8/f;

    invoke-direct {v14, v2, v8}, LH8/f;-><init>(LH8/h;Lcom/android/camera/ui/zoom/c;)V

    invoke-virtual {v9, v14}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 v21, v1

    move-object/from16 v16, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, LH8/h;->i(IIIIZ)Landroid/animation/ValueAnimator;

    move-result-object v1

    move/from16 v2, v19

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_3
    iput v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    if-eqz v5, :cond_11

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    invoke-virtual {v1, v13}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/v0;

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f0:Z

    if-nez v1, :cond_d

    :goto_4
    const/4 v8, 0x0

    goto :goto_5

    :cond_d
    const/4 v11, 0x0

    goto :goto_4

    :goto_5
    invoke-virtual {v5, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    if-nez v11, :cond_f

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l:Z

    if-eqz v1, :cond_e

    goto :goto_6

    :cond_e
    move v1, v8

    goto :goto_7

    :cond_f
    :goto_6
    move/from16 v1, v22

    :goto_7
    invoke-virtual {v5, v7, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    invoke-virtual {v5, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b(Z)V

    invoke-virtual {v5, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e(Z)V

    if-eqz v6, :cond_10

    const/16 v11, 0xc

    goto :goto_8

    :cond_10
    const/4 v11, 0x3

    :goto_8
    iget v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v5, v11, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    invoke-virtual {v5, v10}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatioFocal(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    goto :goto_9

    :cond_11
    const/4 v8, 0x0

    :goto_9
    if-eqz v12, :cond_2e

    invoke-virtual {v12, v4, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->K:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$e;

    if-eqz v1, :cond_12

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    check-cast v1, LH4/f0;

    const/16 v3, 0x17

    invoke-virtual {v1, v2, v3}, LH4/f0;->ir(II)V

    :cond_12
    if-eqz v5, :cond_14

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    invoke-virtual {v5, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b(Z)V

    iget v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v2, 0xa4

    if-ne v1, v2, :cond_13

    move/from16 v1, v22

    goto :goto_a

    :cond_13
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v5, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e(Z)V

    :cond_14
    iget-boolean v1, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;->c0:Z

    if-nez v1, :cond_15

    invoke-virtual {v12}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->h(Ljava/lang/CharSequence;)V

    :cond_15
    move/from16 v0, v22

    invoke-virtual {v12, v0, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    invoke-virtual {v12, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBgAnim(Z)V

    return-void

    :goto_b
    new-array v1, v8, [Ljava/lang/Object;

    const-string v4, "OpticalZoomConfig"

    const-string v5, "isNeedOpticalAnim: update optical zoom ratio by other way"

    invoke-static {v4, v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_c
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->A(I)Z

    move-result v1

    const-string/jumbo v4, "sat_switch"

    if-eqz v1, :cond_22

    invoke-static {}, LU6/c;->k()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    invoke-virtual {v1, v4}, LF6/q;->q(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    const/16 v3, 0xa

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    invoke-virtual {v3, v13}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/v0;

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget-boolean v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l(IIZZ)F

    move-result v4

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    iget-boolean v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {v0, v5, v7, v8, v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l(IIZZ)F

    move-result v5

    invoke-virtual {v3, v4}, Lv2/v0;->o(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatioFocal(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    iget v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->A(I)Z

    move-result v7

    iget v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    if-ne v8, v2, :cond_17

    move v8, v3

    goto :goto_d

    :cond_17
    const/4 v8, 0x0

    :goto_d
    if-nez v8, :cond_19

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->J(Z)V

    iget-boolean v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->k:Z

    if-nez v3, :cond_18

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b0(II)V

    :cond_18
    iput v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    :cond_19
    if-eqz v6, :cond_1f

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    invoke-virtual {v6, v10}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatioFocal(Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2, v13}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/v0;

    if-eqz v2, :cond_1a

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f0:Z

    if-nez v2, :cond_1a

    goto :goto_e

    :cond_1a
    const/4 v8, 0x0

    :goto_e
    if-nez v8, :cond_1c

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l:Z

    if-eqz v2, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v2, 0x0

    goto :goto_10

    :cond_1c
    :goto_f
    const/4 v2, 0x1

    :goto_10
    invoke-virtual {v6, v5, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    invoke-virtual {v6, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b(Z)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v3, 0xa4

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_11

    :cond_1d
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v6, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e(Z)V

    if-eqz v7, :cond_1e

    const/16 v11, 0xc

    goto :goto_12

    :cond_1e
    const/4 v11, 0x3

    :goto_12
    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v6, v11, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    :goto_13
    const/4 v3, 0x1

    goto :goto_14

    :cond_1f
    const/4 v8, 0x0

    goto :goto_13

    :goto_14
    invoke-virtual {v1, v3, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    invoke-virtual {v1, v4, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->K:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$e;

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    check-cast v2, LH4/f0;

    const/16 v3, 0x17

    invoke-virtual {v2, v1, v3}, LH4/f0;->ir(II)V

    :cond_20
    if-eqz v6, :cond_2e

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    invoke-virtual {v6, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b(Z)V

    iget v0, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v2, 0xa4

    if-ne v0, v2, :cond_21

    const/4 v1, 0x1

    goto :goto_15

    :cond_21
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v6, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e(Z)V

    return-void

    :cond_22
    iget v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    const/16 v5, 0xab

    if-ne v2, v1, :cond_2a

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    invoke-virtual {v1, v13}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/v0;

    iget-object v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->K:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$e;

    if-eqz v4, :cond_2e

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v6, 0xa3

    if-eq v4, v6, :cond_23

    const/16 v6, 0xa8

    if-eq v4, v6, :cond_23

    if-eq v4, v5, :cond_23

    const/16 v5, 0xe8

    if-eq v4, v5, :cond_23

    const/16 v5, 0x100

    if-ne v4, v5, :cond_27

    :cond_23
    invoke-virtual {v1, v4}, Lv2/v0;->isSupportMode(I)Z

    move-result v4

    if-eqz v4, :cond_27

    iget-boolean v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v4, :cond_24

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/16 v22, 0x1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    goto :goto_16

    :cond_24
    move v4, v2

    :goto_16
    invoke-virtual {v1, v4}, Lv2/v0;->w(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->z(I)Z

    move-result v5

    if-eqz v5, :cond_26

    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v1, v2}, Lv2/v0;->w(I)Z

    move-result v6

    if-eqz v6, :cond_25

    iget-object v6, v1, Lv2/v0;->i:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/data/d;

    iget-object v5, v5, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    goto :goto_17

    :cond_25
    const/4 v5, 0x0

    :goto_17
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    goto :goto_18

    :cond_26
    iget v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v1, v5}, Lv2/v0;->n(I)Ljava/lang/String;

    move-result-object v5

    :goto_18
    const-string v6, "currentValue = "

    const-string v7, " nextValue = "

    invoke-static {v6, v4, v7, v5}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_2e

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v1, v3, v5}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->L:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$d;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    check-cast v0, LH4/f0;

    invoke-virtual {v0, v1, v2}, LH4/f0;->nr(FI)V

    return-void

    :cond_27
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->D(I)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {}, Lcom/android/camera/data/data/E;->e0()Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_28
    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->O:Z

    if-eqz v1, :cond_29

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v1, :cond_2e

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->K:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$e;

    if-eqz v0, :cond_2e

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    check-cast v0, LH4/f0;

    invoke-virtual {v0, v1, v8}, LH4/f0;->ir(II)V

    return-void

    :cond_29
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->D(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static {}, Lcom/android/camera/data/data/E;->e0()Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v0, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->K:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$e;

    check-cast v0, LH4/f0;

    invoke-virtual {v0}, LH4/f0;->ur()Z

    return-void

    :cond_2a
    invoke-static {}, LU6/c;->k()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    invoke-virtual {v1, v4}, LF6/q;->q(Ljava/lang/String;)V

    :cond_2b
    iget v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    if-ne v1, v5, :cond_2d

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->A5()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-string v3, "pref_ultra_wide_bokeh_enabled"

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v1}, LWh/a;->g()LWh/a;

    invoke-virtual {v1, v3, v8}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v1}, LWh/a;->c()V

    goto :goto_19

    :cond_2c
    invoke-virtual {v1}, LWh/a;->g()LWh/a;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v1}, LWh/a;->c()V

    :cond_2d
    :goto_19
    const/4 v5, 0x0

    move v1, v2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S(IIZZZZ)V

    :cond_2e
    :goto_1a
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->P:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->y0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$b;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->M:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$c;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->M:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$c;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_2
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->e:I

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v2

    const/16 v16, 0x0

    const/4 v15, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-boolean v3, v2, LH8/h;->y:Z

    if-nez v3, :cond_0

    iget-object v2, v2, LH8/h;->n:[I

    aget v3, v2, v16

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->e:I

    if-ge v3, v4, :cond_0

    aget v2, v2, v15

    if-ge v4, v2, :cond_0

    move v1, v3

    :cond_0
    invoke-direct {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result v2

    int-to-float v3, v2

    const/high16 v17, 0x40000000    # 2.0f

    div-float v9, v3, v17

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getZoomViewBgDelta()F

    move-result v10

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemSize()I

    move-result v4

    iget-boolean v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    iget-boolean v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    int-to-float v4, v4

    div-float v18, v4, v17

    invoke-direct {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getBgColor()I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    invoke-direct {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getZoomBgViewExpandedDelta()F

    move-result v13

    if-gt v2, v15, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->E()Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    goto/16 :goto_7

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getZoomSelectedViewPosition()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    iget v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->W:F

    const/high16 v21, 0x3f800000    # 1.0f

    cmpg-float v15, v15, v21

    if-gez v15, :cond_3

    iget-object v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->c0:Landroid/graphics/Paint;

    invoke-virtual {v15, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->c0:Landroid/graphics/Paint;

    move/from16 v22, v1

    int-to-float v1, v12

    move/from16 v23, v1

    iget v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->W:F

    mul-float v1, v1, v23

    float-to-int v1, v1

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_3
    move/from16 v22, v1

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->c0:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->R:F

    cmpg-float v11, v1, v21

    if-gez v11, :cond_4

    iget-object v11, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s:Landroid/graphics/Paint;

    int-to-float v15, v12

    mul-float/2addr v15, v1

    float-to-int v1, v15

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_4
    sget-object v23, Lo9/a;->a:Lo9/b;

    invoke-interface/range {v23 .. v23}, Lo9/b;->b()Lp9/K;

    move-result-object v1

    int-to-float v3, v3

    iget v11, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->U:I

    int-to-float v11, v11

    move v15, v7

    move v7, v8

    move v8, v6

    move v6, v11

    iget-object v11, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s:Landroid/graphics/Paint;

    move/from16 v24, v12

    move v12, v13

    iget v13, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r0:F

    move/from16 v25, v14

    iget v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->n0:F

    move/from16 v26, v5

    move v5, v3

    move/from16 v3, v26

    move/from16 v26, v25

    move/from16 v25, v15

    move/from16 v15, v24

    move/from16 v24, v2

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v14}, Lp9/K;->a(Landroid/graphics/Canvas;ZFFFIIFFLandroid/graphics/Paint;FFF)V

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-interface/range {v23 .. v23}, Lo9/b;->b()Lp9/K;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->U:I

    int-to-float v6, v6

    move v13, v12

    iget-object v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s:Landroid/graphics/Paint;

    iget v14, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r0:F

    iget v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->n0:F

    move v11, v10

    move/from16 v27, v22

    const/16 v20, 0x1

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move-object/from16 v3, p1

    invoke-interface/range {v1 .. v15}, Lp9/K;->n(Landroid/content/Context;Landroid/graphics/Canvas;ZFFFIIFFLandroid/graphics/Paint;FFF)V

    move-object v2, v3

    move v11, v4

    move v12, v6

    move v10, v8

    move v8, v9

    move/from16 v1, v26

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->c:Z

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-boolean v3, v1, LH8/h;->x:Z

    if-nez v3, :cond_5

    iget-boolean v3, v1, LH8/h;->y:Z

    if-nez v3, :cond_5

    goto/16 :goto_4

    :cond_5
    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    iget v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->I:I

    move v9, v8

    iget v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->U:I

    iget-boolean v5, v1, LH8/h;->B:Z

    if-eqz v5, :cond_6

    iget v5, v1, LH8/h;->p:I

    iget-object v6, v1, LH8/h;->n:[I

    aget v6, v6, v16

    invoke-static {v5, v6, v3, v4}, LF1/Q2;->e(IIII)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v6}, LH8/h;->b(I)F

    move-result v5

    iget v6, v1, LH8/h;->m:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, v1, LH8/h;->t:I

    int-to-float v5, v5

    div-float v5, v5, v17

    sub-float/2addr v4, v5

    iget-object v5, v1, LH8/h;->o:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v1, LH8/h;->m:F

    invoke-virtual {v1, v5}, LH8/h;->h(F)F

    move-result v5

    mul-float/2addr v5, v3

    sub-float v3, v4, v5

    iget v5, v1, LH8/h;->t:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    :goto_2
    move v5, v3

    goto :goto_3

    :cond_6
    iget-object v5, v1, LH8/h;->n:[I

    aget v5, v5, v16

    mul-int v6, v5, v3

    add-int/2addr v6, v4

    int-to-float v4, v6

    invoke-virtual {v1, v5}, LH8/h;->b(I)F

    move-result v5

    iget v6, v1, LH8/h;->m:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    iget v4, v1, LH8/h;->t:I

    int-to-float v4, v4

    div-float v4, v4, v17

    add-float/2addr v4, v5

    iget-object v5, v1, LH8/h;->o:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, v1, LH8/h;->m:F

    invoke-virtual {v1, v5}, LH8/h;->h(F)F

    move-result v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v4

    iget v3, v1, LH8/h;->t:I

    int-to-float v3, v3

    sub-float v3, v5, v3

    goto :goto_2

    :goto_3
    iget-object v3, v1, LH8/h;->c:Landroid/graphics/Paint;

    iget v6, v1, LH8/h;->h:I

    int-to-float v6, v6

    iget v13, v1, LH8/h;->m:F

    sub-float v21, v21, v13

    mul-float v6, v6, v21

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-interface/range {v23 .. v23}, Lo9/b;->b()Lp9/K;

    move-result-object v3

    move-object v6, v3

    iget-object v3, v1, LH8/h;->c:Landroid/graphics/Paint;

    iget-boolean v1, v1, LH8/h;->B:Z

    move/from16 v28, v9

    move v9, v1

    move-object v1, v6

    move/from16 v6, v28

    invoke-interface/range {v1 .. v9}, Lp9/K;->o(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIZ)V

    move v8, v6

    :cond_7
    :goto_4
    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t0:Z

    if-eqz v1, :cond_9

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v19, v1

    if-nez v1, :cond_8

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s(I)I

    move-result v1

    goto :goto_5

    :cond_8
    move/from16 v1, v27

    :goto_5
    invoke-interface/range {v23 .. v23}, Lo9/b;->b()Lp9/K;

    move-result-object v2

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->U:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v7, v3

    iget-object v13, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->c0:Landroid/graphics/Paint;

    move v9, v8

    move v8, v10

    move v3, v11

    move v10, v12

    move/from16 v12, v18

    move/from16 v6, v19

    move/from16 v5, v24

    move/from16 v4, v25

    move v11, v1

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v13}, Lp9/K;->x(Landroid/graphics/Canvas;ZZIFFIIFIFLandroid/graphics/Paint;)V

    move v15, v4

    move v8, v9

    move v5, v10

    goto :goto_6

    :cond_9
    move-object/from16 v2, p1

    move v5, v12

    move/from16 v15, v25

    :goto_6
    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->y()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->E()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->v0:Z

    if-eqz v1, :cond_f

    :cond_a
    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getOpticalZoomStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q(I)F

    move-result v1

    div-float v3, v5, v17

    add-float/2addr v3, v1

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getOpticalZoomStartPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    iget-object v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {v4}, LH8/h;->g()F

    move-result v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v1

    if-gez v1, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getTranslationUnit()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_d

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->n0:F

    mul-float/2addr v1, v4

    add-float/2addr v3, v1

    :cond_d
    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getOpticalZoomStartPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getNumWidth()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getOpticalZoomStartPosition()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getNumWidth()F

    move-result v4

    sub-float/2addr v1, v4

    div-float v1, v1, v17

    if-eqz v15, :cond_e

    iget-object v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    mul-float v3, v3, v17

    sub-float/2addr v3, v5

    add-float/2addr v3, v1

    div-float v3, v3, v17

    invoke-virtual {v4, v2, v8, v3}, LH8/h;->a(Landroid/graphics/Canvas;IF)V

    goto :goto_7

    :cond_e
    iget-object v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    mul-float v3, v3, v17

    add-float/2addr v3, v5

    sub-float/2addr v3, v1

    div-float v3, v3, v17

    invoke-virtual {v4, v2, v8, v3}, LH8/h;->a(Landroid/graphics/Canvas;IF)V

    :cond_f
    :goto_7
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const/4 p1, 0x1

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result p2

    const/4 p3, 0x5

    const/4 p4, 0x2

    if-ne p2, p3, :cond_0

    iget p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    div-int/lit8 p3, p3, 0x4

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    div-int/2addr p3, p4

    :goto_0
    iput p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->I:I

    if-ne p2, p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getOneZoomRatioEdge()I

    move-result p3

    iput p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->I:I

    :cond_1
    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    add-int/2addr p5, p3

    iget p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->I:I

    add-int/2addr p5, p3

    iget-boolean p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    sget-boolean p3, LJe/c;->k:Z

    sget-object p3, LJe/c$b;->a:LJe/c;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->j0()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/2addr p3, p4

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p3, p2

    sub-int/2addr p3, p5

    move p2, p3

    move p3, v0

    goto :goto_2

    :cond_2
    iget-boolean p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez p3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    div-int/2addr p3, p4

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p3, p2

    sub-int/2addr p3, p5

    :goto_1
    move p2, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    div-int/2addr p3, p4

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p2, p3

    add-int p3, p2, p5

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v2

    move v3, v0

    :goto_3
    if-ge v3, v1, :cond_1d

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    :cond_4
    iget-boolean v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v5, :cond_c

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v5, p4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    invoke-static {v6, v7, p4, v5}, LF1/r0;->a(IIII)I

    move-result v5

    if-ne v1, p1, :cond_5

    mul-int/lit8 v6, p5, 0x2

    add-int/2addr v6, v7

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_7

    :cond_6
    add-int/2addr v7, p5

    :cond_7
    move v6, v7

    :goto_4
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-direct {v7, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, p3

    add-int/2addr v6, p2

    invoke-virtual {v4, p3, p2, v7, v6}, Landroid/view/View;->layout(IIII)V

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr p2, p4

    if-nez v3, :cond_8

    add-int/2addr p2, p5

    :cond_8
    add-int/lit8 v7, v1, -0x1

    iget v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v8, p4

    if-ne v3, v7, :cond_9

    add-int/2addr v8, p5

    :cond_9
    invoke-virtual {v4, v5, p2, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr p2, p4

    if-nez v3, :cond_a

    add-int/2addr p2, p5

    :cond_a
    if-ne v3, v7, :cond_b

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v7, p4

    add-int/2addr v7, p5

    goto :goto_5

    :cond_b
    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v7, p4

    :goto_5
    invoke-virtual {v4, v5, p2, v5, v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->l(IIII)V

    move p2, v6

    goto/16 :goto_b

    :cond_c
    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v5, p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    invoke-static {v6, v7, p4, v5}, LF1/r0;->a(IIII)I

    move-result v5

    iget-boolean v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez v6, :cond_14

    if-ne v1, p1, :cond_d

    mul-int/lit8 v6, p5, 0x2

    add-int/2addr v6, v7

    goto :goto_6

    :cond_d
    if-eqz v3, :cond_e

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_f

    :cond_e
    add-int/2addr v7, p5

    :cond_f
    move v6, v7

    :goto_6
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {v7, v6, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr v6, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, p2

    invoke-virtual {v4, p3, p2, v6, v7}, Landroid/view/View;->layout(IIII)V

    iget p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr p3, p4

    if-nez v3, :cond_10

    add-int/2addr p3, p5

    :cond_10
    add-int/lit8 v7, v1, -0x1

    iget v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v8, p4

    if-ne v3, v7, :cond_11

    add-int/2addr v8, p5

    :cond_11
    invoke-virtual {v4, p3, v5, v8, v5}, Landroid/view/View;->setPadding(IIII)V

    iget p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr p3, p4

    if-nez v3, :cond_12

    add-int/2addr p3, p5

    :cond_12
    if-ne v3, v7, :cond_13

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v7, p4

    add-int/2addr v7, p5

    goto :goto_7

    :cond_13
    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v7, p4

    :goto_7
    invoke-virtual {v4, p3, v5, v7, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->l(IIII)V

    goto :goto_a

    :cond_14
    if-ne v1, p1, :cond_15

    mul-int/lit8 v6, p5, 0x2

    add-int/2addr v6, v7

    goto :goto_8

    :cond_15
    if-eqz v3, :cond_16

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_17

    :cond_16
    add-int/2addr v7, p5

    :cond_17
    move v6, v7

    :goto_8
    sub-int/2addr p3, v6

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {v7, v6, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr v6, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, p2

    invoke-virtual {v4, p3, p2, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v6, v1, -0x1

    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v7, p4

    if-ne v3, v6, :cond_18

    add-int/2addr v7, p5

    :cond_18
    iget v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v8, p4

    if-nez v3, :cond_19

    add-int/2addr v8, p5

    :cond_19
    invoke-virtual {v4, v7, v5, v8, v5}, Landroid/view/View;->setPadding(IIII)V

    if-ne v3, v6, :cond_1a

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v6, p4

    add-int/2addr v6, p5

    goto :goto_9

    :cond_1a
    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v6, p4

    :goto_9
    iget v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    div-int/2addr v7, p4

    if-nez v3, :cond_1b

    add-int/2addr v7, p5

    :cond_1b
    invoke-virtual {v4, v6, v5, v7, v5}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->l(IIII)V

    move v6, p3

    :goto_a
    if-eqz v2, :cond_1c

    iput v0, v4, Lcom/android/camera/ui/zoom/ZoomTextImageView;->M:I

    iput v0, v4, Lcom/android/camera/ui/zoom/ZoomTextImageView;->N:I

    iput v0, v4, Lcom/android/camera/ui/zoom/ZoomTextImageView;->O:I

    iput v0, v4, Lcom/android/camera/ui/zoom/ZoomTextImageView;->P:I

    iput v0, v4, Lcom/android/camera/ui/zoom/ZoomTextImageView;->K:I

    :cond_1c
    move p3, v6

    :goto_b
    add-int/2addr v3, p1

    goto/16 :goto_3

    :cond_1d
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->V()V

    iget-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->j0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    mul-int/2addr v1, v0

    move v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    mul-int/2addr v1, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    div-int/lit8 v4, v4, 0x4

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    div-int/lit8 v4, v4, 0x2

    :goto_1
    iput v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->I:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getOneZoomRatioEdge()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->I:I

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v0

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->I:I

    mul-int/lit8 v0, v0, 0x2

    :goto_2
    add-int/2addr v4, v0

    add-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->I:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t:I

    :goto_3
    add-int/2addr v1, v0

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    instance-of p1, p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    if-eqz p1, :cond_0

    const-string p1, "onVisibilityChanged = "

    invoke-static {p2, p1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ZoomRatioToggleView"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g:I

    :cond_0
    return-void
.end method

.method public final p([F[FZZ)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m([F[FZ)I

    move-result p2

    if-gez p2, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {v0, p2}, LH8/h;->d(I)I

    move-result p2

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v0, :cond_2

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    :cond_2
    if-eqz p4, :cond_3

    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-static {v0, p3, p0, p1}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result p0

    return p0

    :cond_3
    return p2
.end method

.method public final q(I)F
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getViewWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getItemWidth()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r(III)F

    move-result p0

    return p0
.end method

.method public final r(III)F
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object p1, p1, LH8/h;->n:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getViewHeight()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result v2

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-boolean v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-eqz v1, :cond_1

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->j0()Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-float p2, v0

    div-float/2addr p2, v4

    int-to-float v0, p3

    mul-float/2addr v3, v0

    sub-float/2addr p2, v3

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s(I)I

    move-result p0

    :goto_0
    mul-int/2addr p0, p3

    int-to-float p0, p0

    :goto_1
    add-float/2addr p2, p0

    return p2

    :cond_1
    if-eqz v5, :cond_2

    int-to-float p2, p2

    div-float/2addr p2, v4

    int-to-float v0, p3

    mul-float/2addr v3, v0

    sub-float/2addr p2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s(I)I

    move-result p0

    sub-int/2addr v2, p0

    mul-int/2addr v2, p3

    int-to-float p0, v2

    goto :goto_1

    :cond_2
    int-to-float p2, p2

    div-float/2addr p2, v4

    int-to-float v0, p3

    mul-float/2addr v3, v0

    sub-float/2addr p2, v3

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s(I)I

    move-result p0

    goto :goto_0
.end method

.method public final removeAllViews()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->I()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public final s(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v0, p0, LH8/h;->n:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-gt p1, v0, :cond_1

    :goto_0
    return p1

    :cond_1
    iget p0, p0, LH8/h;->r:I

    sub-int/2addr p1, p0

    if-gez p1, :cond_2

    return v1

    :cond_2
    return p1
.end method

.method public setActionListener(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$e;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->K:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$e;

    return-void
.end method

.method public setBackgroundColor(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->g(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBaseFocalLens(Ljava/lang/String;)V
    .locals 2

    const-string v0, "mm"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->k0:F

    return-void
.end method

.method public setCurrentMode(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    const-string/jumbo p0, "setEnabled(): "

    invoke-static {p0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ZoomRatioToggleView"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setIgnoreAnnounceAccessibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l:Z

    return-void
.end method

.method public setIgnoreFreshSuppress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->l0:Z

    return-void
.end method

.method public setIgnoreZoomSelectedAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->k:Z

    return-void
.end method

.method public setIsSupportedPanelShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->i0:Z

    return-void
.end method

.method public setIsSwitchMode(Z)V
    .locals 0

    return-void
.end method

.method public setLensDefaultZoomValue(F)V
    .locals 0

    return-void
.end method

.method public setLensType(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setNeedZoomToggleSwitchAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->u0:Z

    return-void
.end method

.method public setOpticalZoomListener(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$c;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->M:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->M:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$c;

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 3

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setRotation(F)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setSuppressedZoomRatio(F)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-nez v1, :cond_0

    const-string/jumbo p0, "setSuppressedZoomRatio() ignored: no child"

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "ZoomRatioToggleView"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v1, p1, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->h(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSwitchLensListener(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->L:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$d;

    return-void
.end method

.method public setUseSliderAllowed(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->N:I

    return-void
.end method

.method public setVerType(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->f()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setVisibility(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const-string v1, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string v1, "GONE"

    goto :goto_0

    :cond_1
    const-string v1, "INVISIBLE"

    goto :goto_0

    :cond_2
    const-string v1, "VISIBLE"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/android/camera/log/DumpTrace;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ZoomRatioToggleView"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v0, LAp/e;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LAp/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public setZoomSelectedViewPosition(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b0:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setZoomViewBgDelta(F)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->V:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final t([FZZZ)[F
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    if-eqz p4, :cond_0

    new-array p0, v0, [F

    aput v2, p0, v1

    return-object p0

    :cond_0
    if-eqz p3, :cond_6

    const/4 p3, 0x0

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->f0:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    cmpl-float p2, p0, p3

    if-eqz p2, :cond_3

    :cond_2
    move v2, p0

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    array-length p0, p1

    if-lez p0, :cond_5

    aget v2, p1, v1

    goto :goto_1

    :cond_4
    :goto_0
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {p0}, Lcom/android/camera/data/data/j;->N(I)F

    move-result p0

    cmpl-float p1, p0, p3

    if-nez p1, :cond_2

    :cond_5
    :goto_1
    new-array p0, v0, [F

    aput v2, p0, v1

    return-object p0

    :cond_6
    return-object p1
.end method

.method public final u([FZZZZ)V
    .locals 34

    move-object/from16 v0, p0

    move/from16 v5, p2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez p3, :cond_2

    if-eqz p5, :cond_0

    new-array v1, v9, [F

    aput v7, v1, v8

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    if-eqz p4, :cond_1

    new-array v1, v9, [F

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    aput v2, v1, v8

    :cond_1
    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v1, :cond_3

    invoke-static {v2}, Ljava/util/Arrays;->sort([F)V

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    invoke-static {v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g([F)V

    :cond_3
    invoke-direct {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result v1

    if-ne v1, v9, :cond_5

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v3, :cond_8

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    array-length v3, v2

    sub-int/2addr v3, v9

    :goto_2
    if-ltz v3, :cond_8

    invoke-virtual {v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v6

    aget v10, v2, v3

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_4

    new-array v1, v9, [F

    aput v10, v1, v8

    iput-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_5
    if-eqz p4, :cond_8

    if-nez p3, :cond_8

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v1, v1

    sub-int/2addr v1, v9

    :goto_3
    if-ltz v1, :cond_7

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-object v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    aget v6, v6, v1

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_7
    move v1, v8

    :goto_4
    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    iget v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    aput v6, v3, v1

    :cond_8
    :goto_5
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v10, Lv2/v0;

    invoke-virtual {v1, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/v0;

    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    iget v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    iget-boolean v11, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {v1, v6, v11, v3}, Lv2/v0;->B(IZ[F)V

    invoke-static {}, Lj9/f;->l3()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    invoke-virtual {v1, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/v0;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget-object v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    invoke-virtual {v1, v3, v5, v6}, Lv2/v0;->v(IZ[F)V

    iget v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-static {v1, v8, v8}, LH4/h0;->a(IZZ)Lcom/android/camera/ui/zoom/ZoomRatioToggleView$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->w(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$f;)V

    :cond_9
    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v3, v1

    iget-object v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    const-string v11, "ZoomRatioToggleView"

    if-eqz v6, :cond_a

    iget-boolean v12, v6, LH8/h;->y:Z

    if-eqz v12, :cond_a

    array-length v12, v1

    iget v13, v6, LH8/h;->q:I

    if-gt v12, v13, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "expandOpticalZoomArrayIfNeeded: expanded state mismatch, mZoomArray.length="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", criticalCount="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget v6, v6, LH8/h;->q:I

    const-string v12, ", reset optical animation"

    invoke-static {v1, v12, v6}, LP/e;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v11, v1, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->I()V

    :cond_a
    :goto_6
    move v12, v3

    goto :goto_7

    :cond_b
    invoke-virtual {v6, v1}, LH8/h;->c([F)[F

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v1, v1

    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget v3, v3, LH8/h;->q:I

    sub-int v3, v1, v3

    goto :goto_6

    :goto_7
    array-length v1, v2

    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v6, v3

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iput v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r0:F

    array-length v1, v2

    iget-object v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q0:Ljava/util/ArrayList;

    iget-object v13, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o0:Ljava/util/ArrayList;

    const-string v14, ", count: "

    const-string v15, ", final offset: "

    const-string v7, ", old offset: "

    move/from16 v16, v9

    const-string v9, ", new offset: "

    const-string v8, ", nextCenterIndex: "

    move-object/from16 p1, v4

    const-string v4, ", nextIndex: "

    const-string v5, ", lastCenterIndex: "

    move-object/from16 p5, v10

    const-string v10, ", lastIndex: "

    move-object/from16 v17, v11

    const-string v11, ", value: "

    move-object/from16 v18, v14

    const-string/jumbo v14, "startToggleAnimation -> switch module, i: "

    move-object/from16 v19, v7

    const-string v7, ""

    move-object/from16 v20, v15

    const/high16 v21, 0x40000000    # 2.0f

    if-le v12, v1, :cond_27

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float v1, v1, v21

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v3, v3, v21

    move/from16 v22, v12

    const/4 v15, 0x0

    :goto_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    move-object/from16 v23, v9

    if-ge v15, v12, :cond_18

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    instance-of v9, v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v9, :cond_17

    check-cast v12, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v25, v3

    const/16 v3, 0x8

    if-ne v9, v3, :cond_d

    if-eqz p4, :cond_c

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_9
    move-object/from16 v28, v2

    :goto_a
    move-object/from16 v26, v6

    move-object/from16 v32, v7

    move-object v6, v8

    move-object/from16 v8, v17

    move-object/from16 v2, v18

    move-object/from16 v7, v19

    move-object/from16 v9, v23

    move/from16 v18, v1

    move-object v1, v13

    move-object/from16 v13, v20

    goto/16 :goto_c

    :cond_d
    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v3, :cond_10

    iget-boolean v9, v3, LH8/h;->y:Z

    if-eqz v9, :cond_10

    invoke-virtual {v3, v15}, LH8/h;->n(I)Z

    move-result v3

    if-eqz v3, :cond_10

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v9, 0xc

    invoke-virtual {v12, v9, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    invoke-virtual {v12, v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatioFocal(Ljava/lang/String;)V

    iget-boolean v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    invoke-virtual {v12, v9}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b(Z)V

    iget v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v3, 0xa4

    if-ne v9, v3, :cond_e

    move/from16 v3, v16

    goto :goto_b

    :cond_e
    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v12, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e(Z)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    const/4 v3, 0x2

    invoke-virtual {v12, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    if-eqz p4, :cond_f

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    invoke-virtual {v12}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v3

    iget-object v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    move-object/from16 v26, v6

    iget v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    move-object/from16 v27, v13

    iget-boolean v13, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {v0, v9, v6, v3, v13}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o([FIFZ)I

    move-result v6

    iget-boolean v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v9, :cond_11

    iget-object v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    sub-int v6, v9, v6

    :cond_11
    iget-object v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    aget v9, v9, v6

    invoke-static {v2, v9}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v13

    if-ltz v13, :cond_16

    move-object/from16 v28, v2

    int-to-float v2, v6

    sub-float/2addr v2, v1

    move/from16 v29, v2

    int-to-float v2, v13

    sub-float v2, v2, v25

    move-object/from16 v30, v8

    sub-float v8, v2, v29

    move/from16 v31, v13

    iget-boolean v13, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez v13, :cond_12

    iget-boolean v13, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v13, :cond_13

    :cond_12
    neg-float v8, v8

    :cond_13
    invoke-virtual {v12, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTranslationUnit(F)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    invoke-virtual {v12, v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatioFocal(Ljava/lang/String;)V

    move-object/from16 v32, v7

    iget v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    move/from16 v33, v8

    const/4 v8, 0x3

    invoke-virtual {v12, v8, v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    invoke-virtual {v12, v9, v13}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    const/4 v7, 0x4

    invoke-virtual {v12, v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    iget-object v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v7, :cond_15

    iget-boolean v7, v7, LH8/h;->y:Z

    if-eqz v7, :cond_15

    iget-boolean v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-eqz v7, :cond_14

    neg-float v2, v2

    :cond_14
    invoke-virtual {v12, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setExpandedDelta(F)V

    :cond_15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v31

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v30

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v9, v23

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    move-object/from16 v13, v20

    move/from16 v12, v29

    invoke-static {v7, v2, v3, v12, v13}, LF1/K2;->d(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    move/from16 v2, v33

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move/from16 v18, v1

    const/4 v12, 0x0

    new-array v1, v12, [Ljava/lang/Object;

    move-object/from16 v8, v17

    invoke-static {v8, v7, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v3

    move-object/from16 v1, v27

    goto :goto_c

    :cond_16
    move-object/from16 v28, v2

    move-object/from16 v32, v7

    move-object v6, v8

    move-object/from16 v8, v17

    move-object/from16 v2, v18

    move-object/from16 v7, v19

    move-object/from16 v13, v20

    move-object/from16 v9, v23

    move/from16 v18, v1

    const/4 v1, 0x0

    invoke-virtual {v12, v3, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    const/4 v1, 0x6

    invoke-virtual {v12, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    move-object/from16 v1, v27

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_17
    move-object/from16 v28, v2

    move/from16 v25, v3

    goto/16 :goto_a

    :goto_c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v19, v7

    move-object/from16 v17, v8

    move-object/from16 v20, v13

    move/from16 v3, v25

    move-object/from16 v7, v32

    move-object v13, v1

    move-object v8, v6

    move/from16 v1, v18

    move-object/from16 v6, v26

    move-object/from16 v18, v2

    move-object/from16 v2, v28

    goto/16 :goto_8

    :cond_18
    move-object/from16 v28, v2

    move-object v1, v13

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v2, :cond_19

    iget-boolean v2, v2, LH8/h;->y:Z

    if-eqz v2, :cond_19

    move-object/from16 v1, v28

    :goto_d
    move-object/from16 v15, p1

    move/from16 v9, v16

    goto/16 :goto_14

    :cond_19
    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v7, v3, v21

    move-object/from16 v3, v28

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float v4, v4, v21

    invoke-static {v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->j([F[F)F

    move-result v2

    invoke-static {v3, v2}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v8

    const/4 v6, 0x0

    :goto_e
    array-length v2, v3

    if-ge v6, v2, :cond_25

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    aget v5, v3, v6

    invoke-static {v2, v5}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    if-gez v2, :cond_1d

    if-ge v6, v8, :cond_20

    add-int/lit8 v9, v6, 0x1

    aget v2, v3, v9

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    invoke-static {v5, v2}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1f

    iget-boolean v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v5, :cond_1a

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v2

    goto :goto_f

    :cond_1a
    move v5, v2

    :goto_f
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v9, v5, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v9, :cond_1d

    check-cast v5, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    aget v9, v3, v6

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    move/from16 v9, v16

    invoke-virtual {v5, v9}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setConverted(Z)V

    int-to-float v9, v2

    sub-float/2addr v9, v7

    int-to-float v10, v6

    sub-float/2addr v10, v4

    sub-float/2addr v10, v9

    iget-boolean v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez v9, :cond_1b

    iget-boolean v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v9, :cond_1c

    :cond_1b
    neg-float v10, v10

    :cond_1c
    invoke-virtual {v5, v10}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTranslationUnit(F)V

    iget-object v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    aget v10, v3, v6

    aput v10, v9, v2

    const/4 v2, 0x4

    invoke-virtual {v5, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1d
    move-object/from16 v15, p1

    move-object v12, v1

    move-object v1, v3

    move v3, v4

    :cond_1e
    :goto_10
    const/4 v2, 0x4

    :goto_11
    const/4 v9, 0x1

    goto/16 :goto_13

    :cond_1f
    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    move/from16 v5, p2

    move-object v2, v3

    move v3, v4

    move-object/from16 v12, v27

    move-object/from16 v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->i([F[FFLandroid/widget/FrameLayout;ZI)V

    move-object v1, v2

    move-object v15, v4

    goto :goto_10

    :cond_20
    move-object/from16 v15, p1

    move-object v12, v1

    move-object v1, v3

    move v3, v4

    if-le v6, v8, :cond_1e

    const/4 v9, 0x1

    add-int/lit8 v2, v6, -0x1

    aget v2, v1, v2

    iget-object v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    invoke-static {v4, v2}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    if-ltz v2, :cond_24

    iget-boolean v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v4, :cond_21

    iget-object v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v4, v4

    sub-int/2addr v4, v9

    add-int/lit8 v5, v2, 0x1

    sub-int/2addr v4, v5

    goto :goto_12

    :cond_21
    add-int/lit8 v4, v2, 0x1

    :goto_12
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v5, :cond_24

    check-cast v4, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    aget v5, v1, v6

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    invoke-virtual {v4, v9}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setConverted(Z)V

    add-int/2addr v2, v9

    int-to-float v5, v2

    sub-float/2addr v5, v7

    int-to-float v9, v6

    sub-float/2addr v9, v3

    sub-float/2addr v9, v5

    iget-boolean v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez v5, :cond_22

    iget-boolean v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v5, :cond_23

    :cond_22
    neg-float v9, v9

    :cond_23
    invoke-virtual {v4, v9}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTranslationUnit(F)V

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    aget v9, v1, v6

    aput v9, v5, v2

    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_24
    const/4 v2, 0x4

    :goto_13
    add-int/2addr v6, v9

    move v4, v3

    move/from16 v16, v9

    move-object/from16 p1, v15

    move-object v3, v1

    move-object v1, v12

    goto/16 :goto_e

    :cond_25
    move-object v1, v3

    goto/16 :goto_d

    :goto_14
    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->P()V

    array-length v2, v1

    if-ne v2, v9, :cond_26

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_26

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v2, :cond_26

    iget-boolean v3, v2, LH8/h;->y:Z

    if-eqz v3, :cond_26

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v2, v3}, LH8/h;->n(I)Z

    move-result v2

    if-nez v2, :cond_26

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    const/4 v3, 0x5

    iget v4, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    const/4 v12, 0x0

    iput-boolean v12, v2, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r0:Z

    invoke-virtual {v2, v12, v12}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    iput-boolean v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t0:Z

    :cond_26
    move/from16 v5, p2

    move-object v2, v1

    goto/16 :goto_2c

    :cond_27
    move-object v1, v2

    move-object/from16 v26, v6

    move-object/from16 v32, v7

    move-object v6, v8

    move/from16 v22, v12

    move-object v12, v13

    move-object/from16 v8, v17

    move-object/from16 v2, v18

    move-object/from16 v7, v19

    move-object/from16 v13, v20

    array-length v15, v1

    move-object/from16 v27, v12

    move/from16 v12, v22

    if-ge v12, v15, :cond_48

    array-length v3, v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v3, v3, v21

    array-length v15, v1

    add-int/lit8 v15, v15, -0x1

    int-to-float v15, v15

    div-float v15, v15, v21

    move-object/from16 v17, v8

    move/from16 v22, v12

    const/4 v12, 0x0

    :goto_15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v12, v8, :cond_32

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v18, v2

    instance-of v2, v8, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v2, :cond_31

    check-cast v8, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    move-object/from16 v19, v7

    const/16 v7, 0x8

    if-ne v2, v7, :cond_28

    move-object/from16 v28, v1

    move-object v2, v6

    :goto_16
    move-object/from16 v20, v13

    :goto_17
    move-object/from16 v7, v17

    :goto_18
    move-object/from16 v6, v27

    const/4 v1, 0x2

    :goto_19
    const/16 v16, 0x1

    goto/16 :goto_1b

    :cond_28
    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v2, :cond_2a

    iget-boolean v7, v2, LH8/h;->y:Z

    if-eqz v7, :cond_2a

    invoke-virtual {v2, v12}, LH8/h;->n(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/16 v7, 0xc

    invoke-virtual {v8, v7, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    move-object/from16 v7, v32

    invoke-virtual {v8, v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatioFocal(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->g0:Z

    invoke-virtual {v8, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->b(Z)V

    iget v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    move-object/from16 v20, v13

    const/16 v13, 0xa4

    if-ne v2, v13, :cond_29

    const/4 v2, 0x1

    goto :goto_1a

    :cond_29
    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {v8, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->e(Z)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    move-object/from16 v2, v26

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v28, v1

    move-object v2, v6

    move-object/from16 v32, v7

    goto :goto_17

    :cond_2a
    move-object/from16 v20, v13

    move-object/from16 v2, v26

    move-object/from16 v7, v32

    invoke-virtual {v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v13

    move-object/from16 v26, v2

    iget-object v2, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    move-object/from16 v23, v9

    iget v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->r:I

    move/from16 v24, v15

    iget-boolean v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-virtual {v0, v2, v9, v13, v15}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o([FIFZ)I

    move-result v2

    iget-boolean v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v9, :cond_2b

    iget-object v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v9, v9

    const/16 v16, 0x1

    add-int/lit8 v9, v9, -0x1

    sub-int v2, v9, v2

    :cond_2b
    iget-object v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    aget v9, v9, v2

    invoke-static {v1, v9}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v15

    if-ltz v15, :cond_30

    move-object/from16 v28, v1

    int-to-float v1, v2

    sub-float/2addr v1, v3

    move/from16 v25, v1

    int-to-float v1, v15

    sub-float v1, v1, v24

    move-object/from16 v30, v6

    sub-float v6, v1, v25

    move/from16 v29, v15

    iget-boolean v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez v15, :cond_2c

    iget-boolean v15, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v15, :cond_2d

    :cond_2c
    neg-float v6, v6

    :cond_2d
    invoke-virtual {v8, v6}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTranslationUnit(F)V

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIsShowRatioAsFocalLens(Z)V

    invoke-virtual {v8, v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatioFocal(Ljava/lang/String;)V

    move-object/from16 v32, v7

    iget v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    move/from16 v31, v6

    const/4 v6, 0x3

    invoke-virtual {v8, v6, v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    invoke-virtual {v8, v9, v15}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    const/16 v7, 0x8

    invoke-virtual {v8, v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    iget-object v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v6, :cond_2f

    iget-boolean v6, v6, LH8/h;->y:Z

    if-eqz v6, :cond_2f

    iget-boolean v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-eqz v6, :cond_2e

    neg-float v1, v1

    :cond_2e
    invoke-virtual {v8, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setExpandedDelta(F)V

    :cond_2f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v29

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v30

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v24

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v9, v23

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    move/from16 v13, v25

    invoke-static {v6, v1, v8, v13, v7}, LF1/K2;->d(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    move/from16 v1, v31

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    new-array v1, v13, [Ljava/lang/Object;

    move-object/from16 v7, v17

    invoke-static {v7, v6, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_30
    move-object/from16 v28, v1

    move-object v2, v6

    move-object/from16 v32, v7

    move-object/from16 v7, v17

    move-object/from16 v9, v23

    move/from16 v15, v24

    const/4 v1, 0x0

    invoke-virtual {v8, v13, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    move-object/from16 v6, v27

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :cond_31
    move-object/from16 v28, v1

    move-object v2, v6

    move-object/from16 v19, v7

    goto/16 :goto_16

    :goto_1b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v27, v6

    move-object/from16 v17, v7

    move-object/from16 v7, v19

    move-object/from16 v13, v20

    move-object/from16 v1, v28

    move-object v6, v2

    move-object/from16 v2, v18

    goto/16 :goto_15

    :cond_32
    move-object/from16 v28, v1

    move-object/from16 v7, v17

    move-object/from16 v6, v27

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz v1, :cond_33

    iget-boolean v1, v1, LH8/h;->y:Z

    if-eqz v1, :cond_33

    move-object/from16 v3, v28

    goto/16 :goto_28

    :cond_33
    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v2, v1

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v2, v2, v21

    move-object/from16 v3, v28

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float v4, v4, v21

    invoke-static {v1, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->j([F[F)F

    move-result v1

    iget-object v5, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    invoke-static {v5, v1}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v1

    const/4 v5, 0x0

    :goto_1c
    iget-object v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v9, v8

    if-ge v5, v9, :cond_43

    aget v8, v8, v5

    invoke-static {v3, v8}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v8

    if-gez v8, :cond_42

    if-ge v5, v1, :cond_3a

    iget-object v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    const/4 v9, 0x1

    add-int/lit8 v10, v5, 0x1

    aget v8, v8, v10

    invoke-static {v3, v8}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v8

    sub-int/2addr v8, v9

    if-ltz v8, :cond_38

    iget-boolean v10, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v10, :cond_34

    iget-object v10, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v10, v10

    sub-int/2addr v10, v9

    sub-int/2addr v10, v5

    goto :goto_1d

    :cond_34
    move v10, v5

    :goto_1d
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v11, :cond_37

    check-cast v10, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    aget v11, v3, v8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    invoke-virtual {v10, v9}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setConverted(Z)V

    int-to-float v9, v5

    sub-float/2addr v9, v2

    int-to-float v11, v8

    sub-float/2addr v11, v4

    sub-float/2addr v11, v9

    iget-boolean v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez v9, :cond_35

    iget-boolean v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v9, :cond_36

    :cond_35
    neg-float v11, v11

    :cond_36
    invoke-virtual {v10, v11}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTranslationUnit(F)V

    iget-object v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    aget v8, v3, v8

    aput v8, v9, v5

    const/16 v8, 0x8

    invoke-virtual {v10, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v16, 0x1

    goto :goto_20

    :cond_37
    move/from16 v17, v1

    move/from16 v16, v9

    :goto_1e
    const/16 v1, 0x8

    goto/16 :goto_27

    :cond_38
    iget-boolean v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v8, :cond_39

    iget-object v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v8, v8

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v5

    goto :goto_1f

    :cond_39
    const/16 v16, 0x1

    move v8, v5

    :goto_1f
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_20
    move/from16 v17, v1

    goto :goto_1e

    :cond_3a
    const/16 v16, 0x1

    if-le v5, v1, :cond_42

    iget-object v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    invoke-static {v3, v8}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v8

    if-ltz v8, :cond_42

    iget-boolean v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v9, :cond_3b

    iget-object v9, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v5

    goto :goto_21

    :cond_3b
    move v9, v5

    :goto_21
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v11, :cond_42

    check-cast v10, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    add-int/lit8 v8, v8, 0x1

    aget v11, v3, v8

    const/4 v12, 0x0

    :goto_22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v12, v13, :cond_3f

    if-eq v12, v9, :cond_3e

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    instance-of v14, v13, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v14, :cond_3e

    check-cast v13, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    move/from16 v17, v1

    const/16 v1, 0x8

    if-ne v14, v1, :cond_3d

    :cond_3c
    :goto_23
    const/4 v1, 0x1

    goto :goto_26

    :cond_3d
    invoke-virtual {v13}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v1

    cmpl-float v1, v1, v11

    if-nez v1, :cond_3c

    :goto_24
    const/16 v1, 0x8

    :goto_25
    const/16 v16, 0x1

    goto :goto_27

    :cond_3e
    move/from16 v17, v1

    goto :goto_23

    :goto_26
    add-int/2addr v12, v1

    move/from16 v1, v17

    goto :goto_22

    :cond_3f
    move/from16 v17, v1

    const/4 v1, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    invoke-virtual {v10, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setConverted(Z)V

    int-to-float v1, v5

    sub-float/2addr v1, v2

    int-to-float v8, v8

    sub-float/2addr v8, v4

    sub-float/2addr v8, v1

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    if-nez v1, :cond_40

    iget-boolean v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v1, :cond_41

    :cond_40
    neg-float v8, v8

    :cond_41
    invoke-virtual {v10, v8}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setTranslationUnit(F)V

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    aput v11, v1, v5

    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setFilterType(I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_42
    move/from16 v17, v1

    goto :goto_24

    :goto_27
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v17

    goto/16 :goto_1c

    :cond_43
    :goto_28
    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->P()V

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    const/4 v6, 0x0

    :goto_29
    array-length v2, v3

    if-ge v6, v2, :cond_45

    aget v2, v3, v6

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    if-gez v2, :cond_44

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object v2, v3

    move v3, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->i([F[FFLandroid/widget/FrameLayout;ZI)V

    move/from16 v24, v3

    move-object v15, v4

    :goto_2a
    const/4 v9, 0x1

    goto :goto_2b

    :cond_44
    move/from16 v5, p2

    move-object v2, v3

    move/from16 v24, v15

    move-object/from16 v15, p1

    goto :goto_2a

    :goto_2b
    add-int/2addr v6, v9

    move-object v3, v2

    move-object/from16 p1, v15

    move/from16 v15, v24

    goto :goto_29

    :cond_45
    move-object/from16 v15, p1

    move/from16 v5, p2

    move-object v2, v3

    const/4 v9, 0x1

    invoke-direct {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getVisibleCount()I

    move-result v1

    if-ne v1, v9, :cond_49

    iget v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-nez v1, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setupSwitchModuleAnimationForExpand: child is null, index="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", childCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v7, v1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c

    :cond_46
    const/4 v12, 0x0

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    const/4 v6, 0x3

    invoke-virtual {v1, v6, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->h(II)V

    iput-boolean v12, v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;->r0:Z

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    invoke-virtual {v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_47

    invoke-virtual {v1, v12, v12}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    iput-boolean v12, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->t0:Z

    goto :goto_2c

    :cond_47
    const/4 v9, 0x1

    invoke-virtual {v1, v9, v12}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->k(ZZ)V

    goto :goto_2c

    :cond_48
    move-object/from16 v15, p1

    move/from16 v5, p2

    move-object v2, v1

    move/from16 v22, v12

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->R([F[F)V

    :cond_49
    :goto_2c
    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v3, v2

    move/from16 v12, v22

    if-ne v12, v3, :cond_4a

    const/4 v3, 0x1

    goto :goto_2d

    :cond_4a
    const/4 v3, 0x0

    :goto_2d
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p([F[FZZ)I

    move-result v4

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    move v3, v5

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q([F[FZIZ)V

    move v5, v3

    iget-object v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    move-object/from16 v6, p5

    invoke-virtual {v3, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/v0;

    if-eqz v3, :cond_4b

    iget v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    invoke-virtual {v3, v6}, Lv2/v0;->x(I)Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3}, Lu2/Q;->M()Z

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v3, 0x1

    goto :goto_2e

    :cond_4b
    const/4 v3, 0x0

    :goto_2e
    iget-object v7, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p0:Ljava/util/ArrayList;

    if-nez p3, :cond_4c

    if-eqz v3, :cond_4f

    :cond_4c
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m([F[FZ)I

    move-result v1

    if-ltz v1, :cond_50

    iget-boolean v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v3, :cond_4d

    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->Q:[F

    array-length v3, v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    sub-int v1, v3, v1

    :cond_4d
    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-boolean v6, v3, LH8/h;->y:Z

    if-nez v6, :cond_4e

    invoke-virtual {v3, v1}, LH8/h;->d(I)I

    move-result v1

    :cond_4e
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v3, :cond_4f

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    const/4 v12, 0x0

    invoke-virtual {v1, v3, v12}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    :cond_4f
    move/from16 v3, p3

    move-object v1, v2

    move v6, v4

    move v2, v5

    move-object v5, v15

    move/from16 v4, p4

    goto :goto_30

    :cond_50
    iget v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->q:I

    iget v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    iget-boolean v6, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    invoke-static {v6, v5, v3, v1}, Lcom/android/camera/data/data/j;->I(ZZFI)I

    move-result v1

    iget-boolean v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-eqz v3, :cond_51

    array-length v3, v2

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    sub-int v1, v3, v1

    :cond_51
    aget v1, v2, v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    instance-of v8, v6, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz v8, :cond_52

    check-cast v6, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v6}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->getZoomRatio()F

    move-result v8

    cmpl-float v8, v1, v8

    if-nez v8, :cond_52

    iget v8, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->p:F

    const/4 v12, 0x0

    invoke-virtual {v6, v8, v12}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->i(FZ)V

    goto :goto_2f

    :cond_52
    const/4 v12, 0x0

    goto :goto_2f

    :goto_30
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->U([FZZZLandroid/widget/FrameLayout;I)V

    move v4, v6

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v5

    long-to-float v3, v5

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v5

    float-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v5

    long-to-float v3, v5

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v5

    float-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_31

    :cond_53
    iget v1, v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b0(II)V

    return-void
.end method

.method public final v(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {p1}, Lvr/b0;->b(Landroid/content/Context;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a:Z

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lxx/d;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->c:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, LK2/b;->a0()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0714d9

    goto :goto_0

    :cond_1
    const v1, 0x7f071af3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->T:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v1, Lo9/a;->a:Lo9/b;

    invoke-interface {v1}, Lo9/b;->b()Lp9/K;

    move-result-object v1

    invoke-interface {v1}, Lp9/K;->h()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->U:I

    invoke-static {}, LK2/b;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070683

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f071af0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->S:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->V()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->c0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, Lf2/b;->b()Z

    move-result p1

    sget-object v1, Lf2/e;->c:Lf2/e;

    const v2, 0x7f060c17

    invoke-virtual {v1, v2, p1}, Lf2/e;->a(IZ)I

    move-result p1

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->c0:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->J:Landroid/animation/AnimatorSet;

    new-instance v1, LLy/g;

    invoke-direct {v1}, LLy/g;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->J:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v2, "integrated"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {p1, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const v3, 0x3f19999a    # 0.6f

    invoke-static {v3, p1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    invoke-static {v1, p1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p1

    filled-new-array {v2, v3, p1}, [Landroid/animation/Keyframe;

    move-result-object p1

    const-string v1, "alphaOut"

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    filled-new-array {v0, p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->m0:Landroid/animation/ValueAnimator;

    invoke-static {p0}, LCb/p;->d(Landroid/animation/ValueAnimator;)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final w(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$f;)V
    .locals 8

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/v0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/v0;

    iget-boolean v0, v0, Lv2/v0;->k:Z

    if-eqz v0, :cond_3

    iget-boolean p1, p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$f;->b:Z

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    new-instance p1, LH8/h;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput v0, p1, LH8/h;->m:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, LH8/h;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, LH8/h;->k()V

    iget v1, p1, LH8/h;->q:I

    iput v1, p1, LH8/h;->r:I

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LH8/h;->k()V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-static {}, Lf2/b;->b()Z

    move-result v3

    iget-boolean p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->b:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p1, LH8/h;->a:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p1, LH8/h;->a:Landroid/graphics/Paint;

    sget-object v7, Lo9/a;->a:Lo9/b;

    invoke-interface {v7}, Lo9/b;->b()Lp9/K;

    move-result-object v7

    invoke-interface {v7, v3}, Lp9/K;->d(Z)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p1, LH8/h;->a:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    iput v3, p1, LH8/h;->f:I

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p1, LH8/h;->b:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p1, LH8/h;->b:Landroid/graphics/Paint;

    const v4, 0x7f060026

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p1, LH8/h;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    iput v3, p1, LH8/h;->g:I

    const v3, 0x7f070268

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p1, LH8/h;->b:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p1, LH8/h;->c:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p1, LH8/h;->c:Landroid/graphics/Paint;

    const v4, 0x7f060be7

    invoke-virtual {v1, v4, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p1, LH8/h;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    iput v3, p1, LH8/h;->h:I

    const v3, 0x7f071b14

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p1, LH8/h;->d:I

    const v3, 0x7f071b13

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p1, LH8/h;->e:F

    iget v3, p1, LH8/h;->d:I

    int-to-float v3, v3

    iput v3, p1, LH8/h;->k:F

    invoke-virtual {p1, v2}, LH8/h;->m(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput v0, p1, LH8/h;->m:F

    iput-boolean p0, p1, LH8/h;->B:Z

    const p0, 0x7f071af1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, LH8/h;->t:I

    return-void

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    if-eqz p0, :cond_4

    iget-boolean p1, p0, LH8/h;->z:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, LH8/h;->z:Z

    :cond_4
    return-void
.end method

.method public final x()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-boolean p0, p0, LH8/h;->x:Z

    return p0
.end method

.method public final y()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    iget-object v2, v0, LH8/h;->n:[I

    const-string v3, "OpticalZoomConfig"

    if-nez v2, :cond_0

    const-string p0, "isNeedDrawOpticalLine: mOpticalLineZoomToggleIndexes is null"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    array-length v2, v2

    if-nez v2, :cond_1

    const-string p0, "isNeedDrawOpticalLine: mOpticalLineZoomToggleIndexes is empty"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-boolean v2, v0, LH8/h;->y:Z

    if-nez v2, :cond_2

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->o:I

    invoke-virtual {v0, p0}, LH8/h;->m(I)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final z(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->d0:LH8/h;

    invoke-virtual {p0, p1}, LH8/h;->m(I)Z

    move-result p0

    return p0
.end method
