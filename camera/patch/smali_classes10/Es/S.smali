.class public final synthetic LEs/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/d;
.implements Lio/reactivex/j;
.implements La5/i$b;
.implements Lg/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LEs/S;->a:I

    iput-object p1, p0, LEs/S;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LEs/S;->b:Ljava/lang/Object;

    iget p0, p0, LEs/S;->a:I

    sparse-switch p0, :sswitch_data_0

    check-cast p1, Ljava/lang/Long;

    sget p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->e:I

    check-cast v0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "MiviInfoContentProvider"

    const-string v1, "setHalInfo by init start"

    invoke-static {p1, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Li0/V;->b(Lcom/android/camera/external/mivi/MiviInfoContentProvider;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v1, Ls3/a;

    iget-object v2, v0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->a:LCh/g;

    iget-object v0, v0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->b:Lwh/a;

    invoke-direct {v1, v2, v0, p0}, Ls3/a;-><init>(LCh/g;Lwh/a;Landroid/content/Context;)V

    invoke-static {p1, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void

    :sswitch_0
    check-cast v0, Lcom/xiaomi/microfilm/dualcam/mode/DualVideoModuleBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/xiaomi/microfilm/dualcam/mode/DualVideoModuleBase;->xq(Lcom/xiaomi/microfilm/dualcam/mode/DualVideoModuleBase;Ljava/lang/Integer;)V

    return-void

    :sswitch_1
    check-cast p1, LBs/a;

    check-cast v0, LEs/V;

    iput-object p1, v0, LEs/V;->q:LBs/a;

    invoke-virtual {v0}, LEs/V;->lr()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(I)La5/a;
    .locals 5

    iget-object p0, p0, LEs/S;->b:Ljava/lang/Object;

    check-cast p0, Lr2/i;

    invoke-virtual {p0}, Lr2/i;->p()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lr2/i;->n()I

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    new-instance v2, La5/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget v3, LQh/b;->ic_video_cclock_topbar_on:I

    iput v3, v2, La5/a;->a:I

    iput v0, v2, La5/a;->b:I

    const v3, 0x7f1403c5

    iput v3, v2, La5/a;->c:I

    const/4 v4, 0x0

    iput-object v4, v2, La5/a;->f:Ljava/lang/String;

    iput-boolean p1, v2, La5/a;->g:Z

    iput-boolean v1, v2, La5/a;->h:Z

    iput-object v4, v2, La5/a;->i:Lcom/android/camera/data/data/c;

    iput v3, v2, La5/a;->d:I

    iput-object v4, v2, La5/a;->e:Ljava/lang/String;

    iput-boolean p0, v2, La5/a;->j:Z

    iput-boolean v1, v2, La5/a;->k:Z

    iput-boolean v0, v2, La5/a;->l:Z

    iput-boolean v1, v2, La5/a;->m:Z

    return-object v2
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Li7/e;->e:Ljava/util/List;

    iget-object p0, p0, LEs/S;->b:Ljava/lang/Object;

    check-cast p0, Li7/e;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LH4/u;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LH4/u;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LF1/P3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LF1/P3;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LH4/h;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, LH4/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public subscribe(Lio/reactivex/i;)V
    .locals 0

    iget-object p0, p0, LEs/S;->b:Ljava/lang/Object;

    check-cast p0, LS1/g;

    invoke-interface {p1}, Lio/reactivex/i;->serialize()Lio/reactivex/internal/operators/flowable/b$h;

    move-result-object p1

    iput-object p1, p0, LS1/g;->e:Lio/reactivex/i;

    return-void
.end method
