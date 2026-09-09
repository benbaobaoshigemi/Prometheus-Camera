.class public final Lp3/k;
.super Lp3/j;
.source "SourceFile"


# static fields
.field public static final C:[F

.field public static final D:[F


# instance fields
.field public A:I

.field public B:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lp3/k;->C:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lp3/k;->D:[F

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
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final c(Lj3/b;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "draw start"

    invoke-static {v2}, Lcom/xiaomi/gl/MIGL;->checkGlError(Ljava/lang/String;)I

    iget v2, v1, Lj3/b;->a:I

    invoke-virtual {v0, v2}, Lp3/j;->t(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    check-cast v1, Lj3/e;

    iget-object v2, v1, Lj3/e;->d:Lia/f;

    const-string v4, "SurfaceTextureRender"

    const/4 v5, 0x1

    if-nez v2, :cond_1

    const-string v0, "drawTexture: texture is null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_1
    iget-object v6, v1, Lj3/e;->c:[F

    iget-object v7, v1, Lj3/n;->b:Landroid/graphics/Rect;

    if-nez v6, :cond_2

    const-string/jumbo v0, "textureTransform is null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_2
    if-nez v7, :cond_3

    const-string v0, "drawRect is null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_3
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v8, v0, Lp3/j;->j:I

    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v8, "glUseProgram"

    invoke-static {v8}, Lcom/xiaomi/gl/MIGL;->checkGlError(Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Lp3/j;->o(Lia/b;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fail bind texture "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lia/f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_4
    iget v8, v0, Lp3/j;->n:I

    iget-object v13, v0, Lp3/j;->s:Ljava/nio/FloatBuffer;

    const/4 v9, 0x2

    const/16 v12, 0x8

    const/16 v10, 0x1406

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v14, v0, Lp3/j;->o:I

    iget-object v2, v0, Lp3/j;->t:Ljava/nio/FloatBuffer;

    const/4 v15, 0x2

    const/16 v18, 0x8

    const/16 v16, 0x1406

    const/16 v17, 0x0

    move-object/from16 v19, v2

    invoke-static/range {v14 .. v19}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lp3/j;->n:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v2, v0, Lp3/j;->o:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {v0}, Lp3/h;->l()V

    iget-object v2, v0, Lp3/h;->a:Lia/g;

    invoke-interface {v2}, Lia/g;->getState()Li3/c;

    move-result-object v4

    iget v4, v4, Li3/c;->g:F

    invoke-interface {v2}, Lia/g;->getState()Li3/c;

    move-result-object v8

    iget v8, v8, Li3/c;->h:F

    iget-boolean v9, v0, Lp3/j;->u:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_6

    const v9, 0x3f733333    # 0.95f

    cmpg-float v9, v4, v9

    if-ltz v9, :cond_5

    cmpl-float v9, v8, v10

    if-ltz v9, :cond_6

    :cond_5
    move v9, v5

    goto :goto_0

    :cond_6
    move v9, v3

    :goto_0
    invoke-static {v9, v3}, Lp3/j;->u(ZZ)V

    invoke-interface {v2}, Lia/g;->getState()Li3/c;

    move-result-object v9

    invoke-virtual {v9}, Li3/c;->d()V

    invoke-interface {v2}, Lia/g;->getState()Li3/c;

    move-result-object v9

    iget v11, v7, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v12, v7, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Li3/c;->g(FF)V

    invoke-interface {v2}, Lia/g;->getState()Li3/c;

    move-result-object v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Li3/c;->f(FF)V

    iget v9, v0, Lp3/j;->k:I

    invoke-interface {v2}, Lia/g;->getState()Li3/c;

    move-result-object v11

    invoke-virtual {v11}, Li3/c;->a()[F

    move-result-object v11

    invoke-static {v9, v5, v3, v11, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v9, v0, Lp3/j;->l:I

    invoke-static {v9, v5, v3, v6, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v6, v0, Lp3/j;->m:I

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v6, v0, Lp3/j;->p:I

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, v0, Lp3/j;->r:I

    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, v0, Lp3/k;->z:I

    iget v6, v1, Lj3/e;->h:F

    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, v0, Lp3/k;->A:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v8, v7}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v4, v0, Lp3/k;->B:I

    cmpl-float v6, v6, v10

    if-lez v6, :cond_7

    move v6, v5

    goto :goto_1

    :cond_7
    move v6, v3

    :goto_1
    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v4, v1, Lj3/e;->f:Lwu/a;

    sget-object v6, Lwu/a;->b:Lwu/a$d;

    if-ne v4, v6, :cond_9

    iget-object v1, v1, Lj3/e;->g:Lwu/a;

    sget-object v4, Lwu/a;->a:Lwu/a$b;

    if-ne v1, v4, :cond_8

    iget v0, v0, Lp3/k;->y:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_2

    :cond_8
    iget v0, v0, Lp3/k;->y:I

    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_9
    :goto_2
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-interface {v2}, Lia/g;->getState()Li3/c;

    move-result-object v0

    invoke-virtual {v0}, Li3/c;->c()V

    const-string v0, "draw end"

    invoke-static {v0}, Lcom/xiaomi/gl/MIGL;->checkGlError(Ljava/lang/String;)I

    return v5
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final q()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/q;->a:Landroid/content/Context;

    const-string/jumbo v1, "shading_script/vertex_normal.txt"

    invoke-static {v0, v1}, Lvr/Q;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-static {v1}, Lcom/xiaomi/gl/ShaderManager;->getShaderByType(I)Ljava/lang/String;

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

    const-string/jumbo v1, "uDisplayP3ToSrgb"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/k;->y:I

    iget v0, p0, Lp3/j;->j:I

    const-string/jumbo v1, "uMixAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/j;->r:I

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

    iget v0, p0, Lp3/j;->j:I

    const-string/jumbo v1, "uCornerRadius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/k;->z:I

    iget v0, p0, Lp3/j;->j:I

    const-string/jumbo v1, "uTexSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/k;->A:I

    iget v0, p0, Lp3/j;->j:I

    const-string/jumbo v1, "uRounded"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/k;->B:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-class v0, Lp3/k;

    const-string v1, ": mProgram = 0"

    invoke-static {v0, v1}, LKa/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final r()V
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lp3/j;->v:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final s()V
    .locals 3

    const/16 v0, 0x20

    invoke-static {v0}, Lp3/j;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lp3/j;->s:Ljava/nio/FloatBuffer;

    sget-object v2, Lp3/k;->C:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lp3/j;->s:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v0}, Lp3/j;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lp3/j;->t:Ljava/nio/FloatBuffer;

    sget-object v1, Lp3/k;->D:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lp3/j;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
