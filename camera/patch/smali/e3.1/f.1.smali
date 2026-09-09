.class public final Le3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le3/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/f$h;
    }
.end annotation


# instance fields
.field public a:Le3/G;

.field public b:Le3/G;

.field public final c:Le3/G;

.field public final d:Le3/F;

.field public final e:Ljava/util/EnumMap;

.field public f:Z

.field public g:Z

.field public h:Le3/f$h;

.field public i:F

.field public j:Lf3/l;

.field public k:Le3/E;

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:Le3/E;

.field public q:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Le3/G;Le3/G;Le3/F;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Le3/A;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Le3/f;->e:Ljava/util/EnumMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Le3/f;->g:Z

    iput-object p1, p0, Le3/f;->c:Le3/G;

    iput-object p2, p0, Le3/f;->b:Le3/G;

    iput-object p2, p0, Le3/f;->a:Le3/G;

    iput-object p3, p0, Le3/f;->d:Le3/F;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Le3/f;->i:F

    sget-object p1, Lf3/l;->b:Lf3/l;

    iput-object p1, p0, Le3/f;->j:Lf3/l;

    return-void
.end method


# virtual methods
.method public final a()Lf3/l;
    .locals 0

    iget-object p0, p0, Le3/f;->j:Lf3/l;

    return-object p0
.end method

