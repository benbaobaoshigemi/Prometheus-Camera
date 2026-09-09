.class public abstract LCu/i;
.super LCu/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCu/i$a;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:I

.field public D:Ljava/lang/String;

.field public E:Z

.field public final F:[I

.field public G:Lvu/d;

.field public H:Ljava/nio/FloatBuffer;

.field public I:Ljava/nio/FloatBuffer;

.field public J:Landroid/graphics/Bitmap;

.field public K:Lcom/xiaomi/milab/filtersdk/CandySDK;

.field public final L:Ljava/util/concurrent/atomic/AtomicLong;

.field public M:LCu/i$a;

.field public N:Z

.field public final O:Z

.field public P:I

.field public Q:Z

.field public d:Landroid/content/Context;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, LCu/x;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LCu/i;->e:I

    const/4 v1, 0x1

    new-array v2, v1, [I

    iput-object v2, p0, LCu/i;->F:[I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, p0, LCu/i;->L:Ljava/util/concurrent/atomic/AtomicLong;

    iput-boolean v1, p0, LCu/i;->O:Z

    const/16 v1, 0x64

    iput v1, p0, LCu/i;->P:I

    iput-boolean v0, p0, LCu/i;->Q:Z

    return-void
.end method


# virtual methods
.method public b(Lru/h;)V
    .locals 6

    iget-boolean v0, p0, LCu/x;->b:Z

    if-eqz v0, :cond_0

    const-string p0, "FilterBasicRender"

    const-string p1, "skip onAttach, this renderer already be attached"

    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/LogRE;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, LCu/x;->b(Lru/h;)V

    iget-boolean p1, p0, LCu/i;->O:Z

    if-nez p1, :cond_3

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/xiaomi/gl/ShaderManager;->a(I)I

    move-result p1

    iput p1, p0, LCu/i;->e:I

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget p1, p0, LCu/i;->e:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->h:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "uSTMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->i:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "inputImageTexture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->j:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "inputImageTexture2"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->k:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "aPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->l:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "aTexCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->m:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "strength"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->n:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "needDark"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->q:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "needNoise"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->r:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "needSharpen"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->o:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "resolution"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->p:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "frameNumberCount"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->s:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "blockCount"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->t:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "blockOffset"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->u:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "smoothStartValue"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->v:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "falloff"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->w:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "smoothEndValue"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->x:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "darkStrength"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->y:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "noiseStrength"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->z:I

    iget p1, p0, LCu/i;->e:I

    const-string v0, "sharpenStrength"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LCu/i;->A:I

    iget-object p1, p0, LCu/i;->H:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_1

    sget-object p1, Lwu/i;->b:[F

    invoke-static {p1}, Lwu/i;->c([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, LCu/i;->H:Ljava/nio/FloatBuffer;

    :cond_1
    iget-object p1, p0, LCu/i;->I:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_3

    sget-object p1, Lwu/i;->d:[F

    invoke-static {p1}, Lwu/i;->c([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, LCu/i;->I:Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": mProgram = 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object p1, p0, LCu/x;->c:Lru/h;

    if-nez p1, :cond_4

    iget-object p1, p0, LCu/i;->d:Landroid/content/Context;

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lru/h;->b:Landroid/content/Context;

    :goto_1
    iput-object p1, p0, LCu/i;->d:Landroid/content/Context;

    iget-object v0, p0, LCu/i;->D:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v1, p0, LCu/i;->F:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    if-nez v3, :cond_5

    iget-object v3, p0, LCu/i;->G:Lvu/d;

    iget-boolean v3, v3, Lvu/d;->j:Z

    iget-boolean v4, p0, LCu/i;->E:Z

    iget v5, p0, LCu/i;->C:I

    invoke-static {p1, v3, v4, v0, v5}, Lcom/xiaomi/utils/OpenGl3dUtils;->c(Landroid/content/Context;ZZLjava/lang/String;I)I

    move-result p1

    aput p1, v1, v2

    :cond_5
    iget-object p1, p0, LCu/i;->D:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object v0, p0, LCu/i;->J:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    iget-object v0, p0, LCu/i;->d:Landroid/content/Context;

    iget-object v1, p0, LCu/i;->G:Lvu/d;

    iget-boolean v1, v1, Lvu/d;->j:Z

    iget-boolean v2, p0, LCu/i;->E:Z

    invoke-static {v0, p1, v1, v2}, Lcom/xiaomi/utils/OpenGl3dUtils;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, LCu/i;->J:Landroid/graphics/Bitmap;

    :cond_6
    new-instance p1, LCu/i$a;

    invoke-direct {p1, p0}, LCu/i$a;-><init>(LCu/i;)V

    iput-object p1, p0, LCu/i;->M:LCu/i$a;

    return-void
.end method

.method public final c(LP8/a;)V
    .locals 0

    check-cast p1, Lvu/d;

    iput-object p1, p0, LCu/i;->G:Lvu/d;

    return-void
.end method

.method public d()V
    .locals 4

    iget-boolean v0, p0, LCu/x;->b:Z

    const-string v1, "FilterBasicRender"

    if-nez v0, :cond_0

    const-string p0, "skip onDetach, this renderer already be detached"

    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/LogRE;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LCu/x;->b:Z

    iget v2, p0, LCu/i;->e:I

    invoke-static {v2, v1}, Lcom/xiaomi/gl/MIGL;->glDeleteProgram(ILjava/lang/String;)V

    iput v0, p0, LCu/i;->e:I

    iget-object v2, p0, LCu/i;->K:Lcom/xiaomi/milab/filtersdk/CandySDK;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/xiaomi/milab/filtersdk/CandySDK;->e()V

    const/4 v2, 0x1

    iput-boolean v2, p0, LCu/i;->N:Z

    :cond_1
    iget-object v2, p0, LCu/i;->F:[I

    invoke-static {v2, v1}, Lcom/xiaomi/gl/MIGL;->glDeleteTextures([ILjava/lang/String;)V

    aput v0, v2, v0

    iget-object p0, p0, LCu/i;->L:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_2
    return-void
.end method

.method public final e(Lru/l;)I
    .locals 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClassSimpleName"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    iget-object v7, v0, LCu/i;->G:Lvu/d;

    const-string v8, "FilterBasicRender"

    if-eqz v7, :cond_1a

    iget-object v7, v7, Lvu/d;->b:Ljava/lang/String;

    if-nez v7, :cond_0

    goto/16 :goto_6

    :cond_0
    sget v7, Lwu/i;->a:I

    if-ne v7, v6, :cond_1

    const-string v0, "Skip filter rendering"

    invoke-static {v8, v0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lru/l;->c:Lsu/b;

    invoke-virtual {v0}, Lsu/b;->c()I

    move-result v0

    return v0

    :cond_1
    iget-object v7, v1, Lru/l;->f:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, v0, LCu/i;->f:I

    iget-object v7, v1, Lru/l;->f:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, v0, LCu/i;->g:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "::onRender"

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-boolean v8, v0, LCu/i;->O:Z

    const/4 v9, 0x5

    if-eqz v8, :cond_15

    iget-object v8, v0, LCu/i;->M:LCu/i$a;

    iget-object v10, v0, LCu/i;->G:Lvu/d;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    const/4 v12, 0x6

    if-nez v10, :cond_2

    const/4 v8, 0x0

    move/from16 v16, v2

    goto/16 :goto_2

    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v10, Lvu/d;->o:I

    if-eq v14, v3, :cond_4

    if-eq v14, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v14, "WhiteMistEffect;LumThresh=0.1;Raduis=4.0;MixRatio=1.0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v14, "BlackMistEffect;LumThresh=0.5;Raduis=4.0;MixRatio=1.0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v8, v8, LCu/i$a;->a:LCu/i;

    iget-boolean v14, v8, LCu/i;->Q:Z

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v14, :cond_5

    move v8, v15

    goto :goto_1

    :cond_5
    iget v14, v8, LCu/i;->P:I

    iget-object v8, v8, LCu/i;->G:Lvu/d;

    iget v8, v8, Lvu/d;->e:I

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v8, v14

    :goto_1
    const-string v14, "@CubeLutEffect;cube_strength="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Lvu/d;->i:[F

    move/from16 v16, v2

    if-eqz v14, :cond_6

    array-length v2, v14

    if-nez v2, :cond_7

    :cond_6
    new-array v14, v12, [F

    const v2, 0x3fb33333    # 1.4f

    aput v2, v14, v4

    aput v15, v14, v3

    const v2, 0x3e4ccccd    # 0.2f

    aput v2, v14, v16

    aput v15, v14, v6

    const v2, 0x3ecccccd    # 0.4f

    aput v2, v14, v5

    aput v2, v14, v9

    :cond_7
    iget-boolean v2, v10, Lvu/d;->c:Z

    if-nez v2, :cond_8

    iget-boolean v2, v10, Lvu/d;->f:Z

    if-nez v2, :cond_8

    aget v2, v14, v6

    cmpl-float v2, v2, v11

    if-eqz v2, :cond_8

    aget v2, v14, v5

    cmpl-float v2, v2, v11

    if-nez v2, :cond_c

    :cond_8
    const-string v2, "@CvEffect;"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v10, Lvu/d;->c:Z

    if-nez v2, :cond_9

    aget v2, v14, v6

    cmpl-float v2, v2, v11

    if-nez v2, :cond_a

    :cond_9
    const-string v2, "SmoothStartValue="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v14, v4

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ";Falloff="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v14, v3

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ";SmoothEndValue="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v14, v16

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ";DarkStrength="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v14, v6

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-boolean v2, v10, Lvu/d;->f:Z

    if-nez v2, :cond_b

    aget v2, v14, v5

    cmpl-float v2, v2, v11

    if-nez v2, :cond_c

    :cond_b
    const-string v2, "NoiseStrength="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v14, v5

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-boolean v2, v10, Lvu/d;->h:Z

    if-eqz v2, :cond_d

    const-string v2, "@SharpenEffect;SharpenIntensity="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v14, v9

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    iget-object v2, v0, LCu/i;->G:Lvu/d;

    iget-boolean v9, v2, Lvu/d;->k:Z

    if-eqz v9, :cond_e

    iget-boolean v10, v0, LCu/i;->B:Z

    if-ne v10, v9, :cond_f

    :cond_e
    iget-object v2, v2, Lvu/d;->b:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v9, v0, LCu/i;->D:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    iget-object v2, v0, LCu/i;->G:Lvu/d;

    iget-object v9, v2, Lvu/d;->b:Ljava/lang/String;

    iput-object v9, v0, LCu/i;->D:Ljava/lang/String;

    iget-boolean v10, v2, Lvu/d;->g:Z

    iput-boolean v10, v0, LCu/i;->E:Z

    iget-boolean v13, v2, Lvu/d;->k:Z

    iput-boolean v13, v0, LCu/i;->B:Z

    iget-object v13, v0, LCu/i;->d:Landroid/content/Context;

    iget-boolean v2, v2, Lvu/d;->j:Z

    invoke-static {v13, v9, v2, v10}, Lcom/xiaomi/utils/OpenGl3dUtils;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, LCu/i;->J:Landroid/graphics/Bitmap;

    move v2, v3

    goto :goto_3

    :cond_10
    move v2, v4

    :goto_3
    iget-object v9, v0, LCu/i;->K:Lcom/xiaomi/milab/filtersdk/CandySDK;

    if-nez v9, :cond_11

    new-instance v2, Lcom/xiaomi/milab/filtersdk/CandySDK;

    invoke-direct {v2, v12}, Lcom/xiaomi/milab/filtersdk/CandySDK;-><init>(I)V

    iput-object v2, v0, LCu/i;->K:Lcom/xiaomi/milab/filtersdk/CandySDK;

    invoke-virtual {v2, v8}, Lcom/xiaomi/milab/filtersdk/CandySDK;->a(Ljava/lang/String;)V

    iget-object v2, v0, LCu/i;->K:Lcom/xiaomi/milab/filtersdk/CandySDK;

    iget-object v9, v0, LCu/i;->J:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v9}, Lcom/xiaomi/milab/filtersdk/CandySDK;->g(Landroid/graphics/Bitmap;)V

    iput-boolean v4, v0, LCu/i;->N:Z

    goto :goto_4

    :cond_11
    if-nez v2, :cond_12

    iget-boolean v2, v0, LCu/i;->N:Z

    if-eqz v2, :cond_13

    :cond_12
    invoke-virtual {v9}, Lcom/xiaomi/milab/filtersdk/CandySDK;->e()V

    new-instance v2, Lcom/xiaomi/milab/filtersdk/CandySDK;

    invoke-direct {v2, v12}, Lcom/xiaomi/milab/filtersdk/CandySDK;-><init>(I)V

    iput-object v2, v0, LCu/i;->K:Lcom/xiaomi/milab/filtersdk/CandySDK;

    invoke-virtual {v2, v8}, Lcom/xiaomi/milab/filtersdk/CandySDK;->a(Ljava/lang/String;)V

    iget-object v2, v0, LCu/i;->K:Lcom/xiaomi/milab/filtersdk/CandySDK;

    iget-object v9, v0, LCu/i;->J:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v9}, Lcom/xiaomi/milab/filtersdk/CandySDK;->g(Landroid/graphics/Bitmap;)V

    iput-boolean v4, v0, LCu/i;->N:Z

    :cond_13
    :goto_4
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    new-array v5, v5, [F

    aput v11, v5, v4

    aput v11, v5, v3

    aput v2, v5, v16

    aput v9, v5, v6

    iget-object v2, v0, LCu/i;->K:Lcom/xiaomi/milab/filtersdk/CandySDK;

    invoke-virtual {v2, v8}, Lcom/xiaomi/milab/filtersdk/CandySDK;->i(Ljava/lang/String;)V

    iget-object v2, v1, Lru/l;->d:Lsu/b;

    if-nez v2, :cond_14

    iget-object v0, v0, LCu/i;->K:Lcom/xiaomi/milab/filtersdk/CandySDK;

    iget-object v2, v1, Lru/l;->c:Lsu/b;

    invoke-virtual {v2}, Lsu/b;->c()I

    move-result v19

    iget-object v1, v1, Lru/l;->j:Lwu/h;

    iget-object v1, v1, Lwu/h;->e:[F

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v21

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v22

    const/16 v20, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v23, v5

    invoke-virtual/range {v17 .. v23}, Lcom/xiaomi/milab/filtersdk/CandySDK;->d([FIIII[F)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v4

    :cond_14
    move-object/from16 v23, v5

    iget-object v0, v0, LCu/i;->K:Lcom/xiaomi/milab/filtersdk/CandySDK;

    iget-object v2, v1, Lru/l;->c:Lsu/b;

    invoke-virtual {v2}, Lsu/b;->c()I

    move-result v19

    iget-object v2, v1, Lru/l;->d:Lsu/b;

    invoke-virtual {v2}, Lsu/b;->a()I

    move-result v20

    iget-object v2, v1, Lru/l;->j:Lwu/h;

    iget-object v2, v2, Lwu/h;->e:[F

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v21

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v22

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v23}, Lcom/xiaomi/milab/filtersdk/CandySDK;->d([FIIII[F)V

    invoke-static {v4}, Lcom/xiaomi/gl/MIGL;->glBindFramebuffer(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v1, Lru/l;->d:Lsu/b;

    invoke-virtual {v0}, Lsu/b;->c()I

    move-result v0

    return v0

    :cond_15
    iget-object v2, v1, Lru/l;->j:Lwu/h;

    invoke-virtual {v2}, Lwu/h;->e()V

    iget-object v2, v1, Lru/l;->d:Lsu/b;

    if-nez v2, :cond_16

    invoke-static {v4}, Lcom/xiaomi/gl/MIGL;->glBindFramebuffer(I)V

    iget-object v2, v1, Lru/l;->g:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, v1, Lru/l;->g:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    goto :goto_5

    :cond_16
    iget-object v2, v1, Lru/l;->j:Lwu/h;

    invoke-virtual {v2}, Lwu/h;->b()V

    iget-object v2, v1, Lru/l;->d:Lsu/b;

    invoke-virtual {v2}, Lsu/b;->a()I

    move-result v2

    invoke-static {v2}, Lcom/xiaomi/gl/MIGL;->glBindFramebuffer(I)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    :goto_5
    iget v6, v0, LCu/i;->e:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v6

    if-eqz v6, :cond_19

    iget v6, v0, LCu/i;->e:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v6, v0, LCu/i;->l:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v6, v0, LCu/i;->m:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v4, v4, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v6, v1, Lru/l;->j:Lwu/h;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v6, v2, v3}, Lwu/h;->c(FF)V

    iget-object v2, v1, Lru/l;->j:Lwu/h;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v3, v6}, Lwu/h;->f(FF)V

    iget-object v2, v1, Lru/l;->c:Lsu/b;

    invoke-virtual {v2}, Lsu/b;->c()I

    move-result v2

    iget-object v3, v1, Lru/l;->j:Lwu/h;

    invoke-virtual {v0, v2, v3}, LCu/i;->h(ILwu/h;)V

    iget-object v2, v0, LCu/i;->F:[I

    aget v2, v2, v4

    if-nez v2, :cond_17

    iget-object v0, v1, Lru/l;->j:Lwu/h;

    invoke-virtual {v0}, Lwu/h;->d()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v1, Lru/l;->c:Lsu/b;

    invoke-virtual {v0}, Lsu/b;->c()I

    move-result v0

    return v0

    :cond_17
    invoke-static {v9, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v4}, Lcom/xiaomi/gl/MIGL;->glBindFramebuffer(I)V

    iget v2, v0, LCu/i;->l:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, v0, LCu/i;->m:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, v1, Lru/l;->j:Lwu/h;

    invoke-virtual {v0}, Lwu/h;->d()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v1, Lru/l;->d:Lsu/b;

    if-nez v0, :cond_18

    return v4

    :cond_18
    invoke-virtual {v0}, Lsu/b;->c()I

    move-result v0

    return v0

    :cond_19
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid shader program. shaderProgram:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, LCu/i;->e:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    :goto_6
    const-string v0, "skip render because attribute not ready yet!"

    invoke-static {v8, v0}, Lcom/xiaomi/renderengine/log/LogRE;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lru/l;->c:Lsu/b;

    invoke-virtual {v0}, Lsu/b;->c()I

    move-result v0

    return v0
.end method

.method public h(ILwu/h;)V
    .locals 12

    const-string v10, "PhoenixBeacon"

    const-string v11, "preview Cu.i.h entered"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, LCu/i;->l:I

    iget-object v5, p0, LCu/i;->H:Ljava/nio/FloatBuffer;

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/16 v4, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v6, p0, LCu/i;->m:I

    iget-object v11, p0, LCu/i;->I:Ljava/nio/FloatBuffer;

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/4 v7, 0x2

    const/16 v10, 0x8

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, LCu/i;->h:I

    invoke-virtual {p2}, Lwu/h;->a()[F

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, LCu/i;->i:I

    iget-object v1, p2, Lwu/h;->e:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, LCu/i;->G:Lvu/d;

    iget-boolean v1, v0, Lvu/d;->k:Z

    iget-object v4, p0, LCu/i;->F:[I

    if-eqz v1, :cond_0

    iget-boolean v5, p0, LCu/i;->B:Z

    if-ne v5, v1, :cond_1

    :cond_0
    iget-object v0, v0, Lvu/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, LCu/i;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, LCu/i;->G:Lvu/d;

    iget-object v1, v0, Lvu/d;->b:Ljava/lang/String;

    iput-object v1, p0, LCu/i;->D:Ljava/lang/String;

    iget v1, v0, Lvu/d;->d:I

    iput v1, p0, LCu/i;->C:I

    iget-boolean v1, v0, Lvu/d;->k:Z

    iput-boolean v1, p0, LCu/i;->B:Z

    iget-boolean v0, v0, Lvu/d;->g:Z

    iput-boolean v0, p0, LCu/i;->E:Z

    aget v0, v4, v3

    const-string v1, "FilterBasicRender"

    invoke-static {v0, v1}, Lcom/xiaomi/gl/MIGL;->glDeleteTexture(ILjava/lang/String;)V

    iget-object v0, p0, LCu/i;->d:Landroid/content/Context;

    iget-object v1, p0, LCu/i;->G:Lvu/d;

    iget-boolean v5, v1, Lvu/d;->j:Z

    iget-boolean v6, p0, LCu/i;->E:Z

    iget-object v7, p0, LCu/i;->D:Ljava/lang/String;

    iget v1, v1, Lvu/d;->d:I

    invoke-static {v0, v5, v6, v7, v1}, Lcom/xiaomi/utils/OpenGl3dUtils;->c(Landroid/content/Context;ZZLjava/lang/String;I)I

    move-result v0

    aput v0, v4, v3

    :cond_2
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, LCu/i;->j:I

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c2

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p1, 0x806f

    aget v0, v4, v3

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, LCu/i;->k:I

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object p1, p0, LCu/i;->G:Lvu/d;

    iget-object p1, p1, Lvu/d;->i:[F

    const/4 v1, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eqz p1, :cond_3

    array-length v6, p1

    if-nez v6, :cond_4

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [F

    const v6, 0x3fb33333    # 1.4f

    aput v6, p1, v3

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, p1, v2

    const v7, 0x3e4ccccd    # 0.2f

    aput v7, p1, v0

    aput v6, p1, v5

    const v6, 0x3ecccccd    # 0.4f

    aput v6, p1, v4

    aput v6, p1, v1

    :cond_4
    iget v6, p0, LCu/i;->v:I

    aget v7, p1, v3

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v6, p0, LCu/i;->w:I

    aget v2, p1, v2

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, p0, LCu/i;->x:I

    aget v0, p1, v0

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, LCu/i;->y:I

    aget v2, p1, v5

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, LCu/i;->z:I

    aget v2, p1, v4

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, LCu/i;->A:I

    aget p1, p1, v1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-boolean p1, p0, LCu/i;->Q:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x64

    goto :goto_0

    :cond_5
    iget p1, p0, LCu/i;->P:I

    iget-object v0, p0, LCu/i;->G:Lvu/d;

    iget v0, v0, Lvu/d;->e:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    iget v0, p0, LCu/i;->n:I

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object p1, p0, LCu/i;->L:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    iget v0, p0, LCu/i;->s:I

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    long-to-float p1, v1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p2, Lwu/h;->g:F

    const v0, 0x3f733333    # 0.95f

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    const/16 v1, 0xbe2

    if-ltz p1, :cond_7

    iget p1, p2, Lwu/h;->h:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 p2, 0x303

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    :goto_2
    iget p1, p0, LCu/i;->t:I

    iget-object p2, p0, LCu/i;->G:Lvu/d;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, LCu/i;->u:I

    iget-object p2, p0, LCu/i;->G:Lvu/d;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, LCu/i;->p:I

    iget p2, p0, LCu/i;->f:I

    int-to-float p2, p2

    iget p0, p0, LCu/i;->g:I

    int-to-float p0, p0

    invoke-static {p1, p2, p0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method
