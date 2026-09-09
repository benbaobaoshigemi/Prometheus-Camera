.class public final LD8/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/o;


# instance fields
.field public final a:LD8/m;


# direct methods
.method public constructor <init>(LD8/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD8/p;->a:LD8/m;

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 0

    iget-object p0, p0, LD8/p;->a:LD8/m;

    invoke-virtual {p0}, LD8/m;->L()Lru/j;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lru/j;->B()V

    :cond_0
    return-void
.end method

.method public final M()V
    .locals 0

    iget-object p0, p0, LD8/p;->a:LD8/m;

    invoke-virtual {p0}, LD8/m;->L()Lru/j;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lru/j;->M()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p0, Lmq/s;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraOptScheduler:Lio/reactivex/v;

    const-string/jumbo v2, "sCameraOptScheduler"

    invoke-static {p0, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lmq/i;

    invoke-direct {v2, v0, v1}, Lmq/i;-><init>(J)V

    invoke-static {p0, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object p0, p0, LD8/p;->a:LD8/m;

    invoke-virtual {p0}, LD8/m;->L()Lru/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LD8/m;->L()Lru/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lru/j;->a0(I)V

    :cond_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    iput v0, p0, LD8/m;->d:I

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "StateListenerV2"

    const-string v1, "onFrameAvailable"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p0, Lmq/s;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraOptScheduler:Lio/reactivex/v;

    const-string/jumbo v2, "sCameraOptScheduler"

    invoke-static {p0, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lmq/j;

    invoke-direct {v2, v0, v1}, Lmq/j;-><init>(J)V

    invoke-static {p0, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public final f()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/data/data/w;->t0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LD8/p;->a:LD8/m;

    invoke-virtual {p0}, LD8/m;->L()Lru/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LD8/m;->L()Lru/j;

    move-result-object p0

    invoke-interface {p0}, Lru/j;->h5()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g([BIILtu/c;)V
    .locals 6

    iget-object p0, p0, LD8/p;->a:LD8/m;

    invoke-virtual {p0}, LD8/m;->L()Lru/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v5, p0, LD8/m;->f:Z

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lru/j;->onPreviewPixelsRead([BIILtu/c;Z)V

    :cond_0
    return-void
.end method

.method public final onSurfaceChanged(II)V
    .locals 4

    iget-object p0, p0, LD8/p;->a:LD8/m;

    invoke-virtual {p0}, LD8/m;->L()Lru/j;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LD8/m;->L()Lru/j;

    move-result-object v0

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lru/j;->xd(I)V

    invoke-virtual {p0}, LD8/m;->L()Lru/j;

    move-result-object v0

    invoke-interface {v0}, Lru/j;->getDisplayRotation()I

    move-result v0

    invoke-static {v0}, LK2/e;->l(I)I

    move-result v0

    invoke-static {}, LK2/j;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {}, LK2/e;->u()Z

    iget-object v2, p0, LD8/m;->p:Lru/h;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lru/h;->v:LEu/a;

    iput v0, v3, LEu/a;->i:I

    iget-object v2, v2, Lru/h;->M:LCu/w;

    iput v0, v2, LCu/w;->j:I

    :cond_1
    iget-object v0, p0, LD8/m;->o:Lia/l;

    if-nez v0, :cond_2

    new-instance v0, Lia/l;

    invoke-direct {v0}, Lia/l;-><init>()V

    iput-object v0, p0, LD8/m;->o:Lia/l;

    :cond_2
    iget-object p0, p0, LD8/m;->o:Lia/l;

    invoke-virtual {p0, p1, p2}, Lia/a;->n(II)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onSurfaceChanged width:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height:"

    invoke-static {p0, p1, p2}, LDn/g;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "StateListenerV2"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onSurfaceCreated()V
    .locals 2

    iget-object p0, p0, LD8/p;->a:LD8/m;

    invoke-virtual {p0}, LD8/m;->L()Lru/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LD8/m;->L()Lru/j;

    move-result-object p0

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lru/j;->xd(I)V

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "StateListenerV2"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final q()V
    .locals 2

    iget-object p0, p0, LD8/p;->a:LD8/m;

    invoke-virtual {p0}, LD8/m;->L()Lru/j;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lru/j;->q()V

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "StateListenerV2"

    const-string v1, "onFrameDrawn"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
