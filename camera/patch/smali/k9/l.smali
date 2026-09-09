.class public final Lk9/l;
.super Lk9/d;
.source "SourceFile"


# virtual methods
.method public final A()Z
    .locals 4

    iget-object v0, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v0, v0, Lj9/D0;->E:Lj9/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->M()Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    invoke-static {v3, v2, v0}, Lj9/f;->c1(IILj9/e;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x66

    invoke-static {v3, v2, v0}, Lj9/f;->c1(IILj9/e;)Z

    move-result v0

    :goto_0
    const-string v2, "doAnchorFrame: "

    invoke-static {v2, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lj9/O0;->a:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final D()Lk9/a$b;
    .locals 1

    new-instance v0, Lk9/l$a;

    invoke-direct {v0, p0}, Lk9/l$a;-><init>(Lk9/l;)V

    return-object v0
.end method

.method public final E()Lk9/a$d;
    .locals 6

    new-instance v0, Lk9/a$d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lk9/a$d;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lj9/O0;->b:Lj9/D0;

    invoke-virtual {v2}, Lj9/D0;->H()I

    move-result v3

    iput v3, p0, Lj9/O0;->u:I

    invoke-virtual {v2}, Lj9/D0;->I()I

    move-result v3

    iput v3, p0, Lk9/a;->D:I

    iget v3, p0, Lj9/O0;->u:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lk9/a;->D:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "satCameraId=%d, physicalCameraId=%d"

    iget-object v5, p0, Lj9/O0;->a:Ljava/lang/String;

    invoke-static {v5, v4, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, p0, Lj9/O0;->u:I

    iget-object v2, v2, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v2, v3}, Lj9/o1;->o(I)Landroid/view/Surface;

    move-result-object v3

    iget v4, p0, Lj9/O0;->u:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lj9/o1;->p(I)I

    move-result v4

    iput v4, p0, Lk9/a;->F:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lj9/O0;->u:I

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lj9/o1;->k(IZ)Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lk9/a;->G:Landroid/util/Size;

    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "add raw surface %s to capture request, size is: %s"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, p0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final K()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final x(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    iget-object v0, p0, Lk9/a;->C:Lj9/H1;

    iget-object v1, v0, Lj9/H1;->g:Lj9/H1$a;

    iget v1, v1, Lj9/H1$a;->c:I

    if-gt p1, v1, :cond_2

    sget-object v1, Ln9/a$a;->a:Ln9/b;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p2}, Ln9/b;->V(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, v0, Lj9/H1;->g:Lj9/H1$a;

    iget v1, v1, Lj9/H1$a;->c:I

    invoke-static {v1, p2}, Ln9/b;->U(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, v0, Lj9/H1;->g:Lj9/H1$a;

    iget v1, v1, Lj9/H1$a;->c:I

    invoke-static {v1, p2}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, v0, Lj9/H1;->g:Lj9/H1$a;

    iget v1, v1, Lj9/H1$a;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Lj9/H1;->g:Lj9/H1$a;

    iget v2, v2, Lj9/H1$a;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, v1, v2}, Ln9/b;->z(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p2, v1}, Ln9/b;->Q(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p2, v1}, Ln9/b;->v(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p2}, Ln9/b;->f0(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, v0, Lj9/H1;->g:Lj9/H1$a;

    iget-boolean v2, v2, Lj9/H1$a;->t:Z

    invoke-static {p2, v2}, Ln9/b;->C0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v2, v0, Lj9/H1;->g:Lj9/H1$a;

    iget-object v2, v2, Lj9/H1$a;->q:[I

    if-eqz v2, :cond_0

    aget p1, v2, p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, v2, p1, v1}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lj9/O0;->b:Lj9/D0;

    iget-object p0, p0, Lj9/D0;->E:Lj9/e;

    invoke-static {p0}, Lj9/f;->P3(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lj9/H1;->g:Lj9/H1$a;

    iget-object p0, p0, Lj9/H1$a;->A:[B

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

.method public final y(Lk9/a$c;)V
    .locals 2

    const/16 p1, 0x201

    iput p1, p0, Lk9/a;->H:I

    const/4 p1, 0x1

    iget v0, p0, Lj9/O0;->u:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    iput p1, p0, Lk9/a;->H:I

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "combinationMode: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lk9/a;->H:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lj9/O0;->a:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lk9/a;->G:Landroid/util/Size;

    const/16 v0, 0x23

    iget v1, p0, Lk9/a;->H:I

    invoke-virtual {p0, p1, v0, v1}, Lj9/W0;->q(Landroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object p1

    iput-object p1, p0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    return-void
.end method
