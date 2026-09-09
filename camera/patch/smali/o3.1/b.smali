.class public final Lo3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedList;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:[F

.field public final m:Z

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v9, v0, Lo3/b;->a:Ljava/util/LinkedList;

    .line 17
    const-string v9, "#version 310 es \nlayout(location = 0) in vec4 position;\nlayout(location = 1) in vec4 inputTextureCoordinate;\n \nout vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    iput-object v9, v0, Lo3/b;->b:Ljava/lang/String;

    .line 18
    const-string v9, "#version 310 es\n precision mediump float;\n in highp vec2 textureCoordinate;\n out vec4 outColor;\n uniform float strength;\n uniform sampler2D inputImageTexture;\n uniform mediump sampler3D inputImageTexture2;\n void main()\n {\n     vec4 textureColor = texture(inputImageTexture, textureCoordinate);\n     vec4 filterColor = texture(inputImageTexture2, textureColor.rgb);\n     outColor = mix(textureColor, vec4(filterColor.rgb, textureColor.w), strength);\n }"

    iput-object v9, v0, Lo3/b;->c:Ljava/lang/String;

    const/16 v0, 0x20

    .line 19
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 20
    sget-object v10, Lo3/e;->b:[F

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 22
    sget-object v9, Lo3/e;->a:[F

    .line 23
    aget v10, v9, v8

    aget v11, v9, v7

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    const/high16 v13, 0x3f800000    # 1.0f

    if-nez v11, :cond_0

    move v11, v13

    goto :goto_0

    :cond_0
    move v11, v12

    :goto_0
    aget v14, v9, v6

    aget v15, v9, v5

    cmpl-float v15, v15, v12

    if-nez v15, :cond_1

    move v15, v13

    goto :goto_1

    :cond_1
    move v15, v12

    :goto_1
    aget v16, v9, v4

    aget v17, v9, v3

    cmpl-float v17, v17, v12

    if-nez v17, :cond_2

    move/from16 v17, v13

    goto :goto_2

    :cond_2
    move/from16 v17, v12

    :goto_2
    aget v18, v9, v2

    aget v9, v9, v1

    cmpl-float v9, v9, v12

    if-nez v9, :cond_3

    move v12, v13

    :cond_3
    const/16 v9, 0x8

    new-array v9, v9, [F

    aput v10, v9, v8

    aput v11, v9, v7

    aput v14, v9, v6

    aput v15, v9, v5

    aput v16, v9, v4

    aput v17, v9, v3

    aput v18, v9, v2

    aput v12, v9, v1

    .line 24
    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo3/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lo3/b;->p:I

    .line 3
    iput p1, p0, Lo3/b;->i:I

    .line 4
    iput-object p2, p0, Lo3/b;->j:Ljava/lang/String;

    .line 5
    iput p4, p0, Lo3/b;->k:I

    .line 6
    iput-object p3, p0, Lo3/b;->l:[F

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lo3/b;->m:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II[FI)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lo3/b;-><init>()V

    const/4 p5, -0x1

    .line 9
    iput p5, p0, Lo3/b;->p:I

    .line 10
    iput p2, p0, Lo3/b;->i:I

    .line 11
    iput-object p1, p0, Lo3/b;->j:Ljava/lang/String;

    .line 12
    iput p3, p0, Lo3/b;->k:I

    .line 13
    iput-object p4, p0, Lo3/b;->l:[F

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lo3/b;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v2, p0, Lo3/b;->j:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/prometheus/camera/filters/CustomLutStore;->pathForToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lwu/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/utils/OpenGl3dUtils;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LLu/c;

    iget-object v2, p0, Lo3/b;->j:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LLu/c;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    const-string v1, "lut_debug_blank_lut"

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, Lwu/g;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    iget-boolean p0, p0, Lo3/b;->m:Z

    const-string v0, "OpenGl3dUtils"

    if-eqz p0, :cond_2

    const-string p0, "\\d+"

    invoke-virtual {v2, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    and-int/lit16 p0, p0, 0xfff

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/utils/OpenGl3dUtils;->b(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lwu/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/utils/OpenGl3dUtils;->b(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lwu/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_5

    invoke-static {p1, v1}, Lwu/g;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget p0, Lwu/i;->a:I

    const/4 v3, 0x1

    if-ne p0, v3, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "res/raw/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lwu/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "LUT debug mode, find in sdcard/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", bitmap="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne p0, v3, :cond_4

    invoke-static {p1, v1}, Lwu/g;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v1, "LUT debug mode,blank lut."

    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :cond_5
    :goto_0
    if-nez p0, :cond_6

    const-string p0, "load3dLutTexture(39): mCurrentLutName = "

    invoke-static {p0, v2}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lwu/g;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public final b(Landroid/app/Application;)V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x8b31

    iget-object v3, p0, Lo3/b;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Lm3/b;->d(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "Load Program"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string v1, "Vertex Shader Failed"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const v5, 0x8b30

    iget-object v6, p0, Lo3/b;->c:Ljava/lang/String;

    invoke-static {v6, v5}, Lm3/b;->d(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    const-string v1, "Fragment Shader Failed"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v6, "OpenGlUtils"

    invoke-static {v6}, Lcom/xiaomi/gl/MIGL;->glCreateProgram(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v7}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v8, 0x8b82

    invoke-static {v7, v8, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v1, v1, v4

    if-gtz v1, :cond_2

    const-string v1, "Linking Failed"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v2, v6}, Lcom/xiaomi/gl/MIGL;->glDeleteShader(ILjava/lang/String;)V

    invoke-static {v5, v6}, Lcom/xiaomi/gl/MIGL;->glDeleteShader(ILjava/lang/String;)V

    move v4, v7

    :goto_0
    iput v4, p0, Lo3/b;->d:I

    const-string v1, "position"

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lo3/b;->e:I

    iget v1, p0, Lo3/b;->d:I

    const-string v2, "inputImageTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lo3/b;->f:I

    iget v1, p0, Lo3/b;->d:I

    const-string v2, "inputTextureCoordinate"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lo3/b;->g:I

    iput-boolean v0, p0, Lo3/b;->h:Z

    iget v1, p0, Lo3/b;->d:I

    const-string v2, "inputImageTexture2"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lo3/b;->n:I

    iget v1, p0, Lo3/b;->d:I

    const-string/jumbo v2, "strength"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lo3/b;->o:I

    iput-boolean v0, p0, Lo3/b;->h:Z

    new-instance v0, Lo3/a;

    invoke-direct {v0, p0, p1}, Lo3/a;-><init>(Lo3/b;Landroid/app/Application;)V

    iget-object p1, p0, Lo3/b;->a:Ljava/util/LinkedList;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lo3/b;->a:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Landroid/content/Context;)V
    .locals 7

    iget v0, p0, Lo3/b;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v1, p0, Lo3/b;->a:Ljava/util/LinkedList;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lo3/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo3/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lo3/b;->h:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Lo3/b;->e:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lo3/b;->e:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Lo3/b;->g:I

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lo3/b;->g:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p2, -0x1

    const/16 p3, 0xde1

    const v1, 0x84c0

    if-eq p1, p2, :cond_2

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lo3/b;->f:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_2
    iget p1, p0, Lo3/b;->p:I

    const v2, 0x806f

    const v3, 0x84c3

    if-eq p1, p2, :cond_4

    invoke-static {p1}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lo3/b;->j:Ljava/lang/String;

    iget v4, p0, Lo3/b;->i:I

    iget-boolean v5, p0, Lo3/b;->m:Z

    invoke-static {p4, v5, v0, p1, v4}, Lcom/xiaomi/utils/OpenGl3dUtils;->c(Landroid/content/Context;ZZLjava/lang/String;I)I

    move-result p1

    iput p1, p0, Lo3/b;->p:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "onDrawArraysPre reload Texture "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p0, Lo3/b;->p:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p4, v0, [Ljava/lang/Object;

    const-string v4, "ColorLookupFilter"

    invoke-static {v4, p1, p4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget p1, p0, Lo3/b;->p:I

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lo3/b;->n:I

    const/4 p4, 0x3

    invoke-static {p1, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 p1, 0x64

    iget p4, p0, Lo3/b;->k:I

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p4, p0, Lo3/b;->o:I

    int-to-float p1, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr p1, v4

    invoke-static {p4, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_4
    const/4 p1, 0x5

    const/4 p4, 0x4

    invoke-static {p1, v0, p4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget p1, p0, Lo3/b;->e:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p1, p0, Lo3/b;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p0, p0, Lo3/b;->p:I

    if-eq p0, p2, :cond_5

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_5
    invoke-static {p3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorLookupFilter("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo3/b;->i:I

    const-string/jumbo v2, "x"

    const-string v3, ", "

    invoke-static {v0, v1, v2, v1, v3}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lo3/b;->j:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, LS1/h;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
