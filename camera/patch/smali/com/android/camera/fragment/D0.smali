.class public Lcom/android/camera/fragment/D0;
.super Lcom/android/camera/fragment/h;
.source "SourceFile"

# interfaces
.implements LQ6/k1;
.implements LQ6/c0;


# instance fields
.field public I:Lcom/android/camera/ui/StrokeAdaptiveTextView;

.field public a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public final d:Landroid/graphics/Matrix;

.field public final e:Landroid/graphics/Matrix;

.field public f:Landroid/graphics/Rect;

.field public g:F

.field public h:LF1/Y2;

.field public i:Landroid/graphics/RectF;

.field public j:Landroid/animation/ObjectAnimator;

.field public k:I

.field public l:F

.field public m:F

.field public n:Z

.field public o:Z

.field public p:Landroid/os/Handler;

.field public q:Landroid/animation/AnimatorSet;

.field public r:Landroid/graphics/Rect;

.field public s:Z

.field public t:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/h;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/D0;->d:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/D0;->e:Landroid/graphics/Matrix;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/D0;->n:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/D0;->o:Z

    return-void
.end method

.method public static synthetic Mq(Lcom/android/camera/fragment/D0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic Nq(Lcom/android/camera/fragment/D0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static Pq()Z
    .locals 4

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/F0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    invoke-virtual {v0}, Lv2/F0;->b()I

    move-result v0

    invoke-static {}, LK2/b;->W()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v1, :cond_0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_0
    sget-boolean v1, LK2/e;->n:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_1
    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    return v3
.end method


# virtual methods
.method public final Cf(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/D0;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final G9(ZZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/r;

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lw7/j;->L(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p3, :cond_2

    if-nez v0, :cond_2

    invoke-static {}, LU6/c;->h()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getBaseModule()Ljava/util/Optional;

    move-result-object p3

    new-instance v0, LE3/i;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, LE3/i;-><init>(I)V

    invoke-virtual {p3, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getBaseModule()Ljava/util/Optional;

    move-result-object p3

    new-instance v0, LC4/E;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, LC4/E;-><init>(I)V

    invoke-virtual {p3, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_2
    iget-object p3, p0, Lcom/android/camera/fragment/D0;->p:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getBaseModule()Ljava/util/Optional;

    move-result-object p2

    new-instance p3, LE3/j;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, LE3/j;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    const-wide/16 p2, 0xc8

    invoke-virtual {p0, p2, p3, v1, p1}, Lcom/android/camera/fragment/D0;->Qq(JZZ)V

    return-void
.end method

.method public final Oq()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/D0;->q:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Qq(JZZ)V
    .locals 2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    iget-boolean v0, v0, Lv2/D0;->B:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/D0;->s:Z

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    const-string v0, "resetTimerState no animation  isForceStop "

    invoke-static {p1, v0, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const-string p3, ""

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->b:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->c:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p4, :cond_1

    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p3, LD8/h;

    const/4 p4, 0x3

    invoke-direct {p3, p4}, LD8/h;-><init>(I)V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p3, LC4/p;

    const/16 p4, 0xe

    invoke-direct {p3, p4}, LC4/p;-><init>(I)V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/G1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p3, LEs/E;

    const/16 p4, 0x9

    invoke-direct {p3, p4}, LEs/E;-><init>(I)V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    iput-boolean p2, p1, Lv2/D0;->B:Z

    iput-boolean p2, p0, Lcom/android/camera/fragment/D0;->s:Z

    return-void

    :cond_2
    iget-object p3, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-static {p3}, Li0/E;->a(Landroid/view/View;)Li0/N;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Li0/N;->e(J)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Li0/N;->a(F)V

    new-instance v1, LLy/g;

    invoke-direct {v1}, LLy/g;-><init>()V

    invoke-virtual {p3, v1}, Li0/N;->f(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/android/camera/fragment/D0$a;

    invoke-direct {v1, p0, p4}, Lcom/android/camera/fragment/D0$a;-><init>(Lcom/android/camera/fragment/D0;Z)V

    invoke-virtual {p3, v1}, Li0/N;->g(Li0/O;)V

    invoke-virtual {p3}, Li0/N;->i()V

    iget-object p0, p0, Lcom/android/camera/fragment/D0;->c:Landroid/view/View;

    invoke-static {p0}, Li0/E;->a(Landroid/view/View;)Li0/N;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Li0/N;->e(J)V

    invoke-virtual {p0, v0}, Li0/N;->a(F)V

    new-instance p1, LLy/g;

    invoke-direct {p1}, LLy/g;-><init>()V

    invoke-virtual {p0, p1}, Li0/N;->f(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0}, Li0/N;->i()V

    return-void
.end method

.method public final Rg(I)V
    .locals 4

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S4()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LQ6/S0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/B0;

    invoke-direct {v1, p1}, Lcom/android/camera/fragment/B0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xe2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe8

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/D0;->Tq()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x1f4

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->p:Landroid/os/Handler;

    new-instance v0, LF1/B;

    const/4 v3, 0x7

    invoke-direct {v0, p0, v3}, LF1/B;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->p:Landroid/os/Handler;

    new-instance v0, LF1/R1;

    const/16 v3, 0x8

    invoke-direct {v0, p0, v3}, LF1/R1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public final Rq(FFF)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p3, v4, v5

    const/4 v6, 0x1

    aput v2, v4, v6

    const-string/jumbo v7, "scaleX"

    invoke-static {v1, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const-string/jumbo v4, "scaleY"

    new-array v7, v3, [F

    aput p3, v7, v5

    aput v2, v7, v6

    invoke-static {v1, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const/4 v1, 0x0

    new-array v2, v3, [F

    aput p1, v2, v5

    aput v1, v2, v6

    const-string/jumbo p1, "translationX"

    invoke-static {p3, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const-string/jumbo p3, "translationY"

    new-array v2, v3, [F

    aput p2, v2, v5

    aput v1, v2, v6

    invoke-static {p1, p3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/D0;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->q:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/android/camera/fragment/D0;->k:I

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1, v6}, Lcom/android/camera/fragment/D0;->Sq(IZ)V

    iput-boolean v6, p0, Lcom/android/camera/fragment/D0;->n:Z

    return-void
.end method

.method public final Sq(IZ)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v2, 0xe8

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/fragment/D0;->n:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/fragment/D0;->c:Landroid/view/View;

    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/D0;->j:Landroid/animation/ObjectAnimator;

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/android/camera/fragment/D0;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/D0;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public final Tq()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/android/camera/fragment/D0;->n:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xe2

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/D0;->Pq()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxx/k;->f(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/D0;->r:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/android/camera/fragment/D0;->m:F

    const v4, 0x3fd9999a    # 1.7f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    sget v3, LK2/e;->g:I

    iget-object v5, p0, Lcom/android/camera/fragment/D0;->r:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, p0, Lcom/android/camera/fragment/D0;->m:F

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v3, p0, Lcom/android/camera/fragment/D0;->r:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v2, p0, Lcom/android/camera/fragment/D0;->m:F

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    int-to-float v0, v0

    sub-float/2addr v3, v0

    sget v2, LK2/e;->f:I

    iget-object v5, p0, Lcom/android/camera/fragment/D0;->r:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/android/camera/fragment/D0;->m:F

    div-float/2addr v5, v4

    sub-float/2addr v2, v5

    sub-float/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/android/camera/fragment/D0;->m:F

    iget v3, p0, Lcom/android/camera/fragment/D0;->l:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final Uq()V
    .locals 4

    sget-object v0, Lf2/a;->f:Lf2/a;

    invoke-virtual {v0}, Lf2/a;->i()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const v2, 0x7f060b72

    if-eqz v1, :cond_0

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/StrokeAdaptiveTextView;->setEnableStroke(Z)V

    iget-object v1, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    sget-object v3, Lf2/e;->c:Lf2/e;

    invoke-virtual {v3, v2, v0}, Lf2/e;->a(IZ)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/D0;->I:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    if-eqz v1, :cond_1

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/StrokeAdaptiveTextView;->setEnableStroke(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/D0;->I:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    sget-object v1, Lf2/e;->c:Lf2/e;

    invoke-virtual {v1, v2, v0}, Lf2/e;->a(IZ)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public final Vj()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/D0;->s:Z

    return p0
.end method

.method public final Xl()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/D0;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final Y(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {p1}, LK2/e;->i(I)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/D0;->r:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-object p1, p0, Lcom/android/camera/fragment/D0;->r:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {v1}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/D0;->r:Landroid/graphics/Rect;

    goto :goto_0

    :goto_1
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/camera/fragment/D0;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/fragment/D0;->r:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object v0

    :goto_2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/D0;->r:Landroid/graphics/Rect;

    goto :goto_2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/D0;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->r:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/D0;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-nez v0, :cond_3

    int-to-float v0, p1

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07149f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    :goto_4
    invoke-static {}, LK2/b;->b0()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_5

    :cond_4
    int-to-float v0, p1

    const v1, 0x3f0e38e4

    mul-float/2addr v0, v1

    :goto_5
    iput v0, p0, Lcom/android/camera/fragment/D0;->l:F

    int-to-float p1, p1

    const v1, 0x3e3a2e8c

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/android/camera/fragment/D0;->m:F

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/D0;->Tq()V

    :cond_5
    :goto_6
    return-void
.end method

.method public final getFragmentId()I
    .locals 0

    const p0, 0xffffff9

    return p0
.end method

.method public final getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0e01ae

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FragmentTimerCapture"

    return-object p0
.end method

.method public final initView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->initView(Landroid/view/View;)V

    const v0, 0x7f0b0ad7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/StrokeAdaptiveTextView;

    iput-object v0, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const v0, 0x7f0b0ad9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/D0;->b:Landroid/view/View;

    const v0, 0x7f0b0a3c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/D0;->t:Landroid/view/View;

    const v0, 0x7f0b0a3b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/StrokeAdaptiveTextView;

    iput-object v0, p0, Lcom/android/camera/fragment/D0;->I:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const v0, 0x7f0b0ad8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/D0;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/a;

    invoke-virtual {p1}, Lcom/android/camera/a;->l0()LF1/Y2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/D0;->h:LF1/Y2;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/D0;->i:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->c:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/D0;->j:Landroid/animation/ObjectAnimator;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/D0;->p:Landroid/os/Handler;

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->d()Lp9/f;

    move-result-object v0

    invoke-interface {v0}, Lp9/f;->e()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x190

    invoke-static {p1, v0, v1}, Lna/a;->e(Landroid/widget/TextView;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xe8

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    move v0, v2

    :cond_0
    xor-int/lit8 p1, v0, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/D0;->n:Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/D0;->Uq()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f333333    # 0.7f
    .end array-data
.end method

.method public final iq([Lj9/l0;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v5

    iget-boolean v5, v5, Lv2/D0;->B:Z

    if-eqz v5, :cond_11

    iget v5, v0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v6, 0xe6

    if-ne v5, v6, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v5, v0, Lcom/android/camera/fragment/D0;->r:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    goto/16 :goto_8

    :cond_1
    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/camera/fragment/D0;->f:Landroid/graphics/Rect;

    invoke-static/range {p2 .. p3}, LAv/e;->A(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v6

    iput v6, v0, Lcom/android/camera/fragment/D0;->g:F

    iget-object v6, v0, Lcom/android/camera/fragment/D0;->b:Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/fragment/D0;->e:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    iget-object v8, v0, Lcom/android/camera/fragment/D0;->d:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    iget-object v9, v0, Lcom/android/camera/fragment/D0;->f:Landroid/graphics/Rect;

    iget v10, v0, Lcom/android/camera/fragment/D0;->g:F

    invoke-static {v7, v9, v10}, LAv/e;->w(Landroid/graphics/Matrix;Landroid/graphics/Rect;F)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v9

    invoke-virtual {v9}, Lu2/Q;->C()I

    move-result v9

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v10

    invoke-static {v10}, LK2/e;->f(Landroid/app/Activity;)I

    move-result v10

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v11

    invoke-virtual {v11, v9}, Lu6/f;->O(I)Lj9/e;

    move-result-object v9

    invoke-static {v10, v9}, LBw/i;->G(ILj9/e;)I

    move-result v10

    iget-object v9, v0, Lcom/android/camera/fragment/D0;->h:LF1/Y2;

    if-eqz v9, :cond_2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v9

    invoke-virtual {v9}, Lu2/Q;->O()Z

    move-result v9

    iget-object v11, v0, Lcom/android/camera/fragment/D0;->h:LF1/Y2;

    iget v12, v11, LF1/q4;->s:I

    iget v11, v11, LF1/q4;->t:I

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/2addr v13, v3

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v14, v6, 0x2

    iget-object v6, v0, Lcom/android/camera/fragment/D0;->f:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v15

    iget-object v6, v0, Lcom/android/camera/fragment/D0;->f:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v19, v12

    move v12, v11

    move/from16 v11, v19

    invoke-static/range {v8 .. v16}, Ljm/b;->e(Landroid/graphics/Matrix;ZIIIIIII)V

    :cond_2
    invoke-static {}, Lcom/android/camera/fragment/D0;->Pq()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lxx/k;->f(Landroid/content/Context;)I

    move-result v6

    goto :goto_0

    :cond_3
    move v6, v2

    :goto_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v11, v0, Lcom/android/camera/fragment/D0;->m:F

    const v12, 0x3fd9999a    # 1.7f

    div-float/2addr v11, v12

    sub-float/2addr v9, v11

    sget v11, LK2/e;->g:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    sub-int/2addr v11, v13

    int-to-float v11, v11

    iget v13, v0, Lcom/android/camera/fragment/D0;->m:F

    div-float/2addr v13, v12

    sub-float/2addr v11, v13

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    iget v10, v0, Lcom/android/camera/fragment/D0;->m:F

    div-float/2addr v10, v12

    sub-float/2addr v11, v10

    int-to-float v6, v6

    sub-float/2addr v11, v6

    sget v10, LK2/e;->f:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    sub-int/2addr v10, v13

    int-to-float v10, v10

    iget v13, v0, Lcom/android/camera/fragment/D0;->m:F

    div-float/2addr v13, v12

    sub-float/2addr v10, v13

    sub-float/2addr v10, v6

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v10, v0, Lcom/android/camera/fragment/D0;->m:F

    iget v11, v0, Lcom/android/camera/fragment/D0;->l:F

    div-float/2addr v10, v11

    if-eqz v1, :cond_4

    array-length v12, v1

    if-nez v12, :cond_5

    :cond_4
    move/from16 v16, v4

    goto/16 :goto_7

    :cond_5
    iput-boolean v4, v0, Lcom/android/camera/fragment/D0;->o:Z

    aget-object v12, v1, v2

    move v13, v4

    :goto_1
    array-length v14, v1

    if-ge v13, v14, :cond_8

    aget-object v14, v1, v13

    iget-object v14, v14, Lj9/l0;->a:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    aget-object v15, v1, v13

    iget-object v15, v15, Lj9/l0;->a:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    mul-int/2addr v15, v14

    int-to-double v14, v15

    move/from16 v16, v4

    iget-object v4, v12, Lj9/l0;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v3, v4

    const-wide v17, 0x3ff199999999999aL    # 1.1

    mul-double v3, v3, v17

    iget-object v2, v12, Lj9/l0;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    move-object/from16 v18, v12

    int-to-double v11, v2

    mul-double/2addr v3, v11

    sub-double/2addr v14, v3

    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-lez v2, :cond_6

    aget-object v2, v1, v13

    iget-object v2, v2, Lj9/l0;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    move-object/from16 v12, v18

    iget-object v3, v12, Lj9/l0;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x1e

    if-le v2, v3, :cond_7

    aget-object v2, v1, v13

    move-object v12, v2

    goto :goto_2

    :cond_6
    move-object/from16 v12, v18

    :cond_7
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    const/4 v2, 0x0

    const/4 v3, 0x2

    goto :goto_1

    :cond_8
    move/from16 v16, v4

    iget-object v1, v0, Lcom/android/camera/fragment/D0;->i:Landroid/graphics/RectF;

    iget-object v2, v12, Lj9/l0;->a:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/camera/fragment/D0;->i:Landroid/graphics/RectF;

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, v0, Lcom/android/camera/fragment/D0;->i:Landroid/graphics/RectF;

    invoke-virtual {v8, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, v0, Lcom/android/camera/fragment/D0;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, v0, Lcom/android/camera/fragment/D0;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {}, LK2/b;->b0()Z

    move-result v3

    if-nez v3, :cond_a

    const v3, 0x3d520d21

    mul-float/2addr v3, v1

    cmpg-float v3, v2, v3

    if-gez v3, :cond_9

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    move/from16 v3, v16

    :goto_4
    invoke-static {}, LK2/b;->b0()Z

    move-result v4

    if-nez v4, :cond_b

    const v4, 0x3d579436

    mul-float/2addr v1, v4

    cmpl-float v1, v2, v1

    if-lez v1, :cond_b

    move/from16 v1, v16

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    iget-object v2, v0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v1, v0, Lcom/android/camera/fragment/D0;->k:I

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/fragment/D0;->Sq(IZ)V

    invoke-virtual {v0}, Lcom/android/camera/fragment/D0;->Tq()V

    iget-object v1, v0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    iget v0, v0, Lcom/android/camera/fragment/D0;->k:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_c
    if-eqz v3, :cond_e

    iget-boolean v2, v0, Lcom/android/camera/fragment/D0;->n:Z

    if-nez v2, :cond_e

    invoke-virtual {v0}, Lcom/android/camera/fragment/D0;->Oq()Z

    move-result v2

    if-nez v2, :cond_e

    iget v2, v0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v3, 0xe8

    if-ne v2, v3, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v0, v9, v6, v10}, Lcom/android/camera/fragment/D0;->Rq(FFF)V

    :cond_e
    :goto_6
    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lcom/android/camera/fragment/D0;->n:Z

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/android/camera/fragment/D0;->Oq()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/android/camera/fragment/D0;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    iget-object v1, v0, Lcom/android/camera/fragment/D0;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    new-array v7, v5, [F

    aput v4, v7, v2

    aput v10, v7, v16

    const-string/jumbo v8, "scaleX"

    invoke-static {v3, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const-string/jumbo v7, "scaleY"

    new-array v8, v5, [F

    aput v4, v8, v2

    aput v10, v8, v16

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const/4 v4, 0x0

    new-array v7, v5, [F

    aput v4, v7, v2

    aput v9, v7, v16

    const-string/jumbo v8, "translationX"

    invoke-static {v3, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    const-string/jumbo v7, "translationY"

    new-array v5, v5, [F

    aput v4, v5, v2

    aput v6, v5, v16

    invoke-static {v3, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lcom/android/camera/fragment/D0;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v1, v0, Lcom/android/camera/fragment/D0;->q:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lcom/android/camera/fragment/D0;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/camera/fragment/D0;->n:Z

    return-void

    :goto_7
    iput-boolean v2, v0, Lcom/android/camera/fragment/D0;->o:Z

    iget-object v1, v0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, v0, Lcom/android/camera/fragment/D0;->k:I

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/D0;->Sq(IZ)V

    invoke-virtual {v0}, Lcom/android/camera/fragment/D0;->Tq()V

    iget-object v1, v0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    iget v0, v0, Lcom/android/camera/fragment/D0;->k:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_f
    iget-boolean v1, v0, Lcom/android/camera/fragment/D0;->n:Z

    if-nez v1, :cond_11

    iget v1, v0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v3, 0xe8

    if-ne v1, v3, :cond_10

    return-void

    :cond_10
    iget-object v1, v0, Lcom/android/camera/fragment/D0;->p:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/fragment/A0;

    invoke-direct {v2, v0, v9, v6, v10}, Lcom/android/camera/fragment/A0;-><init>(Lcom/android/camera/fragment/D0;FFF)V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    :goto_8
    return-void
.end method

.method public final notifyDataChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/h;->notifyDataChanged(II)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    const-class p2, Lv2/F0;

    invoke-virtual {p1, p2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/F0;

    invoke-virtual {p1}, Lv2/F0;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/D0;->Y(I)V

    return-void
.end method

.method public final notifyThemeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/b;->notifyThemeChanged(II)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/D0;->Uq()V

    return-void
.end method

.method public final onBackEvent(I)Z
    .locals 1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    iget-boolean p0, p0, Lv2/D0;->B:Z

    if-eqz p0, :cond_0

    invoke-static {}, LQ6/j1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LE4/i;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, LE4/i;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/fragment/D0;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/D0;->j:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/D0;->q:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method public final pd(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/z0;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/z0;-><init>(Lcom/android/camera/fragment/D0;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
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

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    invoke-virtual {p0, p2, p3, p1, p1}, Lcom/android/camera/fragment/D0;->Qq(JZZ)V

    return-void
.end method

.method public final provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/h;->provideRotateItem(Ljava/util/List;I)V

    iget-object p0, p0, Lcom/android/camera/fragment/D0;->a:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final r3()V
    .locals 3

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/y;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, LF1/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final register(LN6/g;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->register(LN6/g;)V

    invoke-virtual {p0, p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->registerBackStack(LQ6/c0;)V

    const-class v0, LQ6/k1;

    check-cast p1, LN6/h;

    invoke-virtual {p1, v0, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public final unRegister(LN6/g;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->unRegister(LN6/g;)V

    const-class v0, LQ6/k1;

    check-cast p1, LN6/h;

    invoke-virtual {p1, v0, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    invoke-virtual {p0, p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->unRegisterBackStack(LQ6/c0;)V

    return-void
.end method

.method public final updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/b;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/D0;->Oq()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/D0;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p2

    const-class v0, Lv2/F0;

    invoke-virtual {p2, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv2/F0;

    invoke-virtual {p2}, Lv2/F0;->b()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/D0;->Y(I)V

    iget p2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v0, 0xe6

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->t:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    sget v0, LK2/e;->g:I

    iget-object v1, p0, Lcom/android/camera/fragment/D0;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v0, -0x1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/android/camera/fragment/D0;->t:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->I:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0715ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/android/camera/fragment/D0;->I:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715ed

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public final w4(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/D0;->Xl()V

    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/D0;->t:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/D0;->I:Lcom/android/camera/ui/StrokeAdaptiveTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
