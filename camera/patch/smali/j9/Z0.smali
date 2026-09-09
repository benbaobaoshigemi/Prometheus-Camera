.class public final Lj9/Z0;
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

.field public G:I

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:I

.field public L:[I

.field public M:I

.field public N:I

.field public O:Z

.field public P:Lha/w;

.field public Q:[I

.field public R:Lqh/d;

.field public S:Z

.field public T:Landroid/view/Surface;

.field public U:Landroid/view/Surface;

.field public V:Z

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a0:I

.field public b0:Z

.field public c0:[I

.field public d0:Z

.field public e0:I

.field public f0:Z

.field public g0:Lj9/H1;

.field public h0:[B


# direct methods
.method public static z()[I
    .locals 2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->P0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->b0()[I

    move-result-object v0

    return-object v0

    :cond_0
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->L()[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "initFeatureSetting: E"

    iget-object v3, p0, Lj9/O0;->a:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v2, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-object v4, v2, Lj9/i0;->n:Landroid/util/Size;

    iget-object v2, v2, Lj9/i0;->j:Landroid/util/Size;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initFeatureSetting: rawInputSize = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", yuvInputSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v5, v5, Lj9/h0;->a:Lj9/i0;

    iget-object v5, v5, Lj9/i0;->j:Landroid/util/Size;

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    :goto_0
    if-nez v5, :cond_1

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    :goto_1
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-ne v6, v8, :cond_2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-eq v7, v8, :cond_3

    :cond_2
    const-string v8, "initFeatureSetting: outputSize = "

    invoke-static {v8, v5}, LF1/S;->a(Ljava/lang/String;Landroid/util/Size;)Ljava/lang/String;

    move-result-object v5

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v3, v5, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    new-instance v5, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    iget-object v1, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget v1, v1, Lj9/i0;->W:I

    invoke-direct {v5, v6, v7, v1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    sget-object v1, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v1}, Lwp/g;->a()Lwp/g$b;

    move-result-object v1

    iget-object p0, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    if-eqz v1, :cond_4

    if-eqz p0, :cond_4

    new-instance v1, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    new-instance v6, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v6, v7, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v2, v7, v4}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v1, v6, v2, v5}, Lcom/xiaomi/camera/isp/IspInterfaceIO;-><init>(Landroid/util/Size;Landroid/util/Size;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V

    invoke-static {p0}, LQg/b;->b(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object p0

    invoke-static {}, Lwp/g;->b()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, p0, v4, v0}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    :cond_4
    const-string p0, "initFeatureSetting: X"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final B(Z)V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSuperResolution"
        type = 0x0
    .end annotation

    sget-object v0, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v0}, Lwp/g;->a()Lwp/g$b;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lj9/O0;->a:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lj9/o0;->e(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "prepareSR: hdr settings = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, LF1/Q;->b([ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v4}, Lj9/o0;->h(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v4

    iget-object v5, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v5}, Lj9/o0;->k(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "prepareSR: evExpandRules ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v6, "prepareSR: no evExpandRules"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lj9/Z0;->z()[I

    move-result-object v6

    new-instance v7, Lha/j;

    invoke-direct {v7, v6, v4, p1, v5}, Lha/j;-><init>([I[BZ[B)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "prepareSR: hdr ev values = "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, v7, Lha/j;->b:I

    iput p1, p0, Lj9/Z0;->D:I

    iget-object p1, v7, Lha/j;->c:[I

    iput-object p1, p0, Lj9/Z0;->L:[I

    if-eqz v0, :cond_2

    array-length v4, v0

    array-length p1, p1

    if-ge v4, p1, :cond_1

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lj9/Z0;->c0:[I

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "prepareSR: illegal hdr settings"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lj9/Z0;->c0:[I

    :goto_2
    iget-object p1, p0, Lj9/Z0;->L:[I

    aget v0, p1, v3

    iput v0, p0, Lj9/Z0;->Y:I

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lj9/X0;

    invoke-direct {v0, p0}, Lj9/X0;-><init>(Lj9/Z0;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v2

    long-to-int p1, v2

    iput p1, p0, Lj9/Z0;->Z:I

    add-int/2addr p1, v1

    iput p1, p0, Lj9/Z0;->E:I

    return-void

    :cond_3
    iget-object p1, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {p1}, Lqh/d;->d()I

    move-result p1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq p1, v4, :cond_6

    iget-object p1, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {p1}, Lqh/d;->d()I

    move-result p1

    if-ne p1, v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/android/camera/data/data/w;->t()I

    move-result p1

    const-string v4, "camera.sr.framecount"

    invoke-static {v4, p1}, Lur/g;->e(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lj9/Z0;->D:I

    iput p1, p0, Lj9/Z0;->E:I

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lwp/g$b;->d()I

    move-result p1

    if-le p1, v1, :cond_5

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "prepareSR: captureNum="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lj9/Z0;->D:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    :goto_3
    iput-boolean v1, p0, Lj9/Z0;->S:Z

    iget-object p1, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {p1}, Lqh/d;->a()I

    move-result p1

    const-string v0, "prepareFusion: captureNum = "

    if-ne p1, v5, :cond_7

    iget-object p1, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {p1}, Lqh/d;->b()I

    move-result p1

    iget-object v1, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {v1}, Lqh/d;->c()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lj9/Z0;->D:I

    iput v1, p0, Lj9/Z0;->E:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lj9/Z0;->D:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-object p1, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {p1}, Lqh/d;->a()I

    move-result p1

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {p1}, Lqh/d;->b()I

    move-result p1

    iput p1, p0, Lj9/Z0;->D:I

    iput p1, p0, Lj9/Z0;->E:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lj9/Z0;->D:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "prepareFusion: unknown type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final C(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    iget-object v0, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {v0}, Lqh/d;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {v0}, Lqh/d;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lj9/Z0;->T:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj9/Z0;->U:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {v0}, Lqh/d;->b()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lj9/Z0;->U:Landroid/view/Surface;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    iget-object p1, p0, Lj9/Z0;->T:Landroid/view/Surface;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object p1, Ln9/a$a;->a:Ln9/b;

    iget-object v0, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {v0}, Lqh/d;->b()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p2}, Ln9/b;->U(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {p0}, Lqh/d;->b()I

    move-result p0

    invoke-static {p0, p2}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p2, v2}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p2, v1}, Ln9/b;->u0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lj9/Z0;->T:Landroid/view/Surface;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    iget-object p1, p0, Lj9/Z0;->U:Landroid/view/Surface;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object p1, Ln9/a$a;->a:Ln9/b;

    iget-object v0, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {v0}, Lqh/d;->c()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p2}, Ln9/b;->U(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {p0}, Lqh/d;->c()I

    move-result p0

    invoke-static {p0, p2}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p2, v1}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p2, v2}, Ln9/b;->u0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_1
    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lj9/W0;->A:J

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "ShotParallelBurst"

    return-object p0
.end method

.method public final h()Z
    .locals 1

    iget v0, p0, Lj9/Z0;->G:I

    iget p0, p0, Lj9/Z0;->D:I

    if-ne v0, p0, :cond_0

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
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj9/W0;->z:Z

    iget-object v2, v0, Lj9/O0;->b:Lj9/D0;

    iget-object v2, v2, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-object v3, v0, Lj9/O0;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "prepare: configs "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lj9/O0;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "prepare: rawCallbackType = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lj9/Z0;->a0:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v3, v2, Lj9/i0;->V0:Z

    iget-object v4, v2, Lj9/i0;->h:Landroid/util/Size;

    iput-object v4, v0, Lj9/O0;->p:Landroid/util/Size;

    iget-object v4, v0, Lj9/O0;->b:Lj9/D0;

    iget-object v6, v0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v4, v6}, Lj9/D0;->t2(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v4

    iput-boolean v4, v0, Lj9/Z0;->V:Z

    iget-object v4, v0, Lj9/O0;->b:Lj9/D0;

    iget-object v6, v4, Lj9/D0;->E:Lj9/e;

    invoke-static {v6}, Lj9/f;->D0(Lj9/e;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v4, Lj9/D0;->F:Lj9/h0;

    iget-object v7, v7, Lj9/h0;->a:Lj9/i0;

    iget v7, v7, Lj9/i0;->c0:F

    invoke-static {v4, v6, v7}, Lur/i;->p(Lj9/a;Ljava/util/HashMap;F)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v4}, Lj9/o0;->i(Landroid/hardware/camera2/CaptureResult;)I

    move-result v4

    if-eq v4, v1, :cond_1

    :cond_0
    iget-object v4, v0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v4}, Lj9/o0;->j(Landroid/hardware/camera2/CaptureResult;)I

    move-result v4

    if-ne v4, v1, :cond_2

    :cond_1
    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    iget-object v6, v0, Lj9/O0;->a:Ljava/lang/String;

    const-string v7, "prepare: hdrSrStatus = "

    invoke-static {v4, v7}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v6

    invoke-virtual {v6}, Lu2/Q;->O()Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v12, 0x11

    const/16 v13, 0x10

    const/4 v14, 0x5

    if-eqz v6, :cond_3

    iget v6, v0, Lj9/Z0;->a0:I

    if-ne v13, v6, :cond_3

    iput v12, v0, Lj9/Z0;->K:I

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, v0, Lj9/Z0;->D:I

    iput v1, v0, Lj9/Z0;->E:I

    goto/16 :goto_b

    :cond_3
    iget v6, v0, Lj9/O0;->d:I

    const v15, 0x800a

    const/16 v12, 0x40

    const/16 v9, 0x30

    const/16 v10, 0x20

    const/16 v11, 0x8

    if-eq v15, v6, :cond_18

    iget v6, v0, Lj9/Z0;->a0:I

    if-eq v11, v6, :cond_18

    if-eq v10, v6, :cond_18

    if-eq v9, v6, :cond_18

    if-eq v13, v6, :cond_18

    if-eq v12, v6, :cond_18

    iget-object v6, v0, Lj9/Z0;->g0:Lj9/H1;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lj9/H1;->b()Lj9/H1$a;

    move-result-object v6

    iget-boolean v6, v6, Lj9/H1$a;->P:Z

    if-eqz v6, :cond_4

    goto/16 :goto_8

    :cond_4
    iget-object v6, v0, Lj9/Z0;->g0:Lj9/H1;

    const/4 v9, 0x7

    const/4 v10, 0x0

    if-eqz v6, :cond_b

    iget-object v6, v6, Lj9/H1;->g:Lj9/H1$a;

    iget-boolean v11, v6, Lj9/H1$a;->a:Z

    if-eqz v11, :cond_b

    iget v11, v6, Lj9/H1$a;->b:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_a

    iput v11, v0, Lj9/Z0;->K:I

    iget-boolean v2, v6, Lj9/H1$a;->n:Z

    iput-boolean v2, v0, Lj9/Z0;->I:Z

    iget-boolean v2, v6, Lj9/H1$a;->o:Z

    iput-boolean v2, v0, Lj9/Z0;->J:Z

    iget-boolean v2, v6, Lj9/H1$a;->x:Z

    iput-boolean v2, v0, Lj9/Z0;->O:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "prepareHDR: singleFrameHDR = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lj9/Z0;->O:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v11, v0, Lj9/O0;->a:Ljava/lang/String;

    invoke-static {v11, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v2, v6, Lj9/H1$a;->t:Z

    iput-boolean v2, v0, Lj9/Z0;->b0:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "prepareHDR: isZslHdrEnable = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lj9/Z0;->b0:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v11, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v6, Lj9/H1$a;->u:[I

    iput-object v2, v0, Lj9/Z0;->c0:[I

    iget v2, v6, Lj9/H1$a;->c:I

    iput v2, v0, Lj9/Z0;->D:I

    iget v2, v6, Lj9/H1$a;->d:I

    iput v2, v0, Lj9/Z0;->E:I

    iget-object v2, v6, Lj9/H1$a;->q:[I

    iput-object v2, v0, Lj9/Z0;->L:[I

    iget v2, v6, Lj9/H1$a;->y:I

    iput v2, v0, Lj9/Z0;->C:I

    iget v2, v6, Lj9/H1$a;->r:I

    iput v2, v0, Lj9/Z0;->M:I

    iget v2, v6, Lj9/H1$a;->s:I

    iput v2, v0, Lj9/Z0;->N:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "prepareHdr: scene = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lj9/Z0;->M:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",adrc = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lj9/Z0;->N:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",EvValue = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lj9/Z0;->L:[I

    if-eqz v4, :cond_5

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    :cond_5
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v11, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, v6, Lj9/H1$a;->v:I

    iput v2, v0, Lj9/Z0;->Y:I

    iget v2, v6, Lj9/H1$a;->w:I

    iput v2, v0, Lj9/Z0;->Z:I

    iget-object v2, v6, Lj9/H1$a;->f:Lqh/d;

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lqh/d;->d()I

    move-result v2

    if-eq v2, v8, :cond_8

    iget-object v2, v6, Lj9/H1$a;->f:Lqh/d;

    invoke-virtual {v2}, Lqh/d;->d()I

    move-result v2

    if-ne v2, v7, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    move v2, v5

    goto :goto_3

    :cond_8
    :goto_2
    move v2, v1

    :goto_3
    iput-boolean v2, v0, Lj9/Z0;->S:Z

    iget-object v2, v6, Lj9/H1$a;->f:Lqh/d;

    iput-object v2, v0, Lj9/Z0;->R:Lqh/d;

    iget-object v2, v6, Lj9/H1$a;->A:[B

    iput-object v2, v0, Lj9/Z0;->h0:[B

    iget v2, v0, Lj9/Z0;->K:I

    const/16 v4, 0x1a

    if-ne v2, v4, :cond_1f

    sget-object v2, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v2}, Lwp/g;->a()Lwp/g$b;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lwp/g$b;->d()I

    move-result v2

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v2, v1, :cond_9

    iput v9, v0, Lj9/Z0;->K:I

    iput v1, v0, Lj9/Z0;->D:I

    iput v1, v0, Lj9/Z0;->E:I

    const-string v2, "prepareHDR switch to quick shot hht(1 -> 1)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v11, v2, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_9
    invoke-virtual {v0}, Lj9/Z0;->A()V

    goto/16 :goto_b

    :cond_a
    invoke-virtual {v0, v2, v4}, Lj9/Z0;->x(Lj9/i0;I)V

    goto/16 :goto_b

    :cond_b
    iget-object v6, v2, Lj9/i0;->P0:Lj1/a;

    invoke-virtual {v6}, Lj1/a;->a()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v0, v2, v4}, Lj9/Z0;->x(Lj9/i0;I)V

    goto/16 :goto_b

    :cond_c
    if-eqz v3, :cond_d

    iput v7, v0, Lj9/Z0;->K:I

    invoke-virtual {v0, v5}, Lj9/Z0;->B(Z)V

    goto/16 :goto_b

    :cond_d
    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->y2()V

    iget-object v4, v0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    if-nez v4, :cond_e

    goto :goto_4

    :cond_e
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/Integer;

    :goto_4
    iget-object v4, v0, Lj9/O0;->b:Lj9/D0;

    iget-object v4, v4, Lj9/D0;->F:Lj9/h0;

    iget-object v4, v4, Lj9/h0;->a:Lj9/i0;

    iget-boolean v4, v4, Lj9/i0;->e1:Z

    iget-object v6, v0, Lj9/O0;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "prepare: iso = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " isHwMFNREnabled = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v6, v11, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a7()Z

    move-result v6

    if-eqz v6, :cond_f

    iput-boolean v1, v0, Lj9/Z0;->H:Z

    goto :goto_6

    :cond_f
    if-eqz v10, :cond_10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v11, 0x320

    if-lt v6, v11, :cond_10

    move v6, v1

    goto :goto_5

    :cond_10
    move v6, v5

    :goto_5
    iput-boolean v6, v0, Lj9/Z0;->H:Z

    :goto_6
    iget-boolean v6, v0, Lj9/Z0;->H:Z

    if-eqz v6, :cond_17

    sget v6, Lcom/android/camera/module/Y;->a:I

    const/16 v11, 0xbc

    if-ne v6, v11, :cond_11

    if-nez v4, :cond_17

    :cond_11
    iget-object v4, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a7()Z

    move-result v4

    if-eqz v4, :cond_16

    iput v9, v0, Lj9/Z0;->K:I

    sget-object v4, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v4}, Lwp/g;->a()Lwp/g$b;

    move-result-object v4

    iget-object v6, v0, Lj9/O0;->a:Ljava/lang/String;

    if-nez v10, :cond_12

    iput v1, v0, Lj9/Z0;->D:I

    iput v1, v0, Lj9/Z0;->E:I

    const-string v2, "iso null, switch to quick shot hht(1 -> 1)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v6, v2, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_12
    iget-object v9, v0, Lj9/O0;->b:Lj9/D0;

    if-eqz v4, :cond_13

    iget-object v11, v9, Lj9/D0;->F:Lj9/h0;

    iget-object v11, v11, Lj9/h0;->a:Lj9/i0;

    iget-boolean v11, v11, Lj9/i0;->k1:Z

    if-nez v11, :cond_13

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-boolean v11, LJe/c;->k:Z

    iget-object v11, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v11}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->e7()I

    move-result v11

    if-ge v10, v11, :cond_13

    invoke-virtual {v4}, Lwp/g$b;->d()I

    move-result v10

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v10, v1, :cond_13

    iput v1, v0, Lj9/Z0;->D:I

    iput v1, v0, Lj9/Z0;->E:I

    const-string/jumbo v2, "switch to quick shot hht(1 -> 1)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v6, v2, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_13
    if-eqz v4, :cond_14

    iget-object v2, v9, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-boolean v10, v2, Lj9/i0;->k1:Z

    if-nez v10, :cond_14

    iget-object v2, v2, Lj9/i0;->J1:Lx4/s;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lx4/s;->f()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v4}, Lwp/g$b;->i()Z

    move-result v2

    if-nez v2, :cond_14

    iput v7, v0, Lj9/Z0;->D:I

    iput v7, v0, Lj9/Z0;->E:I

    const-string/jumbo v2, "switch to quick shot hht(3 -> 1)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v6, v2, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_14
    iget-object v2, v9, Lj9/D0;->E:Lj9/e;

    iget-object v4, v0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v4, v2}, Lj9/n0;->d(Landroid/hardware/camera2/CaptureResult;Lj9/e;)I

    move-result v2

    if-lez v2, :cond_15

    iput v2, v0, Lj9/Z0;->D:I

    iput v2, v0, Lj9/Z0;->E:I

    const-string v4, "getHHTFrameNumber hht("

    const-string v9, " -> 1)"

    invoke-static {v2, v4, v9}, LF1/E;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v6, v2, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_15
    iput v14, v0, Lj9/Z0;->D:I

    iput v14, v0, Lj9/Z0;->E:I

    const-string v2, "default hht(5 -> 1)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v6, v2, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_16
    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->u2()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->O()Z

    move-result v2

    if-eqz v2, :cond_17

    iput v8, v0, Lj9/Z0;->K:I

    iput v14, v0, Lj9/Z0;->D:I

    iput v14, v0, Lj9/Z0;->E:I

    :cond_17
    :goto_7
    iget v2, v0, Lj9/Z0;->K:I

    if-nez v2, :cond_1f

    iput v1, v0, Lj9/Z0;->D:I

    iput v1, v0, Lj9/Z0;->E:I

    goto/16 :goto_b

    :cond_18
    :goto_8
    iget v2, v0, Lj9/Z0;->a0:I

    if-ne v11, v2, :cond_19

    const/16 v4, 0xc

    iput v4, v0, Lj9/Z0;->K:I

    goto :goto_9

    :cond_19
    if-ne v10, v2, :cond_1a

    const/16 v4, 0xf

    iput v4, v0, Lj9/Z0;->K:I

    goto :goto_9

    :cond_1a
    if-ne v9, v2, :cond_1b

    const/16 v2, 0x17

    iput v2, v0, Lj9/Z0;->K:I

    goto :goto_9

    :cond_1b
    if-ne v12, v2, :cond_1c

    const/16 v2, 0x1b

    iput v2, v0, Lj9/Z0;->K:I

    goto :goto_9

    :cond_1c
    const/16 v2, 0xa

    iput v2, v0, Lj9/Z0;->K:I

    :goto_9
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v4, Lv2/E0;

    invoke-virtual {v2, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/E0;

    iget-object v4, v0, Lj9/O0;->b:Lj9/D0;

    if-eqz v2, :cond_1d

    iget-object v2, v2, Lv2/E0;->c:Lha/w;

    iput-object v2, v0, Lj9/Z0;->P:Lha/w;

    goto :goto_a

    :cond_1d
    iget-object v2, v4, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->y1:[B

    if-nez v2, :cond_1e

    iget-object v2, v0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v2}, Lj9/o0;->o(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v2

    :cond_1e
    const-string v6, "camera.debug.superlowlight"

    invoke-static {v6}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-boolean v9, LJe/c;->k:Z

    sget-object v9, LJe/c$b;->a:LJe/c;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v10

    invoke-virtual {v10}, Lu2/Q;->O()Z

    move-result v10

    iget-object v9, v9, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v9, v10}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->k1(Z)[I

    move-result-object v9

    invoke-static {v2, v6, v9}, Lha/w;->a([BLjava/lang/String;[I)Lha/w;

    move-result-object v2

    iput-object v2, v0, Lj9/Z0;->P:Lha/w;

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "prepareSuperNight: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lj9/Z0;->P:Lha/w;

    invoke-virtual {v6}, Lha/w;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v9, v0, Lj9/O0;->a:Ljava/lang/String;

    invoke-static {v9, v2, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lj9/Z0;->P:Lha/w;

    iget v2, v2, Lha/w;->a:I

    iput v2, v0, Lj9/Z0;->D:I

    iput v2, v0, Lj9/Z0;->E:I

    iget-object v2, v4, Lj9/D0;->F:Lj9/h0;

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget v2, v2, Lj9/i0;->w1:I

    iput v2, v0, Lj9/Z0;->e0:I

    iget-object v2, v0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v2}, Lj9/o0;->n(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v2

    iput-object v2, v0, Lj9/Z0;->Q:[I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "prepareSuperNight, mSuperNightAepLineValue: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lj9/Z0;->Q:[I

    invoke-static {v4, v2}, LF1/Q;->b([ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v9, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, v0, Lj9/Z0;->K:I

    invoke-static {v2}, LQg/d;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Lj9/Z0;->A()V

    :cond_1f
    :goto_b
    iget-object v2, v0, Lj9/O0;->b:Lj9/D0;

    iget-object v4, v2, Lj9/D0;->F:Lj9/h0;

    iget-object v4, v4, Lj9/h0;->a:Lj9/i0;

    iget-boolean v6, v4, Lj9/i0;->G2:Z

    iget-object v9, v0, Lj9/O0;->a:Ljava/lang/String;

    if-nez v6, :cond_20

    const-string v1, "anchor frame do not enable"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_c
    move v1, v5

    goto/16 :goto_13

    :cond_20
    iget-object v2, v2, Lj9/D0;->E:Lj9/e;

    if-nez v2, :cond_21

    :goto_d
    goto :goto_c

    :cond_21
    iget-boolean v4, v4, Lj9/i0;->k0:Z

    if-eqz v4, :cond_22

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a8()Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v1, "flash disable anchor"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_22
    invoke-virtual {v2}, Lj9/e;->i()I

    move-result v4

    if-nez v4, :cond_27

    iget v2, v0, Lj9/Z0;->K:I

    if-ne v2, v7, :cond_23

    const-string v1, "legacy SR disable anchor frame"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_23
    if-ne v2, v1, :cond_24

    const-string v2, "legacy HDR enable anchor frame"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v9, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_24
    const/16 v4, 0xa

    if-eq v2, v4, :cond_26

    const/16 v4, 0xc

    if-ne v2, v4, :cond_25

    goto :goto_e

    :cond_25
    const/16 v4, 0xf

    if-ne v2, v4, :cond_32

    goto :goto_d

    :cond_26
    :goto_e
    const-string v1, "legacy super night disable anchor frame"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_27
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    invoke-virtual {v4}, Lu2/Q;->M()Z

    move-result v4

    xor-int/lit8 v6, v4, 0x1

    sget-boolean v10, LJe/d;->i:Z

    xor-int/lit8 v11, v10, 0x1

    iget v12, v0, Lj9/Z0;->K:I

    const/16 v13, 0xf

    if-ne v12, v13, :cond_28

    const/16 v13, 0xc

    invoke-static {v6, v13, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v1

    const-string/jumbo v2, "super night se anchor frame "

    invoke-static {v2, v1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v9, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_28
    if-ne v12, v7, :cond_29

    invoke-static {v6, v8, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v1

    const-string v2, "SR anchor frame "

    invoke-static {v2, v1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v9, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_29
    if-eq v12, v1, :cond_30

    const/16 v1, 0x14

    if-eq v12, v1, :cond_30

    invoke-static {v12}, LQg/d;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_11

    :cond_2a
    iget v1, v0, Lj9/Z0;->K:I

    const/16 v4, 0xa

    if-eq v1, v4, :cond_2e

    const/16 v4, 0xc

    if-ne v1, v4, :cond_2b

    goto :goto_f

    :cond_2b
    const/16 v4, 0x11

    if-ne v1, v4, :cond_2c

    const/16 v1, 0x64

    invoke-static {v6, v1, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v1

    const-string v2, "cup capture anchor frame "

    invoke-static {v2, v1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v9, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_2c
    if-eqz v10, :cond_2d

    iget-boolean v1, v0, Lj9/Z0;->S:Z

    if-eqz v1, :cond_2d

    const/16 v4, 0xa

    invoke-static {v6, v4, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v1

    const-string v2, "back fusion anchor frame "

    invoke-static {v2, v1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v9, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_2d
    const-string v1, "default anchor frame true"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v11

    goto :goto_13

    :cond_2e
    :goto_f
    iget v1, v0, Lj9/Z0;->e0:I

    if-eqz v1, :cond_2f

    const/16 v1, 0xb

    goto :goto_10

    :cond_2f
    const/4 v1, 0x6

    :goto_10
    invoke-static {v6, v1, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v1

    const-string/jumbo v2, "super night anchor frame "

    invoke-static {v2, v1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v9, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_30
    :goto_11
    if-eqz v4, :cond_31

    invoke-static {v6, v14, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v1

    goto :goto_12

    :cond_31
    const/16 v1, 0x66

    invoke-static {v6, v1, v2}, Lj9/f;->c1(IILj9/e;)Z

    move-result v1

    :goto_12
    const-string v2, "HDR anchor frame "

    invoke-static {v2, v1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v9, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_32
    :goto_13
    iput-boolean v1, v0, Lj9/O0;->n:Z

    iput-boolean v1, v0, Lj9/O0;->q:Z

    iget v1, v0, Lj9/Z0;->K:I

    invoke-virtual {v0, v1}, Lj9/O0;->d(I)I

    move-result v1

    iput v1, v0, Lj9/O0;->o:I

    iput-boolean v5, v0, Lj9/Z0;->f0:Z

    iget-object v2, v0, Lj9/O0;->a:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v4, v0, Lj9/Z0;->K:I

    iget v6, v0, Lj9/Z0;->D:I

    iget-boolean v7, v0, Lj9/Z0;->H:Z

    iget-boolean v0, v0, Lj9/O0;->n:Z

    const-string v8, "prepare: algo="

    const-string v9, " captureNum="

    const-string v10, " doMFNR="

    invoke-static {v4, v6, v8, v9, v10}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " doSR="

    const-string v8, " anchor="

    invoke-static {v4, v7, v6, v3, v8}, LF1/u2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " soundTime="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final m()V
    .locals 12

    iget-object v0, p0, Lj9/W0;->w:Landroid/graphics/Rect;

    iget-object v1, p0, Lj9/O0;->a:Ljava/lang/String;

    iget-object v2, p0, Lj9/O0;->b:Lj9/D0;

    const-string/jumbo v3, "startSessionCapture mSequenceNum:"

    :try_start_0
    new-instance v4, Lj9/Y0;

    invoke-direct {v4, p0}, Lj9/Y0;-><init>(Lj9/Z0;)V

    invoke-virtual {p0}, Lj9/Z0;->y()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lj9/Z0;->D:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v1, v3, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v7

    :goto_0
    iget v8, p0, Lj9/Z0;->D:I

    if-ge v3, v8, :cond_c

    sget-boolean v8, LJe/d;->i:Z

    if-eqz v8, :cond_a

    iget-boolean v8, p0, Lj9/Z0;->V:Z

    if-eqz v8, :cond_0

    sget-object v8, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v8, v3, v5}, Ln9/b;->G(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_8

    :catch_1
    move-exception p0

    goto/16 :goto_9

    :catch_2
    move-exception p0

    goto/16 :goto_a

    :cond_0
    :goto_1
    iget-object v8, v2, Lj9/D0;->E:Lj9/e;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v9, v2, Lj9/D0;->E:Lj9/e;

    :try_start_1
    invoke-static {v8}, Lj9/f;->k(Lj9/e;)I

    move-result v8

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v10

    invoke-virtual {v10}, Lu6/f;->k()I

    move-result v10

    if-ne v8, v10, :cond_1

    sget-object v8, Ln9/a$a;->a:Ln9/b;

    iget-object v10, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v8, v10, v5}, Ln9/b;->E0(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1
    iget-object v8, p0, Lj9/O0;->b:Lj9/D0;

    invoke-virtual {v8}, Lj9/D0;->w2()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lj9/O0;->b:Lj9/D0;

    invoke-virtual {v8}, Lj9/D0;->U()Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {v9}, Lj9/f;->k(Lj9/e;)I

    move-result v8

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v10

    invoke-virtual {v10}, Lu6/f;->k()I

    move-result v10

    if-eq v8, v10, :cond_3

    iget v8, p0, Lj9/Z0;->K:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_a

    :cond_3
    iget-object v8, v2, Lj9/D0;->F:Lj9/h0;

    iget-object v8, v8, Lj9/h0;->a:Lj9/i0;

    iget v8, v8, Lj9/i0;->c0:F

    invoke-static {v8, v0}, Lur/d;->b(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v9}, Lj9/f;->T4(Lj9/e;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, LJe/c$b;->a:LJe/c;

    invoke-virtual {v10}, LJe/c;->o2()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v9}, Lj9/f;->k(Lj9/e;)I

    move-result v9

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v10

    invoke-virtual {v10}, Lu6/f;->k()I

    move-result v10

    if-ne v9, v10, :cond_4

    iget-object v9, v2, Lj9/D0;->F:Lj9/h0;

    iget-object v9, v9, Lj9/h0;->a:Lj9/i0;

    iget v9, v9, Lj9/i0;->c0:F

    goto :goto_2

    :cond_4
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isZoomRatioSupported, uw/sr set zoomRatio = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v1, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Li0/m0;->b()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v5, v10, v9, v7}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    goto :goto_3

    :cond_5
    sget-object v10, LJe/c$b;->a:LJe/c;

    invoke-virtual {v10}, LJe/c;->o2()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v9}, Lj9/f;->k(Lj9/e;)I

    move-result v9

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v10

    invoke-virtual {v10}, Lu6/f;->k()I

    move-result v10

    if-ne v9, v10, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "supportMtkCropRegion: uw/sr set crop = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v1, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5, v9, v8, v7}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    goto :goto_3

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uw/sr set crop = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v1, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5, v9, v0, v7}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uw/sr set mtkCrop = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v1, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v9, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v9, v5, v8}, Ln9/b;->d0(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_7
    :goto_4
    iget-object v8, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    sget-object v9, Lga/C0;->o1:Lga/D0;

    const v10, 0xbabe

    invoke-static {v8, v9, v10}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/graphics/Rect;

    if-eqz v8, :cond_8

    const-string/jumbo v9, "set mtk face"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v1, v9, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v9, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v9, v5, v8}, Ln9/b;->q(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_8
    const-string v8, "get mtk face = null"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v1, v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    sget-object v8, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v8, v5}, Ln9/b;->Y(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v9, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    sget-object v11, Lga/C0;->n0:Lga/D0;

    invoke-static {v9, v11, v10}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v9, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sat set mtkCrop = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v1, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v5, v9}, Ln9/b;->d0(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_9
    const-string/jumbo v8, "sat get mtkCrop = null"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v1, v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_6
    iget v8, p0, Lj9/Z0;->K:I

    invoke-virtual {p0, v5, v3, v8}, Lj9/Z0;->w(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    iget-boolean v8, p0, Lj9/Z0;->S:Z

    if-eqz v8, :cond_b

    invoke-virtual {p0, v3, v5}, Lj9/Z0;->C(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_b
    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v0, v2, Lj9/D0;->E:Lj9/e;

    invoke-static {v0}, Lj9/f;->k(Lj9/e;)I

    move-result v0

    iget-object v3, p0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    if-nez v3, :cond_d

    new-instance v3, Lcom/xiaomi/engine/BufferFormat;

    iget-object v7, p0, Lj9/W0;->v:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lj9/W0;->v:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/16 v9, 0x23

    invoke-direct {v3, v7, v8, v9}, Lcom/xiaomi/engine/BufferFormat;-><init>(III)V

    :cond_d
    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v0}, Lj9/W0;->r(Landroid/hardware/camera2/CaptureRequest;Lcom/xiaomi/engine/BufferFormat;I)Lcom/xiaomi/engine/PreProcessData;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v0}, Lj9/W0;->u(Lcom/xiaomi/engine/PreProcessData;)V

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionCapture request number:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string v3, "algo_prepare_capture"

    invoke-virtual {v0, v3}, LF6/q;->g(Ljava/lang/String;)J

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string v3, "algo_device_capture"

    invoke-virtual {v0, v3}, LF6/q;->q(Ljava/lang/String;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string/jumbo v3, "shot_prepare_capture"

    invoke-virtual {v0, v3}, LF6/q;->g(Ljava/lang/String;)J

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string/jumbo v3, "shot_device_capture"

    invoke-virtual {v0, v3}, LF6/q;->q(Ljava/lang/String;)V

    invoke-virtual {v2}, Lj9/D0;->r()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v3, p0, Lj9/O0;->c:Landroid/os/Handler;

    invoke-virtual {v0, v6, v4, v3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj9/W0;->y:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capture burst for camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lj9/a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lh3/b;->a(Landroid/hardware/camera2/CaptureRequest;Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget p0, p0, Lj9/Z0;->D:I

    invoke-static {v0, p0}, LF1/s3;->a(II)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_8
    const-string v0, "Failed to captureBurst, IllegalArgument"

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0x101

    invoke-virtual {v2, p0}, Lj9/a;->c0(I)V

    goto :goto_b

    :goto_9
    const-string v0, "Failed to captureBurst, IllegalState"

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0x100

    invoke-virtual {v2, p0}, Lj9/a;->c0(I)V

    goto :goto_b

    :goto_a
    const-string v0, "Failed to captureBurst, CameraAccessException"

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p0

    invoke-virtual {v2, p0}, Lj9/a;->c0(I)V

    :goto_b
    return-void
.end method

.method public final w(Landroid/hardware/camera2/CaptureRequest$Builder;II)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0xbabe

    const/16 v3, 0x14

    const-string/jumbo v4, "wrong request index "

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq p3, v0, :cond_1e

    if-eq p3, v6, :cond_1d

    if-eq p3, v5, :cond_13

    const/4 v7, 0x7

    if-eq p3, v7, :cond_12

    const-string v7, "].ev = "

    const/16 v8, 0xf

    const/16 v9, 0xa

    if-eq p3, v9, :cond_4

    const/16 v10, 0xc

    if-eq p3, v10, :cond_4

    if-eq p3, v8, :cond_4

    if-eq p3, v3, :cond_1e

    const/16 v10, 0x17

    if-eq p3, v10, :cond_4

    const/16 v10, 0x11

    if-eq p3, v10, :cond_2

    const/16 v10, 0x12

    if-eq p3, v10, :cond_0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1b

    :cond_0
    iget-object p3, p0, Lj9/O0;->b:Lj9/D0;

    iget-object p3, p3, Lj9/D0;->F:Lj9/h0;

    iget-object p3, p3, Lj9/h0;->a:Lj9/i0;

    iget p3, p3, Lj9/i0;->d3:I

    if-ne v6, p3, :cond_1

    sget-object v2, Lga/A0;->k2:Lga/D0;

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lga/E0;->f(Landroid/hardware/camera2/CaptureRequest$Builder;Lga/D0;Ljava/lang/Object;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applyPureViewParameter mSequenceNum:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lj9/Z0;->D:I

    const-string v4, " capture type:"

    invoke-static {v3, p3, v4, v2}, LO0/o;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lj9/O0;->a:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Ln9/a$a;->a:Ln9/b;

    add-int/2addr p2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Ln9/b;->V(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget p2, p0, Lj9/Z0;->D:I

    invoke-static {p2, p1}, Ln9/b;->U(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget p2, p0, Lj9/Z0;->D:I

    invoke-static {p2, p1}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p1, v0}, Ln9/b;->e0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Ln9/b;->v0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Ln9/b;->u0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    sget-object p2, Lga/A0;->q3:Lga/D0;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lga/E0;->e(Landroid/hardware/camera2/CaptureRequest$Builder;Lga/D0;Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_2
    iget p3, p0, Lj9/Z0;->D:I

    if-gt p2, p3, :cond_3

    sget-boolean p3, LJe/c;->k:Z

    sget-object p3, LJe/c$b;->a:LJe/c;

    iget-object p3, p3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v1}, [I

    move-result-object p3

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aget v2, p3, p2

    const-string v3, "applyFrontCupParameter: request["

    invoke-static {p2, v2, v3, v7}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lj9/O0;->a:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lj9/m0;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aget p2, p3, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, v2, p2, v1}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    sget-object p2, Ln9/a$a;->a:Ln9/b;

    iget p3, p0, Lj9/Z0;->E:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p1}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p1, v1}, Ln9/b;->v0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-virtual {p2, p1, v0}, Ln9/b;->y(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto/16 :goto_1b

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, v4}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :pswitch_0
    iget p3, p0, Lj9/Z0;->D:I

    if-gt p2, p3, :cond_11

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object p3, p0, Lj9/Z0;->P:Lha/w;

    iget-object p3, p3, Lha/w;->b:[I

    aget p3, p3, p2

    const-string v3, "applySuperNightParameter: request["

    invoke-static {p2, p3, v3, v7}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lj9/O0;->a:Ljava/lang/String;

    invoke-static {v4, p3, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean p3, LJe/d;->i:Z

    if-eqz p3, :cond_5

    invoke-static {p1, v0}, Lj9/m0;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p3

    invoke-virtual {p3}, Lu2/Q;->O()Z

    move-result p3

    if-eqz p3, :cond_6

    sget-object p3, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {p3, p1, v0}, Ln9/b;->y(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    :cond_6
    :goto_0
    iget p3, p0, Lj9/Z0;->K:I

    invoke-static {p3}, LQg/d;->c(I)Z

    move-result p3

    iget-object v3, p0, Lj9/O0;->b:Lj9/D0;

    if-eqz p3, :cond_9

    const-string p3, "apply raw super night params"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, p3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, p0, Lj9/Z0;->P:Lha/w;

    iget-object v5, v5, Lha/w;->b:[I

    aget v5, v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, p3, v5, v1}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    sget-object p3, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {p3, p1, v0}, Ln9/b;->H(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    invoke-virtual {p3, p1, v0}, Ln9/b;->t0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v5, v3, Lj9/D0;->E:Lj9/e;

    iget-object v5, v5, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v7, Lga/w0;->j4:Lga/D0;

    invoke-static {v5, v7, v2}, Lga/E0;->i(Landroid/hardware/camera2/CameraCharacteristics;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p3, v1, p1}, Ln9/b;->T(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p3, v0, p1}, Ln9/b;->T(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :goto_1
    iget-object v2, p0, Lj9/Z0;->Q:[I

    if-eqz v2, :cond_8

    array-length v5, v2

    if-lt v5, v6, :cond_8

    aget v5, v2, v1

    if-ne v5, v0, :cond_8

    aget v2, v2, v0

    goto :goto_2

    :cond_8
    const/16 v2, 0x1390

    :goto_2
    invoke-virtual {p3, v2, p1}, Ln9/b;->K(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget p3, p0, Lj9/Z0;->K:I

    if-ne p3, v8, :cond_d

    const-string p3, "disable zsl for supernight se"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, p3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p3, v2, v1}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    goto/16 :goto_3

    :cond_9
    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, p0, Lj9/Z0;->P:Lha/w;

    iget-object v5, v5, Lha/w;->b:[I

    aget v5, v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, p3, v5, v1}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    sget-object p3, Ln9/a$a;->a:Ln9/b;

    const/16 v5, 0x138b

    invoke-virtual {p3, v5, p1}, Ln9/b;->K(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget p3, p0, Lj9/Z0;->a0:I

    const/16 v5, 0x10

    if-ne v5, p3, :cond_c

    sget-object p3, Lga/A0;->T0:Lga/D0;

    invoke-static {p1, p3, v2}, Lga/E0;->j(Landroid/hardware/camera2/CaptureRequest$Builder;Lga/D0;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget v2, p0, Lj9/Z0;->e0:I

    if-eqz v2, :cond_a

    invoke-static {v2, p1}, Ln9/b;->R(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v1, p1}, Ln9/b;->S(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_3

    :cond_a
    if-eqz p3, :cond_d

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v9, v2, :cond_d

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "force set mivi super night mode from "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to 1"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, p3, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, p1}, Ln9/b;->S(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_3

    :cond_c
    const/16 v5, 0x40

    if-ne v5, p3, :cond_d

    sget-object p3, Lga/A0;->R0:Lga/D0;

    invoke-static {p1, p3, v2}, Lga/E0;->j(Landroid/hardware/camera2/CaptureRequest$Builder;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "QCOM RAW SE: force set super night mode to true"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p3, v5, v1}, Lga/E0;->d(Landroid/hardware/camera2/CaptureRequest$Builder;Lga/D0;Ljava/lang/Object;Z)V

    :cond_d
    :goto_3
    sget-object p3, Ln9/a$a;->a:Ln9/b;

    iget v2, p0, Lj9/Z0;->E:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p1, v1}, Ln9/b;->v0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    add-int/lit8 p3, p2, 0x1

    invoke-static {p3, p1}, Ln9/b;->V(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget p3, p0, Lj9/Z0;->D:I

    invoke-static {p3, p1}, Ln9/b;->U(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget p3, p0, Lj9/Z0;->K:I

    if-ne p3, v9, :cond_e

    iget-object p3, v3, Lj9/D0;->E:Lj9/e;

    invoke-static {p3}, Lj9/f;->R3(Lj9/e;)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p0, Lj9/Z0;->P:Lha/w;

    iget-object p3, p3, Lha/w;->b:[I

    aget p3, p3, p2

    if-nez p3, :cond_e

    sget-object p3, Lga/A0;->R0:Lga/D0;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p3, v2, v1}, Lga/E0;->d(Landroid/hardware/camera2/CaptureRequest$Builder;Lga/D0;Ljava/lang/Object;Z)V

    invoke-static {p1, v0}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v0}, Ln9/b;->s0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_e
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p3

    const-class v0, Lv2/E0;

    invoke-virtual {p3, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lv2/E0;

    if-eqz p3, :cond_f

    iget-boolean p3, p3, Lv2/E0;->l:Z

    if-eqz p3, :cond_f

    if-eqz p2, :cond_10

    :cond_f
    iget p2, p0, Lj9/Z0;->e0:I

    if-eqz p2, :cond_51

    :cond_10
    iget-object p2, v3, Lj9/D0;->D:Lj9/o1;

    iget-object p2, p2, Lj9/o1;->n:Landroid/view/Surface;

    if-eqz p2, :cond_51

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    const-string p2, "Remove preview surface required for night capture"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {v4, p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p2, v4}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-array p2, v1, [Ljava/lang/Object;

    iget-object p3, p0, Lj9/O0;->a:Ljava/lang/String;

    const-string v0, "HHT algo in applyAlgoParameter"

    invoke-static {p3, v0, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Ln9/a$a;->a:Ln9/b;

    iget-boolean p3, p0, Lj9/Z0;->H:Z

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p3}, Ln9/b;->v0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget p2, p0, Lj9/Z0;->D:I

    invoke-static {p2, p1}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object p2, Lga/A0;->u:Lga/D0;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2, p3, v1}, Lga/E0;->d(Landroid/hardware/camera2/CaptureRequest$Builder;Lga/D0;Ljava/lang/Object;Z)V

    invoke-static {p1, v1}, Ln9/b;->v(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto/16 :goto_1b

    :cond_13
    sget-object p3, Ln9/a$a;->a:Ln9/b;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Ln9/b;->V(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget v2, p0, Lj9/Z0;->D:I

    invoke-static {v2, p1}, Ln9/b;->U(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget v2, p0, Lj9/Z0;->E:I

    invoke-static {v2, p1}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p1, v1}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Ln9/b;->v(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v0}, Ln9/b;->u0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {}, Lcom/android/camera/data/data/m;->S()Z

    move-result v2

    invoke-static {v2, p1}, Ln9/b;->N(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v6, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->h6()Z

    move-result v6

    if-eqz v6, :cond_14

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    invoke-static {p1, v0}, Lj9/m0;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v0}, Lj9/m0;->f(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_15
    sget-boolean v3, LJe/d;->i:Z

    iget-object v6, p0, Lj9/O0;->a:Ljava/lang/String;

    if-eqz v3, :cond_16

    invoke-virtual {v4}, LJe/c;->p2()Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "enable isp tuning capture hint for MFSR"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v3, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0x138e

    invoke-virtual {p3, v3, p1}, Ln9/b;->K(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {p3, p1, v1}, Ln9/b;->X(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-virtual {p3, p1}, Ln9/b;->C(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget v3, p0, Lj9/Z0;->D:I

    invoke-virtual {p3, v3, p1}, Ln9/b;->F(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {p3, p2, p1}, Ln9/b;->G(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_16
    iget-object v3, p0, Lj9/Z0;->L:[I

    if-eqz v3, :cond_18

    iget-boolean v3, p0, Lj9/Z0;->J:Z

    if-eqz v3, :cond_18

    invoke-static {p1, v0}, Ln9/b;->Q(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Ln9/b;->v(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v3, p0, Lj9/Z0;->L:[I

    aget v3, v3, p2

    iget v7, p0, Lj9/Z0;->Y:I

    if-ne v3, v7, :cond_17

    invoke-virtual {v4}, LJe/c;->n0()V

    iget v3, p0, Lj9/Z0;->D:I

    iget v7, p0, Lj9/Z0;->Z:I

    sub-int/2addr v3, v7

    invoke-static {v3, p1}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p1, v0}, Ln9/b;->u0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_4

    :cond_17
    invoke-virtual {v4}, LJe/c;->n0()V

    iget v3, p0, Lj9/Z0;->Z:I

    invoke-static {v3, p1}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p1, v1}, Ln9/b;->u0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :goto_4
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v3, v7, v1}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v3, p0, Lj9/Z0;->L:[I

    aget v3, v3, p2

    const-string v7, "HdrSrEv["

    const-string v8, "]="

    invoke-static {p2, v3, v7, v8}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v3, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, p0, Lj9/Z0;->L:[I

    aget v6, v6, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v3, v6, v1}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    invoke-virtual {p3, p1, v0}, Ln9/b;->y(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_5

    :cond_18
    invoke-static {p1, v1}, Ln9/b;->Q(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :goto_5
    iget p3, p0, Lj9/Z0;->K:I

    if-eq p3, v5, :cond_19

    goto/16 :goto_1b

    :cond_19
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    iget-object v0, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->h6()Z

    move-result v0

    if-eqz v0, :cond_51

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1a

    goto/16 :goto_1b

    :cond_1a
    iget-object p3, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v0, p3, Lj9/D0;->E:Lj9/e;

    invoke-static {v0}, Lj9/f;->c(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p3, Lj9/D0;->D:Lj9/o1;

    iget-object v2, v2, Lj9/o1;->f:Landroid/media/ImageReader;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_1b
    if-nez p2, :cond_1c

    invoke-static {v0}, Lj9/f;->b(Lj9/e;)Z

    move-result p2

    if-eqz p2, :cond_1c

    goto/16 :goto_1b

    :cond_1c
    iget-object p2, p3, Lj9/D0;->D:Lj9/o1;

    iget-object p2, p2, Lj9/o1;->n:Landroid/view/Surface;

    if-eqz p2, :cond_51

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    goto/16 :goto_1b

    :cond_1d
    sget-object p2, Ln9/a$a;->a:Ln9/b;

    iget-boolean p3, p0, Lj9/Z0;->H:Z

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p3}, Ln9/b;->v0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto/16 :goto_1b

    :cond_1e
    :pswitch_1
    iget-object p3, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {p3}, Lj9/o0;->d(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p3

    iget v7, p0, Lj9/Z0;->D:I

    if-gt p2, v7, :cond_54

    if-eqz p3, :cond_20

    array-length v4, p3

    if-le v4, p2, :cond_1f

    goto :goto_6

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "wrong HdrCapturePreCollectEnable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_6
    sget-object v4, Ln9/a$a;->a:Ln9/b;

    add-int/lit8 v7, p2, 0x1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, p1}, Ln9/b;->V(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget v7, p0, Lj9/Z0;->D:I

    invoke-static {v7, p1}, Ln9/b;->U(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v4, p2, p1}, Ln9/b;->G(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget v7, p0, Lj9/Z0;->D:I

    invoke-virtual {v4, v7, p1}, Ln9/b;->F(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v7, p0, Lj9/Z0;->L:[I

    if-eqz v7, :cond_21

    aget v7, v7, p2

    goto :goto_7

    :cond_21
    move v7, v1

    :goto_7
    iget-boolean v8, p0, Lj9/Z0;->I:Z

    if-eqz v8, :cond_23

    if-gez v7, :cond_22

    move v8, v0

    goto :goto_8

    :cond_22
    move v8, v1

    :goto_8
    int-to-byte v8, v8

    invoke-virtual {v4, p1, v8}, Ln9/b;->y(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_9

    :cond_23
    invoke-virtual {v4, p1, v0}, Ln9/b;->y(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    :goto_9
    iget v8, p0, Lj9/Z0;->K:I

    invoke-static {v8}, LQg/d;->b(I)Z

    move-result v8

    if-eqz v8, :cond_24

    iget v8, p0, Lj9/Z0;->D:I

    invoke-static {v8, p1}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v8, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v8, v8, Lj9/D0;->E:Lj9/e;

    iget-object v8, v8, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v9, Lga/w0;->j4:Lga/D0;

    invoke-static {v8, v9, v2}, Lga/E0;->i(Landroid/hardware/camera2/CameraCharacteristics;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v4, v1, p1}, Ln9/b;->T(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_a

    :cond_24
    iget v2, p0, Lj9/Z0;->K:I

    if-ne v2, v3, :cond_25

    invoke-static {v0, p1}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_a

    :cond_25
    iget v2, p0, Lj9/Z0;->D:I

    invoke-static {v2, p1}, Ln9/b;->W(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_26
    :goto_a
    iget-object v2, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v2}, Lj9/o0;->t(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v2

    sget-boolean v8, LJe/d;->i:Z

    if-eqz v8, :cond_28

    if-eqz v2, :cond_27

    goto :goto_b

    :cond_27
    invoke-static {p1, v0}, Lj9/m0;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_f

    :cond_28
    :goto_b
    sget-boolean v9, LJe/c;->k:Z

    sget-object v9, LJe/c$b;->a:LJe/c;

    iget-object v9, v9, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_2c

    if-nez p2, :cond_29

    move v2, v0

    goto :goto_c

    :cond_29
    move v2, v1

    :goto_c
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {p1, v9, v10, v1}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    if-eqz v8, :cond_2b

    if-nez v2, :cond_2a

    goto :goto_d

    :cond_2a
    move v2, v1

    goto :goto_e

    :cond_2b
    :goto_d
    move v2, v0

    :goto_e
    invoke-static {p1, v2}, Lj9/m0;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_2c
    :goto_f
    iget v2, p0, Lj9/Z0;->M:I

    if-nez v2, :cond_2e

    iget-object v2, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v2, v2, Lj9/D0;->E:Lj9/e;

    invoke-static {v2}, Lj9/f;->y(Lj9/e;)B

    move-result v2

    if-ne v2, v0, :cond_2e

    if-nez p2, :cond_2d

    move v2, v0

    goto :goto_10

    :cond_2d
    move v2, v1

    :goto_10
    invoke-virtual {v4, p1, v2}, Ln9/b;->X(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_2e
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p1, v2, v8, v1}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    if-eqz p3, :cond_2f

    sget-object v2, Lga/A0;->F3:Lga/D0;

    aget p3, p3, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, v2, p3}, Lga/E0;->f(Landroid/hardware/camera2/CaptureRequest$Builder;Lga/D0;Ljava/lang/Object;)V

    :cond_2f
    iget p3, p0, Lj9/Z0;->M:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget v2, p0, Lj9/Z0;->N:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, p3, v2}, Ln9/b;->z(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-static {p1, v1}, Ln9/b;->Q(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-boolean p3, p0, Lj9/Z0;->b0:Z

    invoke-static {p1, p3}, Ln9/b;->C0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-virtual {v4, p1, v1}, Ln9/b;->t0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object p3, p0, Lj9/O0;->b:Lj9/D0;

    iget-object p3, p3, Lj9/D0;->E:Lj9/e;

    invoke-static {p3}, Lj9/f;->P3(Lj9/e;)Z

    move-result p3

    if-eqz p3, :cond_30

    iget-object p3, p0, Lj9/Z0;->h0:[B

    if-eqz p3, :cond_30

    invoke-static {p1, p3}, Ln9/b;->o0(Landroid/hardware/camera2/CaptureRequest$Builder;[B)V

    :cond_30
    sget-boolean p3, LJe/c;->k:Z

    sget-object p3, LJe/c$b;->a:LJe/c;

    iget-object v2, p3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->p6()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lj9/Z0;->c0:[I

    if-nez v2, :cond_31

    if-nez v7, :cond_34

    :goto_11
    move v2, v0

    goto :goto_12

    :cond_31
    aget v2, v2, p2

    if-ne v2, v0, :cond_34

    goto :goto_11

    :cond_32
    iget-object v2, p3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H4()Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lj9/Z0;->c0:[I

    if-nez v2, :cond_33

    if-nez v7, :cond_34

    goto :goto_11

    :cond_33
    aget v2, v2, p2

    if-ne v2, v0, :cond_34

    goto :goto_11

    :cond_34
    move v2, v1

    :goto_12
    iget v8, p0, Lj9/O0;->u:I

    const/4 v9, 0x4

    if-ne v8, v0, :cond_35

    :goto_13
    move v5, v0

    goto :goto_14

    :cond_35
    if-ne v8, v6, :cond_36

    goto :goto_13

    :cond_36
    if-ne v8, v5, :cond_37

    iget-object v5, p3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->c6()Z

    move-result v5

    goto :goto_14

    :cond_37
    if-ne v8, v9, :cond_39

    iget-object v5, p3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_38
    move v5, v1

    goto :goto_14

    :cond_39
    const/4 v5, -0x1

    if-ne v8, v5, :cond_38

    iget-object v5, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v5, v5, Lj9/D0;->E:Lj9/e;

    invoke-static {v5}, Lj9/f;->k(Lj9/e;)I

    move-result v5

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v6

    invoke-virtual {v6}, Lu6/f;->f()I

    move-result v6

    if-eq v5, v6, :cond_3a

    iget-object v5, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v5, v5, Lj9/D0;->E:Lj9/e;

    invoke-static {v5}, Lj9/f;->k(Lj9/e;)I

    move-result v5

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v6

    invoke-virtual {v6}, Lu6/f;->k()I

    move-result v6

    if-ne v5, v6, :cond_38

    :cond_3a
    iget-object v5, p3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H4()Z

    move-result v5

    :goto_14
    iget-object v6, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v6, v6, Lj9/D0;->E:Lj9/e;

    invoke-static {v6}, Lj9/f;->k(Lj9/e;)I

    move-result v6

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v8

    invoke-virtual {v8}, Lu6/f;->A()I

    move-result v8

    if-eq v6, v8, :cond_3c

    iget-object v6, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v6, v6, Lj9/D0;->E:Lj9/e;

    invoke-static {v6}, Lj9/f;->k(Lj9/e;)I

    move-result v6

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v8

    invoke-virtual {v8}, Lu6/f;->G()I

    move-result v8

    if-ne v6, v8, :cond_3b

    goto :goto_15

    :cond_3b
    move v6, v1

    goto :goto_16

    :cond_3c
    :goto_15
    iget-object v6, p3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->p2()Z

    move-result v6

    :goto_16
    if-eqz v2, :cond_3d

    iget-object v8, p0, Lj9/O0;->b:Lj9/D0;

    iget-boolean v8, v8, Lj9/a;->n:Z

    if-eqz v8, :cond_3d

    invoke-virtual {p3}, LJe/c;->l2()V

    :cond_3d
    iget-object v8, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v8, v8, Lj9/D0;->E:Lj9/e;

    iget-object v10, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v10, v8}, Lj9/n0;->h(Landroid/hardware/camera2/CaptureResult;Lj9/e;)Z

    move-result v8

    if-nez v8, :cond_42

    if-eqz v2, :cond_3e

    if-eqz v5, :cond_3e

    iget-object v8, p0, Lj9/O0;->b:Lj9/D0;

    invoke-virtual {v8}, Lj9/D0;->w2()Z

    move-result v8

    if-eqz v8, :cond_3e

    iget v8, p0, Lj9/Z0;->D:I

    if-ge v8, v9, :cond_3e

    goto :goto_17

    :cond_3e
    if-eqz v2, :cond_3f

    if-eqz v6, :cond_3f

    iget v6, p0, Lj9/Z0;->D:I

    if-gt v6, v9, :cond_3f

    goto :goto_17

    :cond_3f
    iget-boolean v6, p0, Lj9/Z0;->O:Z

    if-eqz v6, :cond_40

    goto :goto_17

    :cond_40
    if-eqz v2, :cond_41

    if-eqz v5, :cond_41

    iget-object v5, p3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H4()Z

    move-result v5

    if-eqz v5, :cond_41

    goto :goto_17

    :cond_41
    if-eqz v2, :cond_42

    iget-boolean v2, p0, Lj9/Z0;->I:Z

    if-eqz v2, :cond_42

    :goto_17
    iget-object v2, p0, Lj9/O0;->a:Ljava/lang/String;

    const-string v5, "applyHdrParameter enable mfnr EV = "

    invoke-static {v7, v5}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v0}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_18

    :cond_42
    iget-object v2, p0, Lj9/O0;->a:Ljava/lang/String;

    const-string v5, "applyHdrParameter disable mfnr EV = "

    invoke-static {v7, v5}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v1}, Ln9/b;->O(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :goto_18
    iget-object v2, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v2, v2, Lj9/D0;->E:Lj9/e;

    invoke-static {v2}, Lj9/f;->O2(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-boolean v2, p0, Lj9/Z0;->I:Z

    invoke-static {p1, v2}, Ln9/b;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_43
    invoke-virtual {p3}, LJe/c;->p2()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget v2, p0, Lj9/Z0;->D:I

    invoke-virtual {v4, v2, p1}, Ln9/b;->F(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v4, p2, p1}, Ln9/b;->G(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget v2, p0, Lj9/Z0;->K:I

    const/16 v5, 0x138d

    const/16 v6, 0x138f

    if-ne v3, v2, :cond_45

    iget-object v2, p0, Lj9/O0;->a:Ljava/lang/String;

    const-string v3, "enable isp tuning capture hint for HDR reprocess"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, p1}, Ln9/b;->J(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v4, p1, v0}, Ln9/b;->H(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    invoke-virtual {v4, p1}, Ln9/b;->I(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget v2, p0, Lj9/Z0;->C:I

    if-ne v2, v0, :cond_44

    invoke-virtual {v4, v6, p1}, Ln9/b;->K(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_19

    :cond_44
    invoke-virtual {v4, v5, p1}, Ln9/b;->K(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_19

    :cond_45
    invoke-static {v2}, LQg/d;->b(I)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lj9/O0;->a:Ljava/lang/String;

    const-string v3, "enable isp tuning capture hint for HDR/MFNR reprocess"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, p1}, Ln9/b;->J(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v4, p1, v0}, Ln9/b;->H(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    iget v2, p0, Lj9/Z0;->K:I

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_47

    iget v2, p0, Lj9/Z0;->C:I

    if-ne v2, v0, :cond_46

    invoke-virtual {v4, v6, p1}, Ln9/b;->K(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_19

    :cond_46
    invoke-virtual {v4, v5, p1}, Ln9/b;->K(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_19

    :cond_47
    const/16 v3, 0x19

    if-ne v2, v3, :cond_4a

    invoke-virtual {v4, v0, p1}, Ln9/b;->K(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_19

    :cond_48
    iget v2, p0, Lj9/Z0;->C:I

    if-nez v2, :cond_49

    iget-object v0, p0, Lj9/O0;->a:Ljava/lang/String;

    const-string v2, "enable isp tuning capture hint for HDR"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5, p1}, Ln9/b;->K(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_19

    :cond_49
    if-ne v2, v0, :cond_4a

    iget-object v0, p0, Lj9/O0;->a:Ljava/lang/String;

    const-string v2, "enable isp tuning capture hint for LLHDR"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v6, p1}, Ln9/b;->K(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_4a
    :goto_19
    iget-object v0, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v0, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget v0, v0, Lj9/i0;->h0:I

    iget-object v0, p3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, LJe/c;->z()V

    iget-object p3, p0, Lj9/O0;->a:Ljava/lang/String;

    iget-object v0, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v2, v0, Lj9/D0;->E:Lj9/e;

    invoke-static {v2}, Lj9/f;->l1(Lj9/e;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string p2, "disableRtStreamTargetForHDRIfNeed: checkNeedDisableRtStreamForHDR false"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3, p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_4b
    iget-object v3, v0, Lj9/D0;->D:Lj9/o1;

    iget-object v3, v3, Lj9/o1;->f:Landroid/media/ImageReader;

    if-eqz v3, :cond_4c

    const-string v4, "disableRtStreamTargetForHDRIfNeed: disable QR stream"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_4c
    invoke-static {v2}, Lj9/f;->j1(Lj9/e;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v0, v0, Lj9/D0;->D:Lj9/o1;

    iget-object v0, v0, Lj9/o1;->n:Landroid/view/Surface;

    if-eqz v0, :cond_51

    const-string v2, "disableRtStreamTargetForHDRIfNeed: disable realtime stream,requestIndex:"

    invoke-static {p2, v2}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p3, p2, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    goto :goto_1b

    :cond_4d
    iget-object v3, p0, Lj9/Z0;->L:[I

    if-eqz v3, :cond_50

    array-length v3, v3

    if-gt v3, p2, :cond_4e

    goto :goto_1a

    :cond_4e
    invoke-static {v2}, Lj9/f;->k1(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lj9/Z0;->L:[I

    aget p2, v2, p2

    if-eqz p2, :cond_4f

    const-string v2, "disableRtStreamTargetForHDRIfNeed: EV not 0 : "

    invoke-static {p2, v2}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p3, p2, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p2, p0, Lj9/Z0;->f0:Z

    if-eqz p2, :cond_51

    iget-object p2, v0, Lj9/D0;->D:Lj9/o1;

    iget-object p2, p2, Lj9/o1;->n:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_1b

    :cond_4f
    iget-object v0, v0, Lj9/D0;->D:Lj9/o1;

    iget-object v0, v0, Lj9/o1;->n:Landroid/view/Surface;

    iget-boolean v2, p0, Lj9/Z0;->f0:Z

    if-eqz v2, :cond_51

    if-eqz v0, :cond_51

    const-string v2, "disableRtStreamTargetForHDRIfNeed: disable realtime stream, ev : "

    invoke-static {p2, v2}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p3, p2, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    goto :goto_1b

    :cond_50
    :goto_1a
    const-string p2, "disableRtStreamTargetForHDRIfNeed: mHdrCheckerEvValue exception!"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3, p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_51
    :goto_1b
    sget-boolean p2, LJe/d;->i:Z

    if-eqz p2, :cond_52

    sget-object p2, Ln9/a$a;->a:Ln9/b;

    iget-object p0, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p2, p0, p1}, Ln9/b;->D0(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    :cond_52
    iget-object p2, p0, Lj9/O0;->b:Lj9/D0;

    invoke-virtual {p2}, Lj9/D0;->w2()Z

    move-result p2

    if-eqz p2, :cond_53

    iget-object p2, p0, Lj9/O0;->b:Lj9/D0;

    iget-object p2, p2, Lj9/D0;->E:Lj9/e;

    invoke-static {p1, p2, v1}, Lj9/m0;->O0(Landroid/hardware/camera2/CaptureRequest$Builder;Lj9/e;Z)V

    iget-object p0, p0, Lj9/O0;->b:Lj9/D0;

    iget-object p0, p0, Lj9/D0;->E:Lj9/e;

    invoke-static {p1, p0, v1}, Lj9/m0;->H0(Landroid/hardware/camera2/CaptureRequest$Builder;Lj9/e;Z)V

    :cond_53
    return-void

    :cond_54
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p2, v4}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final x(Lj9/i0;I)V
    .locals 8

    invoke-virtual {p1}, Lj9/i0;->d()Z

    move-result v0

    iput-boolean v0, p0, Lj9/Z0;->I:Z

    iget-object v0, p0, Lj9/O0;->b:Lj9/D0;

    iget-object v1, v0, Lj9/D0;->F:Lj9/h0;

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget v1, v1, Lj9/i0;->h0:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v5, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object p1, p1, Lj9/i0;->P0:Lj1/a;

    invoke-virtual {p1}, Lj1/a;->b()Z

    move-result p1

    iget-object v5, p0, Lj9/O0;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    if-ne p2, v3, :cond_2

    const-string p1, "prepare: HdrSR"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v5, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x3

    iput p1, p0, Lj9/Z0;->K:I

    xor-int/lit8 p1, v1, 0x1

    iput-boolean p1, p0, Lj9/Z0;->J:Z

    invoke-virtual {p0, p1}, Lj9/Z0;->B(Z)V

    return-void

    :cond_2
    const/4 p1, 0x7

    if-ne p2, v3, :cond_c

    invoke-virtual {v4}, LJe/c;->c2()V

    invoke-virtual {v4}, LJe/c;->w2()V

    iput v3, p0, Lj9/Z0;->K:I

    iget-object p2, v0, Lj9/D0;->E:Lj9/e;

    invoke-virtual {v0, p2}, Lj9/D0;->x1(Lj9/e;)Z

    move-result p2

    iput-boolean p2, p0, Lj9/Z0;->O:Z

    iget-object p2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object p2, p2, Lj9/h0;->a:Lj9/i0;

    iget p2, p2, Lj9/i0;->h0:I

    if-eqz p2, :cond_3

    move p2, v3

    goto :goto_2

    :cond_3
    move p2, v2

    :goto_2
    iget-object v1, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->g()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    const-string v4, "prepareHDR: user mfnr capture since ev changed or support HdrDegradeMFNR! "

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lj9/Z0;->O:Z

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v4}, LJe/c;->z()V

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "prepareHDR: singleFrameHDR = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lj9/Z0;->O:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v4}, Lj9/o0;->t(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v4

    iput-boolean v4, p0, Lj9/Z0;->b0:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "prepareHDR: isZslHdrEnable = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lj9/Z0;->b0:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v4}, Lj9/o0;->e(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "prepareHDR: requestSettings = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v6}, LF1/Q;->b([ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v6, p0, Lj9/Z0;->O:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    iput-object v7, p0, Lj9/Z0;->c0:[I

    iput v3, p0, Lj9/Z0;->D:I

    iput v3, p0, Lj9/Z0;->E:I

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_6

    iget-object p2, v0, Lj9/D0;->F:Lj9/h0;

    iget-object p2, p2, Lj9/h0;->a:Lj9/i0;

    iget p2, p2, Lj9/i0;->h0:I

    filled-new-array {p2}, [I

    move-result-object p2

    iput-object p2, p0, Lj9/Z0;->L:[I

    goto :goto_5

    :cond_6
    filled-new-array {v2}, [I

    move-result-object p2

    iput-object p2, p0, Lj9/Z0;->L:[I

    :goto_5
    iget p2, p0, Lj9/Z0;->K:I

    const/16 v0, 0x1a

    if-ne p2, v0, :cond_a

    iput p1, p0, Lj9/Z0;->K:I

    goto :goto_7

    :cond_7
    iget-object p1, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {p1}, Lj9/o0;->h(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object p1

    invoke-static {}, Lj9/Z0;->z()[I

    move-result-object p2

    new-instance v0, Lha/j;

    invoke-direct {v0, p2, p1}, Lha/j;-><init>([I[B)V

    iget p1, v0, Lha/j;->a:I

    iput p1, p0, Lj9/Z0;->C:I

    iget p1, v0, Lha/j;->b:I

    iput p1, p0, Lj9/Z0;->D:I

    iput p1, p0, Lj9/Z0;->E:I

    iget-object p1, v0, Lha/j;->c:[I

    iput-object p1, p0, Lj9/Z0;->L:[I

    if-eqz v4, :cond_9

    array-length p2, v4

    array-length p1, p1

    if-ge p2, p1, :cond_8

    goto :goto_6

    :cond_8
    iput-object v4, p0, Lj9/Z0;->c0:[I

    goto :goto_7

    :cond_9
    :goto_6
    const-string p1, "prepareHDR: illegal hdr settings"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v5, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v7, p0, Lj9/Z0;->c0:[I

    :cond_a
    :goto_7
    iget-object p1, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {p1}, Lj9/o0;->g(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    iput p1, p0, Lj9/Z0;->M:I

    iget-object p1, p0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {p1}, Lj9/o0;->f(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    iput p1, p0, Lj9/Z0;->N:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "prepareHdr: scene = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lj9/Z0;->M:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",adrc = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lj9/Z0;->N:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",EvValue = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj9/Z0;->L:[I

    if-eqz p0, :cond_b

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    :cond_b
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_c
    iput p1, p0, Lj9/Z0;->K:I

    iput v3, p0, Lj9/Z0;->D:I

    iput v3, p0, Lj9/Z0;->E:I

    const-string p0, "checkHdrLegacy hdr reset to hht"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final y()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lj9/O0;->b:Lj9/D0;

    iget-object v2, v1, Lj9/D0;->v:Lsh/b;

    sget-object v3, Lsh/c;->b:Lsh/c;

    iget-object v4, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v4, v4, Lj9/h0;->b:Lj9/G1;

    invoke-virtual {v2, v3, v4}, Lsh/b;->a(Lsh/c;Lj9/G1;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iget-object v3, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    iget-boolean v3, v3, Lj9/i0;->u1:Z

    const/4 v5, 0x0

    iget-object v7, v0, Lj9/O0;->a:Ljava/lang/String;

    const/16 v8, 0x17

    const/16 v9, 0x22

    const/16 v12, 0x11

    const/16 v13, 0x10

    const/16 v14, 0x14

    const/16 v10, 0xf

    if-eqz v3, :cond_2

    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v3

    iget v4, v0, Lj9/Z0;->K:I

    if-ne v12, v4, :cond_0

    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v3, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v3

    iget-object v4, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v4, v4, Lj9/h0;->a:Lj9/i0;

    iget-object v4, v4, Lj9/i0;->l:Landroid/util/Size;

    iput-object v4, v0, Lj9/W0;->v:Landroid/util/Size;

    :cond_0
    invoke-static {v3}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v4

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "[QCFA] add surface %s to capture request, size is: %s"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v15, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v7, v6, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget v3, v0, Lj9/Z0;->K:I

    if-eq v12, v3, :cond_1

    invoke-virtual {v0, v4}, Lj9/W0;->p(Landroid/util/Size;)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    :cond_1
    move v3, v5

    goto/16 :goto_12

    :cond_2
    invoke-virtual {v1}, Lj9/D0;->w2()Z

    move-result v3

    const/16 v4, 0x1b

    const/16 v6, 0xa

    if-nez v3, :cond_e

    invoke-virtual {v1}, Lj9/D0;->U()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "algoType = "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v0, Lj9/Z0;->K:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v7, v3, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v3}, Lj9/o1;->m()Landroid/util/SparseArray;

    move-result-object v3

    invoke-static {v3}, Lda/d;->c(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/Surface;

    iget v15, v0, Lj9/Z0;->K:I

    const/16 v5, 0xc

    if-ne v5, v15, :cond_4

    iget-object v5, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v5, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v5

    if-eq v11, v5, :cond_c

    iget-object v5, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v5, v13}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v5

    if-eq v11, v5, :cond_c

    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    if-eq v10, v15, :cond_d

    if-eq v14, v15, :cond_d

    invoke-static {v15}, LQg/d;->b(I)Z

    move-result v5

    if-nez v5, :cond_d

    iget v5, v0, Lj9/Z0;->K:I

    if-ne v8, v5, :cond_5

    goto/16 :goto_4

    :cond_5
    if-ne v6, v5, :cond_6

    iget v15, v0, Lj9/Z0;->a0:I

    if-ne v13, v15, :cond_6

    iget-object v5, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v5, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v5

    if-eq v11, v5, :cond_c

    goto :goto_1

    :cond_6
    if-ne v4, v5, :cond_8

    const/16 v15, 0x40

    iget v8, v0, Lj9/Z0;->a0:I

    if-ne v15, v8, :cond_8

    iget-object v5, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v5, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v5

    if-eq v11, v5, :cond_c

    :cond_7
    :goto_2
    const/4 v5, 0x0

    const/16 v8, 0x17

    goto :goto_0

    :cond_8
    if-ne v12, v5, :cond_9

    iget v5, v0, Lj9/Z0;->a0:I

    if-ne v13, v5, :cond_9

    iget-object v5, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v5, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v5

    if-eq v11, v5, :cond_c

    :goto_3
    goto :goto_2

    :cond_9
    iget-object v5, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v5, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v5

    if-eq v5, v11, :cond_7

    iget-object v5, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v5, v13}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v5

    if-eq v5, v11, :cond_7

    iget-object v5, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v5, v12}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v5

    if-eq v5, v11, :cond_7

    iget-object v5, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v5, v9}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v5

    if-ne v5, v11, :cond_a

    goto :goto_3

    :cond_a
    iget v5, v0, Lj9/Z0;->K:I

    const/4 v8, 0x1

    if-eq v8, v5, :cond_b

    invoke-static {v5}, LQg/d;->b(I)Z

    move-result v5

    if-nez v5, :cond_b

    iget v5, v0, Lj9/Z0;->K:I

    if-ne v14, v5, :cond_c

    :cond_b
    iget-boolean v5, v0, Lj9/Z0;->I:Z

    if-eqz v5, :cond_c

    iget-object v5, v1, Lj9/D0;->D:Lj9/o1;

    const/16 v8, 0x20

    invoke-virtual {v5, v8}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v5

    if-eq v11, v5, :cond_7

    iget-object v5, v1, Lj9/D0;->D:Lj9/o1;

    const/16 v8, 0x21

    invoke-virtual {v5, v8}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v5

    if-ne v11, v5, :cond_c

    goto :goto_2

    :cond_c
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lvr/Y;->b(Landroid/view/Surface;)I

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "-"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v11, v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v15, "add surface %s to capture request, size is: %s"

    invoke-static {v5, v15, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    new-array v15, v8, [Ljava/lang/Object;

    invoke-static {v7, v5, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto/16 :goto_2

    :cond_d
    :goto_4
    iget-object v3, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    iget-object v3, v3, Lj9/i0;->i:Landroid/util/Size;

    iput-object v3, v0, Lj9/W0;->v:Landroid/util/Size;

    const/4 v3, 0x0

    goto/16 :goto_11

    :cond_e
    :goto_5
    invoke-virtual {v1}, Lj9/D0;->H()I

    move-result v3

    iput v3, v0, Lj9/O0;->u:I

    iget v5, v0, Lj9/Z0;->K:I

    if-ne v10, v5, :cond_f

    const/16 v8, 0x20

    goto :goto_6

    :cond_f
    const/16 v8, 0x23

    :goto_6
    if-ne v6, v5, :cond_13

    iget v6, v0, Lj9/Z0;->a0:I

    if-ne v13, v6, :cond_13

    iget-object v5, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v5, v3}, Lj9/o1;->o(I)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-static {v3}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v15, "[SAT] add raw surface %s to capture request, size is: %s"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v15, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v15, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    iget v6, v0, Lj9/O0;->u:I

    invoke-virtual {v1}, Lj9/D0;->x2()Z

    move-result v15

    invoke-virtual {v3, v6, v15}, Lj9/o1;->k(IZ)Landroid/view/Surface;

    move-result-object v3

    invoke-static {v3}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v15

    if-ne v6, v15, :cond_10

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v15

    if-eq v6, v15, :cond_11

    :cond_10
    new-instance v5, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-direct {v5, v6, v15}, Landroid/util/Size;-><init>(II)V

    const-string v6, "[SAT]override output size to "

    invoke-static {v6, v3}, LF1/S;->a(Ljava/lang/String;Landroid/util/Size;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v15, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {v1}, Lj9/D0;->I()I

    move-result v3

    iput v3, v0, Lj9/Z0;->W:I

    iget v3, v0, Lj9/O0;->u:I

    const/4 v6, 0x1

    if-ne v6, v3, :cond_12

    const/4 v11, 0x3

    goto/16 :goto_d

    :cond_12
    const/16 v11, 0x201

    goto/16 :goto_d

    :cond_13
    iget-boolean v6, v0, Lj9/Z0;->V:Z

    if-eqz v6, :cond_14

    iget-object v5, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v1}, Lj9/D0;->x2()Z

    move-result v6

    invoke-virtual {v5, v3, v6}, Lj9/o1;->h(IZ)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1}, Lj9/D0;->j2()Landroid/util/Size;

    move-result-object v5

    sget-object v6, Ln9/a$a;->a:Ln9/b;

    iget v15, v0, Lj9/Z0;->D:I

    invoke-virtual {v6, v15, v2}, Ln9/b;->F(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto/16 :goto_8

    :cond_14
    const/4 v6, 0x1

    if-eq v5, v6, :cond_15

    if-eq v5, v14, :cond_15

    invoke-static {v5}, LQg/d;->b(I)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_15
    iget-boolean v3, v0, Lj9/Z0;->J:Z

    if-nez v3, :cond_16

    invoke-static {}, Lcom/android/camera/data/data/w;->U()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v1, Lj9/D0;->E:Lj9/e;

    if-eqz v3, :cond_16

    invoke-static {v3}, Lj9/f;->z0(Lj9/e;)I

    move-result v3

    const/4 v5, 0x3

    if-ne v5, v3, :cond_16

    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    iget v5, v0, Lj9/O0;->u:I

    invoke-virtual {v1}, Lj9/D0;->x2()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Lj9/o1;->q(IZ)Landroid/view/Surface;

    move-result-object v3

    const/4 v5, 0x1

    goto :goto_7

    :cond_16
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_7
    iget-object v6, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v6, v6, Lj9/h0;->a:Lj9/i0;

    iget-object v15, v6, Lj9/i0;->x:Lha/d;

    if-eqz v15, :cond_17

    iget-boolean v15, v15, Lha/d;->a:Z

    if-eqz v15, :cond_17

    iget v15, v0, Lj9/Z0;->K:I

    const/4 v11, 0x3

    if-ne v15, v11, :cond_17

    iget v11, v0, Lj9/O0;->u:I

    const/4 v15, 0x2

    if-ne v15, v11, :cond_17

    iget v6, v6, Lj9/i0;->c0:F

    const/high16 v11, 0x40000000    # 2.0f

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_17

    const-string v3, "[SAT] add binning sr surface "

    const/4 v6, 0x0

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    const/16 v6, 0x1f

    invoke-virtual {v3, v6}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v3

    :cond_17
    if-nez v3, :cond_18

    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    iget v6, v0, Lj9/O0;->u:I

    invoke-virtual {v1}, Lj9/D0;->x2()Z

    move-result v11

    invoke-virtual {v3, v6, v11}, Lj9/o1;->k(IZ)Landroid/view/Surface;

    move-result-object v3

    :cond_18
    invoke-static {v3}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    if-eqz v5, :cond_19

    new-instance v5, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x4

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {v5, v11, v6}, Landroid/util/Size;-><init>(II)V

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "[SAT]hdr fusion mode, size is: "

    invoke-static {v6, v5}, LF1/S;->a(Ljava/lang/String;Landroid/util/Size;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    new-array v15, v11, [Ljava/lang/Object;

    invoke-static {v7, v6, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_19
    move-object v5, v6

    :goto_8
    invoke-virtual {v1}, Lj9/D0;->G()Lj9/e;

    move-result-object v6

    invoke-static {v6}, Lj9/f;->t1(Lj9/e;)Z

    move-result v6

    if-eqz v6, :cond_1a

    sget-object v6, Ln9/a$a;->a:Ln9/b;

    iget-boolean v11, v0, Lj9/Z0;->V:Z

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lga/A0;->c2:Lga/D0;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v2, v6, v11}, Lga/E0;->f(Landroid/hardware/camera2/CaptureRequest$Builder;Lga/D0;Ljava/lang/Object;)V

    :cond_1a
    iget v6, v0, Lj9/Z0;->K:I

    if-ne v6, v10, :cond_1c

    iget-object v3, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    iget-boolean v3, v3, Lj9/i0;->l3:Z

    if-eqz v3, :cond_1b

    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v3, v9}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v3

    goto :goto_9

    :cond_1b
    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v3, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v3

    :goto_9
    invoke-static {v3}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    goto :goto_a

    :cond_1c
    if-eq v14, v6, :cond_1d

    invoke-static {v6}, LQg/d;->b(I)Z

    move-result v6

    if-eqz v6, :cond_1e

    :cond_1d
    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v3, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v3

    :cond_1e
    :goto_a
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "[SAT] add main surface %s to capture request, size is: %s"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v6, v11, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    new-array v13, v15, [Ljava/lang/Object;

    invoke-static {v7, v11, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lj9/D0;->I()I

    move-result v11

    iput v11, v0, Lj9/Z0;->W:I

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v11, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v11, v15}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v11

    if-eq v3, v11, :cond_20

    iget-object v11, v1, Lj9/D0;->D:Lj9/o1;

    const/16 v13, 0xb

    invoke-virtual {v11, v13}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v11

    if-eqz v11, :cond_1f

    iget-object v11, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v11, v13}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v11

    if-ne v3, v11, :cond_1f

    goto :goto_b

    :cond_1f
    const/16 v17, 0x201

    goto :goto_c

    :cond_20
    :goto_b
    const/16 v17, 0x3

    :goto_c
    iget-boolean v11, v0, Lj9/Z0;->S:Z

    if-eqz v11, :cond_21

    iget-object v11, v1, Lj9/D0;->D:Lj9/o1;

    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v11

    invoke-static {v11}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v13

    const-string v15, "[SAT] add ultra tele surface %s to capture request, size is: %s"

    filled-new-array {v11, v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v6, v15, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v13, v15, [Ljava/lang/Object;

    invoke-static {v7, v6, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v6

    invoke-virtual {v6}, Lu6/f;->M()I

    move-result v6

    iput v6, v0, Lj9/Z0;->X:I

    iput-object v11, v0, Lj9/Z0;->U:Landroid/view/Surface;

    iput-object v3, v0, Lj9/Z0;->T:Landroid/view/Surface;

    invoke-virtual {v2, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v3, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x1

    invoke-static {v2, v6}, Ln9/b;->j0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v3, v0, Lj9/Z0;->R:Lqh/d;

    invoke-virtual {v3}, Lqh/d;->d()I

    move-result v3

    invoke-static {v3, v2}, Ln9/b;->k0(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    const/16 v11, 0x204

    goto :goto_d

    :cond_21
    sget-object v3, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Ln9/b;->j0(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    sget-object v3, Lqh/d;->b:Lqh/d;

    invoke-virtual {v3}, Lqh/d;->d()I

    move-result v3

    invoke-static {v3, v2}, Ln9/b;->k0(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    move/from16 v11, v17

    :goto_d
    iget v3, v0, Lj9/Z0;->K:I

    if-eq v10, v3, :cond_22

    if-ne v4, v3, :cond_23

    :cond_22
    const v3, 0x8014

    goto :goto_f

    :cond_23
    invoke-static {v3}, LQg/d;->b(I)Z

    move-result v3

    if-nez v3, :cond_24

    iget v3, v0, Lj9/Z0;->K:I

    if-ne v14, v3, :cond_25

    :cond_24
    const v3, 0x8014

    goto :goto_e

    :cond_25
    iget-object v3, v1, Lj9/D0;->E:Lj9/e;

    if-eqz v3, :cond_27

    invoke-static {v3}, Lj9/f;->x1(Lj9/e;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-static {v3}, Lj9/f;->P2(Lj9/e;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget v3, v1, Lj9/a;->a:I

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-virtual {v4}, Lu6/f;->v()I

    move-result v4

    if-ne v3, v4, :cond_27

    invoke-static {}, Lcom/android/camera/data/data/w;->U()Z

    move-result v3

    if-nez v3, :cond_27

    iget v3, v0, Lj9/Z0;->K:I

    const/4 v6, 0x1

    if-eq v6, v3, :cond_26

    invoke-static {v3}, LQg/d;->b(I)Z

    move-result v3

    if-nez v3, :cond_26

    iget v3, v0, Lj9/Z0;->K:I

    if-eq v14, v3, :cond_26

    iget-boolean v3, v0, Lj9/Z0;->J:Z

    if-eqz v3, :cond_27

    :cond_26
    const v3, 0xef06

    invoke-virtual {v0, v3, v5, v8, v11}, Lj9/W0;->o(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_10

    :cond_27
    invoke-virtual {v0, v5, v8, v11}, Lj9/W0;->q(Landroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_10

    :goto_e
    invoke-virtual {v0, v3, v5, v8, v11}, Lj9/W0;->o(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v4

    iput-object v4, v0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_10

    :goto_f
    invoke-virtual {v0, v3, v5, v8, v11}, Lj9/W0;->o(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v4

    iput-object v4, v0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    iget-object v3, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    iget-object v3, v3, Lj9/i0;->i:Landroid/util/Size;

    iput-object v3, v0, Lj9/W0;->v:Landroid/util/Size;

    :goto_10
    const/4 v3, 0x1

    :goto_11
    sget-boolean v4, LJe/d;->i:Z

    if-nez v4, :cond_28

    iget v4, v0, Lj9/O0;->d:I

    const v5, 0x9001

    if-eq v4, v5, :cond_28

    const v5, 0x9003

    if-eq v4, v5, :cond_28

    iget-object v4, v1, Lj9/D0;->D:Lj9/o1;

    iget-object v4, v4, Lj9/o1;->n:Landroid/view/Surface;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v4}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "add preview surface %s to capture request, size is: %s"

    invoke-static {v5, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, v5, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Lj9/Z0;->f0:Z

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_28
    :goto_12
    iget-object v4, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v4, v4, Lj9/h0;->a:Lj9/i0;

    iget-boolean v4, v4, Lj9/i0;->h3:Z

    if-eqz v4, :cond_2a

    sget-object v4, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v4, v2}, Ln9/b;->B(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v5, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v5, v5, Lj9/h0;->a:Lj9/i0;

    iget-boolean v5, v5, Lj9/i0;->X0:Z

    if-eqz v5, :cond_29

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v6}, Ln9/b;->M(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_13

    :cond_29
    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Ln9/b;->M(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    :cond_2a
    :goto_13
    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, LJe/c;->p2()Z

    move-result v5

    if-eqz v5, :cond_3d

    iget v5, v0, Lj9/Z0;->K:I

    if-ne v10, v5, :cond_2e

    if-nez v3, :cond_2e

    iget-object v3, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    iget-boolean v3, v3, Lj9/i0;->l3:Z

    if-eqz v3, :cond_2b

    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v3, v9}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v3

    goto :goto_14

    :cond_2b
    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v3, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v3

    :goto_14
    if-nez v3, :cond_2c

    const-string v5, "could not find raw surface for supernight se"

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, v5, v8}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    invoke-static {v3}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    iget v6, v1, Lj9/a;->a:I

    invoke-static {v6}, LQg/c;->a(I)I

    move-result v6

    if-nez v6, :cond_2d

    const/4 v6, 0x1

    :cond_2d
    const v8, 0x8014

    const/16 v9, 0x20

    invoke-virtual {v0, v8, v5, v9, v6}, Lj9/W0;->o(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v6

    iput-object v6, v0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    iget-object v6, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v6, v6, Lj9/h0;->a:Lj9/i0;

    iget-object v6, v6, Lj9/i0;->i:Landroid/util/Size;

    iput-object v6, v0, Lj9/W0;->v:Landroid/util/Size;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "add raw surface for supernight se, size is "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_2e
    const/16 v6, 0x17

    if-ne v6, v5, :cond_31

    if-nez v3, :cond_31

    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v3

    if-nez v3, :cond_2f

    const-string v5, "could not find yuv surface for supernight se"

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, v5, v8}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    invoke-static {v3}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    iget v6, v1, Lj9/a;->a:I

    invoke-static {v6}, LQg/c;->a(I)I

    move-result v6

    if-nez v6, :cond_30

    const/4 v6, 0x1

    :cond_30
    const v8, 0x800a

    const/16 v9, 0x23

    invoke-virtual {v0, v8, v5, v9, v6}, Lj9/W0;->o(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v6

    iput-object v6, v0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    iget-object v6, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v6, v6, Lj9/h0;->a:Lj9/i0;

    iget-object v6, v6, Lj9/i0;->i:Landroid/util/Size;

    iput-object v6, v0, Lj9/W0;->v:Landroid/util/Size;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "add yuv surface for supernight se, size is "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_31
    const-string v6, "could not find raw surface for hdr reprocess"

    if-ne v14, v5, :cond_34

    if-nez v3, :cond_34

    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v3, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v3

    if-nez v3, :cond_32

    const/4 v15, 0x0

    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v7, v6, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_32
    iget-object v5, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v5, v5, Lj9/h0;->a:Lj9/i0;

    iget-object v5, v5, Lj9/i0;->i:Landroid/util/Size;

    iput-object v5, v0, Lj9/W0;->v:Landroid/util/Size;

    iget v5, v1, Lj9/a;->a:I

    invoke-static {v5}, LQg/c;->a(I)I

    move-result v5

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v6

    invoke-virtual {v6}, Lu2/Q;->O()Z

    move-result v6

    if-eqz v6, :cond_33

    const v6, 0x8005

    goto :goto_15

    :cond_33
    const v6, 0x8001

    :goto_15
    iget-object v8, v0, Lj9/W0;->v:Landroid/util/Size;

    const/16 v9, 0x23

    invoke-virtual {v0, v6, v8, v9, v5}, Lj9/W0;->o(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v5

    iput-object v5, v0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "add raw surface for hdr reprocess, size is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lj9/W0;->v:Landroid/util/Size;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_34
    invoke-static {v5}, LQg/d;->b(I)Z

    move-result v5

    if-eqz v5, :cond_36

    if-nez v3, :cond_36

    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v3, v10}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v3

    if-nez v3, :cond_35

    const/4 v15, 0x0

    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v7, v6, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_35
    invoke-static {v3}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    iget v6, v1, Lj9/a;->a:I

    invoke-static {v6}, LQg/c;->a(I)I

    move-result v6

    const v8, 0x8014

    const/16 v9, 0x20

    invoke-virtual {v0, v8, v5, v9, v6}, Lj9/W0;->o(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v5

    iput-object v5, v0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    iget-object v5, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v5, v5, Lj9/h0;->a:Lj9/i0;

    iget-object v5, v5, Lj9/i0;->i:Landroid/util/Size;

    iput-object v5, v0, Lj9/W0;->v:Landroid/util/Size;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "add raw surface for hdr/mfnr reprocess, size is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lj9/W0;->v:Landroid/util/Size;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_36
    if-nez v3, :cond_37

    invoke-virtual {v4}, LJe/c;->Y()Z

    move-result v5

    if-eqz v5, :cond_37

    sget v5, Lcom/android/camera/module/Y;->a:I

    const/16 v6, 0xa3

    if-ne v5, v6, :cond_37

    iget-object v3, v0, Lj9/W0;->v:Landroid/util/Size;

    invoke-virtual {v0, v3}, Lj9/W0;->p(Landroid/util/Size;)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_16

    :cond_37
    if-nez v3, :cond_38

    invoke-virtual {v4}, LJe/c;->Z()V

    :cond_38
    iget-boolean v3, v0, Lj9/Z0;->d0:Z

    if-eqz v3, :cond_3a

    iget v3, v0, Lj9/Z0;->a0:I

    and-int/lit8 v3, v3, 0x28

    if-eqz v3, :cond_39

    goto :goto_16

    :cond_39
    iget-object v3, v1, Lj9/D0;->E:Lj9/e;

    if-eqz v3, :cond_3a

    sget-object v5, Lga/C0;->b1:Lga/D0;

    invoke-virtual {v5}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    iget-boolean v3, v3, Lj9/i0;->v1:Z

    if-eqz v3, :cond_3a

    invoke-static {}, Lcom/android/camera/module/Y;->m()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3}, Lu2/Q;->U()Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, v0, Lj9/W0;->v:Landroid/util/Size;

    invoke-virtual {v0, v3}, Lj9/W0;->p(Landroid/util/Size;)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lj9/W0;->B:Lcom/xiaomi/engine/BufferFormat;

    :cond_3a
    :goto_16
    iget v3, v0, Lj9/Z0;->K:I

    if-eq v10, v3, :cond_3c

    if-eq v14, v3, :cond_3c

    invoke-static {v3}, LQg/d;->b(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_17

    :cond_3b
    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    invoke-virtual {v3, v12}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v3

    goto :goto_18

    :cond_3c
    :goto_17
    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Lj9/o1;->n(I)Landroid/view/Surface;

    move-result-object v3

    :goto_18
    if-eqz v3, :cond_3d

    invoke-static {v3}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "add tuning surface to capture request, size is: %s"

    invoke-static {v7, v6, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_3d
    invoke-virtual {v4}, LJe/c;->k0()V

    iget-boolean v3, v0, Lj9/O0;->n:Z

    const/16 v5, 0x12

    if-eqz v3, :cond_40

    iget-object v3, v1, Lj9/D0;->E:Lj9/e;

    if-eqz v3, :cond_40

    sget-object v6, Lga/w0;->x3:Lga/D0;

    invoke-virtual {v6}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget v3, v0, Lj9/Z0;->K:I

    iget-object v6, v1, Lj9/D0;->E:Lj9/e;

    const/4 v8, 0x1

    if-eq v3, v8, :cond_3e

    if-eq v14, v3, :cond_3e

    invoke-static {v3}, LQg/d;->b(I)Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_3e
    if-eqz v6, :cond_3f

    invoke-virtual {v6}, Lj9/e;->b0()I

    move-result v3

    and-int/2addr v3, v8

    if-eqz v3, :cond_3f

    goto :goto_19

    :cond_3f
    iget v3, v0, Lj9/Z0;->K:I

    const/4 v11, 0x3

    if-ne v3, v11, :cond_45

    if-eqz v6, :cond_45

    invoke-virtual {v6}, Lj9/e;->b0()I

    move-result v3

    const/16 v16, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_45

    goto :goto_19

    :cond_40
    iget-boolean v3, v0, Lj9/O0;->n:Z

    if-eqz v3, :cond_45

    iget v3, v0, Lj9/Z0;->K:I

    const/4 v11, 0x3

    if-ne v3, v11, :cond_41

    iget-object v3, v1, Lj9/D0;->E:Lj9/e;

    invoke-static {v3}, Lj9/f;->M1(Lj9/e;)Z

    move-result v3

    if-nez v3, :cond_41

    goto :goto_19

    :cond_41
    sget-boolean v3, LJe/d;->i:Z

    if-eqz v3, :cond_42

    iget v3, v0, Lj9/Z0;->K:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_44

    if-eq v14, v3, :cond_44

    invoke-static {v3}, LQg/d;->b(I)Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_19

    :cond_42
    iget v3, v0, Lj9/Z0;->K:I

    if-ne v3, v12, :cond_43

    goto :goto_19

    :cond_43
    if-ne v3, v5, :cond_45

    :cond_44
    :goto_19
    iget-object v3, v1, Lj9/D0;->D:Lj9/o1;

    iget-object v3, v3, Lj9/o1;->f:Landroid/media/ImageReader;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "add preview callback "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lj9/D0;->H:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v8, v15, [Ljava/lang/Object;

    invoke-static {v7, v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v6, v1, Lj9/D0;->H:I

    const/16 v18, 0x10

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_45

    if-eqz v3, :cond_45

    const-string v6, "add preview target"

    new-array v8, v15, [Ljava/lang/Object;

    invoke-static {v7, v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_45
    const/4 v6, 0x1

    invoke-static {v6, v2}, Lj9/m0;->h(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    if-eqz v1, :cond_46

    iget-object v3, v1, Lj9/D0;->A:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v3, :cond_46

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v2, v6, v3, v15}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    :cond_46
    iget-object v3, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    const/4 v11, 0x3

    invoke-static {v2, v11, v3}, Lj9/m0;->l(Landroid/hardware/camera2/CaptureRequest$Builder;ILj9/i0;)V

    invoke-virtual {v1, v11, v2}, Lj9/D0;->H1(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget v3, v0, Lj9/Z0;->K:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_4f

    if-eq v3, v14, :cond_4f

    invoke-static {v3}, LQg/d;->b(I)Z

    move-result v3

    if-eqz v3, :cond_47

    goto/16 :goto_1c

    :cond_47
    sget v3, Lcom/android/camera/module/Y;->a:I

    const/16 v8, 0xbc

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    if-ne v3, v8, :cond_4b

    iget v3, v0, Lj9/Z0;->K:I

    const/4 v11, 0x3

    if-ne v3, v11, :cond_49

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->h6()Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_1a

    :cond_48
    const/4 v6, 0x0

    :cond_49
    :goto_1a
    if-eqz v6, :cond_4a

    const-string v3, "enable"

    goto :goto_1b

    :cond_4a
    const-string v3, "disable"

    :goto_1b
    const-string v4, " ZSL for SuperMoonMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    new-array v4, v15, [Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4, v15}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    goto/16 :goto_1d

    :cond_4b
    sget-boolean v3, LJe/d;->i:Z

    if-nez v3, :cond_51

    iget v3, v0, Lj9/Z0;->K:I

    const/4 v6, 0x7

    const-string v8, "enable ZSL for algo "

    if-ne v3, v6, :cond_4c

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->N5()Z

    move-result v3

    if-eqz v3, :cond_4c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lj9/Z0;->K:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4, v6}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    goto/16 :goto_1d

    :cond_4c
    const/4 v6, 0x0

    iget v3, v0, Lj9/Z0;->K:I

    if-ne v5, v3, :cond_4d

    const-string v3, "enable ZSL for pureview algo "

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4, v6}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    goto/16 :goto_1d

    :cond_4d
    const/4 v11, 0x3

    if-ne v3, v11, :cond_4e

    iget-boolean v3, v0, Lj9/Z0;->V:Z

    if-nez v3, :cond_4e

    iget-boolean v3, v0, Lj9/Z0;->S:Z

    if-nez v3, :cond_4e

    iget-boolean v3, v0, Lj9/Z0;->J:Z

    if-nez v3, :cond_4e

    iget-object v3, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    iget-boolean v3, v3, Lj9/i0;->k0:Z

    if-nez v3, :cond_4e

    invoke-static {}, Lcom/android/camera/module/Y;->j()Z

    move-result v3

    if-nez v3, :cond_4e

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->h6()Z

    move-result v3

    if-eqz v3, :cond_4e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lj9/Z0;->K:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4, v6}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    goto :goto_1d

    :cond_4e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "disable ZSL for algo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lj9/Z0;->K:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4, v6}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    goto :goto_1d

    :cond_4f
    :goto_1c
    iget-object v3, v0, Lj9/W0;->x:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v3}, Lj9/o0;->d(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v3

    iget-boolean v4, v0, Lj9/Z0;->I:Z

    if-nez v4, :cond_50

    if-nez v3, :cond_50

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "disable ZSL for HDR"

    const/4 v6, 0x0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4, v6}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    goto :goto_1d

    :cond_50
    const/4 v6, 0x0

    const-string v3, "enable ZSL for HDR"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4, v6}, Lga/E0;->c(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Z)V

    :cond_51
    :goto_1d
    iget-object v3, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v3}, Lj9/i0;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lj9/O0;->m:Ljava/lang/String;

    iget-object v3, v1, Lj9/D0;->E:Lj9/e;

    invoke-static {v3}, Lj9/f;->p3(Lj9/e;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-virtual {v0}, Lj9/O0;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v3, v1, Lj9/D0;->E:Lj9/e;

    invoke-static {v2, v3, v0}, Lj9/m0;->C0(Landroid/hardware/camera2/CaptureRequest$Builder;Lj9/e;Ljava/lang/String;)V

    :cond_52
    if-eqz v1, :cond_53

    iget-object v0, v1, Lj9/D0;->F:Lj9/h0;

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v0, v0, Lj9/i0;->o3:Z

    if-eqz v0, :cond_53

    sget-object v0, Ln9/a$a;->a:Ln9/b;

    invoke-virtual {v0, v2}, Ln9/b;->Y(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_53
    return-object v2
.end method
