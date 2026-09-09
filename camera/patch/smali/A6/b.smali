.class public abstract LA6/b;
.super LO0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA6/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "ValueType:",
        "Ljava/lang/Object;",
        ">",
        "LO0/k;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LO0/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(LO0/v;LO0/v;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final W(LO0/v;)V
    .locals 4

    invoke-virtual {p0}, LA6/b;->d0()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, LO0/v;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type T of com.android.camera.mvi.animator.GenericTransition"

    invoke-static {v1, v0}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, LA6/b;->b0(Landroid/view/View;)LA6/b$a;

    move-result-object p0

    iget-object p1, p1, LO0/v;->a:Ljava/util/HashMap;

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LA6/b$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "com.xiaomi.camera.generic_transition:"

    const-string v3, ":"

    invoke-static {v1, v2, v0, v3}, LO0/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, LA6/b$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public abstract X()Landroid/animation/TimeInterpolator;
.end method

.method public Y(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public abstract Z(Landroid/view/View;FLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FTValueType;TValueType;TValueType;)V"
        }
    .end annotation
.end method

.method public a0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TValueType;TValueType;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public abstract b0(Landroid/view/View;)LA6/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LA6/b$a<",
            "TValueType;>;"
        }
    .end annotation
.end method

.method public abstract c0()Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/animation/TypeEvaluator<",
            "TValueType;>;"
        }
    .end annotation
.end method

.method public abstract d0()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final f(LO0/v;)V
    .locals 0

    invoke-virtual {p0, p1}, LA6/b;->W(LO0/v;)V

    return-void
.end method

.method public final k(LO0/v;)V
    .locals 0

    invoke-virtual {p0, p1}, LA6/b;->W(LO0/v;)V

    return-void
.end method

.method public final p(Landroid/view/ViewGroup;LO0/v;LO0/v;)Landroid/animation/Animator;
    .locals 5

    const-string/jumbo v0, "sceneRoot"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, LA6/b;->d0()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p3, LO0/v;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "null cannot be cast to non-null type T of com.android.camera.mvi.animator.GenericTransition"

    invoke-static {v1, v0}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, LA6/b;->b0(Landroid/view/View;)LA6/b$a;

    move-result-object v0

    iget-object v0, v0, LA6/b$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "com.xiaomi.camera.generic_transition:"

    const-string v4, ":"

    invoke-static {v2, v3, v0, v4}, LO0/p;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, LO0/v;->a:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    move-object p2, p1

    :cond_2
    iget-object p3, p3, LO0/v;->a:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_3

    move-object p3, p1

    :cond_3
    if-eqz p2, :cond_7

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2, p3}, LA6/b;->a0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, LA6/b;->c0()Landroid/animation/TypeEvaluator;

    move-result-object p1

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v2, 0x15e

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, LA6/b;->X()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_6
    new-instance v0, LA6/a;

    invoke-direct {v0, p0, v1, p2, p3}, LA6/a;-><init>(LA6/b;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, LA6/b$b;

    invoke-direct {p2, p0, p1}, LA6/b$b;-><init>(LA6/b;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_7
    :goto_0
    return-object p1
.end method
