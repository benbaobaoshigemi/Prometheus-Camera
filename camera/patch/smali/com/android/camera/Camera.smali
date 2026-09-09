.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/a;
.source "SourceFile"

# interfaces
.implements Lf2/d$a;
.implements LN6/a;
.implements Landroid/view/View$OnTouchListener;
.implements LH6/a;
.implements Lcom/android/camera/b$b;
.implements Lcom/android/camera/c$c;
.implements Ls4/d$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$p;,
        Lcom/android/camera/Camera$q;,
        Lcom/android/camera/Camera$m;,
        Lcom/android/camera/Camera$l;,
        Lcom/android/camera/Camera$r;,
        Lcom/android/camera/Camera$n;,
        Lcom/android/camera/Camera$o;
    }
.end annotation


# static fields
.field public static final C2:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final D2:Z

.field public static final E2:Z

.field public static final F2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A1:Landroid/widget/ProgressBar;

.field public final A2:Lcom/android/camera/Camera$a;

.field public B1:Landroidx/fragment/app/Fragment;

.field public final B2:Lcom/android/camera/Camera$b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation
.end field

.field public C1:Lk7/i;

.field public D1:LF1/X3;

.field public volatile E1:Z

.field public F1:Z

.field public G1:Lp6/b;

.field public H1:Lio/reactivex/disposables/b;

.field public I1:Lio/reactivex/disposables/a;

.field public J1:Lf6/u;

.field public K1:LO4/b;

.field public L1:Lcom/android/camera/module/loader/base/StartControl;

.field public M1:Lf6/a;

.field public N1:Lu6/j;

.field public O1:Z

.field public P1:Z

.field public Q1:Lmiuix/appcompat/app/h;

.field public R1:Lmiuix/appcompat/app/h;

.field public S1:LW5/d;

.field public T1:Lcom/android/camera/Camera$c;

.field public U1:LQ6/t0;

.field public V1:Z

.field public W1:I

.field public X1:Z

.field public final Y1:LF1/n3;

.field public final Z1:Lvr/O;

.field public final a2:LF1/k0;

.field public final b2:Lcom/android/camera/Camera$p;

.field public c2:Z

.field public d2:Z

.field public e2:Z

.field public f2:Lmiuix/appcompat/app/h;

.field public g2:Landroid/app/Dialog;

.field public h2:Lq8/s0;

.field public i2:LF1/D4;

.field public j2:LA3/g;

.field public k2:Lcom/android/camera/Camera$m;

.field public l2:Lio/reactivex/disposables/b;

.field public final m2:LF1/b3;

.field public n2:Lvr/x;

.field public volatile o2:I

.field public final p2:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public q2:Z

.field public r2:Z

.field public final s1:Ljava/lang/String;

.field public s2:J

.field public final t1:Ljava/lang/String;

.field public t2:Landroid/widget/Button;

.field public u1:J

.field public u2:Landroid/widget/Button;

.field public v1:J

.field public final v2:LF1/t1;

.field public w1:I

.field public final w2:Lcom/android/camera/Camera$d;

.field public x1:Lio/reactivex/disposables/b;

.field public final x2:LAs/l;

.field public y1:I

.field public final y2:Lcom/android/camera/Camera$j;

.field public z1:Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

