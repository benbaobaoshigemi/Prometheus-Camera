.class public final Lj9/D1;
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

.field public D:I

.field public E:I

.field public F:I

.field public G:[I

.field public H:I

.field public I:I

.field public J:Z

.field public K:I


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "QcomRawHdrFetcher"

    return-object p0
.end method

.method public final k()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj9/W0;->z:Z

    iget-object v1, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v2, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-boolean v2, v2, Lj9/i0;->G2:Z

    iget-object v3, p0, Lj9/O0;->a:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string v0, "anchor frame do not enable"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move v0, v4

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lj9/D0;->E:Lj9/e;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v5

    invoke-virtual {v5}, Lu2/Q;->M()Z

    move-result v5

    xor-int/2addr v0, v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    invoke-static {v0, v5, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v5, 0x66

    invoke-static {v0, v5, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lj9/O0;->n:Z

    iget v0, p0, Lj9/D1;->F:I

    invoke-virtual {p0, v0}, Lj9/O0;->d(I)I

    move-result v0

    iput v0, p0, Lj9/O0;->o:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "prepare: anchorFrame = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lj9/O0;->n:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", soundTime = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lj9/O0;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget-object v0, v0, Lj9/i0;->h:Landroid/util/Size;

    iput-object v0, p0, Lj9/O0;->p:Landroid/util/Size;

    iget-object v0, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lj9/o0;->t(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v0

    iput-boolean v0, p0, Lj9/D1;->J:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepare: isZslHdrEnable = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lj9/D1;->J:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lj9/o0;->h(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->O()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->P0()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->b0()[I

    move-result-object v1

    goto :goto_2

    :cond_3
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->L()[I

    move-result-object v1

    :goto_2
    new-instance v2, Lha/j;

    invoke-direct {v2, v1, v0}, Lha/j;-><init>([I[B)V

    iget v0, v2, Lha/j;->b:I

    iput v0, p0, Lj9/D1;->C:I

    iget-object v0, v2, Lha/j;->c:[I

    iput-object v0, p0, Lj9/D1;->G:[I

    iget-object v0, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lj9/o0;->g(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lj9/D1;->H:I

    iget-object v0, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lj9/o0;->f(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lj9/D1;->I:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepare: scene = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lj9/D1;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",adrc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj9/D1;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",EvValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj9/D1;->G:[I

    if-eqz p0, :cond_4

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final m()V
    .locals 11

    iget-object v0, p0, Lj9/O0;->a:Ljava/lang/String;

    iget-object v1, p0, Lj9/O0;->b:Lj9/D0;

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lj9/C1;

    invoke-direct {v3, p0}, Lj9/C1;-><init>(Lj9/D1;)V

    invoke-virtual {p0}, Lj9/D1;->x()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo p0, "startSessionCapture: null capture request builder"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :catch_1
    move-exception p0

    goto/16 :goto_2

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    :goto_0
    iget v7, p0, Lj9/D1;->C:I

    if-ge v6, v7, :cond_1

    invoke-virtual {p0, v6, v4}, Lj9/D1;->w(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v1, Lj9/D0;->E:Lj9/e;

    invoke-static {v6}, Lj9/f;->k(Lj9/e;)I

    move-result v6

    new-instance v7, Lcom/xiaomi/engine/BufferFormat;

    iget-object v8, p0, Lj9/W0;->v:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget-object v9, p0, Lj9/W0;->v:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    const/16 v10, 0x20

    invoke-direct {v7, v8, v9, v10}, Lcom/xiaomi/engine/BufferFormat;-><init>(III)V

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {p0, v4, v7, v6}, Lj9/W0;->r(Landroid/hardware/camera2/CaptureRequest;Lcom/xiaomi/engine/BufferFormat;I)Lcom/xiaomi/engine/PreProcessData;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v4}, Lj9/W0;->u(Lcom/xiaomi/engine/PreProcessData;)V

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startSessionCapture: requestNum = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v4

    const-string v6, "algo_prepare_capture"

    invoke-virtual {v4, v6}, LF6/q;->g(Ljava/lang/String;)J

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v4

    const-string v6, "algo_device_capture"

    invoke-virtual {v4, v6}, LF6/q;->q(Ljava/lang/String;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v4

    const-string/jumbo v6, "shot_prepare_capture"

    invoke-virtual {v4, v6}, LF6/q;->g(Ljava/lang/String;)J

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v4

    const-string/jumbo v6, "shot_device_capture"

    invoke-virtual {v4, v6}, LF6/q;->q(Ljava/lang/String;)V

    invoke-virtual {v1}, Lj9/D0;->r()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v4

    iget-object v6, p0, Lj9/O0;->c:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v6}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lj9/W0;->y:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget p0, p0, Lj9/D1;->C:I

    invoke-static {v3, p0}, LF1/s3;->a(II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p0, 0x100

    invoke-virtual {v1, p0}, Lj9/a;->c0(I)V

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p0

    invoke-virtual {v1, p0}, Lj9/a;->c0(I)V

    :goto_3
    return-void
.end method

.method public final w(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    iget v0, p0, Lj9/D1;->C:I

    if-gt p1, v0, :cond_2

    sget-object v0, Ln9/a$a;->a:Ln9/b;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2}, Ln9/b;->V(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget v0, p0, Lj9/D1;->C:I

    invoke-static {v0, p2}, Ln9/b;->U(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget v0, p0, Lj9/D1;->C:I

    invoke-static {v0, p2}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget v0, p0, Lj9/D1;->H:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lj9/D1;->I:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, v0, v1}, Ln9/b;->z(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p2, v0}, Ln9/b;->Q(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p2, v0}, Ln9/b;->v(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p2}, Ln9/b;->f0(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-boolean v1, p0, Lj9/D1;->J:Z

    invoke-static {p2, v1}, Ln9/b;->C0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v1, p0, Lj9/D1;->G:[I

    if-eqz v1, :cond_0

    aget p1, v1, p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, v1, p1, v0}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    iget-object p1, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v0, p1, Lj9/D0;->E:Lj9/e;

    invoke-static {v0}, Lj9/f;->P3(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    iget-object p1, p1, Lj9/D0;->E:Lj9/e;

    invoke-static {p0, p1}, Lj9/n0;->f(Landroid/hardware/camera2/CaptureResult;Lj9/e;)[B

    move-result-object p0

    invoke-static {p2, p0}, Ln9/b;->o0(Landroid/hardware/camera2/CaptureRequest$Builder;[B)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "wrong request index "

    invoke-static {p1, p2}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v1, v0, Lj9/D0;->v:Lsh/b;

    iget-boolean v1, v1, Lsh/b;->b:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lj9/O0;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string p0, "camera device closed"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lj9/D0;->H()I

    move-result v1

    iput v1, p0, Lj9/O0;->u:I

    invoke-virtual {v0}, Lj9/D0;->I()I

    move-result v1

    iput v1, p0, Lj9/D1;->K:I

    iget v1, p0, Lj9/O0;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lj9/D1;->K:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v4, "satCameraId=%d, physicalCameraId=%d"

    invoke-static {v3, v4, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lj9/D0;->v:Lsh/b;

    sget-object v4, Lsh/c;->b:Lsh/c;

    iget-object v5, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v5, v5, Lj9/h0;->b:Lj9/G1;

    invoke-virtual {v1, v4, v5}, Lsh/b;->a(Lsh/c;Lj9/G1;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget v4, p0, Lj9/O0;->u:I

    iget-object v5, v0, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v5, v4}, Lj9/o1;->o(I)Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget v6, p0, Lj9/O0;->u:I

    invoke-virtual {v0}, Lj9/D0;->x2()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lj9/o1;->k(IZ)Landroid/view/Surface;

    move-result-object v5

    invoke-static {v5}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "add raw surface %s to capture request, size is: %s"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v4, v0, Lj9/D0;->H:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "previewCallbackType=0x%x"

    invoke-static {v3, v6, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v4, p0, Lj9/O0;->u:I

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-ne v6, v4, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    const/16 v4, 0x201

    :goto_0
    const-string v6, "combinationMode: "

    invoke-static {v4, v6}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v6, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x23

    invoke-virtual {p0, v5, v2, v4}, Lj9/W0;->q(Landroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v2

    iput-object v2, p0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {v0, v7, v1}, Lj9/D0;->H1(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v2}, Lj9/i0;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lj9/O0;->m:Ljava/lang/String;

    iget-object v0, v0, Lj9/D0;->E:Lj9/e;

    invoke-static {v0}, Lj9/f;->p3(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lj9/O0;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {v1, v0, p0}, Lj9/m0;->C0(Landroid/hardware/camera2/CaptureRequest$Builder;Lj9/e;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method
