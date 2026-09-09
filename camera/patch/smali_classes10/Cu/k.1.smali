.class public final LCu/k;
.super LCu/i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LCu/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ltu/d;
    .locals 0

    sget-object p0, Ltu/d;->f:Ltu/d;

    return-object p0
.end method

.method public final b(Lru/h;)V
    .locals 1

    iget-boolean v0, p0, LCu/x;->b:Z

    if-eqz v0, :cond_0

    const-string p0, "FilterRenderer"

    const-string p1, "skip onAttach, this renderer already be attached"

    invoke-static {p0, p1}, Lcom/xiaomi/renderengine/log/LogRE;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, LCu/i;->b(Lru/h;)V

    return-void
.end method

.method public final h(ILwu/h;)V
    .locals 2

    const-string v0, "PhoenixBeacon"

    const-string v1, "preview Cu.k filter h entered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, LCu/i;->h(ILwu/h;)V

    iget p1, p0, LCu/i;->q:I

    iget-object p2, p0, LCu/i;->G:Lvu/d;

    iget-boolean p2, p2, Lvu/d;->c:Z

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget p1, p0, LCu/i;->r:I

    iget-object p2, p0, LCu/i;->G:Lvu/d;

    iget-boolean p2, p2, Lvu/d;->f:Z

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget p1, p0, LCu/i;->o:I

    iget-object p0, p0, LCu/i;->G:Lvu/d;

    iget-boolean p0, p0, Lvu/d;->h:Z

    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method
