.class public final LR/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:[LR/k;

.field public B:I

.field public C:I

.field public D:Landroid/view/View;

.field public E:I

.field public F:F

.field public G:Landroid/view/animation/Interpolator;

.field public H:Z

.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/view/View;

.field public final c:I

.field public d:Z

.field public e:I

.field public final f:LR/r;

.field public final g:LR/r;

.field public final h:LR/l;

.field public final i:LR/l;

.field public j:[LN/b;

.field public k:LN/a;

.field public l:F

.field public m:F

.field public n:F

.field public o:[I

.field public p:[D

.field public q:[D

.field public r:[Ljava/lang/String;

.field public s:[I

.field public final t:[F

.field public final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LR/r;",
            ">;"
        }
    .end annotation
.end field

.field public final v:[F

.field public final w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LR/d;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "LQ/e;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "LQ/d;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "LQ/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LR/n;->a:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, LR/n;->d:Z

    const/4 v1, -0x1

    iput v1, p0, LR/n;->e:I

    new-instance v2, LR/r;

    invoke-direct {v2}, LR/r;-><init>()V

    iput-object v2, p0, LR/n;->f:LR/r;

    new-instance v2, LR/r;

    invoke-direct {v2}, LR/r;-><init>()V

    iput-object v2, p0, LR/n;->g:LR/r;

    new-instance v2, LR/l;

    invoke-direct {v2}, LR/l;-><init>()V

    iput-object v2, p0, LR/n;->h:LR/l;

    new-instance v2, LR/l;

    invoke-direct {v2}, LR/l;-><init>()V

    iput-object v2, p0, LR/n;->i:LR/l;

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, LR/n;->l:F

    const/4 v3, 0x0

    iput v3, p0, LR/n;->m:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, LR/n;->n:F

    const/4 v3, 0x4

    new-array v3, v3, [F

    iput-object v3, p0, LR/n;->t:[F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, LR/n;->u:Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [F

    iput-object v3, p0, LR/n;->v:[F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, LR/n;->w:Ljava/util/ArrayList;

    iput v1, p0, LR/n;->B:I

    iput v1, p0, LR/n;->C:I

    const/4 v3, 0x0

    iput-object v3, p0, LR/n;->D:Landroid/view/View;

    iput v1, p0, LR/n;->E:I

    iput v2, p0, LR/n;->F:F

    iput-object v3, p0, LR/n;->G:Landroid/view/animation/Interpolator;

    iput-boolean v0, p0, LR/n;->H:Z

    iput-object p1, p0, LR/n;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, LR/n;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public static f(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p2, 0x4

    if-eq p0, p2, :cond_0

    return-void

    :cond_0
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p2

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p2

    div-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p0, p1

    div-int/2addr p0, v1

    iput p0, p4, Landroid/graphics/Rect;->top:I

    iget p0, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->right:I

    iget p0, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_1
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v1

    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    div-int/lit8 v0, p0, 0x2

    sub-int/2addr p1, v0

    iput p1, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p0

    div-int/2addr p1, v1

    sub-int/2addr p2, p1

    iput p2, p4, Landroid/graphics/Rect;->top:I

    iget p0, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->right:I

    iget p0, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_2
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p2

    iget p2, p3, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p2

    div-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p0, p1

    div-int/2addr p0, v1

    iput p0, p4, Landroid/graphics/Rect;->top:I

    iget p0, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->right:I

    iget p0, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_3
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p1

    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/2addr p1, v1

    iput p1, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p0

    div-int/2addr p1, v1

    sub-int/2addr p2, p1

    iput p2, p4, Landroid/graphics/Rect;->top:I

    iget p0, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->right:I

    iget p0, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public final a(F[F)F
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    aput v2, p2, v1

    goto :goto_0

    :cond_0
    iget v3, p0, LR/n;->n:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_2

    iget v4, p0, LR/n;->m:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_1

    move p1, v0

    :cond_1
    cmpl-float v5, p1, v4

    if-lez v5, :cond_2

    float-to-double v8, p1

    cmpg-double v5, v8, v6

    if-gez v5, :cond_2

    sub-float/2addr p1, v4

    mul-float/2addr p1, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_2
    :goto_0
    iget-object v3, p0, LR/n;->f:LR/r;

    iget-object v3, v3, LR/r;->a:LN/c;

    iget-object p0, p0, LR/n;->u:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v4, 0x7fc00000    # Float.NaN

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR/r;

    iget-object v6, v5, LR/r;->a:LN/c;

    if-eqz v6, :cond_3

    iget v7, v5, LR/r;->c:F

    cmpg-float v8, v7, p1

    if-gez v8, :cond_4

    move-object v3, v6

    move v0, v7

    goto :goto_1

    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v4, v5, LR/r;->c:F

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_8

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v4

    :goto_2
    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    float-to-double p0, p1

    invoke-virtual {v3, p0, p1}, LN/c;->a(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v0

    if-eqz p2, :cond_7

    invoke-virtual {v3, p0, p1}, LN/c;->b(D)D

    move-result-wide p0

    double-to-float p0, p0

    aput p0, p2, v1

    :cond_7
    return v4

    :cond_8
    return p1
.end method

.method public final b(D[F[F)V
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    const/4 v4, 0x4

    new-array v5, v4, [D

    new-array v6, v4, [D

    iget-object v7, v0, LR/n;->j:[LN/b;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7, v5, v1, v2}, LN/b;->d([DD)V

    iget-object v7, v0, LR/n;->j:[LN/b;

    aget-object v7, v7, v8

    invoke-virtual {v7, v6, v1, v2}, LN/b;->e([DD)V

    const/4 v7, 0x0

    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v9, v0, LR/n;->o:[I

    iget-object v0, v0, LR/n;->f:LR/r;

    iget v10, v0, LR/r;->e:F

    iget v11, v0, LR/r;->f:F

    iget v12, v0, LR/r;->g:F

    iget v13, v0, LR/r;->h:F

    move v15, v7

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move v14, v8

    move/from16 v19, v14

    :goto_0
    array-length v8, v9

    if-ge v14, v8, :cond_4

    move-object v8, v5

    aget-wide v4, v8, v14

    double-to-float v4, v4

    move v5, v4

    aget-wide v3, v6, v14

    double-to-float v3, v3

    aget v4, v9, v14

    move/from16 v22, v3

    const/4 v3, 0x1

    if-eq v4, v3, :cond_3

    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    const/4 v3, 0x3

    if-eq v4, v3, :cond_1

    const/4 v3, 0x4

    if-eq v4, v3, :cond_0

    goto :goto_1

    :cond_0
    move v13, v5

    move/from16 v18, v22

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    move v12, v5

    move/from16 v16, v22

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    move v11, v5

    move/from16 v7, v22

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    move v10, v5

    move/from16 v15, v22

    :goto_1
    add-int/lit8 v14, v14, 0x1

    move v4, v3

    move-object v5, v8

    move-object/from16 v3, p4

    goto :goto_0

    :cond_4
    const/high16 v3, 0x40000000    # 2.0f

    div-float v16, v16, v3

    add-float v16, v16, v15

    div-float v18, v18, v3

    add-float v18, v18, v7

    iget-object v0, v0, LR/r;->m:LR/n;

    if-eqz v0, :cond_5

    const/4 v4, 0x2

    new-array v5, v4, [F

    new-array v4, v4, [F

    invoke-virtual {v0, v1, v2, v5, v4}, LR/n;->b(D[F[F)V

    aget v0, v5, v19

    const/4 v1, 0x1

    aget v2, v5, v1

    aget v5, v4, v19

    aget v4, v4, v1

    float-to-double v0, v0

    float-to-double v8, v10

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v8

    add-double v20, v20, v0

    div-float v0, v12, v3

    float-to-double v0, v0

    sub-double v0, v20, v0

    double-to-float v0, v0

    float-to-double v1, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v8

    sub-double v1, v1, v20

    div-float v6, v13, v3

    float-to-double v8, v6

    sub-double/2addr v1, v8

    double-to-float v1, v1

    float-to-double v5, v5

    float-to-double v8, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v8

    add-double/2addr v14, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    move v2, v3

    move/from16 p1, v4

    float-to-double v3, v7

    mul-double/2addr v5, v3

    add-double/2addr v5, v14

    double-to-float v5, v5

    move/from16 v6, p1

    float-to-double v6, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v8

    sub-double/2addr v6, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v3

    add-double/2addr v8, v6

    double-to-float v3, v8

    move v10, v0

    move v11, v1

    move/from16 v18, v3

    move/from16 v16, v5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    div-float/2addr v12, v2

    add-float/2addr v12, v10

    add-float v12, v12, v17

    aput v12, p3, v19

    div-float/2addr v13, v2

    add-float/2addr v13, v11

    add-float v13, v13, v17

    const/4 v1, 0x1

    aput v13, p3, v1

    aput v16, p4, v19

    aput v18, p4, v1

    return-void
.end method

.method public final c()F
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v7, v1, [F

    const/16 v1, 0x63

    int-to-float v1, v1

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v1, v9, v1

    const-wide/16 v2, 0x0

    move-wide v12, v2

    move-wide v14, v12

    const/4 v2, 0x0

    const/16 v16, 0x0

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_6

    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-double v4, v3

    iget-object v6, v0, LR/n;->f:LR/r;

    iget-object v6, v6, LR/r;->a:LN/c;

    iget-object v8, v0, LR/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/high16 v17, 0x7fc00000    # Float.NaN

    const/16 v18, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v9, v19

    check-cast v9, LR/r;

    iget-object v10, v9, LR/r;->a:LN/c;

    const/16 v20, 0x0

    if-eqz v10, :cond_1

    iget v11, v9, LR/r;->c:F

    cmpg-float v21, v11, v3

    if-gez v21, :cond_0

    move-object v6, v10

    move/from16 v18, v11

    goto :goto_2

    :cond_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_1

    iget v9, v9, LR/r;->c:F

    move/from16 v17, v9

    :cond_1
    :goto_2
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/16 v20, 0x0

    if-eqz v6, :cond_4

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v17, 0x3f800000    # 1.0f

    :cond_3
    sub-float v3, v3, v18

    sub-float v17, v17, v18

    div-float v3, v3, v17

    float-to-double v3, v3

    invoke-virtual {v6, v3, v4}, LN/c;->a(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v17

    add-float v3, v3, v18

    float-to-double v4, v3

    :cond_4
    move-wide v3, v4

    iget-object v5, v0, LR/n;->j:[LN/b;

    aget-object v5, v5, v20

    iget-object v6, v0, LR/n;->p:[D

    invoke-virtual {v5, v6, v3, v4}, LN/b;->d([DD)V

    iget-object v5, v0, LR/n;->o:[I

    iget-object v6, v0, LR/n;->p:[D

    const/4 v8, 0x0

    move v11, v2

    iget-object v2, v0, LR/n;->f:LR/r;

    invoke-virtual/range {v2 .. v8}, LR/r;->d(D[I[D[FI)V

    const/4 v2, 0x1

    if-lez v11, :cond_5

    aget v3, v7, v2

    float-to-double v3, v3

    sub-double/2addr v14, v3

    aget v3, v7, v20

    float-to-double v3, v3

    sub-double/2addr v12, v3

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    add-float v16, v16, v3

    :cond_5
    aget v3, v7, v20

    float-to-double v12, v3

    aget v2, v7, v2

    float-to-double v14, v2

    add-int/lit8 v2, v11, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_6
    return v16
.end method

.method public final d(FJLN/d;Landroid/view/View;)Z
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v6, p5

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-virtual {v0, v2, v1}, LR/n;->a(F[F)F

    move-result v2

    iget v3, v0, LR/n;->E:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, -0x1

    if-eq v3, v9, :cond_3

    int-to-float v3, v3

    div-float v3, v8, v3

    div-float v4, v2, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v3

    rem-float/2addr v2, v3

    div-float/2addr v2, v3

    iget v5, v0, LR/n;->F:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v0, LR/n;->F:F

    add-float/2addr v2, v5

    rem-float/2addr v2, v8

    :cond_0
    iget-object v5, v0, LR/n;->G:Landroid/view/animation/Interpolator;

    if-eqz v5, :cond_1

    invoke-interface {v5, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_0

    :cond_1
    float-to-double v10, v2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v10, v12

    if-lez v2, :cond_2

    move v2, v8

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    :cond_3
    iget-object v3, v0, LR/n;->y:Ljava/util/HashMap;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQ/d;

    invoke-virtual {v4, v6, v2}, LQ/d;->d(Landroid/view/View;F)V

    goto :goto_1

    :cond_4
    iget-object v3, v0, LR/n;->x:Ljava/util/HashMap;

    const/4 v10, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v12, v1

    move v13, v10

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/e;

    instance-of v3, v1, LQ/e$d;

    if-eqz v3, :cond_5

    move-object v12, v1

    check-cast v12, LQ/e$d;

    goto :goto_2

    :cond_5
    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, LQ/e;->e(FJLN/d;Landroid/view/View;)Z

    move-result v1

    or-int/2addr v13, v1

    goto :goto_2

    :cond_6
    move-object v1, v12

    goto :goto_3

    :cond_7
    move v13, v10

    :goto_3
    iget-object v3, v0, LR/n;->j:[LN/b;

    iget-object v11, v0, LR/n;->f:LR/r;

    if-eqz v3, :cond_26

    aget-object v3, v3, v10

    float-to-double v14, v2

    const/high16 p1, 0x3f000000    # 0.5f

    iget-object v5, v0, LR/n;->p:[D

    invoke-virtual {v3, v5, v14, v15}, LN/b;->d([DD)V

    iget-object v3, v0, LR/n;->j:[LN/b;

    aget-object v3, v3, v10

    iget-object v5, v0, LR/n;->q:[D

    invoke-virtual {v3, v5, v14, v15}, LN/b;->e([DD)V

    iget-object v3, v0, LR/n;->k:LN/a;

    if-eqz v3, :cond_8

    iget-object v5, v0, LR/n;->p:[D

    const/16 v16, 0x0

    array-length v7, v5

    if-lez v7, :cond_9

    invoke-virtual {v3, v5, v14, v15}, LN/a;->d([DD)V

    iget-object v3, v0, LR/n;->k:LN/a;

    iget-object v5, v0, LR/n;->q:[D

    invoke-virtual {v3, v5, v14, v15}, LN/a;->e([DD)V

    goto :goto_4

    :cond_8
    const/16 v16, 0x0

    :cond_9
    :goto_4
    iget-boolean v3, v0, LR/n;->H:Z

    if-nez v3, :cond_1c

    iget-object v3, v0, LR/n;->o:[I

    iget-object v7, v0, LR/n;->p:[D

    const/high16 v17, 0x40000000    # 2.0f

    iget-object v5, v0, LR/n;->q:[D

    move/from16 v18, v8

    iget-boolean v8, v0, LR/n;->d:Z

    iget v9, v11, LR/r;->e:F

    move/from16 v19, v10

    iget v10, v11, LR/r;->f:F

    iget v4, v11, LR/r;->g:F

    const/16 v20, 0x1

    iget v12, v11, LR/r;->h:F

    move-object/from16 v21, v1

    array-length v1, v3

    if-eqz v1, :cond_a

    iget-object v1, v11, LR/r;->p:[D

    array-length v1, v1

    move/from16 v22, v4

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget v4, v3, v4

    if-gt v1, v4, :cond_b

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget v1, v3, v1

    add-int/lit8 v1, v1, 0x1

    new-array v4, v1, [D

    iput-object v4, v11, LR/r;->p:[D

    new-array v1, v1, [D

    iput-object v1, v11, LR/r;->q:[D

    goto :goto_5

    :cond_a
    move/from16 v22, v4

    :cond_b
    :goto_5
    iget-object v1, v11, LR/r;->p:[D

    move-object v4, v7

    move/from16 v23, v8

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v1, v7, v8}, Ljava/util/Arrays;->fill([DD)V

    move/from16 v1, v19

    :goto_6
    array-length v7, v3

    if-ge v1, v7, :cond_c

    iget-object v7, v11, LR/r;->p:[D

    aget v8, v3, v1

    aget-wide v24, v4, v1

    aput-wide v24, v7, v8

    iget-object v7, v11, LR/r;->q:[D

    aget-wide v24, v5, v1

    aput-wide v24, v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    const/high16 v1, 0x7fc00000    # Float.NaN

    move/from16 v7, v16

    move v8, v7

    move/from16 v24, v8

    move/from16 v3, v19

    move/from16 v25, v22

    move/from16 v22, v24

    :goto_7
    iget-object v4, v11, LR/r;->p:[D

    move/from16 v26, v12

    array-length v12, v4

    move-object/from16 v27, v4

    if-ge v3, v12, :cond_14

    aget-wide v27, v27, v3

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-eqz v12, :cond_d

    move-object v12, v5

    goto :goto_a

    :cond_d
    iget-object v12, v11, LR/r;->p:[D

    aget-wide v27, v12, v3

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    const-wide/16 v27, 0x0

    if-eqz v12, :cond_e

    :goto_8
    move-object v12, v5

    move-wide/from16 v4, v27

    goto :goto_9

    :cond_e
    iget-object v12, v11, LR/r;->p:[D

    aget-wide v29, v12, v3

    add-double v27, v29, v27

    goto :goto_8

    :goto_9
    double-to-float v4, v4

    iget-object v5, v11, LR/r;->q:[D

    move/from16 v27, v4

    aget-wide v4, v5, v3

    double-to-float v4, v4

    move/from16 v5, v20

    if-eq v3, v5, :cond_13

    const/4 v5, 0x2

    if-eq v3, v5, :cond_12

    const/4 v5, 0x3

    if-eq v3, v5, :cond_11

    const/4 v5, 0x4

    if-eq v3, v5, :cond_10

    const/4 v4, 0x5

    if-eq v3, v4, :cond_f

    goto :goto_a

    :cond_f
    move/from16 v1, v27

    goto :goto_a

    :cond_10
    move/from16 v24, v4

    move/from16 v26, v27

    goto :goto_a

    :cond_11
    move/from16 v22, v4

    move/from16 v25, v27

    goto :goto_a

    :cond_12
    move v8, v4

    move/from16 v10, v27

    goto :goto_a

    :cond_13
    move v7, v4

    move/from16 v9, v27

    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object v5, v12

    move/from16 v12, v26

    const/16 v20, 0x1

    goto :goto_7

    :cond_14
    move-object v12, v5

    iget-object v3, v11, LR/r;->m:LR/n;

    if-eqz v3, :cond_16

    const/4 v5, 0x2

    new-array v4, v5, [F

    move-object/from16 v27, v12

    new-array v12, v5, [F

    invoke-virtual {v3, v14, v15, v4, v12}, LR/n;->b(D[F[F)V

    aget v3, v4, v19

    const/16 v20, 0x1

    aget v4, v4, v20

    aget v5, v12, v19

    aget v12, v12, v20

    move/from16 v28, v13

    move-wide/from16 v30, v14

    float-to-double v13, v3

    move-wide/from16 v32, v13

    float-to-double v13, v9

    float-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v34, v34, v13

    add-double v34, v34, v32

    div-float v3, v25, v17

    move-wide/from16 v32, v9

    float-to-double v9, v3

    sub-double v9, v34, v9

    double-to-float v9, v9

    float-to-double v3, v4

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v13

    sub-double v3, v3, v34

    div-float v10, v26, v17

    move-wide/from16 v34, v3

    float-to-double v3, v10

    sub-double v3, v34, v3

    double-to-float v10, v3

    float-to-double v3, v5

    move-wide/from16 v34, v3

    float-to-double v3, v7

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v36, v36, v3

    add-double v36, v36, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v13

    float-to-double v7, v8

    mul-double v34, v34, v7

    move-wide/from16 v38, v3

    add-double v3, v34, v36

    double-to-float v3, v3

    float-to-double v4, v12

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v38

    sub-double v4, v4, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    mul-double v32, v32, v13

    mul-double v32, v32, v7

    add-double v4, v32, v4

    double-to-float v4, v4

    move-object/from16 v12, v27

    array-length v5, v12

    const/4 v7, 0x2

    if-lt v5, v7, :cond_15

    float-to-double v7, v3

    aput-wide v7, v12, v19

    float-to-double v7, v4

    const/16 v20, 0x1

    aput-wide v7, v12, v20

    :cond_15
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_17

    float-to-double v7, v1

    float-to-double v4, v4

    float-to-double v12, v3

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    add-double/2addr v3, v7

    double-to-float v1, v3

    invoke-virtual {v6, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_b

    :cond_16
    move/from16 v28, v13

    move-wide/from16 v30, v14

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_17

    div-float v22, v22, v17

    add-float v3, v22, v7

    div-float v24, v24, v17

    add-float v4, v24, v8

    float-to-double v4, v4

    float-to-double v7, v3

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v1, v3

    add-float v1, v1, v16

    invoke-virtual {v6, v1}, Landroid/view/View;->setRotation(F)V

    :cond_17
    :goto_b
    instance-of v1, v6, LR/c;

    if-eqz v1, :cond_18

    move-object v1, v6

    check-cast v1, LR/c;

    invoke-interface {v1}, LR/c;->a()V

    :goto_c
    move/from16 v1, v19

    goto :goto_e

    :cond_18
    add-float v9, v9, p1

    float-to-int v1, v9

    add-float v10, v10, p1

    float-to-int v3, v10

    add-float v9, v9, v25

    float-to-int v4, v9

    add-float v10, v10, v26

    float-to-int v5, v10

    sub-int v7, v4, v1

    sub-int v8, v5, v3

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-ne v7, v9, :cond_1a

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-eq v8, v9, :cond_19

    goto :goto_d

    :cond_19
    if-eqz v23, :cond_1b

    :cond_1a
    :goto_d
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    :cond_1b
    invoke-virtual {v6, v1, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_c

    :goto_e
    iput-boolean v1, v0, LR/n;->d:Z

    goto :goto_f

    :cond_1c
    move-object/from16 v21, v1

    move/from16 v18, v8

    move/from16 v28, v13

    move-wide/from16 v30, v14

    const/high16 v17, 0x40000000    # 2.0f

    :goto_f
    iget v1, v0, LR/n;->C:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1e

    iget-object v1, v0, LR/n;->D:Landroid/view/View;

    if-nez v1, :cond_1d

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, v0, LR/n;->C:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, LR/n;->D:Landroid/view/View;

    :cond_1d
    iget-object v1, v0, LR/n;->D:Landroid/view/View;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v3, v0, LR/n;->D:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    div-float v1, v1, v17

    iget-object v3, v0, LR/n;->D:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v0, LR/n;->D:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    div-float v3, v3, v17

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_1e

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_1e

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-virtual {v6, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_1e
    iget-object v1, v0, LR/n;->y:Ljava/util/HashMap;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN/l;

    instance-of v4, v3, LQ/d$d;

    if-eqz v4, :cond_1f

    iget-object v4, v0, LR/n;->q:[D

    array-length v5, v4

    const/4 v7, 0x1

    if-le v5, v7, :cond_1f

    check-cast v3, LQ/d$d;

    const/16 v19, 0x0

    aget-wide v8, v4, v19

    aget-wide v4, v4, v7

    invoke-virtual {v3, v2}, LN/l;->a(F)F

    move-result v3

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v6, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_10

    :cond_20
    if-eqz v21, :cond_21

    iget-object v1, v0, LR/n;->q:[D

    const/16 v19, 0x0

    aget-wide v7, v1, v19

    const/16 v20, 0x1

    aget-wide v9, v1, v20

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v1, v21

    invoke-virtual/range {v1 .. v6}, LQ/e;->d(FJLN/d;Landroid/view/View;)F

    move-result v3

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v6, v3}, Landroid/view/View;->setRotation(F)V

    iget-boolean v1, v1, LN/q;->h:Z

    or-int v13, v28, v1

    goto :goto_11

    :cond_21
    move/from16 v13, v28

    :goto_11
    const/4 v5, 0x1

    :goto_12
    iget-object v1, v0, LR/n;->j:[LN/b;

    array-length v3, v1

    if-ge v5, v3, :cond_22

    aget-object v1, v1, v5

    iget-object v3, v0, LR/n;->t:[F

    move-wide/from16 v7, v30

    invoke-virtual {v1, v7, v8, v3}, LN/b;->c(D[F)V

    iget-object v1, v11, LR/r;->n:Ljava/util/LinkedHashMap;

    iget-object v4, v0, LR/n;->r:[Ljava/lang/String;

    add-int/lit8 v9, v5, -0x1

    aget-object v4, v4, v9

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/a;

    invoke-static {v1, v6, v3}, LQ/a;->b(Landroidx/constraintlayout/widget/a;Landroid/view/View;[F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_22
    iget-object v1, v0, LR/n;->h:LR/l;

    iget v3, v1, LR/l;->b:I

    if-nez v3, :cond_25

    cmpg-float v3, v2, v16

    if-gtz v3, :cond_23

    iget v1, v1, LR/l;->c:I

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    :cond_23
    cmpl-float v3, v2, v18

    iget-object v4, v0, LR/n;->i:LR/l;

    if-ltz v3, :cond_24

    iget v1, v4, LR/l;->c:I

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    :cond_24
    iget v3, v4, LR/l;->c:I

    iget v1, v1, LR/l;->c:I

    if-eq v3, v1, :cond_25

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    :goto_13
    iget-object v1, v0, LR/n;->A:[LR/k;

    if-eqz v1, :cond_29

    const/4 v1, 0x0

    :goto_14
    iget-object v3, v0, LR/n;->A:[LR/k;

    array-length v4, v3

    if-ge v1, v4, :cond_29

    aget-object v3, v3, v1

    invoke-virtual {v3, v6, v2}, LR/k;->g(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_26
    move/from16 v28, v13

    const/high16 p1, 0x3f000000    # 0.5f

    iget v1, v11, LR/r;->e:F

    iget-object v3, v0, LR/n;->g:LR/r;

    iget v4, v3, LR/r;->e:F

    invoke-static {v4, v1, v2, v1}, LP/e;->a(FFFF)F

    move-result v1

    iget v4, v11, LR/r;->f:F

    iget v5, v3, LR/r;->f:F

    invoke-static {v5, v4, v2, v4}, LP/e;->a(FFFF)F

    move-result v4

    iget v5, v11, LR/r;->g:F

    iget v7, v3, LR/r;->g:F

    invoke-static {v7, v5, v2, v5}, LP/e;->a(FFFF)F

    move-result v8

    iget v9, v11, LR/r;->h:F

    iget v3, v3, LR/r;->h:F

    invoke-static {v3, v9, v2, v9}, LP/e;->a(FFFF)F

    move-result v10

    add-float v1, v1, p1

    float-to-int v11, v1

    add-float v4, v4, p1

    float-to-int v12, v4

    add-float/2addr v1, v8

    float-to-int v1, v1

    add-float/2addr v4, v10

    float-to-int v4, v4

    sub-int v8, v1, v11

    sub-int v10, v4, v12

    cmpl-float v5, v7, v5

    if-nez v5, :cond_27

    cmpl-float v3, v3, v9

    if-nez v3, :cond_27

    iget-boolean v3, v0, LR/n;->d:Z

    if-eqz v3, :cond_28

    :cond_27
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v6, v3, v5}, Landroid/view/View;->measure(II)V

    const/4 v3, 0x0

    iput-boolean v3, v0, LR/n;->d:Z

    :cond_28
    invoke-virtual {v6, v11, v12, v1, v4}, Landroid/view/View;->layout(IIII)V

    move/from16 v13, v28

    :cond_29
    iget-object v1, v0, LR/n;->z:Ljava/util/HashMap;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ/c;

    instance-of v4, v3, LQ/c$d;

    if-eqz v4, :cond_2a

    check-cast v3, LQ/c$d;

    iget-object v4, v0, LR/n;->q:[D

    const/16 v19, 0x0

    aget-wide v7, v4, v19

    const/16 v20, 0x1

    aget-wide v4, v4, v20

    invoke-virtual {v3, v2}, LN/f;->a(F)F

    move-result v3

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v6, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_15

    :cond_2a
    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual {v3, v6, v2}, LQ/c;->e(Landroid/view/View;F)V

    goto :goto_15

    :cond_2b
    return v13
.end method

.method public final e(LR/r;)V
    .locals 3

    iget-object v0, p0, LR/n;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, LR/n;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, LR/n;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, LR/n;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, v2, p0}, LR/r;->e(FFFF)V

    return-void
.end method

.method public final g(JII)V
    .locals 55

    move-object/from16 v0, p0

    const-string/jumbo v1, "transformPivotY"

    const-string/jumbo v2, "transformPivotX"

    const-string/jumbo v4, "translationZ"

    const-string/jumbo v5, "translationY"

    const-string/jumbo v6, "translationX"

    const-string/jumbo v7, "scaleY"

    const-string/jumbo v8, "scaleX"

    const-string/jumbo v9, "rotationY"

    const-string/jumbo v10, "rotationX"

    const-string v11, "progress"

    const-string/jumbo v12, "transitionPathRotate"

    const-string/jumbo v13, "rotation"

    const-string v14, "elevation"

    const-string v15, "alpha"

    const/16 v16, 0x5

    const/16 v17, 0x4

    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v23, v3

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v24, v4

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v25, v4

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v26, v4

    iget v4, v0, LR/n;->B:I

    move-object/from16 v27, v5

    iget-object v5, v0, LR/n;->f:LR/r;

    move-object/from16 v28, v6

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    iput v4, v5, LR/r;->j:I

    :cond_0
    iget-object v4, v0, LR/n;->h:LR/l;

    iget v6, v4, LR/l;->e:F

    move-object/from16 v29, v5

    iget-object v5, v0, LR/n;->i:LR/l;

    iget v0, v5, LR/l;->e:F

    invoke-static {v6, v0}, LR/l;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, v4, LR/l;->f:F

    iget v6, v5, LR/l;->f:F

    invoke-static {v0, v6}, LR/l;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v0, v4, LR/l;->c:I

    iget v6, v5, LR/l;->c:I

    if-eq v0, v6, :cond_4

    move/from16 v30, v0

    iget v0, v4, LR/l;->b:I

    if-nez v0, :cond_4

    if-eqz v30, :cond_3

    if-nez v6, :cond_4

    :cond_3
    invoke-virtual {v3, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, v4, LR/l;->g:F

    iget v6, v5, LR/l;->g:F

    invoke-static {v0, v6}, LR/l;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v0, v4, LR/l;->p:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v5, LR/l;->p:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {v3, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v0, v4, LR/l;->q:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v5, LR/l;->q:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v0, v4, LR/l;->h:F

    iget v6, v5, LR/l;->h:F

    invoke-static {v0, v6}, LR/l;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget v0, v4, LR/l;->a:F

    iget v6, v5, LR/l;->a:F

    invoke-static {v0, v6}, LR/l;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v0, v4, LR/l;->k:F

    iget v6, v5, LR/l;->k:F

    invoke-static {v0, v6}, LR/l;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    iget v0, v4, LR/l;->l:F

    iget v6, v5, LR/l;->l:F

    invoke-static {v0, v6}, LR/l;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v0, v4, LR/l;->i:F

    iget v6, v5, LR/l;->i:F

    invoke-static {v0, v6}, LR/l;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    iget v0, v4, LR/l;->j:F

    iget v6, v5, LR/l;->j:F

    invoke-static {v0, v6}, LR/l;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v0, v4, LR/l;->m:F

    iget v6, v5, LR/l;->m:F

    invoke-static {v0, v6}, LR/l;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_10
    move-object/from16 v0, v28

    :goto_0
    iget v6, v4, LR/l;->n:F

    move-object/from16 v28, v10

    iget v10, v5, LR/l;->n:F

    invoke-static {v6, v10}, LR/l;->d(FF)Z

    move-result v6

    if-eqz v6, :cond_11

    move-object/from16 v6, v27

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_11
    move-object/from16 v6, v27

    :goto_1
    iget v10, v4, LR/l;->o:F

    move-object/from16 v27, v4

    iget v4, v5, LR/l;->o:F

    invoke-static {v10, v4}, LR/l;->d(FF)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v4, v24

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object/from16 v10, p0

    move-object/from16 v24, v5

    goto :goto_3

    :cond_12
    move-object/from16 v4, v24

    goto :goto_2

    :goto_3
    iget-object v5, v10, LR/n;->w:Ljava/util/ArrayList;

    move-object/from16 v30, v5

    iget-object v5, v10, LR/n;->g:LR/r;

    move-object/from16 v31, v9

    iget-object v9, v10, LR/n;->u:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    if-eqz v30, :cond_3c

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    const/16 v35, 0x0

    :goto_4
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_3b

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v36

    check-cast v0, LR/d;

    move-object/from16 v36, v6

    instance-of v6, v0, LR/h;

    if-eqz v6, :cond_36

    check-cast v0, LR/h;

    new-instance v6, LR/r;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object/from16 v38, v4

    const/4 v4, 0x0

    iput v4, v6, LR/r;->b:I

    const/high16 v4, 0x7fc00000    # Float.NaN

    iput v4, v6, LR/r;->i:F

    const/4 v4, -0x1

    iput v4, v6, LR/r;->j:I

    iput v4, v6, LR/r;->k:I

    const/high16 v4, 0x7fc00000    # Float.NaN

    iput v4, v6, LR/r;->l:F

    const/4 v4, 0x0

    iput-object v4, v6, LR/r;->m:LR/n;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v6, LR/r;->n:Ljava/util/LinkedHashMap;

    const/4 v4, 0x0

    iput v4, v6, LR/r;->o:I

    move-object/from16 v39, v11

    const/16 v4, 0x12

    new-array v11, v4, [D

    iput-object v11, v6, LR/r;->p:[D

    new-array v11, v4, [D

    iput-object v11, v6, LR/r;->q:[D

    move-object/from16 v4, v29

    iget v11, v4, LR/r;->k:I

    const/high16 v29, 0x42c80000    # 100.0f

    move-object/from16 v40, v8

    const/4 v8, -0x1

    if-eq v11, v8, :cond_1a

    iget v8, v0, LR/d;->a:I

    int-to-float v8, v8

    div-float v8, v8, v29

    iput v8, v6, LR/r;->c:F

    iget v11, v0, LR/h;->h:I

    iput v11, v6, LR/r;->b:I

    iget v11, v0, LR/h;->o:I

    iput v11, v6, LR/r;->o:I

    iget v11, v0, LR/h;->i:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_13

    move v11, v8

    :goto_5
    move-object/from16 v41, v7

    goto :goto_6

    :cond_13
    iget v11, v0, LR/h;->i:F

    goto :goto_5

    :goto_6
    iget v7, v0, LR/h;->j:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_14

    move v7, v8

    :goto_7
    move-object/from16 v42, v2

    goto :goto_8

    :cond_14
    iget v7, v0, LR/h;->j:F

    goto :goto_7

    :goto_8
    iget v2, v5, LR/r;->g:F

    move/from16 v29, v2

    iget v2, v4, LR/r;->g:F

    sub-float v29, v29, v2

    move/from16 v43, v2

    iget v2, v5, LR/r;->h:F

    move/from16 v44, v2

    iget v2, v4, LR/r;->h:F

    sub-float v44, v44, v2

    move/from16 v45, v2

    iget v2, v6, LR/r;->c:F

    iput v2, v6, LR/r;->d:F

    mul-float v29, v29, v11

    add-float v2, v29, v43

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v6, LR/r;->g:F

    mul-float v44, v44, v7

    add-float v2, v44, v45

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v6, LR/r;->h:F

    iget v2, v0, LR/h;->o:I

    move-object/from16 v43, v1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_17

    iget v1, v0, LR/h;->k:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v8

    goto :goto_9

    :cond_15
    iget v1, v0, LR/h;->k:F

    :goto_9
    iget v2, v5, LR/r;->e:F

    iget v7, v4, LR/r;->e:F

    invoke-static {v2, v7, v1, v7}, LP/e;->a(FFFF)F

    move-result v1

    iput v1, v6, LR/r;->e:F

    iget v1, v0, LR/h;->l:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_a

    :cond_16
    iget v8, v0, LR/h;->l:F

    :goto_a
    iget v1, v5, LR/r;->f:F

    iget v2, v4, LR/r;->f:F

    invoke-static {v1, v2, v8, v2}, LP/e;->a(FFFF)F

    move-result v1

    iput v1, v6, LR/r;->f:F

    goto :goto_d

    :cond_17
    iget v1, v0, LR/h;->k:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_18

    iget v1, v5, LR/r;->e:F

    iget v2, v4, LR/r;->e:F

    invoke-static {v1, v2, v8, v2}, LP/e;->a(FFFF)F

    move-result v1

    goto :goto_b

    :cond_18
    iget v1, v0, LR/h;->k:F

    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v1, v2

    :goto_b
    iput v1, v6, LR/r;->e:F

    iget v1, v0, LR/h;->l:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, v5, LR/r;->f:F

    iget v2, v4, LR/r;->f:F

    invoke-static {v1, v2, v8, v2}, LP/e;->a(FFFF)F

    move-result v1

    goto :goto_c

    :cond_19
    iget v1, v0, LR/h;->l:F

    :goto_c
    iput v1, v6, LR/r;->f:F

    :goto_d
    iget v1, v4, LR/r;->k:I

    iput v1, v6, LR/r;->k:I

    iget-object v1, v0, LR/h;->f:Ljava/lang/String;

    invoke-static {v1}, LN/c;->c(Ljava/lang/String;)LN/c;

    move-result-object v1

    iput-object v1, v6, LR/r;->a:LN/c;

    iget v1, v0, LR/h;->g:I

    iput v1, v6, LR/r;->j:I

    goto/16 :goto_25

    :cond_1a
    move-object/from16 v43, v1

    move-object/from16 v42, v2

    move-object/from16 v41, v7

    iget v1, v0, LR/h;->o:I

    const/4 v8, 0x1

    if-eq v1, v8, :cond_2f

    const/4 v8, 0x2

    if-eq v1, v8, :cond_2a

    const/4 v8, 0x3

    if-eq v1, v8, :cond_21

    iget v1, v0, LR/d;->a:I

    int-to-float v1, v1

    div-float v1, v1, v29

    iput v1, v6, LR/r;->c:F

    iget v8, v0, LR/h;->h:I

    iput v8, v6, LR/r;->b:I

    iget v8, v0, LR/h;->i:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_1b

    move v8, v1

    goto :goto_e

    :cond_1b
    iget v8, v0, LR/h;->i:F

    :goto_e
    iget v11, v0, LR/h;->j:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_1c

    move v11, v1

    goto :goto_f

    :cond_1c
    iget v11, v0, LR/h;->j:F

    :goto_f
    iget v2, v5, LR/r;->g:F

    const/high16 v45, 0x40000000    # 2.0f

    iget v7, v4, LR/r;->g:F

    sub-float v29, v2, v7

    move/from16 v46, v1

    iget v1, v5, LR/r;->h:F

    move/from16 v47, v1

    iget v1, v4, LR/r;->h:F

    sub-float v48, v47, v1

    move/from16 v49, v1

    iget v1, v6, LR/r;->c:F

    iput v1, v6, LR/r;->d:F

    iget v1, v4, LR/r;->e:F

    div-float v50, v7, v45

    add-float v50, v50, v1

    move/from16 v51, v1

    iget v1, v4, LR/r;->f:F

    div-float v52, v49, v45

    add-float v52, v52, v1

    move/from16 v53, v1

    iget v1, v5, LR/r;->e:F

    div-float v2, v2, v45

    add-float/2addr v2, v1

    iget v1, v5, LR/r;->f:F

    div-float v47, v47, v45

    add-float v47, v47, v1

    sub-float v2, v2, v50

    sub-float v47, v47, v52

    mul-float v1, v2, v46

    add-float v1, v1, v51

    mul-float v29, v29, v8

    div-float v8, v29, v45

    sub-float/2addr v1, v8

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v6, LR/r;->e:F

    mul-float v1, v47, v46

    add-float v1, v1, v53

    mul-float v48, v48, v11

    div-float v11, v48, v45

    sub-float/2addr v1, v11

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v6, LR/r;->f:F

    add-float v7, v7, v29

    float-to-int v1, v7

    int-to-float v1, v1

    iput v1, v6, LR/r;->g:F

    add-float v1, v49, v48

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v6, LR/r;->h:F

    iget v1, v0, LR/h;->k:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1d

    move/from16 v1, v46

    goto :goto_10

    :cond_1d
    iget v1, v0, LR/h;->k:F

    :goto_10
    iget v7, v0, LR/h;->n:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v7, 0x0

    :goto_11
    move/from16 v29, v1

    goto :goto_12

    :cond_1e
    iget v7, v0, LR/h;->n:F

    goto :goto_11

    :goto_12
    iget v1, v0, LR/h;->l:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1f

    move/from16 v45, v46

    goto :goto_13

    :cond_1f
    iget v1, v0, LR/h;->l:F

    move/from16 v45, v1

    :goto_13
    iget v1, v0, LR/h;->m:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v44, 0x0

    :goto_14
    const/4 v1, 0x0

    goto :goto_15

    :cond_20
    iget v1, v0, LR/h;->m:F

    move/from16 v44, v1

    goto :goto_14

    :goto_15
    iput v1, v6, LR/r;->o:I

    iget v1, v4, LR/r;->e:F

    mul-float v29, v29, v2

    add-float v29, v29, v1

    mul-float v44, v44, v47

    add-float v44, v44, v29

    sub-float v1, v44, v8

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v6, LR/r;->e:F

    iget v1, v4, LR/r;->f:F

    mul-float/2addr v2, v7

    add-float/2addr v2, v1

    mul-float v47, v47, v45

    add-float v47, v47, v2

    sub-float v1, v47, v11

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v6, LR/r;->f:F

    iget-object v1, v0, LR/h;->f:Ljava/lang/String;

    invoke-static {v1}, LN/c;->c(Ljava/lang/String;)LN/c;

    move-result-object v1

    iput-object v1, v6, LR/r;->a:LN/c;

    iget v1, v0, LR/h;->g:I

    iput v1, v6, LR/r;->j:I

    goto/16 :goto_25

    :cond_21
    const/high16 v45, 0x40000000    # 2.0f

    iget v1, v0, LR/d;->a:I

    int-to-float v1, v1

    div-float v1, v1, v29

    iput v1, v6, LR/r;->c:F

    iget v2, v0, LR/h;->h:I

    iput v2, v6, LR/r;->b:I

    iget v2, v0, LR/h;->i:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_22

    move v2, v1

    goto :goto_16

    :cond_22
    iget v2, v0, LR/h;->i:F

    :goto_16
    iget v7, v0, LR/h;->j:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_23

    move v7, v1

    goto :goto_17

    :cond_23
    iget v7, v0, LR/h;->j:F

    :goto_17
    iget v8, v5, LR/r;->g:F

    iget v11, v4, LR/r;->g:F

    sub-float v29, v8, v11

    move/from16 v46, v1

    iget v1, v5, LR/r;->h:F

    move/from16 v47, v1

    iget v1, v4, LR/r;->h:F

    sub-float v48, v47, v1

    move/from16 v49, v1

    iget v1, v6, LR/r;->c:F

    iput v1, v6, LR/r;->d:F

    iget v1, v4, LR/r;->e:F

    div-float v50, v11, v45

    add-float v50, v50, v1

    move/from16 v51, v1

    iget v1, v4, LR/r;->f:F

    div-float v52, v49, v45

    add-float v52, v52, v1

    move/from16 v53, v1

    iget v1, v5, LR/r;->e:F

    div-float v8, v8, v45

    add-float/2addr v8, v1

    iget v1, v5, LR/r;->f:F

    div-float v47, v47, v45

    add-float v47, v47, v1

    cmpl-float v1, v50, v8

    if-lez v1, :cond_24

    move/from16 v54, v50

    move/from16 v50, v8

    move/from16 v8, v54

    :cond_24
    cmpl-float v1, v52, v47

    if-lez v1, :cond_25

    goto :goto_18

    :cond_25
    move/from16 v54, v52

    move/from16 v52, v47

    move/from16 v47, v54

    :goto_18
    sub-float v8, v8, v50

    sub-float v52, v52, v47

    mul-float v1, v8, v46

    add-float v1, v1, v51

    mul-float v29, v29, v2

    div-float v2, v29, v45

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v6, LR/r;->e:F

    mul-float v1, v52, v46

    add-float v1, v1, v53

    mul-float v48, v48, v7

    div-float v7, v48, v45

    sub-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v6, LR/r;->f:F

    add-float v11, v11, v29

    float-to-int v1, v11

    int-to-float v1, v1

    iput v1, v6, LR/r;->g:F

    add-float v1, v49, v48

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v6, LR/r;->h:F

    iget v1, v0, LR/h;->k:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_26

    move/from16 v1, v46

    goto :goto_19

    :cond_26
    iget v1, v0, LR/h;->k:F

    :goto_19
    iget v11, v0, LR/h;->n:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_27

    const/4 v11, 0x0

    :goto_1a
    move/from16 v29, v1

    goto :goto_1b

    :cond_27
    iget v11, v0, LR/h;->n:F

    goto :goto_1a

    :goto_1b
    iget v1, v0, LR/h;->l:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_28

    move/from16 v45, v46

    goto :goto_1c

    :cond_28
    iget v1, v0, LR/h;->l:F

    move/from16 v45, v1

    :goto_1c
    iget v1, v0, LR/h;->m:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v44, 0x0

    :goto_1d
    const/4 v1, 0x0

    goto :goto_1e

    :cond_29
    iget v1, v0, LR/h;->m:F

    move/from16 v44, v1

    goto :goto_1d

    :goto_1e
    iput v1, v6, LR/r;->o:I

    iget v1, v4, LR/r;->e:F

    mul-float v29, v29, v8

    add-float v29, v29, v1

    mul-float v44, v44, v52

    add-float v44, v44, v29

    sub-float v1, v44, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v6, LR/r;->e:F

    iget v1, v4, LR/r;->f:F

    mul-float/2addr v8, v11

    add-float/2addr v8, v1

    mul-float v52, v52, v45

    add-float v52, v52, v8

    sub-float v1, v52, v7

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v6, LR/r;->f:F

    iget-object v1, v0, LR/h;->f:Ljava/lang/String;

    invoke-static {v1}, LN/c;->c(Ljava/lang/String;)LN/c;

    move-result-object v1

    iput-object v1, v6, LR/r;->a:LN/c;

    iget v1, v0, LR/h;->g:I

    iput v1, v6, LR/r;->j:I

    goto/16 :goto_25

    :cond_2a
    const/high16 v45, 0x40000000    # 2.0f

    iget v1, v0, LR/d;->a:I

    int-to-float v1, v1

    div-float v1, v1, v29

    iput v1, v6, LR/r;->c:F

    iget v2, v0, LR/h;->h:I

    iput v2, v6, LR/r;->b:I

    iget v2, v0, LR/h;->i:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2b

    move v2, v1

    goto :goto_1f

    :cond_2b
    iget v2, v0, LR/h;->i:F

    :goto_1f
    iget v7, v0, LR/h;->j:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_2c

    move v7, v1

    goto :goto_20

    :cond_2c
    iget v7, v0, LR/h;->j:F

    :goto_20
    iget v8, v5, LR/r;->g:F

    iget v11, v4, LR/r;->g:F

    sub-float v29, v8, v11

    move/from16 v44, v1

    iget v1, v5, LR/r;->h:F

    move/from16 v46, v1

    iget v1, v4, LR/r;->h:F

    sub-float v47, v46, v1

    move/from16 v48, v1

    iget v1, v6, LR/r;->c:F

    iput v1, v6, LR/r;->d:F

    iget v1, v4, LR/r;->e:F

    div-float v49, v11, v45

    add-float v49, v49, v1

    move/from16 v50, v1

    iget v1, v4, LR/r;->f:F

    div-float v51, v48, v45

    add-float v51, v51, v1

    move/from16 v52, v1

    iget v1, v5, LR/r;->e:F

    div-float v8, v8, v45

    add-float/2addr v8, v1

    iget v1, v5, LR/r;->f:F

    div-float v46, v46, v45

    add-float v46, v46, v1

    sub-float v8, v8, v49

    sub-float v46, v46, v51

    mul-float v8, v8, v44

    add-float v8, v8, v50

    mul-float v29, v29, v2

    div-float v1, v29, v45

    sub-float/2addr v8, v1

    float-to-int v1, v8

    int-to-float v1, v1

    iput v1, v6, LR/r;->e:F

    mul-float v46, v46, v44

    add-float v46, v46, v52

    mul-float v47, v47, v7

    div-float v1, v47, v45

    sub-float v1, v46, v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v6, LR/r;->f:F

    add-float v11, v11, v29

    float-to-int v1, v11

    int-to-float v1, v1

    iput v1, v6, LR/r;->g:F

    add-float v1, v48, v47

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v6, LR/r;->h:F

    const/4 v1, 0x2

    iput v1, v6, LR/r;->o:I

    iget v1, v0, LR/h;->k:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2d

    iget v1, v6, LR/r;->g:F

    float-to-int v1, v1

    sub-int v1, p3, v1

    iget v2, v0, LR/h;->k:F

    int-to-float v1, v1

    mul-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    iput v1, v6, LR/r;->e:F

    :cond_2d
    iget v1, v0, LR/h;->l:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2e

    iget v1, v6, LR/r;->h:F

    float-to-int v1, v1

    sub-int v1, p4, v1

    iget v2, v0, LR/h;->l:F

    int-to-float v1, v1

    mul-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    iput v1, v6, LR/r;->f:F

    :cond_2e
    iget v1, v6, LR/r;->k:I

    iput v1, v6, LR/r;->k:I

    iget-object v1, v0, LR/h;->f:Ljava/lang/String;

    invoke-static {v1}, LN/c;->c(Ljava/lang/String;)LN/c;

    move-result-object v1

    iput-object v1, v6, LR/r;->a:LN/c;

    iget v1, v0, LR/h;->g:I

    iput v1, v6, LR/r;->j:I

    goto/16 :goto_25

    :cond_2f
    const/high16 v45, 0x40000000    # 2.0f

    iget v1, v0, LR/d;->a:I

    int-to-float v1, v1

    div-float v1, v1, v29

    iput v1, v6, LR/r;->c:F

    iget v2, v0, LR/h;->h:I

    iput v2, v6, LR/r;->b:I

    iget v2, v0, LR/h;->i:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v1

    goto :goto_21

    :cond_30
    iget v2, v0, LR/h;->i:F

    :goto_21
    iget v7, v0, LR/h;->j:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_31

    move v7, v1

    goto :goto_22

    :cond_31
    iget v7, v0, LR/h;->j:F

    :goto_22
    iget v8, v5, LR/r;->g:F

    iget v11, v4, LR/r;->g:F

    sub-float/2addr v8, v11

    iget v11, v5, LR/r;->h:F

    move/from16 v29, v1

    iget v1, v4, LR/r;->h:F

    sub-float/2addr v11, v1

    iget v1, v6, LR/r;->c:F

    iput v1, v6, LR/r;->d:F

    iget v1, v0, LR/h;->k:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_23

    :cond_32
    iget v1, v0, LR/h;->k:F

    move/from16 v29, v1

    :goto_23
    iget v1, v4, LR/r;->e:F

    move/from16 v46, v1

    iget v1, v4, LR/r;->g:F

    div-float v47, v1, v45

    add-float v47, v47, v46

    move/from16 v48, v1

    iget v1, v4, LR/r;->f:F

    move/from16 v49, v1

    iget v1, v4, LR/r;->h:F

    div-float v50, v1, v45

    add-float v50, v50, v49

    move/from16 v51, v1

    iget v1, v5, LR/r;->e:F

    move/from16 v52, v1

    iget v1, v5, LR/r;->g:F

    div-float v1, v1, v45

    add-float v1, v1, v52

    move/from16 v52, v1

    iget v1, v5, LR/r;->f:F

    move/from16 v53, v1

    iget v1, v5, LR/r;->h:F

    div-float v1, v1, v45

    add-float v1, v1, v53

    sub-float v47, v52, v47

    sub-float v1, v1, v50

    mul-float v50, v47, v29

    add-float v46, v46, v50

    mul-float/2addr v8, v2

    div-float v2, v8, v45

    move/from16 v52, v2

    sub-float v2, v46, v52

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v6, LR/r;->e:F

    mul-float v29, v29, v1

    add-float v2, v49, v29

    mul-float/2addr v11, v7

    div-float v7, v11, v45

    sub-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v6, LR/r;->f:F

    add-float v2, v48, v8

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v6, LR/r;->g:F

    add-float v2, v51, v11

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v6, LR/r;->h:F

    iget v2, v0, LR/h;->l:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x0

    goto :goto_24

    :cond_33
    iget v2, v0, LR/h;->l:F

    :goto_24
    neg-float v1, v1

    mul-float/2addr v1, v2

    mul-float v47, v47, v2

    const/4 v8, 0x1

    iput v8, v6, LR/r;->o:I

    iget v2, v4, LR/r;->e:F

    add-float v2, v2, v50

    sub-float v2, v2, v52

    float-to-int v2, v2

    int-to-float v2, v2

    iget v8, v4, LR/r;->f:F

    add-float v8, v8, v29

    sub-float/2addr v8, v7

    float-to-int v7, v8

    int-to-float v7, v7

    add-float/2addr v2, v1

    iput v2, v6, LR/r;->e:F

    add-float v7, v7, v47

    iput v7, v6, LR/r;->f:F

    iget v1, v6, LR/r;->k:I

    iput v1, v6, LR/r;->k:I

    iget-object v1, v0, LR/h;->f:Ljava/lang/String;

    invoke-static {v1}, LN/c;->c(Ljava/lang/String;)LN/c;

    move-result-object v1

    iput-object v1, v6, LR/r;->a:LN/c;

    iget v1, v0, LR/h;->g:I

    iput v1, v6, LR/r;->j:I

    :goto_25
    invoke-static {v9, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, " KeyPath position \""

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v6, LR/r;->d:F

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "\" outside of range"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "MotionController"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    neg-int v1, v1

    const/16 v22, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v9, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, v0, LR/i;->e:I

    const/4 v8, -0x1

    if-eq v0, v8, :cond_35

    iput v0, v10, LR/n;->e:I

    :cond_35
    move-object/from16 v2, v23

    move-object/from16 v1, v25

    goto :goto_26

    :cond_36
    move-object/from16 v43, v1

    move-object/from16 v42, v2

    move-object/from16 v38, v4

    move-object/from16 v41, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v11

    move-object/from16 v4, v29

    instance-of v1, v0, LR/f;

    if-eqz v1, :cond_37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, LR/d;->d(Ljava/util/HashSet;)V

    move-object/from16 v2, v23

    goto :goto_26

    :cond_37
    move-object/from16 v1, v25

    instance-of v2, v0, LR/j;

    if-eqz v2, :cond_38

    move-object/from16 v2, v23

    invoke-virtual {v0, v2}, LR/d;->d(Ljava/util/HashSet;)V

    goto :goto_26

    :cond_38
    move-object/from16 v2, v23

    instance-of v6, v0, LR/k;

    if-eqz v6, :cond_3a

    if-nez v35, :cond_39

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    :cond_39
    move-object/from16 v6, v35

    check-cast v0, LR/k;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v35, v6

    :goto_26
    move-object/from16 v6, v26

    goto :goto_27

    :cond_3a
    move-object/from16 v6, v26

    invoke-virtual {v0, v6}, LR/d;->f(Ljava/util/HashMap;)V

    invoke-virtual {v0, v3}, LR/d;->d(Ljava/util/HashSet;)V

    :goto_27
    move-object/from16 v25, v1

    move-object/from16 v23, v2

    move-object/from16 v29, v4

    move-object/from16 v26, v6

    move-object/from16 v6, v36

    move-object/from16 v4, v38

    move-object/from16 v11, v39

    move-object/from16 v8, v40

    move-object/from16 v7, v41

    move-object/from16 v2, v42

    move-object/from16 v1, v43

    goto/16 :goto_4

    :cond_3b
    move-object/from16 v0, v35

    :goto_28
    move-object/from16 v43, v1

    move-object/from16 v42, v2

    move-object/from16 v38, v4

    move-object/from16 v36, v6

    move-object/from16 v41, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v11

    move-object/from16 v2, v23

    move-object/from16 v1, v25

    move-object/from16 v6, v26

    move-object/from16 v4, v29

    goto :goto_29

    :cond_3c
    const/4 v0, 0x0

    goto :goto_28

    :goto_29
    if-eqz v0, :cond_3d

    const/4 v7, 0x0

    new-array v8, v7, [LR/k;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR/k;

    iput-object v0, v10, LR/n;->A:[LR/k;

    :cond_3d
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const-string v7, "CUSTOM,"

    const-string v8, ","

    if-nez v0, :cond_58

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v10, LR/n;->y:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_41

    move-object/from16 p3, v0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v25, v1

    const/16 v22, 0x1

    aget-object v1, v23, v22

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_40

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v29, v2

    move-object/from16 v2, v26

    check-cast v2, LR/d;

    move-object/from16 v26, v9

    iget-object v9, v2, LR/d;->d:Ljava/util/HashMap;

    if-nez v9, :cond_3f

    :cond_3e
    :goto_2c
    move-object/from16 v9, v26

    move-object/from16 v2, v29

    goto :goto_2b

    :cond_3f
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/a;

    if-eqz v9, :cond_3e

    iget v2, v2, LR/d;->a:I

    invoke-virtual {v0, v2, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_2c

    :cond_40
    move-object/from16 v29, v2

    move-object/from16 v26, v9

    new-instance v1, LQ/d$b;

    invoke-direct {v1}, LQ/d;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v22, 0x1

    aget-object v2, v2, v22

    iput-object v0, v1, LQ/d$b;->f:Landroid/util/SparseArray;

    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v35, v32

    move-object/from16 v3, v36

    move-object/from16 v0, v39

    move-object/from16 v9, v40

    move-object/from16 v2, v41

    move-object v4, v1

    move-object/from16 v32, v5

    move-object/from16 v1, v38

    goto/16 :goto_36

    :cond_41
    move-object/from16 p3, v0

    move-object/from16 v25, v1

    move-object/from16 v29, v2

    move-object/from16 v26, v9

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_2d
    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    move-object/from16 v9, v40

    move-object/from16 v2, v41

    :goto_2e
    move-object/from16 v32, v5

    :goto_2f
    move-object/from16 v5, v28

    :goto_30
    const/16 v28, -0x1

    goto/16 :goto_34

    :sswitch_0
    const-string/jumbo v0, "waveOffset"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_2d

    :cond_42
    const/16 v0, 0xf

    goto :goto_31

    :sswitch_1
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_2d

    :cond_43
    const/16 v0, 0xe

    goto :goto_31

    :sswitch_2
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_2d

    :cond_44
    const/16 v0, 0xd

    goto :goto_31

    :sswitch_3
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_2d

    :cond_45
    const/16 v0, 0xc

    goto :goto_31

    :sswitch_4
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_2d

    :cond_46
    const/16 v0, 0xb

    :goto_31
    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    move-object/from16 v9, v40

    move-object/from16 v2, v41

    move-object/from16 v32, v5

    move-object/from16 v5, v28

    move/from16 v28, v0

    move-object/from16 v0, v39

    goto/16 :goto_34

    :sswitch_5
    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    move-object/from16 v43, v0

    goto :goto_2d

    :cond_47
    const/16 v1, 0xa

    move-object/from16 v43, v0

    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    move-object/from16 v0, v39

    move-object/from16 v9, v40

    move-object/from16 v2, v41

    move-object/from16 v32, v5

    move-object/from16 v5, v28

    move/from16 v28, v1

    move-object/from16 v1, v38

    goto/16 :goto_34

    :sswitch_6
    move-object/from16 v1, v42

    move-object/from16 v0, v43

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    goto :goto_32

    :cond_48
    const/16 v2, 0x9

    goto :goto_33

    :sswitch_7
    move-object/from16 v1, v42

    move-object/from16 v0, v43

    const-string/jumbo v2, "waveVariesBy"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    :goto_32
    move-object/from16 v43, v0

    move-object/from16 v42, v1

    goto/16 :goto_2d

    :cond_49
    const/16 v2, 0x8

    :goto_33
    move-object/from16 v43, v0

    move-object/from16 v42, v1

    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    move-object/from16 v9, v40

    move-object/from16 v32, v5

    move-object/from16 v5, v28

    move/from16 v28, v2

    move-object/from16 v2, v41

    goto/16 :goto_34

    :sswitch_8
    move-object/from16 v2, v41

    move-object/from16 v1, v42

    move-object/from16 v0, v43

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4a

    move-object/from16 v43, v0

    move-object/from16 v42, v1

    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    move-object/from16 v9, v40

    goto/16 :goto_2e

    :cond_4a
    const/4 v9, 0x7

    move-object/from16 v43, v0

    move-object/from16 v42, v1

    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    move-object/from16 v32, v5

    move-object/from16 v5, v28

    move/from16 v28, v9

    move-object/from16 v9, v40

    goto/16 :goto_34

    :sswitch_9
    move-object/from16 v9, v40

    move-object/from16 v2, v41

    move-object/from16 v1, v42

    move-object/from16 v0, v43

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4b

    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    goto/16 :goto_2e

    :cond_4b
    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    move-object/from16 v32, v5

    move-object/from16 v5, v28

    const/16 v28, 0x6

    goto/16 :goto_34

    :sswitch_a
    move-object/from16 v0, v39

    move-object/from16 v9, v40

    move-object/from16 v2, v41

    move-object/from16 v1, v42

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4c

    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    goto/16 :goto_2e

    :cond_4c
    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    move-object/from16 v32, v5

    move-object/from16 v5, v28

    move/from16 v28, v16

    goto/16 :goto_34

    :sswitch_b
    move-object/from16 v1, v38

    move-object/from16 v0, v39

    move-object/from16 v9, v40

    move-object/from16 v2, v41

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4d

    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    goto/16 :goto_2e

    :cond_4d
    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    move-object/from16 v32, v5

    move-object/from16 v5, v28

    move/from16 v28, v17

    goto/16 :goto_34

    :sswitch_c
    move-object/from16 v23, v3

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    move-object/from16 v9, v40

    move-object/from16 v2, v41

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_4e

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    goto/16 :goto_2e

    :cond_4e
    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v32, v5

    move-object/from16 v5, v28

    const/16 v28, 0x3

    goto/16 :goto_34

    :sswitch_d
    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    move-object/from16 v9, v40

    move-object/from16 v2, v41

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_4f

    goto/16 :goto_2e

    :cond_4f
    move-object/from16 v32, v5

    move-object/from16 v5, v28

    const/16 v28, 0x2

    goto :goto_34

    :sswitch_e
    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    move-object/from16 v9, v40

    move-object/from16 v2, v41

    move-object/from16 v32, v5

    move-object/from16 v5, v31

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_50

    move-object/from16 v31, v5

    goto/16 :goto_2f

    :cond_50
    move-object/from16 v31, v5

    move-object/from16 v5, v28

    const/16 v28, 0x1

    goto :goto_34

    :sswitch_f
    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    move-object/from16 v9, v40

    move-object/from16 v2, v41

    move-object/from16 v32, v5

    move-object/from16 v5, v28

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_51

    goto/16 :goto_30

    :cond_51
    const/16 v28, 0x0

    :goto_34
    packed-switch v28, :pswitch_data_0

    move-object/from16 v35, v4

    move-object/from16 v28, v5

    const/4 v4, 0x0

    goto/16 :goto_36

    :pswitch_0
    new-instance v28, LQ/d$a;

    invoke-direct/range {v28 .. v28}, LQ/d;-><init>()V

    :goto_35
    move-object/from16 v35, v4

    move-object/from16 v4, v28

    move-object/from16 v28, v5

    goto/16 :goto_36

    :pswitch_1
    new-instance v28, LQ/d$a;

    invoke-direct/range {v28 .. v28}, LQ/d;-><init>()V

    goto :goto_35

    :pswitch_2
    new-instance v28, LQ/d$d;

    invoke-direct/range {v28 .. v28}, LQ/d$d;-><init>()V

    goto :goto_35

    :pswitch_3
    new-instance v28, LQ/d$c;

    invoke-direct/range {v28 .. v28}, LQ/d;-><init>()V

    goto :goto_35

    :pswitch_4
    new-instance v28, LQ/d$h;

    invoke-direct/range {v28 .. v28}, LQ/d;-><init>()V

    goto :goto_35

    :pswitch_5
    new-instance v28, LQ/d$f;

    invoke-direct/range {v28 .. v28}, LQ/d;-><init>()V

    goto :goto_35

    :pswitch_6
    new-instance v28, LQ/d$e;

    invoke-direct/range {v28 .. v28}, LQ/d;-><init>()V

    goto :goto_35

    :pswitch_7
    new-instance v28, LQ/d$a;

    invoke-direct/range {v28 .. v28}, LQ/d;-><init>()V

    goto :goto_35

    :pswitch_8
    new-instance v28, LQ/d$l;

    invoke-direct/range {v28 .. v28}, LQ/d;-><init>()V

    goto :goto_35

    :pswitch_9
    new-instance v28, LQ/d$k;

    invoke-direct/range {v28 .. v28}, LQ/d;-><init>()V

    goto :goto_35

    :pswitch_a
    move-object/from16 v28, v5

    new-instance v5, LQ/d$g;

    invoke-direct {v5}, LQ/d;-><init>()V

    move-object/from16 v35, v4

    const/4 v4, 0x0

    iput-boolean v4, v5, LQ/d$g;->f:Z

    move-object v4, v5

    goto :goto_36

    :pswitch_b
    move-object/from16 v35, v4

    move-object/from16 v28, v5

    new-instance v4, LQ/d$o;

    invoke-direct {v4}, LQ/d;-><init>()V

    goto :goto_36

    :pswitch_c
    move-object/from16 v35, v4

    move-object/from16 v28, v5

    new-instance v4, LQ/d$n;

    invoke-direct {v4}, LQ/d;-><init>()V

    goto :goto_36

    :pswitch_d
    move-object/from16 v35, v4

    move-object/from16 v28, v5

    new-instance v4, LQ/d$m;

    invoke-direct {v4}, LQ/d;-><init>()V

    goto :goto_36

    :pswitch_e
    move-object/from16 v35, v4

    move-object/from16 v28, v5

    new-instance v4, LQ/d$j;

    invoke-direct {v4}, LQ/d;-><init>()V

    goto :goto_36

    :pswitch_f
    move-object/from16 v35, v4

    move-object/from16 v28, v5

    new-instance v4, LQ/d$i;

    invoke-direct {v4}, LQ/d;-><init>()V

    :goto_36
    if-nez v4, :cond_52

    :goto_37
    move-object/from16 v39, v0

    move-object/from16 v38, v1

    move-object/from16 v41, v2

    move-object/from16 v36, v3

    move-object/from16 v40, v9

    move-object/from16 v3, v23

    move-object/from16 v1, v25

    move-object/from16 v9, v26

    move-object/from16 v2, v29

    move-object/from16 v5, v32

    move-object/from16 v4, v34

    move-object/from16 v32, v35

    move-object/from16 v0, p3

    goto/16 :goto_2a

    :cond_52
    iput-object v11, v4, LN/l;->e:Ljava/lang/String;

    iget-object v5, v10, LR/n;->y:Ljava/util/HashMap;

    invoke-virtual {v5, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_53
    move-object/from16 v25, v1

    move-object/from16 v29, v2

    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v26, v9

    move-object/from16 v35, v32

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    move-object/from16 v9, v40

    move-object/from16 v2, v41

    move-object/from16 v32, v5

    if-eqz v30, :cond_55

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_54
    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR/d;

    instance-of v11, v5, LR/e;

    if-eqz v11, :cond_54

    iget-object v11, v10, LR/n;->y:Ljava/util/HashMap;

    invoke-virtual {v5, v11}, LR/d;->a(Ljava/util/HashMap;)V

    goto :goto_38

    :cond_55
    iget-object v4, v10, LR/n;->y:Ljava/util/HashMap;

    move-object/from16 v5, v27

    const/4 v11, 0x0

    invoke-virtual {v5, v4, v11}, LR/l;->a(Ljava/util/HashMap;I)V

    iget-object v4, v10, LR/n;->y:Ljava/util/HashMap;

    const/16 v5, 0x64

    move-object/from16 v11, v24

    invoke-virtual {v11, v4, v5}, LR/l;->a(Ljava/util/HashMap;I)V

    iget-object v4, v10, LR/n;->y:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_56

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_56

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_3a
    move-object/from16 p3, v4

    goto :goto_3b

    :cond_56
    const/4 v11, 0x0

    goto :goto_3a

    :goto_3b
    iget-object v4, v10, LR/n;->y:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN/l;

    if-eqz v4, :cond_57

    invoke-virtual {v4, v11}, LN/l;->c(I)V

    :cond_57
    move-object/from16 v4, p3

    goto :goto_39

    :cond_58
    move-object/from16 v25, v1

    move-object/from16 v29, v2

    move-object/from16 v23, v3

    move-object/from16 v34, v4

    move-object/from16 v26, v9

    move-object/from16 v35, v32

    move-object/from16 v3, v36

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    move-object/from16 v9, v40

    move-object/from16 v2, v41

    move-object/from16 v32, v5

    :cond_59
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_71

    iget-object v4, v10, LR/n;->x:Ljava/util/HashMap;

    if-nez v4, :cond_5a

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v10, LR/n;->x:Ljava/util/HashMap;

    :cond_5a
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v11, v10, LR/n;->x:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5b

    goto :goto_3c

    :cond_5b
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5f

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 p3, v4

    const/16 v22, 0x1

    aget-object v4, v24, v22

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_3d
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 p4, v7

    move-object/from16 v7, v27

    check-cast v7, LR/d;

    move-object/from16 v27, v6

    iget-object v6, v7, LR/d;->d:Ljava/util/HashMap;

    if-nez v6, :cond_5d

    :cond_5c
    :goto_3e
    move-object/from16 v7, p4

    move-object/from16 v6, v27

    goto :goto_3d

    :cond_5d
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/a;

    if-eqz v6, :cond_5c

    iget v7, v7, LR/d;->a:I

    invoke-virtual {v11, v7, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_3e

    :cond_5e
    move-object/from16 v27, v6

    move-object/from16 p4, v7

    new-instance v4, LQ/e$b;

    invoke-direct {v4}, LQ/e;-><init>()V

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, v4, LQ/e$b;->m:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v22, 0x1

    aget-object v6, v6, v22

    iput-object v6, v4, LQ/e$b;->k:Ljava/lang/String;

    iput-object v11, v4, LQ/e$b;->l:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v24, v1

    move-object v11, v4

    move-object/from16 v7, v28

    move-object/from16 v6, v31

    move-object/from16 v4, v35

    :goto_3f
    move-wide/from16 v0, p1

    goto/16 :goto_48

    :cond_5f
    move-object/from16 p3, v4

    move-object/from16 v27, v6

    move-object/from16 p4, v7

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :goto_40
    move-object/from16 v7, v28

    move-object/from16 v6, v31

    move-object/from16 v4, v35

    :goto_41
    const/4 v11, -0x1

    goto/16 :goto_44

    :sswitch_10
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    goto :goto_40

    :cond_60
    const/16 v4, 0xb

    goto :goto_42

    :sswitch_11
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    goto :goto_40

    :cond_61
    const/16 v4, 0xa

    goto :goto_42

    :sswitch_12
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    goto :goto_40

    :cond_62
    const/16 v4, 0x9

    goto :goto_42

    :sswitch_13
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    goto :goto_40

    :cond_63
    const/16 v4, 0x8

    goto :goto_42

    :sswitch_14
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    goto :goto_40

    :cond_64
    const/4 v4, 0x7

    :goto_42
    move v11, v4

    goto :goto_43

    :sswitch_15
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    goto :goto_40

    :cond_65
    move-object/from16 v7, v28

    move-object/from16 v6, v31

    move-object/from16 v4, v35

    const/4 v11, 0x6

    goto/16 :goto_44

    :sswitch_16
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    goto :goto_40

    :cond_66
    move/from16 v11, v16

    goto :goto_43

    :sswitch_17
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    goto :goto_40

    :cond_67
    move/from16 v11, v17

    :goto_43
    move-object/from16 v7, v28

    move-object/from16 v6, v31

    move-object/from16 v4, v35

    goto :goto_44

    :sswitch_18
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68

    goto :goto_40

    :cond_68
    move-object/from16 v7, v28

    move-object/from16 v6, v31

    move-object/from16 v4, v35

    const/4 v11, 0x3

    goto :goto_44

    :sswitch_19
    move-object/from16 v4, v35

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v7, v28

    if-nez v6, :cond_69

    move-object/from16 v6, v31

    goto :goto_41

    :cond_69
    move-object/from16 v6, v31

    const/4 v11, 0x2

    goto :goto_44

    :sswitch_1a
    move-object/from16 v6, v31

    move-object/from16 v4, v35

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6a

    move-object/from16 v7, v28

    goto/16 :goto_41

    :cond_6a
    move-object/from16 v7, v28

    const/4 v11, 0x1

    goto :goto_44

    :sswitch_1b
    move-object/from16 v7, v28

    move-object/from16 v6, v31

    move-object/from16 v4, v35

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6b

    goto/16 :goto_41

    :cond_6b
    const/4 v11, 0x0

    :goto_44
    packed-switch v11, :pswitch_data_1

    move-object/from16 v39, v0

    move-object/from16 v24, v1

    const/4 v11, 0x0

    goto/16 :goto_3f

    :pswitch_10
    new-instance v11, LQ/e$a;

    invoke-direct {v11}, LQ/e;-><init>()V

    :goto_45
    move-object/from16 v39, v0

    :goto_46
    move-object/from16 v24, v1

    move-wide/from16 v0, p1

    goto :goto_47

    :pswitch_11
    new-instance v11, LQ/e$d;

    invoke-direct {v11}, LQ/e$d;-><init>()V

    goto :goto_45

    :pswitch_12
    new-instance v11, LQ/e$c;

    invoke-direct {v11}, LQ/e;-><init>()V

    goto :goto_45

    :pswitch_13
    new-instance v11, LQ/e$f;

    invoke-direct {v11}, LQ/e;-><init>()V

    goto :goto_45

    :pswitch_14
    new-instance v11, LQ/e$j;

    invoke-direct {v11}, LQ/e;-><init>()V

    goto :goto_45

    :pswitch_15
    new-instance v11, LQ/e$i;

    invoke-direct {v11}, LQ/e;-><init>()V

    goto :goto_45

    :pswitch_16
    new-instance v11, LQ/e$e;

    invoke-direct {v11}, LQ/e;-><init>()V

    move-object/from16 v39, v0

    const/4 v0, 0x0

    iput-boolean v0, v11, LQ/e$e;->k:Z

    goto :goto_46

    :pswitch_17
    move-object/from16 v39, v0

    new-instance v11, LQ/e$m;

    invoke-direct {v11}, LQ/e;-><init>()V

    goto :goto_46

    :pswitch_18
    move-object/from16 v39, v0

    new-instance v11, LQ/e$l;

    invoke-direct {v11}, LQ/e;-><init>()V

    goto :goto_46

    :pswitch_19
    move-object/from16 v39, v0

    new-instance v11, LQ/e$k;

    invoke-direct {v11}, LQ/e;-><init>()V

    goto :goto_46

    :pswitch_1a
    move-object/from16 v39, v0

    new-instance v11, LQ/e$h;

    invoke-direct {v11}, LQ/e;-><init>()V

    goto :goto_46

    :pswitch_1b
    move-object/from16 v39, v0

    new-instance v11, LQ/e$g;

    invoke-direct {v11}, LQ/e;-><init>()V

    goto :goto_46

    :goto_47
    iput-wide v0, v11, LN/q;->i:J

    :goto_48
    if-nez v11, :cond_6c

    :goto_49
    move-object/from16 v35, v4

    move-object/from16 v31, v6

    move-object/from16 v28, v7

    move-object/from16 v1, v24

    move-object/from16 v6, v27

    move-object/from16 v0, v39

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    goto/16 :goto_3c

    :cond_6c
    iput-object v5, v11, LN/q;->f:Ljava/lang/String;

    iget-object v0, v10, LR/n;->x:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :cond_6d
    move-object/from16 v27, v6

    move-object/from16 p4, v7

    if-eqz v30, :cond_6f

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6e
    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR/d;

    instance-of v2, v1, LR/j;

    if-eqz v2, :cond_6e

    check-cast v1, LR/j;

    iget-object v2, v10, LR/n;->x:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, LR/j;->g(Ljava/util/HashMap;)V

    goto :goto_4a

    :cond_6f
    iget-object v0, v10, LR/n;->x:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v6, v27

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4c

    :cond_70
    const/4 v2, 0x0

    :goto_4c
    iget-object v3, v10, LR/n;->x:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/e;

    invoke-virtual {v1, v2}, LN/q;->c(I)V

    move-object/from16 v27, v6

    goto :goto_4b

    :cond_71
    move-object/from16 p4, v7

    :cond_72
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v20, 0x2

    add-int/lit8 v3, v0, 0x2

    new-array v1, v3, [LR/r;

    const/4 v4, 0x0

    aput-object v34, v1, v4

    const/16 v22, 0x1

    add-int/lit8 v0, v0, 0x1

    aput-object v32, v1, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_73

    iget v0, v10, LR/n;->e:I

    const/4 v8, -0x1

    if-ne v0, v8, :cond_73

    iput v4, v10, LR/n;->e:I

    :cond_73
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR/r;

    const/16 v22, 0x1

    add-int/lit8 v5, v2, 0x1

    aput-object v4, v1, v2

    move v2, v5

    goto :goto_4d

    :cond_74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v2, v32

    iget-object v2, v2, LR/r;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v5, v34

    iget-object v6, v5, LR/r;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v8, v23

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_76

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_75
    move-object/from16 v7, p4

    move-object/from16 v8, v23

    :cond_76
    :goto_4f
    move-object/from16 v34, v5

    move-object/from16 p4, v7

    move-object/from16 v23, v8

    goto :goto_4e

    :cond_77
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v10, LR/n;->r:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, v10, LR/n;->s:[I

    const/4 v0, 0x0

    :goto_50
    iget-object v2, v10, LR/n;->r:[Ljava/lang/String;

    array-length v4, v2

    if-ge v0, v4, :cond_7a

    aget-object v2, v2, v0

    iget-object v4, v10, LR/n;->s:[I

    const/16 v21, 0x0

    aput v21, v4, v0

    const/4 v4, 0x0

    :goto_51
    if-ge v4, v3, :cond_78

    aget-object v5, v1, v4

    iget-object v5, v5, LR/r;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    aget-object v5, v1, v4

    iget-object v5, v5, LR/r;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/a;

    if-eqz v5, :cond_79

    iget-object v2, v10, LR/n;->s:[I

    aget v4, v2, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/a;->c()I

    move-result v5

    add-int/2addr v5, v4

    aput v5, v2, v0

    :cond_78
    const/16 v22, 0x1

    goto :goto_52

    :cond_79
    const/16 v22, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_7a
    const/16 v21, 0x0

    aget-object v0, v1, v21

    iget v0, v0, LR/r;->j:I

    const/4 v8, -0x1

    if-eq v0, v8, :cond_7b

    const/4 v0, 0x1

    goto :goto_53

    :cond_7b
    const/4 v0, 0x0

    :goto_53
    array-length v2, v2

    const/16 v33, 0x12

    add-int v2, v33, v2

    new-array v4, v2, [Z

    const/4 v5, 0x1

    :goto_54
    if-ge v5, v3, :cond_7c

    aget-object v6, v1, v5

    const/16 v22, 0x1

    add-int/lit8 v7, v5, -0x1

    aget-object v7, v1, v7

    iget v8, v6, LR/r;->e:F

    iget v9, v7, LR/r;->e:F

    invoke-static {v8, v9}, LR/r;->c(FF)Z

    move-result v8

    iget v9, v6, LR/r;->f:F

    iget v11, v7, LR/r;->f:F

    invoke-static {v9, v11}, LR/r;->c(FF)Z

    move-result v9

    const/16 v21, 0x0

    aget-boolean v11, v4, v21

    iget v12, v6, LR/r;->d:F

    iget v13, v7, LR/r;->d:F

    invoke-static {v12, v13}, LR/r;->c(FF)Z

    move-result v12

    or-int/2addr v11, v12

    aput-boolean v11, v4, v21

    const/16 v22, 0x1

    aget-boolean v11, v4, v22

    or-int/2addr v8, v9

    or-int/2addr v8, v0

    or-int v9, v11, v8

    aput-boolean v9, v4, v22

    const/16 v20, 0x2

    aget-boolean v9, v4, v20

    or-int/2addr v8, v9

    aput-boolean v8, v4, v20

    const/16 v19, 0x3

    aget-boolean v8, v4, v19

    iget v9, v6, LR/r;->g:F

    iget v11, v7, LR/r;->g:F

    invoke-static {v9, v11}, LR/r;->c(FF)Z

    move-result v9

    or-int/2addr v8, v9

    aput-boolean v8, v4, v19

    aget-boolean v8, v4, v17

    iget v6, v6, LR/r;->h:F

    iget v7, v7, LR/r;->h:F

    invoke-static {v6, v7}, LR/r;->c(FF)Z

    move-result v6

    or-int/2addr v6, v8

    aput-boolean v6, v4, v17

    const/16 v22, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    :cond_7c
    const/16 v22, 0x1

    move/from16 v5, v22

    const/4 v0, 0x0

    :goto_55
    if-ge v5, v2, :cond_7e

    aget-boolean v6, v4, v5

    if-eqz v6, :cond_7d

    add-int/lit8 v0, v0, 0x1

    :cond_7d
    add-int/lit8 v5, v5, 0x1

    const/16 v22, 0x1

    goto :goto_55

    :cond_7e
    new-array v5, v0, [I

    iput-object v5, v10, LR/n;->o:[I

    const/4 v8, 0x2

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v5, v0, [D

    iput-object v5, v10, LR/n;->p:[D

    new-array v0, v0, [D

    iput-object v0, v10, LR/n;->q:[D

    const/4 v0, 0x0

    const/4 v5, 0x1

    :goto_56
    if-ge v5, v2, :cond_80

    aget-boolean v6, v4, v5

    if-eqz v6, :cond_7f

    iget-object v6, v10, LR/n;->o:[I

    const/16 v22, 0x1

    add-int/lit8 v7, v0, 0x1

    aput v5, v6, v0

    move v0, v7

    goto :goto_57

    :cond_7f
    const/16 v22, 0x1

    :goto_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    :cond_80
    const/16 v22, 0x1

    iget-object v0, v10, LR/n;->o:[I

    array-length v0, v0

    const/4 v8, 0x2

    new-array v2, v8, [I

    aput v0, v2, v22

    const/16 v21, 0x0

    aput v3, v2, v21

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    new-array v4, v3, [D

    const/4 v5, 0x0

    :goto_58
    if-ge v5, v3, :cond_83

    aget-object v6, v1, v5

    aget-object v7, v2, v5

    iget-object v8, v10, LR/n;->o:[I

    iget v9, v6, LR/r;->d:F

    iget v11, v6, LR/r;->e:F

    iget v12, v6, LR/r;->f:F

    iget v13, v6, LR/r;->g:F

    iget v14, v6, LR/r;->h:F

    iget v6, v6, LR/r;->i:F

    move-object/from16 v23, v1

    const/4 v15, 0x6

    new-array v1, v15, [F

    const/16 v21, 0x0

    aput v9, v1, v21

    const/16 v22, 0x1

    aput v11, v1, v22

    const/16 v20, 0x2

    aput v12, v1, v20

    const/16 v19, 0x3

    aput v13, v1, v19

    aput v14, v1, v17

    aput v6, v1, v16

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_59
    array-length v11, v8

    if-ge v6, v11, :cond_82

    aget v11, v8, v6

    if-ge v11, v15, :cond_81

    add-int/lit8 v12, v9, 0x1

    aget v11, v1, v11

    float-to-double v13, v11

    aput-wide v13, v7, v9

    move v9, v12

    :cond_81
    add-int/lit8 v6, v6, 0x1

    const/4 v15, 0x6

    goto :goto_59

    :cond_82
    aget-object v1, v23, v5

    iget v1, v1, LR/r;->c:F

    float-to-double v6, v1

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v23

    goto :goto_58

    :cond_83
    move-object/from16 v23, v1

    const/4 v1, 0x0

    :goto_5a
    iget-object v5, v10, LR/n;->o:[I

    array-length v6, v5

    if-ge v1, v6, :cond_85

    aget v5, v5, v1

    const/4 v15, 0x6

    if-ge v5, v15, :cond_84

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LR/r;->r:[Ljava/lang/String;

    iget-object v7, v10, LR/n;->o:[I

    aget v7, v7, v1

    aget-object v6, v6, v7

    const-string v7, " ["

    invoke-static {v5, v6, v7}, LS1/h;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :goto_5b
    if-ge v6, v3, :cond_84

    invoke-static {v5}, LF1/E;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v2, v6

    aget-wide v7, v7, v1

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v22, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5b

    :cond_84
    const/16 v22, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_85
    const/16 v22, 0x1

    iget-object v1, v10, LR/n;->r:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [LN/b;

    iput-object v1, v10, LR/n;->j:[LN/b;

    const/4 v1, 0x0

    :goto_5c
    iget-object v5, v10, LR/n;->r:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_8d

    aget-object v5, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_5d
    if-ge v6, v3, :cond_8c

    aget-object v11, v23, v6

    iget-object v11, v11, LR/r;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8b

    if-nez v9, :cond_87

    new-array v8, v3, [D

    aget-object v9, v23, v6

    iget-object v9, v9, LR/r;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/a;

    if-nez v9, :cond_86

    const/4 v9, 0x0

    :goto_5e
    const/4 v11, 0x2

    goto :goto_5f

    :cond_86
    invoke-virtual {v9}, Landroidx/constraintlayout/widget/a;->c()I

    move-result v9

    goto :goto_5e

    :goto_5f
    new-array v12, v11, [I

    const/16 v22, 0x1

    aput v9, v12, v22

    const/16 v21, 0x0

    aput v3, v12, v21

    invoke-static {v0, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    :cond_87
    aget-object v11, v23, v6

    iget v12, v11, LR/r;->c:F

    float-to-double v12, v12

    aput-wide v12, v8, v7

    aget-object v12, v9, v7

    iget-object v11, v11, LR/r;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/a;

    if-nez v11, :cond_88

    const/16 v22, 0x1

    goto :goto_60

    :cond_88
    invoke-virtual {v11}, Landroidx/constraintlayout/widget/a;->c()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8a

    invoke-virtual {v11}, Landroidx/constraintlayout/widget/a;->a()F

    move-result v11

    move/from16 v22, v14

    float-to-double v14, v11

    const/16 v21, 0x0

    aput-wide v14, v12, v21

    :cond_89
    :goto_60
    move/from16 v17, v1

    move-object/from16 p1, v5

    move/from16 v18, v6

    goto :goto_62

    :cond_8a
    move/from16 v22, v14

    invoke-virtual {v11}, Landroidx/constraintlayout/widget/a;->c()I

    move-result v13

    new-array v14, v13, [F

    invoke-virtual {v11, v14}, Landroidx/constraintlayout/widget/a;->b([F)V

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_61
    if-ge v11, v13, :cond_89

    add-int/lit8 v16, v15, 0x1

    move/from16 v17, v1

    aget v1, v14, v11

    move-object/from16 p1, v5

    move/from16 v18, v6

    float-to-double v5, v1

    aput-wide v5, v12, v15

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, p1

    move/from16 v15, v16

    move/from16 v1, v17

    move/from16 v6, v18

    goto :goto_61

    :goto_62
    add-int/lit8 v7, v7, 0x1

    goto :goto_63

    :cond_8b
    move/from16 v17, v1

    move-object/from16 p1, v5

    move/from16 v18, v6

    const/16 v22, 0x1

    :goto_63
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v5, p1

    move/from16 v1, v17

    goto/16 :goto_5d

    :cond_8c
    move/from16 v17, v1

    const/16 v22, 0x1

    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    invoke-static {v9, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    iget-object v6, v10, LR/n;->j:[LN/b;

    add-int/lit8 v7, v17, 0x1

    iget v8, v10, LR/n;->e:I

    invoke-static {v8, v1, v5}, LN/b;->a(I[D[[D)LN/b;

    move-result-object v1

    aput-object v1, v6, v7

    move v1, v7

    goto/16 :goto_5c

    :cond_8d
    iget-object v1, v10, LR/n;->j:[LN/b;

    iget v5, v10, LR/n;->e:I

    invoke-static {v5, v4, v2}, LN/b;->a(I[D[[D)LN/b;

    move-result-object v2

    const/16 v21, 0x0

    aput-object v2, v1, v21

    aget-object v1, v23, v21

    iget v1, v1, LR/r;->j:I

    const/4 v8, -0x1

    if-eq v1, v8, :cond_8f

    new-array v1, v3, [I

    new-array v2, v3, [D

    const/4 v8, 0x2

    new-array v4, v8, [I

    const/16 v22, 0x1

    aput v8, v4, v22

    aput v3, v4, v21

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v4, 0x0

    :goto_64
    if-ge v4, v3, :cond_8e

    aget-object v5, v23, v4

    iget v6, v5, LR/r;->j:I

    aput v6, v1, v4

    iget v6, v5, LR/r;->c:F

    float-to-double v6, v6

    aput-wide v6, v2, v4

    aget-object v6, v0, v4

    iget v7, v5, LR/r;->e:F

    float-to-double v7, v7

    const/16 v21, 0x0

    aput-wide v7, v6, v21

    iget v5, v5, LR/r;->f:F

    float-to-double v7, v5

    const/16 v22, 0x1

    aput-wide v7, v6, v22

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    :cond_8e
    new-instance v3, LN/a;

    invoke-direct {v3, v1, v2, v0}, LN/a;-><init>([I[D[[D)V

    iput-object v3, v10, LR/n;->k:LN/a;

    :cond_8f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v10, LR/n;->z:Ljava/util/HashMap;

    if-eqz v30, :cond_95

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v37, 0x7fc00000    # Float.NaN

    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, LQ/c;->d(Ljava/lang/String;)LQ/c;

    move-result-object v2

    if-nez v2, :cond_90

    goto :goto_65

    :cond_90
    iget v3, v2, LN/f;->e:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_91

    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-virtual {v10}, LR/n;->c()F

    move-result v3

    move/from16 v37, v3

    :cond_91
    iput-object v1, v2, LN/f;->b:Ljava/lang/String;

    iget-object v3, v10, LR/n;->z:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :cond_92
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_93
    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR/d;

    instance-of v2, v1, LR/f;

    if-eqz v2, :cond_93

    check-cast v1, LR/f;

    iget-object v2, v10, LR/n;->z:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, LR/f;->g(Ljava/util/HashMap;)V

    goto :goto_66

    :cond_94
    iget-object v0, v10, LR/n;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/c;

    invoke-virtual {v1}, LN/f;->c()V

    goto :goto_67

    :cond_95
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_f
        -0x4a771f65 -> :sswitch_e
        -0x490b9c39 -> :sswitch_d
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x2f893320 -> :sswitch_7
        -0x2d5a2d1e -> :sswitch_6
        -0x2d5a2d1d -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4a771f66 -> :sswitch_1b
        -0x4a771f65 -> :sswitch_1a
        -0x490b9c39 -> :sswitch_19
        -0x490b9c38 -> :sswitch_18
        -0x490b9c37 -> :sswitch_17
        -0x3bab3dd3 -> :sswitch_16
        -0x3621dfb2 -> :sswitch_15
        -0x3621dfb1 -> :sswitch_14
        -0x266f082 -> :sswitch_13
        -0x42d1a3 -> :sswitch_12
        0x2382115 -> :sswitch_11
        0x589b15e -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " start: x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LR/n;->f:LR/r;

    iget v2, v1, LR/r;->e:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, LR/r;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " end: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LR/n;->g:LR/r;

    iget v1, p0, LR/r;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LR/r;->f:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
