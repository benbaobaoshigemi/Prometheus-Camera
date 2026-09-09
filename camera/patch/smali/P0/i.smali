.class public final LP0/i;
.super LP0/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LP0/i$b;,
        LP0/i$a;,
        LP0/i$e;,
        LP0/i$c;,
        LP0/i$d;,
        LP0/i$f;,
        LP0/i$g;,
        LP0/i$h;
    }
.end annotation


# static fields
.field public static final j:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public b:LP0/i$g;

.field public c:Landroid/graphics/PorterDuffColorFilter;

.field public d:Landroid/graphics/ColorFilter;

.field public e:Z

.field public f:Z

.field public final g:[F

.field public final h:Landroid/graphics/Matrix;

.field public final i:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, LP0/i;->j:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LP0/i;->f:Z

    const/16 v0, 0x9

    .line 3
    new-array v0, v0, [F

    iput-object v0, p0, LP0/i;->g:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LP0/i;->h:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LP0/i;->i:Landroid/graphics/Rect;

    .line 6
    new-instance v0, LP0/i$g;

    .line 7
    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, LP0/i$g;->c:Landroid/content/res/ColorStateList;

    .line 9
    sget-object v1, LP0/i;->j:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, v0, LP0/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 10
    new-instance v1, LP0/i$f;

    invoke-direct {v1}, LP0/i$f;-><init>()V

    iput-object v1, v0, LP0/i$g;->b:LP0/i$f;

    .line 11
    iput-object v0, p0, LP0/i;->b:LP0/i$g;

    return-void
.end method

.method public constructor <init>(LP0/i$g;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, LP0/i;->f:Z

    const/16 v0, 0x9

    .line 14
    new-array v0, v0, [F

    iput-object v0, p0, LP0/i;->g:[F

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LP0/i;->h:Landroid/graphics/Matrix;

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LP0/i;->i:Landroid/graphics/Rect;

    .line 17
    iput-object p1, p0, LP0/i;->b:LP0/i$g;

    .line 18
    iget-object v0, p1, LP0/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, LP0/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, LP0/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, LP0/i;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LP0/h;->getState()[I

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final canApplyTheme()Z
    .locals 0

    iget-object p0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-static {p0}, La0/a$a;->b(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v2, v0, LP0/i;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_d

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gtz v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v3, v0, LP0/i;->d:Landroid/graphics/ColorFilter;

    if-nez v3, :cond_2

    iget-object v3, v0, LP0/i;->c:Landroid/graphics/PorterDuffColorFilter;

    :cond_2
    iget-object v4, v0, LP0/i;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v5, v0, LP0/i;->g:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v4, 0x0

    aget v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x4

    aget v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/4 v8, 0x1

    aget v9, v5, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/4 v10, 0x3

    aget v5, v5, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    const/high16 v11, 0x3f800000    # 1.0f

    if-nez v9, :cond_3

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_4

    :cond_3
    move v6, v11

    move v7, v6

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/16 v7, 0x800

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lez v5, :cond_d

    if-gtz v6, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v12, v2, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {v1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0}, LP0/i;->isAutoMirrored()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v0}, La0/a$b;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v9

    if-ne v9, v8, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v1, v9, v11}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_6
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v9, v0, LP0/i;->b:LP0/i$g;

    iget-object v10, v9, LP0/i$g;->f:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v5, v10, :cond_7

    iget-object v10, v9, LP0/i$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ne v6, v10, :cond_7

    goto :goto_0

    :cond_7
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v9, LP0/i$g;->f:Landroid/graphics/Bitmap;

    iput-boolean v8, v9, LP0/i$g;->k:Z

    :goto_0
    iget-boolean v9, v0, LP0/i;->f:Z

    if-nez v9, :cond_8

    iget-object v9, v0, LP0/i;->b:LP0/i$g;

    iget-object v10, v9, LP0/i$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v15, Landroid/graphics/Canvas;

    iget-object v4, v9, LP0/i$g;->f:Landroid/graphics/Bitmap;

    invoke-direct {v15, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v12, v9, LP0/i$g;->b:LP0/i$f;

    sget-object v14, LP0/i$f;->p:Landroid/graphics/Matrix;

    iget-object v13, v12, LP0/i$f;->g:LP0/i$c;

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, LP0/i$f;->a(LP0/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    goto :goto_1

    :cond_8
    move/from16 v16, v5

    move/from16 v17, v6

    iget-object v5, v0, LP0/i;->b:LP0/i$g;

    iget-boolean v6, v5, LP0/i$g;->k:Z

    if-nez v6, :cond_9

    iget-object v6, v5, LP0/i$g;->g:Landroid/content/res/ColorStateList;

    iget-object v9, v5, LP0/i$g;->c:Landroid/content/res/ColorStateList;

    if-ne v6, v9, :cond_9

    iget-object v6, v5, LP0/i$g;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v9, v5, LP0/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v6, v9, :cond_9

    iget-boolean v6, v5, LP0/i$g;->j:Z

    iget-boolean v9, v5, LP0/i$g;->e:Z

    if-ne v6, v9, :cond_9

    iget v6, v5, LP0/i$g;->i:I

    iget-object v5, v5, LP0/i$g;->b:LP0/i$f;

    invoke-virtual {v5}, LP0/i$f;->getRootAlpha()I

    move-result v5

    if-ne v6, v5, :cond_9

    goto :goto_1

    :cond_9
    iget-object v5, v0, LP0/i;->b:LP0/i$g;

    iget-object v6, v5, LP0/i$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v15, Landroid/graphics/Canvas;

    iget-object v6, v5, LP0/i$g;->f:Landroid/graphics/Bitmap;

    invoke-direct {v15, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v12, v5, LP0/i$g;->b:LP0/i$f;

    sget-object v14, LP0/i$f;->p:Landroid/graphics/Matrix;

    iget-object v13, v12, LP0/i$f;->g:LP0/i$c;

    invoke-virtual/range {v12 .. v17}, LP0/i$f;->a(LP0/i$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    iget-object v5, v0, LP0/i;->b:LP0/i$g;

    iget-object v6, v5, LP0/i$g;->c:Landroid/content/res/ColorStateList;

    iput-object v6, v5, LP0/i$g;->g:Landroid/content/res/ColorStateList;

    iget-object v6, v5, LP0/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v6, v5, LP0/i$g;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v6, v5, LP0/i$g;->b:LP0/i$f;

    invoke-virtual {v6}, LP0/i$f;->getRootAlpha()I

    move-result v6

    iput v6, v5, LP0/i$g;->i:I

    iget-boolean v6, v5, LP0/i$g;->e:Z

    iput-boolean v6, v5, LP0/i$g;->j:Z

    iput-boolean v4, v5, LP0/i$g;->k:Z

    :goto_1
    iget-object v0, v0, LP0/i;->b:LP0/i$g;

    iget-object v4, v0, LP0/i$g;->b:LP0/i$f;

    invoke-virtual {v4}, LP0/i$f;->getRootAlpha()I

    move-result v4

    const/16 v5, 0xff

    const/4 v6, 0x0

    if-ge v4, v5, :cond_a

    goto :goto_2

    :cond_a
    if-nez v3, :cond_b

    move-object v3, v6

    goto :goto_3

    :cond_b
    :goto_2
    iget-object v4, v0, LP0/i$g;->l:Landroid/graphics/Paint;

    if-nez v4, :cond_c

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, LP0/i$g;->l:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_c
    iget-object v4, v0, LP0/i$g;->l:Landroid/graphics/Paint;

    iget-object v5, v0, LP0/i$g;->b:LP0/i$f;

    invoke-virtual {v5}, LP0/i$f;->getRootAlpha()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, LP0/i$g;->l:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v3, v0, LP0/i$g;->l:Landroid/graphics/Paint;

    :goto_3
    iget-object v0, v0, LP0/i$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v6, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_d
    :goto_4
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, LP0/i;->b:LP0/i$g;

    iget-object p0, p0, LP0/i$g;->b:LP0/i$f;

    invoke-virtual {p0}, LP0/i$f;->getRootAlpha()I

    move-result p0

    return p0
.end method

.method public final getChangingConfigurations()I
    .locals 1

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object p0, p0, LP0/i;->b:LP0/i$g;

    invoke-virtual {p0}, LP0/i$g;->getChangingConfigurations()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, La0/a$a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, LP0/i;->d:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    new-instance v0, LP0/i$h;

    iget-object p0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-direct {v0, p0}, LP0/i$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    iget-object v0, p0, LP0/i;->b:LP0/i$g;

    invoke-virtual {p0}, LP0/i;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, LP0/i$g;->a:I

    iget-object p0, p0, LP0/i;->b:LP0/i$g;

    return-object p0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, LP0/i;->b:LP0/i$g;

    iget-object p0, p0, LP0/i$g;->b:LP0/i$f;

    iget p0, p0, LP0/i$f;->i:F

    float-to-int p0, p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, LP0/i;->b:LP0/i$g;

    iget-object p0, p0, LP0/i$g;->b:LP0/i$f;

    iget p0, p0, LP0/i$f;->h:F

    float-to-int p0, p0

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    iget-object p0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x3

    return p0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, LP0/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 4
    iget-object v0, v1, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0, v2, v3, v4, v5}, La0/a$a;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 6
    :cond_0
    iget-object v6, v1, LP0/i;->b:LP0/i$g;

    .line 7
    new-instance v0, LP0/i$f;

    invoke-direct {v0}, LP0/i$f;-><init>()V

    .line 8
    iput-object v0, v6, LP0/i$g;->b:LP0/i$f;

    .line 9
    sget-object v0, LP0/a;->a:[I

    invoke-static {v2, v5, v4, v0}, LY/j;->d(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 10
    iget-object v8, v1, LP0/i;->b:LP0/i$g;

    .line 11
    iget-object v9, v8, LP0/i$g;->b:LP0/i$f;

    .line 12
    const-string/jumbo v0, "tintMode"

    invoke-static {v3, v0}, LY/j;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x6

    const/4 v11, -0x1

    if-nez v0, :cond_1

    move v0, v11

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 14
    :goto_0
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v13, 0x3

    const/16 v14, 0x9

    const/4 v15, 0x5

    if-eq v0, v13, :cond_3

    if-eq v0, v15, :cond_4

    if-eq v0, v14, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 15
    :pswitch_0
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 16
    :pswitch_1
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 17
    :pswitch_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 18
    :cond_2
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 19
    :cond_3
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 20
    :cond_4
    :goto_1
    iput-object v12, v8, LP0/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 21
    const-string v12, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v0, "tint"

    invoke-interface {v3, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_5

    move v0, v14

    goto :goto_2

    :cond_5
    move v0, v10

    :goto_2
    const/16 v17, 0x0

    const/4 v11, 0x2

    if-eqz v0, :cond_6

    .line 22
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 23
    invoke-virtual {v7, v14, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 24
    iget v13, v0, Landroid/util/TypedValue;->type:I

    if-eq v13, v11, :cond_8

    const/16 v11, 0x1c

    if-lt v13, v11, :cond_7

    const/16 v11, 0x1f

    if-gt v13, v11, :cond_7

    .line 25
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    :cond_6
    :goto_3
    move-object/from16 v0, v17

    goto :goto_4

    .line 26
    :cond_7
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    invoke-virtual {v7, v14, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 28
    sget-object v13, LY/c;->a:Ljava/lang/ThreadLocal;

    .line 29
    :try_start_0
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 30
    invoke-static {v0, v11, v5}, LY/c;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 31
    const-string v11, "CSLCompat"

    const-string v13, "Failed to inflate ColorStateList."

    invoke-static {v11, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 32
    :cond_8
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to resolve attribute at index 1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_4
    if-eqz v0, :cond_9

    .line 33
    iput-object v0, v8, LP0/i$g;->c:Landroid/content/res/ColorStateList;

    .line 34
    :cond_9
    iget-boolean v0, v8, LP0/i$g;->e:Z

    .line 35
    const-string v11, "autoMirrored"

    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 36
    invoke-virtual {v7, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 37
    :cond_a
    iput-boolean v0, v8, LP0/i$g;->e:Z

    .line 38
    iget v0, v9, LP0/i$f;->j:F

    .line 39
    const-string/jumbo v8, "viewportWidth"

    invoke-interface {v3, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    move v8, v14

    goto :goto_5

    :cond_b
    move v8, v10

    :goto_5
    const/4 v11, 0x7

    if-nez v8, :cond_c

    goto :goto_6

    .line 40
    :cond_c
    invoke-virtual {v7, v11, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 41
    :goto_6
    iput v0, v9, LP0/i$f;->j:F

    .line 42
    iget v0, v9, LP0/i$f;->k:F

    .line 43
    const-string/jumbo v8, "viewportHeight"

    invoke-interface {v3, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    move v8, v14

    goto :goto_7

    :cond_d
    move v8, v10

    :goto_7
    const/16 v13, 0x8

    if-nez v8, :cond_e

    goto :goto_8

    .line 44
    :cond_e
    invoke-virtual {v7, v13, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 45
    :goto_8
    iput v0, v9, LP0/i$f;->k:F

    .line 46
    iget v8, v9, LP0/i$f;->j:F

    const/16 v17, 0x0

    cmpg-float v8, v8, v17

    if-lez v8, :cond_3d

    cmpg-float v0, v0, v17

    if-lez v0, :cond_3c

    .line 47
    iget v0, v9, LP0/i$f;->h:F

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v9, LP0/i$f;->h:F

    .line 48
    iget v0, v9, LP0/i$f;->i:F

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v9, LP0/i$f;->i:F

    .line 49
    iget v8, v9, LP0/i$f;->h:F

    cmpg-float v8, v8, v17

    if-lez v8, :cond_3b

    cmpg-float v0, v0, v17

    if-lez v0, :cond_3a

    .line 50
    invoke-virtual {v9}, LP0/i$f;->getAlpha()F

    move-result v0

    .line 51
    const-string v8, "alpha"

    invoke-interface {v3, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    move v8, v14

    goto :goto_9

    :cond_f
    move v8, v10

    :goto_9
    const/4 v15, 0x4

    if-nez v8, :cond_10

    goto :goto_a

    .line 52
    :cond_10
    invoke-virtual {v7, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 53
    :goto_a
    invoke-virtual {v9, v0}, LP0/i$f;->setAlpha(F)V

    .line 54
    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 55
    iput-object v0, v9, LP0/i$f;->m:Ljava/lang/String;

    .line 56
    iget-object v8, v9, LP0/i$f;->o:LJ/a;

    invoke-virtual {v8, v0, v9}, LJ/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_11
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-virtual {v1}, LP0/i;->getChangingConfigurations()I

    move-result v0

    iput v0, v6, LP0/i$g;->a:I

    .line 59
    iput-boolean v14, v6, LP0/i$g;->k:Z

    .line 60
    iget-object v0, v1, LP0/i;->b:LP0/i$g;

    .line 61
    iget-object v7, v0, LP0/i$g;->b:LP0/i$f;

    .line 62
    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 63
    iget-object v9, v7, LP0/i$f;->g:LP0/i$c;

    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 64
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 65
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    add-int/lit8 v11, v19, 0x1

    move/from16 v19, v14

    :goto_b
    if-eq v9, v14, :cond_38

    .line 66
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-ge v15, v11, :cond_12

    const/4 v15, 0x3

    if-eq v9, v15, :cond_38

    .line 67
    :cond_12
    const-string v15, "group"

    const/4 v13, 0x2

    if-ne v9, v13, :cond_36

    .line 68
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LP0/i$c;

    .line 70
    const-string v14, "path"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    iget-object v10, v7, LP0/i$f;->o:LJ/a;

    move-object/from16 v22, v7

    const-string v7, "fillType"

    move/from16 v23, v11

    const-string v11, "pathData"

    if-eqz v14, :cond_27

    .line 71
    new-instance v9, LP0/i$b;

    invoke-direct {v9}, LP0/i$b;-><init>()V

    .line 72
    sget-object v14, LP0/a;->c:[I

    invoke-static {v2, v5, v4, v14}, LY/j;->d(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 73
    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_25

    const/4 v11, 0x0

    .line 74
    invoke-virtual {v14, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_13

    .line 75
    iput-object v15, v9, LP0/i$e;->b:Ljava/lang/String;

    :cond_13
    const/4 v11, 0x2

    .line 76
    invoke-virtual {v14, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_14

    .line 77
    invoke-static {v15}, LZ/f;->b(Ljava/lang/String;)[LZ/f$a;

    move-result-object v11

    iput-object v11, v9, LP0/i$e;->a:[LZ/f$a;

    .line 78
    :cond_14
    const-string v11, "fillColor"

    const/4 v15, 0x1

    invoke-static {v14, v3, v5, v11, v15}, LY/j;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)LY/d;

    move-result-object v11

    iput-object v11, v9, LP0/i$b;->f:LY/d;

    .line 79
    iget v11, v9, LP0/i$b;->h:F

    .line 80
    const-string v15, "fillAlpha"

    invoke-interface {v3, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_15

    const/16 v15, 0xc

    .line 81
    invoke-virtual {v14, v15, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 82
    :cond_15
    iput v11, v9, LP0/i$b;->h:F

    .line 83
    const-string/jumbo v11, "strokeLineCap"

    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_16

    const/4 v11, -0x1

    const/16 v15, 0x8

    .line 84
    invoke-virtual {v14, v15, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    move/from16 v11, v19

    goto :goto_c

    :cond_16
    const/4 v11, -0x1

    .line 85
    :goto_c
    iget-object v15, v9, LP0/i$b;->l:Landroid/graphics/Paint$Cap;

    if-eqz v11, :cond_19

    move-object/from16 v19, v15

    const/4 v15, 0x1

    if-eq v11, v15, :cond_18

    const/4 v15, 0x2

    if-eq v11, v15, :cond_17

    move-object/from16 v15, v19

    goto :goto_d

    .line 86
    :cond_17
    sget-object v15, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_d

    .line 87
    :cond_18
    sget-object v15, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_d

    .line 88
    :cond_19
    sget-object v15, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 89
    :goto_d
    iput-object v15, v9, LP0/i$b;->l:Landroid/graphics/Paint$Cap;

    .line 90
    const-string/jumbo v11, "strokeLineJoin"

    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1a

    const/4 v11, -0x1

    const/16 v15, 0x9

    .line 91
    invoke-virtual {v14, v15, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v11, v16

    goto :goto_e

    :cond_1a
    const/4 v11, -0x1

    .line 92
    :goto_e
    iget-object v15, v9, LP0/i$b;->m:Landroid/graphics/Paint$Join;

    if-eqz v11, :cond_1d

    move-object/from16 v19, v15

    const/4 v15, 0x1

    if-eq v11, v15, :cond_1c

    const/4 v15, 0x2

    if-eq v11, v15, :cond_1b

    move-object/from16 v15, v19

    goto :goto_f

    .line 93
    :cond_1b
    sget-object v15, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_f

    .line 94
    :cond_1c
    sget-object v15, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_f

    .line 95
    :cond_1d
    sget-object v15, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 96
    :goto_f
    iput-object v15, v9, LP0/i$b;->m:Landroid/graphics/Paint$Join;

    .line 97
    iget v11, v9, LP0/i$b;->n:F

    .line 98
    const-string/jumbo v15, "strokeMiterLimit"

    invoke-interface {v3, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1e

    const/16 v15, 0xa

    .line 99
    invoke-virtual {v14, v15, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 100
    :cond_1e
    iput v11, v9, LP0/i$b;->n:F

    .line 101
    const-string/jumbo v11, "strokeColor"

    const/4 v15, 0x3

    invoke-static {v14, v3, v5, v11, v15}, LY/j;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)LY/d;

    move-result-object v11

    iput-object v11, v9, LP0/i$b;->d:LY/d;

    .line 102
    iget v11, v9, LP0/i$b;->g:F

    .line 103
    const-string/jumbo v15, "strokeAlpha"

    invoke-interface {v3, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1f

    const/16 v15, 0xb

    .line 104
    invoke-virtual {v14, v15, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 105
    :cond_1f
    iput v11, v9, LP0/i$b;->g:F

    .line 106
    iget v11, v9, LP0/i$b;->e:F

    .line 107
    const-string/jumbo v15, "strokeWidth"

    invoke-interface {v3, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_20

    const/4 v15, 0x4

    .line 108
    invoke-virtual {v14, v15, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 109
    :cond_20
    iput v11, v9, LP0/i$b;->e:F

    .line 110
    iget v11, v9, LP0/i$b;->j:F

    .line 111
    const-string/jumbo v15, "trimPathEnd"

    invoke-interface {v3, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_21

    const/4 v15, 0x6

    .line 112
    invoke-virtual {v14, v15, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 113
    :cond_21
    iput v11, v9, LP0/i$b;->j:F

    .line 114
    iget v11, v9, LP0/i$b;->k:F

    .line 115
    const-string/jumbo v15, "trimPathOffset"

    invoke-interface {v3, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_22

    const/4 v15, 0x7

    .line 116
    invoke-virtual {v14, v15, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 117
    :cond_22
    iput v11, v9, LP0/i$b;->k:F

    .line 118
    iget v11, v9, LP0/i$b;->i:F

    .line 119
    const-string/jumbo v15, "trimPathStart"

    invoke-interface {v3, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_23

    const/4 v15, 0x5

    .line 120
    invoke-virtual {v14, v15, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 121
    :cond_23
    iput v11, v9, LP0/i$b;->i:F

    .line 122
    iget v11, v9, LP0/i$e;->c:I

    .line 123
    invoke-interface {v3, v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_24

    const/16 v7, 0xd

    .line 124
    invoke-virtual {v14, v7, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 125
    :cond_24
    iput v11, v9, LP0/i$e;->c:I

    .line 126
    :cond_25
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    iget-object v7, v13, LP0/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v9}, LP0/i$e;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_26

    .line 129
    invoke-virtual {v9}, LP0/i$e;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7, v9}, LJ/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_26
    iget v7, v0, LP0/i$g;->a:I

    iput v7, v0, LP0/i$g;->a:I

    const/4 v11, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x9

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x8

    goto/16 :goto_15

    :cond_27
    const/16 v16, 0x9

    const/16 v18, -0x1

    const/16 v20, 0x8

    .line 131
    const-string v14, "clip-path"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 132
    new-instance v9, LP0/i$a;

    invoke-direct {v9}, LP0/i$a;-><init>()V

    .line 133
    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2b

    .line 134
    sget-object v11, LP0/a;->d:[I

    invoke-static {v2, v5, v4, v11}, LY/j;->d(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    const/4 v14, 0x0

    .line 135
    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_28

    .line 136
    iput-object v15, v9, LP0/i$e;->b:Ljava/lang/String;

    :cond_28
    const/4 v15, 0x1

    .line 137
    invoke-virtual {v11, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_29

    .line 138
    invoke-static {v14}, LZ/f;->b(Ljava/lang/String;)[LZ/f$a;

    move-result-object v14

    iput-object v14, v9, LP0/i$e;->a:[LZ/f$a;

    .line 139
    :cond_29
    invoke-static {v3, v7}, LY/j;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2a

    const/4 v7, 0x0

    goto :goto_10

    :cond_2a
    const/4 v14, 0x0

    const/4 v15, 0x2

    .line 140
    invoke-virtual {v11, v15, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 141
    :goto_10
    iput v7, v9, LP0/i$e;->c:I

    .line 142
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    :cond_2b
    iget-object v7, v13, LP0/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v9}, LP0/i$e;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2c

    .line 145
    invoke-virtual {v9}, LP0/i$e;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7, v9}, LJ/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_2c
    iget v7, v0, LP0/i$g;->a:I

    iput v7, v0, LP0/i$g;->a:I

    :cond_2d
    const/4 v11, 0x0

    const/4 v15, 0x1

    goto/16 :goto_15

    .line 147
    :cond_2e
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 148
    new-instance v7, LP0/i$c;

    invoke-direct {v7}, LP0/i$c;-><init>()V

    .line 149
    sget-object v9, LP0/a;->b:[I

    invoke-static {v2, v5, v4, v9}, LY/j;->d(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 150
    iget v11, v7, LP0/i$c;->c:F

    .line 151
    const-string/jumbo v14, "rotation"

    invoke-static {v3, v14}, LY/j;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2f

    const/4 v14, 0x5

    goto :goto_11

    :cond_2f
    const/4 v14, 0x5

    .line 152
    invoke-virtual {v9, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 153
    :goto_11
    iput v11, v7, LP0/i$c;->c:F

    .line 154
    iget v11, v7, LP0/i$c;->d:F

    const/4 v15, 0x1

    invoke-virtual {v9, v15, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    iput v11, v7, LP0/i$c;->d:F

    .line 155
    iget v11, v7, LP0/i$c;->e:F

    const/4 v14, 0x2

    invoke-virtual {v9, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    iput v11, v7, LP0/i$c;->e:F

    .line 156
    iget v11, v7, LP0/i$c;->f:F

    .line 157
    const-string/jumbo v14, "scaleX"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_30

    const/4 v14, 0x3

    .line 158
    invoke-virtual {v9, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 159
    :cond_30
    iput v11, v7, LP0/i$c;->f:F

    .line 160
    iget v11, v7, LP0/i$c;->g:F

    .line 161
    const-string/jumbo v14, "scaleY"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_31

    const/4 v14, 0x4

    .line 162
    invoke-virtual {v9, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    goto :goto_12

    :cond_31
    const/4 v14, 0x4

    .line 163
    :goto_12
    iput v11, v7, LP0/i$c;->g:F

    .line 164
    iget v11, v7, LP0/i$c;->h:F

    .line 165
    const-string/jumbo v14, "translateX"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_32

    const/4 v14, 0x6

    .line 166
    invoke-virtual {v9, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    goto :goto_13

    :cond_32
    const/4 v14, 0x6

    .line 167
    :goto_13
    iput v11, v7, LP0/i$c;->h:F

    .line 168
    iget v11, v7, LP0/i$c;->i:F

    .line 169
    const-string/jumbo v14, "translateY"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_33

    const/4 v14, 0x7

    .line 170
    invoke-virtual {v9, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    goto :goto_14

    :cond_33
    const/4 v14, 0x7

    .line 171
    :goto_14
    iput v11, v7, LP0/i$c;->i:F

    const/4 v11, 0x0

    .line 172
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_34

    .line 173
    iput-object v14, v7, LP0/i$c;->k:Ljava/lang/String;

    .line 174
    :cond_34
    invoke-virtual {v7}, LP0/i$c;->c()V

    .line 175
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    iget-object v9, v13, LP0/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v8, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v7}, LP0/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_35

    .line 179
    invoke-virtual {v7}, LP0/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9, v7}, LJ/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_35
    iget v7, v0, LP0/i$g;->a:I

    iput v7, v0, LP0/i$g;->a:I

    :goto_15
    move/from16 v21, v15

    const/4 v14, 0x3

    goto :goto_16

    :cond_36
    move-object/from16 v22, v7

    move/from16 v23, v11

    move/from16 v21, v14

    const/4 v14, 0x3

    const/16 v16, 0x9

    const/16 v18, -0x1

    const/16 v20, 0x8

    move v11, v10

    if-ne v9, v14, :cond_37

    .line 181
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 182
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 183
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 184
    :cond_37
    :goto_16
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v10, v11

    move/from16 v13, v20

    move/from16 v14, v21

    move-object/from16 v7, v22

    move/from16 v11, v23

    const/4 v15, 0x4

    goto/16 :goto_b

    :cond_38
    if-nez v19, :cond_39

    .line 185
    iget-object v0, v6, LP0/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v6, LP0/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, LP0/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, v1, LP0/i;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void

    .line 186
    :cond_39
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "no path defined"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_3a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires height > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_3b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires width > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_3c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .locals 1

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, LP0/i;->b:LP0/i$g;

    iget-boolean p0, p0, LP0/i$g;->e:Z

    return p0
.end method

.method public final isStateful()Z
    .locals 2

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LP0/i;->b:LP0/i$g;

    if-eqz v0, :cond_2

    iget-object v0, v0, LP0/i$g;->b:LP0/i$f;

    iget-object v1, v0, LP0/i$f;->n:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    iget-object v1, v0, LP0/i$f;->g:LP0/i$c;

    invoke-virtual {v1}, LP0/i$c;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, LP0/i$f;->n:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, v0, LP0/i$f;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, LP0/i;->b:LP0/i$g;

    iget-object p0, p0, LP0/i$g;->c:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    iget-boolean v0, p0, LP0/i;->e:Z

    if-nez v0, :cond_4

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_4

    new-instance v0, LP0/i$g;

    iget-object v1, p0, LP0/i;->b:LP0/i$g;

    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, LP0/i$g;->c:Landroid/content/res/ColorStateList;

    sget-object v2, LP0/i;->j:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, v0, LP0/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_3

    iget v2, v1, LP0/i$g;->a:I

    iput v2, v0, LP0/i$g;->a:I

    new-instance v2, LP0/i$f;

    iget-object v3, v1, LP0/i$g;->b:LP0/i$f;

    invoke-direct {v2, v3}, LP0/i$f;-><init>(LP0/i$f;)V

    iput-object v2, v0, LP0/i$g;->b:LP0/i$f;

    iget-object v3, v1, LP0/i$g;->b:LP0/i$f;

    iget-object v3, v3, LP0/i$f;->e:Landroid/graphics/Paint;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, v1, LP0/i$g;->b:LP0/i$f;

    iget-object v4, v4, LP0/i$f;->e:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, v2, LP0/i$f;->e:Landroid/graphics/Paint;

    :cond_1
    iget-object v2, v1, LP0/i$g;->b:LP0/i$f;

    iget-object v2, v2, LP0/i$f;->d:Landroid/graphics/Paint;

    if-eqz v2, :cond_2

    iget-object v2, v0, LP0/i$g;->b:LP0/i$f;

    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, v1, LP0/i$g;->b:LP0/i$f;

    iget-object v4, v4, LP0/i$f;->d:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, v2, LP0/i$f;->d:Landroid/graphics/Paint;

    :cond_2
    iget-object v2, v1, LP0/i$g;->c:Landroid/content/res/ColorStateList;

    iput-object v2, v0, LP0/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v1, LP0/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, v0, LP0/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v1, v1, LP0/i$g;->e:Z

    iput-boolean v1, v0, LP0/i$g;->e:Z

    :cond_3
    iput-object v0, p0, LP0/i;->b:LP0/i$g;

    const/4 v0, 0x1

    iput-boolean v0, p0, LP0/i;->e:Z

    :cond_4
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 5

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, LP0/i;->b:LP0/i$g;

    iget-object v1, v0, LP0/i$g;->c:Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, v0, LP0/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, v3}, LP0/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, LP0/i;->c:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, LP0/i;->invalidateSelf()V

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, v0, LP0/i$g;->b:LP0/i$f;

    iget-object v4, v3, LP0/i$f;->n:Ljava/lang/Boolean;

    if-nez v4, :cond_2

    iget-object v4, v3, LP0/i$f;->g:LP0/i$c;

    invoke-virtual {v4}, LP0/i$c;->a()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, LP0/i$f;->n:Ljava/lang/Boolean;

    :cond_2
    iget-object v3, v3, LP0/i$f;->n:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, LP0/i$g;->b:LP0/i$f;

    iget-object v3, v3, LP0/i$f;->g:LP0/i$c;

    invoke-virtual {v3, p1}, LP0/i$c;->b([I)Z

    move-result p1

    iget-boolean v3, v0, LP0/i$g;->k:Z

    or-int/2addr v3, p1

    iput-boolean v3, v0, LP0/i$g;->k:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, LP0/i;->invalidateSelf()V

    return v2

    :cond_3
    return v1
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object v0, p0, LP0/i;->b:LP0/i$g;

    iget-object v0, v0, LP0/i$g;->b:LP0/i$f;

    invoke-virtual {v0}, LP0/i$f;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, LP0/i;->b:LP0/i$g;

    iget-object v0, v0, LP0/i$g;->b:LP0/i$f;

    invoke-virtual {v0, p1}, LP0/i$f;->setRootAlpha(I)V

    invoke-virtual {p0}, LP0/i;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    :cond_0
    iget-object p0, p0, LP0/i;->b:LP0/i$g;

    iput-boolean p1, p0, LP0/i$g;->e:Z

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iput-object p1, p0, LP0/i;->d:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, LP0/i;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 1

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, La0/a;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, LP0/i;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, La0/a$a;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, LP0/i;->b:LP0/i$g;

    iget-object v1, v0, LP0/i$g;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, LP0/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, LP0/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, LP0/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, LP0/i;->c:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, LP0/i;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, La0/a$a;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    iget-object v0, p0, LP0/i;->b:LP0/i$g;

    iget-object v1, v0, LP0/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, LP0/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, v0, LP0/i$g;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, LP0/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, LP0/i;->c:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, LP0/i;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, LP0/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
