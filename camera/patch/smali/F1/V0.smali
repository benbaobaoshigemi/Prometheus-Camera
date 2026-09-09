.class public final synthetic LF1/V0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/camera/Camera;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF1/V0;->a:Lcom/android/camera/Camera;

    iput p2, p0, LF1/V0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, LF1/V0;->a:Lcom/android/camera/Camera;

    iget v4, p0, LF1/V0;->b:I

    sget-object p0, Lcom/android/camera/Camera;->C2:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->zr()V

    invoke-virtual {v3}, Lcom/android/camera/a;->Rq()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v3}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {p0, v1}, Lcom/android/camera/module/W;->release(Z)V

    :cond_0
    new-instance v2, Lu6/m;

    invoke-virtual {v3}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object v7, p0, Loh/b;->o:Lcom/android/camera/module/W;

    iget-object v8, v3, Lcom/android/camera/a;->C0:LD8/m;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const/4 v6, 0x2

    move v5, v4

    invoke-direct/range {v2 .. v9}, Lu6/m;-><init>(Landroid/content/Context;IIILcom/android/camera/module/W;LD8/m;Landroid/content/Intent;)V

    new-instance p0, Lio/reactivex/internal/operators/completable/b;

    invoke-direct {p0, v2}, Lio/reactivex/internal/operators/completable/b;-><init>(Lio/reactivex/e;)V

    invoke-virtual {p0}, Lio/reactivex/b;->subscribe()Lio/reactivex/disposables/b;

    new-instance p0, Lt6/f;

    invoke-direct {p0, v4}, Lt6/a;-><init>(I)V

    invoke-virtual {v3}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v2

    iget-object v2, v2, Loh/b;->o:Lcom/android/camera/module/W;

    new-instance v4, Lt6/k;

    const/16 v5, 0xe0

    invoke-direct {v4, v5, v2}, Lt6/k;-><init>(ILcom/android/camera/module/W;)V

    invoke-static {v4}, Lio/reactivex/w;->b(Ljava/lang/Object;)Lio/reactivex/internal/operators/single/j;

    move-result-object v2

    sget-object v4, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    invoke-virtual {v2, v4}, Lio/reactivex/w;->c(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/l;

    move-result-object v2

    new-instance v5, LF1/l1;

    invoke-direct {v5, v3}, LF1/l1;-><init>(Lcom/android/camera/Camera;)V

    new-instance v6, Lio/reactivex/internal/operators/single/k;

    invoke-direct {v6, v2, v5}, Lio/reactivex/internal/operators/single/k;-><init>(Lio/reactivex/w;Lio/reactivex/functions/e;)V

    iget-object v2, v3, Lcom/android/camera/Camera;->N1:Lu6/j;

    invoke-virtual {v3}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v5

    iget-object v5, v5, Loh/b;->o:Lcom/android/camera/module/W;

    iput-object v5, v2, Lu6/j;->d:Lcom/android/camera/module/W;

    iget-object v2, v3, Lcom/android/camera/Camera;->N1:Lu6/j;

    invoke-static {v2}, Lio/reactivex/w;->a(Lio/reactivex/z;)Lio/reactivex/internal/operators/single/a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lio/reactivex/w;->e(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/m;

    move-result-object v2

    invoke-virtual {v2, v4}, Lio/reactivex/w;->c(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/l;

    move-result-object v2

    iget-object v4, v3, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string/jumbo v5, "resumeCurrentMode: CameraSetupDisposable: E"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, LF1/h2;

    invoke-direct {v4, v3, v1}, LF1/h2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, v2, v4}, Lio/reactivex/w;->f(Lio/reactivex/w;Lio/reactivex/functions/c;)Lio/reactivex/internal/operators/single/p;

    move-result-object v1

    new-instance v2, LAr/c;

    invoke-direct {v2, v3, v0}, LAr/c;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Lio/reactivex/internal/operators/single/k;

    invoke-direct {v4, v1, v2}, Lio/reactivex/internal/operators/single/k;-><init>(Lio/reactivex/w;Lio/reactivex/functions/e;)V

    new-instance v1, Lio/reactivex/internal/operators/single/k;

    invoke-direct {v1, v4, p0}, Lio/reactivex/internal/operators/single/k;-><init>(Lio/reactivex/w;Lio/reactivex/functions/e;)V

    new-instance p0, Lio/reactivex/internal/operators/single/d;

    invoke-direct {p0, v1}, Lio/reactivex/internal/operators/single/d;-><init>(Lio/reactivex/w;)V

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {p0, v1}, Lio/reactivex/w;->c(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/l;

    move-result-object p0

    new-instance v1, LF1/j2;

    invoke-direct {v1, v3}, LF1/j2;-><init>(Ljava/lang/Object;)V

    new-instance v2, LF1/k1;

    invoke-direct {v2, v3, v0}, LF1/k1;-><init>(Lcom/android/camera/Camera;I)V

    invoke-virtual {p0, v1, v2}, Lio/reactivex/w;->subscribe(Lio/reactivex/functions/d;Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object p0

    iput-object p0, v3, Lcom/android/camera/Camera;->H1:Lio/reactivex/disposables/b;

    return-void
.end method
