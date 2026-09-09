.class public LE4/u;
.super LE4/s;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LE4/s;",
        "Lio/reactivex/u<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final O:I


# instance fields
.field public I:Lvr/n;

.field public J:Z

.field public K:Z

.field public L:Landroid/view/ViewGroup;

.field public M:I

.field public N:Z

.field public s:I

.field public t:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, LF6/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    sput v0, LE4/u;->O:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LE4/s;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LE4/u;->s:I

    const/4 v0, 0x2

    iput v0, p0, LE4/u;->M:I

    return-void
.end method

.method public static Gq(ZZ)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string v0, "key_camera_exception"

    invoke-static {v0}, Lgq/h$a;->a(Ljava/lang/String;)Lgq/h;

    move-result-object v1

    const-string v2, "attr_feature_name"

    const-string v3, "camera_error_dialog_show"

    invoke-virtual {v1, v3, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lgq/h;->d()V

    sget-boolean v1, LQa/b;->k:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    sget-boolean p1, LJe/d;->j:Z

    if-eqz p1, :cond_0

    sget-boolean p1, LQa/b;->c:Z

    if-nez p1, :cond_0

    invoke-static {p0}, LQp/a;->a(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lgq/h$a;->a(Ljava/lang/String;)Lgq/h;

    move-result-object p0

    const-string p1, "camera_broadcast_kill_service"

    invoke-virtual {p0, p1, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgq/h;->d()V

    :cond_0
    return-void
.end method

.method public static Hq(Landroidx/fragment/app/l;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lqi/a;->b()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget-object v0, v0, Lu2/Q;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->reset()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static Lq(Landroidx/fragment/app/l;Landroidx/fragment/app/w;IZZ)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CameraExitHint"

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, LE4/u;

    invoke-direct {p0}, LE4/u;-><init>()V

    iput p2, p0, LE4/u;->s:I

    iput-boolean p3, p0, LE4/u;->J:Z

    iput-boolean p4, p0, LE4/u;->K:Z

    const p2, 0x7f150165

    invoke-virtual {p0, p2}, Landroidx/fragment/app/g;->Cq(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "showErrorScreen, fragment: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/fragment/app/a;

    invoke-direct {p2, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 p1, 0x1

    invoke-virtual {p2, v1, p0, v2, p1}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroidx/fragment/app/a;->p()V

    return-void

    :cond_1
    :goto_0
    const-string/jumbo p0, "showErrorScreen: activity invalid, skip"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final Eq()I
    .locals 1

    iget-boolean v0, p0, LE4/u;->N:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final Iq(Z)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, LE4/u;->s:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 p1, 0x2

    if-eq v1, p1, :cond_3

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    const/4 p1, 0x4

    if-eq v1, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    invoke-static {v0}, LE4/u;->Hq(Landroidx/fragment/app/l;)V

    return-void

    :cond_4
    iget-boolean v1, p0, LE4/u;->N:Z

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    iput v2, p0, LE4/u;->s:I

    invoke-virtual {p0}, Landroidx/fragment/app/g;->zq()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu2/Q;->n:Z

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->T2()Z

    return-void

    :cond_5
    invoke-static {v0}, LE4/u;->Hq(Landroidx/fragment/app/l;)V

    return-void

    :cond_6
    invoke-static {v0}, LE4/u;->Hq(Landroidx/fragment/app/l;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final Jq(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, LE4/u;->s:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, LE4/u;->N:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v0, 0x7f120016

    goto :goto_0

    :cond_2
    const v0, 0x7f120018

    goto :goto_0

    :cond_3
    const v0, 0x7f120017

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LE4/u;->t:Landroid/widget/TextView;

    const/16 v1, 0x3f

    invoke-static {p1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, LE4/u;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    iget-object p0, p0, LE4/u;->t:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final Kq()Z
    .locals 8

    iget-boolean p0, p0, LE4/u;->K:Z

    const-string v0, "CameraExitHint"

    const/4 v1, 0x0

    if-nez p0, :cond_2

    const-string v2, "persist.vendor.camera.provider.restart.time"

    const-string v3, "0"

    invoke-static {v2, v3}, Lur/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "providerRestartTime "

    invoke-static {v3, v2}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v2

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-gtz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->isMIVIBinderDied()Z

    move-result v6

    if-nez v4, :cond_1

    if-eqz v6, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    :cond_1
    move p0, v5

    :cond_2
    const-string/jumbo v2, "shouldDisableKillProvider="

    invoke-static {v2, p0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LE4/u;->Iq(Z)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, LE4/s;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    invoke-static {p1}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, LE4/u;->L:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    iget v0, p1, Lu2/Q;->u:I

    invoke-virtual {p1, v0}, Lu2/Q;->E(I)I

    move-result p1

    const/16 v0, 0xe5

    if-ne p1, v0, :cond_0

    iget-object p0, p0, LE4/u;->L:Landroid/view/ViewGroup;

    const/high16 p1, 0x42b40000    # 90.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const p3, 0x7f0e00f6

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b018c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, LE4/u;->L:Landroid/view/ViewGroup;

    invoke-static {}, LK2/b;->a0()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-static {p2}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p0, LE4/u;->L:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p2

    iget p3, p2, Lu2/Q;->u:I

    invoke-virtual {p2, p3}, Lu2/Q;->E(I)I

    move-result p2

    const/16 p3, 0xe5

    if-ne p2, p3, :cond_1

    iget-object p2, p0, LE4/u;->L:Landroid/view/ViewGroup;

    const/high16 p3, 0x42b40000    # 90.0f

    invoke-virtual {p2, p3}, Landroid/view/View;->setRotation(F)V

    :cond_1
    const p2, 0x7f0b018b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, LE4/u;->t:Landroid/widget/TextView;

    sget-boolean p2, LJe/d;->d:Z

    const/4 p3, 0x2

    const-string v1, "CameraExitHint"

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    sget-boolean p2, LQa/b;->i:Z

    if-nez p2, :cond_3

    const-string p2, "persist.vendor.camera.provider.restart.time"

    const-string v3, "0"

    invoke-static {p2, v3}, Lur/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string/jumbo v5, "stable providerRestartTime="

    invoke-static {v5, p2}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, p2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    iput-boolean p2, p0, LE4/u;->N:Z

    sget-boolean p2, LJe/c;->k:Z

    sget-object p2, LJe/c$b;->a:LJe/c;

    iget-object p2, p2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput p3, p0, LE4/u;->M:I

    :cond_3
    iget-boolean p2, p0, LE4/u;->N:Z

    if-nez p2, :cond_5

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v3, "satellite_state"

    invoke-static {p2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_4

    move p2, v2

    goto :goto_2

    :cond_4
    move p2, v0

    :goto_2
    const-string/jumbo v3, "satelliteOn="

    invoke-static {v3, p2}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    iput-boolean v2, p0, LE4/u;->N:Z

    iput p3, p0, LE4/u;->M:I

    :cond_5
    iget p2, p0, LE4/u;->s:I

    sget v3, LE4/u;->O:I

    if-eq p2, v2, :cond_8

    if-eq p2, p3, :cond_6

    invoke-virtual {p0, v3}, LE4/u;->Jq(I)V

    return-object p1

    :cond_6
    iget-boolean p2, p0, LE4/u;->N:Z

    if-eqz p2, :cond_7

    invoke-virtual {p0, v2}, LE4/u;->Jq(I)V

    return-object p1

    :cond_7
    invoke-virtual {p0, v3}, LE4/u;->Jq(I)V

    return-object p1

    :cond_8
    iget-boolean p2, p0, LE4/u;->N:Z

    if-eqz p2, :cond_9

    const-string p2, "camera auto recover start"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {v1, p2, p3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p2, p0, LE4/u;->M:I

    invoke-virtual {p0, p2}, LE4/u;->Jq(I)V

    return-object p1

    :cond_9
    invoke-virtual {p0, v3}, LE4/u;->Jq(I)V

    return-object p1
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LE4/u;->Iq(Z)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, LE4/u;->Jq(I)V

    return-void
.end method

.method public final onPause()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPause, mCameraTimer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LE4/u;->I:Lvr/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CameraExitHint"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LE4/u;->I:Lvr/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lvr/n;->a()V

    :cond_0
    invoke-virtual {p0, v1}, LE4/u;->Iq(Z)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, LE4/s;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    iget p1, p0, LE4/u;->s:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, LE4/u;->Kq()Z

    move-result p1

    iget-boolean v0, p0, LE4/u;->J:Z

    invoke-static {v0, p1}, LE4/u;->Gq(ZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LE4/u;->Kq()Z

    move-result p1

    iget-boolean v0, p0, LE4/u;->N:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CameraExitHint"

    const-string v2, "camera auto recover fail"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, LE4/u;->J:Z

    invoke-static {v0, p1}, LE4/u;->Gq(ZZ)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, LE4/u;->J:Z

    invoke-static {v0, p1}, LE4/u;->Gq(ZZ)V

    :cond_3
    :goto_0
    new-instance p1, Lvr/n;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE4/u;->I:Lvr/n;

    iget v0, p0, LE4/u;->s:I

    sget v1, LE4/u;->O:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    if-eq v0, p2, :cond_4

    iput v1, p1, Lvr/n;->c:I

    iput v2, p1, Lvr/n;->e:I

    goto :goto_1

    :cond_4
    iget-boolean p2, p0, LE4/u;->N:Z

    if-eqz p2, :cond_5

    iput v2, p1, Lvr/n;->c:I

    iput v2, p1, Lvr/n;->e:I

    goto :goto_1

    :cond_5
    iput v1, p1, Lvr/n;->c:I

    iput v2, p1, Lvr/n;->e:I

    goto :goto_1

    :cond_6
    iget-boolean p2, p0, LE4/u;->N:Z

    if-eqz p2, :cond_7

    iget p2, p0, LE4/u;->M:I

    iput p2, p1, Lvr/n;->c:I

    iput v2, p1, Lvr/n;->e:I

    goto :goto_1

    :cond_7
    iput v1, p1, Lvr/n;->c:I

    iput v2, p1, Lvr/n;->e:I

    :goto_1
    invoke-virtual {p1, p0}, Lvr/n;->d(Lio/reactivex/u;)V

    :cond_8
    :goto_2
    return-void
.end method
