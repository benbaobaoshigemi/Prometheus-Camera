.class public Lk5/a;
.super Lcom/android/camera/fragment/h;
.source "SourceFile"

# interfaces
.implements LQ6/g1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk5/a$b;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/view/View;

.field public e:Z

.field public f:Lcom/android/camera/fragment/subtitle/SoundWaveView;

.field public g:Lcom/android/camera/fragment/subtitle/SoundWaveView;

.field public h:Lcom/android/camera/fragment/subtitle/SoundWaveView;

.field public i:Z

.field public j:Z

.field public k:Lk5/a$a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field public l:Lk5/a$b;

.field public m:Ll5/a;

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/h;-><init>()V

    new-instance v0, Lk5/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lk5/a$a;-><init>(Lk5/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lk5/a;->k:Lk5/a$a;

    return-void
.end method

.method public static synthetic Mq(Lk5/a;Lv2/q0;)Ljava/lang/Boolean;
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, p0}, Lv2/q0;->isSwitchOn(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final Al(Lcom/android/camera/module/video/C;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lk5/a;->m:Ll5/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "\u3d25\u3d1c\u3d1a\u3d10\u3d16\u3d3c\u3d1d\u3d1f\u3d1a\u3d1d\u3d16\u3d21\u3d16\u3d10\u3d1c\u3d14"

    const v1, -0x378fc28d

    invoke-static {v1, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u3d14\u3d16\u3d07\u3d20\u3d06\u3d11\u3d07\u3d1a\u3d07\u3d1f\u3d16\u3d30\u3d1c\u3d1d\u3d07\u3d16\u3d1d\u3d07\u3d32\u3d00\u3d0a\u3d1d\u3d10\u3d53"

    invoke-static {v1, v3}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ll5/a;->t:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Ll5/a;->t:Z

    if-eqz v0, :cond_0

    new-instance v0, LAs/B;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, LAs/B;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lio/reactivex/internal/operators/completable/b;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/completable/b;-><init>(Lio/reactivex/e;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    const-string/jumbo v3, "unit is null"

    invoke-static {v0, v3}, Lio/reactivex/internal/functions/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scheduler is null"

    invoke-static {v2, v0}, Lio/reactivex/internal/functions/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/reactivex/internal/operators/completable/n;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/completable/n;-><init>(Lio/reactivex/internal/operators/completable/b;Lio/reactivex/v;)V

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {v0, v1}, Lio/reactivex/b;->b(Lio/reactivex/v;)Lio/reactivex/internal/operators/completable/k;

    move-result-object v0

    new-instance v1, Ll5/b;

    invoke-direct {v1, p0, p1}, Ll5/b;-><init>(Ll5/a;Lcom/android/camera/module/video/C;)V

    invoke-virtual {v0, v1}, Lio/reactivex/b;->subscribe(Lio/reactivex/d;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ll5/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/module/video/C;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final K8(Z)V
    .locals 0

    iput-boolean p1, p0, Lk5/a;->j:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lk5/a;->f:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lk5/a;->e:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->isLandScape()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, LK2/b;->N()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p0, p0, Lk5/a;->f:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final Ke()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "handleSubtitleRecordingStop: "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LCs/n;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, LCs/n;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-boolean v1, p0, Lk5/a;->e:Z

    iget-object v0, p0, Lk5/a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lk5/a;->l:Lk5/a$b;

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lk5/a$b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lk5/a;->m:Ll5/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Ll5/a;->a:Z

    iput-boolean v2, v0, Ll5/a;->o:Z

    const-string/jumbo v2, "\u3d25\u3d1c\u3d1a\u3d10\u3d16\u3d3c\u3d1d\u3d1f\u3d1a\u3d1d\u3d16\u3d21\u3d16\u3d10\u3d1c\u3d14"

    const v3, -0x378fc28d

    invoke-static {v3, v2}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u3d00\u3d07\u3d1c\u3d03\u3d21\u3d16\u3d10\u3d1c\u3d01\u3d17\u3d1a\u3d1d\u3d14\u3d49\u3d10\u3d06\u3d01\u3d01\u3d16\u3d1d\u3d07\u3d53\u3d00\u3d06\u3d11\u3d07\u3d1a\u3d07\u3d1f\u3d16\u3d53\u3d07\u3d0a\u3d03\u3d16\u3d53\u3d49\u3d53"

    invoke-static {v3, v5}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Ll5/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "\u3d43"

    invoke-static {v3, v1}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Ll5/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Ll5/a;->t:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ll5/a;->d()V

    :cond_1
    iget-object v1, v0, Ll5/a;->r:Ljava/lang/String;

    iput-object v1, v0, Ll5/a;->s:Ljava/lang/String;

    invoke-virtual {p0}, Lk5/a;->Nq()V

    return-void
.end method

.method public final M5()V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "handleSubtitleRecordingResume: "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk5/a;->e:Z

    invoke-static {}, LV6/c;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LO5/a;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, LO5/a;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk5/a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LH3/p;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LH3/p;-><init>(IB)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lk5/a;->Oq()V

    iget-object p0, p0, Lk5/a;->m:Ll5/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ll5/a;->q:J

    iget-wide v4, p0, Ll5/a;->m:J

    iget-wide v6, p0, Ll5/a;->l:J

    sub-long/2addr v2, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Ll5/a;->m:J

    iput-boolean v1, p0, Ll5/a;->n:Z

    return-void
.end method

.method public final Nq()V
    .locals 2

    iget-object v0, p0, Lk5/a;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lk5/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lk5/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lk5/a;->g:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lk5/a;->f:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lk5/a;->h:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lk5/a;->g:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/fragment/subtitle/SoundWaveView;->d:Z

    iget-object v0, p0, Lk5/a;->h:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-boolean v1, v0, Lcom/android/camera/fragment/subtitle/SoundWaveView;->d:Z

    iget-object p0, p0, Lk5/a;->f:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-boolean v1, p0, Lcom/android/camera/fragment/subtitle/SoundWaveView;->d:Z

    return-void
.end method

.method public final Oq()V
    .locals 10

    invoke-virtual {p0}, Lk5/a;->Nq()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LCi/a;->subtitle_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LCi/a;->subtitle_landscape_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, LCi/a;->subtitle_cinematic_aspect_ratio_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->isLandScape()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-static {}, LK2/b;->N()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    invoke-static {v3}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v5, p0, Lk5/a;->d:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    sget v8, LK2/e;->f:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v8, v6

    sub-int/2addr v8, v7

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->isLeftLandScape()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lk5/a;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lk5/a;->g:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lk5/a;->g:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v4}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->a()V

    iget-object v4, p0, Lk5/a;->g:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p0, p0, Lk5/a;->g:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v3, v8

    sub-int/2addr v3, v7

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v3

    sub-int/2addr p0, v0

    sub-int/2addr p0, v1

    iput p0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->isRightLandScape()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lk5/a;->h:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v9, p0, Lk5/a;->h:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v3, v8

    sub-int/2addr v3, v7

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v3

    sub-int/2addr v9, v0

    sub-int/2addr v9, v1

    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v0, p0, Lk5/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lk5/a;->h:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lk5/a;->h:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->a()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lk5/a;->Nq()V

    iget-object v0, p0, Lk5/a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/data/data/m;->j0()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LCi/a;->zoom_ratio_dot_text_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, LCi/a;->zoom_ratio_dot_gap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    invoke-static {}, LK2/b;->i()I

    move-result v1

    iget v3, p0, Lk5/a;->n:I

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, p0, Lk5/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lk5/a;->j:Z

    invoke-virtual {p0, v0}, Lk5/a;->K8(Z)V

    iget-object v0, p0, Lk5/a;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->isFlipRotate()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object p0, p0, Lk5/a;->f:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->a()V

    return-void
.end method

.method public final U2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk5/a;->i:Z

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "checkNetWorkStatus: netWork is available "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-boolean v2, p0, Lk5/a;->i:Z

    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "checkNetWorkStatus: netWork is unavailable"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, LF1/z1;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, LF1/z1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final getFragmentId()I
    .locals 0

    const p0, 0xfffe

    return p0
.end method

.method public final getLayoutResourceId()I
    .locals 0

    sget p0, LCi/c;->fragment_subtitle:I

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FragmentSubtitle"

    return-object p0
.end method

.method public final h2()V
    .locals 7

    invoke-virtual {p0}, Lk5/a;->U2()V

    const-string v0, "key_common"

    invoke-static {v0}, Lgq/h$a;->a(Ljava/lang/String;)Lgq/h;

    move-result-object v1

    const-string/jumbo v2, "subtitle_start_recording"

    invoke-virtual {v1, v2}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lgq/h;->d()V

    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "handleSubtitleRecordingStart: "

    invoke-static {v1, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LV9/L2;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, LV9/L2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lk5/a;->e:Z

    iget-object v3, p0, Lk5/a;->d:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lk5/a;->Oq()V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LH3/p;

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, LH3/p;-><init>(IB)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean v3, p0, Lk5/a;->i:Z

    if-eqz v3, :cond_4

    iget-object v0, p0, Lk5/a;->k:Lk5/a$a;

    if-eqz v0, :cond_0

    const/16 v3, 0x65

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object p0, p0, Lk5/a;->m:Ll5/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    const/4 v3, 0x0

    iput-object v3, v0, Lt2/j;->l:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Ll5/a;->p:J

    iput-boolean v2, p0, Ll5/a;->n:Z

    iput-boolean v2, p0, Ll5/a;->o:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Ll5/a;->m:J

    iget-object v0, p0, Ll5/a;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll5/a;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    iput v1, p0, Ll5/a;->k:I

    iget-boolean v0, p0, Ll5/a;->a:Z

    if-eqz v0, :cond_3

    :try_start_0
    iget-boolean v0, p0, Ll5/a;->t:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ll5/a;->d()V

    :cond_2
    invoke-virtual {p0}, Ll5/a;->c()V

    new-instance v0, Lm5/a;

    invoke-direct {v0}, Ljava/lang/Thread;-><init>()V

    iput-object v3, v0, Lm5/a;->a:[B

    iput-object v3, v0, Lm5/a;->b:Landroid/media/AudioRecord;

    iput-object v3, v0, Lm5/a;->c:Ljava/lang/ref/WeakReference;

    iput-object v3, v0, Lm5/a;->d:Ljava/lang/ref/WeakReference;

    iput-boolean v2, v0, Lm5/a;->e:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lm5/a;->f:D

    iput-wide v2, v0, Lm5/a;->g:D

    iput v1, v0, Lm5/a;->k:I

    const/16 v2, 0x3e80

    iput v2, v0, Lm5/a;->h:I

    const/16 v2, 0x28

    iput v2, v0, Lm5/a;->i:I

    const/16 v2, 0xa

    iput v2, v0, Lm5/a;->j:I

    iput-object v0, p0, Ll5/a;->b:Lm5/a;

    iget-object v3, p0, Ll5/a;->v:Ll5/a$a;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v0, Lm5/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-boolean v1, p0, Ll5/a;->t:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const v0, -0x378fc28d

    const-string/jumbo v1, "\u3d25\u3d1c\u3d1a\u3d10\u3d16\u3d3c\u3d1d\u3d1f\u3d1a\u3d1d\u3d16\u3d21\u3d16\u3d10\u3d1c\u3d14"

    invoke-static {v0, v1}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void

    :cond_4
    invoke-static {v0}, Lgq/h$a;->a(Ljava/lang/String;)Lgq/h;

    move-result-object p0

    const-string/jumbo v0, "subtitle_start_no_network"

    invoke-virtual {p0, v0}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgq/h;->d()V

    return-void
.end method

.method public final initView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->initView(Landroid/view/View;)V

    sget v0, LCi/b;->subtitle_view_menu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lk5/a;->d:Landroid/view/View;

    sget v0, LCi/b;->voice_value_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lk5/a;->b:Landroid/widget/TextView;

    sget v0, LCi/b;->voice_value_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lk5/a;->c:Landroid/widget/TextView;

    sget v0, LCi/b;->voice_value_vertical:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lk5/a;->a:Landroid/widget/TextView;

    sget v0, LCi/b;->speed_sw_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-object v0, p0, Lk5/a;->f:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    sget v0, LCi/b;->speed_sw_view_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-object v0, p0, Lk5/a;->g:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    sget v0, LCi/b;->speed_sw_view_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-object p1, p0, Lk5/a;->h:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->registerProtocol()V

    new-instance p1, Lk5/a$b;

    invoke-direct {p1, p0}, Lk5/a$b;-><init>(Lk5/a;)V

    iput-object p1, p0, Lk5/a;->l:Lk5/a$b;

    new-instance p1, Ll5/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ll5/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lk5/a;->m:Ll5/a;

    iget-object p0, p0, Lk5/a;->l:Lk5/a$b;

    iput-object p0, p1, Ll5/a;->i:Lk5/a$b;

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onDestroy"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lk5/a;->k:Lk5/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lk5/a;->k:Lk5/a$a;

    :cond_0
    iget-object v0, p0, Lk5/a;->l:Lk5/a$b;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lk5/a;->l:Lk5/a$b;

    :cond_1
    iget-object p0, p0, Lk5/a;->m:Ll5/a;

    iput-object v1, p0, Ll5/a;->i:Lk5/a$b;

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    iget-object v1, p0, Ll5/a;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lt2/j;->l:Ljava/lang/String;

    iget-boolean v0, p0, Ll5/a;->t:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ll5/a;->d()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll5/a;->n:Z

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/J;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LEs/J;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final pc()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "handleSubtitleRecordingPause: "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lk5/a;->e:Z

    invoke-virtual {p0}, Lk5/a;->Nq()V

    iget-object v0, p0, Lk5/a;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH3/p;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LH3/p;-><init>(IB)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lk5/a;->l:Lk5/a$b;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lk5/a$b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lk5/a;->m:Ll5/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ll5/a;->l:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll5/a;->n:Z

    return-void
.end method

.method public final provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, -0x1

    filled-new-array {p0, p0}, [I

    move-result-object p0

    invoke-static {p0}, LS1/j;->a([I)Landroid/view/animation/AnimationSet;

    move-result-object p0

    return-object p0
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

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/h;->provideRotateItem(Ljava/util/List;I)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    const-class p2, Lv2/q0;

    invoke-virtual {p1, p2}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/microfilm/dualcam/mode/g;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/xiaomi/microfilm/dualcam/mode/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lk5/a;->e:Z

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lk5/a;->Oq()V

    return-void
.end method

.method public final register(LN6/g;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->register(LN6/g;)V

    const-class v0, LQ6/g1;

    check-cast p1, LN6/h;

    invoke-virtual {p1, v0, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public final unRegister(LN6/g;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->unRegister(LN6/g;)V

    const-class v0, LQ6/g1;

    check-cast p1, LN6/h;

    invoke-virtual {p1, v0, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public final updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/b;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, LCi/a;->subtitle_vertical_normal_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lk5/a;->n:I

    const/4 p1, 0x1

    invoke-static {p1}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lk5/a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, LK2/b;->W()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, LCi/a;->subtitle_vertical_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lk5/a;->n:I

    :cond_0
    invoke-static {}, LK2/b;->R()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, LCi/a;->subtitle_vertical_laptop_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lk5/a;->n:I

    :cond_1
    iget-boolean p1, p0, Lk5/a;->e:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lk5/a;->Oq()V

    :cond_2
    return-void
.end method

.method public final x9(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lk5/a;->d:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lk5/a;->d:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final xj()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lk5/a;->m:Ll5/a;

    invoke-virtual {p0}, Ll5/a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
