.class public final Lcom/android/camera/features/mode/capture/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/reactivex/subjects/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lio/reactivex/disposables/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/reactivex/subjects/b;

    invoke-direct {v0}, Lio/reactivex/subjects/b;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/capture/h0;->a:Lio/reactivex/subjects/b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    const-string/jumbo v3, "unit is null"

    invoke-static {v1, v3}, Lio/reactivex/internal/functions/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "scheduler is null"

    invoke-static {v2, v1}, Lio/reactivex/internal/functions/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lio/reactivex/internal/operators/observable/e;

    const-wide/16 v3, 0x12c

    invoke-direct {v1, v0, v3, v4, v2}, Lio/reactivex/internal/operators/observable/e;-><init>(Lio/reactivex/q;JLio/reactivex/v;)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {v1, v0}, Lio/reactivex/q;->m(Lio/reactivex/v;)Lio/reactivex/internal/operators/observable/C;

    move-result-object v0

    new-instance v1, LQ4/D;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LQ4/D;-><init>(I)V

    invoke-virtual {v0, v1}, Lio/reactivex/q;->subscribe(Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mode/capture/h0;->b:Lio/reactivex/disposables/b;

    return-void
.end method

.method public static a(Landroid/content/Context;I)LY4/c;
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->O()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v1, LY4/f$a;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LY4/a$a;-><init>(I)V

    sget-object v2, Lo9/a;->a:Lo9/b;

    invoke-interface {v2}, Lo9/b;->e()Lp9/t;

    move-result-object v2

    invoke-interface {v2}, Lp9/t;->d()I

    move-result v2

    iput v2, v1, LY4/c$a;->t:I

    const/4 v2, 0x2

    iput v2, v1, LY4/a$a;->o:I

    iput v0, v1, LY4/a$a;->q:I

    new-instance v2, Lcom/android/camera/features/mode/capture/g0;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/features/mode/capture/g0;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, LY4/c$a;->g(LY4/c$b;)LY4/c$a;

    invoke-virtual {v1, v0}, LY4/a$a;->a(Z)LY4/a$a;

    check-cast v1, LY4/c$a;

    new-instance p0, LY4/j;

    invoke-direct {p0, v0}, LY4/j;-><init>(I)V

    invoke-virtual {v1, p0}, LY4/a$a;->d(Landroid/view/View$OnClickListener;)LY4/a$a;

    move-result-object p0

    check-cast p0, LY4/c$a;

    const p1, 0x7f14015c

    iput p1, p0, LY4/a$a;->g:I

    invoke-virtual {p0}, LY4/c$a;->f()LY4/c;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isGlobalDevice"
        type = 0x1
    .end annotation

    invoke-static {}, Lvr/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/camera/features/mode/capture/h0;->a:Lio/reactivex/subjects/b;

    invoke-virtual {v1, v0}, Lio/reactivex/subjects/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static c()Z
    .locals 6

    sget v0, Lcom/android/camera/module/Y;->a:I

    invoke-static {v0}, Lcom/android/camera/module/Y;->l(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, LK2/e;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LK2/b;->P()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    const/4 v3, 0x3

    const-class v4, Lv2/F0;

    if-eqz v0, :cond_3

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-virtual {v0, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lv2/F0;->b()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Lv2/F0;->b()I

    move-result v0

    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    invoke-static {}, LK2/b;->R()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, LK2/b;->T()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, LK2/e;->x()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, LK2/b;->O()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, LK2/b;->W()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-virtual {v0, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lv2/F0;->b()I

    move-result v0

    if-eq v0, v3, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    invoke-static {}, LK2/b;->X()Z

    move-result v0

    return v0

    :cond_8
    :goto_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-virtual {v0, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/F0;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lv2/F0;->b()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_9

    return v2

    :cond_9
    return v1

    :cond_a
    :goto_1
    return v2
.end method

.method public static d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-class v1, Lu2/P;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/P;

    sget v1, Lcom/android/camera/module/Y;->a:I

    invoke-virtual {v0, v1}, Lu2/P;->D(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x64

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, LLy/j;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/camera/features/mode/capture/e0;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/features/mode/capture/e0;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Lcom/android/camera/features/mode/capture/h0$a;

    invoke-direct {p0, v0}, Lcom/android/camera/features/mode/capture/h0$a;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Landroid/view/View;)V
    .locals 7

    invoke-static {}, LK2/b;->W()Z

    move-result v0

    const v1, 0x7f080164

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/features/mode/capture/h0;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    const v1, 0x7f080165

    :cond_0
    sget-object v3, LY/g;->a:Ljava/lang/ThreadLocal;

    invoke-static {v0, v1, v2}, LY/g$a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/android/camera/features/mode/capture/h0;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lf2/a;->f:Lf2/a;

    invoke-virtual {v0}, Lf2/a;->i()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, LK2/b;->a0()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f080166

    goto :goto_1

    :cond_2
    const v1, 0x7f080169

    :goto_1
    sget-object v3, LY/g;->a:Ljava/lang/ThreadLocal;

    invoke-static {v0, v1, v2}, LY/g$a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, LK2/b;->a0()Z

    move-result v3

    if-eqz v3, :cond_4

    const v1, 0x7f080167

    :cond_4
    sget-object v3, LY/g;->a:Ljava/lang/ThreadLocal;

    invoke-static {v0, v1, v2}, LY/g$a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, LK2/b;->a0()Z

    move-result v1

    const v3, 0x7f0712e4

    const v4, 0x7f0714bb

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, LK2/b;->a0()Z

    move-result v5

    if-eqz v5, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    move v5, v3

    move v6, v0

    move v4, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->e()Lp9/t;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lp9/t;->Q(Landroid/view/View;Landroid/graphics/drawable/InsetDrawable;)V

    return-void
.end method

.method public static f(Landroid/view/View;)V
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBeautyMode"
        type = 0x0
    .end annotation

    const v0, 0x7f0b0119

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/h;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/h;

    invoke-static {}, Lf2/b;->e()Z

    move-result v2

    sget-object v3, Lf2/e;->c:Lf2/e;

    const v4, 0x7f060b97

    invoke-virtual {v3, v4, v2}, Lf2/e;->a(IZ)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setIndicatorColor(I)V

    invoke-static {}, Lcom/android/camera/data/data/m;->f0()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lf2/e;->c:Lf2/e;

    const v4, 0x7f060060

    invoke-virtual {v3, v4, v2}, Lf2/e;->a(IZ)I

    move-result v3

    goto :goto_0

    :cond_0
    sget-object v3, Lf2/e;->c:Lf2/e;

    invoke-virtual {v3, v4, v2}, Lf2/e;->a(IZ)I

    move-result v3

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setBackgroundColor(I)V

    sget-object v3, Lf2/e;->c:Lf2/e;

    const v4, 0x7f060b67

    invoke-virtual {v3, v4, v2}, Lf2/e;->a(IZ)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setNormalColor(I)V

    sget-object v3, Lf2/e;->c:Lf2/e;

    const v4, 0x7f060b69

    invoke-virtual {v3, v4, v2}, Lf2/e;->a(IZ)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setSelectColor(I)V

    invoke-virtual {v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v3, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v3}, Lu2/Q;->E(I)I

    move-result v2

    const/16 v3, 0xbc

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->k(IILcom/android/camera/data/data/c;Z)V

    const v2, 0x7f0b0472

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0473

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v5, LU4/d;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, LU4/d;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/data/data/d;

    iget v7, v7, Lcom/android/camera/data/data/d;->k:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/d;

    iget v1, v1, Lcom/android/camera/data/data/d;->k:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    new-instance p0, LL3/b;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, LL3/b;-><init>(I)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p0, LV9/g1;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, LV9/g1;-><init>(I)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static g(Landroid/widget/ImageView;LY4/a;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    iget-boolean v0, p1, LY4/a;->m:Z

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-static {p0}, Lcom/android/camera/features/mode/capture/h0;->e(Landroid/view/View;)V

    iget v0, p1, LY4/a;->f:I

    iget v1, p1, LY4/a;->h:I

    iget-boolean v2, p1, LY4/a;->m:Z

    if-nez v2, :cond_1

    iget v2, p1, LY4/a;->g:I

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    invoke-static {}, Lf2/b;->b()Z

    move-result v2

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-boolean v3, p1, LY4/a;->m:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    filled-new-array {p1, v0}, [Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lf2/e;->c:Lf2/e;

    const v1, 0x7f060b72

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lf2/e;->a(IZ)I

    move-result v0

    iget-boolean p1, p1, LY4/a;->m:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result v0

    :cond_4
    invoke-static {v0, v2}, Lf2/a;->e(IZ)Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_5
    return-void
.end method

.method public static h(Landroid/widget/ImageView;Z)V
    .locals 5

    sget-object v0, Lf2/a;->f:Lf2/a;

    invoke-virtual {v0}, Lf2/a;->i()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lf2/e;->c:Lf2/e;

    const v1, 0x7f060b72

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lf2/e;->a(IZ)I

    move-result v0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result v0

    :cond_1
    invoke-static {v0, v2}, Lf2/a;->e(IZ)Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method
