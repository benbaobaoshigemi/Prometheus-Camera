.class public Lz4/C;
.super Lcom/android/camera/fragment/h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements LQ6/d;
.implements LQ6/s;
.implements Lq8/w0;
.implements Lcom/android/camera/ui/CameraSnapView$b;
.implements Lcom/android/camera/ui/DragLayout$c;
.implements LQ6/b1;
.implements LQ6/i1;
.implements LQ6/n;
.implements Lcom/xiaomi/camera/agent/AgentToolMessageCallback;


# static fields
.field public static final r0:I

.field public static final s0:I

.field public static final t0:I

.field public static final u0:I

.field public static final v0:I

.field public static final w0:I

.field public static final x0:I

.field public static final y0:[I


# instance fields
.field public I:Landroid/animation/ValueAnimator;

.field public J:Z

.field public K:Z

.field public L:I

.field public M:I

.field public N:Z

.field public O:Landroid/widget/ProgressBar;

.field public P:Landroid/widget/ImageView;

.field public Q:J

.field public R:Lmiuix/appcompat/app/h;

.field public S:Landroid/widget/ImageView;

.field public T:Landroid/widget/ImageView;

.field public final U:Ljava/util/ArrayList;

.field public V:Ljy/f;

.field public final W:Ljava/util/ArrayList;

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a:Z

.field public final a0:[I

.field public b:Lz4/g;

.field public b0:I

.field public c:Landroid/view/ViewGroup;

.field public c0:F

.field public d:Landroid/widget/FrameLayout;

.field public d0:F

.field public e:Lcom/android/camera/ui/CameraSnapView;

.field public e0:Z

.field public f:Lz4/I;

.field public final f0:Lz4/C$h;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field public g:Lcom/airbnb/lottie/LottieAnimationView;

.field public g0:Z

.field public h:Landroid/widget/FrameLayout;

.field public h0:LF8/c;

.field public i:Landroidx/cardview/widget/CardView;

.field public i0:Lz4/I;

.field public j:Landroid/widget/ImageView;

.field public j0:Lz4/I;

.field public k:Landroid/widget/ImageView;

.field public k0:Lz4/I;

.field public l:Landroid/widget/ProgressBar;

.field public l0:Lz4/I;

.field public m:Z

.field public m0:Lz4/o;

.field public n:Z

.field public final n0:Lz4/C$i;

.field public o:Z

.field public o0:Landroid/animation/ValueAnimator;

.field public p:Z

.field public p0:Landroid/animation/ValueAnimator;

.field public q:Z

.field public q0:Lcom/android/camera/data/observeable/VMFeature;

.field public r:Z

.field public volatile s:Z

.field public t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lz4/M;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lz4/C;->r0:I

    const-class v0, Lz4/L;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lz4/C;->s0:I

    const-class v0, Lz4/H;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lz4/C;->t0:I

    const-class v0, Lz4/p;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lz4/C;->u0:I

    const-class v1, Lz4/N;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sput v1, Lz4/C;->v0:I

    const-class v2, Lz4/K;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sput v2, Lz4/C;->w0:I

    const-class v2, Lz4/q;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sput v2, Lz4/C;->x0:I

    filled-new-array {v2, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lz4/C;->y0:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/h;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz4/C;->m:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lz4/C;->U:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lz4/C;->W:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lz4/C;->X:Z

    iput-boolean v0, p0, Lz4/C;->Z:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lz4/C;->a0:[I

    new-instance v0, Lz4/C$h;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lz4/C$h;-><init>(Lz4/C;Landroid/os/Looper;)V

    iput-object v0, p0, Lz4/C;->f0:Lz4/C$h;

    new-instance v0, Lz4/C$i;

    invoke-direct {v0, p0}, Lz4/C$i;-><init>(Lz4/C;)V

    iput-object v0, p0, Lz4/C;->n0:Lz4/C$i;

    return-void
.end method

.method public static synthetic Mq(Lz4/C;LQ6/q;)V
    .locals 3

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onSnapCancelOut"

    invoke-static {p0, v2, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, LQ6/q;->onShutterButtonCancel(Z)V

    return-void
.end method

.method public static synthetic Nq(Lz4/C;LQ6/q;)V
    .locals 3

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onSnapLongPressCancelOut"

    invoke-static {p0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, LQ6/q;->onShutterButtonLongClickCancel(Z)V

    return-void
.end method

.method public static Oq(Lz4/C;Lcom/android/camera/data/observeable/b$d;)V
    .locals 3

    iget-object p1, p1, Lcom/android/camera/data/observeable/b$d;->a:Ljava/io/Serializable;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getScope(I)I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lz4/C;->m2(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz4/C;->m2(I)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public static synthetic Pq(Lz4/C;JLQ6/r;)V
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onTrackSnapTaken "

    const-string v1, "ms"

    invoke-static {p1, p2, v0, v1}, LF1/r2;->b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p3}, LQ6/r;->Tn()V

    return-void
.end method

.method public static Qq(Lz4/C;LQ6/q;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onSnapPrepare"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->O6()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lz4/C;->rr(Z)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1, v2, v1}, LQ6/q;->onShutterButtonFocus(ZI)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1, v2, v1}, LQ6/q;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method public static synthetic Rq(Lz4/C;)V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "showReverseConfirmDialog onClick negative"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Sq(Lz4/C;LQ6/q;)V
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onSnapForceUp"

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    invoke-interface {p1, p0}, LQ6/q;->onShutterButtonCancel(Z)V

    return-void
.end method

.method public static synthetic Tq(Lz4/C;JLQ6/r;)V
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onTrackSnapMissTaken "

    const-string v1, "ms"

    invoke-static {p1, p2, v0, v1}, LF1/r2;->b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p3}, LQ6/r;->j7()V

    return-void
.end method

.method public static synthetic Uq(Lz4/C;ZLQ6/H0;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p2, p0}, LQ6/H0;->y1(Z)V

    return-void
.end method

.method public static Vq(Lz4/C;Ljava/util/HashMap;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz4/C;->f:Lz4/I;

    iget v4, v1, Lz4/I;->e:I

    iget v7, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object p0, v6, Lz4/C;->f:Lz4/I;

    iget-object p0, p0, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-static {p0}, LU1/a;->e(Landroid/view/View;)V

    sget p0, Lz4/C;->t0:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz4/b;

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, LJe/d;->c:Z

    if-eqz p1, :cond_1

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    iget-boolean p1, p0, Lz4/b;->a:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz4/b;->a:Z

    iget-object v0, v6, Lz4/C;->f:Lz4/I;

    iget-object v0, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v6, Lz4/C;->b:Lz4/g;

    invoke-virtual {v2}, Lz4/g;->a()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lz4/b;->c(Landroid/content/Context;IZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lz4/b;->b(Landroid/view/View;ZLandroid/widget/RelativeLayout$LayoutParams;)V

    iget-object p0, v6, Lz4/C;->j0:Lz4/I;

    iget-object p0, p0, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static Wq(Lz4/C;)V
    .locals 2

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->n()V

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showReverseConfirmDialog onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->o:Lcom/android/camera/module/W;

    instance-of v1, v1, Lcom/xiaomi/microfilm/milive/mode/MiLiveModule;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->o:Lcom/android/camera/module/W;

    instance-of v1, v1, Lcom/xiaomi/milive/mode/MiLiveMasterModule;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->o:Lcom/android/camera/module/W;

    check-cast p0, Lcom/android/camera/module/S;

    invoke-interface {p0}, Lcom/android/camera/module/S;->doReverse()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "showReverseConfirmDialog skip!!!"

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static Xq(Lz4/C;Landroid/view/MotionEvent;I)V
    .locals 3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-object v2, p0, Lz4/C;->a0:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    if-nez p2, :cond_0

    iget v1, p0, Lz4/C;->c0:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    :goto_0
    if-nez p2, :cond_1

    iget p1, p0, Lz4/C;->d0:F

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    :goto_1
    const/4 p2, 0x0

    aget p2, v2, p2

    int-to-float p2, p2

    sub-float/2addr v1, p2

    const/4 p2, 0x1

    aget p2, v2, p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-virtual {v0, v1, p1}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public static Yq(Lz4/C;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0bba

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lz4/C;->f:Lz4/I;

    iget-object p0, p0, Lz4/I;->a:Landroid/view/ViewGroup;

    const p1, 0x7f0b0840

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0xc6

    if-ne p1, p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/w;->w()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static Zq(Lz4/C;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0bba

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lz4/C;->f:Lz4/I;

    iget-object p0, p0, Lz4/I;->a:Landroid/view/ViewGroup;

    const p1, 0x7f0b0840

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0xd3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ar(Lz4/C;Landroid/view/View;FF)V
    .locals 6

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    new-array v3, v1, [F

    aput v2, v3, v0

    aput p2, v3, p0

    const-string/jumbo v2, "scaleX"

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v3

    new-array v4, v1, [F

    aput v3, v4, v0

    aput p2, v4, p0

    const-string/jumbo v3, "scaleY"

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    new-array v5, v1, [F

    aput v4, v5, v0

    aput p3, v5, p0

    const-string p3, "alpha"

    invoke-static {p1, p3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v0

    aput-object v3, v4, p0

    aput-object p1, v4, v1

    invoke-virtual {p3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p0, 0x64

    invoke-virtual {p3, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/view/animation/OvershootInterpolator;

    const p1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic br(Lz4/C;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    return p0
.end method

.method public static synthetic cr(Lz4/C;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    return p0
.end method

.method public static synthetic dr(Lz4/C;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    return p0
.end method

.method public static synthetic er(Lz4/C;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    return p0
.end method

.method public static synthetic fr(Lz4/C;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    return p0
.end method

.method public static synthetic gr(Lz4/C;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    return p0
.end method

.method public static synthetic hr(Lz4/C;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    return p0
.end method

.method public static synthetic ir(Lz4/C;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    return p0
.end method

.method public static synthetic jr(Lz4/C;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    return p0
.end method

.method public static synthetic kr(Lz4/C;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static mr()Z
    .locals 1

    invoke-static {}, LK2/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->S()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, LK2/j;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static nr(Landroid/content/Context;Landroidx/cardview/widget/CardView;Z)V
    .locals 2

    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->g()Lp9/c;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lp9/c;->h(Landroid/content/Context;Landroidx/cardview/widget/CardView;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070239

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0712e1

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    invoke-static {}, LK2/b;->a0()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f07149d

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static pr()V
    .locals 4

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LE4/l;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LE4/l;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/p;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, LEs/p;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LP2/b;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, LP2/b;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/r;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, LEs/r;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LE4/o;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, LE4/o;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/K3;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, LF1/K3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final Ar()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/F0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/F0;

    iget-object v2, v2, Lv2/F0;->b:Lv2/G0;

    iget v2, v2, Lv2/G0;->e:I

    invoke-static {v2, v0}, LPq/b;->K(IZ)Z

    move-result v2

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/camera/fragment/m;->d(Landroid/content/Context;Z)I

    move-result v2

    :goto_0
    iget-object v3, p0, Lz4/C;->T:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    invoke-static {}, Lf2/b;->d()Z

    move-result v3

    iget-object v4, p0, Lz4/C;->T:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v5, Lf2/e;->c:Lf2/e;

    const v6, 0x7f060b96

    invoke-virtual {v5, v6, v3}, Lf2/e;->a(IZ)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v3, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-static {v2, v0, v3}, Lcom/android/camera/fragment/m;->h(IZLandroid/view/View;)V

    iget-object v3, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v0, v3}, Lcom/android/camera/fragment/m;->h(IZLandroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lz4/C;->Gr()Z

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_6

    iget-object v3, p0, Lz4/C;->j:Landroid/widget/ImageView;

    iget-object v5, p0, Lz4/C;->k:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    sget-object v4, Lo9/a;->a:Lo9/b;

    invoke-interface {v4}, Lo9/b;->g()Lp9/c;

    move-result-object v4

    const v5, 0x7f0808d1

    invoke-interface {v4, v5}, Lp9/c;->g(I)I

    move-result v4

    invoke-static {}, LK2/b;->a0()Z

    move-result v5

    if-eqz v5, :cond_4

    const v4, 0x7f080700

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static {}, Lf2/b;->d()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lf2/e;->c:Lf2/e;

    const v6, 0x7f060b97

    invoke-virtual {v5, v6, v1}, Lf2/e;->a(IZ)I

    move-result v5

    invoke-static {v5, v1}, Lf2/a;->e(IZ)Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080444

    invoke-static {v5, v6}, LX/a$a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v7, v0

    aput-object v4, v7, v1

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lz4/C;->f:Lz4/I;

    iget v3, v3, Lz4/I;->d:I

    const/16 v5, 0xc1

    if-eq v3, v5, :cond_7

    const/16 v5, 0xc0

    if-ne v3, v5, :cond_8

    :cond_7
    iget-object v3, p0, Lz4/C;->k:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_1
    iget-object v3, p0, Lz4/C;->f:Lz4/I;

    iget-object v4, p0, Lz4/C;->i0:Lz4/I;

    iget-object v5, p0, Lz4/C;->j0:Lz4/I;

    iget-object v6, p0, Lz4/C;->k0:Lz4/I;

    iget-object v7, p0, Lz4/C;->l0:Lz4/I;

    filled-new-array {v3, v4, v5, v6, v7}, [Lz4/I;

    move-result-object v3

    move v4, v0

    :goto_2
    const/4 v5, 0x5

    if-ge v4, v5, :cond_a

    aget-object v5, v3, v4

    if-eqz v5, :cond_9

    iget-boolean v6, v5, Lz4/I;->h:Z

    if-eqz v6, :cond_9

    iget-object v5, v5, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_9

    aget-object v5, v3, v4

    iget-object v5, v5, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-static {v2, v0, v5}, Lcom/android/camera/fragment/m;->h(IZLandroid/view/View;)V

    :cond_9
    add-int/2addr v4, v1

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0144

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, Lz4/C;->f:Lz4/I;

    iget v0, p0, Lz4/I;->d:I

    const/16 v1, 0xca

    if-ne v0, v1, :cond_b

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/Y0;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/m;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LF1/m;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lz4/I;->g(Z)V

    :cond_b
    return-void
.end method

.method public final Bi()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lz4/C;->K:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->O6()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {}, LU6/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "onSnapDragging: down capturing"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {}, LU6/c;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onSnapDragging: down doing action"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, LU6/c;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onSnapDragging: doing action"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "onSnapDragging"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6/q;

    invoke-interface {v0}, LQ6/q;->onShutterDragging()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz4/C;->K:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public final Br()V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    const/16 v7, 0xc0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz4/C;->b:Lz4/g;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lz4/g;->c:Ljava/util/HashMap;

    sget v1, Lz4/C;->u0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/p;

    move-object v1, v0

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    if-nez v1, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    iget v1, v0, Lz4/I;->d:I

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_2

    invoke-static {}, LK2/b;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    iget v3, v0, Lz4/I;->d:I

    const/4 v4, 0x1

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_2
    iget-object v0, p0, Lz4/C;->j0:Lz4/I;

    if-eqz v0, :cond_3

    iget v3, v0, Lz4/I;->e:I

    const/4 v4, 0x1

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_3
    iget-object v0, p0, Lz4/C;->k0:Lz4/I;

    if-eqz v0, :cond_4

    iget v3, v0, Lz4/I;->e:I

    const/4 v4, 0x1

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xbe

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lz4/C;->k0:Lz4/I;

    iget v1, v0, Lz4/I;->e:I

    const/16 v2, 0xc7

    if-ne v1, v2, :cond_4

    iget-object v0, v0, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f080a9c

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    :cond_4
    iget-object v0, p0, Lz4/C;->l0:Lz4/I;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lz4/C;->b:Lz4/g;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lz4/g;->c:Ljava/util/HashMap;

    sget v1, Lz4/C;->x0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/q;

    move-object v1, v0

    iget-object v0, p0, Lz4/C;->l0:Lz4/I;

    if-nez v1, :cond_5

    :goto_1
    move v3, v7

    goto :goto_2

    :cond_5
    iget v7, v0, Lz4/I;->d:I

    goto :goto_1

    :goto_2
    const/4 v4, 0x1

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_6
    return-void
.end method

.method public final C()Z
    .locals 1

    invoke-virtual {p0}, Lz4/C;->h5()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz4/C;->ub()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Cr(Z)V
    .locals 1

    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->g()Lp9/c;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {v0, p1, p0}, Lp9/c;->c(Ljava/lang/Boolean;Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method public final D3(Z)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lz4/C;->f:Lz4/I;

    iget v0, p0, Lz4/I;->d:I

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lz4/I;->g(Z)V

    :cond_0
    return-void
.end method

.method public final D6(I)V
    .locals 5

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    const/16 v1, 0xa2

    if-nez v0, :cond_3

    invoke-static {}, LK2/b;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070238

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p1}, LO0/A;->z(I)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/m;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/data/data/j;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object v1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, p1}, LG8/h;->k(Landroid/content/Context;IZ)I

    move-result p1

    add-int/2addr p1, v3

    int-to-float p1, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, v2}, LG8/h;->k(Landroid/content/Context;IZ)I

    move-result p0

    add-int/2addr p0, v3

    int-to-float p0, p0

    invoke-virtual {v1, p1, p0}, Lcom/android/camera/ui/CameraSnapView;->r(FF)V

    return-void

    :cond_3
    :goto_2
    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lz4/C;->f:Lz4/I;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lz4/I;->a:Landroid/view/ViewGroup;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_4

    :cond_5
    :goto_3
    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lz4/f;->c(Landroid/content/Context;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    :goto_4
    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    int-to-float v3, p1

    add-float/2addr v1, v3

    int-to-float v0, v0

    div-float/2addr v0, v2

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/CameraSnapView;->r(FF)V

    return-void
.end method

.method public final Dr(Z)V
    .locals 12
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lz4/C;->O:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_b

    if-eqz p1, :cond_0

    iget-object v3, p0, Lz4/C;->o0:Landroid/animation/ValueAnimator;

    invoke-static {v3}, Lwr/e;->c(Landroid/animation/Animator;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_0
    if-nez p1, :cond_1

    iget-object v3, p0, Lz4/C;->p0:Landroid/animation/ValueAnimator;

    invoke-static {v3}, Lwr/e;->c(Landroid/animation/Animator;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Lz4/C;->or()Lx8/d;

    move-result-object v3

    iget-object v4, p0, Lz4/C;->h0:LF8/c;

    if-eqz v4, :cond_2

    check-cast v4, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    iget-boolean v4, v4, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->n:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Camera;

    iget-object v4, v4, Lcom/android/camera/Camera;->A1:Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lz4/C;->O:Landroid/widget/ProgressBar;

    :goto_0
    const-wide/16 v5, 0x12c

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz p1, :cond_7

    iget-object p1, p0, Lz4/C;->p0:Landroid/animation/ValueAnimator;

    new-array v9, v2, [Landroid/animation/Animator;

    aput-object p1, v9, v1

    invoke-static {v9}, Lwr/e;->a([Landroid/animation/Animator;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lf2/b;->d()Z

    move-result p1

    const/4 v8, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v9, 0x7f080f49

    invoke-virtual {p1, v9, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v9, 0x7f080f4b

    invoke-virtual {p1, v9, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    iget-object v8, p0, Lz4/C;->P:Landroid/widget/ImageView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v9, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v10, 0xe7

    const/high16 v11, 0x40000000    # 2.0f

    if-eq v9, v10, :cond_5

    iget-object v9, v3, Lx8/d;->e:Lx8/y;

    iget v10, v9, Lt8/c;->A:F

    iget v9, v9, Lt8/c;->g:F

    :goto_2
    mul-float/2addr v10, v9

    mul-float/2addr v10, v11

    float-to-int v9, v10

    goto :goto_3

    :cond_5
    iget-object v9, v3, Lx8/d;->e:Lx8/y;

    iget v10, v9, Lt8/c;->A:F

    iget v9, v9, Lt8/c;->m:F

    goto :goto_2

    :goto_3
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v4, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v3, Lx8/d;->e:Lx8/y;

    iget p1, p1, Lt8/c;->j:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    invoke-virtual {v3}, Lx8/d;->j()V

    :cond_6
    iget-object p1, v3, Lx8/d;->e:Lx8/y;

    iput-boolean v2, p1, Lx8/y;->h0:Z

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lz4/C;->o0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lz4/C;->o0:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lz4/C;->o0:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v0, v2, v1, v2, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lz4/C;->o0:Landroid/animation/ValueAnimator;

    new-instance v0, LQ5/l;

    const/4 v1, 0x3

    invoke-direct {v0, v4, v1}, LQ5/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lz4/C;->o0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_7
    iget-object p1, p0, Lz4/C;->o0:Landroid/animation/ValueAnimator;

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object p1, v7, v1

    invoke-static {v7}, Lwr/e;->a([Landroid/animation/Animator;)V

    iget-object p1, v3, Lx8/d;->e:Lx8/y;

    iget v1, p1, Lt8/c;->i:I

    if-nez v1, :cond_a

    iget v7, p1, Lx8/y;->c0:I

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0x100

    if-ne p1, v1, :cond_9

    goto :goto_5

    :cond_9
    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lz4/C;->p0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lz4/C;->p0:Landroid/animation/ValueAnimator;

    new-instance v0, LLy/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lz4/C;->p0:Landroid/animation/ValueAnimator;

    new-instance v0, Lg5/m;

    invoke-direct {v0, v4, v2}, Lg5/m;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lz4/C;->p0:Landroid/animation/ValueAnimator;

    new-instance v0, Lz4/C$a;

    invoke-direct {v0, p0, v3, v4}, Lz4/C$a;-><init>(Lz4/C;Lx8/d;Landroid/widget/ProgressBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lz4/C;->p0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_a
    :goto_4
    invoke-virtual {p1, v1}, Lt8/c;->i(I)V

    iget-object p0, v3, Lx8/d;->e:Lx8/y;

    invoke-virtual {p0}, Lx8/y;->h()V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/16 p0, 0x8

    invoke-virtual {v4, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final Er(Lz4/I;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140042

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f140ce1

    goto :goto_0

    :cond_0
    const v1, 0x7f140cdf

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final F5()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/a;

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->o:Lcom/android/camera/module/W;

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->O6()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-static {}, LU6/c;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "onSnapLongPress: down capturing"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/android/camera/module/VideoModule;

    if-nez v2, :cond_3

    instance-of v1, v1, Lcom/xiaomi/mimoji/common/module/MimojiVideoModule;

    if-eqz v1, :cond_4

    :cond_3
    invoke-static {}, LU6/c;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "onSnapLongPress: recording"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {}, LU6/c;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onSnapLongPress: down doing action"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    invoke-static {}, LU6/c;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onSnapLongPress: doing action"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "onSnapLongPress"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ6/q;

    invoke-interface {p0}, LQ6/q;->onShutterButtonLongClick()Z

    :cond_7
    :goto_1
    return-void
.end method

.method public final F7()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "onSnapLongPressCancelIn"

    invoke-static {v1, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6/q;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LQ6/q;->onShutterButtonLongClickCancel(Z)V

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_4

    const/16 v1, 0xab

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb8

    if-eq v0, v1, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lz4/C;->p0()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lz4/C;->p0()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lz4/C;->p0()V

    return-void

    :cond_5
    iput-boolean v2, p0, Lz4/C;->K:Z

    return-void
.end method

.method public final Fr(Z)V
    .locals 1

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lz4/C;->t:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    return-void

    :cond_1
    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    :cond_2
    return-void
.end method

.method public final Gr()Z
    .locals 1

    iget-boolean v0, p0, Lz4/C;->s:Z

    if-nez v0, :cond_2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->X()Z

    move-result v0

    if-nez v0, :cond_2

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xce

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lv2/B;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/B;

    iget-boolean p0, p0, Lv2/B;->a:Z

    if-nez p0, :cond_1

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->I0()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final H4()Z
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "onClick: v9_recording_snap"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lz4/C;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lz4/C;->n:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_8

    instance-of v2, v0, Lcom/android/camera/module/VideoModule;

    if-nez v2, :cond_1

    instance-of v3, v0, Lcom/android/camera/module/FunModule;

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/xiaomi/microfilm/milive/mode/MiLiveModule;

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/xiaomi/milive/mode/MiLiveMasterModule;

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/xiaomi/microfilm/dualcam/mode/DualVideoRecordModule;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lz4/C;->f:Lz4/I;

    iget-object p0, p0, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    :cond_2
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v1, Lv2/E0;

    invoke-virtual {p0, v1}, LWh/b;->t(Ljava/lang/Class;)V

    const/4 p0, 0x1

    if-eqz v2, :cond_3

    check-cast v0, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/VideoModule;->takeVideoSnapShoot(Z)Z

    return p0

    :cond_3
    instance-of v1, v0, Lcom/android/camera/module/FunModule;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Lcom/android/camera/module/FunModule;->takePreviewSnapShoot()V

    return p0

    :cond_4
    instance-of v1, v0, Lcom/xiaomi/microfilm/milive/mode/MiLiveModule;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/xiaomi/microfilm/milive/mode/MiLiveModule;

    invoke-virtual {v0}, Lcom/xiaomi/microfilm/milive/mode/MiLiveModule;->takePreviewSnapShoot()V

    return p0

    :cond_5
    instance-of v1, v0, Lcom/xiaomi/milive/mode/MiLiveMasterModule;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/xiaomi/milive/mode/MiLiveMasterModule;

    invoke-virtual {v0}, Lcom/xiaomi/milive/mode/MiLiveMasterModule;->takePreviewSnapShoot()V

    return p0

    :cond_6
    instance-of v1, v0, Lcom/xiaomi/microfilm/dualcam/mode/DualVideoRecordModule;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/xiaomi/microfilm/dualcam/mode/DualVideoRecordModule;

    invoke-virtual {v0}, Lcom/xiaomi/microfilm/dualcam/mode/DualVideoRecordModule;->takeVideoSnapShot()V

    :cond_7
    return p0

    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick: recording snap is not allowed!!!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_1
    return v1
.end method

.method public final Hr(Z)V
    .locals 3

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lj9/f0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lj9/f0;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final I7()Ljava/lang/Boolean;
    .locals 2

    invoke-static {}, LQ6/Z0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/g;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LF1/g;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public final Ir()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportSuspendShutter"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Q7()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/C;->h0:LF8/c;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/w;->y0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lz4/C;->h0:LF8/c;

    invoke-interface {p0}, LF8/c;->getIsBack()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Ja(ZZ)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportProVideo"
        type = 0x0
    .end annotation

    invoke-static {}, LU6/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v3, 0xa2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/m;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/data/data/j;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    invoke-static {}, LK2/b;->b0()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_5

    iget-boolean v0, p0, Lz4/C;->o:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/camera/fragment/h;->animateViews(IZLandroid/view/View;)V

    :cond_3
    iget-boolean p2, p0, Lz4/C;->p:Z

    if-eqz p2, :cond_9

    iget-object p0, p0, Lz4/C;->f:Lz4/I;

    iget-object p0, p0, Lz4/I;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_5
    iget-boolean v2, p0, Lz4/C;->o:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/camera/fragment/h;->animateViews(IZLandroid/view/View;)V

    :cond_6
    iget-boolean v2, p0, Lz4/C;->p:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lz4/C;->f:Lz4/I;

    iget-object v2, v2, Lz4/I;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v4, v3

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-eqz v0, :cond_9

    iget-object p1, p0, Lz4/C;->j0:Lz4/I;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/camera/fragment/h;->animateViews(IZLandroid/view/View;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final Jh(Lz4/a;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lf2/b;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f08018f

    goto :goto_0

    :cond_1
    const p1, 0x7f080191

    :goto_0
    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget-object v0, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    return-void

    :cond_2
    iget-object p1, p0, Lz4/C;->f:Lz4/I;

    iget-object p1, p1, Lz4/I;->a:Landroid/view/ViewGroup;

    const v0, 0x7f08015a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public final Jr(ZZ)V
    .locals 18

    move-object/from16 v5, p0

    move/from16 v7, p1

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eqz v7, :cond_1

    iget-object v0, v5, Lz4/C;->f0:Lz4/C$h;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v5, Lz4/C;->l:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_0

    iget-object v0, v5, Lz4/C;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, v5, Lz4/C;->f:Lz4/I;

    iget-object v0, v0, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    :cond_1
    iget-object v0, v5, Lz4/C;->f:Lz4/I;

    const/16 v1, 0x96

    iput v1, v0, Lz4/I;->j:I

    iget v0, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xd0

    const/16 v2, 0xcf

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v11, v8

    goto :goto_1

    :cond_3
    :goto_0
    move v11, v10

    :goto_1
    const/16 v1, 0xa1

    const/16 v3, 0xce

    const/16 v12, 0xa2

    const/16 v13, 0xc1

    if-eq v0, v1, :cond_13

    if-eq v0, v12, :cond_b

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_a

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_a

    const/16 v1, 0xac

    if-eq v0, v1, :cond_a

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_8

    const/16 v1, 0xbe

    if-eq v0, v1, :cond_7

    const/16 v1, 0xd6

    if-eq v0, v1, :cond_6

    const/16 v1, 0xdb

    if-eq v0, v1, :cond_5

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_5

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_c

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_4

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_c

    if-eq v0, v3, :cond_c

    if-eq v0, v2, :cond_c

    iput-boolean v8, v5, Lz4/C;->o:Z

    iput-boolean v8, v5, Lz4/C;->p:Z

    iput-boolean v8, v5, Lz4/C;->q:Z

    iput-boolean v8, v5, Lz4/C;->r:Z

    goto/16 :goto_7

    :cond_4
    iput-boolean v8, v5, Lz4/C;->o:Z

    iput-boolean v8, v5, Lz4/C;->p:Z

    iput-boolean v8, v5, Lz4/C;->q:Z

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v0

    const-class v1, LFs/A;

    invoke-virtual {v0, v1}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v0

    check-cast v0, LFs/A;

    invoke-virtual {v0}, LFs/A;->c()Z

    move-result v0

    iput-boolean v0, v5, Lz4/C;->r:Z

    goto/16 :goto_7

    :cond_5
    iput-boolean v8, v5, Lz4/C;->p:Z

    iput-boolean v10, v5, Lz4/C;->o:Z

    iput-boolean v10, v5, Lz4/C;->q:Z

    iput-boolean v8, v5, Lz4/C;->r:Z

    goto/16 :goto_7

    :cond_6
    iput-boolean v8, v5, Lz4/C;->q:Z

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->e8()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v5, Lz4/C;->p:Z

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->f8()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v5, Lz4/C;->o:Z

    iput-boolean v8, v5, Lz4/C;->r:Z

    goto/16 :goto_7

    :cond_7
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->W1()Z

    move-result v0

    iput-boolean v0, v5, Lz4/C;->p:Z

    iput-boolean v8, v5, Lz4/C;->o:Z

    iput-boolean v10, v5, Lz4/C;->q:Z

    iput-boolean v8, v5, Lz4/C;->r:Z

    goto/16 :goto_7

    :cond_8
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->W1()Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v10, v5, Lz4/C;->p:Z

    goto :goto_2

    :cond_9
    iput-boolean v8, v5, Lz4/C;->p:Z

    :goto_2
    iput-boolean v10, v5, Lz4/C;->o:Z

    iput-boolean v10, v5, Lz4/C;->q:Z

    iput-boolean v8, v5, Lz4/C;->r:Z

    goto/16 :goto_7

    :cond_a
    iput-boolean v8, v5, Lz4/C;->q:Z

    iput-boolean v8, v5, Lz4/C;->p:Z

    iput-boolean v8, v5, Lz4/C;->o:Z

    iput-boolean v8, v5, Lz4/C;->r:Z

    goto/16 :goto_7

    :cond_b
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    if-eqz v0, :cond_c

    iget v0, v0, Lz4/I;->d:I

    if-ne v0, v13, :cond_c

    if-nez v7, :cond_c

    iget-object v0, v5, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "[VideoSwitch] update animation time "

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v5, Lz4/C;->f:Lz4/I;

    const/16 v1, 0xf0

    iput v1, v0, Lz4/I;->j:I

    :cond_c
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->E()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->Q()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Lcom/android/camera/data/data/E;->X()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->e8()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v5, Lz4/C;->p:Z

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->e(I)Z

    move-result v0

    iput-boolean v0, v5, Lz4/C;->p:Z

    goto :goto_4

    :cond_e
    invoke-static {}, Lcom/android/camera/data/data/j;->E0()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/camera/data/data/j;->C0()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/camera/data/data/j;->D0()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/camera/data/data/m;->N()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v10

    goto :goto_3

    :cond_f
    move v0, v8

    :goto_3
    iput-boolean v0, v5, Lz4/C;->p:Z

    :cond_10
    :goto_4
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->Y()Z

    move-result v0

    if-eqz v0, :cond_11

    iput-boolean v8, v5, Lz4/C;->o:Z

    iput-boolean v8, v5, Lz4/C;->p:Z

    goto :goto_6

    :cond_11
    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/camera/data/data/w;->V()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v10

    goto :goto_5

    :cond_12
    move v0, v8

    :goto_5
    xor-int/2addr v0, v10

    iput-boolean v0, v5, Lz4/C;->o:Z

    iget-boolean v1, v5, Lz4/C;->p:Z

    and-int/2addr v0, v1

    iput-boolean v0, v5, Lz4/C;->p:Z

    :goto_6
    iput-boolean v8, v5, Lz4/C;->q:Z

    iput-boolean v8, v5, Lz4/C;->r:Z

    goto :goto_7

    :cond_13
    iput-boolean v8, v5, Lz4/C;->o:Z

    iput-boolean v8, v5, Lz4/C;->q:Z

    iput-boolean v8, v5, Lz4/C;->r:Z

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->W1()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, LJe/c;->E()V

    iput-boolean v10, v5, Lz4/C;->p:Z

    goto :goto_7

    :cond_14
    iput-boolean v8, v5, Lz4/C;->p:Z

    :goto_7
    invoke-virtual {v5}, Lcom/xiaomi/camera/base/ui/fragments/d;->getCameraMainViewModel()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    instance-of v1, v0, Lcom/android/camera/module/VideoModule;

    if-eqz v1, :cond_15

    check-cast v0, Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v5, Lz4/C;->p:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->onVideoCaptureEnableChanged(Z)V

    :cond_15
    const-class v14, Lv2/F0;

    const/16 v15, 0xc0

    const/4 v0, 0x0

    if-eqz v7, :cond_2a

    iget-object v1, v5, Lz4/C;->f:Lz4/I;

    move v2, v0

    iget-object v0, v5, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_16

    iget v3, v0, Lz4/I;->e:I

    if-eq v3, v15, :cond_16

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    move v3, v2

    const/4 v2, 0x0

    move v4, v3

    const/16 v3, 0xc0

    move-object/from16 v16, v1

    const/4 v1, 0x0

    move/from16 v17, v4

    const/4 v4, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    goto :goto_8

    :cond_16
    move-object v9, v1

    :goto_8
    iget v0, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    if-ne v0, v12, :cond_17

    invoke-static {}, Lcom/android/camera/data/data/m;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->c(I)Z

    move-result v0

    if-eqz v0, :cond_17

    move v12, v10

    goto :goto_9

    :cond_17
    move v12, v8

    :goto_9
    iget-boolean v0, v5, Lz4/C;->p:Z

    if-eqz v0, :cond_1a

    iget-object v0, v9, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-boolean v0, v5, Lz4/C;->t:Z

    if-eqz v0, :cond_18

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x0

    const/16 v3, 0xc0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    goto :goto_a

    :cond_18
    move-object v0, v9

    xor-int/lit8 v2, v12, 0x1

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/16 v3, 0xc6

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v1, v5, Lz4/C;->f:Lz4/I;

    iget-boolean v1, v1, Lz4/I;->h:Z

    if-eqz v1, :cond_19

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    invoke-virtual {v1, v14}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/F0;

    iget-object v1, v1, Lv2/F0;->b:Lv2/G0;

    invoke-virtual {v1}, Lv2/G0;->b()Lv2/G0;

    move-result-object v1

    iget v1, v1, Lv2/G0;->e:I

    invoke-static {v1, v8}, LPq/b;->K(IZ)Z

    move-result v1

    iget-object v2, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    new-array v3, v10, [Landroid/view/View;

    aput-object v2, v3, v8

    invoke-static {v1, v3}, Lcom/android/camera/fragment/m;->f(Z[Landroid/view/View;)V

    :cond_19
    iget-object v1, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    iget-object v1, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    new-array v2, v10, [Landroid/view/View;

    aput-object v1, v2, v8

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v1, v2}, LS1/i;->j(F[Landroid/view/View;)V

    if-eqz v12, :cond_1b

    new-instance v1, LU1/a;

    iget-object v0, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, LU1/e;-><init>(Landroid/view/View;)V

    new-instance v0, Lio/reactivex/internal/operators/completable/b;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/completable/b;-><init>(Lio/reactivex/e;)V

    invoke-virtual {v0}, Lio/reactivex/b;->subscribe()Lio/reactivex/disposables/b;

    goto :goto_a

    :cond_1a
    move-object v0, v9

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x1

    const/16 v3, 0xc0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_1b
    :goto_a
    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v9

    if-eqz v12, :cond_24

    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    if-eqz v0, :cond_27

    iget-object v12, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x0

    const/16 v3, 0xc1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lz4/C;->f:Lz4/I;

    iget-boolean v0, v0, Lz4/I;->h:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-virtual {v0, v14}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    iget-object v0, v0, Lv2/F0;->b:Lv2/G0;

    invoke-virtual {v0}, Lv2/G0;->b()Lv2/G0;

    move-result-object v0

    iget v0, v0, Lv2/G0;->e:I

    invoke-static {v0, v8}, LPq/b;->K(IZ)Z

    move-result v0

    iget-object v1, v5, Lz4/C;->j0:Lz4/I;

    iget-object v1, v1, Lz4/I;->a:Landroid/view/ViewGroup;

    new-array v2, v10, [Landroid/view/View;

    aput-object v1, v2, v8

    invoke-static {v0, v2}, Lcom/android/camera/fragment/m;->f(Z[Landroid/view/View;)V

    :cond_1d
    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    iput-boolean v10, v0, Lz4/I;->f:Z

    iput v13, v0, Lz4/I;->e:I

    iput-boolean v10, v0, Lz4/I;->i:Z

    iget-object v0, v5, Lz4/C;->b:Lz4/g;

    iget-object v1, v0, Lz4/g;->c:Ljava/util/HashMap;

    if-eqz v9, :cond_1e

    iget-object v2, v5, Lz4/C;->f:Lz4/I;

    iput v13, v2, Lz4/I;->e:I

    :cond_1e
    invoke-virtual {v0}, Lz4/g;->a()I

    move-result v0

    sget v2, Lz4/C;->r0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz4/b;

    if-eqz v2, :cond_1f

    iput-boolean v10, v2, Lz4/b;->a:Z

    iget-object v3, v5, Lz4/C;->h:Landroid/widget/FrameLayout;

    xor-int/lit8 v4, v9, 0x1

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6, v0, v8}, Lz4/b;->c(Landroid/content/Context;IZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lz4/b;->b(Landroid/view/View;ZLandroid/widget/RelativeLayout$LayoutParams;)V

    :cond_1f
    sget v2, Lz4/C;->t0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/b;

    if-eqz v1, :cond_21

    iput-boolean v10, v1, Lz4/b;->a:Z

    iget-object v2, v5, Lz4/C;->f:Lz4/I;

    iget-object v2, v2, Lz4/I;->a:Landroid/view/ViewGroup;

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, LJe/d;->c:Z

    if-nez v3, :cond_20

    if-nez v9, :cond_20

    move v3, v10

    goto :goto_b

    :cond_20
    move v3, v8

    :goto_b
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v0, v8}, Lz4/b;->c(Landroid/content/Context;IZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lz4/b;->b(Landroid/view/View;ZLandroid/widget/RelativeLayout$LayoutParams;)V

    :cond_21
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, LJe/d;->c:Z

    if-nez v0, :cond_22

    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    xor-int/lit8 v1, v9, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v12, v1, v2}, Lz4/I;->c(Landroid/view/View;ZLz4/C$c;)V

    :cond_22
    if-eqz v9, :cond_23

    new-instance v0, LU1/a;

    invoke-direct {v0, v12}, LU1/e;-><init>(Landroid/view/View;)V

    new-instance v1, Lio/reactivex/internal/operators/completable/b;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/completable/b;-><init>(Lio/reactivex/e;)V

    invoke-virtual {v1}, Lio/reactivex/b;->subscribe()Lio/reactivex/disposables/b;

    :cond_23
    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    invoke-virtual {v5, v0}, Lz4/C;->Er(Lz4/I;)V

    goto :goto_c

    :cond_24
    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    if-eqz v0, :cond_25

    iput-boolean v8, v0, Lz4/I;->f:Z

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x0

    const/16 v3, 0xc0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    iput v15, v0, Lz4/I;->e:I

    :cond_25
    iget-object v0, v5, Lz4/C;->b:Lz4/g;

    iget-object v1, v0, Lz4/g;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Lz4/g;->a()I

    move-result v0

    sget v2, Lz4/C;->t0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz4/b;

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/android/camera/data/data/w;->w()I

    move-result v3

    invoke-static {v3}, LO0/A;->z(I)Z

    move-result v3

    iput-boolean v3, v2, Lz4/b;->a:Z

    iget-object v3, v5, Lz4/C;->f:Lz4/I;

    iget-object v3, v3, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, v0, v8}, Lz4/b;->c(Landroid/content/Context;IZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-static {v3, v8, v2}, Lz4/b;->b(Landroid/view/View;ZLandroid/widget/RelativeLayout$LayoutParams;)V

    :cond_26
    sget v2, Lz4/C;->r0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/b;

    if-eqz v1, :cond_27

    iget-boolean v2, v5, Lz4/C;->K:Z

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/android/camera/data/data/w;->w()I

    move-result v2

    invoke-static {v2}, LO0/A;->z(I)Z

    move-result v2

    iput-boolean v2, v1, Lz4/b;->a:Z

    iget-object v2, v5, Lz4/C;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v8}, Lz4/b;->c(Landroid/content/Context;IZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-static {v2, v8, v0}, Lz4/b;->b(Landroid/view/View;ZLandroid/widget/RelativeLayout$LayoutParams;)V

    :cond_27
    :goto_c
    iget-object v0, v5, Lz4/C;->l0:Lz4/I;

    if-eqz v0, :cond_28

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x0

    const/16 v3, 0xc0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_28
    iget-boolean v0, v5, Lz4/C;->o:Z

    if-eqz v0, :cond_35

    iget-object v0, v5, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_35

    invoke-virtual {v5, v8}, Lz4/C;->Cr(Z)V

    iget-object v0, v5, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-boolean v0, v5, Lz4/C;->t:Z

    if-eqz v0, :cond_29

    iget-object v0, v5, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12

    :cond_29
    iget-object v0, v5, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v5, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v1, Li0/E;->a:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz v9, :cond_35

    new-instance v0, LU1/a;

    iget-object v1, v5, Lz4/C;->h:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, LU1/e;-><init>(Landroid/view/View;)V

    new-instance v1, Lio/reactivex/internal/operators/completable/b;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/completable/b;-><init>(Lio/reactivex/e;)V

    invoke-virtual {v1}, Lio/reactivex/b;->subscribe()Lio/reactivex/disposables/b;

    goto/16 :goto_12

    :cond_2a
    iget-object v0, v5, Lz4/C;->b:Lz4/g;

    iget-object v9, v0, Lz4/g;->c:Ljava/util/HashMap;

    sget v0, Lz4/C;->u0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/p;

    iget-object v1, v5, Lz4/C;->i0:Lz4/I;

    if-eqz v1, :cond_2c

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, LK2/b;->W()Z

    move-result v1

    if-eqz v1, :cond_2c

    if-eqz v0, :cond_2c

    iget v0, v0, Lz4/p;->e:I

    if-ne v0, v3, :cond_2c

    goto :goto_d

    :cond_2b
    iget-object v0, v5, Lz4/C;->i0:Lz4/I;

    iget v0, v0, Lz4/I;->e:I

    if-eq v0, v15, :cond_2c

    :goto_d
    move v12, v10

    goto :goto_e

    :cond_2c
    move v12, v8

    :goto_e
    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    if-eqz v0, :cond_2d

    iget v0, v0, Lz4/I;->e:I

    if-ne v0, v13, :cond_2d

    move v13, v10

    goto :goto_f

    :cond_2d
    move v13, v8

    :goto_f
    if-eqz v13, :cond_30

    iget-object v0, v5, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "[VideoSwitch] processingFinish :: run animation"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    iput-boolean v10, v0, Lz4/I;->i:Z

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x1

    const/16 v3, 0xc1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    iput v15, v0, Lz4/I;->e:I

    iget-object v0, v5, Lz4/C;->b:Lz4/g;

    invoke-virtual {v0}, Lz4/g;->a()I

    move-result v0

    sget v1, Lz4/C;->r0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/b;

    if-eqz v1, :cond_2e

    iput-boolean v12, v1, Lz4/b;->a:Z

    iget-object v2, v5, Lz4/C;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v8}, Lz4/b;->c(Landroid/content/Context;IZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-static {v2, v10, v1}, Lz4/b;->b(Landroid/view/View;ZLandroid/widget/RelativeLayout$LayoutParams;)V

    :cond_2e
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, LJe/d;->c:Z

    if-nez v1, :cond_31

    sget v1, Lz4/C;->t0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/b;

    if-eqz v1, :cond_2f

    iput-boolean v12, v1, Lz4/b;->a:Z

    iget-object v2, v5, Lz4/C;->f:Lz4/I;

    iget-object v2, v2, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v8}, Lz4/b;->c(Landroid/content/Context;IZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-static {v2, v10, v0}, Lz4/b;->b(Landroid/view/View;ZLandroid/widget/RelativeLayout$LayoutParams;)V

    :cond_2f
    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    iget-object v1, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    new-instance v2, Lz4/C$c;

    invoke-direct {v2, v5}, Lz4/C$c;-><init>(Lz4/C;)V

    invoke-virtual {v0, v1, v10, v2}, Lz4/I;->c(Landroid/view/View;ZLz4/C$c;)V

    goto :goto_10

    :cond_30
    iget-object v0, v5, Lz4/C;->b:Lz4/g;

    invoke-virtual {v0}, Lz4/g;->a()I

    move-result v0

    sget v1, Lz4/C;->t0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/b;

    if-eqz v1, :cond_31

    iput-boolean v12, v1, Lz4/b;->a:Z

    iget-object v2, v5, Lz4/C;->f:Lz4/I;

    iget-object v2, v2, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v8}, Lz4/b;->c(Landroid/content/Context;IZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-static {v2, v8, v0}, Lz4/b;->b(Landroid/view/View;ZLandroid/widget/RelativeLayout$LayoutParams;)V

    :cond_31
    :goto_10
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/f;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, LCs/f;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-virtual {v0, v14}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    iget-object v0, v0, Lv2/F0;->b:Lv2/G0;

    iget v0, v0, Lv2/G0;->e:I

    invoke-static {v0, v8}, LPq/b;->K(IZ)Z

    move-result v12

    iget-object v0, v5, Lz4/C;->f:Lz4/I;

    if-eqz v0, :cond_33

    iget v1, v0, Lz4/I;->e:I

    if-eq v1, v15, :cond_33

    iget-object v0, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    new-array v1, v10, [Landroid/view/View;

    aput-object v0, v1, v8

    invoke-static {v12, v1}, Lcom/android/camera/fragment/m;->f(Z[Landroid/view/View;)V

    if-eqz v13, :cond_32

    new-instance v0, LU1/c;

    iget-object v1, v5, Lz4/C;->f:Lz4/I;

    iget-object v1, v1, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, LU1/e;-><init>(Landroid/view/View;)V

    const/16 v1, 0x12c

    iput v1, v0, LU1/e;->c:I

    new-instance v1, LAs/s;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v5, v9}, LAs/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, LU1/e;->g:Ljava/lang/Runnable;

    new-instance v1, Lio/reactivex/internal/operators/completable/b;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/completable/b;-><init>(Lio/reactivex/e;)V

    invoke-virtual {v1}, Lio/reactivex/b;->subscribe()Lio/reactivex/disposables/b;

    goto :goto_11

    :cond_32
    iget-object v0, v5, Lz4/C;->f:Lz4/I;

    iget v3, v0, Lz4/I;->e:I

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_33
    :goto_11
    invoke-virtual {v5}, Lz4/C;->xr()V

    iget-object v0, v5, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_34

    iget-boolean v1, v0, Lz4/I;->h:Z

    if-eqz v1, :cond_34

    iget-object v0, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    new-array v1, v10, [Landroid/view/View;

    aput-object v0, v1, v8

    invoke-static {v12, v1}, Lcom/android/camera/fragment/m;->f(Z[Landroid/view/View;)V

    :cond_34
    iput-boolean v8, v5, Lz4/C;->N:Z

    :cond_35
    :goto_12
    iget-object v0, v5, Lz4/C;->I:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, v5, Lz4/C;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_36
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v5, Lz4/C;->I:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_37

    const-wide/16 v1, 0xc8

    goto :goto_13

    :cond_37
    const-wide/16 v1, 0x0

    :goto_13
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v5, Lz4/C;->I:Landroid/animation/ValueAnimator;

    new-instance v1, Lz4/C$d;

    invoke-direct {v1, v5, v11, v7}, Lz4/C$d;-><init>(Lz4/C;ZZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v5, Lz4/C;->I:Landroid/animation/ValueAnimator;

    new-instance v1, Lz4/C$e;

    invoke-direct {v1, v5, v7, v11}, Lz4/C$e;-><init>(Lz4/C;ZZ)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v5, Lz4/C;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final K3()V
    .locals 7

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget v3, v0, Lz4/I;->d:I

    const/4 v4, 0x1

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public final Kr(ZZ)V
    .locals 10
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFlipPhone"
        type = 0x0
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lz4/C;->f0:Lz4/C$h;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lz4/C;->l:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lz4/C;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget-object v0, v0, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe6

    if-eq v0, v1, :cond_3

    iput-boolean v7, p0, Lz4/C;->o:Z

    iput-boolean v7, p0, Lz4/C;->p:Z

    iput-boolean v7, p0, Lz4/C;->q:Z

    iput-boolean v7, p0, Lz4/C;->r:Z

    goto :goto_3

    :cond_3
    iput-boolean v8, p0, Lz4/C;->o:Z

    iput-boolean v7, p0, Lz4/C;->p:Z

    iput-boolean v7, p0, Lz4/C;->q:Z

    iput-boolean v7, p0, Lz4/C;->r:Z

    goto :goto_3

    :cond_4
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->E()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->Q()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->e(I)Z

    move-result v0

    iput-boolean v0, p0, Lz4/C;->p:Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/camera/data/data/j;->E0()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/j;->C0()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/j;->D0()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/m;->N()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v8

    goto :goto_0

    :cond_6
    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lz4/C;->p:Z

    :cond_7
    :goto_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->Y()Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v7, p0, Lz4/C;->p:Z

    iput-boolean v7, p0, Lz4/C;->o:Z

    goto :goto_2

    :cond_8
    iput-boolean v8, p0, Lz4/C;->o:Z

    :goto_2
    iput-boolean v7, p0, Lz4/C;->q:Z

    iput-boolean v7, p0, Lz4/C;->r:Z

    :goto_3
    if-eqz p1, :cond_b

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/F0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    iget-object v0, v0, Lv2/F0;->b:Lv2/G0;

    invoke-virtual {v0}, Lv2/G0;->b()Lv2/G0;

    move-result-object v9

    iget-boolean v0, p0, Lz4/C;->p:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget-object v0, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x1

    const/16 v3, 0xc6

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget-object v0, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    new-array v1, v8, [Landroid/view/View;

    aput-object v0, v1, v7

    const v0, 0x3f19999a    # 0.6f

    invoke-static {v0, v1}, LS1/i;->j(F[Landroid/view/View;)V

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    iget-object v0, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x1

    const/16 v3, 0xcf

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget-boolean v0, v0, Lz4/I;->h:Z

    if-eqz v0, :cond_a

    iget v0, v9, Lv2/G0;->e:I

    invoke-static {v0, v7}, LPq/b;->K(IZ)Z

    move-result v0

    iget-object v1, p0, Lz4/C;->f:Lz4/I;

    iget-object v1, v1, Lz4/I;->a:Landroid/view/ViewGroup;

    new-array v2, v8, [Landroid/view/View;

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Lcom/android/camera/fragment/m;->f(Z[Landroid/view/View;)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x1

    const/16 v3, 0xc0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_a
    :goto_4
    iget-boolean v0, p0, Lz4/C;->o:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x1

    const/16 v3, 0xcf

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget v0, v9, Lv2/G0;->e:I

    invoke-static {v0, v7}, LPq/b;->K(IZ)Z

    move-result v0

    iget-object v1, p0, Lz4/C;->i0:Lz4/I;

    iget-object v1, v1, Lz4/I;->a:Landroid/view/ViewGroup;

    new-array v2, v8, [Landroid/view/View;

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Lcom/android/camera/fragment/m;->f(Z[Landroid/view/View;)V

    goto :goto_5

    :cond_b
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/b1;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, LF1/b1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    const/16 v7, 0xc0

    if-eqz v0, :cond_c

    iget v1, v0, Lz4/I;->d:I

    if-eq v1, v7, :cond_c

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x0

    const/16 v3, 0xc0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_c
    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_d

    iget v1, v0, Lz4/I;->d:I

    if-eq v1, v7, :cond_d

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x0

    const/16 v3, 0xc0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_d
    :goto_5
    invoke-static {}, LQ6/H0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/K0;

    invoke-direct {v1, p0, p1, v8}, LV9/K0;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lz4/C;->I:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lz4/C;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_e
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lz4/C;->I:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_f

    const-wide/16 v1, 0xc8

    goto :goto_6

    :cond_f
    const-wide/16 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lz4/C;->I:Landroid/animation/ValueAnimator;

    new-instance v1, Lz4/C$j;

    invoke-direct {v1, p0, p1}, Lz4/C$j;-><init>(Lz4/C;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lz4/C;->I:Landroid/animation/ValueAnimator;

    new-instance v1, Lz4/C$k;

    invoke-direct {v1, p0, p1}, Lz4/C$k;-><init>(Lz4/C;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lz4/C;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->getCameraMainViewModel()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    instance-of v1, v0, Lcom/android/camera/module/VideoModule;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/android/camera/module/VideoModule;

    iget-boolean v1, p0, Lz4/C;->p:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->onVideoCaptureEnableChanged(Z)V

    :cond_10
    :goto_7
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final Ll()Z
    .locals 0

    iget-boolean p0, p0, Lz4/C;->K:Z

    return p0
.end method

.method public final Lr()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lz4/D;

    invoke-direct {v2, p0}, Lz4/D;-><init>(Lz4/C;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/F0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/F0;

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateLayout: paintConditionReManager is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, v1, Lv2/F0;->b:Lv2/G0;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lv2/G0;->b()Lv2/G0;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateLayout: conditionReferred is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v2, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_3

    iget v2, v1, Lv2/G0;->e:I

    invoke-static {v2, v0}, LPq/b;->K(IZ)Z

    move-result v2

    iget-object v3, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    aput-object v3, v4, v0

    invoke-static {v2, v4}, Lcom/android/camera/fragment/m;->f(Z[Landroid/view/View;)V

    :cond_3
    invoke-virtual {p0}, Lz4/C;->Ar()V

    invoke-static {}, LQ6/j1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LL9/c;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, LL9/c;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lz4/C;->n:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget v3, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/camera/ui/CameraSnapView;->f(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lx8/d;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lv2/G0;)V

    iget-object v2, p0, Lz4/C;->h0:LF8/c;

    if-eqz v2, :cond_6

    invoke-interface {v2, v1}, LF8/c;->setParameters(Lv2/G0;)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v2, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/CameraSnapView;->i(Lv2/G0;)V

    iget-object v1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->h()V

    :cond_6
    :goto_2
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v2, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v2}, Lu2/Q;->E(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/w;->r0(I)Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lz4/C;->wo(ZZ)V

    return-void
.end method

.method public final Mb(Z)V
    .locals 8

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->B1()V

    iget v7, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v0, 0xe1

    if-eq v7, v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0xd1

    :goto_0
    move v4, p1

    goto :goto_1

    :cond_1
    const/16 p1, 0xc0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lz4/C;->i0:Lz4/I;

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final Mk(Z)Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportHeicToJpegForBurstCapture"
        type = 0x0
    .end annotation

    iget-boolean v0, p0, Lz4/C;->K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, LU6/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lz4/t;

    invoke-direct {v2, p1}, Lz4/t;-><init>(Z)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/r1;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, LF1/r1;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateMultiCapture: enable: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CameraSnapView"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->L:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->U:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->f0:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->L:Z

    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->b0:Lcom/android/camera/ui/CameraSnapView$a;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->O:F

    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->f:Lq8/w0;

    invoke-interface {p0}, Lq8/w0;->Bi()V

    return v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->o()V

    return v0
.end method

.method public final N0(Z)V
    .locals 4

    iget-boolean v0, p0, Lz4/C;->X:Z

    xor-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lz4/C;->X:Z

    invoke-static {}, LU6/c;->h()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v2}, Lz4/C;->Ja(ZZ)V

    return-void

    :cond_1
    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LCs/l;

    const/16 v3, 0xc

    invoke-direct {v0, v3}, LCs/l;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LC4/p;

    const/16 v3, 0xe

    invoke-direct {v0, v3}, LC4/p;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LCs/d;

    const/16 v3, 0x17

    invoke-direct {v0, v3}, LCs/d;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LF1/D0;

    const/16 v3, 0xf

    invoke-direct {v0, v3}, LF1/D0;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    invoke-virtual {p0, v1, v2}, Lz4/C;->Kr(ZZ)V

    return-void

    :cond_3
    invoke-virtual {p0, v1, v2}, Lz4/C;->Jr(ZZ)V

    return-void
.end method

.method public final Og()V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFlipPhone"
        type = 0x0
    .end annotation

    invoke-static {}, LK2/e;->y()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lz4/C;->d:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lz4/C;->h0:LF8/c;

    if-eqz v1, :cond_6

    invoke-interface {v1}, LF8/c;->getSuspendShutterVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {}, LK2/b;->V()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    const-string v2, "pref_camera_flip_suspend_shutter_use_hint_shown_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, LWh/a;->g()LWh/a;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v1}, LWh/a;->c()V

    new-instance v1, Ljy/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ljy/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lz4/C;->V:Ljy/f;

    iput-boolean v3, v1, Ljy/f;->j:Z

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Ljy/c;->c(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v2, 0x7f1407ce

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0712e4

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, p0, Lz4/C;->V:Ljy/f;

    invoke-virtual {v5, v1}, Ljy/c;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lz4/C;->V:Ljy/f;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lz4/C;->V:Ljy/f;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v1, 0x2

    new-array v5, v1, [I

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {}, LK2/b;->Z()Z

    move-result v6

    if-eqz v6, :cond_5

    div-int/2addr v5, v1

    mul-int/2addr v2, v1

    sub-int/2addr v5, v2

    goto :goto_0

    :cond_5
    move v5, v4

    :goto_0
    iget-object p0, p0, Lz4/C;->V:Ljy/f;

    invoke-virtual {p0, v0, v5, v4, v3}, Ljy/f;->i(Landroid/view/View;IIZ)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final Oo()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_0
    return-object v0
.end method

.method public final P0()I
    .locals 2

    invoke-static {}, LQ6/Z0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LH4/L;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LH4/L;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final P4(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final Q5()V
    .locals 0

    return-void
.end method

.method public final Qm()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    const/16 v1, 0xd2

    const/16 v2, 0xcd

    if-eqz v0, :cond_1

    iget v0, v0, Lz4/I;->d:I

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lz4/C;->Br()V

    return-void

    :cond_1
    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    if-eqz v0, :cond_3

    iget v0, v0, Lz4/I;->d:I

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lz4/C;->K3()V

    :cond_3
    return-void
.end method

.method public final Rj()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    invoke-static {}, Lz4/C;->mr()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {}, LY2/j;->d()LY2/j;

    move-result-object p0

    invoke-virtual {p0}, LY2/j;->g()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-static {p0}, LOh/m;->a(Z)V

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v1

    check-cast v1, LA2/a$a;

    iget-object v1, v1, LA2/a$a;->b:Lu2/Q;

    invoke-static {}, LY2/j;->d()LY2/j;

    move-result-object v2

    invoke-virtual {v1}, Lu2/Q;->C()I

    move-result v3

    iput v3, v2, LY2/j;->f:I

    invoke-virtual {v1, v0}, Lu2/Q;->a0(I)V

    iget v0, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v0}, Lu2/Q;->E(I)I

    move-result v0

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    :cond_0
    const-string v0, "click"

    const-string/jumbo v1, "top_bar"

    const-string v2, "back_shoot"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Liq/d;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_1
    return v0
.end method

.method public final Ro(Z)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showOrHideLoadingProgress: isShow="

    invoke-static {v1, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lz4/C;->Dr(Z)V

    return-void
.end method

.method public final S0()Z
    .locals 4

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v2, 0xa3

    if-eq v0, v2, :cond_1

    const/16 v2, 0xe1

    if-eq v0, v2, :cond_1

    :goto_0
    return v1

    :cond_1
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->O6()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LU6/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "MultiCaptureByRunningCondition: down capturing"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {}, LU6/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LC4/G;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, LC4/G;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "MultiCaptureByRunningCondition: down block snap"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    invoke-static {}, LU6/c;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LE3/i;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, LE3/i;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "MultiCaptureByRunningCondition: isDoingAction"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    :goto_1
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    const-class v2, Lw7/c;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw7/c;

    invoke-virtual {v0}, Lw7/c;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LE3/k;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, LE3/k;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "MultiCaptureByRunningCondition: isInTimerBurstShotting"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_5
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "MultiCaptureByRunningCondition"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/Z0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/P3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LF1/P3;-><init>(I)V

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

.method public final S5()V
    .locals 9

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v1

    invoke-virtual {p0}, Lz4/C;->wr()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Ly4/b;->b(IZZZZ)Ly4/b;

    move-result-object v0

    invoke-virtual {v0}, Ly4/b;->a()V

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    invoke-virtual {v1}, Lx8/d;->b()V

    iget-object v2, v1, Lx8/d;->m:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v1, Lx8/d;->e:Lx8/y;

    iput-boolean v3, v1, Lt8/c;->b:Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt8/c;

    iget v5, v4, Lt8/c;->g:F

    iget v6, v4, Lt8/c;->j:I

    iget v7, v4, Lt8/c;->o:I

    iget v8, v4, Lt8/c;->h:F

    iput v5, v4, Lt8/c;->m:F

    iput v6, v4, Lt8/c;->n:I

    iput v7, v4, Lt8/c;->o:I

    iput v8, v4, Lt8/c;->p:F

    iget-object v5, v4, Lt8/c;->f:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, v4, Lt8/c;->o:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v6, v4, Lt8/c;->p:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-boolean v3, v4, Lt8/c;->b:Z

    invoke-virtual {v4}, Lt8/c;->d()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    invoke-virtual {p0, v0}, Lx8/d;->z(Ly4/b;)V

    :cond_2
    return-void
.end method

.method public final Sg(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object v2

    invoke-virtual {v2}, LBr/e;->g()V

    iget v2, v0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const-class v3, Lv2/B0;

    const-class v4, Lv2/f0;

    const/16 v5, 0xa3

    const/16 v6, 0xa2

    const/16 v7, 0xd6

    const/16 v8, 0xcb

    const/16 v9, 0xb8

    const/16 v10, 0xad

    const/16 v11, 0xa7

    const/16 v13, 0xb4

    const/4 v14, 0x2

    const/16 v15, 0x8

    const/4 v12, 0x1

    const/16 v16, 0x0

    if-eq v2, v6, :cond_8

    const v17, 0x7f140b4c

    if-eq v2, v5, :cond_6

    if-eq v2, v11, :cond_5

    if-eq v2, v10, :cond_4

    if-eq v2, v13, :cond_3

    if-eq v2, v9, :cond_2

    if-eq v2, v8, :cond_1

    if-eq v2, v7, :cond_0

    move/from16 v2, v16

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2, v10}, Lu2/Q;->c0(I)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera;

    invoke-static {v10}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    :goto_0
    const v2, 0x7f140b26

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2, v9}, Lu2/Q;->c0(I)V

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LK4/b;

    const/16 v4, 0xb

    invoke-direct {v3, v1, v4}, LK4/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera;

    invoke-static {v9}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2, v8}, Lu2/Q;->c0(I)V

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, La5/e;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, La5/e;-><init>(ILandroid/view/View;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera;

    invoke-static {v8}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    :goto_1
    move/from16 v2, v17

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2, v11}, Lu2/Q;->c0(I)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera;

    invoke-static {v11}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2, v7}, Lu2/Q;->c0(I)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera;

    invoke-static {v7}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2, v13}, Lu2/Q;->c0(I)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera;

    invoke-static {v13}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, LQ6/H0;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v5, LEs/J;

    const/16 v7, 0x19

    invoke-direct {v5, v7}, LEs/J;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_7
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2, v6}, Lu2/Q;->c0(I)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/f0;

    iget v4, v0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v4}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v4

    iput-boolean v4, v2, Lv2/f0;->c:Z

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/B0;

    iget v3, v0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v3}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lv2/B0;->w(F)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera;

    invoke-static {v6}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    goto/16 :goto_1

    :cond_8
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/w;->Z0(I)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2, v5}, Lu2/Q;->c0(I)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/f0;

    iget v4, v0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v4}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v4

    iput-boolean v4, v2, Lv2/f0;->c:Z

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/B0;

    iget v3, v0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v3}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lv2/B0;->w(F)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    goto/16 :goto_0

    :goto_2
    iget v3, v0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    if-eq v3, v11, :cond_e

    if-eq v3, v10, :cond_d

    if-eq v3, v13, :cond_c

    if-eq v3, v9, :cond_b

    if-eq v3, v8, :cond_a

    const/16 v4, 0xd6

    if-eq v3, v4, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v12}, Lcom/android/camera/data/data/m;->H0(Z)V

    goto :goto_3

    :cond_a
    invoke-static {v12}, Lcom/android/camera/data/data/w;->U0(Z)V

    goto :goto_3

    :cond_b
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/w;->U0(Z)V

    goto :goto_3

    :cond_c
    invoke-static {v12}, Lcom/android/camera/data/data/m;->J0(Z)V

    goto :goto_3

    :cond_d
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/m;->H0(Z)V

    goto :goto_3

    :cond_e
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/m;->J0(Z)V

    :goto_3
    if-eqz v1, :cond_12

    iget-object v3, v0, Lz4/C;->i0:Lz4/I;

    if-eqz v3, :cond_f

    iget-object v4, v3, Lz4/I;->a:Landroid/view/ViewGroup;

    if-ne v4, v1, :cond_f

    iget-object v1, v3, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    goto :goto_4

    :cond_f
    iget-object v3, v0, Lz4/C;->f:Lz4/I;

    iget-object v4, v3, Lz4/I;->a:Landroid/view/ViewGroup;

    if-ne v1, v4, :cond_10

    iget-object v1, v3, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    :cond_10
    :goto_4
    sget-object v1, LF1/D2;->f:LF1/D2;

    iget-boolean v1, v1, LF1/D2;->d:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v2, :cond_12

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1400ca

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    if-ne v2, v13, :cond_11

    invoke-static {}, Lcom/android/camera/data/data/w;->e0()Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, LEc/i;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v0, v1}, LEc/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v3, 0x12c

    iget-object v0, v0, Lz4/C;->f0:Lz4/C$h;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_11
    iget-object v0, v0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public final T8()V
    .locals 0

    return-void
.end method

.method public final Te(Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxx/i;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/S;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, LCs/S;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lxx/i;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lz4/C;->Hr(Z)V

    :cond_1
    const-string/jumbo p0, "slide"

    const-string p1, "attr_enter_more_mode_type"

    const-string/jumbo v0, "value_enter_more_mode_by_pop"

    invoke-static {v0, p1, p0}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lz4/C;->Hr(Z)V

    iget-object p0, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/e;

    const/16 v0, 0x16

    invoke-direct {p1, v0}, LEs/e;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method public final U7(Z)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v0, 0xba

    if-eq p1, v0, :cond_6

    const/16 v0, 0xb6

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v0, Lr2/B0;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/B0;

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, v0}, Lr2/B0;->u(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p1

    const-class v0, Lw7/c;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw7/c;

    invoke-virtual {p1}, Lw7/c;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lz4/C;->s:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lz4/C;->J:Z

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_4

    const/16 v1, 0xac

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_4

    const/16 v1, 0xbe

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lz4/C;->f0:Lz4/C$h;

    iget p0, p0, Lz4/C;->L:I

    int-to-long v1, p0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_4
    iget-object v0, p0, Lz4/C;->f0:Lz4/C$h;

    iget p0, p0, Lz4/C;->M:I

    int-to-long v1, p0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_5
    const/4 p1, 0x0

    iput-boolean p1, p0, Lz4/C;->J:Z

    iget-object p1, p0, Lz4/C;->f0:Lz4/C$h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lz4/C;->l:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    iget-object p0, p0, Lz4/C;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final Ua()V
    .locals 2

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/H1;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, LF1/H1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Ug(ZZ)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p2, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/CameraSnapView;->s(Z)V

    iget p2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p2}, Lcom/android/camera/data/data/w;->r0(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lz4/C;->K:Z

    if-nez p2, :cond_0

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->getCameraSnapAnimateDrawable()Lx8/d;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p1}, LG8/h;->n(Lx8/d;ZZ)V

    :cond_0
    return-void
.end method

.method public final Ui()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/F0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    iget-object v0, v0, Lv2/F0;->b:Lv2/G0;

    iget v0, v0, Lv2/G0;->e:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, LPq/b;->K(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz4/C;->Ar()V

    :cond_0
    return-void
.end method

.method public final Vb(Z)V
    .locals 4

    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, LQ6/n1;->dj()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LQ6/n1;->H1()V

    :cond_0
    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LE3/j;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LE3/j;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lz4/C;->qr()V

    invoke-virtual {p0}, Lz4/C;->Ir()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz4/C;->h0:LF8/c;

    check-cast v0, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    invoke-static {v0, p1, v1}, Lv9/a;->g(Landroid/view/View;ZZ)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxx/i;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LE4/v;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, LE4/v;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    if-eqz p0, :cond_3

    invoke-static {p0, p1, v1}, Lv9/a;->g(Landroid/view/View;ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final W9(Z)V
    .locals 0

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->n:Z

    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    iput-boolean p1, p0, Lx8/d;->r:Z

    :cond_0
    return-void
.end method

.method public final Wd()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lz4/C;->j:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final Wi(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Y2(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "processingSwitchCameraInRecording: changeCamera"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lz4/C;->gk(Landroid/view/View;)V

    return-void
.end method

.method public final Ya(Landroid/widget/LinearLayout;I)Lz4/o;
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isCinemasterSupported"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lz4/C;->m0:Lz4/o;

    if-eqz v0, :cond_4

    const v1, 0x7f0b01d3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lz4/o;->d:Landroid/widget/LinearLayout;

    const v3, 0x800005

    if-nez v2, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lz4/o;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    iget-object v1, v0, Lz4/o;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lz4/o;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f070c28

    if-ne p2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_0
    const/16 p2, 0x10

    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    const/4 p2, 0x0

    move v1, p2

    :goto_1
    iget v2, v0, Lz4/o;->a:I

    if-ge v1, v2, :cond_4

    const/4 v4, 0x4

    if-gt v2, v4, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070c1a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_3

    :cond_3
    :goto_2
    move v2, p2

    :goto_3
    new-instance v4, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v5, v0, Lz4/o;->f:Lmiuix/appcompat/app/n;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v5, v0, Lz4/o;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v2, v0, Lz4/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La5/i;

    invoke-static {v2, v4}, Lz4/o;->a(La5/i;Landroid/widget/ImageView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lz4/C;->m0:Lz4/o;

    return-object p0
.end method

.method public final ah()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/o;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, LCs/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final canEnterDragVideo()Z
    .locals 2

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LI4/m;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LI4/m;-><init>(I)V

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

.method public final canMoveWhenProcessing()Z
    .locals 2

    invoke-static {}, LQ6/Z0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LU6/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LU6/b;-><init>(I)V

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

.method public final d()V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz4/C;->n:Z

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v2

    invoke-virtual {p0}, Lz4/C;->wr()Z

    move-result v3

    const/4 v7, 0x0

    invoke-static {v1, v7, v0, v2, v3}, Ly4/b;->b(IZZZZ)Ly4/b;

    move-result-object v8

    invoke-virtual {v8}, Ly4/b;->a()V

    iget-boolean v0, p0, Lz4/C;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-boolean v1, v8, Ly4/b;->n:Z

    invoke-virtual {v0, v1, v7}, Lcom/android/camera/ui/CameraSnapView;->t(ZZ)V

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/CameraSnapView;->w(Ly4/b;)V

    :goto_0
    sget-object v0, LF1/D2;->f:LF1/D2;

    iget-boolean v0, v0, LF1/D2;->d:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xa2

    const v2, 0x7f14010d

    if-eq v0, v1, :cond_4

    const/16 v1, 0xad

    const v3, 0x7f140110

    if-eq v0, v1, :cond_3

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbf

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-boolean v1, v8, Ly4/b;->h:Z

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    if-eqz v0, :cond_5

    iput-boolean v7, v0, Lz4/I;->p:Z

    :cond_5
    :goto_1
    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v7, 0xbe

    if-ne v6, v7, :cond_7

    iget-object v0, p0, Lz4/C;->j0:Lz4/I;

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    const/16 v3, 0xc15

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lz4/C;->j0:Lz4/I;

    const/16 v1, 0xc15

    iput v1, v0, Lz4/I;->e:I

    :cond_7
    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    iget-boolean v1, p0, Lz4/C;->n:Z

    if-eqz v1, :cond_8

    invoke-static {v0}, Lcom/android/camera/data/data/j;->k1(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_a

    if-ne v0, v7, :cond_9

    goto :goto_3

    :cond_9
    return-void

    :cond_a
    :goto_3
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LB3/b;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, LB3/b;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final da(I)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    sget-object v0, LF1/D2;->f:LF1/D2;

    iget-boolean v0, v0, LF1/D2;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    new-instance v1, Lz4/s;

    invoke-direct {v1, p0, p1}, Lz4/s;-><init>(Lz4/C;I)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final delayInflatingViews(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->delayInflatingViews(Landroid/view/View;)V

    const v0, 0x7f0b013a

    const v1, 0x7f0b0139

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/camera/base/ui/fragments/d;->inflateViewStub(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0138

    const v2, 0x7f0b0137

    invoke-virtual {p0, p1, v1, v2}, Lcom/xiaomi/camera/base/ui/fragments/d;->inflateViewStub(Landroid/view/View;II)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lz4/x;

    invoke-direct {v1, p0}, Lz4/x;-><init>(Lz4/C;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0b06de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lz4/C;->T:Landroid/widget/ImageView;

    const v2, 0x7f080805

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lz4/C;->T:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0bc2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lz4/C;->l:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lz4/C;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f081029

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lz4/C;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0b0bc1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0bc3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lz4/C;->S:Landroid/widget/ImageView;

    const v0, 0x7f0b0bbf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lz4/C;->O:Landroid/widget/ProgressBar;

    const v0, 0x7f0b0bc0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lz4/C;->P:Landroid/widget/ImageView;

    return-void
.end method

.method public final dh(II)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, LU6/c;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_4

    :cond_1
    iget-object v2, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-object v3, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    iget-object v4, p0, Lz4/C;->f:Lz4/I;

    iget-object v4, v4, Lz4/I;->a:Landroid/view/ViewGroup;

    iget-object v5, p0, Lz4/C;->i0:Lz4/I;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v5, Lz4/I;->a:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v5, v6

    :goto_0
    iget-object v7, p0, Lz4/C;->l0:Lz4/I;

    if-eqz v7, :cond_3

    iget-object v7, v7, Lz4/I;->a:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_3
    move-object v7, v6

    :goto_1
    iget-object v8, p0, Lz4/C;->j0:Lz4/I;

    if-eqz v8, :cond_4

    iget-object v8, v8, Lz4/I;->a:Landroid/view/ViewGroup;

    goto :goto_2

    :cond_4
    move-object v8, v6

    :goto_2
    iget-object p0, p0, Lz4/C;->k0:Lz4/I;

    if-eqz p0, :cond_5

    iget-object v6, p0, Lz4/I;->a:Landroid/view/ViewGroup;

    :cond_5
    const/4 p0, 0x7

    new-array p0, p0, [Landroid/view/View;

    aput-object v2, p0, v1

    aput-object v3, p0, v0

    const/4 v2, 0x2

    aput-object v4, p0, v2

    const/4 v2, 0x3

    aput-object v5, p0, v2

    const/4 v2, 0x4

    aput-object v7, p0, v2

    const/4 v2, 0x5

    aput-object v8, p0, v2

    const/4 v2, 0x6

    aput-object v6, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Lvr/b0;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_3
    return v0

    :cond_7
    :goto_4
    return v1
.end method

.method public final e()V
    .locals 19

    move-object/from16 v5, p0

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/camera/data/data/E;->B0(Z)V

    invoke-static {}, LQ6/w0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC3/c;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, LC3/c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean v0, v5, Lz4/C;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v5, Lz4/C;->f:Lz4/I;

    iget v1, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v0, v5, v1}, Lz4/I;->h(Landroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "processingFinish->STATE_SHOW"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v0}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iput-boolean v7, v5, Lz4/C;->n:Z

    invoke-virtual {v5, v7}, Lz4/C;->Dr(Z)V

    sget-object v0, LF1/D2;->f:LF1/D2;

    iget-boolean v0, v0, LF1/D2;->d:Z

    const/16 v1, 0xcb

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    if-eq v0, v1, :cond_2

    iget-object v0, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const v2, 0x7f140046

    invoke-virtual {v5, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const v2, 0x7f14010a

    invoke-virtual {v5, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v0

    const-class v2, LFs/A;

    invoke-virtual {v0, v2}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v0

    move-object v10, v0

    check-cast v10, LFs/A;

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v0, 0xa2

    if-eq v6, v0, :cond_16

    const/16 v0, 0xa3

    if-eq v6, v0, :cond_15

    const/16 v0, 0xad

    if-eq v6, v0, :cond_14

    const/16 v0, 0xb8

    const/4 v11, -0x1

    if-eq v6, v0, :cond_12

    const/16 v0, 0xbe

    const/16 v12, 0xc0

    if-eq v6, v0, :cond_d

    if-eq v6, v1, :cond_8

    const/16 v0, 0xcf

    if-eq v6, v0, :cond_6

    const/16 v0, 0xe1

    if-eq v6, v0, :cond_15

    const/16 v0, 0xe2

    if-eq v6, v0, :cond_15

    iget-object v0, v5, Lz4/C;->f:Lz4/I;

    if-eqz v0, :cond_5

    iget v3, v0, Lz4/I;->e:I

    const/16 v1, 0xe6

    if-eq v6, v1, :cond_4

    if-eq v3, v12, :cond_4

    move v2, v8

    goto :goto_0

    :cond_4
    move v2, v7

    :goto_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_5
    invoke-virtual {v5}, Lz4/C;->xr()V

    goto/16 :goto_4

    :cond_6
    iget-object v0, v5, Lz4/C;->f:Lz4/I;

    iput v12, v0, Lz4/I;->e:I

    const/4 v2, 0x0

    const/16 v3, 0xc0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-object v1, v5, Lz4/C;->S:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/camera/fragment/m;->c(Lcom/android/camera/ui/CameraSnapView;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, v5, Lz4/C;->S:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    new-instance v12, Landroid/view/animation/RotateAnimation;

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    const/4 v13, 0x0

    const/high16 v14, 0x43b40000    # 360.0f

    const/16 v17, 0x1

    const/high16 v18, 0x3f000000    # 0.5f

    invoke-direct/range {v12 .. v18}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v12, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v12, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v12, v8}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    invoke-virtual {v12, v11}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, v5, Lz4/C;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v5, Lz4/C;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v6}, Lv2/G0;->c(I)Lv2/G0;

    move-result-object v1

    iget v2, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v2, v11}, LPq/b;->C(II)I

    move-result v2

    iput v2, v1, Lv2/G0;->e:I

    iget v2, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v2}, LPq/b;->G(I)Z

    move-result v2

    iput-boolean v2, v1, Lv2/G0;->d:Z

    iget v2, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v2}, LPq/b;->H(I)V

    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->j:Lv2/G0;

    if-eqz v2, :cond_9

    iget-boolean v2, v2, Lv2/G0;->d:Z

    goto :goto_1

    :cond_9
    move v2, v7

    :goto_1
    iget-boolean v3, v1, Lv2/G0;->d:Z

    if-ne v3, v2, :cond_a

    goto :goto_2

    :cond_a
    iput-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->j:Lv2/G0;

    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    invoke-virtual {v2, v1}, Lx8/d;->k(Lv2/G0;)V

    iget-object v0, v0, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    invoke-virtual {v0}, Lx8/d;->s()V

    :goto_2
    iget-object v0, v5, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_c

    iget v1, v10, LFs/A;->k:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    goto :goto_3

    :cond_b
    const/16 v12, 0xc2

    :goto_3
    iput v12, v0, Lz4/I;->e:I

    :cond_c
    iget-object v0, v5, Lz4/C;->T:Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    invoke-virtual {v5, v11, v9, v0}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;Landroid/view/View;)V

    goto/16 :goto_4

    :cond_d
    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    const/16 v3, 0xc5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    const/16 v1, 0xc5

    iput v1, v0, Lz4/I;->e:I

    :cond_e
    iget-object v0, v5, Lz4/C;->k0:Lz4/I;

    if-eqz v0, :cond_f

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x1

    const/16 v3, 0xc0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lz4/C;->k0:Lz4/I;

    iput v12, v0, Lz4/I;->e:I

    :cond_f
    iget-object v0, v5, Lz4/C;->f:Lz4/I;

    if-eqz v0, :cond_10

    iget v3, v0, Lz4/I;->e:I

    if-eq v3, v12, :cond_10

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_10
    iget-object v0, v5, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_11

    iget v3, v0, Lz4/I;->e:I

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_11
    iget-object v0, v5, Lz4/C;->l0:Lz4/I;

    if-eqz v0, :cond_17

    iget v3, v0, Lz4/I;->e:I

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    goto :goto_4

    :cond_12
    iget-object v0, v5, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_13

    const/16 v1, 0xc3

    iput v1, v0, Lz4/I;->e:I

    :cond_13
    iget-object v0, v5, Lz4/C;->T:Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    invoke-virtual {v5, v11, v9, v0}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;Landroid/view/View;)V

    goto :goto_4

    :cond_14
    iget-object v0, v5, Lz4/C;->l0:Lz4/I;

    if-eqz v0, :cond_17

    iget v3, v0, Lz4/I;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    goto :goto_4

    :cond_15
    iget-boolean v0, v5, Lz4/C;->K:Z

    if-eqz v0, :cond_17

    iput-boolean v7, v5, Lz4/C;->K:Z

    iget-object v0, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/CameraSnapView;->p(Z)V

    invoke-virtual {v5, v7, v8}, Lz4/C;->Jr(ZZ)V

    return-void

    :cond_16
    iget-object v0, v5, Lz4/C;->f:Lz4/I;

    if-eqz v0, :cond_17

    iput-boolean v7, v0, Lz4/I;->p:Z

    :cond_17
    :goto_4
    iget v0, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v1

    invoke-virtual {v5}, Lz4/C;->wr()Z

    move-result v2

    invoke-static {v0, v7, v7, v1, v2}, Ly4/b;->b(IZZZZ)Ly4/b;

    move-result-object v0

    invoke-virtual {v0}, Ly4/b;->a()V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    iget-boolean v1, v1, Lv2/D0;->B:Z

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ly4/b;->c()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v1

    const-class v2, Lw7/c;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw7/c;

    iget-boolean v1, v1, Lw7/c;->b:Z

    if-nez v1, :cond_18

    iget-object v0, v5, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    invoke-virtual {v5, v8, v9, v0}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;Landroid/view/View;)V

    return-void

    :cond_18
    invoke-virtual {v10}, LFs/A;->c()Z

    move-result v1

    iput-boolean v1, v0, Ly4/b;->j:Z

    invoke-virtual {v5}, Lz4/C;->or()Lx8/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lx8/d;->C(Ly4/b;)V

    iget-boolean v1, v0, Ly4/b;->l:Z

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Ly4/b;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_6

    :cond_19
    :goto_5
    return-void

    :cond_1a
    :goto_6
    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v5, v7, v7}, Lz4/C;->Kr(ZZ)V

    return-void

    :cond_1b
    invoke-virtual {v5, v7, v7}, Lz4/C;->Jr(ZZ)V

    return-void
.end method

.method public final ep()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final f()V
    .locals 9

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/16 v2, 0xa9

    const/16 v3, 0xbe

    if-eq v0, v2, :cond_7

    const/16 v2, 0xac

    if-eq v0, v2, :cond_7

    const/16 v2, 0xbb

    if-eq v0, v2, :cond_7

    const/16 v2, 0xcb

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd3

    if-eq v0, v2, :cond_7

    const/16 v2, 0xd6

    if-eq v0, v2, :cond_7

    const/16 v2, 0xe6

    if-eq v0, v2, :cond_7

    const/16 v2, 0xb3

    if-eq v0, v2, :cond_7

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_7

    const/16 v2, 0xb7

    if-eq v0, v2, :cond_7

    const/16 v2, 0xb8

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_7

    const/16 v2, 0xbf

    if-eq v0, v2, :cond_7

    const/16 v2, 0xdb

    if-eq v0, v2, :cond_7

    const/16 v2, 0xdc

    if-eq v0, v2, :cond_7

    const/16 v2, 0xe1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xe2

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :cond_0
    :pswitch_0
    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-boolean v0, v0, Lcom/android/camera/ui/CameraSnapView;->L:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1, v7}, Lz4/C;->Jr(ZZ)V

    return-void

    :cond_1
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v0

    const-class v2, LFs/A;

    invoke-virtual {v0, v2}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v0

    check-cast v0, LFs/A;

    invoke-virtual {v0}, LFs/A;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    const/4 v8, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v8, v2, v0}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Lz4/C;->T:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;Landroid/view/View;)V

    invoke-static {}, LQ6/H0;->b()LQ6/H0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, LQ6/H0;->g4()V

    :cond_2
    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_3

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_3
    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v1}, Lv2/G0;->c(I)Lv2/G0;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v2, v8}, LPq/b;->C(II)I

    move-result v2

    iput v2, v1, Lv2/G0;->e:I

    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v2}, LPq/b;->G(I)Z

    move-result v2

    iput-boolean v2, v1, Lv2/G0;->d:Z

    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v2}, LPq/b;->H(I)V

    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->j:Lv2/G0;

    if-eqz v2, :cond_4

    iget-boolean v7, v2, Lv2/G0;->d:Z

    :cond_4
    iget-boolean v2, v1, Lv2/G0;->d:Z

    if-ne v2, v7, :cond_5

    goto/16 :goto_4

    :cond_5
    iput-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->j:Lv2/G0;

    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    invoke-virtual {v2, v1}, Lx8/d;->k(Lv2/G0;)V

    iget-object v0, v0, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    invoke-virtual {v0}, Lx8/d;->s()V

    return-void

    :cond_6
    iget-boolean v0, p0, Lz4/C;->n:Z

    if-nez v0, :cond_8

    iput-boolean v1, p0, Lz4/C;->n:Z

    goto :goto_0

    :cond_7
    :pswitch_1
    iget-boolean v0, p0, Lz4/C;->n:Z

    if-nez v0, :cond_8

    iput-boolean v1, p0, Lz4/C;->n:Z

    :cond_8
    :goto_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    iget-boolean v0, v0, Lv2/D0;->B:Z

    if-nez v0, :cond_a

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    const-class v2, Lw7/c;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw7/c;

    invoke-virtual {v0}, Lw7/c;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    move v0, v7

    goto :goto_2

    :cond_a
    :goto_1
    move v0, v1

    :goto_2
    iget-boolean v2, p0, Lz4/C;->n:Z

    if-nez v2, :cond_b

    iput-boolean v0, p0, Lz4/C;->n:Z

    :cond_b
    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v2

    invoke-virtual {p0}, Lz4/C;->wr()Z

    move-result v4

    invoke-static {v0, v7, v1, v2, v4}, Ly4/b;->b(IZZZZ)Ly4/b;

    move-result-object v0

    invoke-virtual {v0}, Ly4/b;->a()V

    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/camera/data/data/w;->w()I

    move-result v2

    if-eq v2, v1, :cond_c

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d

    :cond_c
    invoke-static {}, Lcom/android/camera/data/data/w;->w()I

    move-result v2

    invoke-virtual {p0, v2}, Lz4/C;->D6(I)V

    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->getCameraMainViewModel()Loh/b;

    move-result-object v2

    iget-object v2, v2, Loh/b;->o:Lcom/android/camera/module/W;

    instance-of v4, v2, Lcom/android/camera/module/VideoModule;

    if-eqz v4, :cond_10

    check-cast v2, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v2, v1}, Lcom/android/camera/module/VideoModule;->onVideoCaptureEnableChanged(Z)V

    goto :goto_3

    :cond_e
    invoke-static {}, LK2/b;->b0()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0, v1, v1}, Lz4/C;->Kr(ZZ)V

    goto :goto_3

    :cond_f
    invoke-virtual {p0, v1, v1}, Lz4/C;->Jr(ZZ)V

    :cond_10
    :goto_3
    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    if-eq v1, v3, :cond_11

    invoke-static {}, Lcom/android/camera/data/data/w;->w()I

    move-result v1

    invoke-static {v1}, LO0/A;->z(I)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lz4/C;->or()Lx8/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lx8/d;->o(Ly4/b;)V

    :cond_11
    invoke-static {}, LQ6/K0;->b()LQ6/K0;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, LQ6/K0;->G8()V

    :cond_12
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xcf
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final f2(Z)V
    .locals 3

    iget-object v0, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "set thumbnail clickable: "

    invoke-static {v1, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lz4/C;->m:Z

    :cond_0
    return-void
.end method

.method public final fc()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz4/C;->gk(Landroid/view/View;)V

    return-void
.end method

.method public final fj()V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionDetectionEnable"
        type = 0x2
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v1

    invoke-virtual {p0}, Lz4/C;->wr()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Ly4/b;->b(IZZZZ)Ly4/b;

    move-result-object v0

    invoke-virtual {v0}, Ly4/b;->a()V

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    iget-object v1, p0, Lx8/d;->f:Lx8/A;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Lt8/c;->i(I)V

    invoke-virtual {v1}, Lx8/A;->h()V

    invoke-virtual {p0, v0}, Lx8/d;->u(Ly4/b;)V

    return-void
.end method

.method public final g3(Z)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMimoji4"
        type = 0x0
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v1

    invoke-virtual {p0}, Lz4/C;->wr()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v4, v3, v1, v2}, Ly4/b;->b(IZZZZ)Ly4/b;

    move-result-object v0

    invoke-virtual {v0}, Ly4/b;->a()V

    iput-boolean v4, v0, Ly4/b;->j:Z

    iget-object v1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->w(Ly4/b;)V

    invoke-virtual {p0, p1}, Lz4/C;->Dr(Z)V

    return-void
.end method

.method public final g9(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/r;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lz4/y;

    invoke-direct {v1, p0, p1, p2}, Lz4/y;-><init>(Lz4/C;J)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final gc(LF1/z1;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LG3/h;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LG3/h;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lz4/C;->Hr(Z)V

    iget-object p0, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final ge(LAs/v;)V
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onPromptShrink"

    invoke-static {p1, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lz4/C;->Hr(Z)V

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v2, "trans_start"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v6, -0x3fa7000000000000L    # -100.0

    invoke-virtual {v1, v5, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    const-string/jumbo v6, "trans_end"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v2, v7, v8}, LMf/c;->h(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    invoke-virtual {v2, v5, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    iget-object p0, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    new-array p1, p1, [Landroid/view/View;

    aput-object p0, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-interface {p0, v1}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/camera/ui/DragLayout$b;->c()Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    filled-new-array {p1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public final getFragmentId()I
    .locals 0

    const/16 p0, 0xf1

    return p0
.end method

.method public final getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0e00cc

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FragmentBottomAction"

    return-object p0
.end method

.method public final gk(Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v2

    check-cast v2, LA2/a$a;

    iget-object v2, v2, LA2/a$a;->b:Lu2/Q;

    invoke-virtual {v2}, Lu2/Q;->C()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    sget-boolean v6, LJe/c;->k:Z

    sget-object v6, LJe/c$b;->a:LJe/c;

    iget-object v7, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v7}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, LU6/c;->h()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v3, :cond_2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v7

    iget-object v7, v7, Lu2/Q;->p:Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-static {v7}, Lcom/android/camera/data/data/r;->m(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v0

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v8, "[VideoSwitch] need hide flash"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v7

    new-instance v8, LCs/f;

    const/16 v9, 0x19

    invoke-direct {v8, v9}, LCs/f;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v7

    invoke-virtual {v7}, Ls4/e;->e()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, LY2/j;->d()LY2/j;

    move-result-object v5

    invoke-virtual {v5}, LY2/j;->g()Z

    invoke-static {v0}, LOh/m;->a(Z)V

    invoke-static {}, LY2/j;->d()LY2/j;

    move-result-object v5

    iget v5, v5, LY2/j;->f:I

    goto :goto_2

    :cond_3
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v7

    invoke-virtual {v7}, Lu6/f;->x()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, LJe/d;->c()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lz4/C;->mr()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, LY2/j;->d()LY2/j;

    move-result-object p0

    invoke-virtual {p0}, LY2/j;->g()Z

    invoke-static {v0}, LOh/m;->a(Z)V

    return-void

    :cond_4
    :goto_2
    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object v7

    invoke-virtual {v7}, LBr/e;->g()V

    iget v7, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v8, 0xb7

    const/16 v9, 0xa2

    if-eq v7, v8, :cond_5

    const/16 v8, 0xbe

    if-eq v7, v8, :cond_5

    if-ne v7, v9, :cond_6

    :cond_5
    iget-boolean v7, p0, Lz4/C;->n:Z

    if-nez v7, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    :cond_7
    invoke-virtual {v2, v5}, Lu2/Q;->a0(I)V

    invoke-static {}, LJe/c;->Q()Z

    move-result v2

    if-eqz v2, :cond_8

    if-ne v5, v0, :cond_8

    invoke-static {}, LQ6/S0;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v7, LEs/n;

    invoke-direct {v7, v0}, LEs/n;-><init>(I)V

    invoke-virtual {v2, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_8
    invoke-virtual {v6}, LJe/c;->x1()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->getCameraMainViewModel()Loh/b;

    move-result-object v2

    iget-object v2, v2, Loh/b;->m:LY2/f;

    if-eqz v2, :cond_9

    sget-object v7, LZ5/m;->h:LZ5/m;

    invoke-virtual {v2, v7}, LY2/f;->g(LZ5/m;)Z

    :cond_9
    sget-object v2, Lo9/a;->a:Lo9/b;

    invoke-interface {v2}, Lo9/b;->g()Lp9/c;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_a

    invoke-static {p1}, Li0/E;->a(Landroid/view/View;)Li0/N;

    move-result-object v2

    new-instance v7, Lz4/C$b;

    invoke-direct {v7, p0, v5}, Lz4/C$b;-><init>(Lz4/C;I)V

    invoke-virtual {v2, v7}, Li0/N;->g(Li0/O;)V

    iget-object v2, p0, Lz4/C;->f:Lz4/I;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, p1}, Lz4/I;->f(ILandroid/view/View;)V

    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v7

    iget v8, v7, Lu2/Q;->u:I

    invoke-virtual {v7, v8}, Lu2/Q;->E(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v8

    iget-object v8, v8, Lu6/f;->a:Lu6/b;

    iget v8, v8, Lu6/b;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {p1, v2, v7, v8, v10}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0xd

    invoke-static {v2, p1}, LPh/h;->l(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v10, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v7, v8, v10}, [Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "switch camera from %d to %d, for module 0x%x"

    invoke-static {v2, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v7, v10, v11}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p1

    sget-object v2, LF6/a;->L:LF6/a;

    invoke-virtual {p1, v2}, LF6/q;->r(LF6/a;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p1

    sget-object v2, LF6/a;->O:LF6/a;

    filled-new-array {v2}, [LF6/a;

    move-result-object v2

    invoke-virtual {p1, v2}, LF6/q;->e([LF6/a;)V

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sput v3, LK7/l;->e:I

    sput v5, LK7/l;->f:I

    sput p1, LK7/l;->g:I

    sput-wide v7, LK7/l;->h:J

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v2, LF1/z2;

    const/16 v5, 0x11

    invoke-direct {v2, v5}, LF1/z2;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v2, LH3/m;

    const/16 v5, 0x14

    invoke-direct {v2, v5}, LH3/m;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p1, LF1/D2;->f:LF1/D2;

    iget-boolean p1, p1, LF1/D2;->d:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const v2, 0x7f140043

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_b
    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v2, 0x10

    if-eq p1, v9, :cond_12

    const/16 v4, 0x8

    const/16 v5, 0xb0

    const/16 v7, 0xa6

    if-eq p1, v7, :cond_11

    const/16 v8, 0xa9

    if-eq p1, v8, :cond_10

    const/16 v8, 0xac

    if-eq p1, v8, :cond_f

    if-eq p1, v5, :cond_e

    const/16 v3, 0xb8

    if-eq p1, v3, :cond_d

    const/16 v3, 0xcb

    if-eq p1, v3, :cond_d

    const/16 v3, 0xcf

    if-eq p1, v3, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    return-void

    :cond_c
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    invoke-virtual {p1, v3}, Lu2/Q;->c0(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    return-void

    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p0}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    return-void

    :cond_e
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    invoke-virtual {p1, v7}, Lu2/Q;->c0(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-static {v7}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    return-void

    :cond_f
    invoke-virtual {v6, v3}, LJe/c;->L1(I)Z

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3, p1}, Lu2/Q;->c0(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    return-void

    :cond_10
    invoke-virtual {v6}, LJe/c;->S1()Z

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3, p1}, Lu2/Q;->c0(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    return-void

    :cond_11
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    invoke-virtual {p1, v5}, Lu2/Q;->c0(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    return-void

    :cond_12
    invoke-virtual {v6}, LJe/c;->S1()Z

    invoke-virtual {v6, v3}, LJe/c;->L1(I)Z

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v5

    invoke-virtual {v5, p1}, Lu2/Q;->c0(I)V

    iget-object v5, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-static {}, LU6/c;->h()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-static {v9}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v1

    goto :goto_3

    :cond_13
    move v5, v4

    :goto_3
    or-int/2addr v5, v0

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[VideoSwitch] save zoom ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LV6/d;->a()Ljava/util/Optional;

    move-result-object v7

    new-instance v8, LE4/b;

    invoke-direct {v8, v1}, LE4/b;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v6, Lv2/B0;

    invoke-virtual {v3, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/B0;

    invoke-static {}, LV6/d;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, LE4/b;

    invoke-direct {v7, v1}, LE4/b;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v3, Lv2/B0;->s:Ljava/lang/Float;

    goto :goto_4

    :cond_14
    move v5, v4

    :cond_15
    :goto_4
    iget-object v3, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v6, "[VideoSwitch] camera pick: videoRecordState = "

    invoke-static {v5, v6}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v6, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3}, LWh/a;->g()LWh/a;

    const-string v4, "pref_video_recorder_switch_state"

    invoke-virtual {v3, v5, v4}, LWh/a;->p(ILjava/lang/String;)LWh/a;

    invoke-virtual {v3}, LWh/a;->c()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-static {}, LU6/c;->h()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/base/StartControl;->setRecording(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    return-void
.end method

.method public final h5()Z
    .locals 1

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hb(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isCinematicDollySupported"
        type = 0x0
    .end annotation

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->setCinematicDollyZoomSnapEnable(Z)V

    return-void
.end method

.method public final i()V
    .locals 7

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-object v0, v0, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    iget-object v1, v0, Lx8/d;->V:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lx8/d;->V:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    invoke-virtual {v0, v1}, Lz4/I;->d(Z)V

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    iget-object v0, v0, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lz4/C;->Cr(Z)V

    iget-object v0, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    iget-object v0, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f140111

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_2

    iput-boolean v1, v0, Lz4/I;->p:Z

    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v0, v2, v1}, Lz4/I;->e(IZ)V

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget-object v0, v0, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    :cond_2
    iget-boolean v0, p0, Lz4/C;->t:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "processingPause->STATE_HIDE"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget-object v0, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Li0/E;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v0, 0xb7

    const/4 v1, 0x0

    if-eq v6, v0, :cond_7

    const/16 v0, 0xbe

    if-eq v6, v0, :cond_5

    const/16 v0, 0xcc

    if-eq v6, v0, :cond_4

    const/16 v0, 0xce

    if-eq v6, v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    const/4 v2, 0x1

    const/16 v3, 0xc4

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    return-void

    :cond_5
    new-instance v0, Lz4/C$m;

    invoke-direct {v0, p0}, Lz4/C$m;-><init>(Lz4/C;)V

    iget-object v2, p0, Lz4/C;->I:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lz4/C;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lz4/C;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    return-void

    :cond_6
    invoke-virtual {v0, v1}, Lz4/C$m;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :cond_7
    new-instance v0, Lz4/C$l;

    invoke-direct {v0, p0}, Lz4/C$l;-><init>(Lz4/C;)V

    iget-object v2, p0, Lz4/C;->I:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lz4/C;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lz4/C;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    return-void

    :cond_8
    invoke-virtual {v0, v1}, Lz4/C$l;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public final i0()F
    .locals 0

    iget-object p0, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result p0

    return p0
.end method

.method public final ic()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportDownCapture"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/L2;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, LV9/L2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final initView(Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lz4/C;->b0:I

    const v0, 0x7f0b0ac8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lz4/C;->h:Landroid/widget/FrameLayout;

    sget v1, Lz4/C;->r0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0156

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0b0bc8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0b0bc6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lz4/C;->j:Landroid/widget/ImageView;

    const v0, 0x7f0b0bc7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lz4/C;->k:Landroid/widget/ImageView;

    const v0, 0x7f0b09ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lz4/C;->d:Landroid/widget/FrameLayout;

    sget v1, Lz4/C;->s0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0b09b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    new-instance v0, Lz4/I;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b0bbc

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0b0bba

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v0, v1, v3, v4}, Lz4/I;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lz4/C;->f:Lz4/I;

    sget v0, Lz4/C;->t0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraSnapView;->setSnapListener(Lq8/w0;)V

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraSnapView;->setSuspendShutterListener(Lcom/android/camera/ui/CameraSnapView$b;)V

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    iget-boolean v0, p0, Lz4/C;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lz4/C;->L:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lz4/C;->M:I

    iget-object v0, p0, Lz4/C;->j:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lz4/C;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lz4/C;->n0:Lz4/C$i;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lz4/C;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lz4/C;->n0:Lz4/C$i;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget-object v1, p0, Lz4/C;->n0:Lz4/C$i;

    iget-object v0, v0, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->Q()Z

    move-result v0

    iput-boolean v0, p0, Lz4/C;->s:Z

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->X()Z

    move-result v0

    iput-boolean v0, p0, Lz4/C;->t:Z

    iget-object v0, p0, Lz4/C;->U:Ljava/util/ArrayList;

    iget-object v1, p0, Lz4/C;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lz4/C;->U:Ljava/util/ArrayList;

    iget-object v1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lz4/C;->U:Ljava/util/ArrayList;

    iget-object v1, p0, Lz4/C;->f:Lz4/I;

    iget-object v1, v1, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->initView(Landroid/view/View;)V

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lz4/C;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public final isSupportDragVideo()Z
    .locals 2

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LU6/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LU6/b;-><init>(I)V

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

.method public final k()Z
    .locals 8

    iget-boolean v0, p0, Lz4/C;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lz4/C;->n:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v2, 0xa2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_7

    const/16 v2, 0xa4

    if-eq v0, v2, :cond_7

    const/16 v2, 0xa9

    if-eq v0, v2, :cond_7

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_7

    const/16 v2, 0xb7

    if-eq v0, v2, :cond_3

    const/16 v2, 0xbe

    if-eq v0, v2, :cond_3

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd6

    if-eq v0, v2, :cond_7

    const/16 v2, 0xe6

    if-eq v0, v2, :cond_1

    const/16 v2, 0xce

    if-eq v0, v2, :cond_2

    const/16 v2, 0xcf

    if-eq v0, v2, :cond_7

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/a;

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->o:Lcom/android/camera/module/W;

    check-cast p0, Lcom/android/camera/features/mode/sticker/StickerModule;

    invoke-virtual {p0}, Lcom/android/camera/features/mode/sticker/StickerModule;->onPauseButtonClick()V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    instance-of v1, v0, Lcom/xiaomi/microfilm/dualcam/mode/DualVideoRecordModule;

    if-eqz v1, :cond_8

    iput-boolean v3, p0, Lz4/C;->N:Z

    check-cast v0, Lcom/xiaomi/microfilm/dualcam/mode/DualVideoRecordModule;

    invoke-virtual {v0}, Lcom/xiaomi/microfilm/dualcam/mode/DualVideoRecordModule;->onPauseButtonClick()V

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lz4/C;->Q:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    const-wide/16 v6, 0x1f4

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    return v1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lz4/C;->Q:J

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v2

    iget-object v2, v2, Loh/b;->o:Lcom/android/camera/module/W;

    instance-of v2, v2, Lcom/xiaomi/microfilm/milive/mode/MiLiveModule;

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v2

    iget-object v2, v2, Loh/b;->o:Lcom/android/camera/module/W;

    instance-of v2, v2, Lcom/xiaomi/milive/mode/MiLiveMasterModule;

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->o:Lcom/android/camera/module/W;

    check-cast p0, Lcom/android/camera/module/S;

    invoke-interface {p0}, Lcom/android/camera/module/S;->onPauseButtonClick()V

    goto :goto_1

    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick: recording pause is not allowed!!!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    check-cast v0, Lcom/android/camera/module/VideoModule;

    iput-boolean v3, p0, Lz4/C;->N:Z

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onPauseButtonClick()V

    :cond_8
    :goto_1
    return v3

    :cond_9
    :goto_2
    return v1
.end method

.method public final k5(FZZ)V
    .locals 1

    if-eqz p2, :cond_1

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p0}, Lcom/android/camera/data/data/j;->N(I)F

    move-result p0

    invoke-static {}, LV6/d;->a()Ljava/util/Optional;

    move-result-object p2

    new-instance p3, LT9/E;

    const/4 v0, 0x5

    invoke-direct {p3, v0}, LT9/E;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    sget-object p3, Lf9/b;->a:Landroid/util/Range;

    invoke-virtual {p2, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Range;

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, LQ6/B0;->b()LQ6/B0;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 p2, 0x7

    invoke-interface {p0, p1, p2}, LQ6/B0;->F4(FI)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :cond_3
    :goto_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    iput p2, p1, Lv2/D0;->F:I

    if-eqz p3, :cond_5

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 p2, 0xa3

    if-ne p1, p2, :cond_5

    invoke-static {}, Lcom/android/camera/data/data/w;->V()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_1

    :cond_4
    const/4 p1, 0x3

    :goto_1
    invoke-static {p1}, Lcom/android/camera/data/data/w;->Z0(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lz4/C;->Sg(Landroid/view/View;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final kf()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lz4/C;->U7(Z)V

    new-instance v0, Lz4/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lz4/C;->f0:Lz4/C$h;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final l5()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object p0

    invoke-virtual {p0}, LF1/B4;->a()V

    :cond_0
    return-void
.end method

.method public final lr()Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object v1

    iget-object v1, v1, LF1/B4;->d:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070258

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    iget-object v2, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "ThumbnailGlobalRect: "

    invoke-static {v1, v3}, LCs/V;->c(Landroid/graphics/Rect;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result p0

    invoke-virtual {v0}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object v0

    iput-object v1, v0, LF1/B4;->d:Landroid/graphics/Rect;

    iput p0, v0, LF1/B4;->e:F

    return-object v1
.end method

.method public final m0(LF1/w4;ZIZ)V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget-boolean v1, v1, Lu2/Q;->t:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq p3, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    iget-object v2, p3, LF1/B4;->a:LF1/w4;

    if-eq v2, p1, :cond_2

    invoke-virtual {p3, p1, v1, v1, v0}, LF1/B4;->d(LF1/w4;ZZZ)V

    iget-object p3, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "inconsistent thumbnail"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p3, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object p3, p0, Lz4/C;->f0:Lz4/C$h;

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lz4/C;->J:Z

    iget-object p3, p0, Lz4/C;->l:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eq p3, v3, :cond_3

    iget-object p3, p0, Lz4/C;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-boolean p3, p0, Lz4/C;->s:Z

    if-eqz p3, :cond_4

    goto/16 :goto_3

    :cond_4
    if-nez p1, :cond_6

    if-eqz p4, :cond_e

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "updateThumbnail: remove image"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lz4/C;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-boolean p2, LJe/c;->k:Z

    sget-object p2, LJe/c$b;->a:LJe/c;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result p2

    if-eqz p2, :cond_5

    const p2, 0x7f070231

    goto :goto_0

    :cond_5
    const p2, 0x7f070230

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p2, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, LQ6/w0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LKh/c;

    const/16 p2, 0x13

    invoke-direct {p1, p2}, LKh/c;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget-boolean p4, LJe/c;->k:Z

    sget-object p4, LJe/c$b;->a:LJe/c;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x7f070259

    goto :goto_1

    :cond_7
    const v2, 0x7f070258

    :goto_1
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070238

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-boolean v5, p0, Lz4/C;->g0:Z

    if-nez v5, :cond_e

    invoke-virtual {p1}, LF1/w4;->r()V

    iget-object v5, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateThumbnail: update image: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lz4/C;->j:Landroid/widget/ImageView;

    iget-object v6, p1, LF1/w4;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v4, :cond_8

    iget-object v5, p4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->u5()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lz4/C;->k:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lz4/C;->k:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object v5, p0, Lz4/C;->k:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5, p3, p3, p3, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p3, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    invoke-virtual {p3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p3

    const-class v5, Lw7/c;

    invoke-virtual {p3, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lw7/c;

    invoke-virtual {p3}, Lw7/c;->b()Z

    move-result p3

    if-eqz p2, :cond_a

    iget-boolean p2, p0, Lz4/C;->n:Z

    if-nez p2, :cond_a

    if-nez p3, :cond_a

    iget-boolean p2, p0, Lz4/C;->K:Z

    if-eqz p2, :cond_9

    goto :goto_2

    :cond_9
    move v0, v1

    :cond_a
    :goto_2
    invoke-static {}, LQ6/w0;->a()Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lz4/v;

    invoke-direct {p3, p1, v0}, Lz4/v;-><init>(LF1/w4;Z)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_b

    iget-object p0, p0, Lz4/C;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_b
    iget-object p1, p4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->u5()Z

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_d

    if-nez v4, :cond_c

    iget-object p0, p0, Lz4/C;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_c
    iget-object p1, p0, Lz4/C;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-static {p1}, Li0/E;->a(Landroid/view/View;)Li0/N;

    move-result-object p1

    invoke-virtual {p1}, Li0/N;->b()V

    iget-object p1, p0, Lz4/C;->k:Landroid/widget/ImageView;

    invoke-static {p1}, Li0/E;->a(Landroid/view/View;)Li0/N;

    move-result-object p1

    invoke-virtual {p1}, Li0/N;->b()V

    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lz4/C;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    int-to-float p3, v2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    const p3, 0x3c23d70a    # 0.01f

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lz4/C;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lz4/C;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, LLy/g;

    invoke-direct {p2}, LLy/g;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lz4/F;

    invoke-direct {p2, p0}, Lz4/F;-><init>(Lz4/C;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_d
    iget-object p1, p0, Lz4/C;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    const p3, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    const p3, 0x3fa66666    # 1.3f

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x50

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lz4/E;

    invoke-direct {p2, p0}, Lz4/E;-><init>(Lz4/C;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_e
    :goto_3
    return-void
.end method

.method public final m2(I)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f0b0be7

    if-eqz p1, :cond_3

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lz4/C;->Fr(Z)V

    iget-object v1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v1}, LS1/i;->e(Landroid/view/View;)V

    iget-object v1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lz4/C;->f:Lz4/I;

    iget-object p1, p1, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lz4/C;->f:Lz4/I;

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, p0, v0}, Lz4/I;->h(Landroid/view/View$OnClickListener;I)V

    return-void

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lz4/C;->Fr(Z)V

    iget-object p1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p1}, LS1/i;->e(Landroid/view/View;)V

    iget-object p1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lz4/C;->f:Lz4/I;

    iget-object p1, p1, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lz4/C;->f:Lz4/I;

    iget-object p1, p1, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lz4/C;->f:Lz4/I;

    iget-object p0, p0, Lz4/I;->a:Landroid/view/ViewGroup;

    const/16 p1, 0xc9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x7f0b0840

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final m9(I)V
    .locals 0

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->setSnapNumValue(I)V

    return-void
.end method

.method public final me()V
    .locals 2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/F0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    iget-object v0, v0, Lv2/F0;->b:Lv2/G0;

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v1

    iput-boolean v1, v0, Lv2/G0;->c:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lv2/G0;->b:Z

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lv2/G0;)V

    return-void
.end method

.method public final n()V
    .locals 8

    iget-boolean v0, p0, Lz4/C;->t:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "processingResume->STATE_HIDE"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-object v0, v0, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LN6/h$a;->a:LN6/h;

    const-class v2, LQ6/r0;

    invoke-virtual {v1, v2}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object v1

    check-cast v1, LQ6/r0;

    if-eqz v1, :cond_1

    invoke-interface {v1}, LQ6/r0;->getRecordSpeed()F

    move-result v2

    iput v2, v0, Lx8/d;->T:F

    invoke-interface {v1}, LQ6/r0;->getTotalRecordingTime()J

    move-result-wide v2

    iput-wide v2, v0, Lx8/d;->U:J

    invoke-interface {v1}, LQ6/r0;->getStartRecordingTime()J

    move-result-wide v1

    iput-wide v1, v0, Lx8/d;->S:J

    :cond_1
    iget-object v1, v0, Lx8/d;->V:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/Animator;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lx8/d;->V:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    :cond_2
    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_3

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    invoke-virtual {v0, v7}, Lz4/I;->d(Z)V

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    iget-object v0, v0, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lz4/C;->N:Z

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p0, v7}, Lz4/C;->Cr(Z)V

    iget-object v0, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    iget-object v0, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f14010f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iput-boolean v7, p0, Lz4/C;->N:Z

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_5

    iput-boolean v7, v0, Lz4/I;->p:Z

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v0, v1, v7}, Lz4/I;->e(IZ)V

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget-object v0, v0, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    :cond_5
    invoke-static {}, LQ6/K0;->b()LQ6/K0;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, LQ6/K0;->G8()V

    :cond_6
    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v0, 0xb7

    if-eq v6, v0, :cond_8

    const/16 v0, 0xbe

    if-eq v6, v0, :cond_8

    const/16 v0, 0xcc

    if-eq v6, v0, :cond_7

    const/16 v0, 0xce

    if-eq v6, v0, :cond_7

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    const/4 v2, 0x1

    const/16 v3, 0xc6

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    return-void

    :cond_8
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->W1()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x1

    const/16 v3, 0xc6

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/F0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    iget-object v0, v0, Lv2/F0;->b:Lv2/G0;

    invoke-virtual {v0}, Lv2/G0;->b()Lv2/G0;

    move-result-object v0

    iget-object v1, p0, Lz4/C;->f:Lz4/I;

    iget-boolean v1, v1, Lz4/I;->h:Z

    if-eqz v1, :cond_a

    iget v0, v0, Lv2/G0;->e:I

    invoke-static {v0, v7}, LPq/b;->K(IZ)Z

    move-result v0

    iget-object v1, p0, Lz4/C;->f:Lz4/I;

    iget-object v1, v1, Lz4/I;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Lcom/android/camera/fragment/m;->f(Z[Landroid/view/View;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x1

    const/16 v3, 0xc0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_a
    :goto_1
    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_b

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x1

    const/16 v3, 0xc0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_b
    iget-object v0, p0, Lz4/C;->k0:Lz4/I;

    if-eqz v0, :cond_c

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x0

    const/16 v3, 0xc0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lz4/C;->k0:Lz4/I;

    const/16 v1, 0xc0

    iput v1, v0, Lz4/I;->e:I

    :cond_c
    :goto_2
    return-void
.end method

.method public final ng()Z
    .locals 0

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/ui/CameraSnapView;->n:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyAfterFrameAvailable(I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->notifyAfterFrameAvailable(I)V

    sget-object p1, LF1/D2;->f:LF1/D2;

    iget-boolean p1, p1, LF1/D2;->d:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lz4/C;->a:Z

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lz4/C;->a:Z

    iget-object p1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    invoke-virtual {p0}, Lz4/C;->Ar()V

    iget-object p1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lz4/C;->O:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v2, 0xac

    if-ne p1, v2, :cond_1

    invoke-static {}, LU6/c;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "notifyAfterFrameAvailable: slow-motion still in progress"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v3, 0xaf

    if-ne v2, v3, :cond_2

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->v5()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/c0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/c0;

    if-eqz v2, :cond_2

    iget-boolean v2, v2, Lr2/c0;->p:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "notifyAfterFrameAvailable: pixel capture still in progress"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iget v3, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v4, 0xe8

    if-ne v3, v4, :cond_3

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    iget-boolean v3, v3, Lv2/D0;->P:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v4, "notifyAfterFrameAvailable: id-photo still in progress"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-nez p1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lz4/C;->e()V

    :cond_4
    iget-object p1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget v4, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v4}, Lv2/G0;->c(I)Lv2/G0;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v6, -0x1

    invoke-static {v5, v6}, LPq/b;->C(II)I

    move-result v5

    iput v5, v4, Lv2/G0;->e:I

    iget v5, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v5}, LPq/b;->G(I)Z

    move-result v5

    iput-boolean v5, v4, Lv2/G0;->d:Z

    iget v5, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v5}, LPq/b;->H(I)V

    iget v5, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v5}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v5

    iput-boolean v5, v4, Lv2/G0;->c:Z

    invoke-virtual {p1, v4}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lv2/G0;)V

    iget-object p1, p0, Lz4/C;->h0:LF8/c;

    if-eqz p1, :cond_5

    iget v4, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v4}, Lv2/G0;->c(I)Lv2/G0;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v5, v6}, LPq/b;->C(II)I

    move-result v5

    iput v5, v4, Lv2/G0;->e:I

    iget v5, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v5}, LPq/b;->G(I)Z

    move-result v5

    iput-boolean v5, v4, Lv2/G0;->d:Z

    iget v5, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v5}, LPq/b;->H(I)V

    iget v5, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v5}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v5

    iput-boolean v5, v4, Lv2/G0;->c:Z

    invoke-interface {p1, v4}, LF8/c;->setParameters(Lv2/G0;)V

    :cond_5
    if-nez v2, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    iget-object p1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->getCameraSnapAnimateDrawable()Lx8/d;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lx8/d;->j()V

    iget-object p1, p1, Lx8/d;->e:Lx8/y;

    iput-boolean v0, p1, Lx8/y;->h0:Z

    :cond_7
    iget-object p1, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    iget-object v2, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, p0, Lz4/C;->T:Landroid/widget/ImageView;

    iget-object v4, p0, Lz4/C;->f:Lz4/I;

    iget-object v4, v4, Lz4/I;->a:Landroid/view/ViewGroup;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/view/View;

    aput-object p1, v5, v1

    aput-object v2, v5, v0

    const/4 p1, 0x2

    aput-object v3, v5, p1

    const/4 p1, 0x3

    aput-object v4, v5, p1

    const p1, 0x3f666666    # 0.9f

    invoke-static {p1, v5}, LS1/i;->j(F[Landroid/view/View;)V

    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v3, 0xa2

    if-ne v2, v3, :cond_8

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lz4/C;->j0:Lz4/I;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lz4/I;->a:Landroid/view/ViewGroup;

    new-array v0, v0, [Landroid/view/View;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, LS1/i;->j(F[Landroid/view/View;)V

    :cond_8
    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, LQ6/L0;->b()LQ6/L0;

    move-result-object v0

    invoke-interface {v0, p1}, LQ6/L0;->A3(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0, v1}, Lz4/C;->m2(I)V

    iget-object p1, p0, Lz4/C;->q0:Lcom/android/camera/data/observeable/VMFeature;

    if-nez p1, :cond_9

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object p1

    const-class v0, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {p1, v0}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/VMFeature;

    iput-object p1, p0, Lz4/C;->q0:Lcom/android/camera/data/observeable/VMFeature;

    new-instance v0, Lc6/H;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lc6/H;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/data/observeable/VMFeature;->startObservable(Landroidx/lifecycle/x;Lio/reactivex/functions/d;)V

    :cond_9
    invoke-virtual {p0}, Lz4/C;->Og()V

    return-void
.end method

.method public final notifyDataChanged(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/h;->notifyDataChanged(II)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p2

    invoke-virtual {p2}, Lu2/Q;->Q()Z

    move-result p2

    iget-boolean v0, p0, Lz4/C;->s:Z

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    iput-boolean p2, p0, Lz4/C;->s:Z

    invoke-virtual {p0, v1}, Lz4/C;->tr(Z)V

    :cond_0
    iput-boolean v1, p0, Lz4/C;->J:Z

    sget-object p2, LF1/D2;->f:LF1/D2;

    iget-boolean p2, p2, LF1/D2;->d:Z

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v0, 0xa2

    const v1, 0x7f14010a

    const v2, 0x7f14010e

    if-eq p2, v0, :cond_4

    const/16 v0, 0xb7

    if-eq p2, v0, :cond_6

    const/16 v0, 0xbe

    if-eq p2, v0, :cond_6

    const/16 v0, 0xcc

    if-eq p2, v0, :cond_2

    const/16 v0, 0xce

    if-eq p2, v0, :cond_2

    const/16 v0, 0xdc

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_0
    iget-object p2, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    sget-boolean p2, LJe/c;->k:Z

    sget-object p2, LJe/c$b;->a:LJe/c;

    invoke-virtual {p2}, LJe/c;->I0()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lz4/C;->Gr()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p2

    invoke-virtual {p2}, Lu2/Q;->X()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lz4/C;->Gr()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-boolean p2, p0, Lz4/C;->n:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const v0, 0x7f14010d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    :goto_0
    iget-object p2, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_9

    sget-object p1, Lf2/a;->f:Lf2/a;

    iget-boolean p1, p1, Lf2/a;->b:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lz4/C;->K3()V

    invoke-virtual {p0}, Lz4/C;->Br()V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final notifyLayoutChange()V
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-boolean v1, v0, Lcom/android/camera/ui/CameraSnapView;->m:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->b0:Lcom/android/camera/ui/CameraSnapView$a;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v2, v0, Lcom/android/camera/ui/CameraSnapView;->m:Z

    :cond_0
    iput-boolean v2, p0, Lz4/C;->K:Z

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->p(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->getCameraMainViewModel()Loh/b;

    move-result-object v0

    invoke-virtual {v0}, Loh/b;->l()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LV9/p;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0, v0}, LV9/p;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-super {p0}, Lcom/android/camera/fragment/b;->notifyLayoutChange()V

    iget-object v0, p0, Lz4/C;->b:Lz4/g;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->isLandScape()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, LK2/e;->n:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v1

    :goto_1
    iget-object v3, p0, Lz4/C;->b:Lz4/g;

    iget-object v4, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_3

    iget v0, v0, Lz4/I;->d:I

    const/16 v6, 0xce

    if-ne v0, v6, :cond_3

    move v8, v1

    goto :goto_2

    :cond_3
    move v8, v2

    :goto_2
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lz4/i;->c(Lz4/g;Landroid/view/ViewGroup;ZZZZ)V

    :cond_4
    sget-object v0, Lf2/a;->f:Lf2/a;

    iget-boolean v0, v0, Lf2/a;->b:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lz4/C;->K3()V

    invoke-virtual {p0}, Lz4/C;->Br()V

    :cond_5
    invoke-virtual {p0}, Lz4/C;->qr()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lz4/C;->Og()V

    :cond_6
    return-void
.end method

.method public final notifyPreviewRectChange(LZ5/h;Landroid/graphics/Rect;FLZ5/p;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/b;->notifyPreviewRectChange(LZ5/h;Landroid/graphics/Rect;FLZ5/p;)V

    iget-object p2, p0, Lz4/C;->b:Lz4/g;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 p4, 0x2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    if-eq p2, p4, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lz4/C;->b:Lz4/g;

    iget-object p0, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    const/4 p2, -0x1

    iput p2, p1, Lz4/g;->d:I

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p0, p2}, Lz4/i;->b(Lz4/g;Landroid/view/ViewGroup;F)V

    return-void

    :cond_2
    iget-object p1, p0, Lz4/C;->b:Lz4/g;

    iget-object p0, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-static {p1, p0, p3}, Lz4/i;->b(Lz4/g;Landroid/view/ViewGroup;F)V

    return-void

    :cond_3
    iget-object p0, p0, Lz4/C;->b:Lz4/g;

    invoke-interface {p1}, LZ5/h;->h0()LZ5/l;

    move-result-object p1

    sget-object p2, LZ5/l;->e:LZ5/l;

    const/4 p3, 0x0

    const-string v1, "BottomLayoutFactory"

    if-ne p1, p2, :cond_4

    invoke-static {}, LK2/b;->O()Z

    move-result p2

    if-eqz p2, :cond_4

    iput v0, p0, Lz4/g;->d:I

    const-string/jumbo p0, "updateAnimationNeeded: 1"

    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    sget-object p2, LZ5/l;->h:LZ5/l;

    if-ne p1, p2, :cond_5

    invoke-static {}, LK2/b;->R()Z

    move-result p1

    if-eqz p1, :cond_5

    iput p4, p0, Lz4/g;->d:I

    const-string/jumbo p0, "updateAnimationNeeded: 2"

    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final notifyThemeChanged(II)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFlashScreenHalo"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lz4/C;->Lr()V

    invoke-virtual {p0}, Lz4/C;->K3()V

    invoke-virtual {p0}, Lz4/C;->Br()V

    invoke-virtual {p0}, Lz4/C;->Ar()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lz4/C;->tr(Z)V

    invoke-static {}, LK2/b;->b0()Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v0, 0xa2

    if-ne p2, v0, :cond_2

    invoke-static {}, LU6/c;->j()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lz4/C;->N:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lz4/C;->Cr(Z)V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lz4/C;->Cr(Z)V

    :cond_3
    return-void
.end method

.method public final onAgentResultCallback(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p2, "onAgentResultCallback ignored resultCode="

    invoke-static {p1, p2}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: disabled"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: null action"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, LQ6/G0;->b()LQ6/G0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, LQ6/G0;->c8()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: mode changing."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/i;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, LF1/i;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: top menu showing"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LEs/M;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, LEs/M;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: optical zooming "

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v2

    invoke-interface {v2}, Lj6/i;->isIgnoreTouchEvent()Z

    move-result v2

    const v3, 0x7f0b0bc8

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lz4/C;->t:Z

    if-nez v2, :cond_6

    invoke-interface {v0}, Lcom/android/camera/module/W;->isShot2GalleryOrEnableParallel()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v3, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: ignore click event, because module isn\'t ready"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0b0bc6

    if-eq v2, v3, :cond_7

    invoke-static {}, LQ5/M;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LC4/q;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, LC4/q;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onClick: unknown view id "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :sswitch_0
    invoke-virtual {p0}, Lz4/C;->zr()V

    return-void

    :sswitch_1
    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick: v9_recording_pause"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz4/C;->k()Z

    return-void

    :sswitch_2
    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/h;->isViewVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lz4/C;->zr()V

    return-void

    :sswitch_3
    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick: mimoji_create_back"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LU6/c;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lz4/C;->T:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :cond_9
    invoke-static {}, LKs/f;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/O;

    const/16 v0, 0x17

    invoke-direct {p1, v0}, LEs/O;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance p0, Lgq/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "key_mimoji_click"

    iput-object p1, p0, Lgq/h;->a:Ljava/lang/String;

    new-instance p1, Lgq/f;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p1, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p1, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p1, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lgq/h;->b:Lgq/f;

    const-string p1, "attr_feature_name"

    const-string v0, "mimoji_click_create_back"

    const-string v1, "attr_operate_state"

    const-string v2, "create"

    invoke-static {p0, p1, v0, v1, v2}, LMv/a;->b(Lgq/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_4
    invoke-virtual {p0, p1, v0, v1}, Lz4/C;->yr(Landroid/view/View;Lcom/android/camera/module/W;Z)V

    return-void

    :sswitch_5
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lz4/C;->yr(Landroid/view/View;Lcom/android/camera/module/W;Z)V

    return-void

    :sswitch_6
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: bottom_external_mode_layout"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LU6/c;->b()Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_0

    :cond_a
    invoke-static {}, LU6/c;->i()Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    :goto_0
    return-void

    :cond_c
    invoke-static {}, LQ6/G0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LC4/s;

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LC4/s;-><init>(IB)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b0148 -> :sswitch_6
        0x7f0b018e -> :sswitch_5
        0x7f0b0463 -> :sswitch_4
        0x7f0b06de -> :sswitch_3
        0x7f0b08cf -> :sswitch_4
        0x7f0b0ac8 -> :sswitch_2
        0x7f0b0bba -> :sswitch_4
        0x7f0b0bbc -> :sswitch_4
        0x7f0b0bc1 -> :sswitch_1
        0x7f0b0bc6 -> :sswitch_0
        0x7f0b0bc8 -> :sswitch_2
        0x7f0b0cd1 -> :sswitch_4
    .end sparse-switch
.end method

.method public final onGetShareFrameSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetShareFrameSuccess "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mPendingSceneRecognition=false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, LJg/a;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onGetShareFrameSuccess: triggered by agent tool, skip UI auto-submit"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LC4/E;

    const/16 p2, 0x16

    invoke-direct {p1, p2}, LC4/E;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onPause()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lz4/C;->qr()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz4/C;->W9(Z)V

    iget-object v1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraSnapView;->setCancelRespond(Z)V

    iget-object v1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-boolean v3, v1, Lcom/android/camera/ui/CameraSnapView;->m:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/camera/ui/CameraSnapView;->b0:Lcom/android/camera/ui/CameraSnapView$a;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v0, v1, Lcom/android/camera/ui/CameraSnapView;->m:Z

    :cond_0
    iget-object v1, p0, Lz4/C;->h0:LF8/c;

    if-eqz v1, :cond_2

    check-cast v1, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->k(Z)V

    iget-object p0, p0, Lz4/C;->h0:LF8/c;

    check-cast p0, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    iget-object v1, p0, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->Q:Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->p:Lx8/J;

    invoke-virtual {p0, v0, v2}, Lx8/J;->F(ZZ)V

    :cond_2
    invoke-static {}, LV6/b;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF4/g;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LF4/g;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class v0, LQ6/E0;

    invoke-virtual {p0, v0}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LC4/C;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, LC4/C;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/fragment/h;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz4/C;->a:Z

    iget-boolean v0, p0, Lz4/C;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v0, p0, v2}, Lz4/I;->h(Landroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "onResume->STATE_SHOW"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v1}, Lz4/C;->tr(Z)V

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    iget-boolean p0, p0, Lz4/C;->n:Z

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/android/camera/data/data/j;->k1(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, LV6/b;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF4/e;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LF4/e;-><init>(IB)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public final onShot(Le2/h;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->onShot(Le2/h;)V

    invoke-static {}, LQ6/w0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LA3/b;

    const/16 v2, 0xd

    invoke-direct {v1, p1, v2}, LA3/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/android/camera/data/data/E;->B0(Z)V

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v0

    invoke-virtual {p0}, Lz4/C;->wr()Z

    move-result v2

    invoke-static {p1, v1, v1, v0, v2}, Ly4/b;->b(IZZZZ)Ly4/b;

    move-result-object p1

    invoke-virtual {p1}, Ly4/b;->a()V

    invoke-virtual {p0}, Lz4/C;->or()Lx8/d;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Ly4/b;->a:I

    const/16 v2, 0xa7

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p1, Ly4/b;->k:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lx8/d;->g:Lx8/r;

    invoke-virtual {p1, v1}, Lx8/r;->u(I)V

    iget-object p1, p0, Lx8/d;->d:Lx8/t;

    invoke-virtual {p1, v1}, Lx8/t;->s(Z)V

    iget-object p1, p0, Lx8/d;->d:Lx8/t;

    iget v0, p1, Lt8/c;->g:F

    invoke-virtual {p1, v0}, Lt8/c;->o(F)Lt8/c;

    iget-object p1, p0, Lx8/d;->d:Lx8/t;

    iget v0, p1, Lt8/c;->i:I

    invoke-virtual {p1, v0}, Lt8/c;->i(I)V

    iget-object p1, p0, Lx8/d;->d:Lx8/t;

    invoke-virtual {p1}, Lt8/c;->h()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_1
    invoke-static {v0}, Lcom/android/camera/data/data/E;->B0(Z)V

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v2

    invoke-virtual {p0}, Lz4/C;->wr()Z

    move-result v3

    invoke-static {p1, v1, v0, v2, v3}, Ly4/b;->b(IZZZZ)Ly4/b;

    move-result-object p1

    invoke-virtual {p1}, Ly4/b;->a()V

    invoke-virtual {p0}, Lz4/C;->or()Lx8/d;

    move-result-object p0

    iget-object v0, p0, Lx8/d;->f:Lx8/A;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lt8/c;->i(I)V

    invoke-virtual {v0}, Lx8/A;->h()V

    invoke-virtual {p0, p1}, Lx8/d;->u(Ly4/b;)V

    return-void

    :pswitch_2
    invoke-static {v1}, Lcom/android/camera/data/data/E;->B0(Z)V

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p1}, Lw7/j;->L(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v2

    invoke-virtual {p0}, Lz4/C;->wr()Z

    move-result v3

    invoke-static {p1, v1, v0, v2, v3}, Ly4/b;->b(IZZZZ)Ly4/b;

    move-result-object p1

    invoke-virtual {p1}, Ly4/b;->a()V

    invoke-virtual {p0}, Lz4/C;->or()Lx8/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lx8/d;->o(Ly4/b;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_3
    invoke-static {v1}, Lcom/android/camera/data/data/E;->B0(Z)V

    return-void

    :pswitch_4
    invoke-static {v0}, Lcom/android/camera/data/data/E;->B0(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStop()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onStop"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lz4/C;->K:Z

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraSnapView;->p(Z)V

    iput-boolean v1, p0, Lz4/C;->N:Z

    return-void
.end method

.method public final or()Lx8/d;
    .locals 2

    iget-object v0, p0, Lz4/C;->h0:LF8/c;

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    iget-boolean v1, v1, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->n:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, LF8/c;->getSuspendShutterAnimateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lx8/d;

    return-object p0

    :cond_0
    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->getCameraSnapAnimateDrawable()Lx8/d;

    move-result-object p0

    return-object p0
.end method

.method public final p0()V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0, v2}, Lz4/C;->rr(Z)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/camera/module/VideoModule;

    if-nez p0, :cond_13

    :goto_0
    invoke-static {v2}, LK7/l;->c(Z)V

    :goto_1
    invoke-static {}, LA3/m;->c()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onSnapClick: no camera action"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "NoCameraAction"

    sput-object p0, LK7/l;->n:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/camera/module/VideoModule;

    if-nez p0, :cond_13

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :try_start_2
    invoke-static {}, LQ6/G0;->b()LQ6/G0;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, LQ6/G0;->c8()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onSnapClick: mode changing."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "ModeChanging"

    sput-object p0, LK7/l;->n:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/camera/module/VideoModule;

    if-nez p0, :cond_13

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    iget-boolean v4, v4, Lv2/D0;->B:Z

    if-eqz v4, :cond_4

    invoke-static {}, LU6/c;->a()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, LQ6/j1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE4/i;

    invoke-direct {v0, v1}, LE4/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    const-string p0, "TimerShooting"

    sput-object p0, LK7/l;->n:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/camera/module/VideoModule;

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Camera;

    if-eqz v4, :cond_5

    iget-object v4, v4, Lcom/android/camera/Camera;->D1:LF1/X3;

    if-eqz v4, :cond_5

    iput-boolean v0, v4, LF1/X3;->a:Z

    invoke-virtual {v4}, LF1/X3;->f()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v6, v4, LF1/X3;->g:Z

    if-nez v6, :cond_5

    new-instance v6, LF1/g0;

    invoke-direct {v6, v4, v0}, LF1/g0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget v4, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v5, 0xa1

    const/16 v6, 0xa

    const-string v7, "onSnapClick"

    if-eq v4, v5, :cond_11

    const/16 v5, 0xa2

    if-eq v4, v5, :cond_11

    const/16 v5, 0xa4

    if-eq v4, v5, :cond_11

    const/16 v5, 0xa6

    if-eq v4, v5, :cond_f

    const/16 v5, 0xa9

    if-eq v4, v5, :cond_11

    const/16 v5, 0xac

    if-eq v4, v5, :cond_11

    const/16 v5, 0xd3

    if-eq v4, v5, :cond_11

    const/16 v5, 0xd6

    if-eq v4, v5, :cond_11

    const/16 v5, 0xe3

    if-eq v4, v5, :cond_d

    const/16 v1, 0xe7

    const/16 v5, 0x12

    if-eq v4, v1, :cond_c

    const/16 v1, 0xb3

    if-eq v4, v1, :cond_11

    const/16 v1, 0xb4

    if-eq v4, v1, :cond_11

    const/16 v1, 0xba

    if-eq v4, v1, :cond_6

    const/16 v1, 0xbb

    if-eq v4, v1, :cond_11

    const/16 v1, 0xbe

    if-eq v4, v1, :cond_11

    const/16 v1, 0xbf

    if-eq v4, v1, :cond_11

    const/16 v1, 0xcb

    if-eq v4, v1, :cond_11

    const/16 v1, 0xcc

    if-eq v4, v1, :cond_11

    const/16 v1, 0xdb

    if-eq v4, v1, :cond_11

    const/16 v1, 0xdc

    if-eq v4, v1, :cond_11

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    :try_start_5
    invoke-static {}, LHp/a;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LR3/c;

    invoke-direct {v4, v2}, LR3/c;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    const-string p0, "UINotReady"

    sput-object p0, LK7/l;->n:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/camera/module/VideoModule;

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_6
    :try_start_6
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v4, Lr2/o;

    invoke-virtual {v1, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LE3/j;

    const/16 v8, 0xd

    invoke-direct {v4, v8}, LE3/j;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_2
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v1

    const-class v4, Lw7/c;

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw7/c;

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->O6()Z

    move-result v4

    const/16 v8, 0xe6

    if-eqz v4, :cond_8

    invoke-static {}, LU6/c;->c()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v4, "onSnapClick: down capturing"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v9}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-static {}, LU6/c;->a()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lw7/c;->b()Z

    move-result v1

    if-nez v1, :cond_9

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    if-eq v1, v8, :cond_9

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onSnapClick: down block snap"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/camera/module/VideoModule;

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_8
    :try_start_7
    invoke-static {}, LU6/c;->a()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lw7/c;->b()Z

    move-result v1

    if-nez v1, :cond_9

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    if-eq v1, v8, :cond_9

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onSnapClick: block snap"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/camera/module/VideoModule;

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_9
    :goto_3
    :try_start_8
    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v4, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v4}, Lu2/Q;->E(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    iget v7, v4, Lu2/Q;->u:I

    invoke-virtual {v4, v7}, Lu2/Q;->E(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v7

    iget-object v7, v7, Lu6/f;->a:Lu6/b;

    iget v7, v7, Lu6/b;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v1, v4, v7, v9}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, LPh/h;->l(I[Ljava/lang/Object;)V

    iget-object v1, p0, Lz4/C;->h0:LF8/c;

    if-eqz v1, :cond_a

    invoke-interface {v1}, LF8/c;->getSnapFromSuspendShutter()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lz4/C;->h0:LF8/c;

    check-cast v1, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    iput-boolean v2, v1, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->q:Z

    const/16 v6, 0x96

    :cond_a
    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    if-ne p0, v8, :cond_b

    const/16 v6, 0x78

    :cond_b
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ6/q;

    invoke-interface {p0, v6}, LQ6/q;->onShutterButtonClick(I)Z

    goto/16 :goto_4

    :cond_c
    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    iget-object v4, v4, Lu6/f;->a:Lu6/b;

    iget v4, v4, Lu6/b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v1, p0, v4, v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, p0}, LPh/h;->l(I[Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ6/q;

    invoke-interface {p0, v6}, LQ6/q;->onShutterButtonClick(I)Z

    goto/16 :goto_4

    :cond_d
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/data/E;->C()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {}, LU6/c;->h()Z

    move-result p0

    if-nez p0, :cond_e

    invoke-static {}, LQ6/x;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v4, LE3/t;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, LE3/t;-><init>(I)V

    invoke-virtual {p0, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_12

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v5, LL9/m;

    invoke-direct {v5, v1}, LL9/m;-><init>(I)V

    invoke-virtual {p0, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LF1/K3;

    const/16 v4, 0x15

    invoke-direct {v1, v4}, LF1/K3;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_4

    :cond_e
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ6/q;

    invoke-interface {p0, v6}, LQ6/q;->onShutterButtonClick(I)Z

    goto :goto_4

    :cond_f
    invoke-static {}, LU6/c;->b()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onSnapClick: doing action"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "DoingAction"

    sput-object p0, LK7/l;->n:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/camera/module/VideoModule;

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_10
    :try_start_9
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ6/q;

    invoke-interface {p0, v6}, LQ6/q;->onShutterButtonClick(I)Z

    goto :goto_4

    :cond_11
    :pswitch_1
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ6/q;

    invoke-interface {p0, v6}, LQ6/q;->onShutterButtonClick(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_12
    :goto_4
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/camera/module/VideoModule;

    if-nez p0, :cond_13

    invoke-static {v0}, LK7/l;->c(Z)V

    goto/16 :goto_1

    :cond_13
    return-void

    :goto_5
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/VideoModule;

    if-nez v0, :cond_14

    invoke-static {v2}, LK7/l;->c(Z)V

    invoke-static {}, LA3/m;->c()V

    :cond_14
    throw p0

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xce
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final p2(IIII)I
    .locals 3

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/4 v0, -0x1

    if-eqz p0, :cond_7

    iget v1, p0, Lcom/android/camera/ui/CameraSnapView;->o0:I

    if-lez v1, :cond_0

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->p0:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-static {p0}, Lvr/b0;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->p0:Landroid/graphics/Rect;

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->p0:Landroid/graphics/Rect;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x5

    if-eq p1, v2, :cond_4

    const/4 p2, 0x6

    if-eq p1, p2, :cond_6

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->g()V

    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->n0:Landroid/graphics/Rect;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v0

    :cond_5
    iput p2, p0, Lcom/android/camera/ui/CameraSnapView;->o0:I

    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->o0:I

    move p1, v1

    :goto_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/camera/ui/CameraSnapView;->k(Landroid/view/MotionEvent;III)Z

    iget p0, p0, Lcom/android/camera/ui/CameraSnapView;->o0:I

    return p0

    :cond_7
    return v0
.end method

.method public final pf()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LA3/i;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, LA3/i;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final provideAnimateElement(ILjava/util/List;I)V
    .locals 25
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/b;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v5, p0

    move/from16 v7, p1

    move-object/from16 v1, p2

    move/from16 v0, p3

    const/16 v8, 0x8

    const/4 v9, 0x4

    const/4 v10, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "::provideAnimateElement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, v5, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "provideAnimateElement: newMode = "

    const-string v4, ", mCurrentMode = "

    invoke-static {v7, v3, v4}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const-string v6, ", resetType = "

    const-string v11, ", animateInElements = "

    invoke-static {v3, v4, v6, v0, v11}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v12, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/a;

    invoke-static {v2}, LK2/e;->f(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v5, v12, v7, v0, v2}, Lcom/android/camera/fragment/h;->ignoreAnimateElement(IIII)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    if-ne v0, v9, :cond_1

    move v2, v10

    goto :goto_0

    :cond_1
    move v2, v11

    :goto_0
    const/4 v13, 0x0

    if-nez v2, :cond_2

    if-eq v12, v7, :cond_9

    :cond_2
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_3

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    iget-object v3, v5, Lz4/C;->R:Lmiuix/appcompat/app/h;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lmiuix/appcompat/app/h;->dismiss()V

    iput-object v13, v5, Lz4/C;->R:Lmiuix/appcompat/app/h;

    :cond_4
    iget-object v3, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-object v4, v3, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    if-eqz v4, :cond_5

    iget-object v6, v4, Lx8/d;->d:Lx8/t;

    iput v11, v6, Lt8/c;->e:I

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {v3, v11}, Lcom/android/camera/ui/CameraSnapView;->v(Z)V

    :cond_5
    iget-boolean v3, v5, Lz4/C;->n:Z

    if-eqz v3, :cond_6

    iput-boolean v11, v5, Lz4/C;->n:Z

    iget-object v3, v5, Lz4/C;->O:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v5, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v3, v5, Lz4/C;->h0:LF8/c;

    if-eqz v3, :cond_7

    check-cast v3, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    iget-boolean v3, v3, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->n:Z

    if-eqz v3, :cond_7

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/Camera;->A1:Landroid/widget/ProgressBar;

    goto :goto_1

    :cond_7
    iget-object v3, v5, Lz4/C;->O:Landroid/widget/ProgressBar;

    :goto_1
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v5, Lz4/C;->o0:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_8

    new-array v6, v10, [Landroid/animation/Animator;

    aput-object v4, v6, v11

    invoke-static {v6}, Lwr/e;->a([Landroid/animation/Animator;)V

    :cond_8
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v5, Lz4/C;->P:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    const/16 v3, 0xb7

    const/16 v4, 0xa2

    if-eq v12, v3, :cond_a

    const/16 v3, 0xbe

    if-eq v12, v3, :cond_a

    if-ne v12, v4, :cond_c

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    iget-boolean v3, v5, Lz4/C;->n:Z

    if-eqz v3, :cond_c

    if-nez v2, :cond_c

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget v0, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    if-ne v0, v4, :cond_b

    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    if-eqz v0, :cond_b

    invoke-virtual {v5, v0}, Lz4/C;->Er(Lz4/I;)V

    :cond_b
    return-void

    :cond_c
    invoke-super/range {p0 .. p3}, Lcom/android/camera/fragment/h;->provideAnimateElement(ILjava/util/List;I)V

    const/16 v2, 0xe2

    if-eq v12, v2, :cond_d

    iget v3, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    if-ne v3, v2, :cond_e

    :cond_d
    invoke-virtual {v5, v11}, Lz4/C;->tr(Z)V

    :cond_e
    iget-object v2, v5, Lz4/C;->S:Landroid/widget/ImageView;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v5, Lz4/C;->S:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    iget-object v2, v5, Lz4/C;->S:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v2

    if-eqz v2, :cond_10

    if-ne v7, v4, :cond_10

    goto :goto_2

    :cond_10
    iput-boolean v11, v5, Lz4/C;->K:Z

    iget-object v2, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, v11}, Lcom/android/camera/ui/CameraSnapView;->p(Z)V

    iget-object v2, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iput-boolean v11, v2, Lcom/android/camera/ui/CameraSnapView;->m:Z

    :goto_2
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v14, Lv2/F0;

    invoke-virtual {v2, v14}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/F0;

    if-nez v2, :cond_11

    iget-object v0, v5, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "paintConditionReManager is null"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_11
    iget-object v2, v2, Lv2/F0;->b:Lv2/G0;

    if-nez v2, :cond_12

    iget-object v0, v5, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "conditionReferred is null"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_12
    iget v3, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v3}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v3

    iput-boolean v3, v2, Lv2/G0;->c:Z

    if-eqz v1, :cond_13

    move v3, v10

    goto :goto_3

    :cond_13
    move v3, v11

    :goto_3
    iput-boolean v3, v2, Lv2/G0;->b:Z

    const/16 v3, 0xfe

    if-eq v7, v3, :cond_14

    goto :goto_4

    :cond_14
    iput-boolean v11, v2, Lv2/G0;->b:Z

    :goto_4
    invoke-static {}, Lcom/android/camera/data/data/w;->w()I

    move-result v3

    invoke-static {v3}, LO0/A;->z(I)Z

    move-result v3

    xor-int/2addr v3, v10

    iput-boolean v3, v2, Lv2/G0;->b:Z

    iget-object v3, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lv2/G0;)V

    iget-object v3, v5, Lz4/C;->h0:LF8/c;

    if-eqz v3, :cond_15

    invoke-interface {v3, v2}, LF8/c;->setParameters(Lv2/G0;)V

    :cond_15
    invoke-virtual {v5}, Lz4/C;->qr()V

    invoke-static {v7}, Lcom/android/camera/data/data/w;->r0(I)Z

    move-result v2

    invoke-virtual {v5, v2, v10}, Lz4/C;->wo(ZZ)V

    iget-object v15, v5, Lz4/C;->U:Ljava/util/ArrayList;

    const-class v3, LFs/A;

    const/16 v4, 0xcb

    const/16 v6, 0xb8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    const/16 v13, 0x80

    if-eq v0, v13, :cond_17

    const/16 v13, 0x10

    if-eq v0, v13, :cond_17

    const/16 v13, 0x100

    if-eq v0, v13, :cond_17

    if-eq v0, v9, :cond_17

    if-eq v0, v8, :cond_17

    const/16 v13, 0x40

    if-ne v0, v13, :cond_16

    goto :goto_5

    :cond_16
    move-object v13, v3

    const/16 v18, -0x1

    goto/16 :goto_2c

    :cond_17
    :goto_5
    invoke-virtual {v5}, Lcom/xiaomi/camera/base/ui/fragments/d;->getCameraMainViewModel()Loh/b;

    move-result-object v13

    invoke-virtual {v13}, Loh/b;->l()Ljava/util/Optional;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Optional;->isPresent()Z

    move-result v16

    if-nez v16, :cond_18

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_18
    invoke-virtual {v13}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ly3/s;

    invoke-interface {v13}, Ly3/s;->g()Lz4/g;

    move-result-object v13

    iput-object v13, v5, Lz4/C;->b:Lz4/g;

    if-nez v13, :cond_19

    invoke-virtual {v5, v11}, Lz4/C;->Hr(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_19
    invoke-static {}, LQ6/K0;->a()Ljava/util/Optional;

    move-result-object v13

    new-instance v9, LC3/k;

    invoke-direct {v9, v8}, LC3/k;-><init>(I)V

    invoke-virtual {v13, v9}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v13}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-virtual {v5, v10}, Lz4/C;->Hr(Z)V

    iget-object v9, v5, Lz4/C;->h0:LF8/c;

    if-eqz v9, :cond_1a

    invoke-interface {v9}, LF8/c;->getSuspendShutterVisibility()I

    move-result v9

    if-nez v9, :cond_1a

    invoke-static {}, Lcom/android/camera/data/data/j;->P0()Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, v5, Lz4/C;->h0:LF8/c;

    check-cast v9, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_1a

    invoke-static {v9}, LU1/b;->e(Landroid/view/View;)V

    :cond_1a
    iget-object v9, v5, Lz4/C;->b:Lz4/g;

    iget-object v9, v9, Lz4/g;->c:Ljava/util/HashMap;

    iget-object v13, v5, Lz4/C;->h:Landroid/widget/FrameLayout;

    const v8, 0x7f0b0156

    invoke-virtual {v13, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lz4/b;

    iget-boolean v2, v5, Lz4/C;->t:Z

    if-nez v2, :cond_20

    iget v2, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    if-eq v2, v6, :cond_1b

    if-ne v2, v4, :cond_1c

    :cond_1b
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v2

    invoke-virtual {v2, v3}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v2

    check-cast v2, LFs/A;

    invoke-virtual {v2}, LFs/A;->c()Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    iget-object v2, v5, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    const/4 v4, 0x0

    invoke-virtual {v5, v10, v4, v2}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;Landroid/view/View;)V

    goto :goto_6

    :cond_1d
    const/4 v4, 0x0

    :goto_6
    iget v2, v13, Lz4/b;->c:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_1e

    iget-object v2, v5, Lz4/C;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6, v4, v2}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;Landroid/view/View;)V

    goto :goto_7

    :cond_1e
    invoke-static {}, Lcom/android/camera/data/data/E;->N()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v5, Lz4/C;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6, v4, v2}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;Landroid/view/View;)V

    goto :goto_7

    :cond_1f
    iget-object v2, v5, Lz4/C;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10, v1, v2}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget v2, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v11, 0xcf

    if-ne v2, v11, :cond_21

    iget-object v2, v5, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    invoke-virtual {v5, v6, v4, v2}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;Landroid/view/View;)V

    goto :goto_7

    :cond_20
    const/4 v6, -0x1

    :cond_21
    :goto_7
    iget-object v2, v5, Lz4/C;->h:Landroid/widget/FrameLayout;

    iget v4, v13, Lz4/b;->c:I

    if-ne v4, v10, :cond_22

    move v4, v10

    goto :goto_8

    :cond_22
    const/4 v4, 0x4

    :goto_8
    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v2, v5, Lz4/C;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz4/L;

    if-eqz v2, :cond_23

    iget-object v4, v5, Lz4/C;->d:Landroid/widget/FrameLayout;

    iget v11, v2, Lz4/b;->c:I

    const/4 v13, 0x0

    invoke-virtual {v5, v11, v13, v4}, Lcom/android/camera/fragment/h;->animateViews(IZLandroid/view/View;)V

    iget-boolean v2, v2, Lz4/L;->e:Z

    goto :goto_9

    :cond_23
    move v11, v6

    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_24

    const/4 v4, 0x0

    goto :goto_a

    :cond_24
    move-object v4, v1

    :goto_a
    iget-object v2, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    iget-object v13, v5, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v5, v11, v4, v2, v13}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;FLandroid/view/View;)V

    iget-object v2, v5, Lz4/C;->f:Lz4/I;

    iget-object v2, v2, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz4/H;

    if-eqz v2, :cond_29

    sget-boolean v4, LK2/e;->o:Z

    iget v13, v2, Lz4/H;->e:I

    const/16 v11, 0xc1

    if-eqz v4, :cond_25

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-virtual {v4}, Lu6/f;->x()Z

    move-result v4

    if-nez v4, :cond_25

    if-ne v13, v11, :cond_25

    const/16 v13, 0xc0

    :cond_25
    iget-object v4, v5, Lz4/C;->f:Lz4/I;

    iput v13, v4, Lz4/I;->e:I

    iget v2, v2, Lz4/b;->c:I

    if-ne v2, v10, :cond_27

    const/4 v2, 0x2

    move/from16 v17, v2

    if-eq v0, v2, :cond_26

    move v2, v10

    :goto_b
    move v0, v6

    goto :goto_c

    :cond_26
    const/4 v2, 0x0

    goto :goto_b

    :goto_c
    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    move/from16 v18, v0

    move-object v0, v4

    const/4 v4, 0x0

    move/from16 v17, v13

    move-object v13, v3

    move/from16 v3, v17

    move/from16 v17, v10

    const/16 v10, 0xb8

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    goto :goto_d

    :cond_27
    move v0, v13

    move-object v13, v3

    move v3, v0

    move-object v0, v4

    move/from16 v18, v6

    move/from16 v17, v10

    const/16 v10, 0xb8

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :goto_d
    if-ne v3, v11, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140042

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->M()Z

    move-result v2

    if-eqz v2, :cond_28

    const v2, 0x7f140ce1

    goto :goto_e

    :cond_28
    const v2, 0x7f140cdf

    :goto_e
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lz4/C;->f:Lz4/I;

    iget-object v1, v1, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_29
    move-object v13, v3

    move/from16 v18, v6

    move/from16 v17, v10

    const/16 v10, 0xb8

    :cond_2a
    :goto_f
    sget v0, Lz4/C;->u0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/b;

    if-eqz v1, :cond_2b

    move-object v2, v1

    check-cast v2, Lz4/p;

    iget v3, v2, Lz4/p;->e:I

    iget-boolean v2, v2, Lz4/p;->f:Z

    move v11, v2

    goto :goto_10

    :cond_2b
    const/16 v3, 0xc0

    const/4 v11, 0x0

    :goto_10
    if-eqz v1, :cond_2c

    iget-object v2, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    const v4, 0x7f0b018e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_2c

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f0e0044

    iget-object v10, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v2, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Lz4/I;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v0, v4, v2, v10}, Lz4/I;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, v5, Lz4/C;->i0:Lz4/I;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    if-eqz v1, :cond_2d

    iget-object v0, v5, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_2d

    move/from16 v0, v17

    goto :goto_11

    :cond_2d
    const/4 v0, 0x0

    :goto_11
    sget-boolean v2, LJe/c;->k:Z

    sget-object v10, LJe/c$b;->a:LJe/c;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v2

    const/16 v4, 0xce

    if-eqz v2, :cond_2f

    if-ne v3, v4, :cond_2f

    invoke-static {}, LK2/b;->W()Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_12

    :cond_2e
    const/4 v0, 0x0

    :cond_2f
    :goto_12
    iget v2, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v6, 0xb8

    if-eq v2, v6, :cond_30

    const/16 v6, 0xcb

    if-ne v2, v6, :cond_31

    :cond_30
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v2

    invoke-virtual {v2, v13}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v2

    check-cast v2, LFs/A;

    invoke-virtual {v2}, LFs/A;->c()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v0, 0x0

    :cond_31
    if-eqz v0, :cond_33

    iget-object v0, v5, Lz4/C;->i0:Lz4/I;

    iget-boolean v1, v1, Lz4/b;->b:Z

    iput-boolean v1, v0, Lz4/I;->f:Z

    iput v3, v0, Lz4/I;->e:I

    const/16 v1, 0xc0

    if-eq v3, v1, :cond_32

    move/from16 v2, v17

    goto :goto_13

    :cond_32
    const/4 v2, 0x0

    :goto_13
    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    move v1, v4

    const/4 v4, 0x0

    move/from16 v20, v1

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lz4/C;->i0:Lz4/I;

    iput-boolean v11, v0, Lz4/I;->i:Z

    goto :goto_14

    :cond_33
    iget-object v0, v5, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_34

    const/4 v6, 0x0

    iput-boolean v6, v0, Lz4/I;->f:Z

    const/16 v1, 0xc0

    iput v1, v0, Lz4/I;->e:I

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lz4/C;->i0:Lz4/I;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lz4/I;->i:Z

    :cond_34
    :goto_14
    invoke-virtual {v10}, LJe/c;->e1()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, v10, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_16

    :cond_35
    sget v0, Lz4/C;->v0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/N;

    if-eqz v1, :cond_38

    iget-object v2, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    const v3, 0x7f0b0cd1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_36

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0e0045

    iget-object v6, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v2, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_36
    new-instance v0, Lz4/I;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v0, v3, v2, v4}, Lz4/I;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, v5, Lz4/C;->j0:Lz4/I;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    iget v3, v1, Lz4/N;->e:I

    iput v3, v0, Lz4/I;->e:I

    iget-boolean v1, v1, Lz4/b;->b:Z

    iput-boolean v1, v0, Lz4/I;->f:Z

    const/16 v1, 0xc0

    if-eq v3, v1, :cond_37

    move/from16 v2, v17

    goto :goto_15

    :cond_37
    const/4 v2, 0x0

    :goto_15
    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lz4/I;->i:Z

    goto :goto_16

    :cond_38
    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    if-eqz v0, :cond_39

    const/16 v1, 0xc0

    iput v1, v0, Lz4/I;->e:I

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lz4/C;->j0:Lz4/I;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lz4/I;->i:Z

    :cond_39
    :goto_16
    invoke-virtual {v10}, LJe/c;->e1()Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_18

    :cond_3a
    sget v0, Lz4/C;->w0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/K;

    if-eqz v1, :cond_3d

    iget-object v2, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    const v3, 0x7f0b08cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_3b

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0e0041

    iget-object v6, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v2, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3b
    new-instance v0, Lz4/I;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v0, v3, v2, v4}, Lz4/I;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, v5, Lz4/C;->k0:Lz4/I;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v5, Lz4/C;->k0:Lz4/I;

    iget v3, v1, Lz4/K;->e:I

    iput v3, v0, Lz4/I;->e:I

    const/16 v1, 0xc0

    if-eq v3, v1, :cond_3c

    move/from16 v2, v17

    goto :goto_17

    :cond_3c
    const/4 v2, 0x0

    :goto_17
    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lz4/C;->k0:Lz4/I;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lz4/I;->i:Z

    goto :goto_18

    :cond_3d
    iget-object v0, v5, Lz4/C;->k0:Lz4/I;

    if-eqz v0, :cond_3e

    const/16 v1, 0xc0

    iput v1, v0, Lz4/I;->e:I

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lz4/C;->k0:Lz4/I;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lz4/I;->i:Z

    :cond_3e
    :goto_18
    iget v0, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_41

    iget-object v0, v5, Lz4/C;->m0:Lz4/o;

    if-nez v0, :cond_44

    new-instance v0, Lz4/o;

    iget-object v1, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Lcom/android/camera/fragment/h;->isLandScape()Z

    move-result v2

    if-nez v2, :cond_40

    sget-boolean v2, LK2/e;->n:Z

    if-eqz v2, :cond_3f

    goto :goto_19

    :cond_3f
    const/4 v2, 0x0

    goto :goto_1a

    :cond_40
    :goto_19
    move/from16 v2, v17

    :goto_1a
    new-instance v3, LDe/m;

    invoke-direct {v3, v5}, LDe/m;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lz4/o;-><init>(Landroid/view/ViewGroup;ZLDe/m;)V

    iput-object v0, v5, Lz4/C;->m0:Lz4/o;

    const/4 v1, 0x0

    :goto_1b
    iget v2, v0, Lz4/o;->a:I

    if-ge v1, v2, :cond_44

    iget-object v2, v0, Lz4/o;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_41
    iget-object v0, v5, Lz4/C;->m0:Lz4/o;

    if-eqz v0, :cond_44

    iget-object v1, v0, Lz4/o;->c:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_43

    const/4 v1, 0x0

    :goto_1c
    iget v2, v0, Lz4/o;->a:I

    if-ge v1, v2, :cond_42

    iget-object v2, v0, Lz4/o;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_42
    iget-object v1, v0, Lz4/o;->c:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_43
    const/4 v4, 0x0

    iput-object v4, v0, Lz4/o;->e:LDe/m;

    iput-object v4, v5, Lz4/C;->m0:Lz4/o;

    :cond_44
    sget v0, Lz4/C;->x0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/q;

    if-eqz v1, :cond_45

    iget v2, v1, Lz4/q;->e:I

    move v3, v2

    goto :goto_1d

    :cond_45
    const/16 v3, 0xc0

    :goto_1d
    if-eqz v1, :cond_46

    iget-object v2, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    const v4, 0x7f0b0463

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_46

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f0e0040

    iget-object v9, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v2, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Lz4/I;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v0, v4, v2, v8}, Lz4/I;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, v5, Lz4/C;->l0:Lz4/I;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v5, Lz4/C;->l0:Lz4/I;

    iget-boolean v2, v1, Lz4/b;->b:Z

    iput-boolean v2, v0, Lz4/I;->f:Z

    :cond_46
    if-eqz v1, :cond_47

    iget-object v0, v5, Lz4/C;->l0:Lz4/I;

    if-eqz v0, :cond_47

    move/from16 v0, v17

    goto :goto_1e

    :cond_47
    const/4 v0, 0x0

    :goto_1e
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v1

    const/16 v8, 0xce

    if-eqz v1, :cond_49

    if-ne v3, v8, :cond_49

    invoke-static {}, LK2/b;->W()Z

    move-result v1

    if-eqz v1, :cond_48

    goto :goto_1f

    :cond_48
    const/4 v0, 0x0

    :cond_49
    :goto_1f
    if-eqz v0, :cond_4c

    iget-object v0, v5, Lz4/C;->l0:Lz4/I;

    iput v3, v0, Lz4/I;->e:I

    const/16 v1, 0xc0

    if-eq v3, v1, :cond_4a

    move/from16 v2, v17

    goto :goto_20

    :cond_4a
    const/4 v2, 0x0

    :goto_20
    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lz4/C;->l0:Lz4/I;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lz4/I;->i:Z

    :cond_4b
    :goto_21
    move-object/from16 v1, p2

    goto :goto_22

    :cond_4c
    iget-object v0, v5, Lz4/C;->l0:Lz4/I;

    if-eqz v0, :cond_4b

    const/16 v1, 0xc0

    iput v1, v0, Lz4/I;->e:I

    iget v6, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, v5, Lz4/C;->l0:Lz4/I;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lz4/I;->i:Z

    goto :goto_21

    :goto_22
    if-eqz v1, :cond_52

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-virtual {v0, v14}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    iget-object v0, v0, Lv2/F0;->b:Lv2/G0;

    invoke-static {}, LJe/c;->V()Z

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v0, 0x0

    goto :goto_23

    :cond_4d
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v0, v0, Lv2/G0;->e:I

    const/4 v6, 0x0

    invoke-static {v0, v6}, LPq/b;->K(IZ)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/camera/fragment/m;->d(Landroid/content/Context;Z)I

    move-result v0

    :goto_23
    iget-object v2, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    const v3, 0x7f0b0144

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_51

    iget-object v2, v5, Lz4/C;->f:Lz4/I;

    iget-object v4, v5, Lz4/C;->i0:Lz4/I;

    iget-object v6, v5, Lz4/C;->j0:Lz4/I;

    iget-object v9, v5, Lz4/C;->k0:Lz4/I;

    iget-object v10, v5, Lz4/C;->l0:Lz4/I;

    filled-new-array {v2, v4, v6, v9, v10}, [Lz4/I;

    move-result-object v2

    const/4 v4, 0x0

    :goto_24
    const/4 v6, 0x5

    if-ge v4, v6, :cond_4f

    aget-object v6, v2, v4

    if-eqz v6, :cond_4e

    iget-boolean v9, v6, Lz4/I;->h:Z

    if-eqz v9, :cond_4e

    iget-object v6, v6, Lz4/I;->a:Landroid/view/ViewGroup;

    move/from16 v9, v17

    invoke-static {v0, v9, v6}, Lcom/android/camera/fragment/m;->h(IZLandroid/view/View;)V

    goto :goto_25

    :cond_4e
    move/from16 v9, v17

    :goto_25
    add-int/2addr v4, v9

    move/from16 v17, v9

    goto :goto_24

    :cond_4f
    iget-object v2, v5, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5}, Lz4/C;->Gr()Z

    move-result v4

    if-nez v4, :cond_50

    if-eqz v2, :cond_51

    instance-of v4, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_51

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    const/4 v6, 0x2

    if-lt v4, v6, :cond_51

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_51

    instance-of v4, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_51

    iget-object v4, v5, Lz4/C;->j:Landroid/widget/ImageView;

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-static {v4, v2, v6, v0}, Lcom/android/camera/fragment/m;->g(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;II)V

    goto :goto_26

    :cond_50
    if-eqz v2, :cond_51

    instance-of v2, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_51

    iget-object v2, v5, Lz4/C;->j:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-static {v0, v9, v2}, Lcom/android/camera/fragment/m;->h(IZLandroid/view/View;)V

    :cond_51
    :goto_26
    iget-object v2, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_52
    invoke-virtual {v5}, Lcom/android/camera/fragment/h;->isLandScape()Z

    move-result v0

    if-nez v0, :cond_54

    sget-boolean v0, LK2/e;->n:Z

    if-eqz v0, :cond_53

    goto :goto_27

    :cond_53
    const/16 v21, 0x0

    goto :goto_28

    :cond_54
    :goto_27
    const/16 v21, 0x1

    :goto_28
    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-static {}, LK2/b;->W()Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_29

    :cond_55
    const/16 v22, 0x0

    goto :goto_2a

    :cond_56
    :goto_29
    const/16 v22, 0x1

    :goto_2a
    iget-object v0, v5, Lz4/C;->b:Lz4/g;

    iget-object v2, v5, Lz4/C;->c:Landroid/view/ViewGroup;

    iget-object v3, v5, Lz4/C;->i0:Lz4/I;

    if-eqz v3, :cond_57

    iget v3, v3, Lz4/I;->d:I

    if-ne v3, v8, :cond_57

    const/16 v24, 0x1

    goto :goto_2b

    :cond_57
    const/16 v24, 0x0

    :goto_2b
    const/16 v23, 0x1

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    invoke-static/range {v19 .. v24}, Lz4/i;->c(Lz4/g;Landroid/view/ViewGroup;ZZZZ)V

    :goto_2c
    invoke-virtual {v5}, Lcom/android/camera/fragment/h;->isLeftLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {}, LK2/e;->E()Z

    move-result v0

    if-nez v0, :cond_59

    const/4 v0, 0x0

    :goto_2d
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_58

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_58
    const/16 v6, 0xcb

    goto :goto_2f

    :cond_59
    const/4 v0, 0x0

    :goto_2e
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_58

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v5}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :goto_2f
    if-eq v7, v6, :cond_5a

    const/16 v6, 0xb8

    if-ne v7, v6, :cond_5b

    :cond_5a
    const/4 v6, 0x0

    iput-boolean v6, v5, Lz4/C;->n:Z

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v0

    invoke-virtual {v0, v13}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v0

    check-cast v0, LFs/A;

    invoke-virtual {v0}, LFs/A;->c()Z

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v2, 0x1

    :goto_30
    const/4 v9, 0x1

    goto :goto_31

    :cond_5b
    move/from16 v2, v18

    goto :goto_30

    :goto_31
    if-ne v2, v9, :cond_5c

    const/4 v13, 0x1

    goto :goto_32

    :cond_5c
    const/4 v13, 0x0

    :goto_32
    iput-boolean v13, v5, Lz4/C;->r:Z

    iget-object v0, v5, Lz4/C;->T:Landroid/widget/ImageView;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_5d

    iget-object v0, v5, Lz4/C;->T:Landroid/widget/ImageView;

    invoke-virtual {v5, v2, v1, v0}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :cond_5d
    iget v0, v5, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_5e

    if-eq v12, v1, :cond_5f

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lz4/C;->Hr(Z)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LJ4/r;

    invoke-direct {v1, v9, v9}, LJ4/r;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/H0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH4/p;

    const/4 v2, 0x4

    invoke-direct {v1, v9, v2}, LH4/p;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_33

    :cond_5e
    const/4 v9, 0x1

    if-ne v12, v1, :cond_5f

    invoke-virtual {v5, v9}, Lz4/C;->Hr(Z)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LJ4/r;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v9}, LJ4/r;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/H0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH4/p;

    const/4 v2, 0x4

    invoke-direct {v1, v6, v2}, LH4/p;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5f
    :goto_33
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final provideAnimateVisiable(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lz4/C;->n:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz4/C;->W:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lz4/C;->f:Lz4/I;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lz4/I;->a:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p0, p0, Lz4/C;->i0:Lz4/I;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lz4/I;->a:Landroid/view/ViewGroup;

    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p0, Lz4/r;

    check-cast p2, Ljava/util/ArrayList;

    invoke-direct {p0, p2, p1}, Lz4/r;-><init>(Ljava/util/ArrayList;Z)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 2

    const/16 p0, 0xf0

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa1

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p0}, LS1/j;->a([I)Landroid/view/animation/AnimationSet;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LI4/g;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, LI4/g;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 p0, 0xa2

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p0}, LS1/j;->a([I)Landroid/view/animation/AnimationSet;

    move-result-object p0

    return-object p0
.end method

.method public final provideRotateItem(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/h;->provideRotateItem(Ljava/util/List;I)V

    iget-object p2, p0, Lz4/C;->b:Lz4/g;

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->isLeftLandscapeMode()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lz4/C;->U:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lz4/C;->b:Lz4/g;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lz4/g;->c:Ljava/util/HashMap;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_5

    iget-object v0, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0b0156

    invoke-virtual {v3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/b;

    if-eqz v0, :cond_4

    iget v1, v0, Lz4/b;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v0, v0, Lz4/b;->d:LC3/a;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lz4/C;->b:Lz4/g;

    iget v2, v1, Lz4/g;->a:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->isLandScape()Z

    move-result v4

    iget-object v0, v0, LC3/a;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lz4/L;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lz4/L;->e(ILandroid/view/View;ZZZ)V

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, LLy/j;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public final qd()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMimoji4"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    iget-object v0, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lz4/C;->gk(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final qk(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/r;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lz4/w;

    invoke-direct {v1, p0, p1, p2}, Lz4/w;-><init>(Lz4/C;J)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final qo()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lz4/C;->N0(Z)V

    invoke-static {}, Lcom/android/camera/data/data/w;->V()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, LK2/b;->b0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v0}, Lz4/C;->Kr(ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v0}, Lz4/C;->Jr(ZZ)V

    :cond_1
    :goto_0
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LFs/h;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, LFs/h;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSnapView;->p(Z)V

    return-void
.end method

.method public final qr()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFlipPhone"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lz4/C;->V:Ljy/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lz4/C;->V:Ljy/f;

    invoke-virtual {p0}, Ljy/f;->dismiss()V

    :cond_0
    return-void
.end method

.method public final register(LN6/g;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->register(LN6/g;)V

    check-cast p1, LN6/h;

    const-class v0, LQ6/d;

    invoke-virtual {p1, v0, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v0, LQ6/s;

    invoke-virtual {p1, v0, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v0, LQ6/b1;

    invoke-virtual {p1, v0, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v0, LQ6/i1;

    invoke-virtual {p1, v0, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Ls8/a;->Ca(Ljava/lang/String;Lcom/android/camera/ui/DragLayout$c;)V

    const-class v0, LQ6/n;

    invoke-virtual {p1, v0, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public final rr(Z)Z
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz4/C;->Ir()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onSnapClick: disabled"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "ClickDisabled"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_0
    invoke-static {}, LQ6/w0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LL9/i;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, LL9/i;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: is swiping screen."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "SwipingScreen"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onSnapClick: no context"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "NoContext"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_2
    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onSnapClick: no camera action"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "NoCameraAction"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_3
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6/q;

    invoke-interface {v0}, LQ6/q;->checkSnapClickValid()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onSnapClick: snap click invalid"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "SnapClickInvalid"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz p1, :cond_5

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object p1

    invoke-interface {p1}, Lj6/i;->isIgnoreTouchEvent()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onSnapClick: ignore onSnapClick event, because module isn\'t ready"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "ModuleNotReady"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_5
    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->O6()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, LU6/c;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "pass through ACTION_UP when down capture"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return v2
.end method

.method public final setClickEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->setClickEnable(Z)V

    invoke-virtual {p0, p1}, Lz4/C;->Fr(Z)V

    return-void
.end method

.method public final sr(Landroid/graphics/Rect;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportSuspendShutter"
        type = 0x0
    .end annotation

    iget-object p0, p0, Lz4/C;->h0:LF8/c;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->h:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->i:I

    iget-object v0, p0, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->O:LF8/a;

    iget p0, p0, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->h:I

    iget-object v0, v0, LF8/a;->d:Landroid/graphics/Point;

    iput p0, v0, Landroid/graphics/Point;->x:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    :cond_0
    return-void
.end method

.method public final switchThumbnailFunction(Z)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDualVideoCameraChoose"
        type = 0x0
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lz4/C;->vr(ZZLcom/android/camera/a;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lz4/C;->ur()V

    return-void
.end method

.method public final tr(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a;

    invoke-virtual {p0}, Lz4/C;->Gr()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lz4/C;->vr(ZZLcom/android/camera/a;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lz4/C;->ur()V

    return-void
.end method

.method public final u5()V
    .locals 0

    invoke-virtual {p0}, Lz4/C;->qr()V

    invoke-virtual {p0}, Lz4/C;->Ua()V

    return-void
.end method

.method public final ub()Z
    .locals 2

    invoke-static {}, LQ6/Z0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LI4/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LI4/h;-><init>(I)V

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

.method public final uh(FFZ)Z
    .locals 1

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lz4/u;

    invoke-direct {v0, p1, p2, p3}, Lz4/u;-><init>(FFZ)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final unRegister(LN6/g;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->unRegister(LN6/g;)V

    iget-object v0, p0, Lz4/C;->f0:Lz4/C$h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    check-cast p1, LN6/h;

    const-class v0, LQ6/d;

    invoke-virtual {p1, v0, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v0, LQ6/s;

    invoke-virtual {p1, v0, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v0, LQ6/b1;

    invoke-virtual {p1, v0, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v0, LQ6/i1;

    invoke-virtual {p1, v0, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Ls8/a;->ik(Ljava/lang/String;Lcom/android/camera/ui/DragLayout$c;)V

    const-class v0, LQ6/n;

    invoke-virtual {p1, v0, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public final updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    const/4 v0, 0x0

    invoke-super/range {p0 .. p2}, Lcom/android/camera/fragment/b;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lz4/C;->Lr()V

    iget-object v1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {}, LK2/b;->b0()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070257

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v1, p0, Lz4/C;->h0:LF8/c;

    if-eqz v1, :cond_1

    invoke-static {}, LQ6/j0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/w;

    invoke-direct {v2, v0}, LF1/w;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lz4/C;->h0:LF8/c;

    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/data/data/w;->y0(I)Z

    move-result v3

    check-cast v1, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->c(IZ)V

    :cond_1
    iget-object v6, p0, Lz4/C;->b:Lz4/g;

    const/16 v12, 0xce

    if-eqz v6, :cond_7

    iget-object v7, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->isLandScape()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    sget-boolean v1, LK2/e;->n:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v8, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v8, v2

    :goto_2
    invoke-static {}, LK2/b;->b0()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, LK2/b;->W()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v9, v0

    goto :goto_4

    :cond_5
    :goto_3
    move v9, v2

    :goto_4
    iget-object v1, p0, Lz4/C;->i0:Lz4/I;

    if-eqz v1, :cond_6

    iget v1, v1, Lz4/I;->d:I

    if-ne v1, v12, :cond_6

    move v11, v2

    goto :goto_5

    :cond_6
    move v11, v0

    :goto_5
    const/4 v10, 0x0

    invoke-static/range {v6 .. v11}, Lz4/i;->c(Lz4/g;Landroid/view/ViewGroup;ZZZZ)V

    :cond_7
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    if-eqz v0, :cond_8

    iget v1, v0, Lz4/I;->e:I

    if-ne v1, v12, :cond_8

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x0

    const/16 v3, 0xc0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_8
    iget-object v0, p0, Lz4/C;->l0:Lz4/I;

    if-eqz v0, :cond_9

    iget v1, v0, Lz4/I;->e:I

    if-ne v1, v12, :cond_9

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x0

    const/16 v3, 0xc0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_9
    return-void
.end method

.method public final updateView4Pad(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    invoke-super/range {p0 .. p2}, Lcom/android/camera/fragment/b;->updateView4Pad(Landroid/view/View;Landroid/os/Bundle;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lz4/C;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lz4/C;->b:Lz4/g;

    if-eqz v0, :cond_1

    iget-object v7, v0, Lz4/g;->c:Ljava/util/HashMap;

    sget v0, Lz4/C;->u0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lz4/p;

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    const/16 v9, 0xce

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    iget v1, v8, Lz4/p;->e:I

    if-ne v1, v9, :cond_0

    iput v9, v0, Lz4/I;->e:I

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x0

    const/16 v3, 0xce

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    iget-boolean v1, v8, Lz4/p;->f:Z

    iput-boolean v1, v0, Lz4/I;->i:Z

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/n0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/n0;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lv2/n0;->isSupportMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/C;->f:Lz4/I;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lz4/I;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz4/C;->i0:Lz4/I;

    iget-object v1, v1, Lz4/I;->a:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v0, Lz4/C;->x0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/q;

    iget-object v1, p0, Lz4/C;->l0:Lz4/I;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget v0, v0, Lz4/q;->e:I

    if-ne v0, v9, :cond_1

    iput v9, v1, Lz4/I;->e:I

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x0

    const/16 v3, 0xce

    move-object v0, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lz4/C;->l0:Lz4/I;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lz4/I;->i:Z

    :cond_1
    return-void
.end method

.method public final ur()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "initThumbnailAsExit: "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lz4/C;->nr(Landroid/content/Context;Landroidx/cardview/widget/CardView;Z)V

    iget-object v0, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v2, Lv2/F0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    iget-object v0, v0, Lv2/F0;->b:Lv2/G0;

    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    iget v0, v0, Lv2/G0;->e:I

    invoke-static {v0, v1}, LPq/b;->K(IZ)Z

    move-result v0

    invoke-static {}, Lf2/b;->b()Z

    move-result v4

    iget-object v5, p0, Lz4/C;->j:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v5, 0xcc

    if-eq v2, v5, :cond_1

    const/16 v5, 0xce

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearColorFilter()V

    sget-object v2, Lo9/a;->a:Lo9/b;

    invoke-interface {v2}, Lo9/b;->g()Lp9/c;

    move-result-object v2

    const v5, 0x7f080805

    invoke-interface {v2, v5}, Lp9/c;->g(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v2, v1, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lz4/C;->j:Landroid/widget/ImageView;

    new-array v6, v3, [Landroid/view/View;

    aput-object v5, v6, v1

    invoke-static {v0, v6}, Lcom/android/camera/fragment/m;->f(Z[Landroid/view/View;)V

    if-eqz v4, :cond_0

    iget-object v0, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lz4/C;->j:Landroid/widget/ImageView;

    sget-object v1, Lf2/e;->c:Lf2/e;

    const v2, 0x7f060b98

    invoke-virtual {v1, v2, v3}, Lf2/e;->a(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz4/C;->j:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080803

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    sget-object v0, Lf2/e;->c:Lf2/e;

    iget-object v1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    const v2, 0x7f060b96

    invoke-virtual {v0, v1, v2, v4}, Lf2/e;->d(Landroid/widget/ImageView;IZ)V

    iget-object v0, p0, Lz4/C;->j:Landroid/widget/ImageView;

    const v1, 0x7f1400ae

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v3, p0, Lz4/C;->g0:Z

    return-void
.end method

.method public final v8(IZ)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lz4/C;->Ir()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/C;->h0:LF8/c;

    check-cast v0, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    invoke-static {p1, p2, v0}, Lv9/a;->f(IZLandroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lz4/C;->c:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    invoke-static {p1, p0}, Lv9/a;->e(ILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final vb()V
    .locals 15
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-object v0, v0, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    iget-object v1, v0, Lx8/d;->V:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lx8/d;->V:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->a()V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/r;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, LEs/r;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/h;->animateViews(ILjava/util/List;Landroid/view/View;)V

    iget-object v0, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz4/C;->g:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, LU1/d;->f(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lz4/C;->j0:Lz4/I;

    const/16 v0, 0xc0

    if-eqz v1, :cond_2

    iget v7, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v3, 0x0

    const/16 v4, 0xc0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    move-object v13, v6

    iget-object p0, v13, Lz4/C;->j0:Lz4/I;

    iput v0, p0, Lz4/I;->e:I

    goto :goto_0

    :cond_2
    move-object v13, p0

    :goto_0
    iget-object v8, v13, Lz4/C;->k0:Lz4/I;

    if-eqz v8, :cond_3

    iget v14, v13, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v10, 0x0

    const/16 v11, 0xc0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v14}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    iget-object p0, v13, Lz4/C;->k0:Lz4/I;

    iput v0, p0, Lz4/I;->e:I

    :cond_3
    iget-object v8, v13, Lz4/C;->l0:Lz4/I;

    if-eqz v8, :cond_4

    iget v14, v13, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v10, 0x0

    const/16 v11, 0xc0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v14}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_4
    iget-object v8, v13, Lz4/C;->i0:Lz4/I;

    if-eqz v8, :cond_5

    iget v14, v13, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v10, 0x0

    const/16 v11, 0xc0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v14}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_5
    iget-object v8, v13, Lz4/C;->f:Lz4/I;

    iget v14, v13, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v10, 0x0

    const/16 v11, 0xc0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v14}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public final vr(ZZLcom/android/camera/a;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "initThumbnailAsThumbnail: "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lz4/C;->i:Landroidx/cardview/widget/CardView;

    invoke-static {v0, v2, v1}, Lz4/C;->nr(Landroid/content/Context;Landroidx/cardview/widget/CardView;Z)V

    iput-boolean v1, p0, Lz4/C;->g0:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lz4/C;->f2(Z)V

    iget-object v2, p0, Lz4/C;->j:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    const v2, 0x7f060091

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object p1, p0, Lz4/C;->j:Landroid/widget/ImageView;

    const v2, 0x7f1400fe

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_2

    invoke-virtual {p3}, Lcom/android/camera/a;->hr()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p3}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1, v0}, LF1/B4;->d(LF1/w4;ZZZ)V

    invoke-virtual {p3}, Lcom/android/camera/a;->Tq()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array p1, v1, [Ljava/lang/Object;

    sget-object p2, Lc6/x;->J:Ljava/lang/String;

    const-string p3, "clearForce"

    invoke-static {p2, p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lc6/x;->z()V

    return-void

    :cond_1
    invoke-static {}, LH6/d;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-boolean p0, p3, Lcom/android/camera/a;->M0:Z

    if-nez p0, :cond_2

    invoke-virtual {p3}, Lcom/android/camera/a;->Nq()LF1/B4;

    move-result-object p0

    invoke-virtual {p0}, LF1/B4;->a()V

    :cond_2
    return-void
.end method

.method public final wo(ZZ)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSpeechShutter"
        type = 0x0
    .end annotation

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-virtual {p0}, Lz4/C;->or()Lx8/d;

    move-result-object p0

    invoke-static {p0, p1, p2}, LG8/h;->n(Lx8/d;ZZ)V

    return-void
.end method

.method public final wr()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionDetectionEnable"
        type = 0x2
    .end annotation

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p0}, Lcom/android/camera/data/data/m;->H(I)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    const-string v1, "pref_motion_detection_animator"

    invoke-virtual {p0, v1, v0}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final x5()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v2, "pref_camera_longpress_zoom_first_use_hint_shown_key"

    invoke-virtual {v0, v2, v1}, LWh/a;->j(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v4, Lg3/k;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lg3/k;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    invoke-virtual {v0, v3, v2}, LWh/a;->p(ILjava/lang/String;)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    :cond_1
    invoke-static {}, LQ6/G0;->b()LQ6/G0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, LQ6/G0;->c8()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onSnapPrepare: mode changing."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, LQ6/K0;->b()LQ6/K0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, LQ6/K0;->o1()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v1}, LQ6/K0;->Aj(Z)Z

    :cond_3
    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LA3/l;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, LA3/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final xe(Z)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportSuspendShutter"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lz4/C;->h0:LF8/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lz4/C;->Ir()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lz4/C;->h0:LF8/c;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, LF8/c;->setSuspendShutterVisibility(I)V

    return-void

    :cond_1
    iget-object p0, p0, Lz4/C;->h0:LF8/c;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, LF8/c;->setSuspendShutterVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final xr()V
    .locals 8

    iget-object v0, p0, Lz4/C;->i0:Lz4/I;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    iget-object v1, p0, Lz4/C;->i0:Lz4/I;

    iget v4, v1, Lz4/I;->e:I

    const/16 v2, 0xce

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne v4, v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-static {}, LK2/b;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lz4/C;->i0:Lz4/I;

    iget v4, v1, Lz4/I;->e:I

    iget v7, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v6, p0

    iget v7, v6, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 p0, 0xe6

    if-eq v7, p0, :cond_4

    move v3, v5

    :cond_4
    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v7}, Lz4/I;->b(Ljava/util/List;ZIZLandroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public final y5(Z)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    iget-object v5, v0, Lz4/C;->f:Lz4/I;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v5, Lz4/I;->a:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    iget-object v7, v0, Lz4/C;->i0:Lz4/I;

    if-eqz v7, :cond_3

    iget v8, v7, Lz4/I;->d:I

    const/16 v9, 0xc0

    if-eq v8, v9, :cond_3

    iget-object v7, v7, Lz4/I;->a:Landroid/view/ViewGroup;

    goto :goto_2

    :cond_3
    move-object v7, v6

    :goto_2
    new-instance v8, Lf6/q$b;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    iput v9, v8, Lf6/q$b;->a:F

    iput v9, v8, Lf6/q$b;->b:F

    iput v9, v8, Lf6/q$b;->c:F

    iput v9, v8, Lf6/q$b;->d:F

    iput v9, v8, Lf6/q$b;->k:F

    iput v9, v8, Lf6/q$b;->l:F

    iput v9, v8, Lf6/q$b;->e:F

    iput v9, v8, Lf6/q$b;->g:F

    iput v9, v8, Lf6/q$b;->f:F

    iput v9, v8, Lf6/q$b;->h:F

    iput v9, v8, Lf6/q$b;->i:F

    iput v9, v8, Lf6/q$b;->j:F

    const-wide/16 v10, 0x12c

    iput-wide v10, v8, Lf6/q$b;->m:J

    and-int/lit8 v12, v4, 0x1

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v12, :cond_4

    iput v13, v8, Lf6/q$b;->k:F

    iput v14, v8, Lf6/q$b;->l:F

    iput v2, v8, Lf6/q$b;->n:I

    :cond_4
    and-int/2addr v4, v1

    const/16 v15, 0x8

    if-eqz v4, :cond_5

    iput v14, v8, Lf6/q$b;->k:F

    iput v13, v8, Lf6/q$b;->l:F

    iput v15, v8, Lf6/q$b;->n:I

    :cond_5
    move/from16 v16, v3

    move/from16 v17, v4

    const-wide/16 v3, 0x96

    iput-wide v3, v8, Lf6/q$b;->m:J

    move/from16 v18, v1

    new-instance v1, Lz4/C$f;

    invoke-direct {v1, v5, v7}, Lz4/C$f;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v1, v8, Lf6/q$b;->p:Landroid/animation/AnimatorListenerAdapter;

    new-instance v1, Lf6/q;

    invoke-direct {v1, v8}, Lf6/q;-><init>(Lf6/q$b;)V

    invoke-static {}, Lcom/android/camera/data/data/E;->X()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    move-object v6, v5

    :goto_3
    iget-object v5, v0, Lz4/C;->j:Landroid/widget/ImageView;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/view/View;

    aput-object v5, v8, v2

    aput-object v6, v8, v16

    aput-object v7, v8, v18

    invoke-virtual {v1, v8}, Lf6/q;->b([Landroid/view/View;)V

    iget-object v1, v0, Lz4/C;->j0:Lz4/I;

    if-eqz v1, :cond_9

    if-nez p1, :cond_9

    iget-object v1, v1, Lz4/I;->a:Landroid/view/ViewGroup;

    new-instance v5, Lf6/q$b;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput v9, v5, Lf6/q$b;->a:F

    iput v9, v5, Lf6/q$b;->b:F

    iput v9, v5, Lf6/q$b;->c:F

    iput v9, v5, Lf6/q$b;->d:F

    iput v9, v5, Lf6/q$b;->k:F

    iput v9, v5, Lf6/q$b;->l:F

    iput v9, v5, Lf6/q$b;->e:F

    iput v9, v5, Lf6/q$b;->g:F

    iput v9, v5, Lf6/q$b;->f:F

    iput v9, v5, Lf6/q$b;->h:F

    iput v9, v5, Lf6/q$b;->i:F

    iput v9, v5, Lf6/q$b;->j:F

    iput-wide v10, v5, Lf6/q$b;->m:J

    if-eqz v12, :cond_7

    iput v13, v5, Lf6/q$b;->k:F

    iput v14, v5, Lf6/q$b;->l:F

    iput v2, v5, Lf6/q$b;->n:I

    :cond_7
    if-eqz v17, :cond_8

    iput v14, v5, Lf6/q$b;->k:F

    iput v13, v5, Lf6/q$b;->l:F

    iput v15, v5, Lf6/q$b;->n:I

    :cond_8
    iput-wide v3, v5, Lf6/q$b;->m:J

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iput v3, v5, Lf6/q$b;->a:F

    iput v4, v5, Lf6/q$b;->b:F

    new-instance v3, Lz4/C$g;

    invoke-direct {v3, v1}, Lz4/C$g;-><init>(Landroid/view/View;)V

    iput-object v3, v5, Lf6/q$b;->p:Landroid/animation/AnimatorListenerAdapter;

    new-instance v3, Lf6/q;

    invoke-direct {v3, v5}, Lf6/q;-><init>(Lf6/q$b;)V

    move/from16 v4, v16

    new-array v5, v4, [Landroid/view/View;

    aput-object v1, v5, v2

    invoke-virtual {v3, v5}, Lf6/q;->b([Landroid/view/View;)V

    :cond_9
    if-eqz p1, :cond_c

    iget v1, v0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v3, 0xa3

    if-eq v1, v3, :cond_b

    const/16 v3, 0xa8

    if-ne v1, v3, :cond_a

    goto :goto_4

    :cond_a
    const/16 v2, 0xa2

    if-ne v1, v2, :cond_d

    iget-object v1, v0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    new-instance v2, LE3/q;

    const/16 v3, 0xd

    invoke-direct {v2, v0, v3}, LE3/q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_b
    :goto_4
    iget-object v1, v0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/CameraSnapView;->v(Z)V

    iget-object v1, v0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-object v1, v1, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    iget-object v3, v1, Lx8/d;->g:Lx8/r;

    iput v2, v3, Lt8/c;->e:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_5

    :cond_c
    iget-object v1, v0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->c()V

    iget-object v1, v0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    iget-object v1, v1, Lcom/android/camera/ui/CameraSnapView;->d:Lx8/d;

    iget-object v2, v1, Lx8/d;->g:Lx8/r;

    iput v15, v2, Lt8/c;->e:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_d
    :goto_5
    iget-object v0, v0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final y7()Z
    .locals 0

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/ui/CameraSnapView;->m:Z

    return p0
.end method

.method public final ye(I)V
    .locals 7

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/camera/fragment/h;->animateViews(IZLandroid/view/View;)V

    :cond_0
    const/4 v0, 0x6

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    if-eq p1, v0, :cond_1

    iget v4, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v4}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v5

    invoke-virtual {p0}, Lz4/C;->wr()Z

    move-result v6

    invoke-static {v4, v2, v1, v5, v6}, Ly4/b;->b(IZZZZ)Ly4/b;

    move-result-object v4

    invoke-virtual {v4}, Ly4/b;->a()V

    iget-object v5, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/CameraSnapView;->w(Ly4/b;)V

    :cond_1
    sget-object v4, LF1/D2;->f:LF1/D2;

    iget-boolean v4, v4, LF1/D2;->d:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    const v5, 0x7f140112

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    if-eq p1, v3, :cond_3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    invoke-virtual {p0, v1, v2}, Lz4/C;->Jr(ZZ)V

    :cond_3
    invoke-virtual {p0, v2}, Lz4/C;->Dr(Z)V

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public final yf(LF8/c;Z)V
    .locals 4

    iput-object p1, p0, Lz4/C;->h0:LF8/c;

    if-eqz p1, :cond_3

    check-cast p1, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/C;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lz4/C;->h0:LF8/c;

    invoke-interface {v0}, LF8/c;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lz4/C;->h0:LF8/c;

    invoke-interface {v0, p0}, LF8/c;->setSuspendShutterSnapListener(Lq8/w0;)V

    iget-object v0, p0, Lz4/C;->h0:LF8/c;

    iget-object v1, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-interface {v0, v1}, LF8/c;->setSnapAnimateListener(LF8/b;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/F0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    iget-object v0, v0, Lv2/F0;->b:Lv2/G0;

    invoke-virtual {v0}, Lv2/G0;->b()Lv2/G0;

    move-result-object v0

    iget-object v1, p0, Lz4/C;->h0:LF8/c;

    invoke-interface {v1, v0}, LF8/c;->setParameters(Lv2/G0;)V

    iget-object v0, p0, Lz4/C;->h0:LF8/c;

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    check-cast v0, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    invoke-virtual {v0, v1, p2}, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->c(IZ)V

    invoke-virtual {p1}, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->getSuspendShutterAnimateDrawable()Lx8/J;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-boolean v0, p2, Lx8/J;->j0:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/w;->r0(I)Z

    move-result v0

    invoke-static {p2, v0, v0}, LG8/h;->n(Lx8/d;ZZ)V

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/j;->P0()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, LQ6/K0;->a()Ljava/util/Optional;

    move-result-object p2

    new-instance v0, LC3/k;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LC3/k;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, LU1/d;->e(Landroid/view/View;)V

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "more mode popup is not in shrink state!"

    invoke-static {p1, v0, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lz4/C;->Og()V

    :cond_3
    return-void
.end method

.method public final yr(Landroid/view/View;Lcom/android/camera/module/W;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xd

    const/16 v3, 0x19

    const/16 v4, 0x11

    const/16 v5, 0x8

    const/16 v6, 0x14

    const/16 v7, 0x17

    const/16 v8, 0x15

    const/16 v9, 0x9

    const/4 v10, 0x1

    const v11, 0x7f0b0840

    invoke-virtual {v1, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0xc15

    const/4 v13, 0x0

    if-eq v11, v12, :cond_1a

    const-class v12, LFs/A;

    const/16 v14, 0xce

    const/16 v15, 0xcc

    packed-switch v11, :pswitch_data_0

    packed-switch v11, :pswitch_data_1

    packed-switch v11, :pswitch_data_2

    iget-object v1, v0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "onCameraPickerClick: invalid picker type "

    invoke-static {v11, v2}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, LU6/c;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v1}, Li0/E;->a(Landroid/view/View;)Li0/N;

    move-result-object v1

    iget-object v2, v1, Li0/N;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, -0x3c4c0000    # -360.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Li0/N;->e(J)V

    invoke-virtual {v1}, Li0/N;->i()V

    invoke-static {}, Lz3/a;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LE4/c;

    invoke-direct {v2, v7}, LE4/c;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, LU6/c;->b()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lz4/C;->J:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/camera/legend/activity/LegendarySelectedActivity;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v3

    iget-object v3, v3, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v3}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "StartActivityWhenLocked"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v2, LOh/c;->l:LOh/c;

    invoke-virtual {v1, v2}, Lcom/android/camera/a;->G2(LOh/c;)V

    sget v1, Lcom/android/camera/module/Y;->a:I

    invoke-static {v1}, Ldq/e;->e(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "click"

    const-string v3, "attr_color_type_enter"

    invoke-static {v1, v3, v2}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "intercept:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LU6/c;->b()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lz4/C;->J:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-static {}, LU6/c;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/S3;

    invoke-direct {v2, v9}, LF1/S3;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LC3/f;

    invoke-direct {v2, v6}, LC3/f;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :cond_6
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v7, LC3/g;

    invoke-direct {v7, v5}, LC3/g;-><init>(I)V

    invoke-virtual {v1, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LH4/K;

    invoke-direct {v2, v4}, LH4/K;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :cond_7
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LEs/C;

    const/16 v7, 0xc

    invoke-direct {v4, v7}, LEs/C;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/l0;

    invoke-direct {v2, v3}, LF1/l0;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :cond_8
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LH4/L;

    invoke-direct {v3, v9}, LH4/L;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LEs/F;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, LEs/F;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :cond_9
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LF1/o0;

    invoke-direct {v3, v5}, LF1/o0;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LCs/d;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, LCs/d;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/16 v1, 0xa7

    const-string v2, "attr_custom_parameter"

    const-string v3, "none"

    invoke-static {v1, v2, v3}, Liq/d;->f(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_a
    invoke-static {}, LQ6/s1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LE4/K;

    invoke-direct {v2, v6}, LE4/K;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LE4/e;

    invoke-direct {v2, v3}, LE4/e;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {v0}, Lz4/C;->k()Z

    goto/16 :goto_2

    :pswitch_5
    invoke-static {}, LU6/c;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_1

    :cond_b
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LEs/h;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, LEs/h;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "onClick: v9_capture_video_switcher - enter flat selfie"

    invoke-static {v1, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_6
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->k2()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/xiaomi/camera/mivi/filter/MIVILutSaver;->saveStreetStyleLut()V

    :cond_c
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lv2/x;

    invoke-direct {v2, v10}, Lv2/x;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LEs/o;

    invoke-direct {v2, v8}, LEs/o;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :pswitch_7
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lg3/l;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lg3/l;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LE4/d;

    invoke-direct {v2, v8}, LE4/d;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :pswitch_8
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lz4/A;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LH4/z;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, LH4/z;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :pswitch_9
    invoke-static {}, LU6/c;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_1

    :cond_d
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LEs/i;

    invoke-direct {v2, v7}, LEs/i;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :pswitch_a
    iget-object v1, v0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "onClick: v9_recording_reverse"

    invoke-static {v1, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lz4/C;->R:Lmiuix/appcompat/app/h;

    if-nez v1, :cond_1d

    iget-boolean v1, v0, Lz4/C;->q:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, v0, Lz4/C;->n:Z

    if-nez v1, :cond_e

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const v1, 0x7f140944

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v1, 0x7f140943

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v1, LDr/e;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, LDr/e;-><init>(Ljava/lang/Object;I)V

    const v2, 0x7f141276

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v2, LAs/b;

    invoke-direct {v2, v0, v9}, LAs/b;-><init>(Ljava/lang/Object;I)V

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v1

    move-object/from16 v20, v2

    invoke-static/range {v12 .. v20}, Lvr/w;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/h;

    move-result-object v1

    iput-object v1, v0, Lz4/C;->R:Lmiuix/appcompat/app/h;

    new-instance v2, LS5/b;

    invoke-direct {v2, v0, v10}, LS5/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {v0}, Lz4/C;->H4()Z

    goto/16 :goto_2

    :pswitch_c
    invoke-static {}, LU6/c;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_1

    :cond_f
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->e1()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LEs/k;

    invoke-direct {v2, v4}, LEs/k;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :cond_10
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LE4/i;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, LE4/i;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :pswitch_d
    iget-object v3, v0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v4, "onClick: up down switch"

    invoke-static {v3, v4}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LU6/c;->b()Z

    move-result v3

    if-nez v3, :cond_1d

    iget-boolean v3, v0, Lz4/C;->J:Z

    if-eqz v3, :cond_11

    goto/16 :goto_2

    :cond_11
    invoke-static {}, LU6/c;->h()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v3

    if-eq v3, v15, :cond_12

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v3

    if-eq v3, v14, :cond_12

    iget-boolean v3, v0, Lz4/C;->t:Z

    if-nez v3, :cond_12

    goto/16 :goto_2

    :cond_12
    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LP9/f;

    invoke-direct {v4, v1, v2}, LP9/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lz4/C;->f:Lz4/I;

    iget-boolean v2, v1, Lz4/I;->c:Z

    iget-object v3, v1, Lz4/I;->b:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_13

    iput-boolean v13, v1, Lz4/I;->c:Z

    sget-object v1, Lo9/a;->a:Lo9/b;

    invoke-interface {v1}, Lo9/b;->e()Lp9/t;

    move-result-object v1

    const v2, 0x7f1300a2

    invoke-interface {v1, v2}, Lp9/t;->a(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    goto/16 :goto_2

    :cond_13
    iput-boolean v10, v1, Lz4/I;->c:Z

    sget-object v1, Lo9/a;->a:Lo9/b;

    invoke-interface {v1}, Lo9/b;->e()Lp9/t;

    move-result-object v1

    const v2, 0x7f1300a4

    invoke-interface {v1, v2}, Lp9/t;->a(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    goto/16 :goto_2

    :pswitch_e
    invoke-static {}, LU6/c;->b()Z

    move-result v2

    if-nez v2, :cond_16

    iget-boolean v2, v0, Lz4/C;->n:Z

    if-nez v2, :cond_16

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v2

    invoke-virtual {v2, v12}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v2

    check-cast v2, LFs/A;

    invoke-virtual {v2}, LFs/A;->f()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_1

    :cond_14
    invoke-static {}, Lz4/C;->pr()V

    if-eqz p3, :cond_15

    iget-object v2, v0, Lz4/C;->i0:Lz4/I;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v10, v3}, Lz4/I;->c(Landroid/view/View;ZLz4/C$c;)V

    :cond_15
    invoke-virtual/range {p0 .. p1}, Lz4/C;->Sg(Landroid/view/View;)V

    iget-object v1, v0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onClick: v9_capture_video_switcher - switch mode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_16
    :goto_1
    return-void

    :pswitch_f
    iget-object v3, v0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v4, "onClick: v9_camera_picker"

    invoke-static {v3, v4}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LU6/c;->b()Z

    move-result v3

    if-nez v3, :cond_1d

    iget-boolean v3, v0, Lz4/C;->J:Z

    if-eqz v3, :cond_17

    goto/16 :goto_2

    :cond_17
    invoke-static {}, LU6/c;->h()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v3

    if-eq v3, v15, :cond_18

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v3

    if-eq v3, v14, :cond_18

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa2

    if-eq v3, v4, :cond_18

    iget-boolean v3, v0, Lz4/C;->t:Z

    if-nez v3, :cond_18

    goto/16 :goto_2

    :cond_18
    invoke-static {}, LQ6/K0;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LD8/h;

    invoke-direct {v4, v2}, LD8/h;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LH3/c;

    invoke-direct {v3, v8}, LH3/c;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v2

    invoke-virtual {v2, v12}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v2

    check-cast v2, LFs/A;

    invoke-virtual {v2}, LFs/A;->c()Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v2, Lgq/h;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-string v3, "key_mimoji_click"

    iput-object v3, v2, Lgq/h;->a:Ljava/lang/String;

    new-instance v3, Lgq/f;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v3, v2, Lgq/h;->b:Lgq/f;

    const-string v3, "attr_feature_name"

    const-string v4, "mimoji_click_create_switch"

    const-string v5, "attr_operate_state"

    const-string v6, "create"

    invoke-static {v2, v3, v4, v5, v6}, LMv/a;->b(Lgq/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lz4/B;

    invoke-direct {v3, v0, v1}, Lz4/B;-><init>(Lz4/C;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_1a
    iget-object v1, v0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "onClick: v9_recording_snap"

    invoke-static {v1, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v0, Lz4/C;->n:Z

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_2

    :cond_1b
    invoke-static {}, LU6/c;->i()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-array v2, v13, [Ljava/lang/Object;

    const-string/jumbo v3, "skip recording stopped: "

    invoke-static {v1, v3, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1c
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/a;

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->o:Lcom/android/camera/module/W;

    instance-of v2, v1, Lcom/xiaomi/milive/mode/MiLiveMasterModule;

    if-eqz v2, :cond_1d

    check-cast v1, Lcom/xiaomi/milive/mode/MiLiveMasterModule;

    invoke-virtual {v1, v10, v10}, Lcom/xiaomi/milive/mode/MiLiveMasterModule;->stopVideoRecording(ZZ)V

    :cond_1d
    :goto_2
    iget-object v0, v0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "onCameraPickerClick: "

    invoke-static {v11, v1, v0}, LF1/j3;->f(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xca
        :pswitch_8
        :pswitch_f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zj()V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Lz4/C;->e:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/ui/CameraSnapView;->t(ZZ)V

    return-void
.end method

.method public final zr()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "onClick: v9_thumbnail_layout"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lz4/C;->J:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick: ignore thumbnail click event as loading thumbnail"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v2, 0xa3

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lz4/C;->m:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick: ignore thumbnail click event as recording"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, LQ6/K0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LE3/n;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, LE3/n;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v2, 0xa7

    if-ne v0, v2, :cond_2

    invoke-static {}, Lz4/C;->pr()V

    :cond_2
    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lz4/C;->Gr()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "onClick: v9_thumbnail_layout, onThumbnailClicked"

    invoke-static {v1, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz4/C;->lr()Landroid/graphics/Rect;

    new-instance p0, LEs/b;

    const/16 v1, 0x13

    invoke-direct {p0, v1}, LEs/b;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "onClick: v9_thumbnail_layout, onReviewCancelClicked"

    invoke-static {v2, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lf2/a;->f:Lf2/a;

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, v1, v1, v1}, Lf2/a;->j(IZZZZ)V

    new-instance p0, LF1/C;

    const/16 v1, 0x10

    invoke-direct {p0, v1}, LF1/C;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p0

    const-string/jumbo v0, "shot_thumbnail_gap"

    invoke-virtual {p0, v0}, LF6/q;->g(Ljava/lang/String;)J

    return-void
.end method
