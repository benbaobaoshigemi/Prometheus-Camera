.class public final LK2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = -0x1

.field public static b:I = -0x1

.field public static c:Ljava/lang/Boolean; = null

.field public static d:Ljava/lang/Boolean; = null

.field public static e:Ljava/lang/Boolean; = null

.field public static f:I = 0x0

.field public static g:I = 0x0

.field public static h:I = 0x0

.field public static i:I = 0x0

.field public static j:I = 0x1

.field public static k:I = 0x1

.field public static l:F = 1.0f

.field public static m:Ljava/lang/Boolean; = null

.field public static n:Z = false

.field public static o:Z = false

.field public static p:F = 1.0f


# direct methods
.method public static A()Z
    .locals 1

    sget-object v0, LK2/e;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, LK2/b;->c:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, LGp/c;->a(Landroid/content/ContentResolver;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, LK2/e;->e:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, LK2/e;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static B()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFlipPhone"
        type = 0x0
    .end annotation

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, LK2/e;->k:I

    int-to-float v0, v0

    sget v2, LK2/e;->j:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static C()Z
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    sget-object v0, LK2/e;->d:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :try_start_0
    sget-object v0, LK2/b;->c:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "force_black_v2"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, LK2/e;->d:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "DisplayHelper"

    const-string v4, "Settings Global getInt error"

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    sget-object v0, LK2/e;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public static D()Z
    .locals 9

    sget-object v0, LK2/b;->c:Lcom/android/camera/CameraAppImpl;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v2

    :cond_0
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v4, v1

    :cond_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x3

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCutoutInfo:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",displayCutout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "DisplayHelper"

    invoke-static {v6, v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-ne v3, v4, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public static E()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    invoke-static {}, LK2/e;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LK2/e;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    invoke-static {}, LJe/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, LJe/d;->c:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "DisplayHelper"

    const-string/jumbo v3, "supportLandscape invalid."

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, LK2/b;->c:Lcom/android/camera/CameraAppImpl;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, LF1/m4;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-static {v0}, LF1/n4;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    if-ge v2, v0, :cond_3

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public static F(F)I
    .locals 3

    sget v0, LK2/e;->l:F

    const/high16 v1, 0x40600000    # 3.5f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    div-float/2addr p0, v1

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static G(ILandroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p0, :cond_3

    const/16 v1, 0x5a

    if-eq p0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq p0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, p0, v1, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0

    :cond_1
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    invoke-virtual {v0, p0, v1, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0

    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p1

    invoke-virtual {v0, p0, v1, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0

    :cond_3
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;IILZ5/h;)LK2/f;
    .locals 2

    new-instance v0, LK2/f;

    invoke-direct {v0}, LK2/f;-><init>()V

    iput p1, v0, LK2/f;->a:I

    iput p2, v0, LK2/f;->b:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, LK2/f;->c:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, LK2/f;->d:I

    invoke-static {}, LK2/e;->v()Z

    move-result p1

    iput-boolean p1, v0, LK2/f;->e:Z

    invoke-static {}, LK2/e;->n()I

    move-result p1

    iput p1, v0, LK2/f;->f:I

    iput-object p3, v0, LK2/f;->h:LZ5/h;

    if-nez p3, :cond_3

    invoke-static {}, LK2/e;->z()Z

    move-result p1

    sget-object p2, LZ5/l;->b:LZ5/l;

    if-eqz p1, :cond_0

    iput-object p2, v0, LK2/f;->g:LZ5/l;

    goto :goto_0

    :cond_0
    invoke-static {}, LK2/e;->y()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, LZ5/l;->k:LZ5/l;

    iput-object p1, v0, LK2/f;->g:LZ5/l;

    goto :goto_0

    :cond_1
    iget p1, v0, LK2/f;->c:I

    mul-int/lit8 p1, p1, 0x9

    iget p3, v0, LK2/f;->d:I

    mul-int/lit8 p3, p3, 0x10

    if-gt p1, p3, :cond_2

    sget-object p2, LZ5/l;->c:LZ5/l;

    :cond_2
    iput-object p2, v0, LK2/f;->g:LZ5/l;

    goto :goto_0

    :cond_3
    invoke-interface {p3}, LZ5/h;->h0()LZ5/l;

    move-result-object p1

    iput-object p1, v0, LK2/f;->g:LZ5/l;

    :goto_0
    if-eqz p0, :cond_4

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v0, LK2/f;->i:Ljava/lang/ref/WeakReference;

    :cond_4
    return-object v0
.end method

.method public static b(F)I
    .locals 1

    sget v0, LK2/e;->l:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static c(IIZ)I
    .locals 12

    if-ge p0, p1, :cond_0

    move v1, p0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p0

    move v1, p1

    :goto_0
    int-to-double v2, v0

    int-to-double v0, v1

    div-double/2addr v2, v0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v8, v2, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpl-double v4, v4, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    if-lez v4, :cond_1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sub-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v4, v2

    if-gtz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-ge p0, p1, :cond_2

    move v3, p0

    move v2, p1

    goto :goto_1

    :cond_2
    move v2, p0

    move v3, p1

    :goto_1
    int-to-double v4, v2

    int-to-double v2, v3

    div-double/2addr v4, v2

    sub-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v2, v4, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v0, v0, v6

    if-lez v0, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    invoke-static {p0, p1}, LK2/e;->s(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    if-eqz p2, :cond_5

    if-ne p0, p1, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Landroid/view/Display;)Landroid/graphics/Rect;
    .locals 2

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/v1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LF1/v1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LH4/N;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LH4/N;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public static e()I
    .locals 2

    invoke-static {}, LJe/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    return v0

    :cond_0
    sget-boolean v0, LJe/d;->c:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, LJe/d;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static f(Landroid/app/Activity;)I
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    invoke-static {}, LK2/e;->E()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LH4/L;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, LH4/L;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/m0;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, LF1/m0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/o0;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, LF1/o0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {}, LK2/e;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    move p0, v1

    :cond_2
    invoke-static {p0}, LK2/e;->h(I)I

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    invoke-static {}, LK2/e;->E()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/u1;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, LF1/u1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/m0;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, LF1/m0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/o0;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, LF1/o0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {}, LK2/e;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    move p0, v1

    :cond_2
    invoke-static {p0}, LK2/e;->h(I)I

    move-result p0

    return p0
.end method

.method public static h(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0
.end method

.method public static i(I)Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x5

    invoke-static {v0}, LK2/b;->g(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p0}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object p0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p0
.end method

.method public static j()I
    .locals 2

    sget v0, LK2/e;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, LK2/b;->c:Lcom/android/camera/CameraAppImpl;

    invoke-static {v0}, Lxx/k;->g(Landroid/content/Context;)I

    move-result v0

    sput v0, LK2/e;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "navBarHeight="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, LK2/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayHelper"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget v0, LK2/e;->b:I

    return v0
.end method

.method public static k()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/Size;

    sget v1, LK2/e;->i:I

    sget v2, LK2/e;->h:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static l(I)I
    .locals 0

    rsub-int p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method public static m(II)I
    .locals 1

    if-eqz p0, :cond_3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    return p1

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    const/16 p0, 0x9

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static n()I
    .locals 3

    sget v0, LK2/e;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, LK2/b;->c:Lcom/android/camera/CameraAppImpl;

    invoke-static {v0}, Lxx/k;->h(Landroid/content/Context;)I

    move-result v0

    const-string v1, "StatusBarHeight="

    const-string v2, "DisplayHelper"

    invoke-static {v0, v1, v2}, LF1/T2;->d(ILjava/lang/String;Ljava/lang/String;)V

    sput v0, LK2/e;->a:I

    :cond_0
    sget v0, LK2/e;->a:I

    return v0
.end method

.method public static o(II)I
    .locals 11
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    sget p0, LK2/e;->f:I

    int-to-double p0, p0

    sget v2, LK2/e;->g:I

    int-to-double v2, v2

    div-double/2addr p0, v2

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v2

    const/4 p1, 0x3

    const/4 v4, 0x0

    if-gez p0, :cond_2

    invoke-static {}, LK2/b;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, LJe/d;->d()Z

    move-result p0

    if-nez p0, :cond_0

    sget-boolean p0, LJe/d;->c:Z

    if-eqz p0, :cond_1

    :cond_0
    return v4

    :cond_1
    return p1

    :cond_2
    const-wide v5, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double p0, v5, v9

    if-gtz p0, :cond_6

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    sub-double v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double p0, v5, v2

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const-wide p0, 0x40031eb860000000L    # 2.390000104904175

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v2

    if-gez p0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    return v4

    :cond_6
    :goto_0
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p0, v2, v0

    if-lez p0, :cond_7

    return p1

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPad"
        type = 0x0
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "miui_dkt_mode"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string v1, "Failed to read MIUI_DKT_MODE settings "

    invoke-static {v1, p0}, LF1/o2;->c(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DisplayHelper"

    invoke-static {v2, p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static q(Landroid/content/Context;)V
    .locals 12

    const/4 v0, -0x1

    sput v0, LK2/e;->b:I

    sput v0, LK2/e;->a:I

    const/4 v0, 0x0

    sput-object v0, LK2/e;->c:Ljava/lang/Boolean;

    sput-object v0, LK2/e;->d:Ljava/lang/Boolean;

    sput-object v0, LK2/e;->e:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    instance-of v1, p0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p0}, LK2/d;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    :goto_0
    const-string v3, "DisplayHelper"

    if-nez v0, :cond_2

    const-string p0, "initialize: default display is null"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "before: p.x="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",p.y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LK2/j;->c()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {}, LKy/c;->h()I

    move-result v6

    if-ne v0, v6, :cond_3

    iget v0, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, LK2/e;->j:I

    iget v0, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, LK2/e;->k:I

    goto :goto_1

    :cond_3
    invoke-static {}, LK2/e;->u()Z

    iget v0, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, LK2/e;->j:I

    iget v0, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, LK2/e;->k:I

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "after: sDisplayWidth="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, LK2/e;->j:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",sDisplayHeight="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, LK2/e;->k:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    sput v0, LK2/e;->l:F

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, LF1/m4;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-static {v0}, LF1/n4;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    sput v4, LK2/e;->f:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sput v0, LK2/e;->g:I

    sget v4, LK2/e;->f:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, LK2/e;->h:I

    sget v0, LK2/e;->g:I

    sget v4, LK2/e;->f:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, LK2/e;->i:I

    sget v4, LK2/e;->h:I

    int-to-float v4, v4

    int-to-float v0, v0

    div-float/2addr v4, v0

    const v0, 0x3fe38e39

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_4

    const-string v0, "invalid app bound size( w > h )."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v0, LK2/e;->i:I

    sput v0, LK2/e;->g:I

    sget v0, LK2/e;->h:I

    sput v0, LK2/e;->f:I

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, LK2/e;->m:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/4 v4, 0x1

    const/16 v5, 0x258

    if-lt v0, v5, :cond_6

    sget v0, LK2/e;->j:I

    mul-int/lit8 v0, v0, 0x10

    sget v6, LK2/e;->k:I

    mul-int/lit8 v6, v6, 0x9

    if-le v0, v6, :cond_6

    move v0, v4

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, LK2/e;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_7

    move v0, v4

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    sput-boolean v0, LK2/e;->n:Z

    if-nez v1, :cond_9

    :cond_8
    move v4, v2

    goto :goto_5

    :cond_9
    invoke-static {}, LJe/d;->d()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, LJe/d;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_a
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ge p0, v5, :cond_8

    invoke-static {}, Ls4/a;->b()I

    move-result p0

    if-eq p0, v4, :cond_8

    :goto_5
    sput-boolean v4, LK2/e;->o:Z

    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v0, LK2/e;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v0, LK2/e;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v0, LK2/e;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v0, LK2/e;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v0, LK2/e;->l:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    sget-boolean v0, LK2/e;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sget-boolean v0, LK2/e;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sget-object v11, LK2/e;->m:Ljava/lang/Boolean;

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "windowSize=%dx%d boundSize=%dx%d density=%.4f ori=%b mw=%b sl=%b"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static r(II)Z
    .locals 3

    if-ge p0, p1, :cond_0

    move v2, p1

    move p1, p0

    move p0, v2

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide p0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static s(II)Z
    .locals 3

    if-ge p0, p1, :cond_0

    move v2, p1

    move p1, p0

    move p0, v2

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static t(II)Z
    .locals 3

    if-ge p0, p1, :cond_0

    move v2, p1

    move p1, p0

    move p0, v2

    :cond_0
    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide p0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static u()Z
    .locals 1

    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v0

    invoke-virtual {v0}, Ls4/e;->g()Z

    const/4 v0, 0x0

    return v0
.end method

.method public static v()Z
    .locals 3

    sget-object v0, LK2/e;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string/jumbo v0, "ro.miui.notch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lur/g;->e(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, LK2/e;->c:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, LK2/e;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static w()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    invoke-static {}, LK2/e;->z()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LK2/e;->x()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LK2/e;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static x()Z
    .locals 3

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, LK2/e;->k:I

    int-to-float v0, v0

    sget v2, LK2/e;->j:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x3fb8e38e

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    const v2, 0x3fe38e39

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static y()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFlipPhone"
        type = 0x0
    .end annotation

    invoke-static {}, LJe/d;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, LK2/e;->k:I

    int-to-float v0, v0

    sget v2, LK2/e;->j:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x3fe38e39

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static z()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, LK2/e;->k:I

    int-to-float v0, v0

    sget v2, LK2/e;->j:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x3fe38e39

    cmpl-float v0, v0, v2

    if-gez v0, :cond_2

    invoke-static {}, LK2/e;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