.method public final b()V
    .locals 3

    iget-boolean v0, p0, Le3/f;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Le3/f$h;

    invoke-direct {v0, p0}, Le3/f$h;-><init>(Le3/f;)V

    iput-object v0, p0, Le3/f;->h:Le3/f$h;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Le3/f;->q:Landroid/animation/ValueAnimator;

    invoke-static {v0}, LF1/b0;->c(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Le3/f;->q:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Le3/f;->q:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Le3/f;->h:Le3/f$h;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Le3/f;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Le3/e;

    invoke-direct {v1, p0}, Le3/e;-><init>(Le3/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Le3/f;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "CameraItem"

    const-string v1, "onKeyDown: "

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Le3/f;->j:Lf3/l;

    sget-object v1, Lf3/l;->b:Lf3/l;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Le3/E;

    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    :goto_0
    invoke-direct {v0, v1}, Le3/E;-><init>(I)V

    iput-object v0, p0, Le3/f;->k:Le3/E;

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Le3/f;->m:F

    return-void

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Le3/f;->m:F

    return-void
.end method

.method public final d()Le3/G;
    .locals 0

    iget-object p0, p0, Le3/f;->c:Le3/G;

    return-object p0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Le3/f;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    const/4 v0, 0x0

    iput-object v0, p0, Le3/f;->q:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public final f(ZZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Le3/f;->g:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    iput-boolean v1, p0, Le3/f;->g:Z

    if-eqz p1, :cond_1

    const/16 p2, 0xc8

    goto :goto_0

    :cond_1
    const/16 p2, 0x64

    :goto_0
    const/16 v2, 0x3e8

    if-eqz p1, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    int-to-float v3, v3

    int-to-float v2, v2

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v3, v4, v0

    aput v2, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v0}, LF1/b0;->c(Landroid/animation/ValueAnimator;)V

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Le3/f$f;

    invoke-direct {p2, p0}, Le3/f$f;-><init>(Le3/f;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Le3/f$g;

    invoke-direct {p2, p0, p1}, Le3/f$g;-><init>(Le3/f;Z)V

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_4
    iput-boolean p1, p0, Le3/f;->g:Z

    if-eqz p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    iput p1, p0, Le3/f;->i:F

    return-void
.end method

.method public final g()Le3/F;
    .locals 0

    iget-object p0, p0, Le3/f;->d:Le3/F;

    return-object p0
.end method

.method public final h(Lia/g;Le3/A;Le3/K;ILandroid/util/Size;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "draw: start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gl/MIGL;->checkGlError(Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_17

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x3fe66666    # 1.8f

    const/4 v5, 0x2

    if-eq v0, v2, :cond_12

    const/16 v6, 0x14

    if-eq v0, v5, :cond_f

    const/4 p4, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v0, v8, :cond_b

    if-eq v0, v7, :cond_4

    if-eq v0, p4, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object p4, p0, Le3/f;->b:Le3/G;

    iget p4, p4, Le3/G;->a:I

    if-lt p4, v6, :cond_18

    invoke-virtual {p0}, Le3/f;->u()Lj3/n;

    move-result-object p0

    new-instance p4, Landroid/graphics/Rect;

    iget-object p5, p0, Lj3/n;->b:Landroid/graphics/Rect;

    invoke-direct {p4, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p5, v0

    cmpl-float p5, p5, v4

    if-lez p5, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    const-string p5, "d_c_t_f"

    goto :goto_1

    :cond_2
    const-string p5, "d_c_t"

    :goto_1
    invoke-virtual {p3, p5}, Le3/K;->c(Ljava/lang/String;)Lia/b;

    move-result-object p5

    if-eqz v2, :cond_3

    const-string v0, "d_c_b_f"

    goto :goto_2

    :cond_3
    const-string v0, "d_c_b"

    :goto_2
    invoke-virtual {p3, v0}, Le3/K;->c(Ljava/lang/String;)Lia/b;

    move-result-object p3

    iget v0, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p5}, Lia/b;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p4, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Lj3/c;

    invoke-direct {v0, p5, p4}, Lj3/c;-><init>(Lia/b;Landroid/graphics/Rect;)V

    invoke-interface {p1, v0}, Lia/g;->h(Lj3/b;)V

    iget-object p0, p0, Lj3/n;->b:Landroid/graphics/Rect;

    invoke-virtual {p4, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p0, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3}, Lia/b;->b()I

    move-result p5

    sub-int/2addr p0, p5

    iput p0, p4, Landroid/graphics/Rect;->top:I

    new-instance p0, Lj3/c;

    invoke-direct {p0, p3, p4}, Lj3/c;-><init>(Lia/b;Landroid/graphics/Rect;)V

    invoke-interface {p1, p0}, Lia/g;->h(Lj3/b;)V

    goto/16 :goto_8

    :cond_4
    invoke-virtual {p0}, Le3/f;->u()Lj3/n;

    move-result-object p4

    check-cast p4, Lj3/e;

    iget-object v0, p0, Le3/f;->d:Le3/F;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    const-string v4, "b_b"

    if-eq v0, v2, :cond_6

    if-eq v0, v5, :cond_5

    const-string p0, "drawBlurCover: face type error!!"

    new-array p1, v3, [Ljava/lang/Object;

    const-string p3, "CameraItem"

    invoke-static {p3, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_5
    const-string v0, "r_b"

    invoke-virtual {p3, v0}, Le3/K;->c(Ljava/lang/String;)Lia/b;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p3, v4}, Le3/K;->c(Ljava/lang/String;)Lia/b;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-virtual {p3, v4}, Le3/K;->c(Ljava/lang/String;)Lia/b;

    move-result-object v0

    goto :goto_3

    :cond_7
    const-string v0, "f_b"

    invoke-virtual {p3, v0}, Le3/K;->c(Ljava/lang/String;)Lia/b;

    move-result-object v0

    :cond_8
    :goto_3
    if-eqz v0, :cond_18

    iget-object p3, p0, Le3/f;->b:Le3/G;

    invoke-virtual {p0}, Le3/f;->x()Landroid/graphics/Rect;

    move-result-object p0

    sget v4, Le3/i0;->a:I

    new-array v1, v1, [F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v1, p3}, Le3/i0;->a([FLe3/G;)V

    invoke-static {v0, p0}, Le3/i0;->e(Lia/b;Landroid/graphics/Rect;)F

    move-result p0

    invoke-static {}, Le3/i0;->i()V

    const/high16 p3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    invoke-static {v1, v3, p3, p3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {v1, v3, p3, p0, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 p0, -0x41000000    # -0.5f

    invoke-static {v1, v3, p0, p0, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    new-instance p0, Landroid/graphics/Rect;

    iget-object p3, p4, Lj3/n;->b:Landroid/graphics/Rect;

    invoke-direct {p0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p3, p4, Lj3/e;->j:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_a

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p0, p4, p3}, Le3/i0;->j(Landroid/graphics/Rect;FF)Landroid/graphics/RectF;

    move-result-object p0

    if-eqz p5, :cond_9

    goto :goto_4

    :cond_9
    const/16 p3, 0x3059

    invoke-static {p3}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object p3

    new-array p4, v5, [I

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p5

    const/16 v4, 0x3057

    invoke-static {p5, p3, v4, p4, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p5

    const/16 v4, 0x3056

    invoke-static {p5, p3, v4, p4, v2}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    new-instance p5, Landroid/util/Size;

    aget p3, p4, v3

    aget p4, p4, v2

    invoke-direct {p5, p3, p4}, Landroid/util/Size;-><init>(II)V

    :goto_4
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p4

    int-to-float p4, p4

    new-instance p5, Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, p3

    float-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, p4

    float-to-int v3, v3

    iget v4, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, p3

    float-to-int p3, v4

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p0, p4

    float-to-int p0, p0

    invoke-direct {p5, v2, v3, p3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p0, p5

    :cond_a
    new-instance p3, Lj3/c;

    invoke-direct {p3, v0, p0}, Lj3/c;-><init>(Lia/b;Landroid/graphics/Rect;)V

    iput-object v1, p3, Lj3/c;->e:[F

    invoke-interface {p1, p3}, Lia/g;->h(Lj3/b;)V

    goto/16 :goto_8

    :cond_b
    invoke-virtual {p0}, Le3/f;->v()Z

    move-result p5

    if-nez p5, :cond_18

    invoke-static {}, Lcom/android/camera/data/data/E;->f()Lv2/B;

    move-result-object p5

    iget-boolean p5, p5, Lv2/B;->a:Z

    if-eqz p5, :cond_c

    goto/16 :goto_8

    :cond_c
    iget-object p5, p0, Le3/f;->b:Le3/G;

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    if-eq p5, v5, :cond_e

    if-eq p5, v8, :cond_e

    if-eq p5, v7, :cond_e

    if-eq p5, p4, :cond_e

    const/4 p4, 0x6

    if-eq p5, p4, :cond_d

    goto/16 :goto_8

    :cond_d
    const-string/jumbo p4, "shr"

    invoke-virtual {p0, p3}, Le3/f;->k(Le3/K;)Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_18

    new-instance p5, Lj3/c;

    invoke-virtual {p3, p4}, Le3/K;->c(Ljava/lang/String;)Lia/b;

    move-result-object p3

    invoke-direct {p5, p3, p0}, Lj3/c;-><init>(Lia/b;Landroid/graphics/Rect;)V

    invoke-interface {p1, p5}, Lia/g;->h(Lj3/b;)V

    goto/16 :goto_8

    :cond_e
    const-string p4, "exp"

    invoke-virtual {p0, p3}, Le3/f;->k(Le3/K;)Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_18

    new-instance p5, Lj3/c;

    invoke-virtual {p3, p4}, Le3/K;->c(Ljava/lang/String;)Lia/b;

    move-result-object p3

    invoke-direct {p5, p3, p0}, Lj3/c;-><init>(Lia/b;Landroid/graphics/Rect;)V

    invoke-interface {p1, p5}, Lia/g;->h(Lj3/b;)V

    goto/16 :goto_8

    :cond_f
    iget-object p5, p0, Le3/f;->b:Le3/G;

    iget p5, p5, Le3/G;->a:I

    if-lt p5, v6, :cond_10

    goto :goto_5

    :cond_10
    move v2, v3

    :goto_5
    iget-object p5, p0, Le3/f;->c:Le3/G;

    if-eqz v2, :cond_11

    invoke-static {}, Lf3/i;->i()Lf3/i;

    move-result-object p4

    invoke-virtual {p4, p5}, Lf3/i;->b(Le3/G;)Ljava/util/Optional;

    move-result-object p4

    new-instance p5, Le3/d;

    invoke-direct {p5, p0, p3, p1}, Le3/d;-><init>(Le3/f;Le3/K;Lia/g;)V

    invoke-virtual {p4, p5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_8

    :cond_11
    sget-object v0, Le3/F;->c:Le3/F;

    iget-object v1, p0, Le3/f;->d:Le3/F;

    if-ne v1, v0, :cond_18

    invoke-static {}, Lf3/i;->i()Lf3/i;

    move-result-object v0

    invoke-virtual {v0, p5}, Lf3/i;->b(Le3/G;)Ljava/util/Optional;

    move-result-object p5

    new-instance v0, Le3/c;

    invoke-direct {v0, p0, p3, p4, p1}, Le3/c;-><init>(Le3/f;Le3/K;ILia/g;)V

    invoke-virtual {p5, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_8

    :cond_12
    invoke-virtual {p0}, Le3/f;->y()F

    move-result p4

    const p5, 0x3c23d70a    # 0.01f

    cmpg-float p4, p4, p5

    if-gez p4, :cond_13

    goto/16 :goto_8

    :cond_13
    invoke-interface {p1}, Lia/g;->getState()Li3/c;

    move-result-object p4

    iget p4, p4, Li3/c;->g:F

    invoke-interface {p1}, Lia/g;->getState()Li3/c;

    move-result-object p5

    invoke-virtual {p0}, Le3/f;->y()F

    move-result v0

    mul-float/2addr v0, p4

    iput v0, p5, Li3/c;->g:F

    invoke-virtual {p0}, Le3/f;->u()Lj3/n;

    move-result-object p5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v6, p5, Lj3/n;->b:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Le3/f;->u()Lj3/n;

    move-result-object v6

    new-instance v7, Landroid/graphics/Rect;

    iget-object v6, v6, Lj3/n;->b:Landroid/graphics/Rect;

    invoke-direct {v7, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    cmpl-float v4, v6, v4

    if-lez v4, :cond_14

    const-string/jumbo v4, "s_frame_f"

    goto :goto_6

    :cond_14
    const-string/jumbo v4, "s_frame_s"

    :goto_6
    invoke-virtual {p3, v4}, Le3/K;->c(Ljava/lang/String;)Lia/b;

    move-result-object v4

    new-instance v6, Lj3/c;

    invoke-direct {v6, v4, v7}, Lj3/c;-><init>(Lia/b;Landroid/graphics/Rect;)V

    invoke-interface {p1, v6}, Lia/g;->h(Lj3/b;)V

    iget-object v4, p5, Lj3/n;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-string/jumbo v4, "s_bg"

    invoke-virtual {p3, v4}, Le3/K;->c(Ljava/lang/String;)Lia/b;

    move-result-object v4

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Lia/b;->e()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Lia/b;->b()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->top:I

    new-instance v6, Lj3/c;

    invoke-direct {v6, v4, v0}, Lj3/c;-><init>(Lia/b;Landroid/graphics/Rect;)V

    invoke-interface {p1, v6}, Lia/g;->h(Lj3/b;)V

    iget-object p0, p0, Le3/f;->j:Lf3/l;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eq p0, v2, :cond_16

    if-eq p0, v5, :cond_15

    goto :goto_8

    :cond_15
    const-string/jumbo p0, "s_2"

    invoke-virtual {p3, p0}, Le3/K;->c(Ljava/lang/String;)Lia/b;

    move-result-object p0

    goto :goto_7

    :cond_16
    const-string/jumbo p0, "s_1"

    invoke-virtual {p3, p0}, Le3/K;->c(Ljava/lang/String;)Lia/b;

    move-result-object p0

    :goto_7
    invoke-interface {p1}, Lia/g;->getState()Li3/c;

    move-result-object v2

    invoke-virtual {v2}, Li3/c;->d()V

    invoke-interface {p1}, Lia/g;->getState()Li3/c;

    move-result-object v2

    monitor-enter p3

    :try_start_0
    iget-object v4, p3, Le3/K;->b:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    iget-object p3, v2, Li3/c;->e:[F

    invoke-static {v4, v3, p3, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p5, Lj3/n;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lia/b;->e()I

    move-result p5

    sub-int/2addr p3, p5

    iput p3, v0, Landroid/graphics/Rect;->left:I

    iget p3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lia/b;->b()I

    move-result p5

    sub-int/2addr p3, p5

    iput p3, v0, Landroid/graphics/Rect;->top:I

    new-instance p3, Lj3/c;

    invoke-direct {p3, p0, v0}, Lj3/c;-><init>(Lia/b;Landroid/graphics/Rect;)V

    invoke-interface {p1, p3}, Lia/g;->h(Lj3/b;)V

    invoke-interface {p1}, Lia/g;->getState()Li3/c;

    move-result-object p0

    invoke-virtual {p0}, Li3/c;->c()V

    invoke-interface {p1}, Lia/g;->getState()Li3/c;

    move-result-object p0

    iput p4, p0, Li3/c;->g:F

    goto :goto_8

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_17
    invoke-virtual {p0}, Le3/f;->u()Lj3/n;

    move-result-object p0

    check-cast p0, Lj3/e;

    invoke-interface {p1, p0}, Lia/g;->h(Lj3/b;)V

    :cond_18
    :goto_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "draw: end: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/gl/MIGL;->checkGlError(Ljava/lang/String;)I

    return-void
.end method

.method public final i(Le3/G;Le3/M;Z)V
    .locals 2

    iget-boolean v0, p0, Le3/f;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le3/f;->b:Le3/G;

    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Le3/f;->a:Le3/G;

    iput-object p1, p0, Le3/f;->b:Le3/G;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setComposeTypeWithAnimation: from: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Le3/f;->a:Le3/G;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le3/f;->b:Le3/G;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CameraItem"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3}, Le3/f;->q(Le3/M;Z)V

    return-void
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Le3/f;->g:Z

    return p0
.end method

.method public final j()Le3/G;
    .locals 0

    iget-object p0, p0, Le3/f;->b:Le3/G;

    return-object p0
.end method

.method public final k(Le3/K;)Landroid/graphics/Rect;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    sget-boolean v0, LK2/e;->n:Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Le3/f;->b:Le3/G;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_9

    goto :goto_1

    :cond_1
    monitor-enter p1

    :try_start_0
    iget v1, p1, Le3/K;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    rem-int/lit16 v1, v1, 0xb4

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {}, Le3/i0;->i()V

    invoke-static {}, LK2/e;->x()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Le3/f;->b:Le3/G;

    sget-object v1, Le3/G;->g:Le3/G;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Le3/f;->u()Lj3/n;

    move-result-object p0

    const-string v0, "exp"

    invoke-virtual {p1, v0}, Le3/K;->c(Ljava/lang/String;)Lia/b;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lia/b;->e()I

    move-result v1

    invoke-virtual {p1}, Lia/b;->b()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lj3/n;->b:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0xa

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lia/b;->b()I

    move-result p1

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, -0xa

    invoke-static {}, LK2/e;->j()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    const/16 p0, 0x18

    invoke-virtual {v0, p0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0, p1}, Le3/k0;->d(Le3/f;Le3/K;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez v1, :cond_8

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, LJe/d;->c:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Le3/k0;->c(Le3/f;Le3/K;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {p0, p1}, Le3/k0;->d(Le3/f;Le3/K;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_2
    invoke-static {p0, p1}, Le3/k0;->b(Le3/f;Le3/K;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_9
    invoke-static {}, Le3/i0;->i()V

    invoke-static {}, LK2/e;->x()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1}, Le3/k0;->b(Le3/f;Le3/K;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_a
    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, LJe/d;->c:Z

    if-eqz v0, :cond_b

    invoke-static {p0, p1}, Le3/k0;->c(Le3/f;Le3/K;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Le3/k0;->d(Le3/f;Le3/K;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final l(Z)V
    .locals 2

    new-instance v0, Le3/E;

    if-eqz p1, :cond_0

    const/16 v1, 0xc8

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    :goto_0
    invoke-direct {v0, v1}, Le3/E;-><init>(I)V

    iput-object v0, p0, Le3/f;->p:Le3/E;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Le3/f;->n:F

    return-void

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Le3/f;->n:F

    return-void
.end method

.method public final m()F
    .locals 0

    iget p0, p0, Le3/f;->i:F

    return p0
.end method

.method public final n(Lia/g;Le3/K;Landroid/util/Size;)V
    .locals 6

    sget-object v2, Le3/A;->e:Le3/A;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Le3/f;->h(Lia/g;Le3/A;Le3/K;ILandroid/util/Size;)V

    return-void
.end method

.method public final o()Z
    .locals 0

    iget-object p0, p0, Le3/f;->q:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p(Le3/G;)V
    .locals 0

    iput-object p1, p0, Le3/f;->a:Le3/G;

    return-void
.end method

.method public final q(Le3/M;Z)V
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Le3/f;->u()Lj3/n;

    move-result-object p2

    check-cast p2, Lj3/e;

    new-instance v0, Landroid/graphics/Rect;

    iget-object p2, p2, Lj3/n;->b:Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p2, p0, Le3/f;->b:Le3/G;

    invoke-virtual {p1, p2}, Le3/M;->a(Le3/G;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Le3/f;->f:Z

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, LLy/g;

    invoke-direct {v0}, LLy/g;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Le3/f$a;

    invoke-direct {v0, p0, p1}, Le3/f$a;-><init>(Le3/f;Le3/M;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Le3/f$b;

    invoke-direct {p1, p0, p2}, Le3/f$b;-><init>(Le3/f;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_0
    iget-object p2, p0, Le3/f;->b:Le3/G;

    invoke-virtual {p1, p2}, Le3/M;->a(Le3/G;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0}, Le3/f;->u()Lj3/n;

    move-result-object v0

    check-cast v0, Lj3/e;

    iget-object v1, p0, Le3/f;->b:Le3/G;

    invoke-static {v1}, Le3/M;->b(Le3/G;)F

    move-result v1

    new-instance v2, Lj3/e;

    iget-object v0, v0, Lj3/e;->d:Lia/f;

    iget-object v3, p0, Le3/f;->b:Le3/G;

    iget-object v4, p0, Le3/f;->d:Le3/F;

    invoke-static {v4, v3, v0, p2}, Le3/i0;->c(Le3/F;Le3/G;Lia/f;Landroid/graphics/Rect;)[F

    move-result-object v3

    invoke-direct {v2, v0, v3, p2, v1}, Lj3/e;-><init>(Lia/f;[FLandroid/graphics/Rect;F)V

    iget-object p1, p1, Le3/M;->a:Le3/L;

    invoke-virtual {p1}, Le3/L;->a()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, v2, Lj3/e;->j:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v2}, Le3/f;->z(Lj3/e;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method public final r(Lia/g;Le3/A;Le3/K;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Le3/f;->h(Lia/g;Le3/A;Le3/K;ILandroid/util/Size;)V

    return-void
.end method

.method public final s()Le3/G;
    .locals 0

    iget-object p0, p0, Le3/f;->a:Le3/G;

    return-object p0
.end method

.method public final t(Lf3/l;Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSelectedTypeWithAnim: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CameraItem"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Le3/f;->j:Lf3/l;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v2, Lf3/l;->b:Lf3/l;

    if-eq v0, v2, :cond_1

    if-eq p1, v2, :cond_1

    iput-object p1, p0, Le3/f;->j:Lf3/l;

    return-void

    :cond_1
    iput-object p1, p0, Le3/f;->j:Lf3/l;

    if-eqz p2, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p0, v1}, Le3/f;->c(Z)V

    return-void

    :cond_3
    if-ne p1, v2, :cond_4

    const/4 p1, 0x0

    iput p1, p0, Le3/f;->l:F

    return-void

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Le3/f;->l:F

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RenderItem{mLastPreviewComposeType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le3/f;->a:Le3/G;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRenderComposeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le3/f;->b:Le3/G;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mGridWindowLayoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le3/f;->c:Le3/G;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le3/f;->d:Le3/F;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAnimating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le3/f;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le3/f;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le3/f;->j:Lf3/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le3/f;->e:Ljava/util/EnumMap;

    sget-object v1, Le3/A;->a:Le3/A;

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj3/n;

    iget-object p0, p0, Lj3/n;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Lj3/n;
    .locals 1

    sget-object v0, Le3/A;->a:Le3/A;

    iget-object p0, p0, Le3/f;->e:Ljava/util/EnumMap;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj3/n;

    return-object p0
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Le3/f;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le3/f;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final w(Lio/reactivex/x;)V
    .locals 10
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/x<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Le3/f;->f:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    move-object v3, p1

    check-cast v3, Lio/reactivex/internal/operators/single/a$a;

    invoke-virtual {v3}, Lio/reactivex/internal/operators/single/a$a;->a()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lio/reactivex/internal/operators/single/a$a;->d(Ljava/lang/Object;)V

    :cond_0
    iget-boolean v3, p0, Le3/f;->g:Z

    const/16 v4, 0x3e8

    if-eqz v3, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v4

    move v4, v2

    :goto_0
    iput-boolean v1, p0, Le3/f;->g:Z

    iput-boolean v1, p0, Le3/f;->f:Z

    int-to-float v4, v4

    int-to-float v5, v5

    new-array v6, v0, [F

    aput v4, v6, v2

    aput v5, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v7, LLy/g;

    invoke-direct {v7}, LLy/g;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Le3/f$c;

    invoke-direct {v9, p0}, Le3/f$c;-><init>(Le3/f;)V

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    aput v4, v0, v2

    aput v5, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v3, :cond_2

    new-instance v1, LLy/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v1, LLy/g;

    invoke-direct {v1}, LLy/g;-><init>()V

    :goto_1
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v7, 0x12c

    :goto_2
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Le3/f$d;

    invoke-direct {v1, p0}, Le3/f$d;-><init>(Le3/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Le3/f$e;

    invoke-direct {v1, p0, v3, p1}, Le3/f$e;-><init>(Le3/f;ZLio/reactivex/x;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final x()Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0}, Le3/f;->u()Lj3/n;

    move-result-object p0

    check-cast p0, Lj3/e;

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lj3/n;->b:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final y()F
    .locals 3

    iget-object v0, p0, Le3/f;->k:Le3/E;

    if-nez v0, :cond_0

    iget p0, p0, Le3/f;->l:F

    return p0

    :cond_0
    invoke-virtual {v0}, Le3/E;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Le3/f;->m:F

    iput v0, p0, Le3/f;->l:F

    const/4 v1, 0x0

    iput-object v1, p0, Le3/f;->k:Le3/E;

    return v0

    :cond_1
    iget-object v0, p0, Le3/f;->k:Le3/E;

    invoke-virtual {v0}, Le3/E;->a()F

    move-result v0

    iget v1, p0, Le3/f;->l:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v2, v1

    iget p0, p0, Le3/f;->m:F

    mul-float/2addr p0, v0

    add-float/2addr p0, v2

    return p0
.end method

.method public final z(Lj3/e;)V
    .locals 4

    sget-object v0, Le3/A;->a:Le3/A;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setRenderAttri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lj3/n;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le3/f;->b:Le3/G;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/camera/log/DumpTrace;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CameraItem"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Le3/f;->e:Ljava/util/EnumMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
