.class public Lq5/h;
.super Lcom/android/camera/fragment/h;
.source "SourceFile"

# interfaces
.implements LN6/l;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements LQ6/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq5/h$c;
    }
.end annotation


# instance fields
.field public I:I

.field public J:I

.field public K:I

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:I

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Landroid/view/View;

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Lq5/h$c;

.field public Z:Z

.field public a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

.field public a0:I

.field public b:Landroid/widget/ScrollView;

.field public final c:Landroid/graphics/PointF;

.field public final d:[I

.field public e:I

.field public f:Landroid/widget/TextView;

.field public g:Landroid/text/Layout;

.field public h:Lq5/c;

.field public i:Landroid/widget/LinearLayout;

.field public j:Lio/reactivex/disposables/b;

.field public k:Lio/reactivex/disposables/b;

.field public l:Landroid/widget/ImageView;

.field public m:Lcom/airbnb/lottie/LottieAnimationView;

.field public n:Landroid/widget/ImageView;

.field public o:Lcom/airbnb/lottie/LottieAnimationView;

.field public p:Landroid/widget/ImageView;

.field public q:Lq5/I;

.field public r:Landroid/text/SpannableStringBuilder;

.field public s:Landroid/text/style/TextAppearanceSpan;

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/h;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lq5/h;->c:Landroid/graphics/PointF;

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lq5/h;->d:[I

    iput v0, p0, Lq5/h;->O:I

    iput-boolean v0, p0, Lq5/h;->Q:Z

    iput-boolean v0, p0, Lq5/h;->R:Z

    iput-boolean v0, p0, Lq5/h;->S:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lq5/h;->U:Z

    iput-boolean v0, p0, Lq5/h;->X:Z

    sget-object v1, Lq5/h$c;->a:Lq5/h$c;

    iput-object v1, p0, Lq5/h;->Y:Lq5/h$c;

    iput-boolean v0, p0, Lq5/h;->Z:Z

    iput v0, p0, Lq5/h;->a0:I

    return-void
.end method

.method public static synthetic Mq(Lq5/h;I)V
    .locals 4

    iget-object v0, p0, Lq5/h;->d:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0}, Lq5/h;->cr()V

    const/4 v2, 0x1

    aget v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v3, p0, Lq5/h;->S:Z

    if-nez v3, :cond_0

    div-int v0, p1, v0

    iput v0, p0, Lq5/h;->t:I

    iget v3, p0, Lq5/h;->J:I

    if-eq v3, v0, :cond_0

    invoke-virtual {p0}, Lq5/h;->er()V

    iget v0, p0, Lq5/h;->t:I

    iput v0, p0, Lq5/h;->J:I

    :cond_0
    iget-object v0, p0, Lq5/h;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, p0, Lq5/h;->K:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lq5/h;->b:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    if-ne v0, p1, :cond_1

    iput-boolean v2, p0, Lq5/h;->P:Z

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "initView: mIsBottomReached is true "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lq5/h;->P:Z

    :goto_0
    iget-boolean v0, p0, Lq5/h;->X:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lq5/h;->Uq(I)V

    :cond_2
    return-void
.end method

.method public static ar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_common"

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

    const-string v1, "attr_in_recording"

    invoke-virtual {v0, p1, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Liq/a;

    const-string v1, "click"

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2, v1, v2}, Liq/a;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    return-void
.end method


# virtual methods
.method public final Cc()V
    .locals 2

    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lq5/h;->a0:I

    and-int/lit8 v1, v0, 0x1

    if-lez v1, :cond_1

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq5/h;->a0:I

    :cond_1
    :goto_0
    return-void
.end method

.method public N()V
    .locals 4

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lq5/h$c;->b:Lq5/h$c;

    iput-object v0, p0, Lq5/h;->Y:Lq5/h$c;

    iget-object v0, p0, Lq5/h;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1414b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lq5/h;->dr(ZZ)V

    iget-boolean v1, p0, Lq5/h;->M:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, v0}, Lq5/h;->i1(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Nq()V
    .locals 6

    iget-object v0, p0, Lq5/h;->k:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lq5/h;->k:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lq5/h;->k:Lio/reactivex/disposables/b;

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget v1, Lio/reactivex/h;->a:I

    sget-object v1, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    const-string/jumbo v2, "unit is null"

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scheduler is null"

    invoke-static {v1, v0}, Lio/reactivex/internal/functions/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/reactivex/internal/operators/flowable/p;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Lio/reactivex/internal/operators/flowable/p;-><init>(JLio/reactivex/v;)V

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    sget v2, Lio/reactivex/h;->a:I

    invoke-virtual {v0, v1, v2}, Lio/reactivex/h;->a(Lio/reactivex/v;I)Lio/reactivex/internal/operators/flowable/k;

    move-result-object v0

    new-instance v1, LFn/T;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, LFn/T;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/h;->subscribe(Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object v0

    iput-object v0, p0, Lq5/h;->k:Lio/reactivex/disposables/b;

    return-void
.end method

.method public Oq()V
    .locals 7

    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-static {v0}, Lmiuix/animation/Folme;->clean(Landroid/view/View;)V

    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->setAnimating(Z)V

    invoke-virtual {p0}, Lq5/h;->Tq()V

    iget-object v0, p0, Lq5/h;->q:Lq5/I;

    invoke-virtual {v0}, Lq5/I;->c()V

    invoke-virtual {p0}, Lq5/h;->Pq()V

    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->setCurrentOrientation(I)V

    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p0}, Lq5/h;->Tq()V

    iget-object v2, p0, Lq5/h;->q:Lq5/I;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v3

    invoke-virtual {v2, v3}, Lq5/I;->a(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->P(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v2, ""

    const-string v3, "pref_video_prompter_location_key"

    const/4 v4, 0x1

    if-nez v0, :cond_3

    iget-object p0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->I:Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->I:Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1, v4}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->A(Landroid/graphics/Rect;Z)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->S:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->S:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->T:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    :cond_2
    iget-object v5, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->S:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iget v4, v5, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr v2, v6

    add-int/2addr v3, v4

    invoke-direct {v0, v6, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->O(Landroid/graphics/Rect;Lmiuix/animation/controller/AnimState;)V

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->I:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->I:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->I:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->B(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->I:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    iget-boolean v0, p0, Lq5/h;->N:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getCurrentLocationByDisplay()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->A(Landroid/graphics/Rect;Z)V

    return-void

    :cond_4
    iget-object p0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->A(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public Ph(Lq5/I$b;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lq5/h;->Tq()V

    iget-object v2, p0, Lq5/h;->q:Lq5/I;

    iget-object v2, v2, Lq5/I;->a:Ljava/util/EnumMap;

    invoke-virtual {v2, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LF1/u1;

    invoke-direct {v3, v1}, LF1/u1;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lq5/h;->Tq()V

    iget-object p1, p0, Lq5/h;->q:Lq5/I;

    iget-object p1, p1, Lq5/I;->a:Ljava/util/EnumMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iget-boolean v2, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->W:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lq5/h;->Tq()V

    iget-object v2, p0, Lq5/h;->q:Lq5/I;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v3

    invoke-virtual {v2, v3}, Lq5/I;->a(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->P(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->I:Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->r:Lmiuix/animation/controller/AnimState;

    iget-object v2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->g0:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$b;

    invoke-virtual {p1, v2}, Lmiuix/animation/controller/AnimState;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lmiuix/animation/Folme;->clean(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p1

    iget v3, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->V:I

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/View;->setRotation(F)V

    :cond_3
    iget-boolean p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->d0:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->I:Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->S:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le p1, v3, :cond_4

    iget p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->V:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->r:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->clear()V

    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->r:Lmiuix/animation/controller/AnimState;

    iget-object v3, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->S:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-double v3, v3

    invoke-virtual {p1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->H(J)V

    new-array p1, v0, [Landroid/view/View;

    aput-object p0, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->r:Lmiuix/animation/controller/AnimState;

    iget-object p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->q:Lmiuix/animation/base/AnimConfig;

    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_4
    :goto_1
    return-void
.end method

.method public final Pq()V
    .locals 3

    invoke-static {}, LK2/b;->W()Z

    move-result v0

    sget-object v1, Lq5/I$b;->b:Lq5/I$b;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0718ce

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lq5/h;->qa(Lq5/I$b;I)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lq5/h;->Ph(Lq5/I$b;)V

    return-void
.end method

.method public final Qq()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    invoke-static {}, LK2/b;->R()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lq5/h;->q:Lq5/I;

    iget-object v0, v0, Lq5/I;->a:Ljava/util/EnumMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    sget-object v2, Lq5/I$b;->c:Lq5/I$b;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lq5/h;->Ph(Lq5/I$b;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->O()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/data/data/j;->b0(IZ)LF1/j4;

    move-result-object v0

    iget-boolean v1, v0, LF1/j4;->a:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v0, LF1/j4;->b:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/j;->A1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07188e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lq5/h;->qa(Lq5/I$b;I)V

    :cond_2
    return-void
.end method

.method public final Rq()I
    .locals 1

    iget-object v0, p0, Lq5/h;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lq5/h;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    return p0
.end method

.method public Sq()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/l;

    move-result-object p0

    check-cast p0, Lcom/android/camera/a;

    const/4 v0, 0x0

    const-class v1, Lcom/android/camera/fragment/videoprompter/VideoPrompterEditActivity;

    invoke-static {p0, v1, v0}, Lvr/d;->c(Landroid/app/Activity;Ljava/lang/Class;Lvr/a;)V

    sget-object v0, LOh/c;->m:LOh/c;

    invoke-virtual {p0, v0}, Lcom/android/camera/a;->G2(LOh/c;)V

    return-void
.end method

.method public Tq()V
    .locals 1

    iget-object v0, p0, Lq5/h;->q:Lq5/I;

    if-nez v0, :cond_0

    new-instance v0, Lq5/I;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    invoke-direct {v0}, Lq5/I;-><init>()V

    iput-object v0, p0, Lq5/h;->q:Lq5/I;

    :cond_0
    return-void
.end method

.method public Uq(I)V
    .locals 0

    return-void
.end method

.method public final Vq()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-virtual {p0}, Lq5/h;->Zq()V

    iget-boolean v0, p0, Lq5/h;->P:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq5/h;->d:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    iput-boolean v1, p0, Lq5/h;->P:Z

    :cond_0
    invoke-virtual {p0}, Lq5/h;->cr()V

    invoke-virtual {p0}, Lq5/h;->Rq()I

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lq5/h;->e:I

    if-eqz v1, :cond_1

    const v2, 0xea60

    div-int/2addr v2, v1

    div-int/2addr v2, v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x32

    :goto_0
    int-to-long v3, v2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    move-wide v5, v3

    invoke-static/range {v3 .. v8}, Lio/reactivex/q;->g(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/v;)Lio/reactivex/internal/operators/observable/y;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {v0, v1}, Lio/reactivex/q;->m(Lio/reactivex/v;)Lio/reactivex/internal/operators/observable/C;

    move-result-object v0

    new-instance v1, LYj/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, LYj/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/q;->subscribe(Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object v0

    iput-object v0, p0, Lq5/h;->j:Lio/reactivex/disposables/b;

    return-void
.end method

.method public final Wq()V
    .locals 2

    iget-boolean v0, p0, Lq5/h;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lq5/h;->i1(ZZ)V

    :cond_0
    iget-object v0, p0, Lq5/h;->k:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lq5/h;->k:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lq5/h;->k:Lio/reactivex/disposables/b;

    :cond_1
    iget-object p0, p0, Lq5/h;->b:Landroid/widget/ScrollView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_2
    return-void
.end method

.method public Xq()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lq5/h;->br(Z)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LC4/M;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LC4/M;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Ye()Z
    .locals 0

    iget-boolean p0, p0, Lq5/h;->M:Z

    return p0
.end method

.method public final Yq(Z)V
    .locals 11

    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move p1, v2

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge p1, v3, :cond_0

    iget-object v3, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move p1, v2

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-ge p1, v3, :cond_2

    iget-object v3, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/2addr p1, v1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lq5/h;->b:Landroid/widget/ScrollView;

    new-array v0, v1, [Landroid/view/View;

    aput-object p1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v3, "alpha"

    invoke-direct {v0, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/high16 v8, 0x43480000    # 200.0f

    new-array v9, v1, [F

    aput v8, v9, v2

    const/16 v10, 0x12

    invoke-virtual {v7, v10, v9}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    filled-new-array {v7}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    invoke-interface {p1, v0, v7}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object p0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    filled-new-array {p1, v0, v7, p0}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-static {v3, v4, v5, v6}, LMf/c;->h(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v3, 0x6

    new-array v1, v1, [F

    aput v8, v1, v2

    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public Z()V
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lq5/h$c;->b:Lq5/h$c;

    iput-object v0, p0, Lq5/h;->Y:Lq5/h$c;

    iget-boolean v0, p0, Lq5/h;->M:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lq5/h;->i1(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Zj(I)V
    .locals 3

    iget v0, p0, Lq5/h;->a0:I

    or-int/2addr p1, v0

    iput p1, p0, Lq5/h;->a0:I

    iget-boolean p1, p0, Lq5/h;->L:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lq5/h;->ji(Z)V

    :cond_0
    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->N(ZILandroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {p0}, Lq5/h;->Wq()V

    return-void
.end method

.method public final Zq()V
    .locals 1

    iget-object v0, p0, Lq5/h;->j:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lq5/h;->j:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lq5/h;->j:Lio/reactivex/disposables/b;

    :cond_0
    return-void
.end method

.method public final br(Z)V
    .locals 1

    iput-boolean p1, p0, Lq5/h;->L:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lq5/h;->p:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lq5/h;->p:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f060be1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public final cr()V
    .locals 6

    iget-boolean v0, p0, Lq5/h;->Q:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    const v1, 0x7f0b0b1e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    const v2, 0x7f0b0145

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lq5/h;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lq5/h;->Rq()I

    move-result v3

    iget-object v4, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v4, v0

    if-eqz v3, :cond_5

    div-int v0, v4, v3

    mul-int v1, v0, v3

    if-eq v4, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lq5/h;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v5, 0x3

    if-le v1, v4, :cond_2

    sub-int/2addr v0, v5

    mul-int/2addr v0, v3

    iput v0, p0, Lq5/h;->K:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lq5/h;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-le v0, v5, :cond_3

    iget-object v0, p0, Lq5/h;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    sub-int/2addr v0, v5

    mul-int/2addr v0, v3

    add-int/2addr v0, v4

    iget-object v1, p0, Lq5/h;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lq5/h;->K:I

    :cond_3
    :goto_0
    iget v0, p0, Lq5/h;->K:I

    if-eqz v0, :cond_4

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lq5/h;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v0, p0, Lq5/h;->d:[I

    invoke-virtual {p0}, Lq5/h;->Rq()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iput-boolean v2, p0, Lq5/h;->Q:Z

    const/4 v0, 0x0

    iput v0, p0, Lq5/h;->t:I

    :cond_5
    :goto_1
    return-void
.end method

.method public d0()V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lq5/h$c;->c:Lq5/h$c;

    iput-object v0, p0, Lq5/h;->Y:Lq5/h$c;

    iget-boolean v0, p0, Lq5/h;->M:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lq5/h;->i1(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final dr(ZZ)V
    .locals 2

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lq5/h;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lq5/h;->n:Landroid/widget/ImageView;

    invoke-static {p1}, Li0/E;->a(Landroid/view/View;)Li0/N;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Li0/N;->e(J)V

    invoke-virtual {p1, p2}, Li0/N;->a(F)V

    new-instance p2, LLy/g;

    invoke-direct {p2}, LLy/g;-><init>()V

    invoke-virtual {p1, p2}, Li0/N;->f(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1}, Li0/N;->i()V

    :goto_0
    iget-object p0, p0, Lq5/h;->n:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lq5/h;->n:Landroid/widget/ImageView;

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object p0, p0, Lq5/h;->n:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public e0(Z)V
    .locals 5

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lq5/h$c;->d:Lq5/h$c;

    iput-object v0, p0, Lq5/h;->Y:Lq5/h$c;

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    iget-object p0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-boolean p1, p0, Lq5/h;->M:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2, v1}, Lq5/h;->i1(ZZ)V

    :cond_2
    iget-boolean p1, p0, Lq5/h;->P:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lq5/h;->b:Landroid/widget/ScrollView;

    invoke-virtual {p1, v2, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    iput-boolean v2, p0, Lq5/h;->P:Z

    :cond_3
    iget-boolean p1, p0, Lq5/h;->N:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lq5/h;->fr(Z)V

    :cond_4
    iget-object p1, p0, Lq5/h;->l:Landroid/widget/ImageView;

    sget-object v3, Li0/E;->a:Ljava/util/WeakHashMap;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lq5/h;->l:Landroid/widget/ImageView;

    invoke-static {p1}, Li0/E;->a(Landroid/view/View;)Li0/N;

    move-result-object p1

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v3, v4}, Li0/N;->e(J)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3}, Li0/N;->a(F)V

    new-instance v3, LLy/g;

    invoke-direct {v3}, LLy/g;-><init>()V

    invoke-virtual {p1, v3}, Li0/N;->f(Landroid/view/animation/Interpolator;)V

    new-instance v3, Lq5/h$b;

    invoke-direct {v3, p0}, Lq5/h$b;-><init>(Lq5/h;)V

    invoke-virtual {p1, v3}, Li0/N;->g(Li0/O;)V

    invoke-virtual {p1}, Li0/N;->i()V

    iget-object p1, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2, v1}, Lq5/h;->dr(ZZ)V

    return-void
.end method

.method public e2(I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    iget v0, p0, Lq5/h;->a0:I

    and-int v1, v0, p1

    if-eqz v1, :cond_0

    xor-int/2addr p1, v0

    iput p1, p0, Lq5/h;->a0:I

    :cond_0
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lg3/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg3/f;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lq5/h;->a0:I

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    xor-int/lit8 p1, p1, 0x2

    iput p1, p0, Lq5/h;->a0:I

    :cond_1
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lg3/g;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lg3/g;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Lq5/h;->a0:I

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    xor-int/2addr p1, v0

    iput p1, p0, Lq5/h;->a0:I

    :cond_2
    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lq5/h;->V:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lq5/h;->a0:I

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lq5/h;->Tq()V

    iget-object p1, p0, Lq5/h;->q:Lq5/I;

    invoke-virtual {p1}, Lq5/I;->c()V

    invoke-virtual {p0}, Lq5/h;->Pq()V

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p0}, Lq5/h;->Tq()V

    iget-object v1, p0, Lq5/h;->q:Lq5/I;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v2

    invoke-virtual {v1, v2}, Lq5/I;->a(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->P(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    const-string v3, "pref_video_prompter_location_key"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->N(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lq5/h;->Yq(Z)V

    iget-object p1, p0, Lq5/h;->Y:Lq5/h$c;

    sget-object v1, Lq5/h$c;->b:Lq5/h$c;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lq5/h;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1414b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0, v3}, Lq5/h;->dr(ZZ)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lq5/h;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f08101d

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    invoke-virtual {p0, v0, v0}, Lq5/h;->dr(ZZ)V

    :goto_0
    iput-boolean v3, p0, Lq5/h;->N:Z

    iget-object p1, p0, Lq5/h;->r:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object p1, p0, Lq5/h;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lq5/h;->r:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    iput p1, p0, Lq5/h;->J:I

    iput-boolean v3, p0, Lq5/h;->Q:Z

    invoke-static {}, LQ6/S0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LHs/c;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, LHs/c;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public er()V
    .locals 5

    iget-object v0, p0, Lq5/h;->g:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lq5/h;->r:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    :try_start_0
    iget v1, p0, Lq5/h;->t:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    iput v0, p0, Lq5/h;->I:I

    iget-object v0, p0, Lq5/h;->g:Landroid/text/Layout;

    iget v1, p0, Lq5/h;->t:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    iget-object v1, p0, Lq5/h;->r:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lq5/h;->s:Landroid/text/style/TextAppearanceSpan;

    iget v3, p0, Lq5/h;->I:I

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lq5/h;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lq5/h;->r:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "updateTextHeightLight: change text size so quickly caused"

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final f1(F)V
    .locals 2

    iget-object v0, p0, Lq5/h;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iput-boolean v1, p0, Lq5/h;->Q:Z

    return-void
.end method

.method public fr(Z)V
    .locals 10

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, v3, Lcom/airbnb/lottie/LottieAnimationView;->h:Lq1/E;

    invoke-virtual {v3}, Lq1/E;->l()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iget-boolean v3, v3, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->W:Z

    if-eqz v3, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v3, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v4, p0, Lq5/h;->N:Z

    if-eqz v4, :cond_1

    const v4, 0x7f13027a

    goto :goto_0

    :cond_1
    const v4, 0x7f130277

    :goto_0
    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v3, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    iget-object v3, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iget-boolean v4, v3, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->c0:Z

    if-eqz v4, :cond_2

    const/16 v4, 0xc

    goto :goto_1

    :cond_2
    const/4 v4, 0x6

    :goto_1
    iget v5, v3, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->V:I

    div-int/lit8 v5, v5, 0x5a

    rsub-int/lit8 v6, v5, 0x4

    shl-int v6, v4, v6

    and-int/lit8 v6, v6, 0xf

    shr-int/2addr v4, v5

    or-int/2addr v4, v6

    iput v4, v3, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->t:I

    invoke-virtual {v3}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getGlobalVisibleRect()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, v3, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->N:Landroid/graphics/PointF;

    iget v3, v3, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->t:I

    and-int/lit8 v6, v3, 0x8

    if-eqz v6, :cond_3

    iget v6, v4, Landroid/graphics/Rect;->left:I

    :goto_2
    int-to-float v6, v6

    goto :goto_3

    :cond_3
    iget v6, v4, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :goto_3
    iput v6, v5, Landroid/graphics/PointF;->x:F

    and-int/2addr v3, v0

    if-eqz v3, :cond_4

    iget v3, v4, Landroid/graphics/Rect;->top:I

    :goto_4
    int-to-float v3, v3

    goto :goto_5

    :cond_4
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :goto_5
    iput v3, v5, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {v3, v2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->setAnimating(Z)V

    if-eqz p1, :cond_7

    invoke-virtual {p0, v1}, Lq5/h;->Yq(Z)V

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    new-instance v0, Lq5/h$a;

    invoke-direct {v0, p0}, Lq5/h$a;-><init>(Lq5/h;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v4, "zoomOut"

    invoke-direct {v3, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iget v4, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->Q:I

    iget v5, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->R:I

    invoke-virtual {p1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->F()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->S:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->Q:I

    iget-object v4, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->S:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->R:I

    goto :goto_6

    :cond_5
    iget-object v6, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->S:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->Q:I

    iget-object v4, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->S:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->R:I

    :goto_6
    sget-object v4, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    iget v5, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->Q:I

    int-to-double v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v5, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    iget v6, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->R:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "zoomOutLayout: mZoomOutTargetWidth = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->Q:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mZoomOutTargetHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->R:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "ArbitraryRectLayout"

    invoke-static {v6, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->F()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->R:I

    iget v5, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->Q:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->L(Lmiuix/animation/controller/AnimState;II)V

    goto :goto_7

    :cond_6
    iget v4, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->Q:I

    iget v5, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->R:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->L(Lmiuix/animation/controller/AnimState;II)V

    :goto_7
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->H(J)V

    iget-object v4, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->h0:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout$c;

    iget-object v5, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->q:Lmiuix/animation/base/AnimConfig;

    const/4 v6, 0x2

    new-array v6, v6, [Lmiuix/animation/listener/TransitionListener;

    aput-object v4, v6, v1

    aput-object v0, v6, v2

    invoke-virtual {v5, v6}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array v0, v2, [Landroid/view/View;

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object p1, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->q:Lmiuix/animation/base/AnimConfig;

    filled-new-array {p1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object p1, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1414b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string p1, "prompter_expand"

    invoke-static {p1}, Liq/d;->j(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_7
    iget-boolean p1, p0, Lq5/h;->M:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0, v1, v2}, Lq5/h;->i1(ZZ)V

    :cond_8
    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v3, v1

    :goto_8
    add-int/lit8 v4, p1, -0x1

    if-ge v3, v4, :cond_a

    iget-object v4, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/ScrollView;

    if-eqz v5, :cond_9

    filled-new-array {v4}, [Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v5

    invoke-interface {v5}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v5

    new-instance v6, Lmiuix/animation/controller/AnimState;

    const-string v7, "alpha"

    invoke-direct {v6, v7}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v7, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v8, v2, [F

    const/high16 v9, 0x43480000    # 200.0f

    aput v9, v8, v1

    const/16 v9, 0x12

    invoke-virtual {v7, v9, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    new-instance v8, Lq5/i;

    check-cast v4, Landroid/widget/ScrollView;

    invoke-direct {v8, v4}, Lq5/i;-><init>(Landroid/widget/ScrollView;)V

    new-array v4, v2, [Lmiuix/animation/listener/TransitionListener;

    aput-object v8, v4, v1

    invoke-virtual {v7, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    filled-new-array {v4}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_9

    :cond_9
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    add-int/2addr v3, v2

    goto :goto_8

    :cond_a
    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->S()V

    iget-object p1, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1414b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string p1, "prompter_shrink"

    invoke-static {p1}, Liq/d;->j(Ljava/lang/String;)V

    :goto_a
    iget-boolean p1, p0, Lq5/h;->N:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lq5/h;->N:Z

    :cond_b
    :goto_b
    return-void
.end method

.method public getFragmentId()I
    .locals 0

    const/16 p0, 0xec

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0e01c2

    return p0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FragmentVideoPrompter"

    return-object p0
.end method

.method public i1(ZZ)V
    .locals 1

    iget-object v0, p0, Lq5/h;->o:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->h:Lq1/E;

    invoke-virtual {v0}, Lq1/E;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lq5/h;->M:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lq5/h;->o:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_1

    const v0, 0x7f130274

    goto :goto_0

    :cond_1
    const v0, 0x7f130275

    :goto_0
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p2, p0, Lq5/h;->o:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    iget-object p2, p0, Lq5/h;->o:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0808f5

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    iget-object p1, p0, Lq5/h;->o:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f14095d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lq5/h;->Vq()V

    return-void

    :cond_4
    iget-object p1, p0, Lq5/h;->o:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1414b1

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lq5/h;->Zq()V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isTrueColourVideoSupported"
        type = 0x0
    .end annotation

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->initView(Landroid/view/View;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->Q()Z

    move-result v1

    iput-boolean v1, p0, Lq5/h;->W:Z

    move-object v1, p1

    check-cast v1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iput-object v1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p0}, Lq5/h;->Tq()V

    iget-object v2, p0, Lq5/h;->q:Lq5/I;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v3

    invoke-virtual {v2, v3}, Lq5/I;->a(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->P(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const-string/jumbo v1, "sans-serif-medium"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v5

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    iput-object v3, p0, Lq5/h;->s:Landroid/text/style/TextAppearanceSpan;

    const v1, 0x7f0b0bda

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lq5/h;->f:Landroid/widget/TextView;

    new-instance v2, Lq5/c;

    invoke-direct {v2, p0}, Lq5/c;-><init>(Lq5/h;)V

    iput-object v2, p0, Lq5/h;->h:Lq5/c;

    new-instance v2, Lq5/g;

    invoke-direct {v2, p0}, Lq5/g;-><init>(Lq5/h;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v1, p0, Lq5/h;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/data/data/E;->q()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071879

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/android/camera/data/data/E;->N0(F)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07187f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07187e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v3

    cmpl-float v5, v3, v2

    if-lez v5, :cond_1

    invoke-static {v3}, Lcom/android/camera/data/data/E;->N0(F)V

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    int-to-float v3, v4

    cmpg-float v4, v3, v2

    if-gez v4, :cond_2

    invoke-static {v3}, Lcom/android/camera/data/data/E;->N0(F)V

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/z0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/z0;

    iget v1, v1, Lv2/z0;->c:I

    iput v1, p0, Lq5/h;->e:I

    const v1, 0x7f0b0128

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lq5/h;->i:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0bd9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lq5/h;->b:Landroid/widget/ScrollView;

    new-instance v2, Lq5/d;

    invoke-direct {v2, p0}, Lq5/d;-><init>(Lq5/h;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object v1, p0, Lq5/h;->b:Landroid/widget/ScrollView;

    new-instance v2, Lq5/e;

    invoke-direct {v2, p0}, Lq5/e;-><init>(Lq5/h;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0b0226

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lq5/h;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0ce2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v2, LF1/D2;->f:LF1/D2;

    iget-boolean v2, v2, LF1/D2;->d:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lvr/b0;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LFn/M;

    const/16 v5, 0xb

    invoke-direct {v4, p0, v5}, LFn/M;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iget-boolean v4, p0, Lq5/h;->Z:Z

    invoke-virtual {v1, v4}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->setNeedReversal(Z)V

    iget-boolean v1, p0, Lq5/h;->Z:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lq5/h;->b:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    :cond_4
    const v1, 0x7f0b0362

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lq5/h;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0848

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lq5/h;->o:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b007d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lq5/h;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lq5/h;->br(Z)V

    iget-object v1, p0, Lq5/h;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b076c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0b0ce5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0b0cf1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->d6()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_5
    invoke-static {}, Lcom/android/camera/data/data/j;->C0()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/android/camera/data/data/m;->N()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    :goto_3
    sget-object p1, Lq5/I$b;->a:Lq5/I$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07188e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lq5/h;->qa(Lq5/I$b;I)V

    return-void
.end method

.method public ji(Z)V
    .locals 3

    iget-object v0, p0, Lq5/h;->Y:Lq5/h$c;

    sget-object v1, Lq5/h$c;->b:Lq5/h$c;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lq5/h;->M:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v2, v0}, Lq5/h;->i1(ZZ)V

    :cond_0
    invoke-virtual {p0, v2}, Lq5/h;->br(Z)V

    iget-object p0, p0, Lq5/h;->Y:Lq5/h$c;

    if-eq p0, v1, :cond_1

    sget-object v0, Lq5/h$c;->c:Lq5/h$c;

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LCs/J;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, LCs/J;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_2
    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class p1, LN6/k;

    invoke-virtual {p0, p1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LE3/l;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, LE3/l;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final m1(I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "onTextSpeedChanged: textSpeed = "

    invoke-static {p1, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lq5/h;->e:I

    iget-boolean p1, p0, Lq5/h;->M:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lq5/h;->Nq()V

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lq5/h;->i1(ZZ)V

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->notifyAfterFrameAvailable(I)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LF1/W2;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, LF1/W2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lq5/h;->Zj(I)V

    iput v0, p0, Lq5/h;->a0:I

    return-void

    :cond_0
    iget p1, p0, Lq5/h;->a0:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->a0:Z

    if-nez p1, :cond_1

    invoke-static {}, LK2/b;->a0()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lq5/h;->e2(I)V

    :cond_1
    return-void
.end method

.method public final notifyPreviewRectChange(LZ5/h;Landroid/graphics/Rect;FLZ5/p;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/b;->notifyPreviewRectChange(LZ5/h;Landroid/graphics/Rect;FLZ5/p;)V

    iget-boolean p1, p0, Lq5/h;->W:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, LZ5/p;->a:LZ5/p;

    if-ne p4, p1, :cond_2

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iget-boolean p2, p1, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->a0:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->setAlphaAnimating(Z)V

    return-void

    :cond_2
    sget-object p1, LZ5/p;->c:LZ5/p;

    if-ne p4, p1, :cond_4

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->setAlphaAnimating(Z)V

    return-void

    :cond_3
    iget p1, p0, Lq5/h;->a0:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-static {p1}, Lmiuix/animation/Folme;->clean(Landroid/view/View;)V

    invoke-virtual {p0}, Lq5/h;->Oq()V

    iget-object p0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->M()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onBackEvent(I)Z
    .locals 1

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LE4/a;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, LE4/a;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LQ6/o;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/g;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, LEs/g;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LE4/c;

    const/16 v0, 0x11

    invoke-direct {p1, v0}, LE4/c;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId",
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-boolean v0, p0, Lq5/h;->V:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iget-boolean v1, v0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->W:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lq5/h;->o:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->h:Lq1/E;

    invoke-virtual {v0}, Lq1/E;->l()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LN6/k;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LU4/g;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LU4/g;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lq5/h;->T:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: is touching"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    return-void

    :sswitch_0
    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick: zoom_btn"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, LS1/i;->n(Landroid/view/View;)V

    sget-object p1, LF1/D2;->f:LF1/D2;

    iget-boolean p1, p1, LF1/D2;->d:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lq5/h;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iget-boolean p1, p0, Lq5/h;->N:Z

    invoke-virtual {p0, p1}, Lq5/h;->fr(Z)V

    return-void

    :sswitch_1
    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick: play_text_btn"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lq5/h;->o:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, LS1/i;->n(Landroid/view/View;)V

    iget-boolean p1, p0, Lq5/h;->M:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lq5/h;->i1(ZZ)V

    invoke-static {}, LN6/j;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/O0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/camera/fragment/O0;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/S0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lq5/f;

    invoke-direct {v1, p1}, Lq5/f;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean p1, p0, Lq5/h;->M:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lq5/h;->ve()Ljava/lang/String;

    move-result-object p0

    const-string p1, "prompter_play"

    invoke-static {p1, p0}, Lq5/h;->ar(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lq5/h;->ve()Ljava/lang/String;

    move-result-object p0

    const-string p1, "prompter_pause"

    invoke-static {p1, p0}, Lq5/h;->ar(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_2
    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick: edit_text_btn"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq5/h;->Sq()V

    const-string p0, "prompter_text_edit"

    invoke-static {p0}, Liq/d;->j(Ljava/lang/String;)V

    return-void

    :sswitch_3
    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "onClick: close_btn"

    invoke-static {p1, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p1, v0}, Lcom/android/camera/data/data/E;->M0(IZ)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LC4/G;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, LC4/G;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LCs/v;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LCs/v;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lq5/h;->Zj(I)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LE3/i;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, LE3/i;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/S0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LB3/b;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, LB3/b;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string/jumbo p0, "video_prompter_close"

    invoke-static {p0}, Liq/d;->j(Ljava/lang/String;)V

    return-void

    :sswitch_4
    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "onClick: adjust_text_btn"

    invoke-static {p1, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lq5/h;->p:Landroid/widget/ImageView;

    invoke-static {p1}, LS1/i;->n(Landroid/view/View;)V

    iget-boolean p1, p0, Lq5/h;->L:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Lq5/h;->ji(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lq5/h;->Xq()V

    :goto_0
    invoke-virtual {p0}, Lq5/h;->ve()Ljava/lang/String;

    move-result-object p0

    const-string p1, "prompter_scrolling_edit"

    invoke-static {p1, p0}, Lq5/h;->ar(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: two clicks time interval too short for video prompter"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b007d -> :sswitch_4
        0x7f0b0226 -> :sswitch_3
        0x7f0b0362 -> :sswitch_2
        0x7f0b0848 -> :sswitch_1
        0x7f0b0ce2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq5/h;->V:Z

    iget-boolean v0, p0, Lq5/h;->L:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lq5/h;->ji(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onResume: "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/fragment/h;->onResume()V

    invoke-virtual {p0}, Lq5/h;->Tq()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lq5/G;->d(Landroid/app/Activity;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lq5/h;->f:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lq5/h;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lq5/h;->r:Landroid/text/SpannableStringBuilder;

    :cond_1
    invoke-virtual {p0, v2}, Lq5/h;->ji(Z)V

    invoke-virtual {p0}, Lq5/h;->Qq()V

    iput-boolean v1, p0, Lq5/h;->Q:Z

    const/4 v0, -0x1

    iput v0, p0, Lq5/h;->J:I

    iput v1, p0, Lq5/h;->t:I

    iput-boolean v2, p0, Lq5/h;->V:Z

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lq5/h;->e2(I)V

    invoke-static {}, LQ6/S0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LHs/c;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LHs/c;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    invoke-virtual {p0}, Lq5/h;->Wq()V

    invoke-static {}, LQ6/S0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LB3/b;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LB3/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq5/h;->T:Landroid/view/View;

    if-eq v0, p1, :cond_6

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lq5/h;->T:Landroid/view/View;

    if-eq v0, p1, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lq5/h;->T:Landroid/view/View;

    :cond_3
    iget-boolean v0, p0, Lq5/h;->U:Z

    if-nez v0, :cond_6

    iput-boolean v1, p0, Lq5/h;->U:Z

    return v2

    :cond_4
    iget-object v0, p0, Lq5/h;->T:Landroid/view/View;

    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p0}, Lq5/h;->Tq()V

    iget-object v3, p0, Lq5/h;->q:Lq5/I;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v4

    invoke-virtual {v3, v4}, Lq5/I;->a(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->P(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lq5/h;->T:Landroid/view/View;

    :cond_6
    :goto_0
    iget-boolean v0, p0, Lq5/h;->U:Z

    if-nez v0, :cond_7

    :goto_1
    return v2

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "onTouch: zoom right"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->T(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lq5/h;->Q:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lq5/h;->er()V

    :cond_8
    iput-boolean v2, p0, Lq5/h;->Q:Z

    goto :goto_2

    :sswitch_1
    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "onTouch: zoom left"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->T(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lq5/h;->Q:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lq5/h;->er()V

    :cond_9
    iput-boolean v2, p0, Lq5/h;->Q:Z

    goto :goto_2

    :sswitch_2
    iget-boolean v0, p0, Lq5/h;->N:Z

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lq5/h;->onClick(Landroid/view/View;)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->G(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Lq5/h;->onClick(Landroid/view/View;)V

    goto :goto_2

    :sswitch_3
    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "onTouch: move"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->G(Landroid/view/MotionEvent;)Z

    :cond_b
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0b076c

    if-eq p1, p2, :cond_d

    const p2, 0x7f0b0ce5

    if-eq p1, p2, :cond_c

    const p2, 0x7f0b0cf1

    if-eq p1, p2, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Lq5/h;->ve()Ljava/lang/String;

    move-result-object p0

    const-string p1, "prompter_size_adjust"

    invoke-static {p1, p0}, Lq5/h;->ar(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    invoke-virtual {p0}, Lq5/h;->ve()Ljava/lang/String;

    move-result-object p0

    const-string p1, "prompter_position_adjust"

    invoke-static {p1, p0}, Lq5/h;->ar(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_3
    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f0b076c -> :sswitch_3
        0x7f0b0ce2 -> :sswitch_2
        0x7f0b0ce5 -> :sswitch_1
        0x7f0b0cf1 -> :sswitch_0
    .end sparse-switch
.end method

.method public final provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/b;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/h;->provideAnimateElement(ILjava/util/List;I)V

    const/16 p1, 0x10

    if-eq p3, p1, :cond_0

    const/16 p1, 0x40

    if-ne p3, p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lq5/h;->L:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lq5/h;->ji(Z)V

    :cond_1
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/h;->provideRotateItem(Ljava/util/List;I)V

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "provideRotateItem: newDegree = "

    invoke-static {p2, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->setCurrentOrientation(I)V

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    float-to-int p1, p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lq5/h;->T:Landroid/view/View;

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lq5/h;->U:Z

    :cond_1
    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p0}, Lq5/h;->Tq()V

    iget-object v0, p0, Lq5/h;->q:Lq5/I;

    invoke-virtual {v0, p2}, Lq5/I;->a(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->P(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iget v0, p0, Lq5/h;->O:I

    invoke-virtual {p1, v0, p2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->J(II)V

    iput p2, p0, Lq5/h;->O:I

    return-void

    :cond_2
    :goto_0
    iput p2, p0, Lq5/h;->O:I

    return-void
.end method

.method public qa(Lq5/I$b;I)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lq5/h;->Tq()V

    iget-object v3, p0, Lq5/h;->q:Lq5/I;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v4

    iput v4, v3, Lq5/I;->e:I

    iget-object v5, v3, Lq5/I;->a:Ljava/util/EnumMap;

    invoke-virtual {v5, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "TipLocationManager"

    if-nez v6, :cond_3

    new-instance v6, Lq5/I$a;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v6, Lq5/I$a;->a:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v6, Lq5/I$a;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_2

    if-eq v9, v0, :cond_1

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    goto :goto_0

    :cond_0
    iget v9, v3, Lq5/I;->d:I

    add-int/2addr v9, p2

    iput v9, v8, Landroid/graphics/Rect;->left:I

    iput v9, v8, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget v9, v3, Lq5/I;->d:I

    add-int/2addr v9, p2

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    iput-boolean v0, v6, Lq5/I$a;->c:Z

    goto :goto_0

    :cond_2
    iget v9, v3, Lq5/I;->d:I

    add-int/2addr v9, p2

    iput v9, v8, Landroid/graphics/Rect;->top:I

    iput-boolean v0, v6, Lq5/I$a;->c:Z

    :goto_0
    invoke-virtual {v5, p1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCurrentLimitRect: add tip, type = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", orientation = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", location ="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v7, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lq5/I;->b()V

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "getCurrentLimitRect: mCurrentLimitRect = "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lq5/I;->c:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v7, p2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, v3, Lq5/I;->c:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->P(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lq5/h;->a:Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;

    iget-boolean p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->W:Z

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p0}, Lmiuix/animation/Folme;->clean(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p1

    iget p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->V:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_5

    invoke-virtual {p0, p2}, Landroid/view/View;->setRotation(F)V

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->r:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->clear()V

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->H(J)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->getGlobalVisibleRect()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->r:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->O(Landroid/graphics/Rect;Lmiuix/animation/controller/AnimState;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    new-array p1, v0, [Landroid/view/View;

    aput-object p0, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->r:Lmiuix/animation/controller/AnimState;

    iget-object p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->q:Lmiuix/animation/base/AnimConfig;

    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_7
    :goto_2
    new-array p1, v0, [Landroid/view/View;

    aput-object p0, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/videoprompter/ArbitraryRectLayout;->r:Lmiuix/animation/controller/AnimState;

    invoke-interface {p1, p0}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_8
    :goto_3
    return-void
.end method

.method public register(LN6/g;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "register: "

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->register(LN6/g;)V

    const-class v0, LN6/l;

    check-cast p1, LN6/h;

    invoke-virtual {p1, v0, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public final sa()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onChangeTextSizeBefore: mIsPlayingText ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lq5/h;->M:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq5/h;->S:Z

    iget-boolean v0, p0, Lq5/h;->M:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq5/h;->Zq()V

    :cond_0
    return-void
.end method

.method public final t7()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onChangeTextSizeAfter: mIsPlayingText ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lq5/h;->M:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lq5/h;->f:Landroid/widget/TextView;

    new-instance v1, LF1/V1;

    const/16 v3, 0xb

    invoke-direct {v1, p0, v3}, LF1/V1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-boolean v2, p0, Lq5/h;->S:Z

    return-void
.end method

.method public unRegister(LN6/g;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "unRegister: "

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->unRegister(LN6/g;)V

    const-class v0, LN6/l;

    check-cast p1, LN6/h;

    invoke-virtual {p1, v0, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public final updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/b;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lq5/h;->Qq()V

    iget p1, p0, Lq5/h;->a0:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lq5/h;->Oq()V

    :cond_0
    return-void
.end method

.method public final ve()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lq5/h;->Y:Lq5/h$c;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "false"

    return-object p0

    :cond_0
    const-string p0, "pause"

    return-object p0

    :cond_1
    const-string/jumbo p0, "true"

    return-object p0
.end method
