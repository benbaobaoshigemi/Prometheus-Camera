.class public final Lj9/h1;
.super Lj9/W0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj9/W0<",
        "LRh/r;",
        ">;"
    }
.end annotation


# instance fields
.field public C:I

.field public D:Z

.field public final E:Lqh/d;

.field public final F:Z

.field public G:Z

.field public H:I

.field public I:I


# direct methods
.method public constructor <init>(Lj9/D0;Landroid/hardware/camera2/CaptureResult;ZLqh/d;Lqh/a;)V
    .locals 0

    invoke-direct {p0, p1, p5}, Lj9/W0;-><init>(Lj9/D0;Lqh/a;)V

    const/4 p1, -0x1

    iput p1, p0, Lj9/h1;->H:I

    iput p1, p0, Lj9/h1;->I:I

    iput-object p2, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    iput-boolean p3, p0, Lj9/h1;->D:Z

    iget-object p1, p0, Lj9/O0;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "fusionType -> "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p5, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, p5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p4, p0, Lj9/h1;->E:Lqh/d;

    invoke-virtual {p4}, Lqh/d;->d()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move p3, p2

    :cond_0
    iput-boolean p3, p0, Lj9/h1;->F:Z

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    iget-wide v0, p0, Lj9/W0;->A:J

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "ShotParallelStill"

    return-object p0
.end method

