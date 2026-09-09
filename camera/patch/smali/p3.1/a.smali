.class public final Lp3/a;
.super Lp3/j;
.source "SourceFile"


# static fields
.field public static final A:[F

.field public static final B:[F


# instance fields
.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lp3/a;->A:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lp3/a;->B:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final c(Lj3/b;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lj3/b;->a:I

    invoke-virtual {v0, v2}, Lp3/j;->t(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget v2, v1, Lj3/b;->a:I

    const/4 v4, 0x0

    if-eqz v2, :cond_14

    iget-object v5, v0, Lp3/h;->a:Lia/g;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v2, v9, :cond_13

    iget-boolean v11, v0, Lp3/j;->u:Z

    const v12, 0x3f733333    # 0.95f

    const/4 v13, 0x5

    if-eq v2, v10, :cond_10

    const/4 v10, 0x3

    if-eq v2, v10, :cond_d

    if-eq v2, v8, :cond_c

    if-eq v2, v13, :cond_3

    const/4 v8, 0x7

    if-eq v2, v8, :cond_2

    const/16 v8, 0xc

    if-eq v2, v8, :cond_1

    goto/16 :goto_4

    :cond_1
    check-cast v1, Lj3/o;

    iget-object v1, v1, Lj3/n;->b:Landroid/graphics/Rect;

    iget v2, v0, Lp3/j;->j:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v10, v0, Lp3/j;->n:I

    const/16 v12, 0x1406

    const/4 v15, 0x0

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/16 v14, 0x8

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lp3/j;->n:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {v0}, Lp3/h;->l()V

    invoke-virtual {v0, v3, v3}, Lp3/a;->w(IZ)V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    invoke-virtual {v2}, Li3/c;->d()V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    iget v8, v1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v10, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual {v2, v8, v10}, Li3/c;->g(FF)V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v8, v1}, Li3/c;->f(FF)V

    iget v1, v0, Lp3/j;->k:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    invoke-virtual {v2}, Li3/c;->a()[F

    move-result-object v2

    invoke-static {v1, v9, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, v0, Lp3/j;->l:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    iget-object v2, v2, Li3/c;->e:[F

    invoke-static {v1, v9, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, v0, Lp3/j;->p:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    iget v2, v2, Li3/c;->g:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lp3/j;->r:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    iget v2, v2, Li3/c;->h:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, v0, Lp3/a;->y:I

    invoke-static {v0, v6, v6, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    throw v4

    :cond_2
    move-object v0, v1

    check-cast v0, Lj3/m;

    throw v4

    :cond_3
    check-cast v1, Lj3/c;

    iget-object v2, v1, Lj3/c;->c:Lia/b;

    iget-object v4, v1, Lj3/n;->b:Landroid/graphics/Rect;

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v10

    invoke-virtual {v10}, Li3/c;->d()V

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, v1, Lj3/c;->e:[F

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v4, v4, v6

    if-lez v4, :cond_b

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_4

    goto/16 :goto_3

    :cond_4
    iget v4, v0, Lp3/j;->j:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v4, "glUseProgram"

    invoke-static {v4}, Lcom/xiaomi/gl/MIGL;->checkGlError(Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Lp3/j;->o(Lia/b;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_3

    :cond_5
    const-string v4, "bindTexture"

    invoke-static {v4}, Lcom/xiaomi/gl/MIGL;->checkGlError(Ljava/lang/String;)I

    iget v4, v0, Lp3/a;->y:I

    invoke-static {v4, v7, v6, v6, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v4, v0, Lp3/j;->m:I

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual {v0}, Lp3/a;->v()V

    invoke-virtual {v0}, Lp3/h;->l()V

    iget-object v4, v0, Lp3/h;->a:Lia/g;

    invoke-interface {v4}, Lia/g;->getState()Li3/c;

    move-result-object v7

    iget v7, v7, Li3/c;->g:F

    invoke-interface {v4}, Lia/g;->getState()Li3/c;

    move-result-object v11

    iget v11, v11, Li3/c;->h:F

    instance-of v14, v2, Lia/n;

    if-eqz v14, :cond_7

    move-object v14, v2

    check-cast v14, Lia/n;

    iget-object v15, v14, Lia/n;->j:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v14

    goto :goto_0

    :cond_6
    iget-boolean v14, v14, Lia/n;->i:Z

    goto :goto_0

    :cond_7
    move v14, v3

    :goto_0
    iget-boolean v15, v0, Lp3/j;->u:Z

    if-eqz v15, :cond_9

    invoke-interface {v2}, Lia/m;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    cmpg-float v2, v7, v12

    if-ltz v2, :cond_8

    cmpl-float v2, v11, v6

    if-ltz v2, :cond_9

    :cond_8
    move v2, v9

    goto :goto_1

    :cond_9
    move v2, v3

    :goto_1
    invoke-static {v2, v14}, Lp3/j;->u(ZZ)V

    invoke-interface {v4}, Lia/g;->getState()Li3/c;

    move-result-object v2

    iget v6, v10, Landroid/graphics/RectF;->left:F

    iget v12, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v6, v12}, Li3/c;->g(FF)V

    invoke-interface {v4}, Lia/g;->getState()Li3/c;

    move-result-object v2

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-virtual {v2, v6, v10}, Li3/c;->f(FF)V

    iget v2, v0, Lp3/j;->k:I

    invoke-interface {v4}, Lia/g;->getState()Li3/c;

    move-result-object v6

    invoke-virtual {v6}, Li3/c;->a()[F

    move-result-object v6

    invoke-static {v2, v9, v3, v6, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    if-nez v1, :cond_a

    iget v1, v0, Lp3/j;->l:I

    invoke-interface {v4}, Lia/g;->getState()Li3/c;

    move-result-object v2

    iget-object v2, v2, Li3/c;->e:[F

    invoke-static {v1, v9, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_2

    :cond_a
    iget v2, v0, Lp3/j;->l:I

    invoke-static {v2, v9, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :goto_2
    iget v1, v0, Lp3/j;->p:I

    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, v0, Lp3/j;->r:I

    invoke-static {v0, v11}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {v13, v3, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_b
    :goto_3
    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v0

    invoke-virtual {v0}, Li3/c;->c()V

    return v9

    :cond_c
    check-cast v1, Lj3/f;

    iget-object v2, v1, Lj3/n;->b:Landroid/graphics/Rect;

    iget v4, v0, Lp3/j;->j:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {v0}, Lp3/a;->v()V

    invoke-virtual {v0}, Lp3/h;->l()V

    iget v1, v1, Lj3/f;->c:I

    invoke-virtual {v0, v1, v3}, Lp3/a;->w(IZ)V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v1

    invoke-virtual {v1}, Li3/c;->d()V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v1

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v10, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual {v1, v4, v10}, Li3/c;->g(FF)V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Li3/c;->f(FF)V

    iget v1, v0, Lp3/j;->k:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    invoke-virtual {v2}, Li3/c;->a()[F

    move-result-object v2

    invoke-static {v1, v9, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, v0, Lp3/j;->l:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    iget-object v2, v2, Li3/c;->e:[F

    invoke-static {v1, v9, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, v0, Lp3/j;->p:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    iget v2, v2, Li3/c;->g:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lp3/j;->r:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    iget v2, v2, Li3/c;->h:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, v0, Lp3/a;->y:I

    invoke-static {v0, v6, v6, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    invoke-static {v13, v3, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v0

    invoke-virtual {v0}, Li3/c;->c()V

    return v9

    :cond_d
    check-cast v1, Lj3/k;

    iget v1, v0, Lp3/j;->j:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {v0, v4}, Lp3/j;->o(Lia/b;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v0}, Lp3/a;->v()V

    invoke-virtual {v0, v3, v3}, Lp3/a;->w(IZ)V

    invoke-virtual {v0}, Lp3/h;->l()V

    if-nez v11, :cond_f

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v1

    invoke-virtual {v1}, Li3/c;->d()V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Li3/c;->g(FF)V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Li3/c;->f(FF)V

    iget v1, v0, Lp3/j;->k:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    invoke-virtual {v2}, Li3/c;->a()[F

    move-result-object v2

    invoke-static {v1, v9, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, v0, Lp3/j;->l:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    iget-object v2, v2, Li3/c;->e:[F

    invoke-static {v1, v9, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, v0, Lp3/j;->p:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    iget v2, v2, Li3/c;->g:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lp3/a;->y:I

    invoke-static {v1, v7, v6, v6, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v1, v0, Lp3/j;->m:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, v0, Lp3/j;->r:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v1

    iget v1, v1, Li3/c;->h:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {v13, v3, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v0

    invoke-virtual {v0}, Li3/c;->c()V

    return v9

    :cond_f
    throw v4

    :cond_10
    check-cast v1, Lj3/i;

    iget v1, v0, Lp3/j;->j:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {v0, v4}, Lp3/j;->o(Lia/b;)Z

    move-result v1

    if-nez v1, :cond_11

    :goto_4
    return v9

    :cond_11
    if-eqz v11, :cond_12

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v1

    iget v1, v1, Li3/c;->g:F

    cmpg-float v1, v1, v12

    if-gez v1, :cond_12

    move v1, v9

    goto :goto_5

    :cond_12
    move v1, v3

    :goto_5
    invoke-static {v1, v3}, Lp3/j;->u(ZZ)V

    const v1, 0x8892

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v14, v0, Lp3/j;->n:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x1406

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v2, v0, Lp3/j;->n:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v14, v0, Lp3/j;->o:I

    invoke-static/range {v14 .. v19}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v2, v0, Lp3/j;->o:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    invoke-virtual {v2}, Li3/c;->d()V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Li3/c;->g(FF)V

    iget v2, v0, Lp3/j;->k:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v4

    invoke-virtual {v4}, Li3/c;->a()[F

    move-result-object v4

    invoke-static {v2, v9, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v2, v0, Lp3/j;->l:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v4

    iget-object v4, v4, Li3/c;->e:[F

    invoke-static {v2, v9, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v2, v0, Lp3/j;->p:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v4

    iget v4, v4, Li3/c;->g:F

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lp3/j;->r:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v4

    iget v4, v4, Li3/c;->h:F

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lp3/a;->y:I

    invoke-static {v2, v7, v6, v6, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v0, v0, Lp3/j;->m:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x8893

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v2, 0x1401

    invoke-static {v13, v3, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v0

    invoke-virtual {v0}, Li3/c;->c()V

    return v9

    :cond_13
    check-cast v1, Lj3/l;

    iget v2, v1, Lj3/l;->b:F

    iget v4, v1, Lj3/l;->c:F

    iget v11, v1, Lj3/l;->d:F

    iget v12, v1, Lj3/l;->e:F

    iget-object v1, v1, Lj3/l;->f:Lia/h;

    iget v13, v0, Lp3/j;->j:I

    invoke-static {v13}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {v0}, Lp3/a;->v()V

    invoke-virtual {v0}, Lp3/h;->l()V

    iget v13, v1, Lia/h;->b:I

    invoke-virtual {v0, v13, v3}, Lp3/a;->w(IZ)V

    iget v13, v1, Lia/h;->a:F

    invoke-static {v13}, Landroid/opengl/GLES20;->glLineWidth(F)V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v13

    invoke-virtual {v13}, Li3/c;->d()V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v13

    invoke-virtual {v13, v2, v4}, Li3/c;->g(FF)V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Li3/c;->f(FF)V

    iget v2, v0, Lp3/j;->k:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v4

    invoke-virtual {v4}, Li3/c;->a()[F

    move-result-object v4

    invoke-static {v2, v9, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v2, v0, Lp3/j;->l:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v4

    iget-object v4, v4, Li3/c;->e:[F

    invoke-static {v2, v9, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v2, v0, Lp3/j;->p:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v4

    iget v4, v4, Li3/c;->g:F

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lp3/j;->q:I

    iget v1, v1, Lia/h;->a:F

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lp3/j;->r:I

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v2

    iget v2, v2, Li3/c;->h:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, v0, Lp3/a;->y:I

    invoke-static {v0, v6, v6, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v0, 0x6

    invoke-static {v10, v0, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v3, v0, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-interface {v5}, Lia/g;->getState()Li3/c;

    move-result-object v0

    invoke-virtual {v0}, Li3/c;->c()V

    return v9

    :cond_14
    check-cast v1, Lj3/h;

    iget v1, v0, Lp3/j;->j:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {v0}, Lp3/a;->v()V

    invoke-virtual {v0}, Lp3/h;->l()V

    throw v4
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/xiaomi/camera/q;->a:Landroid/content/Context;

    const-string/jumbo v0, "shading_script/frag_normal.txt"

    invoke-static {p0, v0}, Lvr/Q;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final q()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/q;->a:Landroid/content/Context;

    const-string/jumbo v1, "shading_script/vertex_normal.txt"

    invoke-static {v0, v1}, Lvr/Q;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lp3/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsd/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/j;->j:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lp3/j;->j:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/j;->k:I

    iget v0, p0, Lp3/j;->j:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/j;->l:I

    iget v0, p0, Lp3/j;->j:I

    const-string/jumbo v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/j;->m:I

    iget v0, p0, Lp3/j;->j:I

    const-string/jumbo v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/j;->p:I

    iget v0, p0, Lp3/j;->j:I

    const-string/jumbo v1, "u_PointSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/j;->q:I

    iget v0, p0, Lp3/j;->j:I

    const-string/jumbo v1, "uMixAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/j;->r:I

    iget v0, p0, Lp3/j;->j:I

    const-string/jumbo v1, "uBlendFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/a;->y:I

    iget v0, p0, Lp3/j;->j:I

    const-string/jumbo v1, "uPaintColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/a;->z:I

    iget v0, p0, Lp3/j;->j:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/j;->n:I

    iget v0, p0, Lp3/j;->j:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/j;->o:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-class v0, Lp3/a;

    const-string v1, ": mProgram = 0"

    invoke-static {v0, v1}, LKa/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lp3/j;->v:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final s()V
    .locals 3

    const/16 v0, 0x50

    invoke-static {v0}, Lp3/j;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lp3/j;->s:Ljava/nio/FloatBuffer;

    sget-object v2, Lp3/a;->A:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lp3/j;->s:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v0}, Lp3/j;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lp3/j;->t:Ljava/nio/FloatBuffer;

    sget-object v1, Lp3/a;->B:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lp3/j;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final v()V
    .locals 12

    iget v0, p0, Lp3/j;->n:I

    const/16 v4, 0x8

    iget-object v5, p0, Lp3/j;->s:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v6, p0, Lp3/j;->o:I

    const/16 v10, 0x8

    iget-object v11, p0, Lp3/j;->t:Ljava/nio/FloatBuffer;

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lp3/j;->n:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget p0, p0, Lp3/j;->o:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public final w(IZ)V
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    iget-boolean v2, p0, Lp3/j;->u:Z

    if-eqz v2, :cond_1

    const v2, 0x3f733333    # 0.95f

    cmpg-float v3, v0, v2

    if-ltz v3, :cond_0

    iget-object v3, p0, Lp3/h;->a:Lia/g;

    invoke-interface {v3}, Lia/g;->getState()Li3/c;

    move-result-object v3

    iget v3, v3, Li3/c;->g:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2, p2}, Lp3/j;->u(ZZ)V

    iget p0, p0, Lp3/a;->z:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    invoke-static {p0, p2, v2, p1, v0}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method