.field public final z2:Lcom/android/camera/Camera$k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/camera/Camera;->C2:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "camera.debug.enable_monitor_draw"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Camera;->D2:Z

    const-string v0, "camera.debug.dump_overlap_ui"

    invoke-static {v0, v1}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Camera;->E2:Z

    const-string v0, "RemoteOnlineExitDialogFragment"

    const-string v1, "RemoteOnlineTipsDialogFragment"

    const-string v2, "VideoCastExitDialogFragment"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Camera;->F2:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/a;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "resumeActivity@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->t1:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->u1:J

    iput-wide v0, p0, Lcom/android/camera/Camera;->v1:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/Camera;->w1:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/Camera;->y1:I

    iput-boolean v3, p0, Lcom/android/camera/Camera;->P1:Z

    iput-boolean v3, p0, Lcom/android/camera/Camera;->V1:Z

    iput v2, p0, Lcom/android/camera/Camera;->W1:I

    new-instance v2, LF1/n3;

    invoke-direct {v2, p0}, LF1/n3;-><init>(Lcom/android/camera/Camera;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->Y1:LF1/n3;

    new-instance v2, Lvr/O;

    invoke-direct {v2}, Lvr/O;-><init>()V

    iput-object v2, p0, Lcom/android/camera/Camera;->Z1:Lvr/O;

    new-instance v2, LF1/k0;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, LF1/k0;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p0, Lcom/android/camera/Camera;->a2:LF1/k0;

    new-instance v2, Lcom/android/camera/Camera$p;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/Camera;->b2:Lcom/android/camera/Camera$p;

    iput-boolean v3, p0, Lcom/android/camera/Camera;->c2:Z

    new-instance v2, LF1/b3;

    invoke-direct {v2}, LF1/b3;-><init>()V

    iput-object v2, p0, Lcom/android/camera/Camera;->m2:LF1/b3;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/Camera;->p2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide v0, p0, Lcom/android/camera/Camera;->s2:J

    new-instance v0, LF1/t1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LF1/t1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->v2:LF1/t1;

    new-instance v0, Lcom/android/camera/Camera$d;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$d;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->w2:Lcom/android/camera/Camera$d;

    new-instance v0, LAs/l;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LAs/l;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->x2:LAs/l;

    new-instance v0, Lcom/android/camera/Camera$j;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$j;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->y2:Lcom/android/camera/Camera$j;

    new-instance v0, Lcom/android/camera/Camera$k;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$k;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->z2:Lcom/android/camera/Camera$k;

    new-instance v0, Lcom/android/camera/Camera$a;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$a;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->A2:Lcom/android/camera/Camera$a;

    new-instance v0, Lcom/android/camera/Camera$b;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$b;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->B2:Lcom/android/camera/Camera$b;

    return-void
.end method

.method public static as()V
    .locals 5

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_security_check"

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

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v1

    sget-object v2, Ldq/e;->a:Landroid/util/SparseArray;

    const-string v2, "false"

    const-string/jumbo v3, "true"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v4, "attr_security_debugger_connected"

    invoke-virtual {v0, v1, v4}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/camera/LSsdQFvLalapDwvA;->QiVkoLmEuZWFFHiA()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v4, "attr_security_frida_hook"

    invoke-virtual {v0, v1, v4}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/camera/LSsdQFvLalapDwvA;->qkPDndbXdHyDtWXd()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const-string v4, "attr_security_xposed_hook"

    invoke-virtual {v0, v1, v4}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/camera/LSsdQFvLalapDwvA;->RitIeKoenwCSqcPf()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v2, v3

    :cond_3
    const-string v1, "attr_security_bsp_check"

    invoke-virtual {v0, v2, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attr_security_device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attr_security_mod_device"

    sget-object v2, LQa/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attr_security_device_brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attr_security_device_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attr_security_market_name"

    sget-object v2, LJe/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    return-void
.end method

.method public static bs(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_security_check"

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

    const-string v1, "attr_security_result"

    invoke-virtual {v0, p0, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    return-void
.end method

.method public static tr(Lcom/android/camera/Camera;Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lu6/k$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    invoke-virtual {p0}, Loh/b;->m()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/K1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LF1/K1;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/L1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LF1/L1;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/i;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, LEs/i;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    invoke-virtual {v0}, Loh/b;->m()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/j;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LEs/j;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    check-cast p1, Lu6/k$a;

    iget p1, p1, Lu6/k$a;->a:I

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->Xr(I)V

    return-void

    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static ur(Lcom/android/camera/Camera;Lt6/h;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "mCameraSetupConsumer accept"

    invoke-static {v2, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v2

    const-string v3, "A8:switch_setup_consumer"

    invoke-virtual {v2, v3}, LF6/q;->q(Ljava/lang/String;)V

    invoke-interface {p1}, Lt6/h;->b()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Lt6/h;->a()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->Xr(I)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "CameraMainViewModel"

    const-string v6, "onExitMode: "

    invoke-static {v5, v6, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v2, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v4, :cond_0

    invoke-interface {v4, v1}, Lcom/android/camera/module/W;->release(Z)V

    :cond_0
    const/4 v4, 0x0

    iput-object v4, v2, Loh/b;->o:Lcom/android/camera/module/W;

    iput-object v4, v2, Loh/b;->n:Ly3/s;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lq8/K0;->b(Landroid/app/Activity;)Lq8/K0;

    move-result-object v2

    invoke-interface {p1}, Lt6/h;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/W;

    iput-object v4, v2, Lq8/K0;->i:Lcom/android/camera/module/W;

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/a;->Y:Z

    iget-object v2, p0, Lcom/android/camera/Camera;->p2:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v4, "onCameraSetupSuccess: handle first frame event"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Hr()V

    :cond_2
    sget-boolean v2, Lcom/android/camera/b;->k:Z

    sget-object v2, Lcom/android/camera/b$a;->a:Lcom/android/camera/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "BatteryDetector"

    const-string v6, "registerReceiver"

    invoke-static {v5, v6, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v2, Lcom/android/camera/b;->d:Ljava/lang/ref/WeakReference;

    iget-object v4, v2, Lcom/android/camera/b;->b:Landroid/content/Context;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/xiaomi/camera/rx/CameraSchedulers;->sSDKScheduler:Lio/reactivex/v;

    new-instance v5, LC4/d;

    invoke-direct {v5, v2, v0}, LC4/d;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4, v5}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_3
    invoke-static {}, Lvr/Z;->a()V

    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v4, LF1/X0;

    invoke-direct {v4, p0, v1}, LF1/X0;-><init>(Lcom/android/camera/Camera;I)V

    invoke-static {v2, v4}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-static {}, LF1/i0;->a()LF1/i0;

    move-result-object v2

    invoke-virtual {v2}, LF1/i0;->b()V

    invoke-static {}, Lcom/android/camera/data/data/j;->o0()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sImageProcessScheduler:Lio/reactivex/v;

    new-instance v4, LF1/Y0;

    invoke-direct {v4, v1}, LF1/Y0;-><init>(I)V

    invoke-static {v2, v4}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_4
    invoke-static {}, LQ6/L0;->b()LQ6/L0;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, LQ6/L0;->init()V

    iget-object v2, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    const/16 v4, 0x9

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    invoke-interface {p1}, Lt6/h;->b()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Lt6/h;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/W;

    iget-object v2, p0, Lcom/android/camera/Camera;->S1:LW5/d;

    invoke-interface {p1}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v4

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v5

    invoke-virtual {v5}, Lu2/Q;->O()Z

    move-result v5

    iget-object v2, v2, LW5/d;->b:LW5/f;

    iget-object v6, v2, LW5/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/16 v6, 0xa7

    const-string v7, "InputDeviceManager"

    if-eq v4, v6, :cond_9

    const/16 v6, 0xb4

    if-eq v4, v6, :cond_9

    const/16 v6, 0xa4

    if-ne v4, v6, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    invoke-static {v4}, Lcom/android/camera/data/data/j;->T(I)[F

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateZoomSegmentForFrontCam: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, LN/i;->d([FLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v7, v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    array-length v6, v5

    move v8, v1

    :goto_1
    if-ge v8, v6, :cond_b

    aget v9, v5, v8

    iget-object v10, v2, LW5/f;->a:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v0

    goto :goto_1

    :cond_7
    invoke-static {v4}, Lcom/android/camera/data/data/j;->n1(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0xab

    if-eq v4, v5, :cond_8

    invoke-static {}, LQ6/G1;->a()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LW5/e;

    invoke-direct {v6, v2, v4}, LW5/e;-><init>(LW5/f;I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v4}, LW5/f;->a(I)V

    goto :goto_3

    :cond_9
    :goto_2
    iget-object v5, v2, LW5/f;->a:Ljava/util/ArrayList;

    invoke-static {}, LV6/d;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v8, LT9/E;

    const/4 v9, 0x5

    invoke-direct {v8, v9}, LT9/E;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    sget-object v8, Lf9/b;->a:Landroid/util/Range;

    invoke-virtual {v6, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v4}, Lcom/android/camera/data/data/E;->K(I)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {}, Lj9/f;->l3()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v5}, Lcom/android/camera/data/data/j;->a(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_a
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v4, v6, v8, v9}, Lcom/android/camera/data/data/j;->g0(Ljava/util/List;IFFLjava/util/List;)V

    :cond_b
    :goto_3
    const-string/jumbo v5, "updateZoomSegment: module = "

    const-string v6, ", mZoomSegment = "

    invoke-static {v4, v5, v6}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, LW5/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object p1

    iget-object v2, p0, Lcom/android/camera/Camera;->S1:LW5/d;

    iget v2, v2, LW5/d;->f:I

    invoke-interface {p1, v2}, Lj6/f;->Q(I)V

    :cond_c
    const-string p1, "persist.camera.enable.log"

    invoke-static {p1}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "persist.camera.debug.show_af"

    invoke-static {p1}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "persist.camera.debug.show_awb"

    invoke-static {p1}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "persist.camera.debug.show_aec"

    invoke-static {p1}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "persist.camera.debug.autoscene"

    invoke-static {p1}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "persist.camera.debug.hht"

    invoke-static {p1}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    move v0, v1

    :cond_e
    :goto_4
    if-nez v0, :cond_f

    const-string p1, "camera.preview.enable.log"

    invoke-static {p1}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    sget-boolean p1, Lxm/q;->l:Z

    if-eqz p1, :cond_15

    :cond_f
    iget-object p1, p0, Lcom/android/camera/a;->I0:Landroid/widget/TextView;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/camera/a;->B0:Lcom/android/camera/ois/ui/OISCircleView;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/camera/a;->J0:Landroid/widget/Button;

    if-nez p1, :cond_11

    :cond_10
    const p1, 0x7f0b02aa

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const v4, 0x7f0b0889

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/camera/a;->I0:Landroid/widget/TextView;

    const v4, 0x7f0b07c7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ois/ui/OISCircleView;

    iput-object v4, p0, Lcom/android/camera/a;->B0:Lcom/android/camera/ois/ui/OISCircleView;

    const v4, 0x7f0b0888

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/camera/a;->J0:Landroid/widget/Button;

    :cond_11
    iget-object p1, p0, Lcom/android/camera/a;->I0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/camera/data/data/E;->e()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/data/data/E;->e()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/android/camera/a;->I0:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/a;->I0:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/a;->J0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/camera/data/data/E;->e()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/data/data/E;->e()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {}, Lcom/android/camera/data/data/E;->e()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/android/camera/a;->J0:Landroid/widget/Button;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "camera.preview.enable.debug.btn"

    invoke-static {p1}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v2, p0, Lcom/android/camera/a;->J0:Landroid/widget/Button;

    if-eqz p1, :cond_12

    move v4, v1

    goto :goto_5

    :cond_12
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/camera/a;->J0:Landroid/widget/Button;

    new-instance v2, LF1/J3;

    invoke-direct {v2, v1}, LF1/J3;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/data/data/E;->e()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v4, p0, Lcom/android/camera/a;->B0:Lcom/android/camera/ois/ui/OISCircleView;

    iget v5, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v2, v5, p1}, Lcom/android/camera/ois/ui/OISCircleView;->a(Landroid/graphics/Rect;II)V

    goto :goto_6

    :cond_14
    iget-object v2, p0, Lcom/android/camera/a;->B0:Lcom/android/camera/ois/ui/OISCircleView;

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v6, v1, v1, v7, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v6, v4, v5}, Lcom/android/camera/ois/ui/OISCircleView;->a(Landroid/graphics/Rect;II)V

    :goto_6
    if-eqz v0, :cond_15

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget v0, Lio/reactivex/h;->a:I

    sget-object v9, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    const-string/jumbo v0, "unit is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "scheduler is null"

    invoke-static {v9, p1}, Lio/reactivex/internal/functions/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lio/reactivex/internal/operators/flowable/i;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xa

    move-wide v10, v5

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-direct/range {v4 .. v9}, Lio/reactivex/internal/operators/flowable/i;-><init>(JJLio/reactivex/v;)V

    new-instance p1, Lio/reactivex/internal/operators/flowable/l;

    invoke-direct {p1, v4}, Lio/reactivex/internal/operators/flowable/l;-><init>(Lio/reactivex/h;)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    sget v2, Lio/reactivex/h;->a:I

    invoke-virtual {p1, v0, v2}, Lio/reactivex/h;->a(Lio/reactivex/v;I)Lio/reactivex/internal/operators/flowable/k;

    move-result-object p1

    new-instance v0, Lio/reactivex/internal/operators/flowable/c;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/h;)V

    new-instance p1, LF1/k1;

    invoke-direct {p1, p0, v1}, LF1/k1;-><init>(Lcom/android/camera/Camera;I)V

    new-instance v2, LF1/S;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1, v2}, Lio/reactivex/h;->subscribe(Lio/reactivex/functions/d;Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->x1:Lio/reactivex/disposables/b;

    :cond_15
    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "CameraSetupConsumer#accept: switch module done"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p1

    invoke-virtual {p1, v3}, LF6/q;->g(Ljava/lang/String;)J

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "in onCameraSetupSuccess update intent in mode value"

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "updateMode mIntent = "

    invoke-static {p0, v0, v2, v3}, LF1/Q;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, p1, Lvr/m;->a:Landroid/content/Intent;

    if-nez v0, :cond_16

    const-string v0, "null"

    :cond_16
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",mode = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "CameraIntentManager"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p1, Lvr/m;->a:Landroid/content/Intent;

    if-eqz p0, :cond_17

    const-string v0, "com.google.assistant.extra.CAMERA_MODE"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p1, Lvr/m;->a:Landroid/content/Intent;

    const-string p1, "android.intent.extra.CAMERA_MODE"

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_17
    return-void
.end method

.method public static vr(Lcom/android/camera/Camera;Lt6/h;Lu6/k;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Lu6/k;->b:I

    const/4 v1, 0x0

    const/16 v2, 0xe0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "BiFunction apply: isSuccess = "

    invoke-static {v3, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p0, p2, Lu6/k;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lu6/k$a;

    invoke-direct {v1, p0}, Lu6/k$a;-><init>(I)V

    :goto_1
    throw v1

    :cond_2
    invoke-interface {p1}, Lt6/h;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lt6/h;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/W;

    if-ne p0, v2, :cond_3

    iget-object v1, p2, Lu6/k;->a:Lhi/a$b;

    :cond_3
    invoke-interface {p1, v1}, Lcom/android/camera/module/W;->setCameraCookie(Lhi/a$b;)V

    :cond_4
    return-void
.end method

.method public static wr(Lcom/android/camera/Camera;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregister screen off receiver. did screen off register: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/camera/Camera;->P1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/camera/Camera;->P1:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->A2:Lcom/android/camera/Camera$a;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "unregister screen off receiver: "

    invoke-static {v2, v0}, LF1/o2;->c(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/Camera;->P1:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final Af(Lcom/android/camera/module/W;Z)V
    .locals 5

    const-string v0, "releaseAll: isActivityStopped: "

    iget-object v1, p0, Lcom/android/camera/a;->V0:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/a;->b0:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/android/camera/a;->U0:Z

    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/camera/a;->b0:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v2, "releaseAll: releaseDevice = "

    const-string v4, ", isCurrentModuleAlive = "

    invoke-static {v2, v4, p2}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/a;->Rq()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isFinishing = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/android/camera/a;->U0:Z

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/camera/module/W;->setDeparted()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->k2:Lcom/android/camera/Camera$m;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "mCameraReleaseRunnable null recreate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/camera/Camera$m;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Camera$m;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->k2:Lcom/android/camera/Camera$m;

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result p1

    const/16 v0, 0xaf

    if-ne p1, v0, :cond_3

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->v5()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v0, Lr2/c0;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/c0;

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lr2/c0;->p:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "pixel capture mode needs to release camera as soon as possible"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/Camera;->k2:Lcom/android/camera/Camera$m;

    iput-boolean p2, p1, Lcom/android/camera/Camera$m;->b:Z

    sget-object p2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    invoke-static {p2, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/camera/Camera;->k2:Lcom/android/camera/Camera$m;

    iput-boolean p2, p1, Lcom/android/camera/Camera$m;->b:Z

    sget-object p2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x14

    int-to-long v0, v0

    invoke-static {p2, p1, v0, v1}, LAr/d;->g(Lio/reactivex/v;Ljava/lang/Runnable;J)Lio/reactivex/disposables/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->l2:Lio/reactivex/disposables/b;

    :goto_0
    iget-object p0, p0, Lcom/android/camera/Camera;->G1:Lp6/b;

    invoke-virtual {p0}, Lp6/b;->a()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final Aq()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->C1:Lk7/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lk7/i;->q:Lk7/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk7/r;->a()V

    :cond_0
    return-void
.end method

.method public final Ar()LS1/g;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    invoke-virtual {p0}, Loh/b;->j()LS1/g;

    move-result-object p0

    return-object p0
.end method

.method public final Br(Lq8/f;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/a;->y0:Landroid/view/View;

    if-nez v0, :cond_0

    const/16 v0, 0xb2

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/a;->y0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/camera/a;->y0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/a;->y0:Landroid/view/View;

    new-instance v1, Lcom/android/camera/Camera$e;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$e;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/android/camera/a;->y0:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/android/camera/a;->v0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/a;->v0:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/a;->y0:Landroid/view/View;

    add-int/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/camera/a;->B()V

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/E;->g()Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/android/camera/a;->y0:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final Cq()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAutoDownloadFeature"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/camera/a;->a0:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->Wr()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xfa0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    invoke-static {}, LQ6/L0;->b()LQ6/L0;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, LQ6/L0;->Dc()Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final Cr()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDynamicSurfaceView"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/camera/data/data/w;->t0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/a;->z0:Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/a;->z0:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/a;->z0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/a;->L0:Lcom/android/camera/ui/CameraRootView;

    iget-object p0, p0, Lcom/android/camera/a;->z0:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Dj(LZ5/h;Landroid/graphics/Rect;FLZ5/p;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/a;->Dj(LZ5/h;Landroid/graphics/Rect;FLZ5/p;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v0

    invoke-virtual {v0}, LS1/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LS1/g;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZ5/k;

    invoke-interface {v1}, LZ5/k;->canProvide()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1, p1, p2, p3, p4}, LZ5/k;->notifyPreviewRectChange(LZ5/h;Landroid/graphics/Rect;FLZ5/p;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final Dr()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldable"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/K1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/K1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/L1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/L1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj9/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj9/a;->M()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final E9(I)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportFlashScreenHalo"
        type = 0x0
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, LF1/U2;->e(I)V

    const/4 v0, 0x1

    invoke-static {v0}, LF1/U2;->f(Z)V

    invoke-super {p0, p1}, LX1/c;->E9(I)V

    return-void
.end method

.method public final Er()Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const-string v1, "isScreen = "

    invoke-static {v1, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final Fr(Ly3/s;Lcom/android/camera/module/loader/base/StartControl;LF1/N0;)V
    .locals 10

    iget-object p0, p0, Lcom/android/camera/Camera;->J1:Lf6/u;

    invoke-interface {p1}, Ly3/s;->h()Landroid/util/SparseArray;

    move-result-object p1

    sget v0, Lcom/android/camera/module/Y;->a:I

    filled-new-array {v0}, [I

    move-result-object v1

    new-instance v2, LO4/l;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3}, Lu2/Q;->C()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-eq v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-direct {v2, v0, v3, v1}, LO4/l;-><init>(II[I)V

    invoke-virtual {p2}, Lcom/android/camera/module/loader/base/StartControl;->needReset()Z

    move-result p2

    invoke-virtual {p0}, Lf6/u;->f()Z

    move-result v0

    if-nez v0, :cond_2

    new-array p0, v4, [Ljava/lang/Object;

    const-string p1, "FeatureUIManager"

    const-string p2, "basic ui loading..."

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance v0, Lf6/E;

    invoke-direct {v0}, Lf6/E;-><init>()V

    iput-object v2, v0, Lf6/E;->b:LO4/l;

    move v1, v4

    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v6, v4

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0xf0

    if-ge v6, v7, :cond_6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_5

    iget-object v3, v0, Lf6/E;->a:Ljava/util/HashMap;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lf6/E;->a:Ljava/util/HashMap;

    :cond_3
    iget-object v3, v0, Lf6/E;->a:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_3

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_3
    new-instance v6, Lf6/h;

    invoke-direct {v6, v2}, Lf6/h;-><init>(I)V

    invoke-virtual {v6}, Lf6/h;->c()V

    const/16 v7, 0x15

    iput v7, v6, Lf6/h;->a:I

    iput v4, v6, Lf6/h;->c:I

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lf6/E;->a:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    iget-object v6, v0, Lf6/E;->a:Ljava/util/HashMap;

    if-nez v6, :cond_7

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lf6/E;->a:Ljava/util/HashMap;

    :cond_7
    iget-object v6, v0, Lf6/E;->a:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    :cond_8
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v7

    new-instance v9, Lf6/D;

    invoke-direct {v9, v2}, Lf6/D;-><init>(I)V

    invoke-virtual {v7, v9}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Lf6/h;

    invoke-direct {v7, v2}, Lf6/h;-><init>(I)V

    invoke-virtual {v7}, Lf6/h;->c()V

    const/16 v9, 0x16

    iput v9, v7, Lf6/h;->a:I

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v9, Lf6/h;

    invoke-direct {v9, v2}, Lf6/h;-><init>(I)V

    invoke-virtual {v9}, Lf6/h;->c()V

    iput v5, v9, Lf6/h;->a:I

    iput v7, v9, Lf6/h;->c:I

    iput v8, v9, Lf6/h;->d:I

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    iget-object v3, v0, Lf6/E;->a:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_c
    if-eqz p2, :cond_d

    iget-object p1, p0, Lf6/u;->f:LO4/h;

    iget-object p1, p1, LO4/h;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf6/C;

    invoke-interface {p2}, Lf6/C;->reset()V

    goto :goto_6

    :cond_d
    iget-object p1, p0, Lf6/u;->f:LO4/h;

    iget-object p2, v0, Lf6/E;->b:LO4/l;

    iget-object v1, v0, Lf6/E;->a:Ljava/util/HashMap;

    iget-object p1, p1, LO4/h;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf6/C;

    invoke-interface {v2, p2, v1}, Lf6/C;->a(LO4/l;Ljava/util/HashMap;)V

    goto :goto_7

    :cond_e
    new-instance p1, Lf6/t;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, v0, p3}, Lf6/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p0, "loadModuleUI"

    invoke-static {p1, p0}, Lvr/a0;->b(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final Gq(Landroid/os/Bundle;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraAppImpl;

    iput-object v0, p0, Lcom/android/camera/a;->u0:Lcom/android/camera/CameraAppImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->Mr(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCreate: intent-> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v3

    invoke-virtual {v3, p0}, Lvr/m;->l(Landroid/app/Activity;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/a;->j0:Z

    const-string v3, "android.media.action.VOICE_COMMAND"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v2

    invoke-virtual {v2}, Lvr/m;->c()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "An illegal caller:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v0

    invoke-virtual {v0}, Lvr/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " use VOICE_CONTROL_INTENT!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, v3}, Lcom/android/camera/a;->Hq(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, LG8/h;->e(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, v3}, Lcom/android/camera/a;->Hq(Landroid/os/Bundle;)V

    return-void

    :cond_1
    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->q2()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-static {p0}, LK2/b;->K(Landroid/content/Context;)V

    invoke-static {p0}, LQa/b;->e(Landroid/content/Context;)V

    invoke-static {}, LJe/c;->K()Z

    move-result v5

    if-nez v5, :cond_4

    if-nez p1, :cond_3

    move v4, v0

    :cond_3
    invoke-virtual {p0, v0, v4}, Lcom/android/camera/Camera;->yr(ZZ)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object p1

    invoke-virtual {p1}, Lvr/m;->m()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/Camera;->hs()V

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    const-string p0, "open_multi_window_camera"

    const-string p1, "fold"

    invoke-static {v3, p0, p1}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final Gr()Z
    .locals 1

    sget-object v0, LZ2/b;->b:LZ2/b$a;

    invoke-virtual {v0}, LZ2/b$a;->a()LZ2/b;

    move-result-object v0

    invoke-virtual {v0}, LZ2/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LF1/x0;->a(Lcom/android/camera/Camera;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/a;->Wq()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Hq(Landroid/os/Bundle;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, LG8/h;->e(Landroid/app/Activity;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-super {p0, v3}, Lcom/android/camera/a;->Hq(Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/a;->Hq(Landroid/os/Bundle;)V

    iput-boolean v1, p0, Lcom/android/camera/Camera;->E1:Z

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object p1

    invoke-virtual {p1}, Lvr/m;->m()Z

    move-result p1

    invoke-static {}, LF1/X3;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v4, v2, LJe/c;->d:Ljava/lang/Boolean;

    if-nez v4, :cond_1

    const-string/jumbo v4, "sys.power.nonui"

    invoke-static {v4, v1}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, LJe/c;->d:Ljava/lang/Boolean;

    :cond_1
    iget-object v4, v2, LJe/c;->d:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    new-instance p1, Lgq/h;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_enter_fault"

    iput-object v0, p1, Lgq/h;->a:Ljava/lang/String;

    new-instance v0, Lgq/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v0, p1, Lgq/h;->b:Lgq/f;

    const-string v0, "attr_operate_state"

    const-string v2, "pocket_mode_enter"

    invoke-virtual {p1, v2, v0}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lgq/h;->d()V

    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "Finish from NonUI mode."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    return-void

    :cond_2
    invoke-virtual {v2}, LJe/c;->n1()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object p1

    new-instance v2, LF1/X3;

    iget-object v4, p1, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v4}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v4

    iget-object p1, p1, Lvr/m;->a:Landroid/content/Intent;

    if-nez p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lvr/m;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "power_double_tap"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    :goto_0
    invoke-direct {v2, p0, v4, p1}, LF1/X3;-><init>(Lcom/android/camera/Camera;ZZ)V

    iput-object v2, p0, Lcom/android/camera/Camera;->D1:LF1/X3;

    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->T()V

    const p1, 0x7f0b0492

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/CardImageView;

    iput-object p1, p0, Lcom/android/camera/a;->H0:Lcom/android/camera/ui/CardImageView;

    iget-object p1, p0, Lcom/android/camera/a;->C0:LD8/m;

    invoke-static {p0}, LF1/x0;->a(Lcom/android/camera/Camera;)Landroid/view/Display;

    move-result-object v2

    iget-object v4, p1, LD8/m;->t:LD8/b;

    if-nez v4, :cond_5

    new-instance v4, LD8/b;

    invoke-direct {v4, p1}, LD8/b;-><init>(LD8/m;)V

    iput-object v4, p1, LD8/m;->t:LD8/b;

    :cond_5
    iget-object v4, p1, LD8/m;->h:LD8/n;

    if-nez v4, :cond_6

    new-instance v4, LD8/n;

    invoke-direct {v4, p1}, LD8/n;-><init>(LD8/m;)V

    iput-object v4, p1, LD8/m;->h:LD8/n;

    :cond_6
    iget-object v4, p1, LD8/m;->j:LF1/Y2;

    if-nez v4, :cond_7

    new-instance v4, LF1/Y2;

    iget-object v5, p1, LD8/m;->t:LD8/b;

    iget-object v6, p1, LD8/m;->h:LD8/n;

    invoke-direct {v4}, LF1/q4;-><init>()V

    iput v1, v4, LF1/Y2;->E:I

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v7, v4, LF1/Y2;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v5, v4, LF1/Y2;->C:LF1/Y2$a;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, LF1/Y2;->D:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, LF1/Y2;->h(Lru/n;)V

    iput-object v4, p1, LD8/m;->j:LF1/Y2;

    :cond_7
    iget-object v4, p1, LD8/m;->l:LD8/p;

    if-nez v4, :cond_8

    new-instance v4, LD8/p;

    invoke-direct {v4, p1}, LD8/p;-><init>(LD8/m;)V

    iput-object v4, p1, LD8/m;->l:LD8/p;

    :cond_8
    iget-object v4, p1, LD8/m;->m:LD8/a;

    if-nez v4, :cond_9

    new-instance v4, LD8/a;

    invoke-direct {v4, p1}, LD8/a;-><init>(LD8/m;)V

    iput-object v4, p1, LD8/m;->m:LD8/a;

    :cond_9
    iget-object v4, p1, LD8/m;->p:Lru/h;

    if-eqz v4, :cond_a

    iget-object v5, p1, LD8/m;->l:LD8/p;

    iput-object v5, v4, Lru/h;->w:Lru/o;

    new-instance v5, LD8/o;

    invoke-direct {v5, p1}, LD8/o;-><init>(LD8/m;)V

    invoke-virtual {v4, v5}, Lru/h;->L(Lru/n;)V

    :cond_a
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object p1, p1, LD8/m;->j:LF1/Y2;

    iget v2, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v4}, LF1/q4;->f(II)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "RenderEngineV2"

    const-string v4, "initCameraScreenNail"

    invoke-static {v2, v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lf6/u;

    invoke-direct {p1}, Lf6/u;-><init>()V

    iput-object p1, p0, Lcom/android/camera/Camera;->J1:Lf6/u;

    new-instance p1, LO4/b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, LO4/b;->a:Lcom/android/camera/Camera;

    iput-object p1, p0, Lcom/android/camera/Camera;->K1:LO4/b;

    new-instance p1, LW5/d;

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v2

    invoke-virtual {v2}, Lvr/m;->k()Z

    invoke-direct {p1, p0}, LW5/d;-><init>(Lcom/android/camera/Camera;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->S1:LW5/d;

    new-instance p1, Lu6/j;

    invoke-direct {p1, p0}, Lu6/j;-><init>(Lcom/android/camera/Camera;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->N1:Lu6/j;

    new-instance p1, Lf6/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/Camera;->M1:Lf6/a;

    sget-object p1, Lf2/d;->c:Lf2/d;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p1, Lf2/d;->b:Ljava/lang/ref/WeakReference;

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->w3()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, La2/a;

    invoke-direct {p1}, Landroid/content/BroadcastReceiver;-><init>()V

    iget-object v2, p0, LW/f;->a:Landroidx/lifecycle/y;

    iput-object p0, p1, La2/a;->a:Lcom/android/camera/Camera;

    invoke-virtual {v2, p1}, Landroidx/lifecycle/y;->a(Landroidx/lifecycle/w;)V

    :cond_b
    const-string p1, "registerProtocol"

    :try_start_0
    const-string v2, "Startup."

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->registerProtocol()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance p1, Lfv/x;

    invoke-direct {p1}, Lfv/x;-><init>()V

    iput-boolean v0, p1, Lfv/x;->a:Z

    invoke-static {p0}, LCv/a;->l(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "getIntent(...)"

    invoke-static {v2, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lvr/m;->n(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v2}, Lvr/m;->x(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_1

    :cond_c
    move v2, v1

    goto :goto_2

    :cond_d
    :goto_1
    move v2, v0

    :goto_2
    new-instance v4, Lk7/i;

    invoke-direct {v4, v2}, Lk7/i;-><init>(Z)V

    invoke-static {p0}, LF6/k;->e(Landroidx/lifecycle/x;)Landroidx/lifecycle/q;

    move-result-object v2

    new-instance v5, La7/b;

    invoke-direct {v5, p0, p1, v4, v3}, La7/b;-><init>(Lcom/android/camera/Camera;Lfv/x;Lk7/i;LTu/e;)V

    const/4 p1, 0x3

    invoke-static {v2, v3, v3, v5, p1}, Lyw/f;->b(Lyw/D;LTu/h;Lyw/F;Lev/p;I)Lyw/B0;

    iput-object v4, p0, Lcom/android/camera/Camera;->C1:Lk7/i;

    iget-object v2, p0, Lcom/android/camera/a;->d1:La7/a;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    sget-object v2, Lio/reactivex/schedulers/a;->a:Lio/reactivex/v;

    new-instance v4, LC4/H;

    invoke-direct {v4, p0, v0}, LC4/H;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v4}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :try_start_1
    sget-object v2, LK2/b;->c:Lcom/android/camera/CameraAppImpl;

    invoke-static {v2}, Lxx/k;->a(Landroid/content/Context;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "DisplayHelper"

    const-string v5, "checkDeviceHasNavigationBar exception"

    invoke-static {v4, v5, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    :goto_3
    if-eqz v2, :cond_f

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x2700

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v4, -0x80000000

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-le v4, v5, :cond_e

    goto :goto_4

    :cond_e
    move p1, v0

    :goto_4
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    sput p1, Lcom/xiaomi/camera/effect/a;->a:I

    sget-object p1, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "ThermalDetector"

    const-string v5, "onCreate"

    invoke-static {v4, v5, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p1, Lcom/android/camera/c;->d:Landroid/content/Context;

    iget-object v2, p0, LW/f;->a:Landroidx/lifecycle/y;

    iput-object v2, p1, Lcom/android/camera/c;->i:Landroidx/lifecycle/y;

    invoke-virtual {v2, p1}, Landroidx/lifecycle/y;->a(Landroidx/lifecycle/w;)V

    iput v1, p1, Lcom/android/camera/c;->c:I

    sget-boolean p1, Lcom/android/camera/b;->k:Z

    sget-object p1, Lcom/android/camera/b$a;->a:Lcom/android/camera/b;

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v4, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v4, LńňŊĉŊŎĉŃłőŎńłĉşŎņňŊŎĉŤňŊŊňŉšŋŎŗ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "BatteryDetector"

    invoke-static {v7, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p1, Lcom/android/camera/b;->b:Landroid/content/Context;

    if-eqz v5, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p1, Lcom/android/camera/b;->b:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/camera/b;->a:Landroid/content/IntentFilter;

    if-eqz v4, :cond_11

    const-string/jumbo v4, "sys.action.lowbattery.control"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v4, LF1/s0;

    invoke-direct {v4, p1}, LF1/s0;-><init>(Lcom/android/camera/b;)V

    iput-object v4, p1, Lcom/android/camera/b;->c:Landroid/content/BroadcastReceiver;

    goto :goto_5

    :cond_11
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v4, LF1/t0;

    invoke-direct {v4, p1}, LF1/t0;-><init>(Lcom/android/camera/b;)V

    iput-object v4, p1, Lcom/android/camera/b;->c:Landroid/content/BroadcastReceiver;

    :goto_5
    iget-object v4, p0, LW/f;->a:Landroidx/lifecycle/y;

    invoke-virtual {v4, p1}, Landroidx/lifecycle/y;->a(Landroidx/lifecycle/w;)V

    :goto_6
    iget-object p1, p0, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz p1, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onActivityCreate: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, LF1/p4;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "StreamingController"

    invoke-static {v6, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p1, LF1/p4;->j:Lcom/android/camera/a;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_12

    move-object v4, v3

    goto :goto_7

    :cond_12
    invoke-static {v4}, Lvr/m;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-static {v4}, Lvr/m;->o(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p1}, LF1/b4;->q()V

    :cond_13
    invoke-static {}, Lcom/android/camera/foregroundinfo/ForegroundInfoListener;->isNeedForegroundInfo()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {}, Lcom/android/camera/foregroundinfo/ForegroundInfoListener;->getInstance()Lcom/android/camera/foregroundinfo/ForegroundInfoListener;

    move-result-object p1

    iget-object v4, p0, LW/f;->a:Landroidx/lifecycle/y;

    invoke-virtual {v4, p1}, Landroidx/lifecycle/y;->a(Landroidx/lifecycle/w;)V

    :cond_14
    invoke-static {}, LJe/c;->Q()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-static {}, LY2/j;->d()LY2/j;

    move-result-object p1

    iget-object v4, p0, LW/f;->a:Landroidx/lifecycle/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v5

    invoke-virtual {v5}, Ls4/e;->a()I

    move-result v5

    const-string v6, "onActivityCreate "

    invoke-static {v5, v6}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "FlatSelfieManager"

    invoke-static {v8, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x5

    const-class v7, LQ6/T0;

    if-eq v5, v6, :cond_16

    const/4 v6, 0x6

    if-eq v5, v6, :cond_15

    goto :goto_8

    :cond_15
    iget-boolean v6, p1, LY2/j;->g:Z

    if-eqz v6, :cond_17

    sget-object v6, LN6/h$a;->a:LN6/h;

    invoke-virtual {v6, v7}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, LK4/b;

    invoke-direct {v7, p1, v5}, LK4/b;-><init>(LY2/j;I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-boolean v1, p1, LY2/j;->g:Z

    goto :goto_8

    :cond_16
    invoke-static {}, Lcom/android/camera/data/data/m;->P()Z

    move-result v6

    if-nez v6, :cond_17

    sget-object v6, LN6/h$a;->a:LN6/h;

    invoke-virtual {v6, v7}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, LEs/K;

    invoke-direct {v7, v5}, LEs/K;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_17
    :goto_8
    invoke-static {}, LJe/d;->c()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v5

    invoke-virtual {v5}, Ls4/e;->e()Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p1, LY2/j;->e:LY2/i;

    if-nez v5, :cond_18

    new-instance v5, LY2/i;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p1, LY2/j;->e:LY2/i;

    :cond_18
    iget-object p1, p1, LY2/j;->e:LY2/i;

    invoke-virtual {v4, p1}, Landroidx/lifecycle/y;->a(Landroidx/lifecycle/w;)V

    :cond_19
    invoke-static {}, LK2/j;->c()Z

    move-result p1

    if-eqz p1, :cond_22

    sget-object p1, Lcom/android/camera/guide/a;->i:Lcom/android/camera/guide/a$b;

    invoke-virtual {p1}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    move-result-object p1

    iget-object v4, p0, LW/f;->a:Landroidx/lifecycle/y;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v6, "lifecycle"

    invoke-static {v4, v6}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/camera/Camera;

    if-eqz v6, :cond_1a

    check-cast v5, Lcom/android/camera/Camera;

    goto :goto_9

    :cond_1a
    move-object v5, v3

    :goto_9
    if-nez v5, :cond_1b

    goto/16 :goto_c

    :cond_1b
    invoke-static {v5}, LF1/x0;->a(Lcom/android/camera/Camera;)Landroid/view/Display;

    move-result-object v6

    if-eqz v6, :cond_1c

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    goto :goto_a

    :cond_1c
    move v6, v1

    :goto_a
    iget-object v7, p1, Lcom/android/camera/guide/a;->g:Ljava/lang/Integer;

    iput-object v7, p1, Lcom/android/camera/guide/a;->f:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p1, Lcom/android/camera/guide/a;->g:Ljava/lang/Integer;

    if-eqz v6, :cond_1e

    iget-object v7, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v7}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S4()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-static {}, Lcom/android/camera/data/data/m;->P()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-static {v1}, Lcom/android/camera/data/data/m;->E0(Z)V

    invoke-static {}, LQ6/S0;->a()Ljava/util/Optional;

    move-result-object v7

    new-instance v8, LQ5/t;

    invoke-direct {v8, v1}, LQ5/t;-><init>(I)V

    new-instance v9, LH4/h;

    const/4 v10, 0x2

    invoke-direct {v9, v8, v10}, LH4/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v7, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1d
    invoke-virtual {v5}, Lcom/android/camera/a;->Wq()Z

    move-result v7

    if-eqz v7, :cond_1e

    goto :goto_c

    :cond_1e
    iget-object v7, p1, Lcom/android/camera/guide/a;->a:Lcom/android/camera/guide/a$c;

    if-eqz v7, :cond_21

    invoke-static {}, Lcom/android/camera/foregroundinfo/ForegroundInfoListener;->getInstance()Lcom/android/camera/foregroundinfo/ForegroundInfoListener;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/camera/foregroundinfo/ForegroundInfoListener;->removeListener(Lt4/a;)Z

    iget-object v8, v4, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/n$b;

    sget-object v9, Landroidx/lifecycle/n$b;->b:Landroidx/lifecycle/n$b;

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-ltz v8, :cond_1f

    goto :goto_b

    :cond_1f
    move v0, v1

    :goto_b
    if-eqz v0, :cond_20

    invoke-virtual {v4, v7}, Landroidx/lifecycle/y;->d(Landroidx/lifecycle/w;)V

    :cond_20
    iput-object v3, p1, Lcom/android/camera/guide/a;->a:Lcom/android/camera/guide/a$c;

    :cond_21
    new-instance v0, Lcom/android/camera/guide/a$c;

    invoke-direct {v0, v6}, Lcom/android/camera/guide/a$c;-><init>(I)V

    iput-object v0, p1, Lcom/android/camera/guide/a;->a:Lcom/android/camera/guide/a$c;

    new-instance p1, LF1/l1;

    invoke-direct {p1, v5}, LF1/l1;-><init>(Lcom/android/camera/Camera;)V

    iput-object p1, v0, Lcom/android/camera/guide/a$c;->b:LF1/l1;

    invoke-virtual {v4, v0}, Landroidx/lifecycle/y;->a(Landroidx/lifecycle/w;)V

    :cond_22
    :goto_c
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p1

    const-string v0, "A1:createActivity"

    invoke-virtual {p1, v0}, LF6/q;->g(Ljava/lang/String;)J

    invoke-virtual {v2}, LJe/c;->b1()Z

    move-result p1

    if-eqz p1, :cond_23

    new-instance p1, Lcom/android/camera/Camera$q;

    invoke-direct {p1, p0}, Lcom/android/camera/Camera$q;-><init>(Lcom/android/camera/Camera;)V

    invoke-static {p1}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->setMIVIStatusListener(Lcom/xiaomi/camera/mivi/MIVICaptureManager$MIVIStatusListener;)V

    :cond_23
    iget-object p1, p0, Lcom/android/camera/Camera;->b2:Lcom/android/camera/Camera$p;

    invoke-static {p1}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->setImageProcessorListener(Lcom/xiaomi/camera/mivi/MIVICaptureManager$ImageProcessorListener;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->cs()V

    invoke-virtual {p0}, LX1/c;->xq()LX1/j;

    move-result-object p1

    iget-object p1, p1, LX1/j;->f:LPu/n;

    invoke-virtual {p1}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LY1/e;

    iget-object p1, p1, LY1/e;->a:Lzr/b;

    new-instance v0, LF1/Z0;

    invoke-direct {v0, p0}, LF1/Z0;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p1, p0, v0}, Lzr/b;->e(Landroidx/lifecycle/x;Landroidx/lifecycle/F;)V

    invoke-virtual {p0}, LX1/c;->xq()LX1/j;

    move-result-object p1

    invoke-virtual {p1}, LX1/j;->m()LY1/i;

    move-result-object p1

    iget-object p1, p1, LY1/i;->d:Lzr/b;

    new-instance v0, LF1/a1;

    invoke-direct {v0, p0}, LF1/a1;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p1, p0, v0}, Lzr/b;->e(Landroidx/lifecycle/x;Landroidx/lifecycle/F;)V

    sget-boolean p1, Lcom/android/camera/Camera;->D2:Z

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/camera/a;->L0:Lcom/android/camera/ui/CameraRootView;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lvr/x;

    iget-object v1, p0, Lcom/android/camera/a;->L0:Lcom/android/camera/ui/CameraRootView;

    invoke-direct {v0, p1, v1}, Lvr/x;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->n2:Lvr/x;

    :cond_24
    invoke-virtual {v2}, LJe/c;->m1()Z

    move-result p1

    if-eqz p1, :cond_25

    new-instance p1, Landroidx/lifecycle/d0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/d0;-><init>(Landroidx/lifecycle/g0;)V

    const-class v0, LXj/b;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/d0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object p1

    check-cast p1, LXj/b;

    iget-object p1, p1, LXj/b;->d:Landroidx/lifecycle/E;

    new-instance v0, LF1/N1;

    invoke-direct {v0, p0}, LF1/N1;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/C;->e(Landroidx/lifecycle/x;Landroidx/lifecycle/F;)V

    :cond_25
    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate end "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final Hr()V
    .locals 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnclosedTrace"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "Camera::notifyOnFirstFrameArrived"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/camera/Camera;->o2:I

    invoke-static {}, LJe/c;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ls3/c$b;->a:Ls3/c;

    iget-object v5, v1, Lcom/android/camera/a;->u0:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0, v5}, Ls3/c;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, v1, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    new-instance v5, LF1/z1;

    invoke-direct {v5, v1, v3}, LF1/z1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, v1, Lcom/android/camera/a;->j0:Z

    iget-object v5, v1, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    invoke-static {v0, v1, v5}, LS8/i;->c(ZLcom/android/camera/Camera;Lcom/android/camera/a$c;)V

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    invoke-virtual {v0}, Loh/b;->m()Ljava/util/Optional;

    move-result-object v0

    new-instance v5, LF1/A1;

    invoke-direct {v5, v1, v4, v3}, LF1/A1;-><init>(LN6/a;II)V

    invoke-virtual {v0, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    const-wide/16 v5, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lj9/a;->m()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    sget-object v7, LJe/c$b;->a:LJe/c;

    iget-object v7, v7, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v7, L弭弡弣彠弣弧彠弪弫弸弧弭弫彠弖弻弯张強弻弯张;

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v8, v5

    if-lez v10, :cond_3

    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, LRh/c;->d(J)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :goto_1
    iget-object v0, v1, Lcom/android/camera/Camera;->Y1:LF1/n3;

    iget-object v7, v0, LF1/n3;->g:LF1/U1;

    sget-object v8, Lio/reactivex/schedulers/a;->a:Lio/reactivex/v;

    const-wide/16 v9, 0x1f4

    invoke-static {v8, v7, v9, v10}, LAr/d;->g(Lio/reactivex/v;Ljava/lang/Runnable;J)Lio/reactivex/disposables/b;

    move-result-object v7

    iput-object v7, v0, LF1/n3;->d:Lio/reactivex/disposables/b;

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->I1()I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->isDolbyVisionPreview()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/android/camera/a;->Ck()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/m;->d(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v7, v2

    goto :goto_2

    :cond_6
    move v7, v3

    :goto_2
    iget-object v0, v1, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz v0, :cond_7

    iget-object v0, v0, LD8/m;->p:Lru/h;

    iget-object v0, v0, Lru/h;->M:LCu/w;

    iget-object v0, v0, LCu/w;->g:Landroid/view/Surface;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v8

    if-eqz v8, :cond_7

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "setForceHdrEnabled"

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x23

    if-lt v0, v8, :cond_7

    iget-object v0, v1, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    new-instance v8, LF1/X0;

    invoke-direct {v8, v1, v2}, LF1/X0;-><init>(Lcom/android/camera/Camera;I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v8, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setForceHdrEnabled failed "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v8, v0, v9}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    if-eqz v7, :cond_8

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, LOh/b;->b(Landroid/view/View;)V

    :cond_8
    :goto_4
    invoke-virtual {v1}, Lcom/android/camera/a;->Ck()I

    move-result v0

    const/4 v7, 0x2

    const/16 v8, 0xfe

    if-eq v0, v8, :cond_9

    iget-object v0, v1, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    const-wide/16 v9, 0x7d0

    invoke-virtual {v0, v7, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    iget-object v0, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "notifyOnFirstFrameArrived arrivedType = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-eq v4, v0, :cond_d

    const/16 v0, 0x8

    if-eq v4, v0, :cond_d

    monitor-enter p0

    :try_start_1
    const-string v0, "ActivityBase"

    const-string v9, "beforeFrameAvailable start"

    invoke-static {v0, v9}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lcom/android/camera/a;->Ck()I

    move-result v0

    if-ne v0, v8, :cond_a

    const-string v0, "ActivityBase"

    const-string v7, "beforeFrameAvailable interrupt"

    invoke-static {v0, v7}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_a
    :try_start_2
    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lcom/android/camera/a;->Ck()I

    move-result v0

    const/16 v9, 0xaf

    if-ne v0, v9, :cond_b

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->v5()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v9, Lr2/c0;

    invoke-virtual {v0, v9}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c0;

    if-eqz v0, :cond_b

    iget-boolean v0, v0, Lr2/c0;->p:Z

    if-eqz v0, :cond_b

    const-string v0, "ActivityBase"

    const-string v7, "beforeFrameAvailable: pixel capture still in progress"

    invoke-static {v0, v7}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_6

    :cond_b
    :try_start_3
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v9, Lv2/F0;

    invoke-virtual {v0, v9}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    invoke-virtual {v0}, Lv2/F0;->b()I

    move-result v0

    invoke-virtual {v1}, Lcom/android/camera/a;->Ck()I

    move-result v9

    const/16 v10, 0xab

    if-ne v9, v10, :cond_c

    if-ne v0, v7, :cond_c

    iget-object v0, v1, Lcom/android/camera/a;->C0:LD8/m;

    invoke-virtual {v0}, LD8/m;->Z()V

    :cond_c
    iget-object v0, v1, Lcom/android/camera/a;->C0:LD8/m;

    invoke-virtual {v0}, LD8/m;->R()V

    const-string v0, "ActivityBase"

    const-string v7, "beforeFrameAvailable end"

    invoke-static {v0, v7}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto :goto_6

    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_d
    :goto_6
    sget-object v0, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v7, LF1/B1;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v7}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    new-instance v7, LC4/n;

    const/4 v9, 0x3

    invoke-direct {v7, v1, v9}, LC4/n;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v7}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v0

    invoke-virtual {v0}, LS1/g;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v0

    invoke-virtual {v0, v4}, LS1/g;->c(I)V

    :cond_e
    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    invoke-virtual {v0}, Loh/b;->m()Ljava/util/Optional;

    move-result-object v0

    new-instance v7, LCs/o;

    invoke-direct {v7, v1, v2}, LCs/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, v1, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz v0, :cond_10

    new-array v7, v3, [Ljava/lang/Object;

    const-string v9, "RemoteControlAgent"

    const-string v10, "onFirstFrameAvailable"

    invoke-static {v9, v10, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v7, v3, [Ljava/lang/Object;

    const-string/jumbo v10, "setCameraInteractable"

    invoke-static {v9, v10, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v7, v0, LF1/p4;->b:Z

    if-nez v7, :cond_f

    const-string/jumbo v7, "setCameraInteractable: not initialized"

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v9, v7, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/16 v9, 0x1009

    invoke-virtual {v0, v9, v7}, LF1/b4;->S0(ILandroid/os/Bundle;)V

    :goto_7
    invoke-virtual {v0}, LF1/b4;->p0()V

    :cond_10
    iget-boolean v0, v1, Lcom/android/camera/Camera;->V1:Z

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    if-eqz v0, :cond_12

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    iput v7, v9, Landroid/os/Message;->what:I

    iget v7, v1, Lcom/android/camera/Camera;->W1:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    iget-wide v9, v1, Lcom/android/camera/a;->X0:J

    cmp-long v0, v9, v5

    if-lez v0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v9, v1, Lcom/android/camera/a;->X0:J

    sub-long/2addr v5, v9

    const-wide/16 v9, 0xbb8

    cmp-long v0, v5, v9

    if-lez v0, :cond_13

    sget-object v0, LG1/b;->d:Ljava/lang/String;

    sget-object v9, LG1/b$b;->a:LG1/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v1}, Lcom/android/camera/a;->Ck()I

    move-result v12

    const/4 v11, -0x1

    const/4 v10, 0x3

    invoke-virtual/range {v9 .. v14}, LG1/b;->a(IIIJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual {v1}, Lcom/android/camera/a;->Ck()I

    move-result v18

    const/16 v20, 0x0

    const v15, 0x36d63d13

    const/16 v19, -0x1

    invoke-static/range {v15 .. v20}, Lki/c;->b(IJIILjava/util/HashMap;)V

    :cond_13
    const-wide/16 v5, -0x1

    iput-wide v5, v1, Lcom/android/camera/a;->X0:J

    invoke-virtual {v1}, Lcom/android/camera/a;->Ck()I

    move-result v0

    if-ne v0, v8, :cond_14

    iget-object v0, v1, Lcom/android/camera/a;->C0:LD8/m;

    sget-object v5, Ltu/a;->g:Ltu/a;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, LD8/m;->O(Ltu/a;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->o(I)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_15
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v5

    invoke-virtual {v5}, Lu2/Q;->S()Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    sget-boolean v5, LJe/c;->k:Z

    sget-object v5, LJe/c$b;->a:LJe/c;

    iget-object v5, v5, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Q7()Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, v1, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    new-instance v6, LF1/T1;

    invoke-direct {v6, v1, v3}, LF1/T1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    iget-object v5, v1, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    new-instance v6, LF1/U1;

    invoke-direct {v6, v1, v3}, LF1/U1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v0, :cond_18

    invoke-interface {v0, v4}, Lcom/android/camera/module/W;->notifyFirstFrameArrived(I)V

    :cond_18
    sget-object v0, LF1/U2$a;->a:LF1/U2;

    iput-boolean v3, v0, LF1/U2;->d:Z

    iget-boolean v4, v1, Lcom/android/camera/a;->K0:Z

    if-eqz v4, :cond_19

    iput-boolean v3, v1, Lcom/android/camera/a;->K0:Z

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, LJe/c;->a()Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "CameraBrightness"

    const-string v5, "onBrightnessAdjustReady: adjustBrightness"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, LF1/U2;->a()V

    :cond_19
    invoke-static {}, LK2/b;->U()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/android/camera/a;->W:LF1/i4;

    invoke-virtual {v0, v2}, LF1/i4;->x(Z)V

    :cond_1a
    sput-boolean v2, LHa/d;->b:Z

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sSDKScheduler:Lio/reactivex/v;

    new-instance v4, LF1/V1;

    invoke-direct {v4, v1, v3}, LF1/V1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v4}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->F()V

    invoke-virtual {v0}, LJe/c;->E()V

    iget-boolean v0, v1, Lcom/android/camera/Camera;->d2:Z

    if-nez v0, :cond_1d

    invoke-virtual {v1}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v0

    invoke-virtual {v0}, Lvr/m;->k()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_8

    :cond_1b
    iput-boolean v2, v1, Lcom/android/camera/Camera;->d2:Z

    iget-object v0, v1, Lcom/android/camera/Camera;->i2:LF1/D4;

    if-nez v0, :cond_1c

    new-instance v0, LF1/D4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/camera/Camera;->i2:LF1/D4;

    :cond_1c
    sget-object v0, Lrr/i;->a:Lio/reactivex/disposables/b;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v2, Lrr/a;->a:Lrr/a;

    invoke-virtual {v1}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object v4

    iget-object v5, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/camera/Camera;->i2:LF1/D4;

    invoke-static {v0, v2, v4, v5, v6}, Lrr/i;->a(Landroid/app/Application;Lrr/a;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ltr/c$a;)V

    :cond_1d
    :goto_8
    invoke-static {}, Lcom/android/camera/data/data/m;->n0()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/camera/Camera;->e2:Z

    iget-boolean v0, v1, Lcom/android/camera/a;->a0:Z

    if-nez v0, :cond_1e

    sget-object v0, Lt5/a;->q:Lio/reactivex/internal/schedulers/n;

    sget-object v0, Lt5/a$b;->a:Lt5/a;

    invoke-virtual {v0}, Lt5/a;->g()V

    invoke-static {}, Lr5/a;->b()LGg/P;

    move-result-object v0

    new-instance v2, LF1/C1;

    invoke-direct {v2, v1, v3}, LF1/C1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, LGg/P;->b(Landroidx/lifecycle/x;Ljava/util/function/Consumer;)V

    :cond_1e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final I7(Lcom/android/camera/module/loader/base/StartControl;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/camera/a;->q0:J

    invoke-static {}, Lvr/Z;->a()V

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/camera/Camera;->X1:Z

    invoke-virtual {v1}, Lcom/android/camera/a;->Ck()I

    move-result v5

    iget-object v0, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "onModeSelected from 0x%x to 0x%x, facing = %d"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v10

    invoke-virtual {v10}, Lu2/Q;->C()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->isLaunchType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    sget-object v6, LF6/a;->L:LF6/a;

    filled-new-array {v6}, [LF6/a;

    move-result-object v6

    invoke-virtual {v0, v6}, LF6/q;->n([LF6/a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    sget-object v6, LF6/a;->O:LF6/a;

    invoke-virtual {v0, v6}, LF6/q;->r(LF6/a;)V

    :cond_0
    sget-boolean v0, LQa/b;->f:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/proc/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/fd/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_2

    :cond_1
    array-length v7, v6

    const-string v0, "printFd start================================================="

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "DUMP_FD"

    const-string v10, "printFd pid: "

    invoke-static {v9, v0, v8, v10}, LF1/Q;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", length: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v9, v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_2

    :try_start_0
    aget-object v0, v6, v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v9, v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "printFd e: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", files["

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v6, v8

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v9, v0, v10}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/2addr v8, v3

    goto :goto_0

    :cond_2
    const-string v0, "print fd, end ================================================="

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v9, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    const/4 v0, -0x1

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_5

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v7

    if-eq v7, v5, :cond_5

    iget-object v7, v1, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v7

    const/16 v8, 0xd6

    if-ne v7, v8, :cond_4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v7

    const-string v8, "pref_camera_super_night_video_quality"

    const-string v9, "6"

    invoke-virtual {v7, v8, v9}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    const-string v7, ""

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v10

    invoke-virtual {v10}, Lu2/Q;->C()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v8, v9, v10, v11, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v8, v7}, LPh/h;->l(I[Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0xc

    invoke-static {v8, v7}, LPh/h;->l(I[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v7

    sget-object v8, LF6/a;->L:LF6/a;

    filled-new-array {v8}, [LF6/a;

    move-result-object v8

    invoke-virtual {v7, v8}, LF6/q;->e([LF6/a;)V

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v7

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    invoke-virtual {v8}, Lu2/Q;->I()I

    move-result v8

    sput v5, LK7/l;->b:I

    sput v7, LK7/l;->c:I

    sput v8, LK7/l;->d:I

    :cond_5
    const/4 v7, 0x5

    if-eq v5, v6, :cond_7

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v6

    if-ne v6, v5, :cond_6

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v6

    invoke-virtual {v6}, Lu2/Q;->C()I

    move-result v6

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    invoke-virtual {v8}, Lu2/Q;->I()I

    move-result v8

    if-eq v6, v8, :cond_7

    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v9

    invoke-virtual {v9}, Lu2/Q;->C()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v6, v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, LPh/h;->l(I[Ljava/lang/Object;)V

    :cond_7
    iget-object v6, v1, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz v6, :cond_8

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v8

    invoke-virtual {v6, v8}, LF1/b4;->X1(I)V

    iget-object v6, v1, Lcom/android/camera/a;->D0:LF1/b4;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    invoke-virtual {v8}, Lu2/Q;->C()I

    move-result v8

    invoke-virtual {v6, v8}, LF1/b4;->R1(I)V

    :cond_8
    sget-object v6, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v8, LF1/x1;

    invoke-direct {v8, v1, v4}, LF1/x1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v6, v8}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    sget-boolean v6, LJe/c;->k:Z

    sget-object v6, LJe/c$b;->a:LJe/c;

    iget-object v8, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "camera.feature.isSupportAiModule"

    invoke-static {v8, v4}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v8

    const/16 v9, 0xa8

    if-eqz v8, :cond_9

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v8

    if-ne v8, v9, :cond_9

    sget-object v8, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v10, LF1/y1;

    invoke-direct {v10, v4}, LF1/y1;-><init>(I)V

    invoke-static {v8, v10}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_9
    iput-object v2, v1, Lcom/android/camera/Camera;->L1:Lcom/android/camera/module/loader/base/StartControl;

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v8

    sput v8, Lcom/android/camera/module/Y;->a:I

    invoke-static {}, LH6/d;->d()Z

    move-result v8

    if-nez v8, :cond_a

    goto/16 :goto_f

    :cond_a
    invoke-virtual {v1}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v8

    invoke-virtual {v8}, LS1/g;->b()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v1}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v8

    invoke-virtual {v8, v4}, LS1/g;->f(Z)V

    :cond_b
    const-wide/16 v10, -0x1

    iput-wide v10, v1, Lcom/android/camera/a;->X0:J

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->isNeedBlurAnimation()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/camera/a;->X0:J

    :cond_c
    iput-boolean v3, v1, Lcom/android/camera/a;->Y:Z

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v8

    const/16 v11, 0xa2

    if-ne v11, v8, :cond_19

    const/16 v8, 0xe3

    if-eq v8, v5, :cond_19

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v5

    if-nez v5, :cond_19

    iget-object v5, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v5

    iget v8, v1, Lcom/android/camera/a;->d0:I

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->isRecording()Z

    move-result v12

    iget-object v13, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v14, "preCreateMediaRecorder: orientation = "

    const-string v15, ", isRecording "

    invoke-static {v8, v14, v15, v12}, LF1/p2;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    new-array v15, v4, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v13

    invoke-virtual {v13, v5}, Lu2/Q;->D(I)I

    move-result v13

    invoke-static {v13, v5, v3}, LB2/c;->c(IIZ)I

    move-result v14

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v15

    invoke-virtual {v15, v14}, Lu6/f;->O(I)Lj9/e;

    move-result-object v14

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v15

    const-class v9, Ls2/c;

    invoke-virtual {v15, v9}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls2/c;

    if-eqz v9, :cond_d

    invoke-virtual {v9, v5, v13, v14}, Ls2/c;->t(IILj9/e;)V

    :cond_d
    invoke-static {}, Lcom/android/camera/module/video/r;->a()Lcom/android/camera/module/video/r;

    move-result-object v9

    new-instance v14, Ljava/lang/ref/WeakReference;

    invoke-direct {v14, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v13, v8}, LBw/i;->I(II)I

    move-result v8

    const-string v15, "createFutureMediaRecorder: camera , = "

    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/Camera;

    iget-boolean v10, v9, Lcom/android/camera/module/video/r;->e:Z

    if-eqz v10, :cond_18

    if-nez v14, :cond_e

    goto/16 :goto_9

    :cond_e
    const-string v10, "MediaRecorderCreator"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "[VideoSwitch] createFutureMediaRecorder: mLastResult = "

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/camera/module/video/r;->c:Lcom/android/camera/module/video/h;

    if-nez v0, :cond_f

    move v0, v3

    goto :goto_4

    :cond_f
    move v0, v4

    :goto_4
    const-string v3, ", isRecording = "

    invoke-static {v7, v0, v3, v12}, LF1/B2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v10, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/android/camera/module/video/r;->c:Lcom/android/camera/module/video/h;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/camera/module/video/h;->c:Lcom/android/camera/module/video/E;

    iget v0, v0, Lcom/android/camera/module/video/E;->v:I

    if-ne v0, v11, :cond_10

    if-ne v0, v5, :cond_10

    iget-object v0, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v12, :cond_10

    const-string v0, "MediaRecorderCreator"

    const-string v3, "[VideoSwitch] createFutureMediaRecorder: mLastResult can be used"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_10
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/camera/module/video/r;->b(I)V

    :goto_5
    const/4 v3, 0x1

    goto :goto_6

    :cond_11
    const-string v0, "MediaRecorderCreator"

    const-string v3, "createFutureMediaRecorder: mLastResult is null"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :goto_6
    invoke-static {v13, v5, v3}, LB2/c;->c(IIZ)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_12

    goto/16 :goto_a

    :cond_12
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lu6/f;->O(I)Lj9/e;

    move-result-object v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v7, Lr2/f0;

    invoke-virtual {v3, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/f0;

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v7

    const-class v10, Ls2/a;

    invoke-virtual {v7, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls2/a;

    if-eqz v7, :cond_13

    invoke-virtual {v7, v5, v13, v0}, Ls2/a;->x(IILj9/e;)V

    :cond_13
    if-eqz v3, :cond_14

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v7

    iget v7, v7, Lu2/Q;->u:I

    invoke-virtual {v3, v5, v13, v7, v0}, Lr2/f0;->J(IIILj9/e;)V

    :cond_14
    iget-object v0, v9, Lcom/android/camera/module/video/r;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    new-instance v0, LF1/x3;

    const-string v3, "MediaRecorderExecutor"

    const/4 v7, 0x5

    invoke-direct {v0, v3, v7}, LF1/x3;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, v9, Lcom/android/camera/module/video/r;->a:Ljava/util/concurrent/ExecutorService;

    :cond_16
    iget-object v3, v9, Lcom/android/camera/module/video/r;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    const-string v0, "MediaRecorderCreator"

    const-string v7, "createFutureMediaRecorder: E"

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v0, v7, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/camera/module/video/E;

    invoke-direct {v0}, Lcom/android/camera/module/video/E;-><init>()V

    new-instance v7, Lcom/android/camera/module/video/u;

    invoke-direct {v7}, Lcom/android/camera/module/video/u;-><init>()V

    new-instance v10, Lcom/android/camera/module/video/AiAudioController;

    invoke-direct {v10, v7}, Lcom/android/camera/module/video/AiAudioController;-><init>(Lcom/android/camera/module/video/u;)V

    new-instance v12, Lfq/b$a;

    invoke-direct {v12}, Lfq/b$a;-><init>()V

    new-instance v11, Lcom/android/camera/module/video/A;

    invoke-direct {v11, v0, v7, v12}, Lcom/android/camera/module/video/A;-><init>(Lcom/android/camera/module/video/E;Lcom/android/camera/module/video/u;Lfq/b$a;)V

    iget-object v4, v0, Lcom/android/camera/module/video/E;->i:Lo7/a;

    if-nez v4, :cond_17

    new-instance v4, Lo7/a;

    move-object/from16 v20, v7

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lo7/a;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/camera/module/video/E;->i:Lo7/a;

    move-object/from16 v21, v12

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v7, v12}, Lo7/a;->h(ZLandroid/content/Intent;)V

    invoke-virtual {v14}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v4

    invoke-virtual {v0, v13, v5, v4, v8}, Lcom/android/camera/module/video/E;->l(IILvr/m;I)V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_17
    move-object/from16 v20, v7

    move-object/from16 v21, v12

    :goto_7
    new-instance v4, Lcom/android/camera/module/video/r$a;

    invoke-direct {v4, v11, v10, v14, v5}, Lcom/android/camera/module/video/r$a;-><init>(Lcom/android/camera/module/video/A;Lcom/android/camera/module/video/AiAudioController;Lcom/android/camera/Camera;I)V

    iget-object v5, v9, Lcom/android/camera/module/video/r;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v17

    new-instance v16, Lcom/android/camera/module/video/h;

    move-object/from16 v19, v0

    move-object/from16 v22, v10

    move-object/from16 v18, v11

    invoke-direct/range {v16 .. v22}, Lcom/android/camera/module/video/h;-><init>(Ljava/util/concurrent/Future;Lcom/android/camera/module/video/A;Lcom/android/camera/module/video/E;Lcom/android/camera/module/video/u;Lfq/b$a;Lcom/android/camera/module/video/AiAudioController;)V

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/android/camera/module/video/r;->c:Lcom/android/camera/module/video/h;

    const-string v0, "MediaRecorderCreator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mLastResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/camera/module/video/r;->c:Lcom/android/camera/module/video/h;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/android/camera/module/video/r;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v9, Lcom/android/camera/module/video/r;->c:Lcom/android/camera/module/video/h;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MediaRecorderCreator"

    const-string v4, "createFutureMediaRecorder: X"

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v3

    goto :goto_a

    :goto_8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_18
    :goto_9
    const-string v0, "MediaRecorderCreator"

    const-string v3, "createFutureMediaRecorder: FoldState changed\uff0ccan\'t createFutureMediaRecorder"

    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v9, Lcom/android/camera/module/video/r;->e:Z

    :cond_19
    :goto_a
    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_1a

    invoke-virtual {v1}, Lcom/android/camera/a;->Ck()I

    move-result v0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    const/4 v7, 0x0

    iput-boolean v7, v3, Lu2/Q;->B:Z

    const/16 v3, 0xa2

    if-ne v0, v3, :cond_1a

    invoke-virtual {v6}, LJe/c;->z1()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {v0}, Lcom/android/camera/data/data/E;->U(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->P()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->o1(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const/4 v3, 0x1

    iput-boolean v3, v0, Lu2/Q;->B:Z

    :cond_1a
    invoke-virtual {v1}, Lcom/android/camera/a;->Rq()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_1b
    invoke-static {v1}, Lq8/K0;->b(Landroid/app/Activity;)Lq8/K0;

    move-result-object v0

    const/4 v12, 0x0

    iput-object v12, v0, Lq8/K0;->i:Lcom/android/camera/module/W;

    const-string v0, "enterNewMode"

    new-instance v3, LCs/j;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1, v2}, LCs/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v0}, Lvr/a0;->b(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/a;->or(I)V

    iget-boolean v0, v1, Lcom/android/camera/a;->M0:Z

    if-nez v0, :cond_1e

    iget-boolean v0, v1, Lcom/android/camera/a;->N0:Z

    if-nez v0, :cond_1e

    iget-object v0, v1, Lcom/android/camera/Camera;->z1:Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    if-eqz v0, :cond_1e

    iget-object v0, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Q7()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->o(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->S()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    iget-object v0, v1, Lcom/android/camera/Camera;->z1:Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/data/data/w;->y0(I)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->c(IZ)V

    :cond_1d
    iget-object v0, v1, Lcom/android/camera/Camera;->z1:Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->setEnableControls(Z)V

    :cond_1e
    invoke-virtual {v6}, LJe/c;->l1()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v0

    sget-object v2, LR5/d;->a:Ljava/util/List;

    const-string v2, "camera.debug.skip_guide_dialog_state"

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lur/g;->e(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    goto :goto_d

    :cond_1f
    iget-object v2, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v3, 0xa8

    if-eq v0, v3, :cond_23

    const/16 v3, 0xaf

    if-eq v0, v3, :cond_22

    const/16 v3, 0xce

    if-eq v0, v3, :cond_21

    const/16 v3, 0xe8

    if-eq v0, v3, :cond_20

    sget-object v0, LQu/w;->a:LQu/w;

    goto :goto_b

    :cond_20
    sget-object v0, Le2/f;->d:Le2/f;

    invoke-static {v0}, LBw/i;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_21
    sget-object v0, Le2/f;->f:Le2/f;

    invoke-static {v0}, LBw/i;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_22
    sget-object v0, Le2/f;->e:Le2/f;

    invoke-static {v0}, LBw/i;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_23
    sget-object v0, Le2/f;->g:Le2/f;

    invoke-static {v0}, LBw/i;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Le2/f;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_25
    const/4 v7, 0x0

    invoke-static {v1, v3, v7}, LR5/d;->a(Landroid/app/Activity;Ljava/util/ArrayList;I)V

    goto :goto_e

    :cond_26
    :goto_d
    const/4 v7, 0x0

    :goto_e
    sget-boolean v0, Lcom/android/camera/Camera;->E2:Z

    if-eqz v0, :cond_27

    const v0, 0x1020002

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v7, v0}, Lvr/F;->a(ILandroid/view/View;)V

    :cond_27
    :goto_f
    return-void
.end method

.method public final Iq()V
    .locals 5

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, LJe/d;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, LK2/e;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0e03d9

    goto :goto_0

    :cond_1
    const v0, 0x7f0e03d7

    :goto_0
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0188

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraRootView;

    iput-object v0, p0, Lcom/android/camera/a;->L0:Lcom/android/camera/ui/CameraRootView;

    const v0, 0x7f0b088c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/a;->v0:Landroid/widget/FrameLayout;

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string v1, "5.1:surfaceViewCreate"

    invoke-virtual {v0, v1}, LF6/q;->q(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/a;->v0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Cr()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->fs(Z)V

    invoke-static {}, LK2/e;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/a;->A0:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/a;->A0:Landroid/widget/ImageView;

    sget v2, LK2/e;->g:I

    sget v3, LK2/e;->f:I

    mul-int/lit8 v3, v3, 0x9

    int-to-float v3, v3

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/a;->A0:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/a;->v0:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/a;->A0:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/Camera;->gs()V

    iget-object p0, p0, Lcom/android/camera/a;->A0:Landroid/widget/ImageView;

    const v0, 0x7f080faa

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    return-void
.end method

.method public final Ir(IZ)V
    .locals 8

    iget v0, p0, Lcom/android/camera/a;->f0:I

    const-string v1, " isSensor: "

    const-string v2, "[OrientationTrace] onOrientationChanged: orientation = "

    const-string v3, "OrientationEvent"

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    invoke-static {p1, v2, v1, p2}, LF1/p2;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-ne p1, v5, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    sget-object v7, LWj/a;->h:LWj/a;

    if-eqz v6, :cond_2

    invoke-static {}, LK2/b;->U()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    iput-boolean v6, v7, LWj/a;->f:Z

    :cond_3
    if-eqz p2, :cond_4

    if-ne p1, v5, :cond_4

    goto/16 :goto_4

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v5

    invoke-virtual {v5}, Lu2/Q;->K()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v5, "[OrientationTrace] sensor error,use default orientation: 0"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1, v5, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v4

    :cond_5
    iget v5, p0, Lcom/android/camera/a;->f0:I

    iget-boolean v6, p0, Lcom/android/camera/a;->g0:Z

    if-nez v6, :cond_6

    iget v6, p0, Lcom/android/camera/a;->d0:I

    invoke-static {p1, v6}, LOh/a;->d(II)I

    move-result v6

    iput v6, p0, Lcom/android/camera/a;->f0:I

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v6

    iget-object v6, v6, Loh/b;->o:Lcom/android/camera/module/W;

    iget v7, p0, Lcom/android/camera/a;->f0:I

    if-eq v7, v5, :cond_a

    invoke-static {p1, v2, v1, p2}, LF1/p2;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, p2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/android/camera/a;->e0:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/android/camera/Camera;->s2:J

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x7d0

    cmp-long p1, p1, v1

    if-ltz p1, :cond_9

    if-eqz v6, :cond_7

    invoke-interface {v6}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p1

    const/16 p2, 0xa3

    if-ne p1, p2, :cond_7

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    invoke-virtual {p1}, Lu2/Q;->O()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/camera/data/data/w;->Q()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    iget p1, p0, Lcom/android/camera/a;->f0:I

    if-nez p1, :cond_8

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/Camera;->es(J)V

    goto :goto_3

    :cond_8
    const-wide/16 p1, 0x190

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/Camera;->es(J)V

    goto :goto_3

    :cond_9
    :goto_2
    iput-boolean v0, p0, Lcom/android/camera/a;->g0:Z

    invoke-virtual {p0}, Lcom/android/camera/Camera;->ds()V

    :cond_a
    :goto_3
    if-eqz v6, :cond_b

    invoke-interface {v6}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p1

    const/16 p2, 0xbb

    if-eq p1, p2, :cond_c

    invoke-interface {v6}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p1

    const/16 p2, 0xbd

    if-eq p1, p2, :cond_c

    :cond_b
    invoke-static {}, LK2/e;->y()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/Camera;->ds()V

    :cond_d
    iget-object p1, p0, Lcom/android/camera/Camera;->C1:Lk7/i;

    if-eqz p1, :cond_e

    invoke-static {p0}, LK2/e;->f(Landroid/app/Activity;)I

    move-result p0

    iput p0, p1, Lk7/i;->b:I

    :cond_e
    :goto_4
    return-void
.end method

.method public final J0(I)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    sget-boolean v0, LQa/b;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    iget v0, v0, Lcom/android/camera/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/a;->a0:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iput p1, p0, Lcom/android/camera/Camera;->W1:I

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->sr(I)V

    return-void
.end method

.method public Jq()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v3, "onDestroy start"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/Camera;->l2:Lio/reactivex/disposables/b;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lio/reactivex/disposables/b;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v3, "onDestroy current activity need execute mCameraReleaseRunnable at once"

    invoke-static {v2, v3}, Lcom/android/camera/log/LogK;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/Camera;->l2:Lio/reactivex/disposables/b;

    invoke-interface {v2}, Lio/reactivex/disposables/b;->c()V

    iget-object v2, p0, Lcom/android/camera/Camera;->k2:Lcom/android/camera/Camera$m;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    invoke-static {v3, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_0
    iput-object v0, p0, Lcom/android/camera/Camera;->l2:Lio/reactivex/disposables/b;

    iget-object v2, p0, Lcom/android/camera/Camera;->m2:LF1/b3;

    iget-object v2, v2, LF1/b3;->a:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/Camera;->h2:Lq8/s0;

    if-eqz v2, :cond_2

    iput-object v0, v2, Lq8/s0;->b:LDe/a;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lq8/s0;->dismiss()V

    :cond_1
    iput-object v0, p0, Lcom/android/camera/Camera;->h2:Lq8/s0;

    :cond_2
    iget-object v2, p0, Lcom/android/camera/Camera;->g2:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    iput-object v0, p0, Lcom/android/camera/Camera;->g2:Landroid/app/Dialog;

    :cond_3
    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v5, "Cleanup completed"

    invoke-static {v3, v5, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/module/video/r;->a()Lcom/android/camera/module/video/r;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/module/video/r;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/android/camera/module/video/r;->a()Lcom/android/camera/module/video/r;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iget-object v2, v2, Lcom/android/camera/module/video/r;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "MediaRecorderCreator"

    const-string v8, "releaseMediaRecorder: remove hash map"

    invoke-static {v7, v8, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/module/video/r;->a()Lcom/android/camera/module/video/r;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/camera/module/video/r;->b(I)V

    invoke-static {}, Lcom/android/camera/module/video/r;->a()Lcom/android/camera/module/video/r;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "MediaRecorderCreator"

    const-string v7, "release"

    invoke-static {v6, v7, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/android/camera/module/video/r;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_5
    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v5

    iget-object v5, v5, Ls4/e;->a:Ls4/d;

    iget-object v6, v2, Lcom/android/camera/module/video/r;->d:Lcom/android/camera/module/video/q;

    invoke-virtual {v5, v6}, Ls4/d;->d(Ls4/d$d;)V

    iput-object v0, v2, Lcom/android/camera/module/video/r;->d:Lcom/android/camera/module/video/q;

    :cond_6
    :goto_0
    sget-object v2, Lio/reactivex/schedulers/a;->a:Lio/reactivex/v;

    new-instance v5, LAs/d;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v6}, LAs/d;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v5}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    sget v5, LF1/f0;->a:I

    sget-object v5, LF1/f0$a;->a:LF1/f0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "audio"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    sget-boolean v5, LJe/c;->k:Z

    sget-object v5, LJe/c$b;->a:LJe/c;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->t0()Z

    move-result v6

    if-eqz v6, :cond_7

    sget v6, LF4/a;->c:I

    sget-object v6, LF4/a$a;->a:LF4/a;

    iput-object v0, v6, LF4/a;->b:Lcom/android/camera/module/video/AiAudioController;

    const-string v7, "audio"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    invoke-virtual {v7, v6}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    :cond_7
    invoke-static {}, Lcom/android/camera/a;->kr()J

    move-result-wide v6

    invoke-super {p0}, Lcom/android/camera/a;->Jq()V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->cs()V

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v8

    const-string v9, "multi_camera"

    invoke-virtual {v8, v9, v4}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    iget v9, v8, Lu2/Q;->u:I

    invoke-virtual {v8, v9}, Lu2/Q;->E(I)I

    move-result v8

    const/16 v9, 0xa4

    if-eq v8, v9, :cond_11

    const/16 v9, 0xb3

    const/16 v10, 0xa3

    if-eq v8, v9, :cond_f

    const/16 v9, 0xb7

    if-eq v8, v9, :cond_e

    const/16 v9, 0xb9

    if-eq v8, v9, :cond_c

    const/16 v9, 0xd9

    if-eq v8, v9, :cond_b

    const/16 v9, 0xdb

    if-eq v8, v9, :cond_9

    const/16 v3, 0xe2

    if-eq v8, v3, :cond_8

    const/16 v3, 0xbd

    if-eq v8, v3, :cond_b

    const/16 v3, 0xbe

    if-eq v8, v3, :cond_e

    const/16 v3, 0xcf

    if-eq v8, v3, :cond_b

    const/16 v3, 0xd0

    if-eq v8, v3, :cond_b

    const/16 v3, 0xd4

    if-eq v8, v3, :cond_b

    const/16 v3, 0xd5

    if-eq v8, v3, :cond_b

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3, v10}, Lu2/Q;->c0(I)V

    goto :goto_1

    :cond_9
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    iget-object v9, v5, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v9}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->P1()I

    move-result v11

    if-ne v11, v3, :cond_a

    invoke-virtual {v9}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->C4()Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v10, 0xdc

    :cond_a
    invoke-virtual {v8, v10}, Lu2/Q;->c0(I)V

    goto :goto_1

    :cond_b
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    const/16 v8, 0xd3

    invoke-virtual {v3, v8}, Lu2/Q;->c0(I)V

    goto :goto_1

    :cond_c
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v5}, LJe/c;->D0()Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v10, 0xd2

    :cond_d
    invoke-virtual {v3, v10}, Lu2/Q;->c0(I)V

    goto :goto_1

    :cond_e
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v3

    const-class v8, Lt2/c;

    invoke-virtual {v3, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt2/c;

    iget-object v3, v3, Lt2/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_1

    :cond_f
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    iget-object v8, v5, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->P1()I

    move-result v8

    if-ne v8, v1, :cond_10

    const/16 v10, 0xd1

    :cond_10
    invoke-virtual {v3, v10}, Lu2/Q;->c0(I)V

    goto :goto_1

    :cond_11
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-string v8, "pref_pro_video_recording_simple"

    invoke-virtual {v3, v8, v4}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    :cond_12
    :goto_1
    iget-object v3, p0, Lcom/android/camera/Camera;->Y1:LF1/n3;

    iget-object v3, v3, LF1/n3;->h:LF1/V1;

    invoke-static {v2, v3}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-static {}, LJe/c;->Q()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, LY2/j;->d()LY2/j;

    move-result-object v2

    iget-object v3, p0, LW/f;->a:Landroidx/lifecycle/y;

    iget-object v2, v2, LY2/j;->e:LY2/i;

    if-eqz v2, :cond_13

    invoke-virtual {v3, v2}, Landroidx/lifecycle/y;->d(Landroidx/lifecycle/w;)V

    :cond_13
    invoke-static {}, LK2/j;->c()Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/android/camera/guide/a;->i:Lcom/android/camera/guide/a$b;

    invoke-virtual {v2}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    move-result-object v3

    iget-object v8, p0, LW/f;->a:Landroidx/lifecycle/y;

    invoke-static {p0}, LF1/x0;->a(Lcom/android/camera/Camera;)Landroid/view/Display;

    move-result-object v9

    if-nez v9, :cond_14

    move v9, v4

    goto :goto_2

    :cond_14
    invoke-static {p0}, LF1/x0;->a(Lcom/android/camera/Camera;)Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    :goto_2
    invoke-static {}, LQa/i;->d()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-virtual {p0}, Lcom/android/camera/a;->Wq()Z

    move-result v10

    if-eqz v10, :cond_15

    move v10, v1

    goto :goto_3

    :cond_15
    move v10, v4

    :goto_3
    const-string v11, "lifecycle"

    invoke-static {v8, v11}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_17

    iget-object v9, v3, Lcom/android/camera/guide/a;->a:Lcom/android/camera/guide/a$c;

    if-eqz v9, :cond_16

    iput-object v0, v9, Lcom/android/camera/guide/a$c;->b:LF1/l1;

    invoke-virtual {v8, v9}, Landroidx/lifecycle/y;->d(Landroidx/lifecycle/w;)V

    :cond_16
    iput-object v0, v3, Lcom/android/camera/guide/a;->a:Lcom/android/camera/guide/a$c;

    goto :goto_4

    :cond_17
    if-eqz v10, :cond_18

    sget-object v10, LZ2/b;->b:LZ2/b$a;

    invoke-virtual {v10}, LZ2/b$a;->a()LZ2/b;

    move-result-object v10

    const-string v11, "onDismissCancelled-mainScreen-Destroy"

    invoke-virtual {v10, v11, v4}, LZ2/b;->b(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/android/camera/guide/a;->c(II)V

    :cond_18
    iget-object v9, v3, Lcom/android/camera/guide/a;->a:Lcom/android/camera/guide/a$c;

    if-eqz v9, :cond_19

    iput-object v0, v9, Lcom/android/camera/guide/a$c;->b:LF1/l1;

    invoke-virtual {v8, v9}, Landroidx/lifecycle/y;->d(Landroidx/lifecycle/w;)V

    :cond_19
    iput-object v0, v3, Lcom/android/camera/guide/a;->a:Lcom/android/camera/guide/a$c;

    :goto_4
    invoke-virtual {v2}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/guide/a;->m(Lcom/android/camera/Camera;)V

    :cond_1a
    invoke-static {}, Lcom/android/camera/foregroundinfo/ForegroundInfoListener;->isNeedForegroundInfo()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {}, Lcom/android/camera/foregroundinfo/ForegroundInfoListener;->getInstance()Lcom/android/camera/foregroundinfo/ForegroundInfoListener;

    move-result-object v2

    iget-object v3, p0, LW/f;->a:Landroidx/lifecycle/y;

    invoke-virtual {v3, v2}, Landroidx/lifecycle/y;->d(Landroidx/lifecycle/w;)V

    :cond_1b
    invoke-static {}, LQ6/S0;->b()LQ6/S0;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-interface {v2}, LQ6/S0;->cancel()V

    :cond_1c
    invoke-virtual {p0}, Lcom/android/camera/Camera;->unRegisterProtocol()V

    iget-boolean v2, p0, Lcom/android/camera/Camera;->r2:Z

    if-nez v2, :cond_1d

    sget-object v2, LN6/h$a;->a:LN6/h;

    const-class v3, LQ6/c1;

    invoke-virtual {v2, v3}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LE4/K;

    invoke-direct {v3, v1}, LE4/K;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1d
    sget-object v2, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "ThermalDetector"

    const-string v8, "onDestroy"

    invoke-static {v3, v8, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lq8/K0;->q:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-string v3, "remove "

    invoke-static {v2, v3}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "V6GestureRecognizer"

    invoke-static {v9, v3, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lq8/K0;->q:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sget v3, Lcom/xiaomi/camera/effect/a;->a:I

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v3

    sget-object v8, Lcom/xiaomi/camera/effect/a;->b:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/effect/EffectController$a;

    invoke-virtual {v3, v2}, Lcom/xiaomi/camera/effect/EffectController;->U(Lcom/xiaomi/camera/effect/EffectController$a;)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->T()V

    iget-object v2, p0, Lcom/android/camera/Camera;->x1:Lio/reactivex/disposables/b;

    if-eqz v2, :cond_1e

    invoke-interface {v2}, Lio/reactivex/disposables/b;->c()V

    :cond_1e
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v2

    invoke-virtual {v2}, Loh/b;->k()Lvr/m;

    move-result-object v2

    iget-object v3, v2, Lvr/m;->c:Landroid/net/Uri;

    if-eqz v3, :cond_1f

    iput-object v0, v2, Lvr/m;->a:Landroid/content/Intent;

    iput-object v0, v2, Lvr/m;->b:Lvr/m$b;

    iput-object v0, v2, Lvr/m;->c:Landroid/net/Uri;

    iput-object v0, v2, Lvr/m;->d:Ljava/lang/Boolean;

    :cond_1f
    iget-object v2, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v8, "onDestroy start"

    const-string v9, "RenderEngineV2"

    invoke-static {v9, v8, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v2, LD8/m;->p:Lru/h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, LF1/Z1;

    const/16 v10, 0x8

    invoke-direct {v8, v3, v10}, LF1/Z1;-><init>(Ljava/lang/Object;I)V

    const-string v10, "makeInvalid"

    invoke-virtual {v3, v8, v10}, Lru/h;->u(Ljava/lang/Runnable;Ljava/lang/String;)V

    new-instance v8, LCc/m;

    invoke-direct {v8, v2, v1}, LCc/m;-><init>(Ljava/lang/Object;I)V

    const-string v1, "onDestroy"

    invoke-virtual {v3, v8, v1}, Lru/h;->u(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lru/h;->L(Lru/n;)V

    invoke-virtual {v3}, Lru/h;->z()V

    const-string v1, "onDestroy end"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    iget-object v1, p0, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz v1, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityDestroy: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, LF1/p4;->k:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "StreamingController"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v1

    const-class v2, Lcom/android/camera/data/observeable/VMResource;

    invoke-virtual {v1, v2}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/observeable/VMResource;

    invoke-virtual {v1}, Lcom/android/camera/data/observeable/VMResource;->onDestroy()V

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v1

    const-class v2, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v1, v2}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v1}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/android/camera/a;->l0()LF1/Y2;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v2, v1, LF1/q4;->x:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, LF1/Y2;->D:Ljava/util/ArrayList;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_22
    monitor-exit v2

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_23
    :goto_5
    invoke-virtual {v5}, LJe/c;->b1()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {v0}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->setMIVIStatusListener(Lcom/xiaomi/camera/mivi/MIVICaptureManager$MIVIStatusListener;)V

    :cond_24
    sget-boolean v1, Lcom/android/camera/Camera;->D2:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/camera/Camera;->n2:Lvr/x;

    if-eqz v1, :cond_25

    iput-object v0, v1, Lvr/x;->a:Landroid/view/ViewTreeObserver;

    iput-object v0, p0, Lcom/android/camera/Camera;->n2:Lvr/x;

    :cond_25
    invoke-static {v6, v7}, Lcom/android/camera/a;->mr(J)V

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "onDestroy end"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final Jr()V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "pauseActivity +"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/a;->a0:Z

    iput-boolean v2, p0, Lcom/android/camera/Camera;->c2:Z

    invoke-virtual {p0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object v1

    const-string v3, "Hibernation"

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->E(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v3, v1, Landroidx/fragment/app/g;

    if-eqz v3, :cond_0

    check-cast v1, Landroidx/fragment/app/g;

    invoke-virtual {v1}, Landroidx/fragment/app/g;->zq()V

    :cond_0
    invoke-static {}, LQ6/g;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LF1/D0;

    invoke-direct {v3, v2}, LF1/D0;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v1, -0x1

    invoke-static {v1}, LF1/U2;->e(I)V

    invoke-static {v2}, LF1/U2;->f(Z)V

    iget-object v3, p0, Lcom/android/camera/Camera;->Q1:Lmiuix/appcompat/app/h;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lmiuix/appcompat/app/h;->dismiss()V

    iput-object v4, p0, Lcom/android/camera/Camera;->Q1:Lmiuix/appcompat/app/h;

    :cond_1
    iget-object v3, p0, Lcom/android/camera/Camera;->R1:Lmiuix/appcompat/app/h;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lmiuix/appcompat/app/h;->dismiss()V

    iput-object v4, p0, Lcom/android/camera/Camera;->R1:Lmiuix/appcompat/app/h;

    :cond_2
    sget-object v3, Lcom/android/camera/Camera;->F2:Ljava/util/List;

    new-instance v5, LC4/A;

    invoke-direct {v5, p0, v0}, LC4/A;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/view/Window;->clearFlags(I)V

    sget-object v3, Lio/reactivex/schedulers/a;->a:Lio/reactivex/v;

    new-instance v5, LF1/J1;

    invoke-direct {v5, p0, v2}, LF1/J1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3, v5}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    sget-object v3, Lf2/d;->c:Lf2/d;

    iget-object v5, v3, Lf2/d;->b:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_3

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v3, Lf2/d;->b:Ljava/lang/ref/WeakReference;

    :cond_3
    sget-boolean v3, Lcom/android/camera/Camera;->D2:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/Camera;->n2:Lvr/x;

    if-eqz v3, :cond_4

    iget-object v5, v3, Lvr/x;->a:Landroid/view/ViewTreeObserver;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v3, Lvr/x;->a:Landroid/view/ViewTreeObserver;

    invoke-static {v5}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v3, v3, Lvr/x;->c:Lvr/x$a;

    invoke-virtual {v5, v3}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_4
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3, v2}, Lu2/Q;->e0(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    invoke-virtual {p0}, Lcom/android/camera/a;->lk()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x400

    invoke-virtual {v3, v5}, Landroid/view/Window;->clearFlags(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/a;->Vq()Z

    move-result v3

    if-nez v3, :cond_a

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v5, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->I7()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/j;->o0()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/a;->Di()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, LD8/m;->S()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_7
    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_8

    iget-object v3, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v5, "pauseActivity: doPreviewGaussianForever move to onPrelaunchGallery()"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, p0, Lcom/android/camera/a;->i0:I

    sget-object v5, LOh/m;->a:LOh/m$a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput v3, LOh/m;->b:I

    goto/16 :goto_2

    :cond_8
    iget-object v5, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->k5()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v6, "onPause: readLastFrameGaussian..."

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v5

    iget-object v5, v5, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v5

    iget-object v5, v5, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v5}, Lcom/android/camera/module/W;->isPurePreview()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/camera/a;->C0:LD8/m;

    sget-object v6, Ltu/a;->f:Ltu/a;

    invoke-virtual {v5, v6, v0}, LD8/m;->X(Ltu/a;Z)V

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/android/camera/a;->C0:LD8/m;

    sget-object v6, Ltu/a;->f:Ltu/a;

    iget-object v5, v5, LD8/m;->p:Lru/h;

    invoke-virtual {v5, v6, v0}, Lru/h;->E(Ltu/a;Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setAnimationType: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "RenderEngineV2"

    invoke-static {v7, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v5, p0, Lcom/android/camera/a;->C0:LD8/m;

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->k5()Z

    move-result v3

    if-nez v3, :cond_a

    if-eqz v5, :cond_a

    invoke-virtual {v5}, LD8/m;->S()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_a

    iget v5, p0, Lcom/android/camera/a;->i0:I

    sget-object v6, LOh/m;->a:LOh/m$a;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput v5, LOh/m;->b:I

    sget-object v5, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v6, Lcom/android/camera/a$d;

    iget v7, p0, Lcom/android/camera/a;->i0:I

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v3, v6, Lcom/android/camera/a$d;->a:Landroid/graphics/Bitmap;

    iput v7, v6, Lcom/android/camera/a$d;->b:I

    invoke-static {v5, v6}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_a
    :goto_2
    iget-object v3, p0, Lcom/android/camera/a;->T0:Lio/reactivex/disposables/b;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lio/reactivex/disposables/b;->c()V

    :cond_b
    iget-object v3, p0, Lcom/android/camera/a;->P0:Lmiuix/appcompat/app/h;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lmiuix/appcompat/app/h;->dismiss()V

    :cond_c
    iget-object v3, p0, Lcom/android/camera/Camera;->f2:Lmiuix/appcompat/app/h;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lmiuix/appcompat/app/h;->dismiss()V

    iput-object v4, p0, Lcom/android/camera/Camera;->f2:Lmiuix/appcompat/app/h;

    :cond_d
    invoke-virtual {p0}, Lcom/android/camera/Camera;->o3()V

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v3

    invoke-virtual {v3}, Loh/b;->n()LOh/d;

    move-result-object v3

    iget-object v3, v3, LOh/d;->a:LOh/c;

    sget-object v5, LOh/c;->b:LOh/c;

    if-eq v3, v5, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v3

    iget-object v3, v3, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v3}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, LQa/i;->d()Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    iget-boolean v3, p0, Lcom/android/camera/a;->k0:Z

    if-nez v3, :cond_11

    invoke-static {}, LK2/e;->B()Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/android/camera/guide/a;->i:Lcom/android/camera/guide/a$b;

    invoke-virtual {v3}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    invoke-static {p0}, Lcom/android/camera/guide/a;->d(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_4

    :cond_10
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/a;->Di()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_5

    :cond_11
    :goto_4
    iput-object v4, p0, Lcom/android/camera/a;->m0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object v3

    invoke-virtual {v3, v4, v0, v2, v0}, LF1/B4;->d(LF1/w4;ZZZ)V

    :cond_12
    :goto_5
    iget-object v3, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/android/camera/a;->U0:Z

    iget-object v3, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    iget-object v5, p0, Lcom/android/camera/Camera;->w2:Lcom/android/camera/Camera$d;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v1, p0, Lcom/android/camera/a;->f0:I

    iput-boolean v2, p0, Lcom/android/camera/a;->g0:Z

    const-string v3, "OrientationEvent"

    const-string v5, "[OrientationTrace] updatePreviewOrientation ORIENTATION_UNKNOWN"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/camera/a;->V0:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v5, Lcom/android/camera/Camera$m;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v8

    iget-object v8, v8, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v6, v7}, Lcom/android/camera/Camera$m;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object v5, p0, Lcom/android/camera/Camera;->k2:Lcom/android/camera/Camera$m;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Wr()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v6, "release by module"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/camera/a;->U0:Z

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v5

    iget-object v5, v5, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v5}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v5

    invoke-interface {v5}, Lj6/i;->onActionStop()V

    goto :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_13
    invoke-virtual {p0}, Lcom/android/camera/a;->Rq()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v5

    iget-object v5, v5, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v5}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v5

    invoke-interface {v5}, Lj6/i;->onActionPause()V

    :cond_14
    :goto_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v5, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->s4()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v5

    iget-object v5, v5, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LF1/K1;

    invoke-direct {v6, v2}, LF1/K1;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LF1/L1;

    invoke-direct {v6, v2}, LF1/L1;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj9/a;

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Lj9/a;->x()I

    move-result v6

    if-lez v6, :cond_15

    iget-object v6, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v7, "pauseActivity: switchToOffline"

    invoke-static {v6, v7}, Lcom/android/camera/log/LogK;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lj9/a;->q1(Z)Lio/reactivex/b;

    move-result-object v5

    new-instance v8, LF1/M1;

    invoke-direct {v8, v7, v6}, LF1/M1;-><init>(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v5, v8}, Lio/reactivex/b;->subscribe(Lio/reactivex/functions/a;)Lio/reactivex/disposables/b;

    :cond_15
    sget-object v5, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    iget v5, v5, Lcom/android/camera/c;->c:I

    if-ne v5, v0, :cond_16

    const-string v0, "onThermalNotification finish activity now"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    :cond_16
    iput-boolean v2, p0, Lcom/android/camera/Camera;->V1:Z

    iput v1, p0, Lcom/android/camera/Camera;->W1:I

    iget-object v0, p0, Lcom/android/camera/Camera;->S1:LW5/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/E;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/O;

    const/4 v5, 0x6

    invoke-direct {v1, v5}, LEs/O;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v0

    iget-object v0, v0, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v0}, Lvr/m;->n(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_8

    :cond_17
    sget-object v0, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v0}, Lwp/g;->a()Lwp/g$b;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/data/j;->o0()Z

    move-result v1

    const/16 v5, 0x64

    const v6, 0xea60

    if-eqz v1, :cond_18

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lwp/g$b;->i()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {v5, v6}, LPh/h;->a(II)V

    goto/16 :goto_8

    :cond_18
    iget-object v0, p0, Lcom/android/camera/Camera;->C1:Lk7/i;

    if-eqz v0, :cond_1a

    sget-object v1, Lk7/i;->s:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-gtz v1, :cond_19

    sget-object v1, Lk7/i;->t:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-gtz v1, :cond_19

    monitor-enter v0

    :try_start_1
    iget-object v1, v0, Lk7/i;->l:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    monitor-exit v0

    if-lez v1, :cond_1a

    goto :goto_7

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_19
    :goto_7
    invoke-static {v5, v6}, LPh/h;->a(II)V

    goto :goto_8

    :cond_1a
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    instance-of v0, v0, Lcom/android/camera/module/VideoModule;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    check-cast v0, Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v0}, Lcom/android/camera/module/video/E;->h()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    check-cast v0, Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v0}, Lcom/android/camera/module/video/E;->i()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    const/16 v0, 0xc8

    invoke-static {v0, v6}, LPh/h;->a(II)V

    goto :goto_8

    :cond_1c
    invoke-virtual {v3}, LJe/c;->b1()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->hasParallelTaskData()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {v5, v6}, LPh/h;->a(II)V

    goto :goto_8

    :cond_1d
    iget-object v0, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H2()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->getJpegListenerMapSize()I

    move-result v0

    if-lez v0, :cond_1e

    invoke-static {v5, v6}, LPh/h;->a(II)V

    goto :goto_8

    :cond_1e
    new-instance v0, Lcom/android/camera/Camera$l;

    invoke-direct {v0, v4, v4}, Lii/c;-><init>(Ljava/lang/String;LYp/a$a;)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lhi/d;->a(ILii/c;)V

    :goto_8
    invoke-static {}, LJe/d;->d()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/camera/a;->a0:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/camera/a;->M0:Z

    if-nez v0, :cond_21

    invoke-static {}, LK2/e;->E()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, LK2/b;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "checkConfig4FoldingPhone: skip finish during config change"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_1f
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "checkConfig4FoldingPhone: already finishing"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_20
    iget-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "checkConfig4FoldingPhone"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    :cond_21
    :goto_9
    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "pauseActivity -"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_a
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final Kj(LH6/b;)LH6/a;
    .locals 0

    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/android/camera/Camera;->B1:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public final Kr()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->c2:Z

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v2, LF1/c2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0}, LF1/c2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_0
    return-void
.end method

.method public final Lr()V
    .locals 8

    sget-object v0, Lu2/S$a;->a:Lu2/S;

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Lu2/S;->g(Lvr/m;ZZZ)Lh0/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/a;->g1:Lh0/b;

    iget-object v0, v0, Lh0/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object p0, p0, Lcom/android/camera/a;->g1:Lh0/b;

    iget-object p0, p0, Lh0/b;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v1, Lu6/n;

    invoke-static {}, LQa/i;->e()Z

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lu6/n;-><init>(Lcom/android/camera/module/W;Lcom/android/camera/module/loader/base/StartControl;IIZZ)V

    new-instance p0, Lio/reactivex/internal/operators/completable/b;

    invoke-direct {p0, v1}, Lio/reactivex/internal/operators/completable/b;-><init>(Lio/reactivex/e;)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    invoke-virtual {p0, v0}, Lio/reactivex/b;->d(Lio/reactivex/v;)Lio/reactivex/internal/operators/completable/m;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/b;->subscribe()Lio/reactivex/disposables/b;

    return-void
.end method

.method public final Mr(Z)V
    .locals 4

    sget-object v0, Lcom/android/camera/Camera;->C2:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/a;->p0:J

    sget-object v2, LF6/a;->U:LF6/a;

    sget-object v3, LF6/a;->T:LF6/a;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v3}, LF6/q;->r(LF6/a;)V

    invoke-virtual {v1, v2}, LF6/q;->r(LF6/a;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v2, LF1/a2;

    invoke-direct {v2, v1}, LF1/a2;-><init>(LF6/q;)V

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_0
    filled-new-array {v3, v2}, [LF6/a;

    move-result-object v0

    invoke-virtual {v1, v0}, LF6/q;->e([LF6/a;)V

    sget-object v0, LF6/a;->V:LF6/a;

    invoke-virtual {v1, v0}, LF6/q;->r(LF6/a;)V

    :goto_0
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v2, LF1/b2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LF1/b2;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    if-eqz p1, :cond_1

    const-string p1, "A1:createActivity"

    invoke-virtual {v1, p1}, LF6/q;->q(Ljava/lang/String;)V

    const-string p1, "1:createActivity2openCamera"

    invoke-virtual {v1, p1}, LF6/q;->q(Ljava/lang/String;)V

    :cond_1
    iget-wide p0, p0, Lcom/android/camera/a;->p0:J

    sput-wide p0, LK7/l;->k:J

    sput-wide p0, LA3/m;->c:J

    return-void
.end method

.method public final Nh()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/Camera;->C1:Lk7/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "isParallelQueueFull: ImageSaver is null"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-static {}, Lk7/i;->B()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "isParallelQueueFull: ImageSaver queue is full"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    sget-boolean v0, LJe/d;->i:Z

    if-eqz v0, :cond_2

    invoke-static {}, LQa/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/j;->F0()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "isParallelQueueFull: ImageSaver has too many HEIC tasks"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->e2:Z

    if-eqz v0, :cond_3

    sget-object v0, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lt v0, v2, :cond_3

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "isParallelQueueFull: ImageSaver has too many raw pixel tasks"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/module/W;->isLiveShotStartedInHighSpecRecord()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_4

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "isParallelQueueFull: ImageSaver has too many video live photo tasks"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_4
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->U1()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v0

    invoke-static {v0}, Lw7/j;->L(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/camera/effect/EffectController;->O(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lt v0, v2, :cond_5

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "isParallelQueueFull: low memory limit capture with effect"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_5
    return v1
.end method

.method public final Nr()V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/Camera;->J1:Lf6/u;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object p0, p0, Lcom/android/camera/Camera;->J1:Lf6/u;

    iget-boolean v2, p0, Lf6/u;->a:Z

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v2, p0, Lf6/u;->e:Lio/reactivex/disposables/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lio/reactivex/disposables/b;->c()V

    iput-object v3, p0, Lf6/u;->e:Lio/reactivex/disposables/b;

    :cond_2
    monitor-enter p0

    :try_start_0
    sget-object v2, Lf6/w;->a:Lf6/w;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v4, Lf6/w;->b:LQ6/i0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v2

    invoke-static {v4, p0}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sput-object v3, Lf6/w;->b:LQ6/i0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lf6/u;->g:Lf6/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v4, v1

    :goto_2
    iget-object v5, v0, Lf6/g;->b:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    new-instance v7, Lf6/h;

    invoke-direct {v7, v5}, Lf6/h;-><init>(I)V

    invoke-virtual {v7}, Lf6/h;->c()V

    const/4 v8, 0x4

    iput v8, v7, Lf6/h;->a:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iput-object v3, v0, Lf6/g;->d:Ljava/util/HashMap;

    invoke-static {v2}, Lf6/g;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, "clearOperation : "

    invoke-static {v4, v2}, LF1/b0;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lf6/g;->a:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, LH8/y;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, LH8/y;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lga/d;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lga/d;-><init>(I)V

    invoke-static {v4}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v2, v3}, Lf6/g;->c(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_5
    iput-object v3, p0, Lf6/u;->h:LF1/l1;

    iput-boolean v1, p0, Lf6/u;->a:Z

    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :goto_3
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :cond_6
    :goto_4
    return-void
.end method

.method public final Or(Z)V
    .locals 13

    invoke-static {p1}, LH6/d;->f(Z)Landroid/util/ArrayMap;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/Camera;->Q1:Lmiuix/appcompat/app/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, LQa/i;->d()Z

    move-result v1

    const v3, 0x7f1405fe

    if-eqz v1, :cond_1

    const p1, 0x7f14097e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const p1, 0x7f14097f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, LF1/W1;

    const/4 p1, 0x0

    invoke-direct {v8, p0, p1}, LF1/W1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, LF1/W1;

    invoke-direct {v12, p0, p1}, LF1/W1;-><init>(Ljava/lang/Object;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v12}, Lvr/w;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/h;

    move-result-object p0

    iput-object p0, v4, Lcom/android/camera/Camera;->Q1:Lmiuix/appcompat/app/h;

    move-object v0, v4

    goto/16 :goto_0

    :cond_1
    move-object v4, p0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const p1, 0x7f140981

    const v0, 0x7f140982

    const v1, 0x7f140983

    const v5, 0x7f140984

    filled-new-array {p1, v0, v1, v5}, [I

    move-result-object p1

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const-string v1, "android.permission.CAMERA"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f140979

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f140975

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f14098a

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const v1, 0x7f140988

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const p0, 0x7f140987

    invoke-virtual {v4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result p0

    sub-int/2addr p0, v2

    aget p0, p1, p0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const p0, 0x7f14097d

    invoke-virtual {v4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, v4

    new-instance v4, LF1/X1;

    const/4 p1, 0x0

    invoke-direct {v4, v0, p1}, LF1/X1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, LF1/Y1;

    invoke-direct {v8, v0, p1}, LF1/Y1;-><init>(Ljava/lang/Object;I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v8}, Lvr/w;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/h;

    move-result-object p0

    iput-object p0, v0, Lcom/android/camera/Camera;->Q1:Lmiuix/appcompat/app/h;

    :goto_0
    iget-object p0, v0, Lcom/android/camera/Camera;->Q1:Lmiuix/appcompat/app/h;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/h;->setCanceledOnTouchOutside(Z)V

    return-void

    :cond_8
    move-object v0, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_9

    const/16 p0, 0x66

    invoke-static {v0, p0}, LH6/d;->s(Landroid/app/Activity;I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public final P0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/a;->C0:LD8/m;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/p1;

    invoke-direct {v1, p0, p1}, LF1/p1;-><init>(Lcom/android/camera/Camera;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/q1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LF1/q1;-><init>(ZI)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Pr()V
    .locals 10

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v1, "pref_first_guide_location_shown_key"

    invoke-static {}, Lcom/android/camera/data/data/w;->v0()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->R1:Lmiuix/appcompat/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v9, LF1/B;

    const/4 v0, 0x1

    invoke-direct {v9, p0, v0}, LF1/B;-><init>(Ljava/lang/Object;I)V

    new-instance v0, LF1/R1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LF1/R1;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, LH6/d;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v9}, LF1/B;->run()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/a;->L0:Lcom/android/camera/ui/CameraRootView;

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/Camera;->Ur(ILandroid/view/View;)V

    new-instance v5, LF1/S1;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, LF1/S1;-><init>(Ljava/lang/Object;I)V

    const v1, 0x7f14060f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f14060d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f14060e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1405fe

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lvr/w;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/h;

    move-result-object p0

    new-instance v2, LF1/f4;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, LF1/f4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/h;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/h;->show()V

    iput-object p0, v1, Lcom/android/camera/Camera;->R1:Lmiuix/appcompat/app/h;

    return-void

    :cond_2
    move-object v1, p0

    new-instance p0, LE3/q;

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, LE3/q;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0xc8

    iget-object v0, v1, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final Q5()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->E1:Z

    return-void
.end method

.method public final Qr()V
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "onResume start"

    invoke-static {v1, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, LG8/h;->e(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "resume in MultiWindowMode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    sget-object v1, LOh/m;->a:LOh/m$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, LOh/m;->c:Z

    const/4 v3, 0x0

    const-string v4, "ActivityBase"

    if-eqz v1, :cond_1

    const-string/jumbo v1, "showBlurCover: disable show blur cover!"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, LOh/m;->a(Z)V

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/a;->Vq()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/a;->j1:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    const-string v5, "is_shot_cut"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/a;->Pq()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/a;->C0:LD8/m;

    iget-object v1, v1, LD8/m;->p:Lru/h;

    iget-boolean v1, v1, Lru/h;->R:Z

    if-nez v1, :cond_12

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/a;->Lq()Ljava/util/Optional;

    move-result-object v1

    new-instance v5, LE4/b;

    invoke-direct {v5, v0}, LE4/b;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_7

    :cond_6
    invoke-static {}, LQ5/J;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_7

    :cond_7
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v5, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v5}, Lu2/Q;->E(I)I

    move-result v1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v5

    invoke-virtual {v5}, Lu2/Q;->W()Z

    move-result v5

    const/16 v6, 0xcc

    if-eq v1, v6, :cond_8

    const/16 v6, 0xce

    if-ne v1, v6, :cond_9

    :cond_8
    if-nez v5, :cond_9

    :goto_3
    move v1, v0

    goto :goto_4

    :cond_9
    const/16 v6, 0xbd

    if-ne v1, v6, :cond_a

    if-nez v5, :cond_a

    goto :goto_3

    :cond_a
    const/16 v6, 0xb8

    if-eq v1, v6, :cond_b

    const/16 v6, 0xcb

    if-ne v1, v6, :cond_c

    :cond_b
    if-nez v5, :cond_c

    goto :goto_3

    :cond_c
    move v1, v2

    :goto_4
    if-eqz v1, :cond_d

    goto/16 :goto_7

    :cond_d
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v5, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->l5()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {}, LQa/i;->d()Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_7

    :cond_e
    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->k5()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, LD8/m;->S()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_5

    :cond_f
    move-object v1, v3

    :goto_5
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_10

    const-string/jumbo v5, "showBlurCover: blur bitmap from memory!"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LK2/e;->u()Z

    sget v4, LOh/m;->b:I

    invoke-static {v4, v1}, LOh/m$a;->c(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v4, LF1/H;

    invoke-direct {v4, p0, v1}, LF1/H;-><init>(Lcom/android/camera/a;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_10
    new-instance v1, LF1/V;

    invoke-direct {v1, p0}, LF1/V;-><init>(Lcom/android/camera/Camera;)V

    sget-object v4, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    invoke-virtual {v1, v4}, Lio/reactivex/w;->e(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/m;

    move-result-object v1

    sget-object v4, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {v1, v4}, Lio/reactivex/w;->c(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/l;

    move-result-object v1

    new-instance v4, LF1/W;

    invoke-direct {v4, p0, v5, v6}, LF1/W;-><init>(Lcom/android/camera/Camera;J)V

    invoke-virtual {v1, v4}, Lio/reactivex/w;->subscribe(Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/a;->T0:Lio/reactivex/disposables/b;

    goto :goto_6

    :cond_11
    iget-object v1, p0, Lcom/android/camera/a;->H0:Lcom/android/camera/ui/CardImageView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/a;->W0:J

    :cond_12
    :goto_7
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {p0}, LF1/x0;->a(Lcom/android/camera/Camera;)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget v5, LK2/e;->j:I

    if-ne v5, v4, :cond_14

    sget v4, LK2/e;->k:I

    if-eq v4, v1, :cond_13

    goto :goto_8

    :cond_13
    move v1, v2

    goto :goto_9

    :cond_14
    :goto_8
    move v1, v0

    :goto_9
    const-string v4, "is display size change:"

    invoke-static {v4, v1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "DisplayHelper"

    invoke-static {v6, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_15

    invoke-static {p0}, LQa/b;->e(Landroid/content/Context;)V

    invoke-static {p0}, LK2/b;->K(Landroid/content/Context;)V

    invoke-static {}, LK2/e;->v()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, LQa/a;->e(Landroid/view/Window;)V

    :cond_15
    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/a;->or(I)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->Tr(Z)V

    invoke-static {}, LF1/i0;->a()LF1/i0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, LW/f;->a:Landroidx/lifecycle/y;

    iput-object v4, v1, LF1/i0;->h:Landroidx/lifecycle/y;

    invoke-virtual {v4, v1}, Landroidx/lifecycle/y;->a(Landroidx/lifecycle/w;)V

    iput-object p0, v1, LF1/i0;->e:Lcom/android/camera/Camera;

    iget-boolean v1, p0, Lcom/android/camera/a;->a0:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/android/camera/a;->b0:Z

    if-nez v1, :cond_16

    move v1, v0

    goto :goto_a

    :cond_16
    move v1, v2

    :goto_a
    iput-boolean v2, p0, Lcom/android/camera/a;->a0:Z

    iput-boolean v2, p0, Lcom/android/camera/a;->b0:Z

    invoke-virtual {p0}, Lcom/android/camera/a;->Di()Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Lio/reactivex/schedulers/a;->a:Lio/reactivex/v;

    new-instance v5, LAs/d;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v6}, LAs/d;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4, v5}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_17
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v4

    invoke-virtual {v4}, Loh/b;->n()LOh/d;

    move-result-object v4

    iget-object v5, v4, LOh/d;->a:LOh/c;

    iput-object v5, v4, LOh/d;->b:LOh/c;

    sget-object v5, LOh/c;->b:LOh/c;

    iput-object v5, v4, LOh/d;->a:LOh/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "ViewUtil"

    const-string v7, "clearRotationAnimation"

    invoke-static {v6, v7, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iput-boolean v2, p0, Lcom/android/camera/a;->O0:Z

    invoke-virtual {p0}, Lcom/android/camera/a;->Dq()V

    invoke-virtual {p0}, Lcom/android/camera/a;->Eq()V

    invoke-virtual {p0}, Lcom/android/camera/a;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_b

    :cond_18
    invoke-static {}, LSh/c;->c()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-wide v4, p0, Lcom/android/camera/a;->p0:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_19

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/data/data/w;->k0()Z

    move-result v5

    invoke-virtual {v4, v5}, Lh6/b;->g(Z)V

    :cond_19
    sget-object v4, LF1/U2$a;->a:LF1/U2;

    iput-boolean v2, v4, LF1/U2;->b:Z

    iput-boolean v2, v4, LF1/U2;->c:Z

    const/4 v5, 0x0

    iput v5, v4, LF1/U2;->g:F

    const-string v5, "CameraBrightness"

    const-string v6, "onResume adjustBrightness"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, v4, LF1/U2;->d:Z

    if-nez v5, :cond_1a

    invoke-virtual {v4}, LF1/U2;->a()V

    :cond_1a
    iput-boolean v0, p0, Lcom/android/camera/a;->K0:Z

    :goto_b
    invoke-static {p0}, LCv/a;->l(Landroid/content/Context;)V

    sget-object v4, Lio/reactivex/schedulers/a;->a:Lio/reactivex/v;

    new-instance v5, LC4/J;

    invoke-direct {v5, p0, v0}, LC4/J;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4, v5}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    sget-object v4, Lf2/d;->c:Lf2/d;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Lf2/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->Rr(Z)V

    const v1, 0x7f0b0855

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PopupMenuLayout;

    if-eqz v1, :cond_1b

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    invoke-virtual {v4}, Lu2/Q;->S()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v5, Ls8/e;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v1, v5, Ls8/e;->a:Lcom/android/camera/ui/PopupMenuLayout;

    invoke-static {v4, v5}, Ls8/a;->Ca(Ljava/lang/String;Lcom/android/camera/ui/DragLayout$c;)V

    :cond_1b
    sget-object v1, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "ThermalDetector"

    const-string v6, "registerReceiver"

    invoke-static {v5, v6, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v1, Lcom/android/camera/c;->h:Ljava/lang/ref/WeakReference;

    iget-object v4, v1, Lcom/android/camera/c;->d:Landroid/content/Context;

    if-eqz v4, :cond_1c

    sget-object v4, Lcom/xiaomi/camera/rx/CameraSchedulers;->sSDKScheduler:Lio/reactivex/v;

    new-instance v5, LAs/x;

    invoke-direct {v5, v1, v0}, LAs/x;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4, v5}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_1c
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->q1()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    invoke-virtual {v4}, Lu2/Q;->Y()Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, p0, Lcom/android/camera/Camera;->j2:LA3/g;

    if-nez v4, :cond_1d

    new-instance v4, LA3/g;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, LA3/g;-><init>(I)V

    iput-object v4, p0, Lcom/android/camera/Camera;->j2:LA3/g;

    :cond_1d
    sget-object v4, Lg4/h;->a:Lg4/h;

    iget-object v5, p0, Lcom/android/camera/Camera;->j2:LA3/g;

    sput-object v5, Lg4/h;->l:LA3/g;

    iget-object v5, p0, LW/f;->a:Landroidx/lifecycle/y;

    invoke-virtual {v5, v4}, Landroidx/lifecycle/y;->a(Landroidx/lifecycle/w;)V

    const-string v4, "camera.feature.polaroid_connect_debug"

    invoke-static {v4, v2}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v1}, LJe/c;->q1()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_c

    :cond_1e
    new-instance v1, Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {v1, p0, v3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v4, "add"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, La5/c;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, La5/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v5, 0x12c

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v5, 0x64

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v5, 0x20

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1f
    :goto_c
    sget-object v1, LF1/D2;->f:LF1/D2;

    iget-object v4, v1, LF1/D2;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, v1, LF1/D2;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_20

    move v4, v0

    goto :goto_d

    :cond_20
    move v4, v2

    :goto_d
    iput-boolean v4, v1, LF1/D2;->d:Z

    invoke-static {}, LEp/g;->a()I

    move-result v4

    iget-object v5, v1, LF1/D2;->b:Landroid/content/ContentResolver;

    invoke-static {v5, v4}, LEp/f;->a(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_f

    :cond_21
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {v6, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_22
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_22

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_23
    move-object v4, v5

    :goto_f
    const-string v5, "com.miui.accessibility/com.miui.accessibility.voiceaccess.VoiceAccessAccessibilityService"

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, LF1/D2;->e:Z

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Gr()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->Yr(Z)V

    goto :goto_10

    :cond_24
    invoke-static {}, LH6/d;->b()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->Yr(Z)V

    :cond_25
    :goto_10
    iget-object v0, p0, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz v0, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResume: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, LF1/p4;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "StreamingController"

    invoke-static {v5, v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, LF1/p4;->j:Lcom/android/camera/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LK2/e;->f(Landroid/app/Activity;)I

    move-result v1

    iput v1, v0, LF1/p4;->o:I

    :cond_26
    invoke-static {p0}, LF1/x0;->a(Lcom/android/camera/Camera;)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_27

    move v0, v2

    goto :goto_11

    :cond_27
    invoke-static {p0}, LF1/x0;->a(Lcom/android/camera/Camera;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    :goto_11
    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v4, LF1/O1;

    invoke-direct {v4, p0, v0, v2}, LF1/O1;-><init>(Lmiuix/appcompat/app/AppCompatActivity;II)V

    invoke-static {v1, v4}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-static {}, LK2/j;->c()Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/camera/guide/a;->i:Lcom/android/camera/guide/a$b;

    invoke-virtual {v0}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/camera/a;->j0:Z

    const-string v5, "is fromThirdApp : "

    invoke-static {v5, v4}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "DualScreenManager"

    invoke-static {v7, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lcom/android/camera/guide/a;->d:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/camera/a;->Wq()Z

    move-result v1

    const-string v4, "isOpenFromSelfie"

    if-nez v1, :cond_28

    sget-object v1, LZ2/b;->b:LZ2/b$a;

    invoke-virtual {v1}, LZ2/b$a;->a()LZ2/b;

    move-result-object v1

    invoke-virtual {v1}, LZ2/b;->a()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/guide/a;->i(Landroid/app/Activity;)V

    :cond_28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    invoke-static {}, Lph/b;->a()Ljava/util/Stack;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    if-eqz v5, :cond_29

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/camera/fragment/presentation/MainScreenSelfieActivity;

    if-eqz v6, :cond_2b

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/presentation/MainScreenSelfieActivity;

    invoke-static {v1}, Lc5/n;->a(Lcom/android/camera/fragment/presentation/MainScreenSelfieActivity;)Landroid/view/Display;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_15

    :cond_2e
    move-object v5, v3

    :goto_15
    invoke-static {p0}, LF1/x0;->a(Lcom/android/camera/Camera;)Landroid/view/Display;

    move-result-object v6

    if-eqz v6, :cond_2f

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_16

    :cond_2f
    move-object v6, v3

    :goto_16
    invoke-static {v5, v6}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    iget-boolean v5, v1, Lcom/android/camera/fragment/presentation/MainScreenSelfieActivity;->X:Z

    if-eqz v5, :cond_2d

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "registerProtocol"

    invoke-static {v7, v6, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/presentation/MainScreenSelfieActivity;->registerProtocol()V

    invoke-virtual {v1}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object v5

    const/16 v6, 0xa00

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManager;->E(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    instance-of v6, v5, Lc5/o;

    if-eqz v6, :cond_30

    check-cast v5, Lc5/o;

    invoke-virtual {v5}, Lcom/android/camera/fragment/b;->registerProtocol()V

    :cond_30
    invoke-virtual {v1}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object v5

    const/16 v6, 0xa01

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManager;->E(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    instance-of v6, v5, Lc5/q;

    if-eqz v6, :cond_31

    check-cast v5, Lc5/q;

    invoke-virtual {v5}, Lcom/android/camera/fragment/b;->registerProtocol()V

    :cond_31
    invoke-virtual {v1}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object v1

    const/16 v5, 0xe9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentManager;->E(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v5, v1, Lq5/y;

    if-eqz v5, :cond_2d

    check-cast v1, Lq5/y;

    invoke-virtual {v1}, Lcom/android/camera/fragment/b;->registerProtocol()V

    goto/16 :goto_14

    :cond_32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_33
    sget-boolean v0, Lcom/android/camera/Camera;->D2:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/camera/Camera;->n2:Lvr/x;

    if-eqz v0, :cond_34

    iget-object v1, v0, Lvr/x;->a:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, v0, Lvr/x;->a:Landroid/view/ViewTreeObserver;

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v0, v0, Lvr/x;->c:Lvr/x$a;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_34
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/camera/data/data/w;->t0()Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_17

    :cond_35
    invoke-virtual {p0}, Lcom/android/camera/Camera;->Cr()V

    iget-object v0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    iget-object v1, p0, Lcom/android/camera/Camera;->x2:LAs/l;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_17
    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "onResume end"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final Rr(Z)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    const/4 v2, 0x1

    iget-object v3, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const/4 v6, 0x0

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "resumeCamera: E"

    invoke-static {v3, v5, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/camera/Camera;->s2:J

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, LJe/c;->f1()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, LJe/c;->g1()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, LJe/c;->e1()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    iget v5, v3, Lu2/Q;->u:I

    const/4 v7, 0x2

    if-eq v5, v2, :cond_4

    const/16 v8, 0x9

    if-ne v5, v8, :cond_2

    goto :goto_2

    :cond_2
    if-ne v5, v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v5

    iget-object v5, v5, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v5}, Lvr/m;->v(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v4

    const-class v5, Lt2/c;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt2/c;

    iget-object v4, v4, Lt2/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_5
    iget-boolean v4, v1, Lcom/android/camera/a;->Y:Z

    if-eqz v4, :cond_6

    iget-object v0, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/android/camera/a;->Y:Z

    invoke-static {}, LK2/j;->a()Z

    move-result v4

    xor-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "resumeCamera: isSwitchingModule() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " &&  getDisplayFoldState() : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/camera/Camera;->xr()V

    return-void

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sget-object v5, LN6/h;->d:LN6/h;

    if-eqz v5, :cond_2c

    iget v5, v5, LN6/h;->a:I

    if-ne v5, v4, :cond_2c

    invoke-virtual {v1}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v4

    invoke-virtual {v4}, Lvr/m;->c()Z

    move-result v4

    invoke-virtual {v1}, Lcom/android/camera/a;->Pq()Z

    move-result v5

    invoke-static {}, LK2/b;->b()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, LJe/c;->j0()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v8

    invoke-virtual {v8}, Loh/b;->n()LOh/d;

    move-result-object v8

    iget-object v8, v8, LOh/d;->b:LOh/c;

    sget-object v9, LOh/c;->h:LOh/c;

    if-ne v8, v9, :cond_7

    if-eqz v5, :cond_7

    iget-object v0, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string/jumbo v5, "resumeCamera: from qrcode detail 4 fat display"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v0, v5, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v0

    invoke-interface {v0, v2}, Lj6/i;->enableCameraControls(Z)V

    return-void

    :cond_7
    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v8

    invoke-virtual {v8}, Loh/b;->n()LOh/d;

    move-result-object v8

    iget-object v8, v8, LOh/d;->b:LOh/c;

    sget-object v9, LOh/c;->b:LOh/c;

    if-eq v8, v9, :cond_8

    move v8, v2

    goto :goto_3

    :cond_8
    move v8, v6

    :goto_3
    const-string v10, "launch_camera_and_take_photo"

    const-string v11, "camera_mr"

    if-eqz v8, :cond_10

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v8

    invoke-virtual {v8}, Loh/b;->n()LOh/d;

    move-result-object v8

    iget-object v8, v8, LOh/d;->b:LOh/c;

    sget-object v12, LOh/c;->d:LOh/c;

    if-ne v8, v12, :cond_9

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v1}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v8

    iget-object v12, v8, Lvr/m;->a:Landroid/content/Intent;

    if-nez v12, :cond_a

    const/4 v12, 0x0

    goto :goto_4

    :cond_a
    invoke-static {v12}, Lvr/m;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v12

    :goto_4
    const-string v13, "camera_launch_source = "

    invoke-static {v13, v12}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-array v14, v6, [Ljava/lang/Object;

    const-string v15, "CameraIntentManager"

    invoke-static {v15, v13, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v13, "long_press_camera_key"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_b
    iget-object v8, v8, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v8}, Lvr/m;->u(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_10

    :cond_c
    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_5

    :cond_d
    iget-object v5, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "resumeCamera: from gallery, mReleaseByModule = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, v1, Lcom/android/camera/a;->U0:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, v1, Lcom/android/camera/a;->U0:Z

    if-eqz v5, :cond_f

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v5

    iget-object v5, v5, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v5, :cond_f

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v5

    iget-object v5, v5, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v5}, Lcom/android/camera/module/W;->isShot2GalleryOrEnableParallel()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v3

    iget-object v3, v3, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v3}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v3

    invoke-interface {v3, v2}, Lj6/i;->enableCameraControls(Z)V

    iput-boolean v6, v1, Lcom/android/camera/a;->U0:Z

    invoke-virtual {v1}, Lcom/android/camera/Camera;->Sr()V

    if-nez v0, :cond_e

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/U0;

    invoke-direct {v2, v1, v6}, LF1/U0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v0

    invoke-virtual {v0, v7}, LS1/g;->c(I)V

    :cond_e
    return-void

    :cond_f
    move v13, v4

    move v2, v6

    move v8, v2

    move v5, v7

    goto/16 :goto_14

    :cond_10
    :goto_5
    invoke-virtual {v3}, Lu2/Q;->C()I

    move-result v8

    iget v12, v3, Lu2/Q;->u:I

    invoke-virtual {v1}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v13

    sget-object v14, Lu2/S$a;->a:Lu2/S;

    if-nez v5, :cond_11

    if-nez v0, :cond_11

    move v15, v2

    goto :goto_6

    :cond_11
    move v15, v6

    :goto_6
    invoke-virtual {v14, v13, v6, v15, v0}, Lu2/S;->g(Lvr/m;ZZZ)Lh0/b;

    invoke-virtual {v1}, Lcom/android/camera/a;->Ck()I

    move-result v13

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v14

    iget v15, v14, Lu2/Q;->u:I

    invoke-virtual {v14, v15}, Lu2/Q;->E(I)I

    move-result v14

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v15

    const-string v7, "pref_retain_camera_mode_key"

    invoke-virtual {v15, v7, v6}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v7

    invoke-virtual {v7}, Lu2/Q;->W()Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_7

    :cond_12
    move v7, v6

    goto :goto_8

    :cond_13
    :goto_7
    move v7, v2

    :goto_8
    const/16 v15, 0xa0

    if-ne v13, v15, :cond_15

    const/16 v13, 0xcc

    if-eq v14, v13, :cond_14

    const/16 v13, 0xce

    if-ne v14, v13, :cond_15

    :cond_14
    if-eqz v7, :cond_15

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->P0(Z)V

    :cond_15
    iget v7, v3, Lu2/Q;->y:I

    if-lez v7, :cond_16

    move v7, v2

    goto :goto_9

    :cond_16
    move v7, v6

    :goto_9
    or-int v13, v4, v7

    iget v14, v3, Lu2/Q;->u:I

    invoke-virtual {v3, v14}, Lu2/Q;->E(I)I

    move-result v15

    invoke-virtual {v3}, Lu2/Q;->C()I

    move-result v2

    if-eq v8, v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    move v2, v6

    :goto_a
    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v8

    iget-object v8, v8, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v8, :cond_1a

    invoke-virtual {v1}, Lcom/android/camera/a;->Rq()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-virtual {v1}, Lcom/android/camera/a;->Ck()I

    move-result v8

    if-eq v8, v15, :cond_18

    const/4 v8, 0x1

    goto :goto_b

    :cond_18
    move v8, v6

    :goto_b
    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v9

    iget-object v9, v9, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v9}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    new-instance v0, LF1/L1;

    invoke-direct {v0, v6}, LF1/L1;-><init>(I)V

    invoke-virtual {v9, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj9/a;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lj9/a;->Z()Z

    move-result v0

    goto :goto_c

    :cond_19
    move v0, v6

    :goto_c
    if-eqz v0, :cond_1b

    if-eqz v5, :cond_1b

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v9

    iget-object v9, v9, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v9}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v9

    const/4 v6, 0x1

    invoke-interface {v9, v6}, Lj6/i;->enableCameraControls(Z)V

    goto :goto_d

    :cond_1a
    const/4 v0, 0x0

    const/4 v8, 0x1

    :cond_1b
    :goto_d
    invoke-virtual {v1}, Lcom/android/camera/Camera;->xr()V

    if-ne v12, v14, :cond_1d

    if-eqz v7, :cond_1c

    goto :goto_e

    :cond_1c
    const/4 v6, 0x0

    goto :goto_f

    :cond_1d
    :goto_e
    const/4 v6, 0x1

    :goto_f
    const-string/jumbo v7, "resumeCamera: lastType="

    if-eqz v12, :cond_20

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_1e

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->isSelectingCapturedResult()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_10

    :cond_1e
    const/4 v0, 0x0

    :goto_10
    iget-object v5, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v9, " curType="

    const-string v10, " captureFinish="

    invoke-static {v12, v14, v7, v9, v10}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v12, v14, :cond_1f

    if-eqz v0, :cond_1f

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/camera/a;->Y:Z

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v2, LF1/V0;

    invoke-direct {v2, v1, v15}, LF1/V0;-><init>(Lcom/android/camera/Camera;I)V

    invoke-static {v0, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void

    :cond_1f
    if-eqz v0, :cond_22

    invoke-static {}, LQ6/j0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v5, LF1/C;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, LF1/C;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_11

    :cond_20
    iget-object v9, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v14, " | mReleaseByModule="

    invoke-static {v12, v7, v14}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v12, v1, Lcom/android/camera/a;->U0:Z

    const-string v14, " isSessionReady ="

    invoke-static {v7, v12, v14, v0}, LF1/B2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v9, v7, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_22

    if-nez v2, :cond_22

    if-nez v8, :cond_22

    if-nez v6, :cond_22

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v5

    iget-object v5, v5, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v5, :cond_22

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v5

    iget-object v5, v5, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v5}, Lcom/android/camera/module/W;->isPurePreview()Z

    move-result v5

    if-nez v5, :cond_22

    invoke-static {}, Lcom/xiaomi/camera/mivi/mtk/OfflineSessionManager;->getInstance()Lcom/xiaomi/camera/mivi/mtk/OfflineSessionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/camera/mivi/mtk/OfflineSessionManager;->isSwitchToOffline()Z

    move-result v5

    if-nez v5, :cond_22

    if-eqz v0, :cond_22

    invoke-virtual {v1}, Lcom/android/camera/a;->getSurfaceTexture()LEu/a;

    move-result-object v0

    invoke-virtual {v0}, LEu/a;->c()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v1}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v0

    iget-object v0, v0, Lvr/m;->a:Landroid/content/Intent;

    if-nez v0, :cond_21

    goto :goto_12

    :cond_21
    invoke-static {v0}, Lvr/m;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    :goto_11
    const/4 v5, 0x2

    goto :goto_14

    :cond_23
    :goto_12
    invoke-virtual {v1}, Lcom/android/camera/Camera;->Sr()V

    if-nez p1, :cond_24

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/W0;

    const/4 v9, 0x0

    invoke-direct {v2, v1, v9}, LF1/W0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, LS1/g;->c(I)V

    goto :goto_13

    :cond_24
    const/4 v9, 0x0

    :goto_13
    iput-boolean v9, v1, Lcom/android/camera/a;->U0:Z

    return-void

    :goto_14
    invoke-virtual {v3}, Lu2/Q;->W()Z

    move-result v0

    const/4 v7, 0x4

    if-nez v0, :cond_25

    if-nez v8, :cond_25

    if-nez v6, :cond_25

    iget-boolean v0, v1, Lcom/android/camera/Camera;->X1:Z

    if-eqz v0, :cond_26

    :cond_25
    const/4 v6, 0x1

    goto :goto_15

    :cond_26
    move v0, v5

    const/4 v6, 0x1

    goto :goto_16

    :goto_15
    iput-boolean v6, v1, Lcom/android/camera/Camera;->X1:Z

    move v0, v7

    :goto_16
    if-eq v0, v7, :cond_27

    if-eqz v4, :cond_27

    move v4, v5

    goto :goto_17

    :cond_27
    if-eq v0, v7, :cond_29

    iget v4, v3, Lu2/Q;->u:I

    invoke-virtual {v3, v4}, Lu2/Q;->E(I)I

    move-result v4

    const/16 v5, 0xb3

    if-ne v4, v5, :cond_29

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v4

    const-class v5, Lcom/android/camera/data/observeable/c;

    invoke-virtual {v4, v5}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/observeable/c;

    invoke-virtual {v4}, Lcom/android/camera/data/observeable/c;->getCurrentState()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_28

    iget-object v0, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string/jumbo v1, "resumeCamera: vv combine, return"

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_28
    const/4 v7, -0x1

    move v4, v7

    goto :goto_17

    :cond_29
    move v4, v6

    :goto_17
    if-eqz v13, :cond_2b

    if-nez v8, :cond_2a

    if-eqz v2, :cond_2b

    :cond_2a
    move v5, v6

    :goto_18
    move-object v2, v3

    move v3, v0

    goto :goto_19

    :cond_2b
    const/4 v5, 0x0

    goto :goto_18

    :goto_19
    new-instance v0, Lcom/android/camera/Camera$c;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/Camera$c;-><init>(Lcom/android/camera/Camera;Lu2/Q;IIZ)V

    iput-object v0, v1, Lcom/android/camera/Camera;->T1:Lcom/android/camera/Camera$c;

    iget-object v2, v1, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    const/4 v9, 0x0

    goto :goto_1a

    :cond_2c
    iget-object v0, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string/jumbo v2, "resumeCamera: module is obsolete"

    const/4 v9, 0x0

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/camera/Camera;->unRegisterProtocol()V

    invoke-virtual {v1}, Lcom/android/camera/Camera;->registerProtocol()V

    :goto_1a
    iget-object v0, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string/jumbo v1, "resumeCamera: X"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final Sr()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v2, LF1/L0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0}, LF1/L0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_0
    return-void
.end method

.method public final T2()Z
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget-boolean v0, v0, Lu2/Q;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/a;->a0:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v0

    const/16 v2, 0xa0

    if-ne v0, v2, :cond_1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v2, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v2}, Lu2/Q;->E(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v3, "onCameraException: retry1"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lu2/Q;->n:Z

    iput-boolean v1, p0, Lcom/android/camera/a;->O0:Z

    iget-object v1, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    new-instance v2, LF1/w1;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, p0}, LF1/w1;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v3

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string/jumbo v3, "retryOnceIfCameraError, retried: "

    const-string v4, ", activityPaused: "

    invoke-static {v3, v4, v0}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/camera/a;->a0:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public final Te()LF8/c;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->z1:Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    return-object p0
.end method

.method public final Tr(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/K1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/K1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/L1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/L1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj9/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lj9/a;->v0(Z)V

    :cond_0
    return-void
.end method

.method public final Ur(ILandroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "setImportantForAccessibility E mode = "

    invoke-static {p1, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const-string/jumbo v0, "setImportantForAccessibility X mode = "

    invoke-static {p1, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method public final Vr(Lcom/android/camera/module/loader/base/StartControl;Z)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->assertCameraSetupThread()V

    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v4, p0, Lcom/android/camera/Camera;->L1:Lcom/android/camera/module/loader/base/StartControl;

    invoke-virtual {v4}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/Camera;->L1:Lcom/android/camera/module/loader/base/StartControl;

    invoke-virtual {v5}, Lcom/android/camera/module/loader/base/StartControl;->getViewConfigType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/Camera;->L1:Lcom/android/camera/module/loader/base/StartControl;

    invoke-virtual {v6}, Lcom/android/camera/module/loader/base/StartControl;->isNeedBlurAnimation()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/Camera;->L1:Lcom/android/camera/module/loader/base/StartControl;

    invoke-virtual {v7}, Lcom/android/camera/module/loader/base/StartControl;->getResetType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v8

    iget-object v8, v8, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v8}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "setupCamera, startControl module 0x%x, need anim %d, need blur %b, reset type %d, fk %b."

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->K()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, LH6/d;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/camera/a;->M0:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/camera/a;->a0:Z

    if-nez v2, :cond_5

    invoke-static {}, LK2/e;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/a;->Wq()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/base/StartControl;->getResetType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v2

    iget-object v2, v2, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v2}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object v2

    invoke-interface {v2}, Lj6/f;->y()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string/jumbo p1, "setupCamera: skipped since module has been created"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string/jumbo v3, "setupCamera: E"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v2

    iget-object v3, v2, LF6/q;->e:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput-boolean v0, v2, LF6/q;->d:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v2

    iget-object v2, v2, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v3

    iget-object v3, v3, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v3}, Lcom/android/camera/module/W;->isPurePreview()Z

    move-result v3

    sget-object v4, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v5, LF1/g2;

    invoke-direct {v5, p0, v2, v3}, LF1/g2;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/module/W;Z)V

    invoke-static {v4, v5}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/Camera;->zr()V

    new-instance v2, Lt6/b;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v4

    invoke-virtual {v4}, Loh/b;->n()LOh/d;

    move-result-object v4

    iget-object v4, v4, LOh/d;->b:LOh/c;

    sget-object v5, LOh/c;->f:LOh/c;

    if-ne v4, v5, :cond_4

    move v4, v0

    goto :goto_0

    :cond_4
    move v4, v1

    :goto_0
    invoke-direct {v2, p1, v3, v4, p2}, Lt6/b;-><init>(Lcom/android/camera/module/loader/base/StartControl;Landroid/content/Intent;ZZ)V

    new-instance p2, Lt6/d;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v3

    invoke-direct {p2, v3}, Lt6/a;-><init>(I)V

    new-instance v3, Lt6/c;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lt6/c;-><init>(Landroid/content/Intent;I)V

    new-instance v4, Lt6/e;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v5

    invoke-direct {v4, v5}, Lt6/a;-><init>(I)V

    new-instance v5, Lt6/g;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/camera/module/loader/base/StartControl;->needNotifyUI()Z

    move-result p1

    invoke-direct {v5, v6, p1}, Lt6/g;-><init>(IZ)V

    iget-object p1, p0, Lcom/android/camera/Camera;->M1:Lf6/a;

    invoke-static {p1}, Lio/reactivex/w;->a(Lio/reactivex/z;)Lio/reactivex/internal/operators/single/a;

    move-result-object p1

    sget-object v6, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {p1, v6}, Lio/reactivex/w;->e(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/m;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v7

    iget-object v7, v7, Loh/b;->o:Lcom/android/camera/module/W;

    new-instance v8, Lt6/k;

    const/16 v9, 0xe0

    invoke-direct {v8, v9, v7}, Lt6/k;-><init>(ILcom/android/camera/module/W;)V

    invoke-static {v8}, Lio/reactivex/w;->b(Ljava/lang/Object;)Lio/reactivex/internal/operators/single/j;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    invoke-virtual {v7, v8}, Lio/reactivex/w;->c(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/l;

    move-result-object v7

    new-instance v9, Lio/reactivex/internal/operators/single/k;

    invoke-direct {v9, v7, v2}, Lio/reactivex/internal/operators/single/k;-><init>(Lio/reactivex/w;Lio/reactivex/functions/e;)V

    iget-object v2, p0, Lcom/android/camera/Camera;->N1:Lu6/j;

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v7

    iget-object v7, v7, Loh/b;->o:Lcom/android/camera/module/W;

    iput-object v7, v2, Lu6/j;->d:Lcom/android/camera/module/W;

    iget-object v2, p0, Lcom/android/camera/Camera;->N1:Lu6/j;

    invoke-static {v2}, Lio/reactivex/w;->a(Lio/reactivex/z;)Lio/reactivex/internal/operators/single/a;

    move-result-object v2

    invoke-virtual {v2, v8}, Lio/reactivex/w;->e(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/m;

    move-result-object v2

    iget-object v7, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string/jumbo v10, "setupCamera: CameraSetupDisposable: E"

    new-array v11, v1, [Ljava/lang/Object;

    invoke-static {v7, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v7, LF1/h2;

    invoke-direct {v7, p0, v1}, LF1/h2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v2, v7}, Lio/reactivex/w;->f(Lio/reactivex/w;Lio/reactivex/functions/c;)Lio/reactivex/internal/operators/single/p;

    move-result-object v2

    invoke-virtual {v2, v8}, Lio/reactivex/w;->c(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/l;

    move-result-object v2

    new-instance v7, Lio/reactivex/internal/operators/single/k;

    invoke-direct {v7, v2, p2}, Lio/reactivex/internal/operators/single/k;-><init>(Lio/reactivex/w;Lio/reactivex/functions/e;)V

    new-instance p2, Lio/reactivex/internal/operators/single/k;

    invoke-direct {p2, v7, v3}, Lio/reactivex/internal/operators/single/k;-><init>(Lio/reactivex/w;Lio/reactivex/functions/e;)V

    invoke-virtual {p2, v6}, Lio/reactivex/w;->c(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/l;

    move-result-object p2

    new-instance v2, Lio/reactivex/internal/operators/single/k;

    invoke-direct {v2, p2, v4}, Lio/reactivex/internal/operators/single/k;-><init>(Lio/reactivex/w;Lio/reactivex/functions/e;)V

    new-instance p2, LF1/i2;

    invoke-direct {p2, p0, v1}, LF1/i2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, p1, p2}, Lio/reactivex/w;->f(Lio/reactivex/w;Lio/reactivex/functions/c;)Lio/reactivex/internal/operators/single/p;

    move-result-object p1

    new-instance p2, Lio/reactivex/internal/operators/single/k;

    invoke-direct {p2, p1, v5}, Lio/reactivex/internal/operators/single/k;-><init>(Lio/reactivex/w;Lio/reactivex/functions/e;)V

    new-instance p1, Lio/reactivex/internal/operators/single/d;

    invoke-direct {p1, p2}, Lio/reactivex/internal/operators/single/d;-><init>(Lio/reactivex/w;)V

    new-instance p2, LF1/j2;

    invoke-direct {p2, p0}, LF1/j2;-><init>(Ljava/lang/Object;)V

    new-instance v2, LF1/k1;

    invoke-direct {v2, p0, v0}, LF1/k1;-><init>(Lcom/android/camera/Camera;I)V

    invoke-virtual {p1, p2, v2}, Lio/reactivex/w;->subscribe(Lio/reactivex/functions/d;Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->H1:Lio/reactivex/disposables/b;

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string/jumbo p1, "setupCamera: X"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setupCamera: skipped, isCameraLaunchPermissions: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LH6/d;->b()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsNewCTAShowing: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/a;->M0:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isActivityPaused: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/a;->a0:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/android/camera/a;->Y:Z

    return-void
.end method

.method public final Wj()LF1/i4;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/a;->W:LF1/i4;

    return-object p0
.end method

.method public final Wr()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    invoke-virtual {v0}, Loh/b;->m()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/m;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LF1/m;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v1, "shouldReleaseLater = "

    invoke-static {v1, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final Xq(I)V
    .locals 2

    iput p1, p0, Lcom/android/camera/Camera;->o2:I

    iget-object p1, p0, Lcom/android/camera/Camera;->p2:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Rq()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/a;->Y:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/Camera;->p2:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "notifyOnFirstFrameArrived: handle by self"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Hr()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string p1, "notifyOnFirstFrameArrived module is changing or destroyed"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Xr(I)V
    .locals 11
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_camera_exception"

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

    const-string v1, "attr_feature_name"

    const-string v2, "camera_hardware_error"

    invoke-virtual {v0, v2, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attr_error_msg"

    invoke-virtual {v0, v1, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    sget-object v0, Lqi/a;->b:Ljava/lang/Boolean;

    invoke-static {}, Lci/d;->b()Lci/b;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "pref_dfs_camera_error_last_report_time"

    invoke-virtual {v0, v3, v4}, Lbi/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {}, Lci/d;->b()Lci/b;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "pref_dfs_camera_error_daily_report_count"

    invoke-virtual {v0, v7, v8}, Lbi/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    cmp-long v1, v9, v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v1, v9, v5

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    sget-boolean v1, Lqi/a;->f:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lci/d;->b()Lci/b;

    move-result-object v1

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Lbi/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-boolean v3, Lqi/a;->f:Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lci/d;->b()Lci/b;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lbi/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lci/d;->b()Lci/b;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lbi/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    sget-object v0, LG1/b;->d:Ljava/lang/String;

    sget-object v1, LG1/b$b;->a:LG1/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    iget-object v2, v2, Lu6/f;->a:Lu6/b;

    iget v2, v2, Lu6/b;->a:I

    invoke-virtual {v0, v2}, Lu6/f;->Q(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v4

    const/4 v2, 0x4

    invoke-virtual/range {v1 .. v6}, LG1/b;->a(IIIJ)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Reason"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    iget-object v2, v2, Lu6/f;->a:Lu6/b;

    iget v2, v2, Lu6/b;->a:I

    invoke-virtual {v1, v2}, Lu6/f;->Q(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RoleId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AppMoudle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x36d63d14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, LJ2/e;->c(IJLjava/util/HashMap;)V

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final Yq(Lf2/a$a;)V
    .locals 14
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFlashScreenHalo"
        type = 0x0
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v1

    invoke-virtual {v1}, LS1/g;->b()Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lf2/a;->f:Lf2/a;

    sget-object v2, Lf2/b;->a:Ljava/util/HashMap;

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v2

    const-class v3, Lw7/c;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw7/c;

    invoke-virtual {v2}, Lw7/c;->b()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, LQ6/n1;->dj()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    iget v4, p1, Lf2/a$a;->a:I

    invoke-static {}, Lj9/f;->m0()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    const/16 v6, 0xa2

    if-ne v4, v6, :cond_2

    const v5, 0x3f48c8c9

    :cond_2
    const-string v4, "getHaloBrightness: "

    invoke-static {v4, v5}, LP0/g;->d(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "FlashHalo"

    invoke-static {v7, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v4, p1, Lf2/a$a;->d:Z

    const-class v6, Lv2/F0;

    if-eqz v4, :cond_3

    goto/16 :goto_4

    :cond_3
    iget v4, p1, Lf2/a$a;->a:I

    const/16 v8, 0xe6

    if-ne v4, v8, :cond_4

    move v9, v0

    move v4, v3

    goto/16 :goto_5

    :cond_4
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v8, Lr2/w;

    invoke-virtual {v4, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/w;

    invoke-virtual {v4}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    iget v8, p1, Lf2/a$a;->a:I

    invoke-virtual {v4, v8}, Lr2/w;->I(I)Z

    move-result v8

    if-eqz v8, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    invoke-virtual {v8}, Lu2/Q;->C()I

    move-result v8

    iget v9, p1, Lf2/a$a;->a:I

    invoke-static {v9, v8}, Lr2/w;->K(II)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_4

    :cond_6
    iget v8, p1, Lf2/a$a;->a:I

    invoke-virtual {v4, v8}, Lr2/w;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "104"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "2"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, LJe/c$b;->a:LJe/c;

    invoke-virtual {v10}, LJe/c;->O0()V

    :cond_7
    sget-object v10, Lf2/d;->c:Lf2/d;

    iget v10, v10, Lf2/d;->a:I

    const-string v11, "105"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-boolean v4, v4, Lr2/w;->j:Z

    if-eqz v4, :cond_8

    if-ne v10, v0, :cond_8

    iget-boolean v4, p1, Lf2/a$a;->b:Z

    if-nez v4, :cond_8

    move v4, v0

    move v9, v4

    goto :goto_2

    :cond_8
    move v4, v9

    :goto_2
    iget-boolean v11, p1, Lf2/a$a;->c:Z

    if-eqz v11, :cond_9

    move v4, v0

    move v9, v4

    :cond_9
    invoke-static {}, LK2/b;->N()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-static {}, LK2/b;->S()Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_a
    move v4, v3

    :cond_b
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v11

    invoke-virtual {v11, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lv2/F0;

    invoke-virtual {v11}, Lv2/F0;->b()I

    move-result v11

    invoke-static {}, LK2/e;->y()Z

    move-result v12

    if-eqz v12, :cond_c

    if-nez v11, :cond_c

    move v4, v3

    :cond_c
    iget v12, p1, Lf2/a$a;->a:I

    invoke-static {v12}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v12

    if-eqz v12, :cond_d

    move v4, v3

    :cond_d
    invoke-static {}, LK2/b;->a0()Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, 0x3

    if-eq v11, v12, :cond_e

    move v4, v3

    :cond_e
    if-eqz v2, :cond_10

    if-ne v9, v0, :cond_f

    iget v4, p1, Lf2/a$a;->a:I

    invoke-static {v4}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {}, LK2/b;->N()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {}, LK2/b;->R()Z

    move-result v4

    if-nez v4, :cond_f

    move v4, v0

    goto :goto_3

    :cond_f
    move v4, v3

    :cond_10
    :goto_3
    const-string v11, "flashValue:"

    const-string v12, " currentThemeMode:"

    const-string v13, " fromConfig:"

    invoke-static {v11, v8, v10, v12, v13}, LCs/Q;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p1, Lf2/a$a;->b:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " forceOn:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p1, Lf2/a$a;->c:Z

    const-string v11, " showHalo = "

    invoke-static {v8, v10, v11, v4}, LF1/B2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v7, v8, v10}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_11
    :goto_4
    move v4, v3

    move v9, v4

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v9, v1, Lf2/a;->e:I

    sget-object v8, Lf2/d;->c:Lf2/d;

    iget v10, v8, Lf2/d;->a:I

    if-nez v2, :cond_12

    if-eq v9, v10, :cond_12

    move v2, v0

    goto :goto_6

    :cond_12
    move v2, v3

    :goto_6
    if-eqz v2, :cond_14

    invoke-virtual {v8, v9}, Lf2/d;->a(I)V

    iget v9, v1, Lf2/a;->e:I

    if-ne v9, v0, :cond_13

    move v9, v0

    goto :goto_7

    :cond_13
    move v9, v3

    :goto_7
    iput-boolean v9, v1, Lf2/a;->b:Z

    iput-boolean v4, v1, Lf2/a;->a:Z

    :cond_14
    const-string v9, "reConfigScreenHalo:  "

    const-string v10, " > current halo state: "

    invoke-static {v9, v10, v4}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v1, Lf2/a;->a:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " themeMode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lf2/d;->a:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v7, v1, Lf2/a;->a:Z

    if-eq v7, v4, :cond_15

    iput-boolean v4, v1, Lf2/a;->a:Z

    invoke-static {}, LQ6/b0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LF1/H1;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, LF1/H1;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_8

    :cond_15
    iput v5, v1, Lf2/a;->c:F

    :goto_8
    if-eqz v2, :cond_18

    iget-boolean p1, p1, Lf2/a$a;->e:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v1

    iget-object v1, v1, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v1}, Lvr/m;->i(Landroid/content/Intent;)I

    move-result v1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v4, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v4}, Lu2/Q;->E(I)I

    move-result v2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    invoke-static {v2}, Lv2/G0;->c(I)Lv2/G0;

    move-result-object v5

    invoke-static {v2, v1}, LPq/b;->C(II)I

    move-result v1

    iput v1, v5, Lv2/G0;->e:I

    invoke-static {v2}, LPq/b;->G(I)Z

    move-result v1

    iput-boolean v1, v5, Lv2/G0;->d:Z

    invoke-static {v2}, LPq/b;->H(I)V

    invoke-virtual {v4, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/F0;

    invoke-virtual {v1, v5}, Lv2/F0;->c(Lv2/G0;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->L1:Lcom/android/camera/module/loader/base/StartControl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/camera/module/loader/base/StartControl;->getTargetMode()I

    move-result v2

    iget-object v1, v1, LS1/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_17

    :goto_9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_17

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/c;

    invoke-interface {v4}, Lcom/android/camera/fragment/c;->canProvide()Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_a

    :cond_16
    invoke-interface {v4, v2, p1}, Lcom/android/camera/fragment/c;->notifyThemeChanged(II)V

    :goto_a
    add-int/2addr v3, v0

    goto :goto_9

    :cond_17
    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/a;->or(I)V

    :cond_18
    return-void
.end method

.method public final Yr(Z)V
    .locals 14

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v1

    const-string v2, "android.providerui.cts"

    invoke-virtual {v1}, Lvr/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "showGuide: isCtsCall = "

    invoke-static {v2, v1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/android/camera/a;->j0:Z

    if-nez v2, :cond_a

    if-nez v1, :cond_a

    sget-object v1, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    iget v1, v1, Lcom/android/camera/c;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->Y()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Gr()Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-static {}, LK2/b;->a0()Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/a;->Wq()Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lcom/android/camera/guide/a;->i:Lcom/android/camera/guide/a$b;

    invoke-virtual {p1}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    const-string v4, "pref_second_screen_guide_shown_key"

    invoke-virtual {v3, v4, v0}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    iget-object p0, p0, Lcom/android/camera/Camera;->J1:Lf6/u;

    const-string p1, "featureManager"

    invoke-static {p0, p1}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    const/16 v0, 0xb5

    invoke-virtual {p0, p1, v0}, Lf6/u;->d(II)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {p1, v0, v1}, LF1/s2;->a(III)Lf6/z;

    move-result-object p1

    iput-boolean v2, p1, Lf6/z;->e:Z

    new-instance v0, Lf6/J;

    invoke-direct {v0}, Lf6/J;-><init>()V

    iput-object v0, p1, Lf6/z;->c:Lf6/i;

    invoke-virtual {p0, p1}, Lf6/u;->h(Lf6/z;)V

    return-void

    :cond_3
    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    invoke-virtual {p1}, LJe/c;->l1()Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Lcom/android/camera/Camera$i;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$i;-><init>(Lcom/android/camera/Camera;)V

    sget v4, LQ5/J;->a:I

    if-ne v4, v1, :cond_4

    invoke-static {}, LQ5/J;->h()V

    :cond_4
    invoke-static {}, LQ5/J;->b()I

    move-result v4

    const-string v5, "init: state = "

    invoke-static {v4, v5}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "GuideManager"

    invoke-static {v7, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v4, v1, :cond_a

    invoke-static {}, LQ5/J;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, LJe/c;->i2()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, -0x1

    if-ne v4, p1, :cond_6

    invoke-static {}, LQ5/J;->j()V

    move v4, v0

    :cond_6
    if-ge v4, v2, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->P0(Z)V

    iput-boolean v2, p0, Lcom/android/camera/a;->N0:Z

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p1

    invoke-virtual {p1}, Loh/b;->m()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LF1/F1;

    invoke-direct {v1, v0}, LF1/F1;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LF1/y2;

    invoke-direct {v1, v0}, LF1/y2;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/camera/Camera;->z1:Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->setEnableControls(Z)V

    :cond_7
    invoke-static {v4, v3}, LQ5/J;->c(ILcom/android/camera/Camera$i;)V

    return-void

    :cond_8
    invoke-static {}, LQ5/J;->h()V

    return-void

    :cond_9
    :goto_0
    new-instance v9, Lcom/android/camera/Camera$g;

    invoke-direct {v9, p0}, Lcom/android/camera/Camera$g;-><init>(Lcom/android/camera/Camera;)V

    new-instance v13, Lcom/android/camera/Camera$h;

    invoke-direct {v13, p0}, Lcom/android/camera/Camera$h;-><init>(Lcom/android/camera/Camera;)V

    const p1, 0x7f14060a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const p1, 0x7f140609

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const p1, 0x7f140608

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const p1, 0x7f140607

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v13}, Lvr/w;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/h;

    move-result-object p0

    invoke-virtual {p0, v2}, Lmiuix/appcompat/app/h;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/h;->show()V

    :cond_a
    :goto_1
    return-void
.end method

.method public Zq()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    iget-object v1, p0, Lcom/android/camera/Camera;->x2:LAs/l;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/camera/a;->kr()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/Camera;->z1:Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->setEnableControls(Z)V

    :cond_0
    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v4, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "persist.camera.feature.jacoco"

    invoke-static {v4, v3}, Lur/g;->e(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    :cond_1
    const-string v4, "camera.feature.cppCoverage"

    invoke-static {v4, v3}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/xiaomi/engine/MiCameraAlgo;->dumpGcov()V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v5, "onPause start mwm"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/a;->a0:Z

    sget-object v4, Lf2/d;->c:Lf2/d;

    new-instance v5, Ljava/lang/ref/WeakReference;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Lf2/d;->b:Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v5, "onPause end mwm"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/Camera;->Jr()V

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->Tr(Z)V

    :goto_0
    iget-object v4, p0, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onActivityPause: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, LF1/p4;->k:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "StreamingController"

    invoke-static {v6, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-static {v0, v1}, Lcom/android/camera/a;->mr(J)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result p0

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_5

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p0

    sget-object v0, LF6/a;->V:LF6/a;

    sget-object v1, LF6/a;->T:LF6/a;

    sget-object v4, LF6/a;->U:LF6/a;

    sget-object v5, LF6/a;->O:LF6/a;

    sget-object v6, LF6/a;->L:LF6/a;

    filled-new-array {v0, v1, v4, v5, v6}, [LF6/a;

    move-result-object v0

    invoke-virtual {p0, v0}, LF6/q;->e([LF6/a;)V

    :cond_5
    invoke-virtual {v2}, LJe/c;->h2()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lk7/M;->b()Lk7/M;

    move-result-object p0

    iput-boolean v3, p0, Lk7/M;->a:Z

    :cond_6
    iget-object p0, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lt5/a;->q:Lio/reactivex/internal/schedulers/n;

    sget-object p0, Lt5/a$b;->a:Lt5/a;

    invoke-virtual {p0}, Lt5/a;->e()V

    return-void
.end method

.method public final Zr()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportNewbieGuideDialogs"
        type = 0x0
    .end annotation

    new-instance v0, LF1/o1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LF1/o1;-><init>(Lcom/android/camera/Camera;I)V

    invoke-static {}, LA3/g;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, LF1/o1;->run()V

    return-void

    :cond_0
    sget-object v1, LKh/h;->a:Landroidx/lifecycle/E;

    invoke-virtual {v1}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LMh/a;

    new-instance v3, Lcom/android/camera/Camera$f;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/camera/Camera$f;-><init>(LMh/a;Landroidx/lifecycle/E;LF1/o1;)V

    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/C;->e(Landroidx/lifecycle/x;Landroidx/lifecycle/F;)V

    return-void
.end method

.method public final b5(ZZ)V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object v0

    iget-object v0, v0, LF1/B4;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object v4

    iget v4, v4, LF1/B4;->e:F

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    new-array v6, v2, [F

    invoke-static {}, LQ6/w0;->a()Ljava/util/Optional;

    move-result-object v7

    new-instance v8, LF1/s1;

    invoke-direct {v8, v6, v3}, LF1/s1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    if-eqz v7, :cond_0

    aget v4, v6, v3

    move-object v0, v7

    :cond_0
    iget-object v6, v1, Lcom/android/camera/Camera;->Y1:LF1/n3;

    iget-object v7, v6, LF1/n3;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/Camera;

    const-string v8, "GalleryHelper"

    if-eqz v7, :cond_17

    iget-boolean v9, v7, Lcom/android/camera/a;->a0:Z

    if-eqz v9, :cond_1

    goto/16 :goto_15

    :cond_1
    invoke-virtual {v7}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object v9

    iget-object v9, v9, LF1/B4;->a:LF1/w4;

    sget-object v10, Lcom/android/camera/guide/a;->i:Lcom/android/camera/guide/a$b;

    if-eqz v9, :cond_13

    const-string v11, ", intent "

    const-string/jumbo v12, "startGalleryFromThumb, queryIntentActivities matched none, uri "

    const-string v13, "gotoGallery: thumbnail uri="

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    invoke-static {v14}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v15

    const/16 v5, -0x13

    invoke-static {v14, v5}, Landroid/os/Process;->setThreadPriority(II)V

    iget-object v5, v9, LF1/w4;->a:Landroid/net/Uri;

    if-nez v5, :cond_2

    const-string v0, "gotoGallery: thumbnail uri is not ready"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, v9, LF1/w4;->d:Z

    if-nez v0, :cond_5

    invoke-virtual {v7}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object v0

    invoke-virtual {v0, v3}, LF1/B4;->b(Z)V

    goto/16 :goto_1

    :cond_2
    const-string v2, "gotoGallery: checking thumbnail uri: "

    invoke-static {v5, v2}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v10

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v8, v2, v10}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v3, "getLastUri = "

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, LF1/B4;->f:Landroid/net/Uri;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/Object;

    const-string v10, "ThumbnailUpdater"

    invoke-static {v10, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v2, LF1/B4;->f:Landroid/net/Uri;

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, LQg/e;->b()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->F()V

    invoke-static {}, LBw/i;->u()LF2/d;

    move-result-object v1

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v1, v1, LF2/d;->a:LF2/b;

    invoke-virtual {v1, v2}, LF2/b;->e(Ljava/lang/Long;)LE2/a;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v5}, Lvr/Q;->f(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "gotoGallery: invalid thumbnail uri: "

    invoke-static {v5, v0}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, v9, LF1/w4;->d:Z

    if-nez v0, :cond_5

    invoke-virtual {v7}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object v0

    invoke-virtual {v0, v10}, LF1/B4;->b(Z)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {}, LQg/e;->b()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v5}, Lvr/Q;->f(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    :goto_1
    const-string/jumbo v0, "startGalleryFromThumb: validateUriFail "

    invoke-static {v5, v0}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_6
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, v9, v5, v0, v4}, LF1/n3;->a(Lcom/android/camera/Camera;LF1/w4;Landroid/net/Uri;Landroid/graphics/Rect;F)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_7

    invoke-virtual {v7}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v7}, Lcom/android/camera/Camera;->Kr()V

    :cond_7
    if-nez p2, :cond_8

    invoke-virtual {v6, v9, v7}, LF1/n3;->c(LF1/w4;Lcom/android/camera/Camera;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_8
    :goto_2
    invoke-static {v7, v5}, LF1/n3;->b(Lcom/android/camera/Camera;Landroid/net/Uri;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v2, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v2}, Lu2/Q;->E(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    iget-object v2, v2, Lu6/f;->a:Lu6/b;

    iget v2, v2, Lu6/b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x18

    invoke-static {v2, v0}, LPh/h;->l(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    if-nez p2, :cond_a

    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    invoke-static {v1}, Lcom/android/camera/guide/a;->g(Landroid/content/Intent;)V

    :goto_4
    sget-object v0, LOh/c;->f:LOh/c;

    invoke-virtual {v7, v0}, Lcom/android/camera/a;->G2(LOh/c;)V

    invoke-virtual {v7}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_b

    invoke-virtual {v7}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_b

    if-nez p2, :cond_b

    invoke-virtual {v7}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v0

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Lj6/i;->enableCameraControls(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_10

    :goto_6
    const/4 v1, 0x0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startGalleryFromThumb error, uri "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v14, v15}, Landroid/os/Process;->setThreadPriority(II)V

    const-string v0, "launchMediaViewerWithActionView, uri "

    invoke-static {v5, v0}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    iget-boolean v0, v9, LF1/w4;->h:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-string v2, "com.miui.mediaviewer"

    if-eqz v0, :cond_e

    :try_start_4
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v3, 0x1

    :try_start_5
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v0, 0x1

    goto :goto_8

    :catch_2
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_d

    :try_start_6
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->W()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.mediaviewer.LITE_VIDEO_PLAY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_9
    move-object v1, v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto/16 :goto_f

    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.mediaviewer.VIDEO_PLAY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_a
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_d
    const-string/jumbo v0, "video/*"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "request_from"

    const-string v2, "com.android.camera"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "title"

    iget-object v2, v9, LF1/w4;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "subtitle"

    iget-object v2, v9, LF1/w4;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d

    :cond_e
    sget-boolean v0, LJe/d;->m:Z

    if-nez v0, :cond_f

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->F()V

    invoke-virtual {v0}, LJe/c;->E()V

    const/4 v0, 0x1

    goto :goto_b

    :cond_f
    const/4 v0, 0x0

    :goto_b
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v4, 0x1

    :try_start_7
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    const/4 v3, 0x1

    goto :goto_c

    :catch_4
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_10

    if-eqz v0, :cond_10

    :try_start_8
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_10
    const-string v0, "image/*"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_d
    const-string v0, "StartActivityWhenLocked"

    invoke-static {}, LQa/i;->d()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez p2, :cond_11

    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    :cond_11
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    invoke-static {v1}, Lcom/android/camera/guide/a;->g(Landroid/content/Intent;)V

    :goto_e
    sget-object v0, LOh/c;->f:LOh/c;

    invoke-virtual {v7, v0}, Lcom/android/camera/a;->G2(LOh/c;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_5

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "launchMediaViewerWithActionView failed, uri = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1413e5

    invoke-static {v0, v1}, LF1/C4;->e(Landroid/content/Context;I)LPu/A;

    const/4 v0, 0x0

    :goto_10
    invoke-static {v14, v15}, Landroid/os/Process;->setThreadPriority(II)V

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->h2()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v9, LF1/w4;->a:Landroid/net/Uri;

    if-nez v1, :cond_12

    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "onNotifyBGServiceToGallery:thumbnail uri is null"

    invoke-static {v8, v2, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_12
    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v3, LF1/T1;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, LF1/T1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v3}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto/16 :goto_16

    :cond_13
    move-object/from16 v16, v10

    if-nez p1, :cond_16

    sget-object v0, LOh/c;->f:LOh/c;

    invoke-virtual {v7, v0}, Lcom/android/camera/a;->G2(LOh/c;)V

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    const-string v1, "gotoGallery: no gallery"

    const-string v2, "com.miui.gallery"

    if-eqz v0, :cond_14

    if-nez p2, :cond_14

    sget-boolean v0, LQa/b;->e:Z

    if-nez v0, :cond_16

    :try_start_9
    const-string v0, "gotoGallery: com.miui.gallery.action.VIEW_EMPTY_PHOTO"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    const/4 v10, 0x0

    :try_start_a
    new-array v3, v10, [Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :try_start_b
    invoke-static {v8, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.gallery.action.VIEW_EMPTY_PHOTO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from_MiuiCamera"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "skip_interception"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :goto_11
    const/4 v0, 0x1

    goto :goto_16

    :catch_6
    const/4 v10, 0x0

    :catch_7
    new-array v0, v10, [Ljava/lang/Object;

    invoke-static {v8, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_14
    sget-boolean v0, LQa/b;->e:Z

    if-nez v0, :cond_16

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->F()V

    invoke-static {v7}, LF1/n3;->d(Lcom/android/camera/Camera;)V

    :try_start_c
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_15

    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_12

    :catch_8
    const/4 v10, 0x0

    goto :goto_13

    :cond_15
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    invoke-static {v0}, Lcom/android/camera/guide/a;->g(Landroid/content/Intent;)V

    :goto_12
    invoke-static {v7}, LQa/i;->a(Landroid/app/Activity;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_11

    :goto_13
    new-array v0, v10, [Ljava/lang/Object;

    invoke-static {v8, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    :goto_14
    const/4 v0, 0x0

    goto :goto_16

    :cond_17
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gotoGallery: camera="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_18
    :goto_16
    if-eqz v0, :cond_1d

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/camera/a;->k0:Z

    if-eqz v0, :cond_19

    if-nez p1, :cond_19

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/L1;

    const/4 v10, 0x0

    invoke-direct {v2, v10}, LF1/L1;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj9/a;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lj9/a;->Z()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "closeCameraWhenGalleryLock: "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v2, LF1/n2;

    invoke-direct {v2, v10}, LF1/n2;-><init>(I)V

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x14

    int-to-long v3, v3

    invoke-static {v0, v2, v3, v4}, LAr/d;->g(Lio/reactivex/v;Ljava/lang/Runnable;J)Lio/reactivex/disposables/b;

    :cond_19
    if-eqz p2, :cond_1c

    iget-object v0, v1, Lcom/android/camera/Camera;->h2:Lq8/s0;

    iget-object v2, v1, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "SecondScreenAlbumDialog is already showing"

    const/4 v10, 0x0

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :cond_1a
    const/4 v10, 0x0

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "Activity is finishing"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :cond_1b
    new-instance v0, Lq8/s0;

    const v3, 0x103000a

    invoke-direct {v0, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iput-object v0, v1, Lcom/android/camera/Camera;->h2:Lq8/s0;

    new-instance v3, LDe/a;

    invoke-direct {v3, v1}, LDe/a;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lq8/s0;->b:LDe/a;

    invoke-virtual {v0}, Lq8/s0;->show()V

    const-string v0, "SecondScreenAlbumDialog shown"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    :goto_17
    sget-object v0, Lio/reactivex/schedulers/a;->a:Lio/reactivex/v;

    new-instance v2, LEs/B;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, LEs/B;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_1d
    return-void
.end method

.method public final br()V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "recoverFromCameraError: E"

    iget-object v3, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/a;->br()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v2, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v2}, Lu2/Q;->E(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    invoke-virtual {p0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object v1

    sget v4, LE4/u;->O:I

    const-string v4, "CameraExitHint"

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->E(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "hideErrorScreen, fragment: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_0

    instance-of v4, v5, LE4/u;

    if-eqz v4, :cond_0

    check-cast v5, LE4/u;

    const/4 v4, -0x1

    iput v4, v5, LE4/u;->s:I

    new-instance v4, Landroidx/fragment/app/a;

    invoke-direct {v4, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v4, v5}, Landroidx/fragment/app/a;->h(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v4, v2}, Landroidx/fragment/app/a;->n(Z)I

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/a;->O0:Z

    const-string p0, "recoverFromCameraError: X"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c0(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/a;->b0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/a;->Y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    new-instance v1, LF1/e1;

    invoke-direct {v1, p0, p1}, LF1/e1;-><init>(Lcom/android/camera/Camera;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLowBatteryNotification: isActivityPaused="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/camera/a;->a0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isSwitchingModule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/a;->Y:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final cs()V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lph/b;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    sget-object v2, Lph/b;->a:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LF1/d2;

    invoke-direct {v2, v0}, LF1/d2;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LF1/e2;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LF1/e2;-><init>(Lcom/android/camera/Camera;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    const-string v2, "IsMultiCamera: "

    invoke-static {v2, v1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p0

    const-string v0, "multi_camera"

    invoke-virtual {p0, v0, v1}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatchKeyEvent: keycode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LF1/r1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, LF1/r1;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->D1:LF1/X3;

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    invoke-static {}, LF1/X3;->c()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, LF1/X3;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, LF1/X3;->a()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x4f

    if-eq v4, v5, :cond_6

    const/16 v5, 0x7e

    if-eq v4, v5, :cond_6

    const/16 v5, 0x7f

    if-eq v4, v5, :cond_6

    packed-switch v4, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_2

    move p0, v2

    goto :goto_0

    :cond_2
    move p0, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, LF1/X3;->d(I)I

    move-result p1

    iget v1, v0, LF1/X3;->f:I

    if-nez v1, :cond_3

    iput v3, v0, LF1/X3;->e:I

    iput v3, v0, LF1/X3;->f:I

    :cond_3
    if-eqz p0, :cond_4

    iget p0, v0, LF1/X3;->e:I

    or-int/2addr p0, p1

    iput p0, v0, LF1/X3;->e:I

    iget p0, v0, LF1/X3;->f:I

    or-int/2addr p0, p1

    iput p0, v0, LF1/X3;->f:I

    goto :goto_1

    :cond_4
    iget p0, v0, LF1/X3;->f:I

    not-int p1, p1

    and-int/2addr p0, p1

    iput p0, v0, LF1/X3;->f:I

    :goto_1
    iget p0, v0, LF1/X3;->e:I

    iget p1, v0, LF1/X3;->m:I

    if-ne p0, p1, :cond_5

    new-instance p0, Lgq/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "key_pocket_mode_keyguard_exit"

    iput-object p1, p0, Lgq/h;->a:Ljava/lang/String;

    new-instance p1, Lgq/f;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p1, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p1, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p1, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lgq/h;->b:Lgq/f;

    const-string p1, "attr_operate_state"

    const-string v1, "keyguard_exit_dismiss"

    invoke-virtual {p0, v1, p1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgq/h;->d()V

    invoke-virtual {v0}, LF1/X3;->m()V

    :cond_5
    return v2

    :cond_6
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->m:LY2/f;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->m:LY2/f;

    invoke-virtual {v0}, LY2/f;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "Key event intercept caz layout change."

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_7
    invoke-static {}, LQ6/G0;->a()Ljava/util/Optional;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6/G0;

    if-eqz v0, :cond_8

    invoke-interface {v0}, LQ6/G0;->c8()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "Key event intercept caz mode change."

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_8
    invoke-static {}, LQ6/G1;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6/G1;

    invoke-interface {v0}, LQ6/G1;->Nk()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "Key event intercept caz zoom ring scroll."

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_9
    invoke-static {}, LK2/e;->B()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/a;->Wq()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/camera/guide/a;->i:Lcom/android/camera/guide/a$b;

    invoke-virtual {v0}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v1, "pref_second_screen_guide_shown_key"

    invoke-virtual {v0, v1, v3}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    return v3

    :cond_b
    invoke-super {p0, p1}, LW/f;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/camera/a;->a0:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->D1:LF1/X3;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LF1/X3;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v1

    invoke-interface {v1}, Lj6/i;->isIgnoreTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v4, Lv2/k0;

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/k0;

    iget-boolean v4, v1, Lv2/k0;->R:Z

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v1, v1, Lv2/k0;->e0:Z

    :goto_1
    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "Touch event intercept caz shine comparing."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v1

    const/16 v4, 0xaf

    if-ne v1, v4, :cond_6

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->v5()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v4, Lr2/c0;

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/c0;

    if-eqz v1, :cond_6

    iget-boolean v1, v1, Lr2/c0;->p:Z

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "Touch event intercept caz pixel capture still in progress."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_6
    invoke-static {}, LQ6/G0;->a()Ljava/util/Optional;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ6/G0;

    if-eqz v1, :cond_7

    invoke-interface {v1}, LQ6/G0;->c8()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v3, :cond_16

    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "Touch event intercept caz mode change."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v3, :cond_8

    invoke-static {}, LQ6/H0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LF1/o0;

    invoke-direct {v3, v2}, LF1/o0;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "Touch event intercept caz mode selector is touching!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->m:LY2/f;

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->m:LY2/f;

    invoke-virtual {v1}, LY2/f;->f()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_2

    :cond_9
    move v1, v0

    :goto_2
    if-eqz v1, :cond_a

    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "Touch event intercept caz layout change."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/Camera;->S1:LW5/d;

    if-eqz v1, :cond_c

    iget v1, v1, LW5/d;->f:I

    and-int/2addr v1, v2

    if-lez v1, :cond_b

    move v1, v2

    goto :goto_3

    :cond_b
    move v1, v0

    :goto_3
    if-eqz v1, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sget v3, LK2/e;->f:I

    invoke-static {}, LK2/e;->j()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const-string v4, "isExitHideNavBar: y = "

    const-string v5, " navBarTop = "

    invoke-static {v1, v3, v4, v5}, LF1/v2;->c(FFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {v6, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmpl-float v1, v1, v3

    if-lez v1, :cond_c

    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "Touch event intercept caz handle is connecting!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LF1/u1;

    invoke-direct {v3, v0}, LF1/u1;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_5

    :cond_d
    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LF1/v1;

    invoke-direct {v4, v0}, LF1/v1;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_5

    :cond_e
    iget-object v1, p0, Lcom/android/camera/Camera;->U1:LQ6/t0;

    if-nez v1, :cond_f

    invoke-static {}, LQ6/t0;->b()LQ6/t0;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->U1:LQ6/t0;

    :cond_f
    iget-object v1, p0, Lcom/android/camera/Camera;->U1:LQ6/t0;

    if-eqz v1, :cond_10

    invoke-interface {v1, p1}, LQ6/t0;->c9(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/camera/Camera;->U1:LQ6/t0;

    invoke-interface {v1}, LQ6/t0;->ne()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {p0}, Lq8/K0;->b(Landroid/app/Activity;)Lq8/K0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lq8/K0;->d(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "Touch event intercept caz focus-exposure separation."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string p1, "Touch event is intercepted!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_12

    :cond_11
    invoke-static {}, LQ6/D;->a()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    const-string v3, "pref_camera_handle_ring_pure_key"

    invoke-virtual {v1, v3, v0}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, LQ6/D;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LCs/f;

    invoke-direct {v3, v2}, LCs/f;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_12
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->o:Lcom/android/camera/module/W;

    instance-of v1, v1, Lcom/android/camera/features/mode/capture/CaptureModule;

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->o:Lcom/android/camera/module/W;

    check-cast v1, Lcom/android/camera/features/mode/capture/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/features/mode/capture/CaptureModule;->isLongPressedRecording()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x106

    if-ne v3, v4, :cond_13

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/camera/module/Camera2Module;->onSingleTapUp(IIZ)V

    :cond_13
    invoke-static {p0}, Lq8/K0;->b(Landroid/app/Activity;)Lq8/K0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xfe

    if-eq v3, v4, :cond_14

    goto :goto_5

    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sget v4, LK2/e;->f:I

    invoke-static {}, LK2/b;->i()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_15

    invoke-static {}, LK2/b;->U()Z

    move-result v3

    if-nez v3, :cond_16

    :cond_15
    invoke-virtual {v1, p1}, Lq8/K0;->d(Landroid/view/MotionEvent;)Z

    :cond_16
    :goto_5
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {p0}, Lq8/K0;->b(Landroid/app/Activity;)Lq8/K0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lq8/K0;->d(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_6

    :cond_17
    return v0

    :cond_18
    :goto_6
    return v2

    :cond_19
    :goto_7
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dr()V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/Camera;->l2:Lio/reactivex/disposables/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/reactivex/disposables/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v3, "onRestart restartActivity mCameraReleaseDisposable dispose"

    invoke-static {v1, v3}, Lcom/android/camera/log/LogK;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/Camera;->l2:Lio/reactivex/disposables/b;

    invoke-interface {v1}, Lio/reactivex/disposables/b;->c()V

    iget-object v1, p0, Lcom/android/camera/Camera;->k2:Lcom/android/camera/Camera$m;

    if-eqz v1, :cond_0

    iput-boolean v2, v1, Lcom/android/camera/Camera$m;->b:Z

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Camera;->l2:Lio/reactivex/disposables/b;

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    iget-boolean v3, v1, LF6/q;->n:Z

    if-eqz v3, :cond_1

    sget-object v3, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    new-instance v4, LE3/r;

    invoke-direct {v4, v1, v0}, LE3/r;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3, v4}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_0

    :cond_1
    const-string v1, "PerformanceManager"

    const-string v3, "not allow traceStart"

    invoke-static {v1, v3}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v3, "onRestart start"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->Mr(Z)V

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->K()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/a;->Pq()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    iget-object v1, v1, Lu6/f;->a:Lu6/b;

    iget v1, v1, Lu6/b;->a:I

    invoke-static {}, Lu6/i;->c()Lu6/i;

    move-result-object v3

    iget v3, v3, Lu6/i;->b:I

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    iget-object v4, v4, Lu6/f;->a:Lu6/b;

    iget v4, v4, Lu6/b;->a:I

    invoke-static {}, Lu6/i;->c()Lu6/i;

    move-result-object v5

    iget v5, v5, Lu6/i;->b:I

    invoke-static {v1, v3, v4, v5}, LB2/c;->n(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->yr(ZZ)V

    iget-object v0, p0, Lcom/android/camera/Camera;->Z1:Lvr/O;

    iget-object v1, p0, Lcom/android/camera/Camera;->a2:LF1/k0;

    sget-object v3, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v3, v4, v5}, Lvr/O;->d(Lio/reactivex/functions/a;Lio/reactivex/v;J)V

    :cond_3
    sget-object v0, Lio/reactivex/schedulers/a;->a:Lio/reactivex/v;

    iget-object v1, p0, Lcom/android/camera/Camera;->Y1:LF1/n3;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LAs/n;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4}, LAs/n;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v3}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-static {p0}, LK2/b;->K(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "onRestart end"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final ds()V
    .locals 6

    iget v0, p0, Lcom/android/camera/a;->f0:I

    const/4 v1, -0x1

    const-string v2, "OrientationEvent"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const-string v0, "[OrientationTrace] mPreviewOrientation Unknown"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/android/camera/a;->g0:Z

    return-void

    :cond_0
    iget v1, p0, Lcom/android/camera/a;->d0:I

    iput v0, p0, Lcom/android/camera/a;->d0:I

    if-ne v1, v0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz v5, :cond_2

    iput v0, v5, LD8/m;->c:I

    :cond_2
    const-string v0, "[OrientationTrace] updatePreviewOrientation: "

    const-string v5, " -> "

    invoke-static {v1, v0, v5}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/a;->d0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", realOrientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/a;->e0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/a;->d0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, LK2/e;->f(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/android/camera/a;->i0:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/android/camera/a;->i0:I

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    iget v0, p0, Lcom/android/camera/a;->h0:I

    iget v1, p0, Lcom/android/camera/a;->d0:I

    iget v2, p0, Lcom/android/camera/a;->i0:I

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/android/camera/a;->h0:I

    invoke-static {}, LK2/e;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/camera/a;->h0:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_4

    iput-boolean v3, p0, Lcom/android/camera/a;->g0:Z

    return-void

    :cond_4
    iget v1, p0, Lcom/android/camera/a;->e0:I

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v2

    iget-object v2, v2, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v2, :cond_6

    iget v5, p0, Lcom/android/camera/a;->h0:I

    if-ne v0, v5, :cond_5

    if-eqz v4, :cond_5

    invoke-interface {v2}, Lcom/android/camera/module/W;->resetOrientation()V

    :cond_5
    invoke-interface {v2}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->isDeparted()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/camera/a;->d0:I

    iget v4, p0, Lcom/android/camera/a;->h0:I

    invoke-interface {v2, v0, v4, v1}, Lcom/android/camera/module/W;->onOrientationChanged(III)V

    :cond_6
    iget-object v0, p0, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz v0, :cond_8

    iget v1, p0, Lcom/android/camera/a;->i0:I

    iput v1, v0, LF1/p4;->o:I

    iget v1, p0, Lcom/android/camera/a;->d0:I

    if-ltz v1, :cond_8

    rem-int/lit8 v2, v1, 0x5a

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    iput v1, v0, LF1/p4;->p:I

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v0

    invoke-virtual {v0}, LS1/g;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, LK2/e;->E()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, LK2/b;->O()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/android/camera/Camera;->J1:Lf6/u;

    invoke-virtual {v0}, Lf6/u;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/a;->h0:I

    invoke-virtual {v0, v1}, LS1/g;->a(I)V

    :cond_a
    invoke-static {}, LK2/e;->E()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    invoke-static {}, LQ6/g;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/d1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LF1/d1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_c
    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/T0;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/I;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LF1/I;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-boolean v3, p0, Lcom/android/camera/a;->g0:Z

    return-void
.end method

.method public final er()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v3, "onResume start"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->t1:Ljava/lang/String;

    invoke-virtual {v1, v2}, LF6/q;->q(Ljava/lang/String;)V

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->K()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, 0x4008000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    invoke-virtual {v1}, LJe/c;->F()V

    invoke-virtual {v1}, LJe/c;->E()V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->yr(ZZ)V

    :cond_1
    return-void
.end method

.method public final es(J)V
    .locals 3

    const-string v0, "[OrientationTrace] updatePreviewOrientation:delay "

    const-string v1, " ms"

    invoke-static {p1, p2, v0, v1}, LF1/r2;->b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    iget-object p0, p0, Lcom/android/camera/Camera;->w2:Lcom/android/camera/Camera$d;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final finish()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finish Activity from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v1, v0}, LF1/r0;->g(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public final finishAndRemoveTask()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finishAndRemoveTask Activity from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v1, v0}, LF1/r0;->g(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public fr()V
    .locals 5

    invoke-static {}, LK2/j;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/a;->W:LF1/i4;

    new-instance v3, LF1/f2;

    invoke-direct {v3, p0, v1}, LF1/f2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, LF1/i4;->d()Z

    move-result v4

    if-nez v4, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v0, v0, LF1/i4;->a:Ljava/lang/String;

    const-string/jumbo v4, "setPhoneAttitudeEnabled fail cause not init"

    invoke-static {v0, v4, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput-object v3, v0, LF1/i4;->V:LF1/f2;

    iget-boolean v3, v0, LF1/i4;->N:Z

    if-eq v3, v2, :cond_1

    iput-boolean v2, v0, LF1/i4;->N:Z

    const/16 v3, 0x4000

    invoke-virtual {v0, v3, v2}, LF1/i4;->v(IZ)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/android/camera/Camera;->z1:Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->z1:Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->setEnableControls(Z)V

    :cond_3
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v3, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "persist.camera.feature.jacoco"

    invoke-static {v3, v1}, Lur/g;->e(Ljava/lang/String;I)I

    iget-object v3, p0, Lcom/android/camera/Camera;->Z1:Lvr/O;

    iget-object v4, p0, Lcom/android/camera/Camera;->a2:LF1/k0;

    invoke-virtual {v3, v4}, Lvr/O;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Qr()V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera;->t1:Ljava/lang/String;

    invoke-virtual {v3, v4}, LF6/q;->g(Ljava/lang/String;)J

    iget-object v3, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v4, "onResume end"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v3, LAp/g;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, LAp/g;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v3}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-virtual {v0}, LJe/c;->h2()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lk7/M;->b()Lk7/M;

    move-result-object p0

    iput-boolean v2, p0, Lk7/M;->a:Z

    :cond_4
    iget-object p0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final fs(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "initAndAddPureSurfaceView"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/a;->x0:Lq8/f;

    if-nez p1, :cond_0

    new-instance p1, Lq8/f;

    invoke-direct {p1, p0}, LNw/b;-><init>(Lcom/android/camera/Camera;)V

    iput v3, p1, Lq8/f;->e:I

    iput-object p1, p0, Lcom/android/camera/a;->x0:Lq8/f;

    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->i()Lp9/w;

    move-result-object v3

    invoke-interface {v3, p0}, Lp9/w;->a(Landroid/content/Context;)F

    move-result v3

    invoke-interface {v0}, Lo9/b;->i()Lp9/w;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lo9/b;->i()Lp9/w;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v3}, LNw/b;->setRadius(F)V

    iget-object v0, p1, LNw/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/android/camera/a;->x0:Lq8/f;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v0, Lcom/android/camera/Camera$r;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$r;-><init>(Lcom/android/camera/Camera;)V

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/a;->x0:Lq8/f;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/a;->v0:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/camera/a;->x0:Lq8/f;

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v0, LDr/d;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LDr/d;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_1
    iget-object p1, p0, Lcom/android/camera/a;->v0:Landroid/widget/FrameLayout;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/a;->x0:Lq8/f;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->Br(Lq8/f;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v4, "initAndAddGpuSurfaceView"

    invoke-static {p1, v4}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/a;->w0:Lq8/f;

    if-nez p1, :cond_4

    new-instance p1, Lq8/f;

    invoke-direct {p1, p0}, LNw/b;-><init>(Lcom/android/camera/Camera;)V

    iput v3, p1, Lq8/f;->e:I

    iput-object p1, p0, Lcom/android/camera/a;->w0:Lq8/f;

    const v3, 0x7f0b088d

    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/android/camera/a;->w0:Lq8/f;

    sget-object v3, Lo9/a;->a:Lo9/b;

    invoke-interface {v3}, Lo9/b;->i()Lp9/w;

    move-result-object v4

    invoke-interface {v4, p0}, Lp9/w;->a(Landroid/content/Context;)F

    move-result v4

    invoke-interface {v3}, Lo9/b;->i()Lp9/w;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Lo9/b;->i()Lp9/w;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v4}, LNw/b;->setRadius(F)V

    iget-object v3, p1, LNw/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/android/camera/a;->w0:Lq8/f;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v1, Lcom/android/camera/Camera$n;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$n;-><init>(Lcom/android/camera/Camera;)V

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-static {}, LK2/j;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/camera/data/data/w;->t0()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, LK2/e;->E()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, LK2/e;->j:I

    sget v1, LK2/e;->k:I

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, p1, v1}, Landroid/util/Size;-><init>(II)V

    invoke-static {}, LK2/e;->u()Z

    iget-object p1, p0, Lcom/android/camera/a;->w0:Lq8/f;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-interface {p1, v1, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p1

    iget-object p1, p1, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/data/m;->N()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H()F

    move-result p1

    invoke-static {p1, v0}, LF1/U2;->d(FZ)V

    :cond_5
    iget-object p1, p0, Lcom/android/camera/a;->w0:Lq8/f;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/a;->v0:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/a;->w0:Lq8/f;

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v1, LF1/K0;

    invoke-direct {v1, p0, v0}, LF1/K0;-><init>(Lcom/android/camera/Camera;I)V

    invoke-static {p1, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_6
    iget-object p1, p0, Lcom/android/camera/a;->v0:Landroid/widget/FrameLayout;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/a;->w0:Lq8/f;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->Br(Lq8/f;)V

    return-void
.end method

.method public final g7()Lk7/i;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->C1:Lk7/i;

    return-object p0
.end method

.method public final gs()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/a;->A0:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, LK2/b;->Z()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    iget-object v1, p0, Lcom/android/camera/a;->A0:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->rr()V

    :cond_1
    return-void
.end method

.method public final hf(Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isRemoteOnlineSupported"
        type = 0x0
    .end annotation

    sget-object v0, Lcom/android/camera/Camera;->F2:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->E(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "VideoCastExitDialogFragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f150165

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    new-instance p1, LE4/J;

    invoke-direct {p1}, LE4/J;-><init>()V

    invoke-virtual {p1, v3}, Landroidx/fragment/app/g;->Cq(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v2, p1, v0, v4}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/a;->n(Z)I

    return-void

    :cond_1
    const-string v0, "RemoteOnlineExitDialogFragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, LE4/B;

    invoke-direct {p1}, LE4/B;-><init>()V

    invoke-virtual {p1, v3}, Landroidx/fragment/app/g;->Cq(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v2, p1, v0, v4}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/a;->n(Z)I

    return-void

    :cond_2
    const-string v0, "RemoteOnlineTipsDialogFragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, LE4/C;

    invoke-direct {p1}, LE4/C;-><init>()V

    invoke-virtual {p1, v3}, Landroidx/fragment/app/g;->Cq(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v2, p1, v0, v4}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/a;->n(Z)I

    :cond_3
    :goto_0
    return-void
.end method

.method public final hs()V
    .locals 5

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/a;->R0:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string/jumbo v4, "wakeUpAndUnlock: setShowWhenLocked true"

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/a;->setShowWhenLocked(Z)V

    :cond_0
    if-nez v1, :cond_1

    const p0, 0x1000000a

    const-string v1, "bright"

    invoke-virtual {v0, p0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method public final ic()Lp6/b;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->G1:Lp6/b;

    return-object p0
.end method

.method public jr()V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onStart start"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/a;->Z:Z

    invoke-super {p0}, Lcom/android/camera/a;->jr()V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v2

    invoke-virtual {v2}, LS1/g;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v2

    iget-object v3, v2, LS1/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput v1, v2, LS1/g;->j:I

    iget-object v2, v2, LS1/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityStart: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, LF1/p4;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "StreamingController"

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, LF1/p4;->j:Lcom/android/camera/a;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lvr/m;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Lvr/m;->o(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "device_id"

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, LF1/p4;->h:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityStart: remote device id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, LF1/p4;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LF1/p4;->L(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onStart end, ds= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/data/w;->t0()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\noriginal density = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiuix/autodensity/f;->c()Lmiuix/autodensity/f;

    move-result-object v4

    invoke-virtual {v4}, Lmiuix/autodensity/f;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " original default density = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiuix/autodensity/f;->c()Lmiuix/autodensity/f;

    move-result-object v4

    invoke-virtual {v4}, Lmiuix/autodensity/f;->a()Lmiuix/autodensity/i;

    move-result-object v4

    const/16 v5, 0xa0

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    iget v4, v4, Lmiuix/autodensity/i;->f:I

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dynamic density = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\noriginal smallest width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dynamic smallest width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    invoke-static {p0, v6}, Lxx/n;->b(Landroid/content/Context;Landroid/graphics/Point;)V

    iget p0, v6, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr p0, v7

    float-to-int p0, p0

    iput p0, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    div-float/2addr v8, v4

    add-float/2addr v8, v7

    float-to-int v4, v8

    iput v4, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\nconfiguration = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lmiuix/autodensity/f;->c()Lmiuix/autodensity/f;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/autodensity/f;->a()Lmiuix/autodensity/i;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    iget v5, p0, Lmiuix/autodensity/i;->f:I

    :goto_2
    int-to-float p0, v5

    invoke-static {}, Lmiuix/autodensity/f;->c()Lmiuix/autodensity/f;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/autodensity/f;->b()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    sput p0, LK2/e;->p:F

    return-void
.end method

.method public lr()V
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Jr()V

    :cond_0
    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v4, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S4()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, LQ6/S0;->b()LQ6/S0;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, LK2/j;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/camera/guide/a;->i:Lcom/android/camera/guide/a$b;

    invoke-virtual {v5}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    invoke-static {p0}, Lcom/android/camera/guide/a;->d(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-interface {v4}, LQ6/S0;->cancel()V

    :cond_2
    iget-object v4, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v5, "onStop start"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/a;->kr()J

    move-result-wide v4

    invoke-super {p0}, Lcom/android/camera/a;->lr()V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v6

    sget-object v7, LF6/a;->r0:LF6/a;

    invoke-virtual {v6, v7}, LF6/q;->r(LF6/a;)V

    iget-boolean v8, v6, LF6/q;->n:Z

    if-eqz v8, :cond_3

    sget-object v8, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    new-instance v9, LE3/q;

    invoke-direct {v9, v6, v0}, LE3/q;-><init>(Ljava/lang/Object;I)V

    invoke-static {v8, v9}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_0

    :cond_3
    const-string v8, "PerformanceManager"

    const-string v9, "not allow traceStop"

    invoke-static {v8, v9}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->P0(Z)V

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v10, "removeNewBie = null"

    invoke-static {v9, v10, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Landroidx/fragment/app/a;

    invoke-direct {v9, v8}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v9, v1}, Landroidx/fragment/app/a;->n(Z)I

    iput-boolean v2, p0, Lcom/android/camera/a;->R0:Z

    iput-boolean v1, p0, Lcom/android/camera/a;->b0:Z

    iput-boolean v2, p0, Lcom/android/camera/a;->Z:Z

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->Tr(Z)V

    invoke-virtual {p0}, Lcom/android/camera/a;->F5()Lgi/f;

    move-result-object v8

    invoke-virtual {v8}, Lgi/f;->f()V

    sget-object v8, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v9, LF1/x1;

    invoke-direct {v9, p0, v2}, LF1/x1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v8, v9}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    invoke-virtual {v8}, Lu2/Q;->Z()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    invoke-virtual {v8, v2}, Lu2/Q;->e0(Z)V

    iput-boolean v2, p0, Lcom/android/camera/a;->Y:Z

    sget-object v8, LF1/U2$a;->a:LF1/U2;

    iput-boolean v1, v8, LF1/U2;->d:Z

    iget-boolean v8, p0, Lcom/android/camera/Camera;->r2:Z

    if-nez v8, :cond_4

    sget-object v8, LN6/h$a;->a:LN6/h;

    const-class v9, LQ6/c1;

    invoke-virtual {v8, v9}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v8

    new-instance v9, LEs/O;

    invoke-direct {v9, v1}, LEs/O;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v8

    invoke-virtual {v8}, LS1/g;->b()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v8

    iget-object v10, v8, LS1/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v10, v8, LS1/g;->k:Le2/j;

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Le2/j;->a()V

    :cond_5
    iget-object v10, v8, LS1/g;->g:Landroid/animation/ValueAnimator;

    new-array v11, v1, [Landroid/animation/Animator;

    aput-object v10, v11, v2

    invoke-static {v11}, Lwr/e;->a([Landroid/animation/Animator;)V

    iput-object v9, v8, LS1/g;->g:Landroid/animation/ValueAnimator;

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/a;->Lq()Ljava/util/Optional;

    move-result-object v8

    new-instance v10, LF1/F1;

    invoke-direct {v10, v2}, LF1/F1;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v8

    new-instance v10, LF1/G1;

    invoke-direct {v10, v2}, LF1/G1;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean v8, p0, Lcom/android/camera/a;->U0:Z

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v8

    iget-object v8, v8, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-virtual {p0, v8, v1}, Lcom/android/camera/Camera;->Af(Lcom/android/camera/module/W;Z)V

    :cond_7
    iget-object v8, p0, Lcom/android/camera/Camera;->Z1:Lvr/O;

    if-eqz v8, :cond_8

    iget-object v10, p0, Lcom/android/camera/Camera;->a2:LF1/k0;

    if-eqz v10, :cond_8

    invoke-virtual {v8, v10}, Lvr/O;->a(Ljava/lang/Object;)V

    :cond_8
    iget-object v8, p0, Lcom/android/camera/Camera;->Y1:LF1/n3;

    iget-object v10, v8, LF1/n3;->h:LF1/V1;

    sget-object v11, Lio/reactivex/schedulers/a;->a:Lio/reactivex/v;

    const-wide/16 v12, 0x2710

    invoke-static {v11, v10, v12, v13}, LAr/d;->g(Lio/reactivex/v;Ljava/lang/Runnable;J)Lio/reactivex/disposables/b;

    move-result-object v10

    iput-object v10, v8, LF1/n3;->e:Lio/reactivex/disposables/b;

    invoke-virtual {p0}, Lcom/android/camera/a;->Di()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/a;->pf()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/a;->Sq()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {}, Lb7/c;->a()V

    :cond_9
    invoke-static {}, LJe/c;->Q()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, LY2/j;->d()LY2/j;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_a
    invoke-static {}, LK2/j;->c()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-boolean v8, p0, Lcom/android/camera/Camera;->q2:Z

    if-nez v8, :cond_e

    invoke-virtual {p0}, Lcom/android/camera/a;->Di()Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string/jumbo v10, "the main screen presentation stop"

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v8, Lcom/android/camera/guide/a;->i:Lcom/android/camera/guide/a$b;

    invoke-virtual {v8}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    move-result-object v8

    invoke-static {p0}, Lcom/android/camera/guide/a;->d(Landroid/app/Activity;)Z

    move-result v10

    const-string v11, "DualScreenManager"

    if-eqz v10, :cond_b

    const-string/jumbo v10, "the second screen presentation stop"

    new-array v12, v2, [Ljava/lang/Object;

    invoke-static {v11, v10, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, p0}, Lcom/android/camera/guide/a;->m(Lcom/android/camera/Camera;)V

    invoke-static {}, LKy/c;->h()I

    move-result v8

    invoke-static {v8, v1}, Lcom/android/camera/guide/a;->k(IZ)V

    goto :goto_1

    :cond_b
    invoke-static {p0}, Lcom/android/camera/guide/a;->d(Landroid/app/Activity;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string/jumbo v8, "the main screen presentation stop"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v11, v8, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lph/b;->b()Ljava/lang/ref/WeakReference;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    if-eqz v8, :cond_d

    instance-of v10, v8, Lcom/android/camera/Camera;

    if-eqz v10, :cond_c

    check-cast v8, Lcom/android/camera/Camera;

    iget-boolean v10, v8, Lcom/android/camera/a;->b0:Z

    if-nez v10, :cond_c

    invoke-static {v8}, LF1/x0;->a(Lcom/android/camera/Camera;)Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    invoke-static {}, LKy/c;->h()I

    move-result v10

    if-ne v8, v10, :cond_c

    goto :goto_1

    :cond_c
    invoke-static {v2, v1}, Lcom/android/camera/guide/a;->k(IZ)V

    goto :goto_1

    :cond_d
    invoke-static {v2, v1}, Lcom/android/camera/guide/a;->k(IZ)V

    :cond_e
    :goto_1
    iget-object v8, p0, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz v8, :cond_10

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "onActivityStop: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v8, LF1/p4;->k:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "StreamingController"

    invoke-static {v12, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v10, v8, LF1/p4;->j:Lcom/android/camera/a;

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    if-nez v10, :cond_f

    move-object v10, v9

    goto :goto_2

    :cond_f
    invoke-static {v10}, Lvr/m;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-static {v10}, Lvr/m;->o(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "onActivityStop: remote device id = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v8, LF1/p4;->h:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v12, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, -0x1

    iput v10, v8, LF1/p4;->h:I

    invoke-virtual {v8}, LF1/p4;->X()V

    invoke-virtual {v8}, LF1/b4;->v()V

    :cond_10
    invoke-static {v4, v5}, Lcom/android/camera/a;->mr(J)V

    iget-object v4, p0, Lcom/android/camera/Camera;->U1:LQ6/t0;

    if-eqz v4, :cond_11

    iput-object v9, p0, Lcom/android/camera/Camera;->U1:LQ6/t0;

    :cond_11
    sget-object v4, Lrr/i;->a:Lio/reactivex/disposables/b;

    if-eqz v4, :cond_12

    invoke-interface {v4}, Lio/reactivex/disposables/b;->c()V

    :cond_12
    sget-object v4, Lrr/i;->b:Ltr/c;

    if-eqz v4, :cond_14

    iget-object v5, v4, Ltr/c;->r:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_13

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    :cond_13
    invoke-virtual {v4}, Ltr/c;->Eq()V

    :cond_14
    invoke-virtual {v3}, LJe/c;->b1()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->hasParallelTaskData()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {}, LPh/h;->i()V

    invoke-static {}, Lyp/b;->c()Lyp/b;

    move-result-object v3

    invoke-virtual {v3}, Lyp/b;->e()V

    :cond_15
    iget-object v3, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v4, "onStop end"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->cs()V

    filled-new-array {v7}, [LF6/a;

    move-result-object v3

    invoke-virtual {v6, v3}, LF6/q;->s([LF6/a;)J

    iget-object v3, v6, LF6/q;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v6, LF6/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v4, LF1/X1;

    invoke-direct {v4, v6, v1}, LF1/X1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3, v4}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v3

    invoke-virtual {v3}, Loh/b;->n()LOh/d;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v4

    iget-object v4, v4, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v4}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-boolean v4, p0, Lcom/android/camera/a;->Q0:Z

    if-nez v4, :cond_16

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Er()Z

    move-result v4

    if-nez v4, :cond_19

    :cond_16
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onStop: clearFlag --> FLAG_TURN_SCREEN_ON and isChangingConfigurations is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", jumpFlag is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    iget-object v3, v3, LOh/d;->a:LOh/c;

    sget-object v5, LOh/c;->b:LOh/c;

    if-eq v3, v5, :cond_17

    goto :goto_4

    :cond_17
    if-nez v4, :cond_19

    iget-object v3, p0, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz v3, :cond_18

    iget-boolean v3, v3, LF1/p4;->e:Z

    if-eqz v3, :cond_18

    goto :goto_3

    :cond_18
    move v1, v2

    :goto_3
    iget-object v3, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v4, "onStop: isStreaming = "

    invoke-static {v4, v1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Er()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    :cond_19
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    sget-object v1, LN6/h;->d:LN6/h;

    if-eqz v1, :cond_1a

    iget v1, v1, LN6/h;->a:I

    if-ne v1, p0, :cond_1a

    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/E0;

    invoke-virtual {p0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LCs/v;

    invoke-direct {v1, v0}, LCs/v;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1a
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final nd(Lf2/a$a;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFlashScreenHalo"
        type = 0x0
    .end annotation

    iget-object p0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final notifyDataChanged(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object p0

    iget-object p0, p0, LS1/g;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/c;

    invoke-interface {v1}, Lcom/android/camera/fragment/c;->canProvide()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/camera/fragment/c;->notifyDataChanged(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final o3()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/a;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v3, "pauseIfNotRecording: skip removeCallbacksAndMessages, camera error pending"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/a;->K0:Z

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, LF1/U2$a;->a:LF1/U2;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onPause mUseDefaultValue="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v3, LF1/U2;->b:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CameraBrightness"

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, v3, LF1/U2;->c:Z

    iput-boolean v2, v3, LF1/U2;->h:Z

    iget-boolean v5, v3, LF1/U2;->b:Z

    if-nez v5, :cond_2

    iput-boolean v4, v3, LF1/U2;->b:Z

    invoke-virtual {v3}, LF1/U2;->a()V

    :cond_2
    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lh6/b;->g(Z)V

    iget-boolean v3, p0, Lcom/android/camera/a;->o0:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, LJe/c;->b1()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/a;->Di()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object v0

    iput-object v1, v0, LF1/B4;->a:LF1/w4;

    iput-boolean v2, p0, Lcom/android/camera/a;->o0:Z

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object v0

    invoke-virtual {v0}, LF1/B4;->c()V

    invoke-virtual {p0}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object p0

    iget-object v0, p0, LF1/B4;->b:LF1/B4$a;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cancelTask: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LF1/B4;->b:LF1/B4$a;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ThumbnailUpdater"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, p0, LF1/B4;->b:LF1/B4$a;

    :cond_4
    :goto_1
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/a;->onActivityResult(IILandroid/content/Intent;)V

    const-string p3, "onActivityResult requestCode= "

    const-string v0, ",  resultCode= "

    invoke-static {p1, p2, p3, v0}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v0

    invoke-interface {v0}, Lj6/i;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {}, LQa/i;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void

    :cond_2
    invoke-super {p0}, Le/i;->onBackPressed()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/W;->onConfigurationChanged()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConfigurationChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGenericMotionEvent: event action"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/a;->a0:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_4

    invoke-static {}, LQ5/J;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LQ5/J;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/a;->Rq()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/E0;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/E1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, LF1/E1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 22
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    iget-boolean v3, v0, Lcom/android/camera/a;->a0:Z

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v3

    iget-object v3, v3, Loh/b;->o:Lcom/android/camera/module/W;

    if-nez v3, :cond_1

    :cond_0
    move-object/from16 v5, p2

    goto/16 :goto_5

    :cond_1
    iget-object v3, v0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onKeyDown: keycode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LK2/j;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object v3

    invoke-virtual {v3}, Lc6/x;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-super/range {p0 .. p2}, Lcom/android/camera/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_2
    const/16 v3, 0xc1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3

    invoke-static/range {p2 .. p2}, LDf/d;->o(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, v0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v3, "onKeyDown: keyCode : "

    const-string v5, " is not XiaomiStylus"

    invoke-static {v1, v3, v5}, LF1/E;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    const/4 v5, -0x1

    const/16 v6, 0x19

    const/16 v7, 0x18

    const/16 v8, 0x57

    const/16 v9, 0x58

    const/16 v10, 0x42

    const/16 v11, 0x1b

    if-nez v3, :cond_b

    if-eq v1, v10, :cond_4

    if-eq v1, v11, :cond_4

    if-eq v1, v9, :cond_4

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_4

    if-ne v1, v6, :cond_b

    :cond_4
    iget-wide v12, v0, Lcom/android/camera/Camera;->v1:J

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v12

    iget-wide v8, v0, Lcom/android/camera/Camera;->v1:J

    cmp-long v8, v12, v8

    if-gez v8, :cond_5

    iput v1, v0, Lcom/android/camera/Camera;->w1:I

    iput-wide v14, v0, Lcom/android/camera/Camera;->v1:J

    return v2

    :cond_5
    iget-wide v8, v0, Lcom/android/camera/Camera;->v1:J

    cmp-long v8, v8, v14

    if-eqz v8, :cond_a

    invoke-static {v4}, Lcom/android/camera/data/data/w;->B(Z)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f140f55

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    iget-object v8, v0, Lcom/android/camera/Camera;->S1:LW5/d;

    iget-object v8, v8, LW5/d;->d:Landroid/util/SparseArray;

    invoke-virtual/range {p2 .. p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    invoke-static {v9}, LDf/d;->l(Landroid/view/InputDevice;)I

    move-result v9

    invoke-static {v9, v8}, LW5/c;->c(ILandroid/util/SparseArray;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v16

    iget-wide v8, v0, Lcom/android/camera/Camera;->u1:J

    const-wide/16 v20, 0xfa

    move-wide/from16 v18, v8

    invoke-static/range {v16 .. v21}, Lou/R3;->z(JJJ)Z

    move-result v8

    iget-wide v12, v0, Lcom/android/camera/Camera;->v1:J

    iget-wide v6, v0, Lcom/android/camera/Camera;->u1:J

    cmp-long v6, v12, v6

    if-lez v6, :cond_8

    move v6, v2

    goto :goto_0

    :cond_8
    move v6, v4

    :goto_0
    if-eqz v8, :cond_9

    if-eqz v6, :cond_a

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "isFromOneShotKeyPressed: lastUpTIme "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v0, Lcom/android/camera/Camera;->u1:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " | eventTime "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " isKeyEventOrderWrong: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {v6, v3, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v5, "onKeyDown: isFromOneShotKeyPressed and return! keyCode is "

    invoke-static {v1, v5}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v1, v0, Lcom/android/camera/Camera;->w1:I

    iput-wide v14, v0, Lcom/android/camera/Camera;->v1:J

    return v2

    :cond_a
    :goto_1
    iput v5, v0, Lcom/android/camera/Camera;->w1:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/camera/Camera;->v1:J

    goto :goto_2

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_c

    iget v6, v0, Lcom/android/camera/Camera;->w1:I

    if-ne v1, v6, :cond_c

    iput v5, v0, Lcom/android/camera/Camera;->w1:I

    :cond_c
    :goto_2
    invoke-virtual {v0}, Lcom/android/camera/a;->Rq()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v5

    iget-object v5, v5, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v5}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v5

    invoke-interface {v5}, Lj6/j;->r()Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    move-object/from16 v5, p2

    const/16 v4, 0x18

    goto :goto_3

    :cond_e
    if-ne v1, v11, :cond_f

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, LJe/c;->q1()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v3

    iget-object v3, v3, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v3}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v3

    const/16 v5, 0xe4

    if-eq v3, v5, :cond_f

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    const-class v6, Lu2/P;

    invoke-virtual {v3, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu2/P;

    iget-object v3, v3, Lu2/P;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v0, v0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string/jumbo v1, "switch mode by polaroid device."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/G0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC3/f;

    invoke-direct {v1, v2}, LC3/f;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v2

    :cond_f
    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v3

    iget-object v3, v3, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v3}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v3

    move-object/from16 v5, p2

    invoke-interface {v3, v1, v5}, Lj6/i;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-super/range {p0 .. p2}, Lcom/android/camera/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4

    :cond_10
    return v4

    :goto_3
    if-eq v1, v4, :cond_11

    const/16 v9, 0x19

    if-eq v1, v9, :cond_11

    if-eq v1, v11, :cond_11

    if-eq v1, v10, :cond_11

    const/16 v4, 0x50

    if-eq v1, v4, :cond_11

    const/16 v3, 0x57

    if-eq v1, v3, :cond_11

    const/16 v3, 0x58

    if-eq v1, v3, :cond_11

    invoke-super/range {p0 .. p2}, Lcom/android/camera/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_11
    :goto_4
    return v2

    :goto_5
    invoke-super/range {p0 .. p2}, Lcom/android/camera/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/a;->a0:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, LK2/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object v0

    invoke-virtual {v0}, Lc6/x;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string p1, "onKeyUp: keyCode KeyEvent.KEYCODE_BACK is not isTracking or isCanceled"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    const/16 v0, 0xc1

    const/4 v2, 0x1

    if-ne p1, v0, :cond_4

    invoke-static {p2}, LDf/d;->o(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string p2, "onKeyUp: keyCode : "

    const-string v0, " is not XiaomiStylus"

    invoke-static {p1, p2, v0}, LF1/E;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_4
    iget v0, p0, Lcom/android/camera/Camera;->w1:I

    if-ne p1, v0, :cond_5

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/camera/Camera;->u1:J

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/camera/Camera;->w1:I

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string p2, "onKeyUp: key is lastIgnore key   keyCode : "

    invoke-static {p1, p2}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/Camera;->u1:J

    iget-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onKeyUp: mLastKeyUpEventTime "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/camera/Camera;->u1:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " keyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x52

    if-ne p1, v0, :cond_6

    invoke-static {}, LQa/i;->e()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v0

    const/16 v3, 0xa0

    if-eq v0, v3, :cond_6

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/a;->Vg()V

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    invoke-virtual {v0}, Loh/b;->m()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LF1/F1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, LF1/F1;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LF1/I1;

    invoke-direct {v3, p1, p2}, LF1/I1;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    return v1

    :cond_8
    :goto_0
    return v2
.end method

.method public final onLayoutChange(LZ5/h;LZ5/h;)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/a;->onLayoutChange(LZ5/h;LZ5/h;)V

    invoke-interface {p2}, LZ5/h;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->i0()Z

    :cond_0
    move-object v0, p2

    check-cast v0, LZ5/a;

    instance-of v0, v0, LZ5/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/a;->c0:LY2/o;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, LY2/o;->b(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, LJe/d;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->n:Ly3/s;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/a;->c0:LY2/o;

    invoke-interface {v0}, Ly3/s;->m()Ly3/q;

    move-result-object v0

    invoke-interface {v0}, Ly3/q;->f()I

    move-result v0

    invoke-virtual {v1, v0}, LY2/o;->b(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v0

    invoke-virtual {v0}, LS1/g;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1, p2}, LZ5/h;->m0(LZ5/h;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v3, v0, LS1/g;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LZ5/k;

    invoke-interface {v3}, LZ5/k;->canProvide()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v3, p1, p2}, LZ5/k;->onLayoutChange(LZ5/h;LZ5/h;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/a;->or(I)V

    invoke-interface {p1}, LZ5/h;->h0()LZ5/l;

    move-result-object p1

    sget-object v0, LZ5/l;->h:LZ5/l;

    if-ne p1, v0, :cond_6

    invoke-interface {p2}, LZ5/h;->h0()LZ5/l;

    move-result-object p1

    if-eq p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object p1

    invoke-virtual {p1, v1}, LS1/g;->a(I)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/android/camera/data/data/m;->P()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, LQ6/M;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LC3/d;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, LC3/d;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/Camera;->gs()V

    iget-object p0, p0, Lcom/android/camera/Camera;->D1:LF1/X3;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, LF1/X3;->b()V

    :cond_7
    return-void
.end method

.method public final onLowMemory()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "onLowMemory is called\uff0csystem may be lowMemory"

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportMultiWindow"
        type = 0x0
    .end annotation

    invoke-super {p0, p1}, Le/i;->onMultiWindowModeChanged(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMultiWindowModeChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", configuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, LG8/h;->e(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNewIntent start, intent-> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lcom/android/camera/a;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {p1}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v3, "onNewIntent: setShowWhenLocked:true"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/a;->setShowWhenLocked(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v1

    invoke-virtual {v1}, Lvr/m;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->hs()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v1

    const/4 v3, 0x0

    iput-object v3, v1, Lvr/m;->a:Landroid/content/Intent;

    iput-object v3, v1, Lvr/m;->b:Lvr/m$b;

    iput-object v3, v1, Lvr/m;->c:Landroid/net/Uri;

    iput-object v3, v1, Lvr/m;->d:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/android/camera/Camera;->E1:Z

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v1

    invoke-virtual {v1, p1}, Lvr/m;->B(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lvr/m;->A(Lcom/android/camera/a;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lvr/m;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lvr/m;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-static {v0}, Lvr/m;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lvr/m;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v0}, LF1/F2;->d(Landroid/content/Intent;)Z

    move-result v0

    invoke-static {p1}, LF1/F2;->d(Landroid/content/Intent;)Z

    move-result v1

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p1}, LF1/F2;->e(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p1

    invoke-virtual {p1}, Loh/b;->n()LOh/d;

    move-result-object p1

    iget-object v0, p1, LOh/d;->a:LOh/c;

    iput-object v0, p1, LOh/d;->b:LOh/c;

    sget-object v0, LOh/c;->b:LOh/c;

    iput-object v0, p1, LOh/d;->a:LOh/c;

    iget-boolean p1, p0, Lcom/android/camera/a;->Y:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "Action changed, reset module switching state!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/android/camera/a;->Y:Z

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LSt/g;->k(Landroidx/lifecycle/a0;)Lyw/D;

    move-result-object v0

    new-instance v1, Loh/a;

    invoke-direct {v1, p1, v3}, Loh/a;-><init>(Loh/b;LTu/e;)V

    const/4 p1, 0x3

    invoke-static {v0, v3, v3, v1, p1}, Lyw/f;->b(Lyw/D;LTu/h;Lyw/F;Lev/p;I)Lyw/B0;

    :cond_7
    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string p1, "onNewIntent end"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/l;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    sget-object v2, LF6/a;->T:LF6/a;

    sget-object v3, LF6/a;->V:LF6/a;

    sget-object v4, LF6/a;->U:LF6/a;

    filled-new-array {v2, v3, v4}, [LF6/a;

    move-result-object v2

    invoke-virtual {v1, v2}, LF6/q;->e([LF6/a;)V

    iget-object v1, p0, Lcom/android/camera/Camera;->B1:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-interface {v1}, LH6/b;->isPermissionRequesting()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/Camera;->B1:Landroidx/fragment/app/Fragment;

    invoke-interface {p0, p1, p2, p3}, LH6/b;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    :cond_0
    const/16 v1, 0x65

    iget-object v2, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const/4 v3, 0x0

    if-eq p1, v1, :cond_8

    const/16 v1, 0x66

    if-eq p1, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    array-length v1, p2

    if-eqz v1, :cond_7

    array-length v1, p3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2, p3}, LH6/d;->l([Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p2}, LH6/d;->n([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lu6/f;->a(Z)V

    const-string p1, "has camera permissions, retry init Camera2DataContainer"

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/Camera;->Lr()V

    invoke-static {p2}, LH6/d;->n([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/Camera;->L1:Lcom/android/camera/module/loader/base/StartControl;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance p2, LAc/e;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, LAc/e;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :goto_0
    iget-boolean p1, p0, Lcom/android/camera/a;->j0:Z

    invoke-static {p1}, Lcom/android/camera/data/data/w;->p0(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, LH6/d;->c()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Pr()V

    return-void

    :cond_5
    invoke-static {p0, p1}, LH6/d;->t(Landroidx/fragment/app/l;I)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onRequestPermissionsResult: permission is denied, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    return-void

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->Or(Z)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    array-length p1, p2

    if-nez p1, :cond_9

    array-length p1, p3

    if-nez p1, :cond_9

    const-string p0, "ignore this onRequestPermissionsResult callback"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_9
    invoke-static {v3}, Lcom/android/camera/data/data/w;->Q0(Z)V

    sget-object p1, LH6/d;->a:Ljava/util/ArrayList;

    array-length p1, p2

    if-ge p1, v0, :cond_a

    goto :goto_3

    :cond_a
    array-length p1, p2

    :goto_2
    if-ge v3, p1, :cond_c

    aget-object v1, p2, v3

    sget-object v4, LH6/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p2, p3}, LH6/d;->m([Ljava/lang/String;[I)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRequestPermissionsResult: is location granted = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/camera/data/data/w;->h1(Z)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LF1/C0;

    invoke-direct {v0, p2, p3}, LF1/C0;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_b
    add-int/2addr v3, v0

    goto :goto_2

    :cond_c
    :goto_3
    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    invoke-virtual {p1}, LJe/c;->l1()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, LK2/b;->a0()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Zr()V

    :cond_d
    iget-boolean p1, p0, Lcom/android/camera/a;->j0:Z

    iget-object p2, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    invoke-static {p1, p0, p2}, LS8/i;->c(ZLcom/android/camera/Camera;Lcom/android/camera/a$c;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v0, "onSaveInstanceState"

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/a;->Rq()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b088c

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p1

    iget-object p1, p1, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {p1}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object p1

    invoke-interface {p1}, Lj6/f;->t()Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v0

    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const-string v3, "CameraGestureRecognizer"

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    invoke-static {p0}, Lq8/K0;->b(Landroid/app/Activity;)Lq8/K0;

    move-result-object p1

    iput-boolean v1, p1, Lq8/K0;->j:Z

    const-string/jumbo p1, "setScaleDetectorEnable: false"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/camera/Camera;->F1:Z

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    :cond_4
    invoke-static {p0}, Lq8/K0;->b(Landroid/app/Activity;)Lq8/K0;

    move-result-object p1

    iput-boolean v0, p1, Lq8/K0;->j:Z

    const-string/jumbo p1, "setScaleDetectorEnable: true"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/android/camera/Camera;->F1:Z

    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/android/camera/Camera;->F1:Z

    if-eqz p1, :cond_6

    invoke-static {p0}, Lq8/K0;->b(Landroid/app/Activity;)Lq8/K0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lq8/K0;->d(Landroid/view/MotionEvent;)Z

    :cond_6
    iget-object p1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onTouchEvent: getPointerCount "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | action = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " | mCatchUnTapableEvent "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/Camera;->F1:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/android/camera/Camera;->F1:Z

    return p0

    :cond_7
    :goto_3
    return v1
.end method

.method public final onTrimMemory(I)V
    .locals 4

    invoke-super {p0, p1}, Le/i;->onTrimMemory(I)V

    const-string v0, "onTrimMemory: level="

    invoke-static {p1, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sput p1, LF1/s3;->b:I

    sget-object p0, Lyi/c$a;->a:Lyi/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "trimMemory E: level="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ByteArrayPool"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lyi/c;->a()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-lt p1, v0, :cond_1

    iget-object p0, p0, Lyi/c;->a:Lyi/b;

    invoke-virtual {p0}, Landroid/util/LruCache;->maxSize()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    :cond_1
    :goto_0
    const-string/jumbo p0, "trimMemory X"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onUserInteraction()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v2, "onUserInteraction"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF1/i0;->a()LF1/i0;

    move-result-object v0

    invoke-virtual {v0}, LF1/i0;->b()V

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    invoke-virtual {p0}, Loh/b;->m()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/F1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/F1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/H1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/H1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v2

    iget-object v2, v2, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v2}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onWindowFocusChanged: hasFocus="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isLockScreenLaunch="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v3, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v3

    iget-object v3, v3, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v3

    iget-object v3, v3, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v3}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v3

    invoke-interface {v3}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lj9/a;->Q()Z

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "camera2Proxy="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; isCameraDisconnected="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    if-eqz v4, :cond_2

    sget-object v3, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v4, LF1/o1;

    invoke-direct {v4, p0, v0}, LF1/o1;-><init>(Lcom/android/camera/Camera;I)V

    invoke-static {v3, v4}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v3

    invoke-virtual {v3}, Lvr/m;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v3

    invoke-virtual {v3, p0}, Lvr/m;->r(Landroidx/fragment/app/l;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/Camera;->v2:LF1/t1;

    iget-object v4, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    if-eqz p1, :cond_3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v5

    if-nez v5, :cond_3

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    invoke-static {}, LQ6/g;->a()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v3

    iget-object v3, v3, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v3

    iget-object v3, v3, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v3, p1}, Lcom/android/camera/module/W;->onWindowFocusChanged(Z)V

    :cond_5
    sget-object v3, LF1/U2$a;->a:LF1/U2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, LJe/c;->a()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    const-string v4, "onWindowFocusChanged hasFocus="

    const-string v5, "CameraBrightness"

    invoke-static {v4, v5, p1}, LF1/t2;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v4, v3, LF1/U2;->d:Z

    if-eqz v4, :cond_7

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    iget-boolean v4, v3, LF1/U2;->b:Z

    if-ne v4, p1, :cond_8

    xor-int/2addr v1, p1

    iput-boolean v1, v3, LF1/U2;->b:Z

    invoke-virtual {v3}, LF1/U2;->a()V

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->c5()Z

    move-result v2

    if-eqz v2, :cond_a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_a

    iget-object v1, v1, Loh/b;->f:LPu/n;

    invoke-virtual {v1}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LF1/G3;

    const-string v2, "PalmRejectHelper"

    const-string v3, "[X] setTouchMode: result = "

    const-string v4, "[E] setTouchMode: touchId0 mode:25 value"

    iget-object v1, v1, LF1/G3;->a:Ljava/lang/Object;

    if-eqz v1, :cond_a

    if-eqz p1, :cond_9

    const/16 v5, 0x101

    goto :goto_4

    :cond_9
    const/16 v5, 0x100

    :goto_4
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v6, "setTouchMode"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v7, v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x19

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v8, v9, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v1, v6, v7, v5}, Lry/a;->f(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_5
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p1

    iget-object p1, p1, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->checkActivityOrientation()V

    :cond_b
    return-void
.end method

.method public final p0(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/camera/a;->p0(II)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->isPurePreview()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    new-instance v2, LF1/D1;

    invoke-direct {v2, p0, v0, p1, p2}, LF1/D1;-><init>(Lcom/android/camera/Camera;ZII)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/a;->q()V

    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result p0

    const/16 v0, 0xe5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v0, LF1/n1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/n1;-><init>(I)V

    invoke-static {p0, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public final qh(IIZ)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldable"
        type = 0x0
    .end annotation

    const-string v0, "onFoldStateChange(): state = "

    const-string v1, " preState = "

    const-string v2, " baseStateChange = "

    invoke-static {p1, p2, v0, v1, v2}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isAppForeground = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Dr()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget-boolean v0, v0, Lu2/Q;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Dr()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/a;->setShowWhenLocked(Z)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    :cond_0
    return-void
.end method

.method public final registerProtocol()V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget-object v1, LN6/h;->d:LN6/h;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, LN6/h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v1, 0x0

    sput-object v1, LN6/h;->d:LN6/h;

    :goto_0
    sget-object v1, LN6/h$a;->a:LN6/h;

    sput-object v1, LN6/h;->d:LN6/h;

    iput v0, v1, LN6/h;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/xiaomi/camera/effect/a;->a:I

    new-instance v0, Lp6/b;

    invoke-direct {v0, p0}, Lp6/b;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->G1:Lp6/b;

    const-class v3, LQ6/E0;

    const-class v4, LQ6/E;

    const-class v1, LQ6/h;

    const-class v2, LQ6/L0;

    const-class v5, Ls8/a;

    const-class v6, LQ6/R0;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp6/b;->e([Ljava/lang/Class;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v1

    iget-object v1, v1, Ls4/e;->a:Ls4/d;

    invoke-virtual {v1, p0}, Ls4/d;->c(Ls4/d$d;)V

    :cond_1
    iget-object v1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->B4()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/Camera;->G1:Lp6/b;

    const-class v3, LQ6/d0;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lp6/b;->e([Ljava/lang/Class;)V

    :cond_2
    invoke-virtual {v0}, LJe/c;->V0()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/Camera;->G1:Lp6/b;

    const-class v3, LN6/f;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lp6/b;->e([Ljava/lang/Class;)V

    :cond_3
    invoke-virtual {v0}, LJe/c;->w1()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/Camera;->G1:Lp6/b;

    const-class v2, LQ6/c1;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lp6/b;->e([Ljava/lang/Class;)V

    :cond_4
    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S4()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/Camera;->G1:Lp6/b;

    const-class v1, LQ6/S0;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp6/b;->e([Ljava/lang/Class;)V

    :cond_5
    invoke-static {}, LJe/c;->Q()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/Camera;->G1:Lp6/b;

    const-class v1, LQ6/T0;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp6/b;->e([Ljava/lang/Class;)V

    :cond_6
    iget-object v0, p0, Lcom/android/camera/a;->D0:LF1/b4;

    invoke-interface {v0}, LQ6/X0;->registerProtocol()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v1

    sget-object v2, Lu2/S$a;->a:Lu2/S;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v4}, Lu2/S;->g(Lvr/m;ZZZ)Lh0/b;

    invoke-virtual {v0}, Lu2/Q;->W()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x4

    goto :goto_1

    :cond_7
    const/4 v1, 0x2

    :goto_1
    iget v2, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v2}, Lu2/Q;->E(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    iget-object p0, p0, Lcom/android/camera/Camera;->S1:LW5/d;

    invoke-virtual {p0}, LW5/d;->registerProtocol()V

    return-void
.end method

.method public final setClickEnable(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object p0

    invoke-virtual {p0, p1}, LS1/g;->f(Z)V

    return-void
.end method

.method public final sj()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Ar()LS1/g;

    move-result-object p0

    invoke-virtual {p0, v0}, LS1/g;->c(I)V

    return-void
.end method

.method public final sr(I)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, LQ6/C;->b()LQ6/C;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onThermalNotification config is null"

    invoke-static {v1, v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/Camera;->V1:Z

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, LQ6/C;->J0(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/Camera;->V1:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "onThermalNotification error"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final unRegisterProtocol()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Camera;->G1:Lp6/b;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lp6/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lp6/b;->b(Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LQ6/X0;->unRegisterProtocol()V

    :cond_1
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v0

    iget-object v0, v0, Ls4/e;->a:Ls4/d;

    invoke-virtual {v0, p0}, Ls4/d;->d(Ls4/d$d;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->Nr()V

    iget-object p0, p0, Lcom/android/camera/Camera;->S1:LW5/d;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, LW5/d;->unRegisterProtocol()V

    :cond_3
    return-void
.end method

.method public final xd(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/camera/a;->xd(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/android/camera/Camera;->N1:Lu6/j;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGlSurfaceCreated: mSingleEmitter = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lu6/j;->b:Lio/reactivex/x;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Camera2OpenOnSubScribe"

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lu6/j;->b:Lio/reactivex/x;

    if-eqz v0, :cond_4

    check-cast v0, Lio/reactivex/internal/operators/single/a$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/single/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p1, Lu6/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt6/j;

    if-nez v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "isPreviewSurfacePrepared SurfaceStateListener is null"

    invoke-static {v3, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lt6/j;->Vb()Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    const-string p1, "onGlSurfaceCreated preview surface not prepared"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGlSurfaceCreated: mCamera2Result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lu6/j;->c:Lu6/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lu6/j;->c:Lu6/k;

    if-eqz v0, :cond_5

    iget-object p1, p1, Lu6/j;->b:Lio/reactivex/x;

    if-eqz p1, :cond_5

    check-cast p1, Lio/reactivex/internal/operators/single/a$a;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/operators/single/a$a;->d(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    :goto_2
    const-string p1, "onGlSurfaceCreated: mSingleEmitter already disposed"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_3
    sget p1, Lcom/android/camera/module/Y;->a:I

    const/16 v0, 0xa3

    if-eq p1, v0, :cond_6

    const/16 v0, 0xab

    if-eq p1, v0, :cond_6

    const/16 v0, 0xad

    if-eq p1, v0, :cond_6

    const/16 v0, 0xaf

    if-eq p1, v0, :cond_6

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_6

    const/16 v0, 0xba

    if-eq p1, v0, :cond_6

    const/16 v0, 0xbe

    if-eq p1, v0, :cond_6

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_6

    const/16 v0, 0xe1

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_6

    const/16 v0, 0xe4

    if-eq p1, v0, :cond_6

    const/16 v0, 0xe5

    if-eq p1, v0, :cond_6

    invoke-static {}, LK2/e;->E()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p1

    iget-object p1, p1, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/android/camera/module/W;->updatePreviewSurface()V

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string/jumbo p1, "updateSurfaceState: module has not been initialized"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public final xr()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v0

    invoke-virtual {v0}, Lvr/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/a;->a0:Z

    if-nez v0, :cond_0

    invoke-static {}, LSh/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/a;->j0:Z

    invoke-static {v0}, Lcom/android/camera/data/data/w;->p0(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v0

    invoke-virtual {v0}, Lvr/m;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.CAMERA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USE_FRONT_CAMERA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final y2(I)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportFlashScreenHalo"
        type = 0x0
    .end annotation

    invoke-super {p0, p1}, LX1/c;->y2(I)V

    const/4 p0, -0x1

    invoke-static {p0}, LF1/U2;->e(I)V

    const/4 p0, 0x0

    invoke-static {p0}, LF1/U2;->f(Z)V

    return-void
.end method

.method public yq()Ljava/lang/String;
    .locals 0

    const-string p0, "Camera"

    return-object p0
.end method

.method public final yr(ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v1, "checkPermissionAndCTA E   "

    invoke-static {v0, v1}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQa/i;->d()Z

    move-result v1

    const-string v2, "checkPermissionAndCTA X"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v1

    iget-object v1, v1, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v1}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LK2/e;->B()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/a;->Wq()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "requestDismissKeyguard: mRequestDismissKeyguarding = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/camera/a;->R0:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p2, p0, Lcom/android/camera/a;->R0:Z

    if-eqz p2, :cond_0

    invoke-static {v0, v2}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/a;->R0:Z

    invoke-static {p0}, LQa/i;->b(Landroid/app/Activity;)Lio/reactivex/internal/operators/single/a;

    move-result-object p2

    new-instance v1, LF1/M0;

    invoke-direct {v1, p0, p1}, LF1/M0;-><init>(Lcom/android/camera/Camera;Z)V

    new-instance p1, LCs/A;

    const/4 v3, 0x1

    invoke-direct {p1, p0, v3}, LCs/A;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v1, p1}, Lio/reactivex/w;->subscribe(Lio/reactivex/functions/d;Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    const-string p1, "requestDismissKeyguard: setShowWhenLocked false"

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/android/camera/a;->setShowWhenLocked(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, 0x80000

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, LF1/r4;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, LK2/e;->B()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/Camera;->g2:Landroid/app/Dialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/Camera;->g2:Landroid/app/Dialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iput-object p2, p0, Lcom/android/camera/Camera;->g2:Landroid/app/Dialog;

    :cond_3
    const-string/jumbo p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f0e0215

    invoke-virtual {v3, v5, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v3, Landroid/app/Dialog;

    const v5, 0x103000a

    invoke-direct {v3, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/camera/Camera;->g2:Landroid/app/Dialog;

    invoke-virtual {v3, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/camera/Camera;->g2:Landroid/app/Dialog;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v3, p0, Lcom/android/camera/Camera;->g2:Landroid/app/Dialog;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/android/camera/Camera;->g2:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/camera/Camera;->g2:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, 0x800005

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object p1, p0, Lcom/android/camera/Camera;->g2:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/Camera;->g2:Landroid/app/Dialog;

    new-instance v1, LF1/J0;

    invoke-direct {v1, p0}, LF1/J0;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const p1, 0x7f0b022b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/camera/Camera;->t2:Landroid/widget/Button;

    const p1, 0x7f0b01a6

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/camera/Camera;->u2:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/camera/Camera;->t2:Landroid/widget/Button;

    iget-object p2, p0, Lcom/android/camera/Camera;->B2:Lcom/android/camera/Camera$b;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/Camera;->u2:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/camera/Camera;->g2:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/camera/Camera;->f2:Lmiuix/appcompat/app/h;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lcom/android/camera/Camera;->f2:Lmiuix/appcompat/app/h;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lmiuix/appcompat/app/h;->dismiss()V

    iput-object p2, p0, Lcom/android/camera/Camera;->f2:Lmiuix/appcompat/app/h;

    :cond_7
    new-instance p1, Lmiuix/appcompat/app/h$a;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/h$a;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1408c3

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/h$a;->B(I)V

    const p2, 0x7f1408c2

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/h$a;->m(I)V

    invoke-virtual {p1, v4}, Lmiuix/appcompat/app/h$a;->f(Z)V

    new-instance p2, LF1/w2;

    invoke-direct {p2, p0}, LF1/w2;-><init>(Lcom/android/camera/Camera;)V

    const v1, 0x7f1408c4

    invoke-virtual {p1, v1, p2}, Lmiuix/appcompat/app/h$a;->x(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p2, LF1/x2;

    invoke-direct {p2, p0}, LF1/x2;-><init>(Lcom/android/camera/Camera;)V

    const v1, 0x7f1408c1

    invoke-virtual {p1, v1, p2}, Lmiuix/appcompat/app/h$a;->p(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/h$a;->c()Lmiuix/appcompat/app/h;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->f2:Lmiuix/appcompat/app/h;

    invoke-virtual {p1, v4}, Lmiuix/appcompat/app/h;->setCanceledOnTouchOutside(Z)V

    iget-object p0, p0, Lcom/android/camera/Camera;->f2:Lmiuix/appcompat/app/h;

    invoke-virtual {p0}, Lmiuix/appcompat/app/h;->show()V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, LK2/e;->B()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/a;->Wq()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object p1, p0, Lcom/android/camera/a;->L0:Lcom/android/camera/ui/CameraRootView;

    if-eqz p1, :cond_10

    new-instance p2, LF1/Z1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, LF1/Z1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_9
    invoke-static {}, LSh/c;->c()Z

    move-result v1

    if-nez v1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "requestCtaDialog "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/camera/a;->M0:Z

    const-string v5, "   "

    const-string v6, ", "

    invoke-static {p1, v1, v5, p2, v6}, LF1/u2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v1, p1}, LF1/r0;->g(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/camera/a;->M0:Z

    if-nez p1, :cond_10

    if-eqz p2, :cond_10

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_a

    goto/16 :goto_0

    :cond_a
    :try_start_0
    iput-boolean v3, p0, Lcom/android/camera/a;->M0:Z

    new-instance p1, LA9/f;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, LA9/f;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, p1}, LSh/f;->c(Landroidx/fragment/app/l;LSh/a;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p1

    sget-object p2, LF6/a;->V:LF6/a;

    sget-object v1, LF6/a;->T:LF6/a;

    sget-object v3, LF6/a;->U:LF6/a;

    filled-new-array {p2, v1, v3}, [LF6/a;

    move-result-object p2

    invoke-virtual {p1, p2}, LF6/q;->e([LF6/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "requestCtaDialog fail cause:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/android/camera/a;->M0:Z

    goto :goto_0

    :cond_b
    invoke-static {}, LH6/d;->b()Z

    move-result p2

    if-nez p2, :cond_c

    xor-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->Or(Z)V

    goto :goto_0

    :cond_c
    iget-boolean p2, p0, Lcom/android/camera/a;->j0:Z

    invoke-static {p2}, Lcom/android/camera/data/data/w;->p0(Z)Z

    move-result p2

    if-nez p2, :cond_d

    invoke-static {}, Lcom/android/camera/data/data/w;->k0()Z

    move-result p2

    if-eqz p2, :cond_f

    :cond_d
    invoke-static {}, LH6/d;->c()Z

    move-result p2

    if-nez p2, :cond_f

    invoke-static {}, Lcom/android/camera/data/data/w;->k0()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/android/camera/data/data/w;->v0()Z

    move-result p1

    invoke-static {p1}, Lcom/android/camera/data/data/w;->P0(Z)V

    invoke-static {v3}, Lcom/android/camera/data/data/w;->Q0(Z)V

    invoke-static {v4}, Lcom/android/camera/data/data/w;->h1(Z)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/Camera;->Pr()V

    goto :goto_0

    :cond_f
    if-eqz p1, :cond_10

    const-string p1, "onCreate(): prefixCamera2Setup"

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->Lr()V

    :cond_10
    :goto_0
    invoke-static {v0, v2}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final z3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/Camera;->E1:Z

    return p0
.end method

.method public final zr()V
    .locals 5

    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->assertCameraSetupThread()V

    iget-object v0, p0, Lcom/android/camera/Camera;->I1:Lio/reactivex/disposables/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lio/reactivex/disposables/a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v3, "closeCameraSetup: CameraPendingSetupDisposable: X"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/Camera;->I1:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->c()V

    iput-object v1, p0, Lcom/android/camera/Camera;->I1:Lio/reactivex/disposables/a;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->H1:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->s1:Ljava/lang/String;

    const-string v3, "closeCameraSetup: CameraSetupDisposable: X"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/Camera;->H1:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->c()V

    iput-object v1, p0, Lcom/android/camera/Camera;->H1:Lio/reactivex/disposables/b;

    :cond_1
    return-void
.end method
