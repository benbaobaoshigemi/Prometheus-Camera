.class public final Lv8/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv8/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/RectF;

.field public final f:Landroid/graphics/RectF;

.field public final g:Landroid/graphics/RectF;

.field public final h:Landroid/graphics/Matrix;

.field public final i:Lv8/b$a;

.field public final j:F

.field public final k:F

.field public final l:F

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lv8/b;->g:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071828

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lv8/b;->b(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071829

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lv8/b;->b(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07182a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lv8/b;->b(F)F

    move-result v2

    iput v2, p0, Lv8/b;->j:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07182b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lv8/b;->b(F)F

    move-result v2

    iput v2, p0, Lv8/b;->k:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f071827

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lv8/b;->b(F)F

    move-result p1

    iput p1, p0, Lv8/b;->l:F

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lv8/b;->a:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lv8/b;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v2, "#26000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lv8/b;->c:Landroid/graphics/Paint;

    const/high16 p1, 0x40000000    # 2.0f

    add-float/2addr v1, p1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v1, Lv8/b$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lv8/b;->i:Lv8/b$a;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lv8/b;->e:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lv8/b;->d:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    neg-float v2, v0

    div-float/2addr v2, p1

    div-float/2addr v0, p1

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lv8/b;->f:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lv8/b;->h:Landroid/graphics/Matrix;

    return-void
.end method

.method public static b(F)F
    .locals 1

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3eb404ea    # 0.3516f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    mul-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, p2, v1, v1, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v1

    neg-float v4, p3

    div-float/2addr v4, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    neg-float v5, v5

    div-float/2addr v5, v1

    div-float v6, p3, v1

    iget-object v7, p0, Lv8/b;->c:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v3, v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v5, v0, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    neg-float v0, p4

    div-float v3, v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    neg-float v0, v0

    div-float v4, v0, v1

    div-float v5, p4, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    neg-float v0, v0

    div-float v6, v0, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v4, v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v6, v0, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v6, v0, Lv8/b;->i:Lv8/b$a;

    iget v2, v6, Lv8/b$a;->b:I

    iget v3, v6, Lv8/b$a;->c:I

    mul-int/2addr v2, v3

    iget-object v3, v6, Lv8/b$a;->a:[B

    array-length v3, v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gt v2, v3, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    const-string v3, "TrackSaliencyDrawable"

    if-nez v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saliency info is invalid : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lv8/b;->m:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "draw: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lv8/b;->e:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v9, v6, Lv8/b$a;->c:I

    iget v10, v6, Lv8/b$a;->b:I

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    neg-int v3, v9

    int-to-float v3, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v3, v11

    iget v12, v0, Lv8/b;->j:F

    mul-float/2addr v3, v12

    add-float v13, v3, v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    neg-int v3, v10

    int-to-float v3, v3

    div-float/2addr v3, v11

    mul-float/2addr v3, v12

    add-float v14, v3, v2

    iget-object v2, v0, Lv8/b;->g:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v15

    move v2, v8

    :goto_1
    if-ge v2, v9, :cond_4

    move v3, v8

    :goto_2
    if-ge v3, v10, :cond_3

    iget-object v4, v6, Lv8/b$a;->a:[B

    mul-int v5, v9, v2

    add-int/2addr v5, v3

    aget-byte v4, v4, v5

    if-ne v4, v7, :cond_2

    iget-object v4, v0, Lv8/b;->h:Landroid/graphics/Matrix;

    div-float v5, v12, v11

    add-float v16, v5, v13

    int-to-float v7, v2

    mul-float/2addr v7, v12

    add-float v7, v7, v16

    add-float/2addr v5, v14

    int-to-float v8, v3

    mul-float/2addr v8, v12

    add-float/2addr v8, v5

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    move v8, v2

    iget-object v2, v0, Lv8/b;->f:Landroid/graphics/RectF;

    iget-object v5, v0, Lv8/b;->a:Landroid/graphics/Paint;

    move v7, v3

    iget v3, v0, Lv8/b;->k:F

    move-object/from16 v17, v4

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lv8/b;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lv8/b;->k:F

    iget v3, v0, Lv8/b;->l:F

    sub-float v3, v1, v3

    iget-object v5, v0, Lv8/b;->b:Landroid/graphics/Paint;

    move v4, v3

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lv8/b;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Matrix;->reset()V

    goto :goto_3

    :cond_2
    move v8, v2

    move v7, v3

    :goto_3
    add-int/lit8 v3, v7, 0x1

    move v2, v8

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    goto :goto_2

    :cond_3
    move v8, v2

    add-int/lit8 v2, v8, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    return-void
.end method

.method public final getOpacity()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method
