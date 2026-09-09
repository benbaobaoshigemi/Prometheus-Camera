.class public final Lq6/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:I

.field public c:Ljava/nio/FloatBuffer;

.field public d:Landroid/graphics/SurfaceTexture;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Lwu/a;


# direct methods
.method public static c(ILjava/lang/String;)I
    .locals 4

    const-string v0, "OESRenderer"

    invoke-static {p0, v0}, Lcom/xiaomi/gl/MIGL;->glCreateShader(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v2, 0x8b81

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v3

    if-nez p1, :cond_0

    const-string p1, "Could not compile shader "

    const-string v2, ":"

    invoke-static {p0, p1, v2}, LF1/E;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lcom/xiaomi/gl/MIGL;->glDeleteShader(ILjava/lang/String;)V

    return v3

    :cond_0
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 6

    const v0, 0x8b31

    const-string v1, "#version 310 es\nlayout (location = 0) in vec4 aPosition;\nout vec2 vTexCoord;\nvoid main() {\n    gl_Position =    aPosition;\n    vTexCoord =  (((gl_Position + 1.0) * 0.5)).xy;\n}"

    invoke-static {v0, v1}, Lq6/m1;->c(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lq6/m1;->e:I

    const/4 v1, 0x0

    const-string v2, "OESRenderer"

    if-nez v0, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    const v0, 0x8b30

    const-string v3, "#version 310 es\n#extension GL_OES_EGL_image_external_essl3 : enable \nprecision mediump float;\nin vec2 vTexCoord;\nout vec4 outColor;\nuniform mat4 uSTMatrix;\nuniform samplerExternalOES sTexture;\nuniform float uSrgbToDisplayP3;\nconst mat3 CSC_SRGB_TO_XYZ = mat3(\n    0.4123907992659595, 0.2126390058715103,  0.01933081871559185,\n    0.3575843393838779, 0.7151686787677559,  0.1191947797946259,\n    0.1804807884018343, 0.07219231536073372, 0.9505321522496606\n);\nconst mat3 CSC_XYZ_TO_DISPLAY_P3 = mat3(\n    2.493496911941424, -0.829488969561575,   0.03584583024378433,\n   -0.9313836179191236, 1.762664060318346,  -0.07617238926804171,\n   -0.4027107844507168, 0.02362468584194359, 0.9568845240076873\n);\nfloat oetf_sRGB(float linear) {\n    return linear <= 0.0031308 ? 12.92 * linear : 1.055 * pow(linear, 1.0 / 2.4) - 0.055;\n}\nfloat oetf_inverse_sRGB(float rgb) {\n    return rgb <= 0.04045 ? rgb / 12.92 : pow((rgb + 0.055) / 1.055, 2.4);\n}\nvoid main() {\n    vec2 uv = vTexCoord;\n    vec4 uvuv = vec4(uv.x,uv.y,0.0,1.0);\n    uvuv = uSTMatrix * uvuv;\n    vec3 color = texture(sTexture, uvuv.xy).rgb;\n    if (uSrgbToDisplayP3 > 0.5) {\n        color.r = oetf_inverse_sRGB(color.r);\n        color.g = oetf_inverse_sRGB(color.g);\n        color.b = oetf_inverse_sRGB(color.b);\n        vec3 xyz = CSC_SRGB_TO_XYZ * color.rgb;\n        vec3 rgb = CSC_XYZ_TO_DISPLAY_P3 * xyz;\n        color.r = oetf_sRGB(rgb.r);\n        color.g = oetf_sRGB(rgb.g);\n        color.b = oetf_sRGB(rgb.b);\n    }\n    outColor = vec4(color, 1.0);\n}"

    invoke-static {v0, v3}, Lq6/m1;->c(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lq6/m1;->f:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/xiaomi/gl/MIGL;->glCreateProgram(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget v3, p0, Lq6/m1;->e:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v3, "glAttachShader"

    invoke-static {v2, v3}, Lm3/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lq6/m1;->f:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v2, v3}, Lm3/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x8b82

    invoke-static {v0, v5, v4, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v4, v1

    if-eq v4, v3, :cond_2

    const-string v3, "Could not link program: "

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/xiaomi/gl/MIGL;->glDeleteProgram(ILjava/lang/String;)V

    move v0, v1

    :cond_2
    iget v3, p0, Lq6/m1;->e:I

    invoke-static {v3, v2}, Lcom/xiaomi/gl/MIGL;->glDeleteShader(ILjava/lang/String;)V

    iget v3, p0, Lq6/m1;->f:I

    invoke-static {v3, v2}, Lcom/xiaomi/gl/MIGL;->glDeleteShader(ILjava/lang/String;)V

    :goto_1
    iput v0, p0, Lq6/m1;->b:I

    const-string v0, "createProgram"

    invoke-static {v2, v0}, Lm3/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lq6/m1;->b:I

    const-string v3, "aPosition"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lq6/m1;->g:I

    iget v0, p0, Lq6/m1;->b:I

    const-string/jumbo v3, "sTexture"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lq6/m1;->h:I

    iget v0, p0, Lq6/m1;->b:I

    const-string/jumbo v3, "uSTMatrix"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lq6/m1;->i:I

    iget v0, p0, Lq6/m1;->b:I

    const-string/jumbo v3, "uSrgbToDisplayP3"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lq6/m1;->j:I

    const-string v0, "glGetUniformLocation"

    invoke-static {v2, v0}, Lm3/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v2}, Lcom/xiaomi/gl/MIGL;->glGenTextures(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lq6/m1;->a:[I

    aput v0, p0, v1

    const v3, 0x8d65

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v4, 0x46180400    # 9729.0f

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x812f

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v0, "initOESTexture"

    invoke-static {v2, v0}, Lm3/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "initOESTexture OESTexture: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(II[F)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget p1, p0, Lq6/m1;->b:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const p1, 0x84c0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p1, p0, Lq6/m1;->a:[I

    aget p1, p1, v0

    const p2, 0x8d65

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lq6/m1;->h:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object p1, p0, Lq6/m1;->k:Lwu/a;

    sget-object p2, Lwu/a;->b:Lwu/a$d;

    if-eq p1, p2, :cond_1

    sget-object p2, Lwu/a;->c:Lwu/a$f;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lq6/m1;->j:I

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "OESRenderer"

    const-string v1, "enable srgb to display p3 gamut mapping"

    invoke-static {p2, v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lq6/m1;->j:I

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_1
    iget p1, p0, Lq6/m1;->i:I

    const/4 p2, 0x1

    invoke-static {p1, p2, v0, p3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, p0, Lq6/m1;->g:I

    iget-object v6, p0, Lq6/m1;->c:Ljava/nio/FloatBuffer;

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p1, p0, Lq6/m1;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget p0, p0, Lq6/m1;->g:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method
