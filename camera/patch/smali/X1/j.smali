.class public final LX1/j;
.super Landroidx/lifecycle/a0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u0000 A2\u00020\u0001:\u0001AB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&J\u0016\u00102\u001a\u0008\u0012\u0004\u0012\u00020403H\u0080@\u00a2\u0006\u0004\u00085\u00106J\u0014\u00107\u001a\u00020$2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020:09J\u0006\u0010;\u001a\u00020$J\u0014\u0010<\u001a\u00020$2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020:09J\u0006\u0010=\u001a\u00020$J\u0006\u0010>\u001a\u00020$J\u0006\u0010?\u001a\u00020$J\u000e\u0010@\u001a\u00020$H\u0082@\u00a2\u0006\u0002\u00106R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000b\u001a\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u000b\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u001fR\u0017\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020)0(8G\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010*R\u0017\u0010+\u001a\u0008\u0012\u0004\u0012\u00020,0(8G\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010*R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006B"
    }
    d2 = {
        "Lcom/android/camera/base/activity/BaseActivityViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "savedStateHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;)V",
        "deviceMovingObserver",
        "Lcom/android/camera/base/sensor/DeviceMovingObserver;",
        "getDeviceMovingObserver",
        "()Lcom/android/camera/base/sensor/DeviceMovingObserver;",
        "deviceMovingObserver$delegate",
        "Lkotlin/Lazy;",
        "orientationObserver",
        "Lcom/android/camera/base/sensor/OrientationObserver;",
        "getOrientationObserver",
        "()Lcom/android/camera/base/sensor/OrientationObserver;",
        "orientationObserver$delegate",
        "foldStateObserver",
        "Lcom/android/camera/base/sensor/FoldStateObserver;",
        "getFoldStateObserver",
        "()Lcom/android/camera/base/sensor/FoldStateObserver;",
        "foldStateObserver$delegate",
        "keyEventObserver",
        "Lcom/xiaomi/camera/base/ui/keyevent/KeyEventObserver;",
        "getKeyEventObserver",
        "()Lcom/xiaomi/camera/base/ui/keyevent/KeyEventObserver;",
        "keyEventObserver$delegate",
        "deviceMovingFlow",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "",
        "getDeviceMovingFlow",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "cameraKeyEvents",
        "Lcom/xiaomi/camera/base/ui/keyevent/CameraKeyEvent;",
        "getCameraKeyEvents",
        "onKeyEvent",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "foldTypeState",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/android/camera/base/sensor/FoldTypeState;",
        "()Landroidx/lifecycle/LiveData;",
        "orientationState",
        "",
        "sensorObserversJob",
        "Lkotlinx/coroutines/Job;",
        "deviceMovingObserverEnableJob",
        "orientationObserverEnableJob",
        "orientationObserverDisableJob",
        "checkStorageState",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/android/camera/base/activity/StorageState;",
        "checkStorageState$base_module_release",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "startSensorObservers",
        "isWorking",
        "Lkotlin/Function0;",
        "",
        "stopSensorObservers",
        "enableDeviceMovingObserver",
        "disableDeviceMovingObserver",
        "enableOrientationObserver",
        "disableOrientationObserver",
        "waitCTAPermitted",
        "Companion",
        "base-module_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final d:LPu/n;

.field public final e:LPu/n;

.field public final f:LPu/n;

.field public final g:LPu/n;

.field public h:Lyw/B0;

.field public i:Lyw/B0;

.field public j:Lyw/B0;

.field public k:Lyw/B0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/O;)V
    .locals 1

    const-string/jumbo v0, "savedStateHandle"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/a0;-><init>()V

    new-instance p1, LOt/j;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, LOt/j;-><init>(I)V

    invoke-static {p1}, LBw/i;->M(Lev/a;)LPu/n;

    move-result-object p1

    iput-object p1, p0, LX1/j;->d:LPu/n;

    new-instance p1, LX1/h;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LX1/h;-><init>(I)V

    invoke-static {p1}, LBw/i;->M(Lev/a;)LPu/n;

    move-result-object p1

    iput-object p1, p0, LX1/j;->e:LPu/n;

    new-instance p1, LS7/j;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LS7/j;-><init>(I)V

    invoke-static {p1}, LBw/i;->M(Lev/a;)LPu/n;

    move-result-object p1

    iput-object p1, p0, LX1/j;->f:LPu/n;

    new-instance p1, LOt/l;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, LOt/l;-><init>(I)V

    invoke-static {p1}, LBw/i;->M(Lev/a;)LPu/n;

    move-result-object p1

    iput-object p1, p0, LX1/j;->g:LPu/n;

    return-void
