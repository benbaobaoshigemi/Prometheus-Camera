.class public abstract Lcom/android/camera/a;
.super LX1/c;
.source "SourceFile"

# interfaces
.implements Lt6/j;
.implements LY2/k;
.implements Lcom/android/camera/module/X;
.implements Lru/j;
.implements LY2/e;
.implements LY2/d$b;
.implements LW5/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/a$c;,
        Lcom/android/camera/a$d;
    }
.end annotation


# static fields
.field public static final synthetic r1:I


# instance fields
.field public A0:Landroid/widget/ImageView;

.field public B0:Lcom/android/camera/ois/ui/OISCircleView;

.field public C0:LD8/m;

.field public D0:LF1/b4;

.field public E0:Lcom/android/camera/module/G;

.field public F0:LF1/A;

.field public G0:Lcom/android/camera/module/H;

.field public H0:Lcom/android/camera/ui/CardImageView;

.field public I0:Landroid/widget/TextView;

.field public J0:Landroid/widget/Button;

.field public volatile K0:Z

.field public L0:Lcom/android/camera/ui/CameraRootView;

.field public M0:Z

.field public N0:Z

.field public O0:Z

.field public P0:Lmiuix/appcompat/app/h;

.field public Q0:Z

.field public R0:Z

.field public final S0:Lcom/android/camera/a$c;

.field public T0:Lio/reactivex/disposables/b;

.field public U0:Z

.field public final V0:Ljava/lang/Object;

.field public final W:LF1/i4;

.field public W0:J

.field public final X:LF1/b;

.field public X0:J

.field public volatile Y:Z

.field public Y0:Z

.field public volatile Z:Z

.field public Z0:Ljava/lang/String;

.field public volatile a0:Z

.field public a1:Z

.field public volatile b0:Z

.field public b1:LY2/n;

.field public c0:LY2/o;

.field public c1:LO4/a;

.field public d0:I

.field public final d1:La7/a;

.field public e0:I

.field public final e1:Ljava/lang/String;

.field public f0:I

.field public final f1:Ljava/lang/String;

.field public g0:Z

.field public g1:Lh0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/b<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h0:I

.field public h1:Z

.field public i0:I

.field public i1:I

.field public j0:Z

.field public j1:Z

.field public k0:Z

.field public volatile k1:Loh/b;

.field public l0:Z

.field public l1:F

.field public m0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final m1:LF1/c;

.field public n0:J

.field public final n1:Lcom/android/camera/a$a;

.field public o0:Z

.field public o1:I

.field public p0:J

.field public p1:Landroid/hardware/camera2/CameraManager;

.field public q0:J

.field public final q1:Lcom/android/camera/a$b;

.field public r0:J

.field public s0:J

.field public t0:LF1/B4;

.field public u0:Lcom/android/camera/CameraAppImpl;

.field public v0:Landroid/widget/FrameLayout;

.field public w0:Lq8/f;

.field public x0:Lq8/f;

.field public y0:Landroid/view/View;

.field public z0:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, LX1/c;-><init>()V

    new-instance v0, LF1/i4;

    invoke-direct {v0, p0}, LF1/i4;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/android/camera/a;->W:LF1/i4;

    new-instance v0, LF1/b;

    invoke-direct {v0, p0}, LF1/b;-><init>(Lcom/android/camera/a;)V

    iput-object v0, p0, Lcom/android/camera/a;->X:LF1/b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/a;->d0:I

    iput v0, p0, Lcom/android/camera/a;->e0:I

    iput v0, p0, Lcom/android/camera/a;->f0:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/a;->g0:Z

    iput v0, p0, Lcom/android/camera/a;->h0:I

    iput-boolean v0, p0, Lcom/android/camera/a;->j0:Z

    iput-boolean v0, p0, Lcom/android/camera/a;->k0:Z

    iput-boolean v0, p0, Lcom/android/camera/a;->Q0:Z

    iput-boolean v0, p0, Lcom/android/camera/a;->R0:Z

    new-instance v0, Lcom/android/camera/a$c;

    invoke-direct {v0, p0}, Lcom/android/camera/a$c;-><init>(Lcom/android/camera/a;)V

    iput-object v0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/a;->V0:Ljava/lang/Object;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/camera/a;->W0:J

    iput-wide v1, p0, Lcom/android/camera/a;->X0:J

    new-instance v1, La7/a;

    invoke-direct {v1, p0, v0}, La7/a;-><init>(Lcom/android/camera/a;Lcom/android/camera/a$c;)V

    iput-object v1, p0, Lcom/android/camera/a;->d1:La7/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[WMS]onStart_2_onResume_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/a;->e1:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[WMS]onPause_2_onStop_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/a;->f1:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/a;->j1:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/a;->l1:F

    new-instance v1, LF1/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LF1/c;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/android/camera/a;->m1:LF1/c;

    new-instance v1, Lcom/android/camera/a$a;

    invoke-direct {v1, p0}, Lcom/android/camera/a$a;-><init>(Lcom/android/camera/a;)V

    iput-object v1, p0, Lcom/android/camera/a;->n1:Lcom/android/camera/a$a;

    iput v0, p0, Lcom/android/camera/a;->o1:I

    new-instance v0, Lcom/android/camera/a$b;

    invoke-direct {v0, p0}, Lcom/android/camera/a$b;-><init>(Lcom/android/camera/a;)V

    iput-object v0, p0, Lcom/android/camera/a;->q1:Lcom/android/camera/a$b;

    return-void
.end method