.method public final h()Z
    .locals 4

    iget-wide v0, p0, Lj9/W0;->A:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i()V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFastShutterCallbackSupported"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lj9/O0;->h:Lj9/a$j;

    if-eqz v0, :cond_0

    new-instance v1, Lj9/E1;

    iget-boolean v3, p0, Lj9/O0;->n:Z

    const/4 v5, 0x0

    iget-object v6, p0, Lj9/O0;->s:Lqh/a;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lj9/E1;-><init>(ZZZZLqh/a;)V

    invoke-interface {v0, v1}, Lj9/a$j;->onCaptureShutter(Lj9/E1;)V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 13

    const/4 v0, 0x0

    iput v0, p0, Lj9/h1;->C:I

    iget-object v1, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v1, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->h:Landroid/util/Size;

    iput-object v2, p0, Lj9/O0;->p:Landroid/util/Size;

    iget-boolean v2, p0, Lj9/h1;->D:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Lj9/i0;->P0:Lj1/a;

    invoke-virtual {v1}, Lj1/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lj9/O0;->b:Lj9/D0;

    invoke-virtual {v1}, Lj9/D0;->r2()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean v0, p0, Lj9/h1;->D:Z

    :cond_1
    iget-object v1, p0, Lj9/O0;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepare: qcfa = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lj9/h1;->D:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v2, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-boolean v3, v2, Lj9/i0;->Q0:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    iput v4, p0, Lj9/h1;->C:I

    :cond_2
    iget-boolean v2, v2, Lj9/i0;->G2:Z

    iget-object v3, p0, Lj9/O0;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v1, "anchor frame not enabled"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move v8, v0

    goto/16 :goto_2

    :cond_3
    iget-object v2, v1, Lj9/D0;->E:Lj9/e;

    if-nez v2, :cond_4

    :goto_1
    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lj9/D0;->b2()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v1, "flash disable anchor"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v5

    invoke-virtual {v5}, Lu2/Q;->M()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    sget-boolean v7, LJe/d;->i:Z

    xor-int/lit8 v8, v7, 0x1

    iget v9, p0, Lj9/h1;->C:I

    if-ne v9, v4, :cond_6

    const-string v1, "LLS disable anchor frame"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget-object v4, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v4, v4, Lj9/h0;->a:Lj9/i0;

    iget-boolean v4, v4, Lj9/i0;->v1:Z

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Lj9/e;->i()I

    move-result v4

    const/4 v9, 0x1

    if-nez v4, :cond_9

    iget-object v1, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-boolean v1, v1, Lj9/i0;->u1:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lj9/h1;->D:Z

    if-eqz v1, :cond_8

    const-string v1, "legacy qcfa disable anchor frame"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    move v8, v9

    goto/16 :goto_2

    :cond_9
    iget-object v4, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v4, v4, Lj9/h0;->a:Lj9/i0;

    iget-boolean v10, v4, Lj9/i0;->u1:Z

    const/16 v11, 0x64

    const/16 v12, 0x65

    if-eqz v10, :cond_d

    if-eqz v5, :cond_b

    iget-boolean v1, p0, Lj9/h1;->D:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x4

    invoke-static {v6, v1, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v8

    const-string v1, "qcfa anchor frame "

    invoke-static {v1, v8}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_a
    const/4 v1, 0x3

    invoke-static {v6, v1, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v8

    const-string/jumbo v1, "upscale anchor frame "

    invoke-static {v1, v8}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    iget-boolean v1, v4, Lj9/i0;->h1:Z

    if-eqz v1, :cond_c

    invoke-static {v6, v12, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v8

    const-string v1, "front qcfa portrait anchor frame "

    invoke-static {v1, v8}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_c
    invoke-static {v6, v11, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v8

    const-string v1, "front qcfa normal anchor frame "

    invoke-static {v1, v8}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_d
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    invoke-virtual {v4}, Lu2/Q;->O()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v1, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-boolean v1, v1, Lj9/i0;->h1:Z

    if-eqz v1, :cond_e

    invoke-static {v6, v12, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v8

    const-string v1, "front portrait anchor frame "

    invoke-static {v1, v8}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_e
    invoke-static {v6, v11, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v8

    const-string v1, "front normal anchor frame "

    invoke-static {v1, v8}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_f
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->M()Z

    move-result v1

    if-eqz v1, :cond_12

    iget v1, p0, Lj9/O0;->d:I

    const v4, 0x9000

    if-ne v1, v4, :cond_10

    const/4 v1, 0x7

    invoke-static {v6, v1, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v8

    const-string v1, "back portrait anchor frame "

    invoke-static {v1, v8}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_10
    if-eqz v7, :cond_11

    iget-boolean v1, p0, Lj9/h1;->F:Z

    if-eqz v1, :cond_11

    const/16 v1, 0xa

    invoke-static {v6, v1, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v8

    const-string v1, "back fusion anchor frame "

    invoke-static {v1, v8}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_11
    invoke-static {v6, v9, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v8

    const-string v1, "back normal anchor frame "

    invoke-static {v1, v8}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_12
    const-string v1, "default anchor frame "

    invoke-static {v1, v8}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iput-boolean v8, p0, Lj9/O0;->n:Z

    iput-boolean v8, p0, Lj9/O0;->q:Z

    iget v1, p0, Lj9/h1;->C:I

    invoke-virtual {p0, v1}, Lj9/O0;->d(I)I

    move-result v1

    iput v1, p0, Lj9/O0;->o:I

    iget-object v1, p0, Lj9/O0;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepare: use anchorframe="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lj9/O0;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ,soundTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj9/O0;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v1, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0, v1}, Lj9/D0;->t2(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v0

    iput-boolean v0, p0, Lj9/h1;->G:Z

    return-void
.end method

.method public final m()V
    .locals 11

    iget-object v0, p0, Lj9/O0;->a:Ljava/lang/String;

    iget-object v1, p0, Lj9/O0;->b:Lj9/D0;

    const-string v2, "parallel shotstill for camera "

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lj9/g1;

    invoke-direct {v4, p0}, Lj9/g1;-><init>(Lj9/h1;)V

    invoke-virtual {p0}, Lj9/h1;->x()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lj9/h1;->w(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v6, v1, Lj9/D0;->E:Lj9/e;

    invoke-static {v6}, Lj9/f;->R3(Lj9/e;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v3}, Ln9/b;->s0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_0
    iget-object v6, v1, Lj9/D0;->E:Lj9/e;

    invoke-static {v6}, Lj9/f;->k(Lj9/e;)I

    move-result v6

    iget v7, p0, Lj9/h1;->H:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iget-object v7, p0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    if-nez v7, :cond_2

    new-instance v7, Lcom/xiaomi/engine/BufferFormat;

    iget-object v8, p0, Lj9/W0;->v:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget-object v9, p0, Lj9/W0;->v:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    const/16 v10, 0x23

    invoke-direct {v7, v8, v9, v10}, Lcom/xiaomi/engine/BufferFormat;-><init>(III)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :catch_1
    move-exception p0

    goto/16 :goto_2

    :catch_2
    move-exception p0

    goto/16 :goto_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v5, v7, v6}, Lj9/W0;->r(Landroid/hardware/camera2/CaptureRequest;Lcom/xiaomi/engine/BufferFormat;I)Lcom/xiaomi/engine/PreProcessData;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v6}, Lj9/W0;->u(Lcom/xiaomi/engine/PreProcessData;)V

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Lj9/a;->a:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lh3/b;->a(Landroid/hardware/camera2/CaptureRequest;Ljava/lang/String;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v2

    const-string v6, "algo_prepare_capture"

    invoke-virtual {v2, v6}, LF6/q;->g(Ljava/lang/String;)J

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v2

    const-string v6, "algo_device_capture"

    invoke-virtual {v2, v6}, LF6/q;->q(Ljava/lang/String;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v2

    const-string/jumbo v6, "shot_prepare_capture"

    invoke-virtual {v2, v6}, LF6/q;->g(Ljava/lang/String;)J

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v2

    const-string/jumbo v6, "shot_device_capture"

    invoke-virtual {v2, v6}, LF6/q;->q(Ljava/lang/String;)V

    invoke-virtual {v1}, Lj9/D0;->r()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v6, p0, Lj9/O0;->c:Landroid/os/Handler;

    invoke-virtual {v2, v5, v4, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lj9/W0;->y:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const/4 v2, 0x1

    invoke-static {p0, v2}, LF1/s3;->a(II)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v2, "CaptureSession must not be null"

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v2, "Failed to capture a still picture, IllegalArgument"

    invoke-static {v0, v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0x101

    invoke-virtual {v1, p0}, Lj9/a;->c0(I)V

    goto :goto_4

    :goto_2
    const-string v2, "Failed to capture a still picture, IllegalState"

    invoke-static {v0, v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0x100

    invoke-virtual {v1, p0}, Lj9/a;->c0(I)V

    goto :goto_4

    :goto_3
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "Cannot capture a still picture"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p0

    invoke-virtual {v1, p0}, Lj9/a;->c0(I)V

    :goto_4
    return-void
.end method

.method public final w(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 8

    sget-object v0, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ln9/b;->v0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Ln9/b;->v(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Ln9/b;->u0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 v2, 0x1

    invoke-static {v2, p1}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-boolean v2, LJe/d;->i:Z

    iget-object v3, p0, Lj9/O0;->b:Lj9/D0;

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lj9/D0;->w2()Z

    move-result v2

    iget-object v4, p0, Lj9/O0;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {v3}, Lj9/D0;->U()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v3, Lj9/D0;->E:Lj9/e;

    invoke-static {v2}, Lj9/f;->k(Lj9/e;)I

    move-result v5

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v6

    invoke-virtual {v6}, Lu6/f;->k()I

    move-result v6

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0, v5, p1}, Ln9/b;->E0(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-static {v2}, Lj9/f;->T4(Lj9/e;)Z

    move-result v2

    iget-object v7, p0, Lj9/W0;->w:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v2, v3, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget v2, v2, Lj9/i0;->c0:F

    invoke-static {v2, v7}, Lur/d;->b(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    const-string v2, "isZoomRatioSupported: uw set crop = "

    invoke-static {v6, v2}, LCs/V;->c(Landroid/graphics/Rect;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->o2()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "supportMtkCropRegion: uw set crop = "

    invoke-static {v6, v2}, LCs/V;->c(Landroid/graphics/Rect;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v5, v6, v1}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "uw set crop = "

    invoke-static {v7, v2}, LCs/V;->c(Landroid/graphics/Rect;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v5, v7, v1}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    :goto_0
    const-string/jumbo v2, "uw set mtkCrop = "

    invoke-static {v6, v2}, LCs/V;->c(Landroid/graphics/Rect;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v6}, Ln9/b;->d0(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_3
    :goto_1
    iget-object v2, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    sget-object v3, Lga/C0;->o1:Lga/D0;

    const v5, 0xbabe

    invoke-static {v2, v3, v5}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    const-string/jumbo v3, "set mtk face"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Ln9/b;->q(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    const-string v2, "get mtk face = null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v2, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    sget-object v3, Lga/C0;->n0:Lga/D0;

    invoke-static {v2, v3, v5}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    const-string/jumbo v3, "sat set mtkCrop = "

    invoke-static {v2, v3}, LCs/V;->c(Landroid/graphics/Rect;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Ln9/b;->d0(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_5
    const-string/jumbo v2, "sat get mtkCrop = null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {v0, p1}, Ln9/b;->Y(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const-string/jumbo v2, "sat applyNotificationTrigger true"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_4
    iget-object p0, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0, p0, p1}, Ln9/b;->D0(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    :cond_7
    invoke-virtual {v3}, Lj9/D0;->w2()Z

    move-result p0

    if-eqz p0, :cond_8

    iget-object p0, v3, Lj9/D0;->E:Lj9/e;

    invoke-static {p1, p0, v1}, Lj9/m0;->O0(Landroid/hardware/camera2/CaptureRequest$Builder;Lj9/e;Z)V

    :cond_8
    return-void
.end method

.method public final x()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v1, v0, Lj9/D0;->v:Lsh/b;

    iget-boolean v2, v1, Lsh/b;->b:Z

    iget-object v3, p0, Lj9/O0;->a:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v2, :cond_1d

    sget-object v2, Lsh/c;->b:Lsh/c;

    iget-object v5, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v5, v5, Lj9/h0;->b:Lj9/G1;

    invoke-virtual {v1, v2, v5}, Lsh/b;->a(Lsh/c;Lj9/G1;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-boolean v2, v2, Lj9/i0;->u1:Z

    iget-object v5, v0, Lj9/D0;->D:Lj9/o1;

    const/16 v6, 0x11

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->f0()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lj9/h1;->D:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v5, v2}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v5, v8}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v9

    invoke-virtual {p0, v9}, Lj9/W0;->p(Landroid/util/Size;)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v10

    iput-object v10, p0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "[QCFA]add surface %s to capture request, size is: %s"

    filled-new-array {v2, v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v11, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v3, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v0}, Lj9/D0;->w2()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lj9/D0;->U()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v5}, Lj9/o1;->m()Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {v2}, Lda/d;->c(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/Surface;

    const/16 v10, 0xf

    invoke-virtual {v5, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v10

    if-eq v9, v10, :cond_4

    const/16 v10, 0x22

    invoke-virtual {v5, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v10

    if-eq v9, v10, :cond_4

    const/16 v10, 0x10

    invoke-virtual {v5, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v10

    if-eq v9, v10, :cond_4

    invoke-virtual {v5, v6}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v10

    if-eq v9, v10, :cond_4

    const/16 v10, 0x20

    invoke-virtual {v5, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v10

    if-eq v9, v10, :cond_4

    const/16 v10, 0x21

    invoke-virtual {v5, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v10

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_5
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v9}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v11

    filled-new-array {v9, v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "add surface %s to capture request, size is: %s"

    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v3, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_2

    :cond_6
    iget-object v2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->i:Landroid/util/Size;

    iput-object v2, p0, Lj9/W0;->v:Landroid/util/Size;

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->R()V

    invoke-virtual {v2}, LJe/c;->Y()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v2}, LJe/c;->Z()V

    invoke-virtual {v2}, LJe/c;->k0()V

    goto/16 :goto_8

    :cond_7
    iget-object v2, p0, Lj9/W0;->v:Landroid/util/Size;

    invoke-virtual {p0, v2}, Lj9/W0;->p(Landroid/util/Size;)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v2

    iput-object v2, p0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    goto/16 :goto_8

    :cond_8
    :goto_3
    invoke-virtual {v0}, Lj9/D0;->H()I

    move-result v2

    iput v2, p0, Lj9/O0;->u:I

    iget-boolean v9, p0, Lj9/h1;->G:Z

    if-eqz v9, :cond_9

    invoke-virtual {v0}, Lj9/D0;->x2()Z

    move-result v9

    invoke-virtual {v5, v2, v9}, Lj9/o1;->h(IZ)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0}, Lj9/D0;->j2()Landroid/util/Size;

    move-result-object v9

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lj9/D0;->x2()Z

    move-result v9

    invoke-virtual {v5, v2, v9}, Lj9/o1;->k(IZ)Landroid/view/Surface;

    move-result-object v2

    invoke-static {v2}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v9

    :goto_4
    invoke-virtual {v0}, Lj9/D0;->I()I

    move-result v10

    iput v10, p0, Lj9/h1;->H:I

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "[SAT]add master surface %s to capture request, size is: %s"

    filled-new-array {v2, v9}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v3, v11, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-virtual {v5, v4}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v11

    if-ne v2, v11, :cond_a

    move v2, v7

    goto :goto_5

    :cond_a
    const/16 v2, 0x201

    :goto_5
    iget-boolean v11, p0, Lj9/h1;->F:Z

    if-eqz v11, :cond_c

    sget-boolean v2, LJe/d;->i:Z

    if-eqz v2, :cond_b

    const/16 v2, 0x1c

    invoke-virtual {v5, v2}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v2

    goto :goto_6

    :cond_b
    invoke-virtual {v5, v8}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v2

    :goto_6
    invoke-static {v2}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v11

    const-string v12, "[SAT]add wide surface %s to capture request, size is: %s"

    filled-new-array {v2, v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v3, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v10

    invoke-virtual {v10}, Lu6/f;->f()I

    move-result v10

    iput v10, p0, Lj9/h1;->I:I

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v2, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v8}, Ln9/b;->j0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v2, p0, Lj9/h1;->E:Lqh/d;

    invoke-virtual {v2}, Lqh/d;->d()I

    move-result v2

    invoke-static {v2, v1}, Ln9/b;->k0(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    const/16 v2, 0x202

    goto :goto_7

    :cond_c
    sget-object v10, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Ln9/b;->j0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    sget-object v10, Lqh/d;->b:Lqh/d;

    invoke-virtual {v10}, Lqh/d;->d()I

    move-result v10

    invoke-static {v10, v1}, Ln9/b;->k0(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :goto_7
    const-string v10, "[SAT]combinationMode: "

    invoke-static {v2, v10}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v3, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v10, 0x23

    invoke-virtual {p0, v9, v10, v2}, Lj9/W0;->q(Landroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v2

    iput-object v2, p0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    :goto_8
    iget v2, p0, Lj9/O0;->d:I

    const v9, 0x9000

    if-ne v2, v9, :cond_d

    iget-object v2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v2}, Lj9/i0;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Lj9/D0;->k2(Z)I

    move-result v2

    iput v2, p0, Lj9/h1;->H:I

    iget-object v2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v2}, Lj9/i0;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Lj9/D0;->l2(Z)I

    move-result v2

    iput v2, p0, Lj9/h1;->I:I

    :cond_d
    sget-boolean v2, LJe/d;->i:Z

    if-nez v2, :cond_f

    iget v2, p0, Lj9/O0;->d:I

    const v9, 0x9001

    if-eq v2, v9, :cond_f

    const v9, 0x9003

    if-eq v2, v9, :cond_f

    invoke-virtual {v0}, Lj9/D0;->R()Z

    move-result v2

    if-eqz v2, :cond_e

    iget v2, p0, Lj9/O0;->d:I

    const v9, 0x9005

    if-eq v2, v9, :cond_f

    :cond_e
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->V()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v5, Lj9/o1;->n:Landroid/view/Surface;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v10

    filled-new-array {v2, v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "add preview surface %s to capture request, size is: %s"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v3, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_f
    :goto_9
    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->p2()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v5, v6}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-static {v2}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "add tuning surface to capture request, size is: %s"

    invoke-static {v3, v6, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_10
    iget-object v2, v0, Lj9/D0;->A:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Lj9/m0;->j(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v0, v7, v1}, Lj9/D0;->H1(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-boolean v2, p0, Lj9/h1;->D:Z

    if-eqz v2, :cond_11

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->O()Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_a

    :cond_11
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->O()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    iget-boolean v2, v2, Lv2/D0;->H:Z

    if-eqz v2, :cond_12

    sget-object v2, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v8}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_12
    :goto_a
    iget-object v2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-boolean v2, v2, Lj9/i0;->u1:Z

    iget-object v5, v0, Lj9/D0;->E:Lj9/e;

    if-eqz v2, :cond_15

    sget-boolean v2, LJe/d;->i:Z

    if-eqz v2, :cond_13

    const-string v2, "enable remosaic capture hint"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v2, v1}, Ln9/b;->g0(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "apply remosaic capture request: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lj9/h1;->D:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Ln9/a$a;->a:Ln9/b;

    iget-boolean v6, p0, Lj9/h1;->D:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lga/A0;->c2:Lga/D0;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v9, v6}, Lga/E0;->f(Landroid/hardware/camera2/CaptureRequest$Builder;Lga/D0;Ljava/lang/Object;)V

    iget-boolean v6, p0, Lj9/h1;->D:Z

    if-eqz v6, :cond_14

    invoke-static {v5}, Lj9/f;->F3(Lj9/e;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v2, v1, v4}, Ln9/b;->X(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_14
    iget-object v2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->j:Landroid/util/Size;

    if-eqz v2, :cond_15

    sget-object v6, Lga/A0;->K3:Lga/D0;

    new-instance v9, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v9, v10, v2}, Landroid/util/Size;-><init>(II)V

    invoke-static {v1, v6, v9}, Lga/E0;->e(Landroid/hardware/camera2/CaptureRequest$Builder;Lga/D0;Ljava/lang/Object;)V

    :cond_15
    iget-object v2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-byte v2, v2, Lj9/i0;->n3:B

    sget-object v6, Lga/A0;->M3:Lga/D0;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {v1, v6, v2}, Lga/E0;->e(Landroid/hardware/camera2/CaptureRequest$Builder;Lga/D0;Ljava/lang/Object;)V

    sget-boolean v2, LJe/d;->i:Z

    if-eqz v2, :cond_16

    iget-object v2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-boolean v2, v2, Lj9/i0;->W0:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v2}, Lj9/o0;->r(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "apply specshot mode capture request: "

    invoke-static {v6, v2}, LV9/Z1;->c(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v3, v6, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_16

    sget-object v6, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2, v1}, Ln9/b;->q0(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_16
    iget-object v2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    invoke-static {v1, v7, v2}, Lj9/m0;->l(Landroid/hardware/camera2/CaptureRequest$Builder;ILj9/i0;)V

    iget-object v2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-boolean v6, v2, Lj9/i0;->h2:Z

    iget-boolean v2, v2, Lj9/i0;->h3:Z

    iget-object v7, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v7, v7, Lj9/h0;->a:Lj9/i0;

    iget-boolean v7, v7, Lj9/i0;->j3:Z

    invoke-virtual {v0}, Lj9/D0;->y()I

    move-result v9

    iget-object v10, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v10, v10, Lj9/h0;->a:Lj9/i0;

    iget-boolean v10, v10, Lj9/i0;->Q0:Z

    const-string v11, "generateRequestBuilder.isAiShutterExistMotion: "

    const-string v12, ", isHQQuickShot:"

    const-string v13, ", isMixedQuickShotEnabled:"

    invoke-static {v11, v12, v6, v2, v13}, LF1/Q2;->g(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", numOfHQQuickShots:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isLLSEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v6, v6, Lj9/h0;->a:Lj9/i0;

    iget-boolean v6, v6, Lj9/i0;->q3:Z

    if-eqz v6, :cond_17

    const-string v6, "isHQQuickShot Do not apply hwmfnr. numOfHQQuickShots:"

    invoke-static {v9, v6}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, p0, Lj9/O0;->k:Z

    sget-object v3, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {v8, v1}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_17
    if-eqz v2, :cond_19

    sget-object v2, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v2, v1}, Ln9/b;->B(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v3, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    iget-boolean v3, v3, Lj9/i0;->X0:Z

    if-eqz v3, :cond_18

    invoke-virtual {v2, v1, v8}, Ln9/b;->M(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_b

    :cond_18
    invoke-virtual {v2, v1, v4}, Ln9/b;->M(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    :cond_19
    :goto_b
    iget-object v2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v2}, Lj9/i0;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lj9/O0;->m:Ljava/lang/String;

    invoke-static {v5}, Lj9/f;->p3(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lj9/O0;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-static {v1, v5, p0}, Lj9/m0;->C0(Landroid/hardware/camera2/CaptureRequest$Builder;Lj9/e;Ljava/lang/String;)V

    :cond_1a
    sget-object p0, Lga/A0;->q3:Lga/D0;

    iget-object v2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget v2, v2, Lj9/i0;->d3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lga/E0;->e(Landroid/hardware/camera2/CaptureRequest$Builder;Lga/D0;Ljava/lang/Object;)V

    iget-object p0, v0, Lj9/D0;->F:Lj9/h0;

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    iget-boolean p0, p0, Lj9/i0;->o3:Z

    if-eqz p0, :cond_1b

    sget-object p0, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {p0, v1}, Ln9/b;->Y(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1b
    if-eqz v5, :cond_1c

    sget-object p0, Lga/A0;->P3:Lga/D0;

    invoke-virtual {p0}, Lga/D0;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    sget-object p0, Ln9/a$a;->a:Ln9/b;

    iget-object v0, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v0, v0, Lj9/i0;->r3:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Ln9/b;->w0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_1c
    return-object v1

    :cond_1d
    const-string p0, "generateRequestBuilder: camera device is closed"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "generateRequestBuilder: camera device is closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