.end method

.method public static final j(LX1/j;LVu/h;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lyw/k;

    invoke-static {p1}, Lyw/H;->c(LTu/e;)LTu/e;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lyw/k;-><init>(ILTu/e;)V

    invoke-virtual {p0}, Lyw/k;->t()V

    new-instance p1, LX1/o;

    invoke-direct {p1, p0}, LX1/o;-><init>(Lyw/k;)V

    invoke-static {p1}, LSh/c;->d(LSh/i;)V

    new-instance v0, LX1/n;

    invoke-direct {v0, p1}, LX1/n;-><init>(LX1/o;)V

    invoke-virtual {p0, v0}, Lyw/k;->v(Lev/l;)V

    invoke-virtual {p0}, Lyw/k;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, LUu/a;->a:LUu/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method


# virtual methods
.method public final k()V
    .locals 2

    iget-object v0, p0, LX1/j;->i:Lyw/B0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lyw/r0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, LX1/j;->i:Lyw/B0;

    iget-object p0, p0, LX1/j;->d:LPu/n;

    invoke-virtual {p0}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LY1/a;

    iget-object v0, p0, LY1/a;->c:Lyw/B0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lyw/r0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v1, p0, LY1/a;->c:Lyw/B0;

    iget-object v0, p0, LY1/a;->d:Lyw/B0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lyw/r0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iput-object v1, p0, LY1/a;->d:Lyw/B0;

    iget-object v0, p0, LY1/a;->e:Lyw/B0;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lyw/r0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iput-object v1, p0, LY1/a;->e:Lyw/B0;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LY1/a;->f:J

    iput-wide v0, p0, LY1/a;->g:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LY1/a;->h:D

    iget-object v0, p0, LY1/a;->i:[F

    invoke-static {v0}, Lud/h5;->z([F)V

    iget-object v0, p0, LY1/a;->j:[F

    invoke-static {v0}, Lud/h5;->z([F)V

    new-instance v0, LIo/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LIo/a;-><init>(I)V

    iput-object v0, p0, LY1/a;->k:Lev/a;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "BaseActivityViewModel"

    const-string v1, "deviceMovingObserver disabled"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, LX1/j;->j:Lyw/B0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lyw/r0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, LX1/j;->k:Lyw/B0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lyw/r0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    invoke-static {p0}, LSt/g;->k(Landroidx/lifecycle/a0;)Lyw/D;

    move-result-object v0

    sget-object v2, Ltm/a;->b:LHw/b;

    sget-object v3, Lyw/v0;->b:Lyw/v0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, LTu/h$a$a;->c(LTu/h$a;LTu/h;)LTu/h;

    move-result-object v2

    new-instance v3, LX1/j$a;

    invoke-direct {v3, p0, v1}, LX1/j$a;-><init>(LX1/j;LTu/e;)V

    const/4 v4, 0x2

    invoke-static {v0, v2, v1, v3, v4}, Lyw/f;->b(Lyw/D;LTu/h;Lyw/F;Lev/p;I)Lyw/B0;

    move-result-object v0

    iput-object v0, p0, LX1/j;->k:Lyw/B0;

    return-void
.end method

.method public final m()LY1/i;
    .locals 0

    iget-object p0, p0, LX1/j;->e:LPu/n;

    invoke-virtual {p0}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LY1/i;

    return-object p0
.end method