.method public static kr()J
    .locals 3

    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object v0

    const/16 v1, 0x1f4

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, LRh/c;->b(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static mr(J)V
    .locals 1

    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, LRh/c;->d(J)V

    return-void
.end method

.method public static nr(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

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

    const-string v2, "camera_stuck"

    invoke-virtual {v0, v2, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attr_error_msg"

    invoke-virtual {v0, p0, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "attr_cost_time"

    invoke-virtual {v0, p1, p0}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/a;->y0:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, LF1/v;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, v0}, LF1/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final Bi()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/a;->Y:Z

    return p0
.end method

.method public final Bq(LX1/c;Landroid/net/Uri;Z)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportGalleryMode"
        type = 0x0
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ActivityBase"

    const-string/jumbo v2, "shareMedia"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lvr/d;->g(Landroid/content/Context;Landroid/net/Uri;Z)V

    invoke-static {p1}, LQa/i;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->m:LY2/f;

    iget-object p0, p0, LY2/f;->f:LZ5/a;

    invoke-interface {p0}, LZ5/h;->h0()LZ5/l;

    move-result-object p0

    invoke-static {p0}, Ln8/b;->a(LZ5/l;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "watch_shot_share"

    const-string p2, "click"

    invoke-static {p0, p1, p2}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Ck()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    invoke-virtual {p0}, Loh/b;->m()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/m;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final Cl()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/a;->m0:Ljava/util/ArrayList;

    return-object p0
.end method

.method public Cq()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAutoDownloadFeature"
        type = 0x0
    .end annotation

    return-void
.end method

.method public final D6(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/a;->I0:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final Di()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    invoke-virtual {p0}, Loh/b;->n()LOh/d;

    move-result-object p0

    iget-object p0, p0, LOh/d;->a:LOh/c;

    sget-object v0, LOh/c;->f:LOh/c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Dj(LZ5/h;Landroid/graphics/Rect;FLZ5/p;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    sget-object p0, LZ5/p;->c:LZ5/p;

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ne p4, p0, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    sget-boolean p3, LJe/c;->k:Z

    sget-object p3, LJe/c$b;->a:LJe/c;

    iget-object p3, p3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S4()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/m;->P()Z

    move-result p3

    if-eqz p3, :cond_1

    move p1, p2

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {}, LQ6/S0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/b;

    invoke-direct {p1, p2}, LEs/b;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method public final Dq()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LFp/c;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/a;->k0:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkGalleryLock: galleryLocked="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/camera/a;->k0:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityBase"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Ei()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/a;->a1:Z

    return-void
.end method

.method public final Eq()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v0

    iget-object v0, v0, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v0}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v0

    const-string v1, "ActivityBase"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/a;->Q0:Z

    if-nez v4, :cond_0

    invoke-static {}, LQa/i;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/a;->R0:Z

    if-nez v4, :cond_0

    const-string v4, "checkKeyguard: setShowWhenLocked:true"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/a;->setShowWhenLocked(Z)V

    iput-boolean v3, p0, Lcom/android/camera/a;->Q0:Z

    iget-object v4, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 v4, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v5

    iget-object v5, v5, Lvr/m;->a:Landroid/content/Intent;

    if-nez v5, :cond_1

    move-object v5, v4

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lvr/m;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const-string v6, "knock"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "checkKeyguard: setShowWhenLocked:false"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, v3}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_2
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v5

    if-eqz v0, :cond_3

    invoke-static {}, LQa/i;->d()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    iput-boolean v6, v5, Lu2/Q;->t:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "isOpenFromSelfie"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    xor-int/2addr v5, v2

    iput-boolean v5, p0, Lcom/android/camera/a;->l0:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v5

    iget-object v5, v5, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v5}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, LQa/i;->d()Z

    move-result v5

    if-nez v5, :cond_8

    :cond_5
    iget-boolean v5, p0, Lcom/android/camera/a;->k0:Z

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/a;->Qq()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {}, LK2/e;->B()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v5

    iget-object v5, v5, Lvr/m;->a:Landroid/content/Intent;

    if-nez v5, :cond_6

    move v5, v3

    goto :goto_2

    :cond_6
    invoke-static {v5}, Lvr/m;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "focus_mode"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    iput-object v4, p0, Lcom/android/camera/a;->m0:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/a;->n0:J

    goto :goto_5

    :cond_8
    :goto_3
    iget-object v4, p0, Lcom/android/camera/a;->m0:Ljava/util/ArrayList;

    if-nez v4, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/camera/a;->m0:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/camera/a;->n0:J

    :cond_9
    sget-object v4, Lcom/android/camera/guide/a;->i:Lcom/android/camera/guide/a$b;

    invoke-virtual {v4}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    invoke-static {p0}, Lcom/android/camera/guide/a;->d(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, LK2/j;->c()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, LQa/i;->d()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/android/camera/a;->l0:Z

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    move v2, v3

    :goto_4
    if-eqz v2, :cond_b

    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object v2

    iget-object v2, v2, Lc6/x;->a:Ljava/util/LinkedList;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LB4/j;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, LB4/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_b
    :goto_5
    const-string v2, "checkKeyguard: isLockScreenLaunch="

    const-string v3, ", isOnLockScreen="

    invoke-static {v2, v3, v0}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, LQa/i;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", secureUriList is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/a;->m0:Ljava/util/ArrayList;

    if-nez v2, :cond_c

    const-string p0, "null"

    goto :goto_6

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "not null ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/a;->m0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final F3(IZ)V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const v1, 0x7f1403bc

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const v1, 0x7f140c02

    if-eq p1, v1, :cond_2

    const v1, 0x7f1403bb

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "showErrorAndFinish: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityBase"

    invoke-static {v4, v3}, Lcom/android/camera/log/LogK;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, LF1/j;

    invoke-direct {v3, p0, v1}, LF1/j;-><init>(Lcom/android/camera/a;Z)V

    new-instance v4, Lmiuix/appcompat/app/h$a;

    invoke-direct {v4, p0}, Lmiuix/appcompat/app/h$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lmiuix/appcompat/app/h$a;->f(Z)V

    invoke-virtual {v4}, Lmiuix/appcompat/app/h$a;->l()V

    const v5, 0x7f14031c

    invoke-virtual {v4, v5}, Lmiuix/appcompat/app/h$a;->B(I)V

    invoke-virtual {v4, p1}, Lmiuix/appcompat/app/h$a;->m(I)V

    invoke-virtual {v4, v3}, Lmiuix/appcompat/app/h$a;->r(LF1/j;)V

    invoke-virtual {v4}, Lmiuix/appcompat/app/h$a;->E()Lmiuix/appcompat/app/h;

    move-result-object p1

    const-string v3, "attr_feature_name"

    const-string v4, "key_camera_exception"

    if-eqz v1, :cond_3

    new-instance v5, Lgq/h;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v4, v5, Lgq/h;->a:Ljava/lang/String;

    new-instance v6, Lgq/f;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v6, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v6, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v6, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v6, v5, Lgq/h;->b:Lgq/f;

    const-string v6, "camera_error_dialog_show"

    invoke-virtual {v5, v6, v3}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lgq/h;->d()V

    :cond_3
    sget-boolean v5, LQa/b;->k:Z

    if-eqz v5, :cond_5

    if-nez p2, :cond_5

    sget-boolean p2, LJe/d;->j:Z

    if-eqz p2, :cond_5

    if-eqz v1, :cond_5

    sget-boolean p2, LQa/b;->c:Z

    if-nez p2, :cond_5

    invoke-static {v0}, LQp/a;->a(Z)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lgq/h;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v4, p2, Lgq/h;->a:Ljava/lang/String;

    new-instance v0, Lgq/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v0, p2, Lgq/h;->b:Lgq/f;

    const-string v0, "camera_broadcast_kill_service"

    invoke-virtual {p2, v0, v3}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lgq/h;->d()V

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "kill_provider"

    invoke-static {v0, p2}, Lcom/android/camera/a;->nr(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    const/4 p2, -0x3

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/h;->l(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, LF1/Y;

    invoke-direct {v0, p0, p2}, LF1/Y;-><init>(Lcom/android/camera/a;Landroid/widget/Button;)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p2

    new-instance v0, LF1/k;

    invoke-direct {v0, p2}, LF1/k;-><init>(Landroid/os/CountDownTimer;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_5
    iput-object p1, p0, Lcom/android/camera/a;->P0:Lmiuix/appcompat/app/h;

    return-void
.end method

.method public final F5()Lgi/f;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->k:LPu/n;

    invoke-virtual {p0}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgi/f;

    return-object p0
.end method

.method public final F7()Lvr/m;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    invoke-virtual {p0}, Loh/b;->k()Lvr/m;

    move-result-object p0

    return-object p0
.end method

.method public final Fq()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/a;->H0:Lcom/android/camera/ui/CardImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/camera/a;->H0:Lcom/android/camera/ui/CardImageView;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/camera/a;->H0:Lcom/android/camera/ui/CardImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method public final G1(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "com.xiaomi.camera.rcs.setHdrExtData"

    iget-object p0, p0, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz p0, :cond_2

    iget-object p0, p0, LF1/p4;->c:Lcom/xiaomi/camera/rcs/e;

    const/4 v1, 0x0

    const-string v2, "RemoteControlAgent"

    if-nez p0, :cond_0

    const-string p0, "custom client request ignored: com.xiaomi.camera.rcs.setHdrExtData"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-void

    :cond_0
    :try_start_0
    sget-boolean v3, LPp/b;->a:Z

    iget-object v3, p0, Lcom/xiaomi/camera/rcs/e;->a:Ljava/lang/String;

    const-string v4, "customClientRequest"

    const/4 v5, 0x3

    invoke-static {v5, v3, v4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/xiaomi/camera/rcs/e$e; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/e;->c()Lcom/xiaomi/camera/rcs/IRemoteControl;

    move-result-object v3

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/e;->d:Lcom/xiaomi/camera/rcs/e$b;

    if-eqz p0, :cond_1

    invoke-interface {v3, p0, v0, p1}, Lcom/xiaomi/camera/rcs/IRemoteControl;->customClientRequest(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    :cond_1
    new-instance p0, Lcom/xiaomi/camera/rcs/e$e;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/xiaomi/camera/rcs/e$e; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :try_start_2
    new-instance p0, Lcom/xiaomi/camera/rcs/e$e;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_2
    .catch Lcom/xiaomi/camera/rcs/e$e; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const-string p0, "custom client request failed: com.xiaomi.camera.rcs.setHdrExtData"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_2
    return-void
.end method

.method public final G2(LOh/c;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    invoke-virtual {p0}, Loh/b;->n()LOh/d;

    move-result-object p0

    invoke-virtual {p0, p1}, LOh/d;->a(LOh/c;)V

    return-void
.end method

.method public abstract Gq(Landroid/os/Bundle;)V
.end method

.method public Hq(Landroid/os/Bundle;)V
    .locals 13

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v2

    invoke-virtual {v2}, Lvr/m;->m()Z

    move-result v2

    const-string v3, "ActivityBase"

    if-eqz v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const-string v1, "onCreate: addFlag --> FLAG_TURN_SCREEN_ON"

    new-array v2, p1, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    :cond_2
    const-string v1, "Startup."

    const-string v2, "createRenderEngine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, LD8/m;

    invoke-direct {v1, p0}, LD8/m;-><init>(Lcom/android/camera/a;)V

    iput-object v1, p0, Lcom/android/camera/a;->C0:LD8/m;

    iget-object v1, v1, LD8/m;->p:Lru/h;

    invoke-virtual {v1}, Lru/h;->l()V

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v2, LC4/L;

    invoke-direct {v2, p0, v0}, LC4/L;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    const-string v1, "com.android.camera.showtime"

    invoke-static {v1, p1}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/android/camera/module/G;

    invoke-direct {v1}, Lcom/android/camera/module/G;-><init>()V

    :goto_1
    iput-object v1, p0, Lcom/android/camera/a;->E0:Lcom/android/camera/module/G;

    iget-object v4, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v4, v1}, LD8/m;->Q(LCu/F;)V

    :cond_4
    sget-boolean v1, Lcom/android/camera/module/I;->a:Z

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/android/camera/module/H;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :goto_2
    iput-object v1, p0, Lcom/android/camera/a;->G0:Lcom/android/camera/module/H;

    iget-object v4, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v4, v1}, LD8/m;->Q(LCu/F;)V

    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-le v1, v4, :cond_8

    invoke-static {}, Lcom/android/camera/data/data/w;->t0()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, LK2/j;->h()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, LK2/e;->E()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    new-instance v1, LF1/A;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/a;->F0:LF1/A;

    goto :goto_3

    :cond_8
    iput-object v2, p0, Lcom/android/camera/a;->F0:LF1/A;

    :goto_3
    iget-object v1, p0, Lcom/android/camera/a;->F0:LF1/A;

    iget-object v4, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v4, v1}, LD8/m;->Q(LCu/F;)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/data/w;->t0()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    iget-object v1, v1, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v1}, Lvr/m;->x(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/a;->C0:LD8/m;

    invoke-virtual {v1}, LD8/m;->Z()V

    :cond_a
    iget-object v1, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz v1, :cond_b

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, LD8/m;->p:Lru/h;

    iget-object v4, v1, Lru/h;->u:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean v0, v1, Lru/h;->X:Z

    monitor-exit v4

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_b
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v1, LF1/b4;

    invoke-direct {v1, p0}, LF1/b4;-><init>(Lcom/android/camera/a;)V

    iput-object v1, p0, Lcom/android/camera/a;->D0:LF1/b4;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-lt v1, v4, :cond_c

    move v1, v0

    goto :goto_5

    :cond_c
    move v1, p1

    :goto_5
    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->j0()Z

    move-result v5

    if-eqz v5, :cond_f

    if-nez v1, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v5

    if-eq v5, v0, :cond_d

    iget-object v5, p0, Lcom/android/camera/a;->c0:LY2/o;

    iget v6, v5, LY2/o;->g:I

    new-instance v6, LY2/s;

    invoke-direct {v6, v0, v2, v5}, LY2/s;-><init>(ILTu/e;LY2/o;)V

    invoke-static {v6}, Lyw/f;->c(Lev/p;)Ljava/lang/Object;

    goto :goto_7

    :cond_d
    if-eqz v1, :cond_f

    iget-object v5, p0, Lcom/android/camera/a;->c0:LY2/o;

    sget v6, Ls4/a;->a:I

    iget v7, v5, LY2/o;->g:I

    const/4 v8, -0x1

    if-gt v8, v6, :cond_e

    const/16 v8, 0xe

    if-ge v6, v8, :cond_e

    goto :goto_6

    :cond_e
    move v6, v7

    :goto_6
    new-instance v7, LY2/s;

    invoke-direct {v7, v6, v2, v5}, LY2/s;-><init>(ILTu/e;LY2/o;)V

    invoke-static {v7}, Lyw/f;->c(Lev/p;)Ljava/lang/Object;

    :cond_f
    :goto_7
    if-nez v1, :cond_10

    invoke-static {}, LK2/b;->b0()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    new-instance v1, LY2/n;

    invoke-direct {v1, p0}, LY2/g;-><init>(Lcom/android/camera/a;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sSupportSeamless "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LK2/j;->h()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, p1, [Ljava/lang/Object;

    const-string v6, "ScreenOrientationManager"

    invoke-static {v6, v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/a;->b1:LY2/n;

    iget-object v2, p0, LW/f;->a:Landroidx/lifecycle/y;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/y;->a(Landroidx/lifecycle/w;)V

    :cond_11
    new-instance v1, LO4/a;

    invoke-direct {v1, p0}, LO4/a;-><init>(Lcom/android/camera/a;)V

    iput-object v1, p0, Lcom/android/camera/a;->c1:LO4/a;

    iget-object v1, p0, Lcom/android/camera/a;->g1:Lh0/b;

    if-eqz v1, :cond_12

    iget-object v1, v1, Lh0/b;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_8
    move v7, v1

    goto :goto_9

    :cond_12
    const-string v1, "create layoutManager before intent parsed"

    new-array v2, p1, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v2, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v2}, Lu2/Q;->E(I)I

    move-result v1

    goto :goto_8

    :goto_9
    new-instance v5, LY2/f;

    iget-object v8, p0, Lcom/android/camera/a;->c1:LO4/a;

    move-object v9, p0

    move-object v10, p0

    move-object v11, p0

    move-object v12, p0

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, LY2/f;-><init>(Lcom/android/camera/a;ILQ6/f0;Lcom/android/camera/a;Lcom/android/camera/a;Lcom/android/camera/a;Lcom/android/camera/a;)V

    iget-object p0, v6, LW/f;->a:Landroidx/lifecycle/y;

    invoke-virtual {p0, v5}, Landroidx/lifecycle/y;->a(Landroidx/lifecycle/w;)V

    invoke-virtual {v6}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iput-object v5, p0, Loh/b;->m:LY2/f;

    iget-object p0, v6, LW/f;->a:Landroidx/lifecycle/y;

    invoke-static {}, LF1/I3;->a()LF1/I3;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/lifecycle/y;->a(Landroidx/lifecycle/w;)V

    invoke-virtual {v6}, Lcom/android/camera/a;->ar()V

    invoke-virtual {v4}, LJe/c;->R0()Z

    invoke-virtual {v6}, Lcom/android/camera/a;->Tq()Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-virtual {v6}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object p0

    invoke-virtual {p0}, Lvr/m;->k()Z

    move-result p0

    if-nez p0, :cond_14

    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initContext mCamera: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc6/x;->h:LX1/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", camera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, p1, [Ljava/lang/Object;

    sget-object v3, Lc6/x;->J:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v6, p0, Lc6/x;->h:LX1/c;

    iget-object v1, v6, LW/f;->a:Landroidx/lifecycle/y;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/y;->a(Landroidx/lifecycle/w;)V

    invoke-virtual {v6}, Lcom/android/camera/a;->Tq()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lc6/x;->J:Ljava/lang/String;

    const-string v2, "open visible: "

    invoke-static {v2, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v3, p1, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lc6/x;->n:Z

    iput-boolean p1, p0, Lc6/x;->o:Z

    iget-wide v0, p0, Lc6/x;->I:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc6/x;->I:J

    :cond_13
    invoke-virtual {p0}, Lc6/x;->k()V

    :cond_14
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    iget-object p1, v6, Lcom/android/camera/a;->m1:LF1/c;

    sget-object v0, Li0/E;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, p1}, Li0/E$d;->u(Landroid/view/View;Li0/r;)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public abstract Iq()V
.end method

.method public Jq()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/a;->E0:Lcom/android/camera/module/G;

    invoke-virtual {p0, v0}, Lcom/android/camera/a;->cr(LCu/F;)V

    iget-object v0, p0, Lcom/android/camera/a;->F0:LF1/A;

    invoke-virtual {p0, v0}, Lcom/android/camera/a;->cr(LCu/F;)V

    iget-object v0, p0, Lcom/android/camera/a;->G0:Lcom/android/camera/module/H;

    invoke-virtual {p0, v0}, Lcom/android/camera/a;->cr(LCu/F;)V

    iget-object v0, p0, Lcom/android/camera/a;->H0:Lcom/android/camera/ui/CardImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/camera/a;->Fq()V

    :cond_0
    iget-object v0, p0, LW/f;->a:Landroidx/lifecycle/y;

    invoke-static {}, LF1/I3;->a()LF1/I3;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/y;->d(Landroidx/lifecycle/w;)V

    iget-object v0, p0, Lcom/android/camera/a;->b1:LY2/n;

    if-eqz v0, :cond_1

    iget-object v2, p0, LW/f;->a:Landroidx/lifecycle/y;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/y;->d(Landroidx/lifecycle/w;)V

    iput-object v1, p0, Lcom/android/camera/a;->b1:LY2/n;

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->m:LY2/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, LW/f;->a:Landroidx/lifecycle/y;

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v2

    iget-object v2, v2, Loh/b;->m:LY2/f;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/y;->d(Landroidx/lifecycle/w;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iput-object v1, v0, Loh/b;->m:LY2/f;

    :cond_2
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->Q()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v2

    invoke-virtual {v2}, Ls4/e;->i()V

    :cond_3
    invoke-virtual {v0}, LJe/c;->R0()Z

    invoke-virtual {p0}, Lcom/android/camera/a;->Tq()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v0

    invoke-virtual {v0}, Lvr/m;->k()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "releaseContext mCamera: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lc6/x;->h:LX1/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Lc6/x;->J:Ljava/lang/String;

    invoke-static {v6, v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lc6/x;->h:LX1/c;

    if-ne p0, v2, :cond_4

    iput-object v1, v0, Lc6/x;->h:LX1/c;

    :cond_4
    iget-object v1, p0, LW/f;->a:Landroidx/lifecycle/y;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/y;->d(Landroidx/lifecycle/w;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Tq()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeForce mCamera: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lc6/x;->h:LX1/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lc6/x;->h:LX1/c;

    if-ne p0, v1, :cond_5

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lc6/x;->b(Z)V

    iput-boolean v4, v0, Lc6/x;->n:Z

    iput-boolean v4, v0, Lc6/x;->o:Z

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lc6/x;->I:J

    invoke-virtual {v0}, Lc6/x;->z()V

    :cond_5
    return-void
.end method

.method public final Kg()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object p0

    invoke-virtual {p0}, LF1/B4;->a()V

    return-void
.end method

.method public final Kq()Loh/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/a;->k1:Loh/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/a;->k1:Loh/b;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before activity onCreate!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final L(Landroid/net/Uri;ZLjava/lang/String;IZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/camera/a;->Lq()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/s;

    invoke-direct {v1, p1, p2, p3, p5}, LF1/s;-><init>(Landroid/net/Uri;ZLjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/a;->D0:LF1/b4;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onMediaSaveCompleted: uri = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", heif = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", title = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mimeTpe = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", preview = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "RemoteControlAgent"

    invoke-static {v4, p2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p2, v0, LF1/p4;->b:Z

    if-nez p2, :cond_1

    const-string p2, "remote control not initialized"

    new-array p4, v2, [Ljava/lang/Object;

    invoke-static {v4, p2, p4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p2, "media_name"

    const-string v3, "media_uri"

    const/4 v5, 0x2

    if-ne p4, v5, :cond_3

    if-eqz p5, :cond_2

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p4

    sget-object v5, LF1/b4;->M:Landroid/net/Uri;

    invoke-static {v5, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p4

    const-string p5, "onImageSaveCompleted: "

    invoke-static {p4, p5}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, p5, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p5, v3, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p5, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x1006

    invoke-virtual {v0, p2, p5}, LF1/b4;->S0(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string p2, "onImageSaveCompleted ignored"

    new-array p4, v2, [Ljava/lang/Object;

    invoke-static {v4, p2, p4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-ne p4, v1, :cond_4

    const-string p4, "onVideoSaveCompleted: "

    invoke-static {p1, p4}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-array p5, v2, [Ljava/lang/Object;

    invoke-static {v4, p4, p5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    sget-object p5, Lcom/xiaomi/camera/rcs/f;->a:Ljava/lang/String;

    invoke-virtual {p4, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p4, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x1007

    invoke-virtual {v0, p2, p4}, LF1/b4;->S0(ILandroid/os/Bundle;)V

    :cond_4
    :goto_0
    sget-object p2, LF1/o3;->a:LF1/o3$a;

    monitor-enter p2

    :try_start_0
    sget-object p4, LF1/o3;->a:LF1/o3$a;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, LF1/o3$a;->b(Ljava/lang/String;)J

    move-result-wide p3

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/android/camera/a;->m0:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-wide/16 v3, 0x0

    cmp-long p2, p3, v3

    if-lez p2, :cond_6

    iget-wide v5, p0, Lcom/android/camera/a;->n0:J

    sub-long/2addr p3, v5

    cmp-long p2, p3, v3

    if-ltz p2, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/a;->cl(ZLandroid/net/Uri;)V

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final Lq()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/module/W;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final M()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/a;->y0:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, LF1/n;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, v0}, LF1/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final Mq(II)Landroid/graphics/Rect;
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    iget-object p0, p0, Lcom/android/camera/a;->w0:Lq8/f;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    iget v2, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    iget v4, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eq p1, p2, :cond_8

    invoke-static {}, LK2/e;->k()Landroid/util/Size;

    move-result-object p0

    sub-int/2addr p2, p1

    add-int/lit16 p2, p2, 0x168

    rem-int/lit16 p2, p2, 0x168

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    :goto_3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    if-eqz p2, :cond_7

    if-eq p2, v2, :cond_6

    const/16 v2, 0xb4

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    return-object p1

    :cond_4
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int p2, p0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p2, v1, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_5
    iget p2, v0, Landroid/graphics/Rect;->right:I

    sub-int p2, v3, p2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p0, v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    invoke-virtual {p1, p2, v1, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_6
    iget p0, v0, Landroid/graphics/Rect;->top:I

    iget p2, v0, Landroid/graphics/Rect;->right:I

    sub-int p2, v3, p2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    invoke-virtual {p1, p0, p2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p1

    :cond_8
    return-object v0
.end method

.method public final Nq()LF1/B4;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/a;->t0:LF1/B4;

    if-nez v0, :cond_0

    new-instance v0, LF1/B4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, LF1/B4;->c:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/android/camera/a;->t0:LF1/B4;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/a;->t0:LF1/B4;

    return-object p0
.end method

.method public final Oq(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/a;->pf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "from_where"

    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "is_need_highlight"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p3, :cond_1

    const-string p4, "highlight_preference_key"

    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string/jumbo p3, "target_tag"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, LOh/c;->c:LOh/c;

    invoke-virtual {p0, p1}, Lcom/android/camera/a;->G2(LOh/c;)V

    return-void
.end method

.method public final Pq()Z
    .locals 8

    invoke-static {}, Lhi/d;->d()Lhi/a$b;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lhi/a$b;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhi/a$a;

    iget-object v3, v3, Lhi/a$a;->g:Lj9/D0;

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/a;->Lq()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LF1/x;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, LF1/x;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/camera/a;->U0:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isCameraAliveWhenResume: releaseByModule: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isModuleAlive: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isCameraDevicesAlive: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "ActivityBase"

    invoke-static {v6, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/android/camera/a;->U0:Z

    if-nez p0, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public final Qq()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/a;->Lq()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/z;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final Rh()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/a;->O0:Z

    return-void
.end method

.method public final Rq()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    invoke-virtual {p0}, Loh/b;->m()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/h;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final S0(LF6/a;)V
    .locals 2

    sget-object v0, LF6/h;->a:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const v1, 0x68eae30

    add-int/2addr v0, v1

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/a;->ir(ILF6/a;Ljava/lang/String;)V

    return-void
.end method

.method public final Sq()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    invoke-virtual {p0}, Loh/b;->n()LOh/d;

    move-result-object p0

    iget-object p0, p0, LOh/d;->a:LOh/c;

    sget-object v0, LOh/c;->i:LOh/c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final T8(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LF1/b4;->y2(I)V

    :cond_0
    return-void
.end method

.method public Te()LF8/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final Tq()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isMainScreen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/guide/a;->i:Lcom/android/camera/guide/a$b;

    invoke-virtual {v1}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    invoke-static {p0}, Lcom/android/camera/guide/a;->d(Landroid/app/Activity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ActivityBase"

    invoke-static {v4, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->d4()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    invoke-static {p0}, Lcom/android/camera/guide/a;->d(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public final Ua(Z)V
    .locals 4

    const/4 p0, 0x1

    const-string v0, "onExternalDeviceStateChanged: "

    invoke-static {v0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ActivityBase"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->S()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, LQ5/J;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->N()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/w;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LF1/J;

    invoke-direct {v3, p1, v1}, LF1/J;-><init>(ZI)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    invoke-virtual {v0}, LJe/c;->N()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LEs/h;

    invoke-direct {v2, p0}, LEs/h;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LEs/i;

    invoke-direct {v2, p0}, LEs/i;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/K;

    invoke-direct {v0, p1, v1}, LF1/K;-><init>(ZI)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Uq()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/m;->j(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "104"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->j3()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LK2/b;->a0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized Vb()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string v0, "hasSurface(): mCurrentSurfaceState="

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/camera/a;->o1:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const-string v1, "ActivityBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/a;->o1:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/module/W;->isPurePreview()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/a;->x0:Lq8/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/a;->C0:LD8/m;

    iget-object v0, v0, LD8/m;->g:Landroid/view/Surface;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    move v3, v1

    :cond_2
    monitor-exit p0

    return v3

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/a;->getSurfaceTexture()LEu/a;

    move-result-object v0

    invoke-virtual {v0}, LEu/a;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LD8/m;->U()V

    goto :goto_1

    :cond_4
    const-string v0, "ActivityBase"

    const-string v1, "hasSurface():SURFACE_STATE_OK mRenderEngine is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return v3

    :cond_5
    monitor-exit p0

    return v1

    :cond_6
    :try_start_2
    invoke-static {}, LK2/e;->A()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    new-instance v1, LF1/B;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LF1/B;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, LD8/m;->U()V

    goto :goto_2

    :cond_8
    const-string v0, "ActivityBase"

    const-string v1, "hasSurface():SURFACE_STATE_PAUSED mRenderEngine is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return v3

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final Vg()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/a;->pf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "from_where"

    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "intent_type"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget v0, v0, Lu2/Q;->v:I

    const-string v1, "intent_video_quality"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v0

    iget-object v0, v0, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v0}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "StartActivityWhenLocked"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const-class v0, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, LOh/c;->c:LOh/c;

    invoke-virtual {p0, v0}, Lcom/android/camera/a;->G2(LOh/c;)V

    return-void
.end method

.method public final Vq()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object p0

    invoke-virtual {p0}, Lvr/m;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LQ6/j0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/w;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Wb()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/a;->Lq()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/C;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/C;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Wq()Z
    .locals 1

    invoke-static {}, LH6/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LSh/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/a;->j0:Z

    invoke-static {p0}, Lcom/android/camera/data/data/w;->p0(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LH6/d;->c()Z

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

.method public final X(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/camera/a;->ir(ILF6/a;Ljava/lang/String;)V

    return-void
.end method

.method public final X1()Lcom/android/camera/module/W;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->o:Lcom/android/camera/module/W;

    return-object p0
.end method

.method public final Xg()Lru/k;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/a;->C0:LD8/m;

    return-object p0
.end method

.method public final Xi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/a;->o0:Z

    return-void
.end method

.method public final Xk(ILandroid/graphics/Rect;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/data/w;->t0()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLayoutChange "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changeType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ActivityBase"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/a;->w0:Lq8/f;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p1

    iget-object p1, p1, Loh/b;->m:LY2/f;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->m:LY2/f;

    sget-object p1, LZ5/m;->f:LZ5/m;

    invoke-virtual {p0, p1}, LY2/f;->g(LZ5/m;)Z

    return-void

    :cond_0
    invoke-static {v0, p2}, LG8/h;->o(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, LD8/m;->Y(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public abstract Xq(I)V
.end method

.method public final Yi(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/a;->B0:Lcom/android/camera/ois/ui/OISCircleView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/camera/a;->B0:Lcom/android/camera/ois/ui/OISCircleView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ois/ui/OISCircleView;->setShowGroupPreview(Z)V

    iget-object p0, p0, Lcom/android/camera/a;->B0:Lcom/android/camera/ois/ui/OISCircleView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/a;->B0:Lcom/android/camera/ois/ui/OISCircleView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/a;->B0:Lcom/android/camera/ois/ui/OISCircleView;

    invoke-virtual {p1, v1}, Lcom/android/camera/ois/ui/OISCircleView;->setShowGroupPreview(Z)V

    iget-object p0, p0, Lcom/android/camera/a;->B0:Lcom/android/camera/ois/ui/OISCircleView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Yq(Lf2/a$a;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public final Z0()V
    .locals 3

    invoke-static {p0}, LF6/k;->e(Landroidx/lifecycle/x;)Landroidx/lifecycle/q;

    move-result-object v0

    new-instance v1, LX1/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LX1/d;-><init>(Lcom/android/camera/a;LTu/e;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lyw/f;->b(Lyw/D;LTu/h;Lyw/F;Lev/p;I)Lyw/B0;

    return-void
.end method

.method public Zq()V
    .locals 0

    return-void
.end method

.method public final a0(I)V
    .locals 29

    move-object/from16 v1, p0

    const-string v0, "The time cost when start app is illegal: "

    const-string v2, "onFrameAvailable: trackStartAppCost: "

    const-string v3, "ActivityBase::onFrameAvailable"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v3

    iget-object v4, v3, LF6/q;->e:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, v3, LF6/q;->d:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    if-eqz v5, :cond_0

    const-string v5, "6:[HAL]startPreview2firstFrame"

    invoke-virtual {v3, v5}, LF6/q;->g(Ljava/lang/String;)J

    iget-object v5, v3, LF6/q;->e:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iput-boolean v4, v3, LF6/q;->d:Z

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    invoke-static {}, Lx6/b;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lx6/b;->e:Lx6/b;

    iget-object v6, v5, Lx6/b;->b:Ljava/lang/String;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v6

    iget v7, v6, Lu2/Q;->u:I

    invoke-virtual {v6, v7}, Lu2/Q;->E(I)I

    move-result v6

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v7

    invoke-virtual {v7}, Lu2/Q;->C()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lx6/b;->d(II)V

    :cond_2
    :goto_1
    const-string v5, "MonkeyTimeTracker"

    const-string v6, "ActivityBase"

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    move/from16 v12, p1

    if-ne v9, v12, :cond_c

    iget-wide v13, v1, Lcom/android/camera/a;->p0:J

    cmp-long v13, v13, v10

    if-eqz v13, :cond_c

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    const-wide/16 v15, 0x3e8

    :try_start_3
    iget-wide v7, v1, Lcom/android/camera/a;->p0:J

    sub-long/2addr v13, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/camera/a;->r0:J

    sget-object v7, LF6/a;->O:LF6/a;

    filled-new-array {v7}, [LF6/a;

    move-result-object v8

    invoke-virtual {v3, v8}, LF6/q;->n([LF6/a;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v0, LF6/a;->T:LF6/a;

    sget-object v2, LF6/a;->V:LF6/a;

    filled-new-array {v0, v2}, [LF6/a;

    move-result-object v0

    invoke-virtual {v3, v0}, LF6/q;->e([LF6/a;)V

    filled-new-array {v7}, [LF6/a;

    move-result-object v0

    invoke-virtual {v3, v0}, LF6/q;->s([LF6/a;)J

    move-wide/from16 v19, v10

    move-wide/from16 v17, v15

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-wide/from16 v19, v10

    move-wide/from16 v17, v15

    goto/16 :goto_a

    :cond_3
    sget-object v7, LF6/a;->T:LF6/a;

    filled-new-array {v7}, [LF6/a;

    move-result-object v8

    invoke-virtual {v3, v8}, LF6/q;->n([LF6/a;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-boolean v17, LQa/b;->j0:Z

    if-eqz v17, :cond_4

    sget-boolean v17, LQa/b;->k0:Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v17, :cond_4

    move-wide/from16 v17, v15

    :try_start_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-wide/from16 v19, v10

    :try_start_5
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x2

    invoke-static {v15, v10, v11, v4}, Lcom/xiaomi/renderengine/gl/GlHandlerThread;->reporttokernel(IILjava/lang/String;I)V

    const-string v4, "CAMERA_APP_PRE_READ"

    invoke-static {v4, v9}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-wide/from16 v19, v10

    goto/16 :goto_a

    :cond_4
    move-wide/from16 v19, v10

    move-wide/from16 v17, v15

    :goto_2
    sget-object v4, LF6/a;->V:LF6/a;

    filled-new-array {v7, v4}, [LF6/a;

    move-result-object v9

    invoke-virtual {v3, v9}, LF6/q;->s([LF6/a;)J

    move-result-wide v22

    invoke-virtual {v1}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    const-string/jumbo v10, "unknown"

    if-eqz v9, :cond_5

    :try_start_6
    invoke-virtual {v1}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v9

    invoke-virtual {v9}, Lvr/m;->d()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v28, v9

    goto :goto_3

    :cond_5
    move-object/from16 v28, v10

    :goto_3
    const/16 v9, 0x5dc

    move-object v11, v10

    int-to-long v9, v9

    cmp-long v9, v22, v9

    if-lez v9, :cond_8

    if-eqz v8, :cond_6

    const v9, 0x36d68c8f

    :goto_4
    move/from16 v24, v9

    goto :goto_5

    :cond_6
    const v9, 0x36d68c90

    goto :goto_4

    :goto_5
    if-eqz v8, :cond_7

    goto :goto_6

    :cond_7
    move-object v7, v4

    :goto_6
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sget-object v4, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraOptScheduler:Lio/reactivex/v;

    new-instance v21, LJ2/b;

    invoke-direct/range {v21 .. v28}, LJ2/b;-><init>(JIJLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v21

    invoke-static {v4, v7}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_8
    const-wide/16 v9, 0x7d0

    cmp-long v4, v22, v9

    if-lez v4, :cond_9

    const-string v4, "launch_stuck"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/camera/a;->nr(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_9
    cmp-long v4, v13, v19

    if-lez v4, :cond_b

    const-wide/16 v9, 0x2710

    cmp-long v4, v13, v9

    if-gtz v4, :cond_b

    if-nez v28, :cond_a

    move-object v10, v11

    goto :goto_7

    :cond_a
    move-object/from16 v10, v28

    :goto_7
    new-instance v0, LK7/f;

    invoke-direct {v0, v13, v14, v10, v8}, LK7/f;-><init>(JLjava/lang/String;Z)V

    invoke-static {v0}, LK7/l;->b(Lev/a;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Lmq/s;->f(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "FluencyTrackProxy.onLaunchStart error: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v7}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v2, LF1/X;

    invoke-direct {v2, v1, v8}, LF1/X;-><init>(Lcom/android/camera/a;Z)V

    invoke-static {v0, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :goto_9
    move-wide/from16 v7, v19

    goto :goto_b

    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1

    :catch_4
    move-exception v0

    move-wide/from16 v19, v10

    const-wide/16 v17, 0x3e8

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", start time: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/camera/a;->p0:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", now: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :goto_b
    iput-wide v7, v1, Lcom/android/camera/a;->p0:J

    iget-boolean v0, v1, Lcom/android/camera/a;->a0:Z

    if-nez v0, :cond_12

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/data/w;->k0()Z

    move-result v2

    invoke-virtual {v0, v2}, Lh6/b;->g(Z)V

    goto/16 :goto_10

    :cond_c
    const-wide/16 v17, 0x3e8

    iget-wide v7, v1, Lcom/android/camera/a;->q0:J

    const-wide/16 v19, 0x0

    cmp-long v0, v7, v19

    if-eqz v0, :cond_12

    sget-wide v7, LK7/l;->h:J

    cmp-long v0, v7, v19

    if-nez v0, :cond_12

    sget-object v0, LF6/a;->O:LF6/a;

    filled-new-array {v0}, [LF6/a;

    move-result-object v0

    invoke-virtual {v3, v0}, LF6/q;->s([LF6/a;)J

    move-result-wide v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/camera/a;->q0:J

    sub-long/2addr v7, v9

    const-string v0, "onFrameAvailable: trackModeSwitchCost: "

    invoke-static {v7, v8, v0}, LHs/a;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/camera/a;->r0:J

    sub-long/2addr v7, v9

    const-wide/16 v19, 0x0

    cmp-long v0, v23, v19

    if-lez v0, :cond_d

    sget v26, LK7/l;->i:I

    sget v27, LK7/l;->j:I

    sput v4, LK7/l;->i:I

    sput v4, LK7/l;->j:I

    new-instance v21, LK7/e;

    move-wide/from16 v24, v23

    move-wide/from16 v22, v7

    invoke-direct/range {v21 .. v27}, LK7/e;-><init>(JJII)V

    move-wide/from16 v23, v24

    invoke-static/range {v21 .. v21}, LK7/l;->b(Lev/a;)V

    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lmq/s;->h(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_c

    :catch_5
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "FluencyTrackProxy.onSwitchModuleStart error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_c
    cmp-long v0, v23, v17

    if-lez v0, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sget-object v0, LF6/a;->O:LF6/a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraOptScheduler:Lio/reactivex/v;

    new-instance v21, LJ2/d;

    const/16 v27, 0x3e8

    const v28, 0x36d68cc2

    invoke-direct/range {v21 .. v28}, LJ2/d;-><init>(Ljava/lang/String;JJII)V

    move-object/from16 v2, v21

    invoke-static {v0, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_e
    sget-object v0, LF6/a;->M:LF6/a;

    filled-new-array {v0}, [LF6/a;

    move-result-object v2

    invoke-virtual {v3, v2}, LF6/q;->n([LF6/a;)Z

    move-result v2

    if-eqz v2, :cond_f

    filled-new-array {v0}, [LF6/a;

    move-result-object v0

    invoke-virtual {v3, v0}, LF6/q;->s([LF6/a;)J

    goto :goto_d

    :cond_f
    sget-object v0, LF6/a;->N:LF6/a;

    filled-new-array {v0}, [LF6/a;

    move-result-object v2

    invoke-virtual {v3, v2}, LF6/q;->n([LF6/a;)Z

    move-result v2

    if-eqz v2, :cond_10

    filled-new-array {v0}, [LF6/a;

    move-result-object v0

    invoke-virtual {v3, v0}, LF6/q;->s([LF6/a;)J

    :cond_10
    :goto_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/camera/a;->r0:J

    sget-object v0, Lx6/b;->e:Lx6/b;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v4, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v4}, Lu2/Q;->E(I)I

    move-result v2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    invoke-virtual {v4}, Lu2/Q;->C()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lx6/b;->c()Z

    move-result v7

    if-nez v7, :cond_11

    const/4 v4, 0x0

    :goto_e
    const-wide/16 v7, 0x0

    goto :goto_f

    :cond_11
    invoke-virtual {v0}, Lx6/b;->a()V

    invoke-static {v2, v4}, Lx6/b;->b(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lx6/b;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lx6/b;->c:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[Monkey] onModeSwitched: key="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lx6/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :goto_f
    iput-wide v7, v1, Lcom/android/camera/a;->q0:J

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v2, LF1/X;

    invoke-direct {v2, v1, v4}, LF1/X;-><init>(Lcom/android/camera/a;Z)V

    invoke-static {v0, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_12
    :goto_10
    sget-wide v7, LK7/l;->h:J

    const-wide/16 v19, 0x0

    cmp-long v0, v7, v19

    if-eqz v0, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onFrameAvailable: trackCameraSwitchCost: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v9, LK7/l;->h:J

    invoke-static {v7, v8, v9, v10, v0}, LF1/T;->b(JJLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v13, v1, Lcom/android/camera/a;->r0:J

    sub-long v22, v9, v13

    sget-wide v9, LK7/l;->h:J

    sub-long v24, v7, v9

    sget v26, LK7/l;->i:I

    sget v27, LK7/l;->j:I

    const-wide/16 v19, 0x0

    sput-wide v19, LK7/l;->h:J

    sput v4, LK7/l;->i:I

    sput v4, LK7/l;->j:I

    new-instance v21, LK7/h;

    invoke-direct/range {v21 .. v27}, LK7/h;-><init>(JJII)V

    invoke-static/range {v21 .. v21}, LK7/l;->b(Lev/a;)V

    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lmq/s;->g(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_11

    :catch_6
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "FluencyTrackProxy.onSwitchLensStart error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/camera/a;->r0:J

    sget-object v0, Lx6/b;->e:Lx6/b;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v4, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v4}, Lu2/Q;->E(I)I

    move-result v2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    invoke-virtual {v4}, Lu2/Q;->C()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lx6/b;->c()Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_12

    :cond_13
    invoke-virtual {v0}, Lx6/b;->a()V

    invoke-static {v2, v4}, Lx6/b;->b(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lx6/b;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lx6/b;->c:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[Monkey] onCameraSwitched: key="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lx6/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_12
    sget-object v0, LF6/a;->L:LF6/a;

    filled-new-array {v0}, [LF6/a;

    move-result-object v2

    invoke-virtual {v3, v2}, LF6/q;->s([LF6/a;)J

    move-result-wide v6

    cmp-long v2, v6, v17

    if-lez v2, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraOptScheduler:Lio/reactivex/v;

    new-instance v4, LJ2/d;

    const/16 v10, 0x3e8

    const v11, 0x36d68cc1

    invoke-direct/range {v4 .. v11}, LJ2/d;-><init>(Ljava/lang/String;JJII)V

    invoke-static {v0, v4}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_14
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v2, LF1/X;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, LF1/X;-><init>(Lcom/android/camera/a;Z)V

    invoke-static {v0, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/a;->Xq(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0
.end method

.method public final aa()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/a;->H0:Lcom/android/camera/ui/CardImageView;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    iput-wide v1, p0, Lcom/android/camera/a;->W0:J

    return-void

    :cond_0
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string v1, "dismiss_blur_cover"

    invoke-virtual {v0, v1}, LF6/q;->q(Ljava/lang/String;)V

    invoke-static {}, Lvr/Z;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ActivityBase"

    const-string v1, "dismissBlurCover."

    invoke-static {v0, v1}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->gr()V

    return-void

    :cond_1
    new-instance v0, LCs/k0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LCs/k0;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, LF1/N;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LF1/N;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void

    :cond_2
    iput-wide v1, p0, Lcom/android/camera/a;->W0:J

    return-void
.end method

.method public final ar()V
    .locals 3

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v0

    iget-object v0, v0, Ls4/e;->a:Ls4/d;

    iget-boolean v0, v0, Ls4/d;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v0

    new-instance v1, LF1/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LF1/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ls4/e;->d(Ls4/f$b;)V

    return-void

    :cond_0
    invoke-static {p0}, LF1/k4;->a(Landroid/content/Context;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const-class v0, Lu2/P;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu2/P;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu2/P;->G(Z)V

    :cond_1
    return-void
.end method

.method public br()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/a;->Y0:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/a;->Z0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final ce(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, LX1/c;->T:LPu/n;

    invoke-virtual {p0}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/h;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x78

    invoke-static {p0, p1, v1, v0, v2}, LF1/C4;->f(Landroid/content/Context;Ljava/lang/String;ZII)LPu/A;

    :cond_0
    return-void
.end method

.method public final cl(ZLandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/a;->m0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/a;->m0:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/a;->m0:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final cr(LCu/F;)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LD8/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, LD8/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, LD8/m;->s(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final dh()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object p0

    invoke-virtual {p0, v0, v0}, LF1/B4;->e(ZZ)V

    return-void
.end method

.method public dr()V
    .locals 0

    return-void
.end method

.method public abstract er()V
.end method

.method public final f8(LF1/w4;ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, LF1/B4;->d(LF1/w4;ZZZ)V

    return-void
.end method

.method public fr()V
    .locals 0

    return-void
.end method

.method public final g9()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/a;->b0:Z

    return p0
.end method

.method public final gc(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPureSurfaceView"
        type = 0x0
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LEc/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, LEc/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final getDisplayRotation()I
    .locals 0

    invoke-static {p0}, LK2/e;->f(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public final getModeUI()Ly3/s;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->n:Ly3/s;

    return-object p0
.end method

.method public final getSurfaceTexture()LEu/a;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz p0, :cond_0

    iget-object p0, p0, LD8/m;->p:Lru/h;

    iget-object p0, p0, Lru/h;->v:LEu/a;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final gr()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/a;->H0:Lcom/android/camera/ui/CardImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/android/camera/a;->H0:Lcom/android/camera/ui/CardImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    const-string v2, "dismiss_blur_cover"

    invoke-virtual {v1, v2}, LF6/q;->g(Ljava/lang/String;)J

    iget-wide v1, v0, Lcom/android/camera/a;->W0:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/android/camera/a;->W0:J

    sub-long/2addr v1, v5

    const-wide/16 v5, 0xbb8

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    sget-object v1, LG1/b;->d:Ljava/lang/String;

    sget-object v5, LG1/b$b;->a:LG1/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v0}, Lcom/android/camera/a;->Ck()I

    move-result v8

    const/4 v7, -0x1

    const/4 v6, 0x3

    invoke-virtual/range {v5 .. v10}, LG1/b;->a(IIIJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0}, Lcom/android/camera/a;->Ck()I

    move-result v14

    const/4 v15, -0x1

    const/16 v16, 0x0

    const v11, 0x36d63d13

    invoke-static/range {v11 .. v16}, Lki/c;->b(IJIILjava/util/HashMap;)V

    :cond_0
    iput-wide v3, v0, Lcom/android/camera/a;->W0:J

    return-void
.end method

.method public final h0()LZ5/l;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->m:LY2/f;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, LY2/f;->f:LZ5/a;

    invoke-interface {p0}, LZ5/h;->h0()LZ5/l;

    move-result-object p0

    return-object p0
.end method

.method public final h5()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->m:LY2/f;

    if-eqz p0, :cond_0

    iget-object p0, p0, LY2/f;->h:LY2/d;

    iget-boolean p0, p0, LY2/d;->a:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hr()Z
    .locals 1

    invoke-static {}, LK2/e;->B()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v0

    iget-object v0, v0, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v0}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LQa/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/a;->m0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/a;->k0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/a;->Qq()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    invoke-virtual {p0}, Loh/b;->n()LOh/d;

    move-result-object p0

    iget-object p0, p0, LOh/d;->b:LOh/c;

    sget-object v0, LOh/c;->b:LOh/c;

    if-eq p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final i8(I)V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-boolean v0, p0, Lcom/android/camera/a;->Y0:Z

    iget-boolean v1, p0, Lcom/android/camera/a;->a0:Z

    const-string v2, "handleCameraError: recovering = "

    const-string v3, ", paused = "

    invoke-static {v2, v3, v0, v1}, LF1/P;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ActivityBase"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/camera/a;->Y0:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/a;->a0:Z

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-eq v0, p1, :cond_2

    iget-wide v0, p0, Lcom/android/camera/a;->s0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/a;->s0:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    :cond_0
    sget v0, LK7/l;->j:I

    add-int/2addr v0, v1

    sput v0, LK7/l;->j:I

    sget v0, LA3/m;->b:I

    add-int/2addr v0, v1

    sput v0, LA3/m;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/a;->s0:J

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/a;->Z0:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/camera/a;->Y0:Z

    iget-object p0, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    const/4 p1, 0x7

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public final ir(ILF6/a;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, LF6/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, LF1/D;

    invoke-direct {v1, p0, p1, p2, p3}, LF1/D;-><init>(Lcom/android/camera/a;ILF6/a;Ljava/lang/String;)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_0
    return-void
.end method

.method public final isActivityPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/a;->a0:Z

    return p0
.end method

.method public final isPurePreview()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/W;->isPurePreview()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRecording()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    invoke-virtual {p0}, Loh/b;->m()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/M;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/M;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public jr()V
    .locals 8

    const/4 v0, 0x0

    sput-boolean v0, Lkq/b;->a:Z

    sput v0, Lkq/b;->b:I

    sput v0, Lkq/b;->c:I

    iget-object v1, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LD8/m;->U()V

    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ActivityBase"

    const-string v3, "registerAvailabilityCallback"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iput-object v1, p0, Lcom/android/camera/a;->p1:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/camera/a;->q1:Lcom/android/camera/a$b;

    iget-object v3, p0, Lcom/android/camera/a;->S0:Lcom/android/camera/a$c;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    :cond_1
    sget-object v1, Lcom/android/camera/guide/a;->i:Lcom/android/camera/guide/a$b;

    invoke-virtual {v1}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-nez p0, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-static {p0}, LW5/c;->b(Landroid/app/Activity;)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-static {p0}, LW5/c;->b(Landroid/app/Activity;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    :goto_0
    sget-object v2, LZ2/b;->b:LZ2/b$a;

    invoke-virtual {v2}, LZ2/b$a;->a()LZ2/b;

    move-result-object v2

    invoke-virtual {v2}, LZ2/b;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_7

    :cond_4
    if-eqz v1, :cond_11

    invoke-static {}, Lph/b;->a()Ljava/util/Stack;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-eqz v3, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4, p0}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/camera/a;

    if-eqz v3, :cond_9

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/a;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_d

    instance-of v2, v1, Lcom/android/camera/Camera;

    if-eqz v2, :cond_c

    move-object v2, v1

    check-cast v2, Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->Nr()V

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "TAG"

    const-string/jumbo v6, "setCloseFromCamera: true"

    invoke-static {v5, v6, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, v2, Lcom/android/camera/Camera;->r2:Z

    :cond_c
    invoke-virtual {v1}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_4

    :cond_d
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v2, v4}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v4}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_e

    iget v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1}, Landroid/app/Activity;->getTaskId()I

    move-result v7

    if-ne v5, v7, :cond_f

    goto :goto_6

    :cond_f
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_e

    invoke-virtual {v4, v3}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V

    goto :goto_5

    :cond_10
    :goto_7
    return-void

    :cond_11
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-static {v1, p0}, Lcom/android/camera/guide/a;->c(II)V

    return-void
.end method

.method public final k8()I
    .locals 0

    iget p0, p0, Lcom/android/camera/a;->d0:I

    return p0
.end method

.method public final l0()LF1/Y2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz p0, :cond_0

    iget-object p0, p0, LD8/m;->j:LF1/Y2;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final lk()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    invoke-virtual {p0}, Loh/b;->n()LOh/d;

    move-result-object p0

    iget-object p0, p0, LOh/d;->a:LOh/c;

    sget-object v0, LOh/c;->k:LOh/c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public lr()V
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/a;->r0:J

    sub-long v7, v1, v3

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    invoke-virtual {v1}, Loh/b;->n()LOh/d;

    move-result-object v1

    iget-object v1, v1, LOh/d;->a:LOh/c;

    iget v1, v1, LOh/c;->a:I

    new-instance v2, LO7/a;

    invoke-direct {v2, v1, v7, v8}, LO7/a;-><init>(IJ)V

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    const-string/jumbo v3, "sCameraWorkScheduler"

    invoke-static {v1, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LAs/l;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v4}, LAs/l;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v3}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-virtual {p0}, Lcom/android/camera/a;->Di()Z

    move-result v1

    sget v6, LK7/l;->i:I

    sget v9, LK7/l;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, LK7/l;->k:J

    sub-long v12, v2, v4

    sget v14, LK7/l;->l:I

    const-wide/16 v4, 0x0

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    move-wide v10, v1

    goto :goto_1

    :cond_0
    sget-wide v10, LK7/l;->m:J

    cmp-long v1, v10, v4

    if-eqz v1, :cond_1

    sub-long v1, v2, v10

    goto :goto_0

    :cond_1
    move-wide v10, v4

    :goto_1
    const/4 v1, 0x0

    sput v1, LK7/l;->i:I

    sput v1, LK7/l;->j:I

    sput v1, LK7/l;->l:I

    sput-wide v4, LK7/l;->m:J

    move-wide v2, v4

    new-instance v5, LK7/g;

    invoke-direct/range {v5 .. v14}, LK7/g;-><init>(IJIJJI)V

    invoke-static {v5}, LK7/l;->b(Lev/a;)V

    sget-object v4, Lx6/b;->e:Lx6/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lx6/b;->c()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    const-string v5, "persist.camera.monkey.timetrack"

    invoke-static {v5, v1}, Lur/g;->e(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "MonkeyTimeTracker"

    const/4 v8, 0x0

    if-ne v5, v6, :cond_3

    invoke-virtual {v4}, Lx6/b;->a()V

    iput-object v8, v4, Lx6/b;->b:Ljava/lang/String;

    iput-wide v2, v4, Lx6/b;->c:J

    const-string v2, "[Monkey] stopTracking: monkey running, paused"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lx6/b;->a()V

    iget-object v5, v4, Lx6/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/util/LinkedHashMap;

    iget-object v9, v4, Lx6/b;->a:Ljava/util/LinkedHashMap;

    invoke-direct {v5, v9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iget-object v9, v4, Lx6/b;->d:Ljava/lang/String;

    sget-object v10, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v11, LEc/b;

    invoke-direct {v11, v4, v5, v9}, LEc/b;-><init>(Lx6/b;Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    invoke-static {v10, v11}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    iget-object v5, v4, Lx6/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    iput-object v8, v4, Lx6/b;->b:Ljava/lang/String;

    iput-wide v2, v4, Lx6/b;->c:J

    sput-object v8, Lx6/b;->f:Ljava/lang/Boolean;

    iput-object v8, v4, Lx6/b;->d:Ljava/lang/String;

    :goto_2
    const-string v2, "[Monkey] stopTracking: monkey ended, dumped"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/a;->Di()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/a;->pf()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v2

    invoke-virtual {v2}, Loh/b;->n()LOh/d;

    move-result-object v2

    iget-object v2, v2, LOh/d;->a:LOh/c;

    sget-object v3, LOh/c;->j:LOh/c;

    if-ne v2, v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v2

    invoke-virtual {v2}, Loh/b;->n()LOh/d;

    move-result-object v2

    iget-object v2, v2, LOh/d;->a:LOh/c;

    sget-object v3, LOh/c;->e:LOh/c;

    if-ne v2, v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/a;->Sq()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v2

    iget-object v2, v2, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v2}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, LQa/i;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ActivityBase"

    const-string/jumbo v3, "stopActivity: setShowWhenLocked:true"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/android/camera/a;->setShowWhenLocked(Z)V

    :cond_8
    iget-object v1, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "onPause start"

    const-string v5, "RenderEngineV2"

    invoke-static {v5, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, LD8/m;->j:LF1/Y2;

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    iget-object v3, v3, LF1/q4;->y:Lru/a;

    goto :goto_5

    :cond_9
    move-object v3, v4

    :goto_5
    if-eqz v3, :cond_a

    invoke-interface {v3}, Lru/a;->onSurfaceViewPause()V

    :cond_a
    iget-object v3, v1, LD8/m;->p:Lru/h;

    invoke-virtual {v3, v4}, Lru/h;->M(Ljava/util/function/Function;)V

    iget-object v3, v1, LD8/m;->p:Lru/h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, LC4/L;

    const/16 v7, 0xf

    invoke-direct {v6, v3, v7}, LC4/L;-><init>(Ljava/lang/Object;I)V

    const-string v7, "releaseScreenShotSurface"

    invoke-virtual {v3, v6, v7}, Lru/h;->u(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-object v3, v1, LD8/m;->s:Lcom/xiaomi/renderengine/gl/GlHandlerThread;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/xiaomi/renderengine/gl/GlHandlerThread;->e()V

    iput-object v4, v1, LD8/m;->s:Lcom/xiaomi/renderengine/gl/GlHandlerThread;

    :cond_b
    invoke-virtual {v1}, LD8/m;->L()Lru/j;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LD8/h;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, LD8/h;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v1, "onPause end"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget-object v1, p0, Lcom/android/camera/a;->p1:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/android/camera/a;->q1:Lcom/android/camera/a$b;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_d
    return-void
.end method

.method public final nk(I)Z
    .locals 2

    new-instance v0, Lt6/g;

    invoke-virtual {p0}, Lcom/android/camera/a;->Ck()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lt6/g;-><init>(II)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->o:Lcom/android/camera/module/W;

    new-instance p1, Lt6/k;

    const/16 v1, 0xe0

    invoke-direct {p1, v1, p0}, Lt6/k;-><init>(ILcom/android/camera/module/W;)V

    invoke-static {p1}, Lio/reactivex/w;->b(Ljava/lang/Object;)Lio/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance p1, Lio/reactivex/internal/operators/single/k;

    invoke-direct {p1, p0, v0}, Lio/reactivex/internal/operators/single/k;-><init>(Lio/reactivex/w;Lio/reactivex/functions/e;)V

    new-instance p0, LF1/E;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LF1/E;-><init>(I)V

    new-instance v0, LF1/F;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0, v0}, Lio/reactivex/w;->subscribe(Lio/reactivex/functions/d;Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateLayout: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "ActivityBase"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public final o7(Lia/g;Lj3/b;)V
    .locals 11

    iget-object p0, p0, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz p0, :cond_8

    iget-object v0, p0, LF1/p4;->f:Lzm/c;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p2, Lj3/b;->a:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const-string p0, "StreamingController"

    const-string p1, "onSurfaceTextureUpdated: only ext_texture is supported!"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, p0, LF1/p4;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, LF1/p4;->f:Lzm/c;

    if-eqz v0, :cond_7

    iget-object v0, p0, LF1/p4;->n:Lzm/c$b;

    check-cast p2, Lj3/e;

    invoke-virtual {v0, p2}, Lzm/c$b;->b(Lj3/e;)V

    iget-object p2, p0, LF1/p4;->n:Lzm/c$b;

    iget v0, p0, LF1/p4;->p:I

    iput v0, p2, Lzm/c$b;->k:I

    iget-boolean v0, p0, LF1/p4;->d:Z

    xor-int/lit8 v3, v0, 0x1

    iput-boolean v3, p2, Lzm/c$b;->m:Z

    const/high16 v3, -0x41000000    # -0.5f

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v0, :cond_4

    iget p1, p0, LF1/p4;->o:I

    if-eqz p1, :cond_2

    iget-boolean p1, p0, LF1/p4;->m:Z

    if-eqz p1, :cond_2

    iget-object p1, p2, Lj3/e;->c:[F

    invoke-static {p1, v2, v5, v5, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object p1, p0, LF1/p4;->n:Lzm/c$b;

    iget-object v5, p1, Lj3/e;->c:[F

    iget p1, p0, LF1/p4;->o:I

    int-to-float v7, p1

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object p1, p0, LF1/p4;->n:Lzm/c$b;

    iget-object p1, p1, Lj3/e;->c:[F

    invoke-static {p1, v2, v3, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_2
    :goto_0
    iget-boolean p1, p0, LF1/p4;->l:Z

    if-eqz p1, :cond_3

    invoke-static {}, LK2/e;->u()Z

    iget-object p1, p0, LF1/p4;->f:Lzm/c;

    iget-object p2, p0, LF1/p4;->n:Lzm/c$b;

    iget-object p2, p2, Lj3/e;->d:Lia/f;

    iget v0, p2, Lia/b;->d:I

    iget p2, p2, Lia/b;->c:I

    invoke-virtual {p1, v0, p2}, Lzm/c;->j(II)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, LF1/p4;->f:Lzm/c;

    iget-object p2, p0, LF1/p4;->n:Lzm/c$b;

    iget-object p2, p2, Lj3/e;->d:Lia/f;

    iget v0, p2, Lia/b;->c:I

    iget p2, p2, Lia/b;->d:I

    invoke-virtual {p1, v0, p2}, Lzm/c;->j(II)V

    goto :goto_2

    :cond_4
    iget p2, p0, LF1/p4;->o:I

    if-eqz p2, :cond_6

    invoke-interface {p1}, Lia/g;->getWidth()I

    move-result p2

    invoke-interface {p1}, Lia/g;->getHeight()I

    move-result p1

    if-le p2, p1, :cond_6

    iget-boolean p1, p0, LF1/p4;->m:Z

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, LF1/p4;->n:Lzm/c$b;

    iget-object p1, p1, Lj3/e;->c:[F

    invoke-static {p1, v2, v5, v5, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object p1, p0, LF1/p4;->n:Lzm/c$b;

    iget-object v5, p1, Lj3/e;->c:[F

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object p1, p0, LF1/p4;->n:Lzm/c$b;

    iget-object p1, p1, Lj3/e;->c:[F

    invoke-static {p1, v2, v3, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_2

    :cond_6
    :goto_1
    invoke-static {}, LK2/e;->u()Z

    :goto_2
    iget-object p1, p0, LF1/p4;->n:Lzm/c$b;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lzm/c$b;->z:Z

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/camera/effect/EffectController;->c()Lvu/c$a;

    move-result-object p2

    iput-object p2, p1, Lzm/c$b;->D:Lvu/c$a;

    iget-object v2, p0, LF1/p4;->f:Lzm/c;

    iget-object v3, p0, LF1/p4;->n:Lzm/c$b;

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lzm/c;->d(Lzm/c$b;JJ)V

    :cond_7
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_4
    return-void
.end method

.method public final oa(Lm7/a;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/a;->d1:La7/a;

    invoke-virtual {p0, p1}, La7/a;->j(Lm7/e;)V

    return-void
.end method

.method public final of()LF1/w4;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object p0

    iget-object p0, p0, LF1/B4;->a:LF1/w4;

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/l;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Lq()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/f;

    invoke-direct {v1, p0, p1, p2, p3}, LF1/f;-><init>(Lcom/android/camera/a;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportMultiWindow"
        type = 0x0
    .end annotation

    invoke-static {p0}, LK2/b;->K(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/camera/a;->D0:LF1/b4;

    if-eqz v0, :cond_0

    invoke-static {p0}, LK2/e;->f(Landroid/app/Activity;)I

    move-result v1

    iput v1, v0, LF1/p4;->o:I

    :cond_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->m:LY2/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->m:LY2/f;

    invoke-virtual {v0, p1}, LY2/g;->c(Landroid/content/res/Configuration;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/camera/a;->b1:LY2/n;

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {v2, p1}, LY2/g;->c(Landroid/content/res/Configuration;)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/a;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, LK2/b;->V()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, LK2/b;->Z()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/a;->Lq()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LCs/v;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, LCs/v;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    iget-object p1, p0, Lcom/android/camera/a;->H0:Lcom/android/camera/ui/CardImageView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "ActivityBase"

    const-string/jumbo v1, "updateCoverViewLayout"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, LAc/e;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, LAc/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate + "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ActivityBase"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/android/camera/Camera;->C2:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, LQa/b;->j0:Z

    if-eqz v1, :cond_0

    sget-boolean v1, LQa/b;->k0:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v3, LF1/e;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v3}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/a;->X:LF1/b;

    invoke-static {v1}, LSh/c;->d(LSh/i;)V

    invoke-static {}, Lvr/Z;->a()V

    new-instance v1, Landroidx/lifecycle/d0;

    invoke-direct {v1, p0}, Landroidx/lifecycle/d0;-><init>(Landroidx/lifecycle/g0;)V

    const-class v3, Loh/b;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/d0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object v1

    check-cast v1, Loh/b;

    iput-object v1, p0, Lcom/android/camera/a;->k1:Loh/b;

    invoke-static {}, Lcom/android/camera/a;->kr()J

    move-result-wide v5

    const/16 v1, 0x320

    invoke-static {v1, v2}, LPh/h;->a(II)V

    new-instance v1, LY2/o;

    invoke-direct {v1, p0}, LY2/o;-><init>(Lcom/android/camera/a;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    const/4 v7, -0x1

    if-gt v7, v3, :cond_1

    const/16 v7, 0xe

    if-ge v3, v7, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    iput v3, v1, LY2/o;->g:I

    const-string v7, "create() with default policy "

    invoke-static {v3, v7}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "ScreenOrientationManageExt"

    invoke-static {v8, v3, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/a;->c0:LY2/o;

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    iget-boolean v3, v1, LF6/q;->n:Z

    if-eqz v3, :cond_2

    sget-object v3, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    new-instance v7, LE3/r;

    invoke-direct {v7, v1, v0}, LE3/r;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3, v7}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_1

    :cond_2
    const-string v0, "PerformanceManager"

    const-string v1, "not allow traceStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvr/m;->B(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lvr/m;->A(Lcom/android/camera/a;)V

    invoke-virtual {p0, p1}, Lcom/android/camera/a;->Gq(Landroid/os/Bundle;)V

    const-string v0, "createLoadLayout"

    :try_start_0
    const-string v1, "Startup."

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Iq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, LK2/e;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, LQa/a;->e(Landroid/view/Window;)V

    :cond_3
    invoke-super {p0, p1}, LX1/c;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/camera/a;->Hq(Landroid/os/Bundle;)V

    sget-object p1, Lk7/K;->t:Lzr/b;

    new-instance v0, LF1/p;

    invoke-direct {v0, p0}, LF1/p;-><init>(Lcom/android/camera/a;)V

    invoke-virtual {p1, p0, v0}, Lzr/b;->e(Landroidx/lifecycle/x;Landroidx/lifecycle/F;)V

    sget-object p1, Lcom/android/camera/provider/CameraAgentProvider;->b:Lzr/b;

    new-instance v0, LF1/q;

    invoke-direct {v0, p0}, LF1/q;-><init>(Lcom/android/camera/a;)V

    invoke-virtual {p1, p0, v0}, Lzr/b;->e(Landroidx/lifecycle/x;Landroidx/lifecycle/F;)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v0, LF1/r;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v0, LS8/h;

    invoke-direct {v0, p0, v2}, LS8/h;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-static {v5, v6}, Lcom/android/camera/a;->mr(J)V

    const-string p0, "onCreate -"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final onDestroy()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroy +"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ActivityBase"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/a;->c0:LY2/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LY2/p;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, LY2/p;-><init>(LY2/o;LTu/e;)V

    invoke-static {v2}, Lyw/f;->c(Lev/p;)Ljava/lang/Object;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v0

    iget-object v0, v0, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v0}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LK2/e;->B()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v2, "open_camera_fail_key"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, LWh/a;->k(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v6, v4

    const-string v4, "DataItemGlobal"

    if-lez v2, :cond_0

    const-string v0, "KEY_OPEN_CAMERA_FAIL"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lu2/Q;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Lu2/Q;->J()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "clearRetainSettingIfNeed"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    invoke-virtual {v0}, Lu2/Q;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5, v2}, LWh/a;->q(JLjava/lang/String;)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/a;->Jq()V

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/a;->W:LF1/i4;

    invoke-virtual {v0}, LF1/i4;->f()V

    iget-object p0, p0, Lcom/android/camera/a;->X:LF1/b;

    invoke-static {p0}, LSh/c;->e(LSh/i;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p0

    iget-object p0, p0, LF6/q;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const-string p0, "onDestroy -"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayoutChange(LZ5/h;LZ5/h;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->R0()Z

    invoke-virtual {p0}, Lcom/android/camera/a;->Lq()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, LF1/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Le/i;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Dq()V

    invoke-virtual {p0}, Lcom/android/camera/a;->Eq()V

    return-void
.end method

.method public final onPause()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPause +"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ActivityBase"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Zq()V

    invoke-super {p0}, Landroidx/fragment/app/l;->onPause()V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LQ6/d0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LC4/p;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, LC4/p;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lmq/s;->e(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "FluencyTrackProxy.onExitCamera error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/a;->f1:Ljava/lang/String;

    invoke-virtual {v0, p0}, LF6/q;->q(Ljava/lang/String;)V

    const-string p0, "onPause -"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onPreviewPixelsRead([BIILtu/c;Z)V
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onPreviewPixelsRead"

    const-string v3, "ActivityBase"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->o:Lcom/android/camera/module/W;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v2, Ltu/c;->e:Ltu/c;

    if-eq p4, v2, :cond_8

    sget-object v2, Ltu/c;->f:Ltu/c;

    if-ne p4, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object v2, Ltu/c;->g:Ltu/c;

    if-ne p4, v2, :cond_7

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p4

    if-eqz p4, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p5

    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "Share"

    const-string v2, "Agent"

    invoke-static {p4, p5, v1, p5, v2}, LO/f;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Frame"

    invoke-static {p4, p5, v1}, LS1/h;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p5}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_3
    invoke-virtual {p5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p5

    if-nez p5, :cond_4

    array-length v1, p5

    const/4 v2, 0x5

    if-le v1, v2, :cond_5

    :cond_4
    array-length v1, p5

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v4, p5, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    new-instance p5, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CacheFrame_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p5, p4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {p5}, Ljava/io/File;->delete()Z

    :cond_6
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    mul-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p1, v0, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x50

    invoke-static {p4, p1, p2}, Lvr/j;->l(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, p5}, Lcom/android/camera/provider/CameraFileProvider;->e(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    const-string p3, "com.aios.osbot"

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p1, p4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "SendBroadcastNotifyExternal"

    const-string/jumbo p4, "sendLocalBroadcast shareUri"

    invoke-static {p3, p4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.android.camera.action.agent_callback"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p3, "share_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, LD0/a;->a(Landroid/content/Context;)LD0/a;

    move-result-object p0

    invoke-virtual {p0, p2}, LD0/a;->c(Landroid/content/Intent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "saveAndShareCacheFrame: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    invoke-interface {v1}, Lcom/android/camera/module/W;->getSurfaceTextureMgr()Lj6/h;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lj6/h;->onPreviewPixelsRead([BIILtu/c;Z)V

    return-void

    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/android/camera/a;->C0:LD8/m;

    iget-object p0, p0, LD8/m;->e:Lru/i;

    if-eqz p0, :cond_b

    invoke-interface {v1}, Lcom/android/camera/module/W;->getAppStateMgr()Lj6/b;

    move-result-object p4

    invoke-static {}, LK2/e;->y()Z

    move-result p5

    if-eqz p5, :cond_9

    check-cast p4, Lj6/a;

    iget p4, p4, Lj6/a;->b:I

    goto :goto_3

    :cond_9
    check-cast p4, Lj6/a;

    iget p4, p4, Lj6/a;->c:I

    :goto_3
    sget-object p5, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p5

    invoke-interface {v1}, Lcom/android/camera/module/W;->isWCGOn()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p5, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {p5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p5

    :cond_a
    invoke-interface/range {p0 .. p5}, Lru/i;->c([BIIILandroid/graphics/ColorSpace;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final onRenderRequested()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/a;->Lq()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LDn/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LDn/D;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onRestart()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRestart +"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ActivityBase"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-virtual {p0}, Lcom/android/camera/a;->dr()V

    invoke-virtual {p0}, Lcom/android/camera/a;->ar()V

    const-string p0, "onRestart -"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onResume()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume +"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ActivityBase"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/a;->e1:Ljava/lang/String;

    invoke-virtual {v0, v2}, LF6/q;->g(Ljava/lang/String;)J

    invoke-static {}, Lcom/android/camera/a;->kr()J

    move-result-wide v4

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v0

    invoke-static {p0}, Lh6/b;->h(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v6

    invoke-virtual {v6, p0}, Lvr/m;->a(Landroidx/fragment/app/l;)Z

    move-result v6

    invoke-static {}, Lcom/android/camera/data/data/w;->k0()Z

    move-result v7

    iput-boolean v2, v0, Lh6/b;->b:Z

    iput-boolean v6, v0, Lh6/b;->c:Z

    iput-boolean v7, v0, Lh6/b;->d:Z

    invoke-virtual {v0}, Lh6/b;->i()V

    invoke-virtual {p0}, Lcom/android/camera/a;->er()V

    invoke-super {p0}, Landroidx/fragment/app/l;->onResume()V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LQ6/d0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LCs/i;

    const/4 v6, 0x1

    invoke-direct {v2, p0, v6}, LCs/i;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/mivi/mtk/OfflineSessionManager;->getInstance()Lcom/xiaomi/camera/mivi/mtk/OfflineSessionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/mivi/mtk/OfflineSessionManager;->setExitCamera(Z)V

    invoke-virtual {p0}, Lcom/android/camera/a;->fr()V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, LQg/e;->a:Ljava/lang/Integer;

    sget-object v0, Lk7/d;->b:Ljava/lang/Long;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "context"

    invoke-static {v0, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "auto_time"

    invoke-static {v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_time_zone"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "CamAccInfo"

    invoke-static {v6, v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/a;->j1:Z

    sget-object p0, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v0, LF1/d;

    invoke-direct {v0, v1}, LF1/d;-><init>(I)V

    invoke-static {p0, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    const-string p0, "6.6.000510.0"

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "onResume - version: "

    const-string v2, " buildType: release"

    invoke-static {v0, p0, v2}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "onResume - camera ppp: "

    invoke-static {v3, p0, v0, v2}, LF1/Q;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, LQg/e;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " gallery ppp: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LQg/e;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lcom/android/camera/a;->mr(J)V

    return-void
.end method

.method public final onSearchRequested()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final onStart()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart +"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ActivityBase"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/a;->kr()J

    move-result-wide v4

    invoke-super {p0}, Landroidx/fragment/app/l;->onStart()V

    invoke-virtual {p0}, Lcom/android/camera/a;->jr()V

    invoke-static {v4, v5}, Lcom/android/camera/a;->mr(J)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/a;->e1:Ljava/lang/String;

    invoke-virtual {v0, v2}, LF6/q;->q(Ljava/lang/String;)V

    invoke-static {}, Lx6/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lx6/b;->e:Lx6/b;

    iget-object v2, v0, Lx6/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v4, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v4}, Lu2/Q;->E(I)I

    move-result v2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    invoke-virtual {v4}, Lu2/Q;->C()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lx6/b;->d(II)V

    :cond_1
    :goto_0
    const-string v0, "onStart -"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v0

    const-class v2, Lg4/r;

    invoke-virtual {v0, v2}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v0

    check-cast v0, Lg4/r;

    iget-boolean v0, v0, Lg4/r;->b:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    instance-of v0, v0, Lcom/android/camera/features/mode/polaroid/PolaroidModule;

    if-eqz v0, :cond_2

    const-string v0, "onStart ActivityInstantPhoto continue"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const-class v2, Lcom/android/camera/features/mode/polaroid/ui/ActivityInstantPhoto;

    invoke-static {p0, v2, v0}, Lvr/d;->c(Landroid/app/Activity;Ljava/lang/Class;Lvr/a;)V

    :cond_2
    invoke-static {}, LQg/e;->d()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lk7/w;->a:Ljava/io/File;

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "PhotoDeferredWriter"

    const-string v1, "cancelMigrateToCameraDirectoryTask"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getContext(...)"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LW0/P;->a(Landroid/content/Context;)LW0/P;

    move-result-object p0

    const-string v0, "getInstance(context)"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LW0/P;->b:Landroidx/work/a;

    iget-object v0, v0, Landroidx/work/a;->q:LBi/a;

    const-string v1, "CancelWorkByName_"

    const-string v2, "MIGRATE_TO_CAMERA_DIRECTORY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LW0/P;->d:Lg1/b;

    invoke-interface {v2}, Lg1/b;->c()Lf1/n;

    move-result-object v2

    const-string/jumbo v3, "workManagerImpl.workTask\u2026ecutor.serialTaskExecutor"

    invoke-static {v2, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lf1/c;

    invoke-direct {v3, p0}, Lf1/c;-><init>(LW0/P;)V

    invoke-static {v0, v1, v2, v3}, LV0/x;->a(LBi/a;Ljava/lang/String;Lg1/a;Lev/a;)LV0/u;

    :cond_3
    return-void
.end method

.method public final onStop()V
    .locals 5

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/a;->f1:Ljava/lang/String;

    invoke-virtual {v0, v1}, LF6/q;->g(Ljava/lang/String;)J

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/camera/a;->c0:LY2/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LY2/u;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LY2/u;-><init>(LY2/o;LTu/e;)V

    invoke-static {v1}, Lyw/f;->c(Lev/p;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStop +"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ActivityBase"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/a;->lr()V

    const-string p0, "onStop -"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQg/e;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lk7/w;->a:Ljava/io/File;

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "PhotoDeferredWriter"

    const-string/jumbo v1, "scheduleMigrateToCameraDirectoryWithWorkManager"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getContext(...)"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LW0/P;->a(Landroid/content/Context;)LW0/P;

    move-result-object p0

    const-string v0, "getInstance(context)"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LV0/s$a;

    const-class v1, Lcom/android/camera/storage/MigrateWorker;

    invoke-direct {v0, v1}, LV0/C$a;-><init>(Ljava/lang/Class;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v2, "timeUnit"

    invoke-static {v1, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LV0/C$a;->c:Le1/y;

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iput-wide v3, v2, Le1/y;->g:J

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, v0, LV0/C$a;->c:Le1/y;

    iget-wide v3, v3, Le1/y;->g:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {v0}, LV0/C$a;->c()LV0/C$a;

    move-result-object v0

    check-cast v0, LV0/s$a;

    invoke-virtual {v0}, LV0/C$a;->a()LV0/C;

    move-result-object v0

    check-cast v0, LV0/s;

    sget-object v1, LV0/h;->b:LV0/h;

    invoke-static {v0}, LBw/i;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, LW0/A;

    const-string v3, "MIGRATE_TO_CAMERA_DIRECTORY"

    invoke-direct {v2, p0, v3, v1, v0}, LW0/A;-><init>(LW0/P;Ljava/lang/String;LV0/h;Ljava/util/List;)V

    invoke-virtual {v2}, LW0/A;->C()LV0/t;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given initial delay is too large and will cause an overflow!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public final onSurfaceTextureUpdated(Lj3/b;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/a;->Lq()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/I;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LF1/I;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final or(I)V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/data/w;->t0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/a;->v0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0xe6

    const v2, 0x7f060160

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 v1, 0x100

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060b87

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_2
    sget-object p1, Lf2/e;->c:Lf2/e;

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Lf2/e;->a(IZ)I

    move-result p1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/camera/a;->v0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/a;->rr()V

    return-void
.end method

.method public p0(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz v0, :cond_5

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/F0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    sget v1, LK2/e;->j:I

    sget v2, LK2/e;->k:I

    if-le v1, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv2/F0;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/a;->C0:LD8/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, p1, p2}, Landroid/util/Size;-><init>(II)V

    iget-object v3, v1, LD8/m;->p:Lru/h;

    invoke-virtual {v3, v2, v0}, Lru/h;->I(Landroid/util/Size;Z)V

    iget-object v2, v1, LD8/m;->j:LF1/Y2;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, LF1/q4;->f(II)V

    :cond_1
    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/Size;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, v1, LD8/m;->i:Landroid/util/Size;

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/util/Size;

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, v1, LD8/m;->i:Landroid/util/Size;

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/a;->u2()V

    invoke-virtual {p0}, Lcom/android/camera/a;->Uq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/a;->l1:F

    invoke-static {p0, p1, p2, v0}, LG8/n;->u(Landroid/content/Context;IIF)F

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iget-object p2, p0, Lcom/android/camera/a;->C0:LD8/m;

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p2, p2, LD8/m;->p:Lru/h;

    if-eqz p2, :cond_4

    iput p1, p2, Lru/h;->b0:I

    :cond_4
    iget-object p1, p0, Lcom/android/camera/a;->C0:LD8/m;

    invoke-virtual {p0}, Lcom/android/camera/a;->Lq()Ljava/util/Optional;

    move-result-object p0

    new-instance p2, LF1/g;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, LF1/g;-><init>(I)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iget-object p1, p1, LD8/m;->p:Lru/h;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lru/h;->v:LEu/a;

    iput-boolean p0, p1, LEu/a;->k:Z

    :cond_5
    return-void
.end method

.method public final p5()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object p0

    invoke-virtual {p0, v0}, LF1/B4;->b(Z)V

    return-void
.end method

.method public final pf()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    invoke-virtual {p0}, Loh/b;->n()LOh/d;

    move-result-object p0

    iget-object p0, p0, LOh/d;->a:LOh/c;

    sget-object v0, LOh/c;->c:LOh/c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final pr(Landroid/graphics/Rect;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/a;->x0:Lq8/f;

    invoke-static {v0, p1}, LG8/h;->o(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/a;->w0:Lq8/f;

    invoke-static {v0, p1}, LG8/h;->o(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/a;->H0:Lcom/android/camera/ui/CardImageView;

    invoke-static {v0, p1}, LG8/h;->o(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LD8/m;->Y(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    iget-boolean v1, p0, Lcom/android/camera/a;->h1:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/a;->aa()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/W;->isPurePreview()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/a;->h1:Z

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v2

    :cond_2
    iput v2, p0, Lcom/android/camera/a;->i1:I

    return-void
.end method

.method public final qg()LY2/o;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/a;->c0:LY2/o;

    return-object p0
.end method

.method public final qr(II)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/a;->w0:Lq8/f;

    if-eqz v0, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    const-string/jumbo v1, "updateSurfaceFixedSize: "

    const-string v2, " x "

    const-string v3, " -> "

    invoke-static {p1, p2, v1, v2, v3}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "ActivityBase"

    invoke-static {v1, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LK2/e;->u()Z

    iget-object p0, p0, Lcom/android/camera/a;->w0:Lq8/f;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public final rr()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/a;->A0:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget-object v1, Lf2/a;->f:Lf2/a;

    iget-boolean v1, v1, Lf2/a;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/a;->A0:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/a;->A0:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final setRequestedOrientation(I)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    sget v0, Ls4/a;->a:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Ls4/a;->a(Landroid/app/Activity;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setRequestedOrientation "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ActivityBase"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final setShowWhenLocked(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, LQa/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/a;->Wq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    return-void
.end method

.method public sr(I)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public final u2()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/a;->Uq()Z

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LD8/g;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, LD8/g;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v1}, LD8/m;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final u5()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->m:LY2/f;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget p0, p0, LY2/f;->i:I

    return p0
.end method

.method public final v()J
    .locals 2

    iget-object p0, p0, Lcom/android/camera/a;->C0:LD8/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LD8/m;->v()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final v8(I)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/a;->a0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    check-cast p0, Lcom/android/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    return-void
.end method

.method public final vl(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    new-instance v0, LF1/L;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LF1/L;-><init>(Landroidx/lifecycle/x;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final wl()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/a;->O0:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final x4([F)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/a;->B0:Lcom/android/camera/ois/ui/OISCircleView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_5

    array-length v1, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/a;->B0:Lcom/android/camera/ois/ui/OISCircleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/a;->B0:Lcom/android/camera/ois/ui/OISCircleView;

    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, 0x2

    aget p1, p1, v1

    const/high16 v1, 0x44c00000    # 1536.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x45000000    # 2048.0f

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/android/camera/ois/ui/OISCircleView;->h:F

    add-float/2addr v0, v1

    iget v2, p0, Lcom/android/camera/ois/ui/OISCircleView;->j:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_5

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-ltz v3, :cond_5

    iget v3, p0, Lcom/android/camera/ois/ui/OISCircleView;->i:F

    add-float/2addr v3, p1

    iget p1, p0, Lcom/android/camera/ois/ui/OISCircleView;->k:I

    int-to-float p1, p1

    cmpl-float p1, v3, p1

    if-gtz p1, :cond_5

    cmpg-float p1, v3, v2

    if-gez p1, :cond_2

    goto :goto_2

    :cond_2
    iput v0, p0, Lcom/android/camera/ois/ui/OISCircleView;->f:F

    iput v3, p0, Lcom/android/camera/ois/ui/OISCircleView;->g:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41c80000    # 25.0f

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_4

    iget p1, p0, Lcom/android/camera/ois/ui/OISCircleView;->i:F

    iget v1, p0, Lcom/android/camera/ois/ui/OISCircleView;->g:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/camera/ois/ui/OISCircleView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ois/ui/OISCircleView;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lpr/b;->common_color_f5a92d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ois/ui/OISCircleView;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ois/ui/OISCircleView;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ois/ui/OISCircleView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ois/ui/OISCircleView;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lpr/b;->popup_title_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ois/ui/OISCircleView;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ois/ui/OISCircleView;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_2
    return-void
.end method

.method public declared-synchronized xd(I)V
    .locals 3

    const-string/jumbo v0, "updateSurfaceState: "

    monitor-enter p0

    :try_start_0
    const-string v1, "ActivityBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/android/camera/a;->o1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zq(Landroid/net/Uri;)V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportGalleryMode"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, LF1/B4;->a:LF1/w4;

    if-eqz v1, :cond_4

    iget-object v1, v1, LF1/w4;->a:Landroid/net/Uri;

    sget-object v2, Lc6/O;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isSameUri uri1 : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", uri2: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v4, Lc6/O;->a:Ljava/lang/String;

    invoke-static {v4, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v2

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "ActivityBase"

    const-string v2, "deleteItem, update Thumbnail"

    invoke-static {v1, v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, LF1/B4;->a()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->m:LY2/f;

    iget-object p0, p0, LY2/f;->f:LZ5/a;

    invoke-interface {p0}, LZ5/h;->h0()LZ5/l;

    move-result-object p0

    invoke-static {p0}, Ln8/b;->a(LZ5/l;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "watch_shot_delete"

    const-string v0, "click"

    invoke-static {p0, p1, v0}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
