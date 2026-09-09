.class public final Lq6/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/y1;


# instance fields
.field public a:Lcom/android/camera/a;

.field public b:Landroid/content/Context;

.field public c:Landroid/os/Handler;

.field public d:Lq6/A1;

.field public e:Ljava/lang/String;

.field public f:Lq6/z1;

.field public g:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

.field public h:Lzs/y;

.field public i:Lcom/android/camera/data/observeable/d;

.field public j:I

.field public k:LQ6/B1;

.field public l:I

.field public m:I

.field public n:Z

.field public o:Lio/reactivex/disposables/b;

.field public p:J


# direct methods
.method public static u2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFeatureVlogProMode"
        type = 0x0
    .end annotation

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_vlog2_click"

    iput-object v1, v0, Lgq/h;->a:Ljava/lang/String;

    new-instance v1, Lgq/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v1, v0, Lgq/h;->b:Lgq/f;

    new-instance v3, Loq/a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v9}, Loq/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    return-void
.end method


# virtual methods
.method public final A(Lo7/a;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lq6/y1;->f:Lq6/z1;

    if-eqz v1, :cond_3

    iget v13, v0, Lq6/y1;->m:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startCompose videoFile: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    new-array v3, v14, [Ljava/lang/Object;

    const-string v15, "VlogProPlayer"

    invoke-static {v15, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lo7/a;->f()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v1, Lq6/z1;->j:Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v0, "startCompose E "

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v15, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lq6/z1;->j:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lq6/z1;->e:Z

    if-eqz v0, :cond_0

    iput-boolean v14, v1, Lq6/z1;->e:Z

    iget-object v0, v1, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    invoke-virtual {v0}, Lcom/xiaomi/milab/shortvideo/XmsTimeline;->resetInAndOut()V

    :cond_0
    iget-object v0, v1, Lq6/z1;->j:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    const-string v0, "ParcelFileDescriptor fd = "

    invoke-static {v4, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v15, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/milab/shortvideo/XmsContext;->getInstance()Lcom/xiaomi/milab/shortvideo/XmsContext;

    move-result-object v0

    iget-object v2, v1, Lq6/z1;->k:Lq6/z1$a;

    invoke-virtual {v0, v2}, Lcom/xiaomi/milab/shortvideo/XmsContext;->setExportCallback(Lcom/xiaomi/milab/shortvideo/interfaces/ExportCallback;)V

    invoke-static {}, LK2/b;->W()Z

    move-result v0

    const/16 v2, 0x780

    const/16 v3, 0x438

    if-eqz v0, :cond_1

    sget-boolean v0, LK2/e;->n:Z

    if-eqz v0, :cond_1

    move v5, v2

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v2

    move v5, v3

    :goto_0
    invoke-static {}, Lcom/xiaomi/milab/shortvideo/XmsContext;->getInstance()Lcom/xiaomi/milab/shortvideo/XmsContext;

    move-result-object v2

    iget-object v3, v1, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    const/4 v11, 0x2

    const v12, 0x17700

    const/16 v7, 0x1e

    const v8, 0x16ecaed0

    const/4 v9, 0x1

    const v10, 0xac44

    invoke-virtual/range {v2 .. v13}, Lcom/xiaomi/milab/shortvideo/XmsContext;->exportTimeline(Lcom/xiaomi/milab/shortvideo/XmsTimeline;IIIIIIIIII)V

    :cond_2
    const-string/jumbo v0, "startCompose X"

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v15, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final Ai()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public final D()V
    .locals 0

    iget-object p0, p0, Lq6/y1;->f:Lq6/z1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lq6/z1;->e()V

    :cond_0
    return-void
.end method

.method public final E()Z
    .locals 4

    iget-object v0, p0, Lq6/y1;->d:Lq6/A1;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lq6/y1;->d:Lq6/A1;

    iget-wide v2, p0, Lq6/A1;->I:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget p0, p0, Lq6/A1;->t:I

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Ej()V
    .locals 2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "VlogProConfigChangeImpl"

    const-string v1, "initResource"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Le2/g;->c:Ljava/lang/String;

    sget-object v0, Le2/g;->g:Ljava/lang/String;

    sget-object v1, Le2/g;->e:Ljava/lang/String;

    filled-new-array {p0, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvr/z;->l([Ljava/lang/String;)V

    return-void
.end method

.method public final G1()Z
    .locals 0

    iget-object p0, p0, Lq6/y1;->f:Lq6/z1;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final J(Ljava/lang/String;)V
    .locals 13
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lq6/y1;->f:Lq6/z1;

    if-eqz p0, :cond_1

    const-string/jumbo v0, "startCompose path: "

    invoke-static {v0, p1}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VlogProPlayer"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lq6/z1;->e:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lq6/z1;->e:Z

    iget-object v0, p0, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    invoke-virtual {v0}, Lcom/xiaomi/milab/shortvideo/XmsTimeline;->resetInAndOut()V

    :cond_0
    invoke-static {}, Lcom/xiaomi/milab/shortvideo/XmsContext;->getInstance()Lcom/xiaomi/milab/shortvideo/XmsContext;

    move-result-object v0

    iget-object v1, p0, Lq6/z1;->k:Lq6/z1$a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/milab/shortvideo/XmsContext;->setExportCallback(Lcom/xiaomi/milab/shortvideo/interfaces/ExportCallback;)V

    invoke-static {}, Lcom/xiaomi/milab/shortvideo/XmsContext;->getInstance()Lcom/xiaomi/milab/shortvideo/XmsContext;

    move-result-object v2

    iget-object v3, p0, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    const/4 v11, 0x2

    const v12, 0x17700

    const/16 v5, 0x438

    const/16 v6, 0x780

    const/16 v7, 0x1e

    const v8, 0x16ecaed0

    const/4 v9, 0x1

    const v10, 0xac44

    move-object v4, p1

    invoke-virtual/range {v2 .. v12}, Lcom/xiaomi/milab/shortvideo/XmsContext;->exportTimeline(Lcom/xiaomi/milab/shortvideo/XmsTimeline;Ljava/lang/String;IIIIIIII)V

    :cond_1
    return-void
.end method

.method public final L()I
    .locals 2

    iget p0, p0, Lq6/y1;->j:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final P0()V
    .locals 0

    iget-object p0, p0, Lq6/y1;->d:Lq6/A1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lq6/A1;->j()V

    :cond_0
    return-void
.end method

.method public final Q1(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public final R1()Z
    .locals 2

    iget-boolean p0, p0, Lq6/y1;->n:Z

    if-nez p0, :cond_1

    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class v0, LQ6/A1;

    invoke-virtual {p0, v0}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ6/A1;

    invoke-interface {p0}, LQ6/A1;->rc()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final S0(I)V
    .locals 1

    iget-object p0, p0, Lq6/y1;->d:Lq6/A1;

    if-eqz p0, :cond_1

    sget-boolean v0, LK2/e;->n:Z

    if-eqz v0, :cond_0

    add-int/lit16 p1, p1, 0xb4

    rem-int/lit16 p1, p1, 0x168

    :cond_0
    invoke-virtual {p0, p1}, Lq6/A1;->e(I)V

    :cond_1
    return-void
.end method

.method public final X(Lcom/xiaomi/milab/shortvideo/XmsTextureView;Lzs/f;)V
    .locals 3

    iget-object v0, p0, Lq6/y1;->f:Lq6/z1;

    if-nez v0, :cond_0

    new-instance v0, Lq6/z1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lq6/z1;->e:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lq6/z1;->f:Ljava/util/ArrayList;

    iput v1, v0, Lq6/z1;->i:I

    new-instance v1, Lq6/z1$a;

    invoke-direct {v1, v0}, Lq6/z1$a;-><init>(Lq6/z1;)V

    iput-object v1, v0, Lq6/z1;->k:Lq6/z1$a;

    iput-object v0, p0, Lq6/y1;->f:Lq6/z1;

    iput-object p0, v0, Lq6/z1;->h:Lq6/y1;

    :cond_0
    iget-object v0, p0, Lq6/y1;->a:Lcom/android/camera/a;

    iget-object v0, v0, Lcom/android/camera/a;->C0:LD8/m;

    new-instance v1, LRp/g;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1, p2}, LRp/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LD8/m;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final X1(J)V
    .locals 11

    const-wide/16 v0, 0x64

    div-long v4, p1, v0

    const-string/jumbo v2, "startCountDown: "

    invoke-static {p1, p2, v2}, LHs/a;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "VlogProConfigChangeImpl"

    invoke-static {v2, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    mul-long p1, v4, v0

    sub-long/2addr p1, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v10, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x64

    const-wide/16 v2, 0x0

    invoke-static/range {v2 .. v10}, Lio/reactivex/q;->j(JJJJLio/reactivex/v;)Lio/reactivex/q;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {v0, v1}, Lio/reactivex/q;->m(Lio/reactivex/v;)Lio/reactivex/internal/operators/observable/C;

    move-result-object v0

    new-instance v1, Lq6/y1$a;

    invoke-direct {v1, p0, p1, p2}, Lq6/y1$a;-><init>(Lq6/y1;J)V

    invoke-virtual {v0, v1}, Lio/reactivex/q;->subscribe(Lio/reactivex/u;)V

    return-void
.end method

.method public final a0(I)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VlogProConfigChangeImpl"

    const-string v2, "prepareRecord"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lq6/y1;->f:Lq6/z1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lq6/z1;->e()V

    :cond_0
    iget-object p0, p0, Lq6/y1;->d:Lq6/A1;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lq6/A1;->h:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    if-eqz v0, :cond_2

    iget v0, p0, Lq6/A1;->m:I

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lq6/A1;->J:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lq6/A1;->m:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lq6/A1;->f(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "startRecording"

    const-string v3, "VlogProConfigChangeImpl"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/module/d;->c()V

    iget-object v1, p0, Lq6/y1;->k:LQ6/B1;

    if-nez v1, :cond_0

    invoke-static {}, LQ6/B1;->b()LQ6/B1;

    move-result-object v1

    iput-object v1, p0, Lq6/y1;->k:LQ6/B1;

    :cond_0
    iget-object v1, p0, Lq6/y1;->h:Lzs/y;

    invoke-virtual {v1}, Lzs/y;->e()I

    move-result v1

    iget-object v2, p0, Lq6/y1;->h:Lzs/y;

    iget-object v2, v2, Lzs/y;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lvr/z;->l([Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lq6/y1;->d:Lq6/A1;

    iget v1, v1, Lq6/A1;->m:I

    if-nez v1, :cond_2

    iget v4, p0, Lq6/y1;->l:I

    iput v4, p0, Lq6/y1;->m:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startRecording videoOrientation: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lq6/y1;->m:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lq6/y1;->d:Lq6/A1;

    iput-object v2, v0, Lq6/A1;->K:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lq6/A1;->K:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lq6/A1;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_video_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lq6/A1;->L:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lq6/A1;->f(I)V

    iget-object v0, p0, Lq6/y1;->d:Lq6/A1;

    iget-object v2, v0, Lq6/A1;->L:Ljava/lang/String;

    iput-object v2, p0, Lq6/y1;->e:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lq6/y1;->p:J

    iget-wide v2, v0, Lq6/A1;->s:J

    invoke-virtual {p0, v2, v3}, Lq6/y1;->X1(J)V

    iget-object v0, p0, Lq6/y1;->h:Lzs/y;

    invoke-virtual {v0}, Lzs/y;->e()I

    move-result v0

    iget-object v2, p0, Lq6/y1;->g:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    iget-object v2, v2, Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    iget-object p0, p0, Lq6/y1;->g:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    iget-object p0, p0, Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "remake_reverse_segment"

    invoke-static {v1, p0, v0}, Lq6/y1;->u2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p0, p0, Lq6/y1;->g:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    iget-object p0, p0, Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;->a:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "start_segment"

    invoke-static {v1, p0, v0}, Lq6/y1;->u2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final h0()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VlogProConfigChangeImpl"

    const-string v3, "cancelRecording"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lq6/y1;->d:Lq6/A1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "VlogProRecorder"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lq6/A1;->f(I)V

    iget-object p0, p0, Lq6/y1;->i:Lcom/android/camera/data/observeable/d;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/data/observeable/d;->updateState(I)V

    return-void
.end method

.method public final k()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "pauseRecording"

    const-string v3, "VlogProConfigChangeImpl"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lq6/y1;->o:Lio/reactivex/disposables/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/reactivex/disposables/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "stopCountDown"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lq6/y1;->o:Lio/reactivex/disposables/b;

    invoke-interface {v1}, Lio/reactivex/disposables/b;->c()V

    :cond_0
    iget-object v1, p0, Lq6/y1;->d:Lq6/A1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "VlogProRecorder"

    const-string v3, "pausedRecording"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lq6/A1;->f(I)V

    iget-object v0, p0, Lq6/y1;->d:Lq6/A1;

    iget v0, v0, Lq6/A1;->m:I

    iget-object v1, p0, Lq6/y1;->h:Lzs/y;

    invoke-virtual {v1}, Lzs/y;->e()I

    move-result v1

    iget-object v2, p0, Lq6/y1;->g:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    iget-object v2, v2, Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    iget-object p0, p0, Lq6/y1;->g:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    iget-object p0, p0, Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "remake_reverse_segment"

    invoke-static {v1, p0, v0}, Lq6/y1;->u2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lq6/y1;->g:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    iget-object p0, p0, Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pause_segment"

    invoke-static {v1, p0, v0}, Lq6/y1;->u2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final l0(IZZ)V
    .locals 18

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v2, v2, Lq6/y1;->f:Lq6/z1;

    iget-object v3, v2, Lq6/z1;->c:Lcom/xiaomi/milab/shortvideo/XmsVideoTrack;

    const-string v4, "VlogProPlayer"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const-string v0, "prepare VideoTrack"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string/jumbo v3, "startPlayer index: "

    const-string v6, ", playAll: "

    invoke-static {v0, v3, v6, v1}, LF1/p2;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lq6/z1;->e()V

    iget-boolean v3, v2, Lq6/z1;->e:Z

    if-eqz v3, :cond_1

    iput-boolean v5, v2, Lq6/z1;->e:Z

    iget-object v3, v2, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    invoke-virtual {v3}, Lcom/xiaomi/milab/shortvideo/XmsTimeline;->resetInAndOut()V

    :cond_1
    const-wide/16 v6, 0x1

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {v2}, Lq6/z1;->c()V

    iget-object v1, v2, Lq6/z1;->c:Lcom/xiaomi/milab/shortvideo/XmsVideoTrack;

    invoke-virtual {v1, v0}, Lcom/xiaomi/milab/shortvideo/XmsVideoTrack;->getVideoClip(I)Lcom/xiaomi/milab/shortvideo/XmsVideoClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/milab/shortvideo/XmsVideoClip;->getStartPos()J

    move-result-wide v0

    add-long/2addr v0, v6

    invoke-static {}, Lcom/xiaomi/milab/shortvideo/XmsContext;->getInstance()Lcom/xiaomi/milab/shortvideo/XmsContext;

    move-result-object v3

    iget-object v6, v2, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    invoke-virtual {v3, v6, v0, v1, v5}, Lcom/xiaomi/milab/shortvideo/XmsContext;->seekTimeline(Lcom/xiaomi/milab/shortvideo/XmsTimeline;JI)V

    goto :goto_2

    :cond_2
    iget-object v3, v2, Lq6/z1;->c:Lcom/xiaomi/milab/shortvideo/XmsVideoTrack;

    invoke-virtual {v3}, Lcom/xiaomi/milab/shortvideo/XmsVideoTrack;->removeAllVideoTransition()V

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_3

    iget-object v0, v2, Lq6/z1;->c:Lcom/xiaomi/milab/shortvideo/XmsVideoTrack;

    invoke-virtual {v0}, Lcom/xiaomi/milab/shortvideo/XmsVideoTrack;->getDuration()J

    move-result-wide v0

    move-wide v10, v8

    :goto_0
    move-wide v15, v0

    goto :goto_1

    :cond_3
    iget-object v1, v2, Lq6/z1;->c:Lcom/xiaomi/milab/shortvideo/XmsVideoTrack;

    invoke-virtual {v1, v0}, Lcom/xiaomi/milab/shortvideo/XmsVideoTrack;->getVideoClip(I)Lcom/xiaomi/milab/shortvideo/XmsVideoClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/milab/shortvideo/XmsVideoClip;->getStartPos()J

    move-result-wide v10

    iget-object v1, v2, Lq6/z1;->g:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    iget-object v1, v1, Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v10

    sub-long/2addr v0, v6

    goto :goto_0

    :goto_1
    add-long v13, v10, v6

    const/4 v0, 0x1

    iput-boolean v0, v2, Lq6/z1;->e:Z

    iget-object v12, v2, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    move/from16 v17, p3

    invoke-virtual/range {v12 .. v17}, Lcom/xiaomi/milab/shortvideo/XmsTimeline;->setInAndOut(JJZ)V

    invoke-static {}, Lcom/xiaomi/milab/shortvideo/XmsContext;->getInstance()Lcom/xiaomi/milab/shortvideo/XmsContext;

    move-result-object v0

    iget-object v1, v2, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    invoke-virtual {v0, v1, v8, v9, v5}, Lcom/xiaomi/milab/shortvideo/XmsContext;->seekTimeline(Lcom/xiaomi/milab/shortvideo/XmsTimeline;JI)V

    :goto_2
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "reconnectTimeline"

    invoke-static {v4, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v2, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    invoke-virtual {v0}, Lcom/xiaomi/milab/shortvideo/XmsTimeline;->reconnect()V

    iget-object v0, v2, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/xiaomi/milab/shortvideo/XmsTimeline;->getStatus()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/xiaomi/milab/shortvideo/XmsContext;->getInstance()Lcom/xiaomi/milab/shortvideo/XmsContext;

    move-result-object v0

    iget-object v1, v2, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    invoke-virtual {v0, v1}, Lcom/xiaomi/milab/shortvideo/XmsContext;->playTimeline(Lcom/xiaomi/milab/shortvideo/XmsTimeline;)V

    return-void

    :cond_5
    invoke-static {}, Lcom/xiaomi/milab/shortvideo/XmsContext;->getInstance()Lcom/xiaomi/milab/shortvideo/XmsContext;

    move-result-object v0

    iget-object v1, v2, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    invoke-virtual {v0, v1}, Lcom/xiaomi/milab/shortvideo/XmsContext;->resume(Lcom/xiaomi/milab/shortvideo/XmsTimeline;)V

    return-void
.end method

.method public final ln(III)V
    .locals 7

    iget-object v0, p0, Lq6/y1;->d:Lq6/A1;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lq6/y1;->a:Lcom/android/camera/a;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lq6/A1;

    invoke-direct {v1, v0}, Lq6/A1;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lq6/y1;->d:Lq6/A1;

    iput-object p0, v1, Lq6/A1;->O:Lq6/y1;

    :cond_0
    iget-object v0, p0, Lq6/y1;->d:Lq6/A1;

    iget-object p0, p0, Lq6/y1;->g:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    iget-object v1, v0, Lq6/A1;->Q:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v2, "initPreview size "

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v3, "VlogProRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, v0, Lq6/A1;->c:I

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_1

    if-eq v2, p3, :cond_1

    iput-boolean v5, v0, Lq6/A1;->g:Z

    iput-object v6, v0, Lq6/A1;->M:[F

    invoke-virtual {v0, v4}, Lq6/A1;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    :goto_0
    iput p3, v0, Lq6/A1;->c:I

    iput-boolean v4, v0, Lq6/A1;->b:Z

    iput p1, v0, Lq6/A1;->n:I

    iput p2, v0, Lq6/A1;->o:I

    iget-object p3, v0, Lq6/A1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/a;

    invoke-static {}, LK2/b;->W()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    iget p3, p3, Lcom/android/camera/a;->d0:I

    goto :goto_1

    :cond_2
    move p3, v4

    :goto_1
    iput p3, v0, Lq6/A1;->r:I

    invoke-static {}, LK2/b;->W()Z

    move-result p3

    if-eqz p3, :cond_3

    sget-boolean p3, LK2/e;->n:Z

    if-eqz p3, :cond_3

    iput p1, v0, Lq6/A1;->p:I

    iput p2, v0, Lq6/A1;->q:I

    goto :goto_2

    :cond_3
    iput p2, v0, Lq6/A1;->p:I

    iput p1, v0, Lq6/A1;->q:I

    :goto_2
    iput-object p0, v0, Lq6/A1;->l:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    iget-object p0, v0, Lq6/A1;->e:Landroid/graphics/SurfaceTexture;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-boolean v5, v0, Lq6/A1;->g:Z

    iput-object v6, v0, Lq6/A1;->M:[F

    :cond_4
    iget-object p0, v0, Lq6/A1;->f:Lq6/m1;

    if-eqz p0, :cond_7

    iget-object p1, p0, Lq6/m1;->d:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_5

    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "OESRenderer"

    const-string/jumbo p3, "unRegisterSurfaceTexture"

    invoke-static {p2, p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lq6/m1;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v6, p0, Lq6/m1;->d:Landroid/graphics/SurfaceTexture;

    :cond_5
    iget-object p0, v0, Lq6/A1;->f:Lq6/m1;

    iget-object p1, p0, Lq6/m1;->d:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_6

    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lq6/m1;->a:[I

    aget p2, p2, v4

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lq6/m1;->d:Landroid/graphics/SurfaceTexture;

    :cond_6
    iget-object p0, p0, Lq6/m1;->d:Landroid/graphics/SurfaceTexture;

    iput-object p0, v0, Lq6/A1;->e:Landroid/graphics/SurfaceTexture;

    goto :goto_3

    :cond_7
    new-instance p0, Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v4}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object p0, v0, Lq6/A1;->e:Landroid/graphics/SurfaceTexture;

    :goto_3
    iget-object p0, v0, Lq6/A1;->e:Landroid/graphics/SurfaceTexture;

    iget p1, v0, Lq6/A1;->n:I

    iget p2, v0, Lq6/A1;->o:I

    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object p0, v0, Lq6/A1;->e:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object p0, v0, Lq6/A1;->d:LD8/m;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v0}, LD8/m;->y(Lru/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final m()V
    .locals 2

    iget-object p0, p0, Lq6/y1;->f:Lq6/z1;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/milab/shortvideo/XmsTimeline;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/xiaomi/milab/shortvideo/XmsContext;->getInstance()Lcom/xiaomi/milab/shortvideo/XmsContext;

    move-result-object v0

    iget-object p0, p0, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    invoke-virtual {v0, p0}, Lcom/xiaomi/milab/shortvideo/XmsContext;->pause(Lcom/xiaomi/milab/shortvideo/XmsTimeline;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onOrientationChanged(III)V
    .locals 1

    iget p1, p0, Lq6/y1;->l:I

    rsub-int p3, p2, 0x168

    rem-int/lit16 p3, p3, 0x168

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lq6/y1;->L()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    invoke-virtual {p0}, Lq6/y1;->L()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iput p3, p0, Lq6/y1;->l:I

    iget-object p1, p0, Lq6/y1;->d:Lq6/A1;

    if-eqz p1, :cond_4

    invoke-static {}, LK2/b;->W()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lq6/y1;->L()I

    move-result p1

    if-eq p1, p2, :cond_4

    invoke-virtual {p0}, Lq6/y1;->L()I

    move-result p1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lq6/y1;->h:Lzs/y;

    invoke-virtual {p1}, Lzs/y;->e()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lq6/y1;->d:Lq6/A1;

    iget-object p0, p0, Lq6/y1;->a:Lcom/android/camera/a;

    iget p0, p0, Lcom/android/camera/a;->d0:I

    invoke-virtual {p1, p0}, Lq6/A1;->e(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onPreviewFrame(Landroid/media/Image;Lj9/a;I)Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public final p0()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lq6/y1;->a:Lcom/android/camera/a;

    iget-object v0, v0, Lcom/android/camera/a;->C0:LD8/m;

    new-instance v1, LAp/f;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, LAp/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, LD8/m;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final prepare()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "prepare E"

    const-string v3, "VlogProConfigChangeImpl"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lq6/y1;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "miffmpeg"

    invoke-static {v2, v4}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "MiShortVideoSDK"

    invoke-static {v1, v2}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v2, LAp/g;

    const/4 v4, 0x7

    invoke-direct {v2, p0, v4}, LAp/g;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v1

    const-class v2, Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lq6/y1;->g:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    iget-object v1, p0, Lq6/y1;->i:Lcom/android/camera/data/observeable/d;

    if-nez v1, :cond_1

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v1

    const-class v2, Lcom/android/camera/data/observeable/d;

    invoke-virtual {v1, v2}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/observeable/d;

    iput-object v1, p0, Lq6/y1;->i:Lcom/android/camera/data/observeable/d;

    :cond_1
    iget-object v1, p0, Lq6/y1;->k:LQ6/B1;

    if-nez v1, :cond_2

    invoke-static {}, LQ6/B1;->b()LQ6/B1;

    move-result-object v1

    iput-object v1, p0, Lq6/y1;->k:LQ6/B1;

    :cond_2
    iget-object v1, p0, Lq6/y1;->i:Lcom/android/camera/data/observeable/d;

    sget-object v2, Le2/g;->e:Ljava/lang/String;

    iget-object v4, p0, Lq6/y1;->g:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    iget-object v4, v4, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/data/observeable/d;->a(Ljava/lang/String;Ljava/lang/String;)Lzs/y;

    move-result-object v1

    iput-object v1, p0, Lq6/y1;->h:Lzs/y;

    const-string p0, "prepare X"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final q()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VlogProConfigChangeImpl"

    const-string/jumbo v3, "stopRecording"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lq6/y1;->o:Lio/reactivex/disposables/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/reactivex/disposables/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "stopCountDown"

    invoke-static {v2, v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lq6/y1;->o:Lio/reactivex/disposables/b;

    invoke-interface {v1}, Lio/reactivex/disposables/b;->c()V

    :cond_0
    iget-object v1, p0, Lq6/y1;->d:Lq6/A1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "VlogProRecorder"

    invoke-static {v4, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lq6/A1;->f(I)V

    iget-object v1, p0, Lq6/y1;->h:Lzs/y;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lzs/y;->e()I

    move-result v1

    iget-object v2, p0, Lq6/y1;->g:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    iget-object v2, v2, Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;->j:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lq6/y1;->a:Lcom/android/camera/a;

    iget-object v0, v0, Lcom/android/camera/a;->C0:LD8/m;

    new-instance v1, LAp/e;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, LAp/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, LD8/m;->s(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final registerProtocol()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VlogProConfigChangeImpl"

    const-string v2, "registerProtocol"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/y1;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/o0;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/n0;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public final unRegisterProtocol()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "unRegisterProtocol"

    const-string v3, "VlogProConfigChangeImpl"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, LN6/h$a;->a:LN6/h;

    const-class v2, LQ6/n0;

    invoke-virtual {v1, v2, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v2, LQ6/o0;

    invoke-virtual {v1, v2, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v2, LQ6/y1;

    invoke-virtual {v1, v2, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "release"

    invoke-static {v3, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lq6/y1;->a:Lcom/android/camera/a;

    iget-object v0, v0, Lcom/android/camera/a;->C0:LD8/m;

    new-instance v1, LF1/N;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, LF1/N;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, LD8/m;->s(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lq6/y1;->c:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final v()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VlogProConfigChangeImpl"

    const-string/jumbo v3, "resumeRecording"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lq6/y1;->d:Lq6/A1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "VlogProRecorder"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lq6/A1;->f(I)V

    iget-wide v0, p0, Lq6/y1;->p:J

    invoke-virtual {p0, v0, v1}, Lq6/y1;->X1(J)V

    iget-object v0, p0, Lq6/y1;->d:Lq6/A1;

    iget v0, v0, Lq6/A1;->m:I

    iget-object p0, p0, Lq6/y1;->g:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    iget-object p0, p0, Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resume_segment"

    invoke-static {v1, p0, v0}, Lq6/y1;->u2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final w()V
    .locals 1

    iget-object p0, p0, Lq6/y1;->f:Lq6/z1;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/milab/shortvideo/XmsTimeline;->getStatus()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/milab/shortvideo/XmsContext;->getInstance()Lcom/xiaomi/milab/shortvideo/XmsContext;

    move-result-object v0

    iget-object p0, p0, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    invoke-virtual {v0, p0}, Lcom/xiaomi/milab/shortvideo/XmsContext;->playTimeline(Lcom/xiaomi/milab/shortvideo/XmsTimeline;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/milab/shortvideo/XmsContext;->getInstance()Lcom/xiaomi/milab/shortvideo/XmsContext;

    move-result-object v0

    iget-object p0, p0, Lq6/z1;->a:Lcom/xiaomi/milab/shortvideo/XmsTimeline;

    invoke-virtual {v0, p0}, Lcom/xiaomi/milab/shortvideo/XmsContext;->resume(Lcom/xiaomi/milab/shortvideo/XmsTimeline;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final w8()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lq6/y1;->d:Lq6/A1;

    iget-object p0, p0, Lq6/A1;->e:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method
