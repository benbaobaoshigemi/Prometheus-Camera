.class public abstract Lp3/g;
.super Lp3/j;
.source "SourceFile"


# static fields
.field public static final y:[F

.field public static final z:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lp3/g;->y:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lp3/g;->z:[F

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
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public c(Lj3/b;)Z
    .locals 7

    iget v0, p1, Lj3/b;->a:I

    invoke-virtual {p0, v0}, Lp3/j;->t(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lj3/b;->a:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lj3/g;

    iget v0, p1, Lj3/g;->c:I

    iget-object v3, p1, Lj3/g;->b:Landroid/graphics/Rect;

    iget-boolean p1, p1, Lj3/g;->d:Z

    iget v4, p0, Lp3/j;->j:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v4, 0x84c0

    invoke-static {v0, v4}, Lp3/j;->n(II)V

    invoke-virtual {p0}, Lp3/h;->l()V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lp3/h;->a:Lia/g;

    invoke-interface {v0}, Lia/g;->getState()Li3/c;

    move-result-object v4

    invoke-virtual {v4}, Li3/c;->d()V

    invoke-interface {v0}, Lia/g;->getState()Li3/c;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Li3/c;->g(FF)V

    invoke-interface {v0}, Lia/g;->getState()Li3/c;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4, v5, v3}, Li3/c;->f(FF)V

    invoke-virtual {p0, p1}, Lp3/g;->w(Z)V

    const/4 p0, 0x4

    invoke-static {v2, v1, p0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-interface {v0}, Lia/g;->getState()Li3/c;

    move-result-object p0

    invoke-virtual {p0}, Li3/c;->c()V

    goto :goto_0

    :cond_2
    check-cast p1, Lj3/c;

    iget-object v0, p1, Lj3/c;->c:Lia/b;

    iget-object v1, p1, Lj3/n;->b:Landroid/graphics/Rect;

    iget-boolean p1, p1, Lj3/c;->d:Z

    invoke-virtual {p0, v0, v1, p1}, Lp3/g;->v(Lia/b;Landroid/graphics/Rect;Z)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public q()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/q;->a:Landroid/content/Context;

    const-string/jumbo v1, "shading_script/vertex_normal.txt"

    invoke-static {v0, v1}, Lvr/Q;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lp3/j;->p()Ljava/lang/String;

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

    const-string/jumbo v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lp3/j;->p:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": mProgram = 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lp3/j;->v:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s()V
    .locals 3

    const/16 v0, 0x20

    invoke-static {v0}, Lp3/j;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lp3/j;->s:Ljava/nio/FloatBuffer;

    sget-object v2, Lp3/g;->y:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lp3/j;->s:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v0}, Lp3/j;->m(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lp3/j;->t:Ljava/nio/FloatBuffer;

    sget-object v1, Lp3/g;->z:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lp3/j;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public v(Lia/b;Landroid/graphics/Rect;Z)V
    .locals 4

    iget v0, p0, Lp3/j;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lp3/h;->a:Lia/g;

    invoke-virtual {p1, v0}, Lia/b;->g(Lia/g;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "drawTexture: fail bind texture "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lia/b;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "PixelEffectRender"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lp3/j;->o(Lia/b;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lp3/h;->l()V

    const/16 p1, 0xbe2

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-interface {v0}, Lia/g;->getState()Li3/c;

    move-result-object p1

    invoke-virtual {p1}, Li3/c;->d()V

    invoke-interface {v0}, Lia/g;->getState()Li3/c;

    move-result-object p1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Li3/c;->g(FF)V

    invoke-interface {v0}, Lia/g;->getState()Li3/c;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Li3/c;->f(FF)V

    invoke-virtual {p0, p3}, Lp3/g;->w(Z)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    invoke-static {p0, v2, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-interface {v0}, Lia/g;->getState()Li3/c;

    move-result-object p0

    invoke-virtual {p0}, Li3/c;->c()V

    return-void
.end method

.method public w(Z)V
    .locals 12

    iget v0, p0, Lp3/j;->n:I

    iget-object v5, p0, Lp3/j;->s:Ljava/nio/FloatBuffer;

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/16 v4, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v6, p0, Lp3/j;->o:I

    iget-object v11, p0, Lp3/j;->t:Ljava/nio/FloatBuffer;

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/4 v7, 0x2

    const/16 v10, 0x8

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lp3/j;->n:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lp3/j;->o:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lp3/j;->k:I

    iget-object v1, p0, Lp3/h;->a:Lia/g;

    invoke-interface {v1}, Lia/g;->getState()Li3/c;

    move-result-object v2

    invoke-virtual {v2}, Li3/c;->a()[F

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lp3/j;->l:I

    invoke-interface {v1}, Lia/g;->getState()Li3/c;

    move-result-object v2

    iget-object v2, v2, Li3/c;->e:[F

    invoke-static {v0, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lp3/j;->m:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget p0, p0, Lp3/j;->p:I

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lia/g;->getState()Li3/c;

    move-result-object p1

    iget p1, p1, Li3/c;->g:F

    :goto_0
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
