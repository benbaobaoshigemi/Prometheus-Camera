.class public LB9/e;
.super Lo5/M;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB9/e$c;
    }
.end annotation


# instance fields
.field public m0:Landroid/widget/TextView;

.field public n0:LB9/e$c;

.field public o0:Landroid/widget/ImageView;

.field public p0:Landroid/widget/TextView;

.field public q0:Landroid/widget/ImageView;

.field public r0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo5/M;-><init>()V

    return-void
.end method


# virtual methods
.method public final Er()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    iget-object v0, p0, Lo5/M;->q:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v2, 0xe5

    const v3, 0x7f071790

    if-ne v1, v2, :cond_0

    sget v1, LK2/e;->f:I

    const/4 v2, 0x4

    invoke-static {v2}, LK2/b;->s(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v1

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    invoke-static {}, LK2/b;->i()I

    move-result v1

    invoke-static {}, LK2/b;->v()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v1

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_0
    const/16 p0, 0x50

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public final Fr()V
    .locals 5

    invoke-super {p0}, Lo5/M;->Fr()V

    invoke-static {}, Lf2/b;->e()Z

    move-result v0

    sget-object v1, Lf2/e;->c:Lf2/e;

    iget-object v2, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    const v3, 0x7f080aef

    const v4, 0x7f060428

    invoke-virtual {v1, v2, v3, v4, v0}, Lf2/e;->b(Landroid/view/View;IIZ)V

    iget-object v0, p0, LB9/e;->m0:Landroid/widget/TextView;

    const v1, 0x7f060bee

    invoke-static {v1}, Lf2/b;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, LB9/e;->o0:Landroid/widget/ImageView;

    const v1, 0x7f060beb

    invoke-static {v1}, Lf2/b;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, LB9/e;->p0:Landroid/widget/TextView;

    invoke-static {v1}, Lf2/b;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, LB9/e;->q0:Landroid/widget/ImageView;

    invoke-static {v1}, Lf2/b;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public final Gk(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lo5/M;->Gk(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo5/M;->d:LV9/n0;

    iget-object p0, p0, LB9/e;->r0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, LV9/n0;->b(Landroid/view/View;)V

    :cond_0
    return p1
.end method

.method public final Gr()V
    .locals 5

    iget-object v0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lo5/M;->Z:I

    iget v2, p0, Lo5/M;->S:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0717de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v4, p0, Lo5/M;->Z:I

    mul-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0717d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0717cd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, LB9/e;->r0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xe5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, LK2/b;->s(I)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lo5/M;->q:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lo5/M;->q:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotY(F)V

    iget-object p0, p0, Lo5/M;->q:Landroid/view/ViewGroup;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public final Uq(ZZ)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    iget-boolean v2, p0, Lo5/M;->i:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lo5/M;->t:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lo5/M;->I:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lo5/M;->k:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lmiuix/animation/Folme;->clean(Landroid/view/View;)V

    const v2, 0x3f666666    # 0.9f

    const v3, 0x7f0717e4

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    new-instance p1, Lf6/q$b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    iput p2, p1, Lf6/q$b;->a:F

    iput p2, p1, Lf6/q$b;->b:F

    iput p2, p1, Lf6/q$b;->c:F

    iput p2, p1, Lf6/q$b;->d:F

    iput p2, p1, Lf6/q$b;->e:F

    iput p2, p1, Lf6/q$b;->g:F

    iput p2, p1, Lf6/q$b;->f:F

    iput p2, p1, Lf6/q$b;->h:F

    iput p2, p1, Lf6/q$b;->i:F

    iput p2, p1, Lf6/q$b;->j:F

    const-wide/16 v4, 0x12c

    iput-wide v4, p1, Lf6/q$b;->m:J

    const/4 p2, 0x0

    iput p2, p1, Lf6/q$b;->k:F

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p1, Lf6/q$b;->l:F

    iput v1, p1, Lf6/q$b;->n:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    neg-float v3, v3

    iput v3, p1, Lf6/q$b;->c:F

    iput p2, p1, Lf6/q$b;->d:F

    iget p2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v3, 0xe5

    if-ne p2, v3, :cond_1

    move v2, v6

    :cond_1
    iput v2, p1, Lf6/q$b;->e:F

    iput v6, p1, Lf6/q$b;->f:F

    new-instance p2, LLy/g;

    invoke-direct {p2}, LLy/g;-><init>()V

    iput-object p2, p1, Lf6/q$b;->o:LLy/g;

    iput-wide v4, p1, Lf6/q$b;->m:J

    new-instance p2, LB9/e$a;

    invoke-direct {p2, p0}, LB9/e$a;-><init>(LB9/e;)V

    iput-object p2, p1, Lf6/q$b;->p:Landroid/animation/AnimatorListenerAdapter;

    new-instance p2, Lf6/q;

    invoke-direct {p2, p1}, Lf6/q;-><init>(Lf6/q$b;)V

    iput-boolean v0, p0, Lo5/M;->h:Z

    iget-object p0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    new-array p1, v0, [Landroid/view/View;

    aput-object p0, p1, v1

    invoke-virtual {p2, p1}, Lf6/q;->b([Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string p2, "fromScale"

    invoke-direct {p1, p2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object p2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v4, 0x0

    invoke-virtual {p1, p2, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v2, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-instance v8, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v9, "toScale"

    invoke-direct {v8, v9}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v3, v3

    int-to-double v9, v3

    invoke-virtual {v8, p2, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    invoke-virtual {p2, v2, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string v3, "fromAlpha"

    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v2, v3, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    const-string/jumbo v6, "toAlpha"

    invoke-static {v6, v3, v4, v5}, LMf/c;->h(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    iget-object v4, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    new-array v5, v0, [Landroid/view/View;

    aput-object v4, v5, v1

    invoke-static {v5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v4

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    const/4 v7, -0x2

    invoke-virtual {v5, v7, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    filled-new-array {v5}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    invoke-interface {v4, p1, p2, v5}, Lmiuix/animation/FolmeStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v4, v0, [F

    const/high16 v5, 0x43480000    # 200.0f

    aput v5, v4, v1

    const/4 v5, 0x6

    invoke-virtual {p2, v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    new-instance v4, LB9/e$b;

    invoke-direct {v4, p0}, LB9/e$b;-><init>(LB9/e;)V

    new-array p0, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object v4, p0, v1

    invoke-virtual {p2, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    invoke-interface {p1, v2, v3, p0}, Lmiuix/animation/FolmeStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public final Xq(Lcom/android/camera/data/data/c;La5/i;II)V
    .locals 7

    iget-boolean v0, p0, Lo5/M;->i:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lo5/M;->t:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lo5/M;->s:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lo5/M;->I:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lo5/M;->k:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LB9/e;->Gk(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "reverseExpandView \uff0creturn"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "componentData == null \uff0creturn"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean v1, p0, Lo5/M;->V:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lo5/M;->a0:I

    rem-int v1, p4, v1

    goto :goto_0

    :cond_3
    iget v1, p0, Lo5/M;->Z:I

    div-int v1, p4, v1

    :goto_0
    iget v2, p0, Lo5/M;->Q:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0717cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    new-instance v3, LV9/k0;

    invoke-direct {v3, p1, p0}, LV9/k0;-><init>(Lcom/android/camera/data/data/c;Lo5/M;)V

    iget-object v4, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    iget v5, p0, Lo5/M;->P:I

    iput v5, v4, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->j:I

    iput v2, v4, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->k:I

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridLayout;->setOrientation(I)V

    iget-boolean v4, p0, Lo5/M;->a:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lo5/M;->Z:I

    iget v6, p0, Lo5/M;->a0:I

    rem-int v6, p4, v6

    sub-int/2addr v4, v6

    iget v6, p0, Lo5/M;->S:I

    :goto_1
    mul-int/2addr v4, v6

    goto :goto_2

    :cond_4
    iget v4, p0, Lo5/M;->a0:I

    rem-int v4, p4, v4

    iget v6, p0, Lo5/M;->S:I

    goto :goto_1

    :goto_2
    iput v4, v3, LV9/k0;->e:I

    iget-object v4, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    iget v6, p0, Lo5/M;->R:I

    iput v6, v4, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->l:I

    invoke-virtual {v4, v1}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->setTouchRow(I)V

    iget-object v4, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v4, v5}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->setVerticalExpandView(Z)V

    iget v4, p2, La5/i;->c:I

    iput v4, v3, LV9/k0;->i:I

    iget v4, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v6, 0xe5

    if-ne v4, v6, :cond_5

    move v4, v5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v4

    :goto_3
    iget-object v6, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v6, v4}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->setRotation(I)V

    iget-object v4, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v4, v3}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->setAdapter(LV9/k0;)V

    iget-object v3, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v3}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/android/camera/data/data/c;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/android/camera/data/data/c;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v3, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v3}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v3

    add-int/2addr v3, p1

    sub-int/2addr v3, v0

    iget-object p1, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result p1

    div-int p1, v3, p1

    :goto_4
    iget v3, p0, Lo5/M;->f:I

    if-le v3, v0, :cond_7

    sub-int/2addr v3, v0

    if-ne v1, v3, :cond_7

    if-le p1, v0, :cond_7

    iget v0, p0, Lo5/M;->Z:I

    sub-int/2addr p4, v0

    add-int/lit8 v1, v1, -0x1

    :cond_7
    iget-object v0, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x31

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lo5/M;->Z:I

    div-int v2, p4, v2

    iget v3, p0, Lo5/M;->R:I

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0717d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    new-instance v2, LB9/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LB9/b;-><init>(Lcom/android/camera/fragment/h;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lo5/M;->d:LV9/n0;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    iput-object v2, v0, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    iget-object v2, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, v0, LV9/n0;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p0, Lo5/M;->S:I

    iput v2, v0, LV9/n0;->g:I

    iget v2, p0, Lo5/M;->Z:I

    div-int v2, p4, v2

    iput v2, v0, LV9/n0;->c:I

    iput p4, v0, LV9/n0;->b:I

    iput-object p2, v0, LV9/n0;->a:La5/i;

    iget-boolean p2, p0, Lo5/M;->a:Z

    invoke-virtual {p0, v1, p1}, Lo5/M;->ar(II)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {v0, p4, p2}, LV9/n0;->c(Ljava/util/ArrayList;Z)V

    iget-object p2, p0, Lo5/M;->d:LV9/n0;

    iget-object p4, p0, LB9/e;->r0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, p4}, LV9/n0;->a(Landroid/view/View;)V

    iget-object p2, p0, Lo5/M;->d:LV9/n0;

    iget-object p4, p2, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    if-eqz p4, :cond_8

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object p4

    invoke-virtual {p4}, LBr/e;->g()V

    iget-object p4, p2, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {p4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p2, LV9/n0;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p4, 0x4

    invoke-virtual {p2, p4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_8
    iget p2, p0, Lo5/M;->f:I

    if-le p1, p2, :cond_9

    iget-object p2, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object p4, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    iget v0, p0, Lo5/M;->f:I

    sub-int/2addr p1, v0

    iget v0, p0, Lo5/M;->R:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0717f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, p1

    add-int/2addr v1, p4

    const/16 p1, 0x14a

    invoke-virtual {p0, p2, v1, p1}, Lo5/M;->pr(III)V

    :cond_9
    iput p3, p0, Lo5/M;->Y:I

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "showExpendView"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public final Yq()Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, LY/g;->a:Ljava/lang/ThreadLocal;

    const v1, 0x7f080af5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LY/g$a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0717f3

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v1, 0x7f060be4

    invoke-static {v1}, Lf2/b;->a(I)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method public final dr()V
    .locals 11

    invoke-virtual {p0}, Lo5/M;->br()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    iput-object v0, p0, Lo5/M;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La5/i;

    iget v2, v2, La5/i;->c:I

    const/16 v3, 0x10a

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v5, 0xa2

    if-eq v4, v5, :cond_2

    invoke-static {}, LV9/M5;->e()La5/i$a;

    move-result-object v1

    new-instance v2, La5/i;

    invoke-direct {v2, v1}, La5/i;-><init>(La5/i$a;)V

    iget-object v3, v2, La5/i;->h:La5/i$b;

    if-eqz v3, :cond_2

    iget v4, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-interface {v3, v4}, La5/i$b;->b(I)La5/a;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initTopMenu: mSupportedExtraConfigs = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo5/M;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lo5/M;->e:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0717ed    # 1.7957E38f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La5/i;

    iget-object v4, v4, La5/i;->h:La5/i$b;

    if-eqz v4, :cond_3

    iget v5, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-interface {v4, v5}, La5/i$b;->b(I)La5/a;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v5, v4, La5/a;->c:I

    const/4 v6, -0x1

    const v7, 0x7f0717f2

    if-eq v5, v6, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v4, v4, La5/a;->c:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v5, v1, v4}, Lo5/M;->kr(IILjava/lang/String;)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_4
    iget-object v4, v4, La5/a;->f:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v5, v1, v4}, Lo5/M;->kr(IILjava/lang/String;)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0717dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0717db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v4, v0

    iput v4, p0, Lo5/M;->R:I

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-class v3, Lu2/t;

    invoke-virtual {v0, v3}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LF1/s4;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, LF1/s4;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    move-object v8, p0

    goto :goto_2

    :cond_6
    move-object v8, v3

    :goto_2
    invoke-virtual {p0}, Lo5/M;->lr()V

    new-instance v4, LB9/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lo5/M;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v10

    move-object v9, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v10}, Lo5/c;-><init>(Landroid/content/Context;Ljava/util/List;Lo5/M;Lo5/M;Lo5/M;I)V

    iput-object v4, v7, Lo5/M;->r:Lo5/c;

    iget p0, v7, Lo5/M;->R:I

    iput p0, v4, Lo5/c;->o:I

    invoke-static {}, Lf2/b;->e()Z

    move-result p0

    iget-object v0, v7, Lo5/M;->r:Lo5/c;

    iput-boolean p0, v0, Lo5/c;->i:Z

    invoke-virtual {v7}, LB9/e;->Yq()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lo5/c;->j:Landroid/graphics/drawable/Drawable;

    iget-object v0, v7, Lo5/M;->r:Lo5/c;

    move v4, v2

    move v5, v4

    :goto_3
    iget-object v6, v0, Lo5/c;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x2

    if-ge v4, v6, :cond_8

    invoke-virtual {v0, v4}, Lo5/c;->getItemViewType(I)I

    move-result v6

    if-ne v8, v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c007f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v7, Lo5/M;->a0:I

    iget-object v0, v7, Lo5/M;->r:Lo5/c;

    invoke-virtual {v0}, Lo5/c;->u()I

    move-result v0

    iput v0, v7, Lo5/M;->f:I

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, v7, Lo5/M;->Z:I

    invoke-direct {v0, v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v4, LB9/d;

    invoke-direct {v4, v7}, LB9/d;-><init>(LB9/e;)V

    iput-object v4, v0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    iget-object v4, v7, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v7, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$t;->a(I)Landroidx/recyclerview/widget/RecyclerView$t$a;

    move-result-object v0

    iput v5, v0, Landroidx/recyclerview/widget/RecyclerView$t$a;->b:I

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:Ljava/util/ArrayList;

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    iget-boolean v0, v7, Lo5/M;->V:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string/jumbo v4, "pref_select_zoom_ratio_by_user_key"

    invoke-virtual {v0, v4, v1}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v7}, Lo5/M;->rr()V

    :cond_a
    iget-object v0, v7, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object v0, v7, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v7, Lo5/M;->r:Lo5/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object v0, v7, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, v7, Lo5/M;->X:Lo5/S;

    if-nez v0, :cond_b

    new-instance v0, Lo5/S;

    invoke-direct {v0}, Lo5/S;-><init>()V

    iput-object v0, v7, Lo5/M;->X:Lo5/S;

    iget-object v1, v7, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lo5/S;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_b
    iget-object v0, v7, Lo5/M;->r:Lo5/c;

    iget-object v0, v0, Lo5/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x7f0717d0

    const v2, 0x7f0717c7

    if-eqz v0, :cond_c

    iget v0, v7, Lo5/M;->f:I

    iget v3, v7, Lo5/M;->R:I

    mul-int/2addr v0, v3

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v2

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0717f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v7, Lo5/M;->P:I

    goto :goto_5

    :cond_c
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, v8

    add-int/2addr v1, v0

    iput v1, v7, Lo5/M;->P:I

    :goto_5
    invoke-virtual {v7}, LB9/e;->Er()V

    iget-object v0, v7, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v7, Lo5/M;->Q:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, v7, Lo5/M;->P:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget-object v0, Lf2/e;->c:Lf2/e;

    iget-object v1, v7, Lo5/M;->n:Landroid/widget/FrameLayout;

    const v2, 0x7f080aef

    const v3, 0x7f060428

    invoke-virtual {v0, v1, v2, v3, p0}, Lf2/e;->b(Landroid/view/View;IIZ)V

    iget-object p0, v7, LB9/e;->p0:Landroid/widget/TextView;

    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->d()Lp9/f;

    move-result-object v1

    invoke-interface {v1}, Lp9/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lna/a;->c(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p0, v7, LB9/e;->m0:Landroid/widget/TextView;

    invoke-interface {v0}, Lo9/b;->d()Lp9/f;

    move-result-object v0

    invoke-interface {v0}, Lp9/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lna/a;->c(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p0, v7, LB9/e;->m0:Landroid/widget/TextView;

    const v0, 0x7f060beb

    invoke-static {v0}, Lf2/b;->a(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, v7, LB9/e;->o0:Landroid/widget/ImageView;

    invoke-static {v0}, Lf2/b;->a(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p0, v7, LB9/e;->p0:Landroid/widget/TextView;

    invoke-static {v0}, Lf2/b;->a(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, v7, LB9/e;->q0:Landroid/widget/ImageView;

    invoke-static {v0}, Lf2/b;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public final getFragmentId()I
    .locals 0

    const/16 p0, 0xff

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FragmentTopMenuLC"

    return-object p0
.end method

.method public final initView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lo5/M;->initView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    const v1, 0x7f0e01bd

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, LB9/e;->r0:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, LB9/e;->r0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b06ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, LB9/e;->o0:Landroid/widget/ImageView;

    iget-object p1, p0, LB9/e;->r0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b06cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LB9/e;->m0:Landroid/widget/TextView;

    iget-object p1, p0, LB9/e;->r0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b06d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LB9/e;->p0:Landroid/widget/TextView;

    iget-object p1, p0, LB9/e;->r0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b06d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, LB9/e;->q0:Landroid/widget/ImageView;

    new-instance p1, LB9/h;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo5/M;->d:LV9/n0;

    iget-object p1, p0, LB9/e;->p0:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LB9/e;->q0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, LB9/i;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0717f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p1, v2, v0}, LB9/i;-><init>(II)V

    iget-object p0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;I)V

    return-void
.end method

.method public final ir(Z)V
    .locals 0

    return-void
.end method

.method public final notifyAfterFrameAvailable(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->notifyAfterFrameAvailable(I)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class p1, Lv2/k0;

    invoke-virtual {p0, p1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/k0;

    iget-boolean p0, p0, Lv2/k0;->c0:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    invoke-virtual {p0, p1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/k0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv2/k0;->c0:Z

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LQ5/r;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LQ5/r;-><init>(I)V

    new-instance v1, LQ5/s;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LQ5/s;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    invoke-virtual {p0, p1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LH4/l;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, LH4/l;-><init>(I)V

    new-instance v0, LF1/y;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, LF1/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lo5/M;->onClick(Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LB9/e;->Gk(Z)Z

    return-void

    :cond_0
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LB9/c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LB9/c;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b06d0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo5/M;->onDestroyView()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, LB9/e;->n0:LB9/e$c;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/h;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, LB9/e$c;

    invoke-direct {p1, p0}, LB9/e$c;-><init>(LB9/e;)V

    iput-object p1, p0, LB9/e;->n0:LB9/e$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, LB9/e;->n0:LB9/e$c;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, LQa/a;->d()I

    move-result v0

    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final or(Landroid/view/View;Landroid/view/View;ZI)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const/4 v4, 0x1

    invoke-virtual {v0, v3}, Lo5/M;->Zq(I)I

    move-result v5

    const/16 v6, 0x8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const-wide/16 v9, 0xc8

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-ne v5, v12, :cond_0

    if-eqz p3, :cond_0

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const v5, 0x3f666666    # 0.9f

    const v12, 0x3e99999a    # 0.3f

    invoke-static {v5, v12}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    new-instance v12, LB9/f;

    invoke-direct {v12, v0, v1}, LB9/f;-><init>(LB9/e;Landroid/view/View;)V

    new-array v4, v4, [Lmiuix/animation/listener/TransitionListener;

    aput-object v12, v4, v11

    invoke-virtual {v5, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-static {v9, v10}, Lmiuix/animation/FolmeEase;->cubicOut(J)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0717e4

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    invoke-static {v1}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v5

    sget-object v9, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v10, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v9, v0, v10, v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Lmiuix/animation/FolmeStyle;->resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v9, v5, v10, v7, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    invoke-static {v1}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lmiuix/animation/FolmeStyle;->resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    filled-new-array {v1, v7, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const v13, 0x7f07178f

    if-ne v5, v12, :cond_1

    iget v14, v0, Lo5/M;->Q:I

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    sub-int/2addr v14, v13

    goto :goto_0

    :cond_1
    iget v14, v0, Lo5/M;->Z:I

    rem-int v14, v5, v14

    add-int/2addr v14, v4

    iget v15, v0, Lo5/M;->S:I

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v6, 0x7f0717de

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v6, v15

    mul-int/2addr v6, v14

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int v14, v11, v6

    :goto_0
    const v6, 0x7f07178a

    if-ne v5, v12, :cond_2

    iget v5, v0, Lo5/M;->P:I

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_2
    iget v11, v0, Lo5/M;->Z:I

    add-int/2addr v5, v11

    div-int/2addr v5, v11

    iget v11, v0, Lo5/M;->R:I

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0717f0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v12, v11

    mul-int/2addr v12, v5

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int v6, v5, v12

    :goto_1
    iget-object v5, v0, LB9/e;->r0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Lo5/M;->Z9()Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x8

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v11, 0x190

    if-eqz p3, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    new-instance v18, Landroid/view/animation/ScaleAnimation;

    int-to-float v0, v14

    int-to-float v3, v6

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const v19, 0x3e4ccccd    # 0.2f

    const/high16 v20, 0x3f800000    # 1.0f

    const v21, 0x3e4ccccd    # 0.2f

    const/16 v25, 0x0

    move/from16 v24, v0

    move/from16 v26, v3

    invoke-direct/range {v18 .. v26}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/AnimationSet;

    invoke-direct {v5, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v4, LLy/g;

    invoke-direct {v4}, LLy/g;-><init>()V

    invoke-virtual {v5, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    const/4 v5, 0x0

    :goto_3
    iget-object v13, v0, Lo5/M;->r:Lo5/c;

    iget-object v13, v13, Lo5/c;->b:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_6

    iget-object v13, v0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_5

    iget-object v13, v0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, La5/i;

    if-eqz v15, :cond_5

    iget v15, v15, La5/i;->c:I

    if-ne v15, v3, :cond_5

    const v3, 0x7f0b0409

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_4

    :cond_5
    add-int/2addr v5, v4

    goto :goto_3

    :cond_6
    iget-object v3, v0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    new-instance v17, Landroid/view/animation/ScaleAnimation;

    int-to-float v5, v14

    int-to-float v6, v6

    const v21, 0x3e4ccccd    # 0.2f

    const/16 v22, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x3e4ccccd    # 0.2f

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    move/from16 v23, v5

    move/from16 v25, v6

    invoke-direct/range {v17 .. v25}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v5, v17

    invoke-virtual {v5, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v6, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v11, LLy/g;

    invoke-direct {v11}, LLy/g;-><init>()V

    invoke-virtual {v7, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v7, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lmiuix/animation/controller/AnimState;

    const-string v6, "fromAlpha"

    invoke-direct {v5, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v6, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v11, 0x0

    invoke-virtual {v5, v6, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    const-string/jumbo v7, "toAlpha"

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v6, v11, v12}, LMf/c;->h(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v6

    new-instance v7, Lmiuix/animation/controller/AnimState;

    const-string v13, "fromScaleRV"

    invoke-direct {v7, v13}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v13, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v14, 0x3ff19999a0000000L    # 1.100000023841858

    invoke-virtual {v7, v13, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v7

    sget-object v8, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v7, v8, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v7

    const-string/jumbo v14, "toScaleRV"

    invoke-static {v14, v13, v11, v12}, LMf/c;->h(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v13

    invoke-virtual {v13, v8, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v8

    filled-new-array {v2}, [Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-instance v11, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v11}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/high16 v12, 0x42c80000    # 100.0f

    new-array v13, v4, [F

    const/16 v16, 0x0

    aput v12, v13, v16

    const/4 v14, 0x7

    invoke-virtual {v11, v14, v13}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object v11

    filled-new-array {v11}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v11

    invoke-interface {v2, v5, v6, v11}, Lmiuix/animation/FolmeStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object v2, v0, LB9/e;->r0:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-array v11, v4, [Landroid/view/View;

    aput-object v2, v11, v16

    invoke-static {v11}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-instance v11, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v11}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v13, v4, [F

    aput v12, v13, v16

    invoke-virtual {v11, v14, v13}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object v9

    filled-new-array {v9}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v9

    invoke-interface {v2, v5, v6, v9}, Lmiuix/animation/FolmeStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    filled-new-array {v3}, [Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v4, v4, [F

    const/high16 v5, 0x437a0000    # 250.0f

    const/16 v16, 0x0

    aput v5, v4, v16

    const/4 v5, 0x6

    invoke-virtual {v3, v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    invoke-interface {v2, v7, v8, v3}, Lmiuix/animation/FolmeStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Lo5/M;->T:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    iget v1, v0, Lo5/M;->P:I

    const/16 v3, 0x190

    invoke-virtual {v0, v2, v1, v3}, Lo5/M;->pr(III)V

    iget-object v1, v0, Lo5/M;->n:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v0}, LB9/e;->Gr()V

    return-void
.end method

.method public final provideRotateItem(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lo5/M;->provideRotateItem(Ljava/util/List;I)V

    invoke-static {}, LK2/b;->b0()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0717cd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p2, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v0, p1, :cond_0

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c007f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lo5/M;->Z:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0717dc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lo5/M;->R:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0717f2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lo5/M;->S:I

    iget p2, p0, Lo5/M;->Z:I

    mul-int/2addr p2, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0717cd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0717de

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget v0, p0, Lo5/M;->Z:I

    mul-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Lo5/M;->Q:I

    iget-boolean p1, p0, Lo5/M;->h:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo5/M;->Dr()V

    :cond_0
    invoke-virtual {p0}, LB9/e;->Gr()V

    invoke-virtual {p0}, Lo5/M;->g()V

    return-void
.end method

.method public final ur()Z
    .locals 13

    iget-boolean v0, p0, Lo5/M;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lo5/M;->t:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lo5/M;->s:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lo5/M;->I:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lo5/M;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo5/M;->M:Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_0
    iget-object v0, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    :goto_1
    invoke-virtual {v0}, Lp5/a;->getMenuHeight()I

    move-result v2

    iput v2, p0, Lo5/M;->T:I

    invoke-virtual {p0, v1}, LB9/e;->Gk(Z)Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->isLandScape()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lo5/M;->s:Z

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v4

    iget v5, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v6, 0xe5

    if-eq v5, v6, :cond_6

    iget-boolean v5, p0, Lo5/M;->s:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lo5/M;->I:Z

    if-eqz v5, :cond_7

    :cond_6
    move v2, v1

    move v4, v2

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v6, v4

    invoke-virtual {v0, v6}, Landroid/view/View;->setRotation(F)V

    const/16 v6, 0x50

    const v7, 0x7f07178a

    const v8, 0x7f07178c

    if-eqz v4, :cond_b

    const/16 v9, 0x5a

    const/16 v10, 0x11

    const v11, 0x7f07178e

    const v12, 0x7f07178d

    if-eq v4, v9, :cond_a

    const/16 v9, 0xb4

    if-eq v4, v9, :cond_9

    const/16 v6, 0x10e

    if-eq v4, v6, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v4, v1, v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v5, v1, v4, v1, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v4, v1, v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v5, v1, v4, v1, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_3
    iget v4, p0, Lo5/M;->T:I

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v6

    iget-object v6, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v2, :cond_c

    iget v4, p0, Lo5/M;->Q:I

    :cond_c
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v3, v3}, LB9/e;->Uq(ZZ)V

    goto :goto_4

    :cond_d
    iget-object v6, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eqz v2, :cond_e

    iget v4, p0, Lo5/M;->Q:I

    :cond_e
    const/16 v2, 0x14a

    invoke-virtual {p0, v6, v4, v2}, Lo5/M;->pr(III)V

    :goto_4
    iget-boolean v2, p0, Lo5/M;->t:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lo5/M;->I:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lo5/M;->s:Z

    if-nez v2, :cond_f

    sget-object v2, Li0/E;->a:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v0}, Li0/E;->a(Landroid/view/View;)Li0/N;

    move-result-object v2

    new-instance v4, LLy/g;

    invoke-direct {v4}, LLy/g;-><init>()V

    invoke-virtual {v2, v4}, Li0/N;->f(Landroid/view/animation/Interpolator;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Li0/N;->a(F)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v6, v7}, Li0/N;->e(J)V

    invoke-virtual {v2}, Li0/N;->i()V

    :cond_f
    iget v2, p0, Lo5/M;->Q:I

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lo5/M;->T:I

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, LB9/e;->r0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lo5/M;->Z9()Z

    move-result p0

    if-eqz p0, :cond_10

    const/16 v1, 0x8

    :cond_10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return v3
.end method
