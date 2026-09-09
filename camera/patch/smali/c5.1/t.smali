.class public final Lc5/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/n;
.implements LQ6/S0;


# static fields
.field public static final g:I


# instance fields
.field public a:Lc5/h;

.field public b:Lcom/android/camera/Camera;

.field public c:I

.field public d:I

.field public e:Z

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "presentation.display.frame.lost"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lur/g;->e(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lc5/t;->g:I

    return-void
.end method

.method public static q(Landroid/content/Context;II)Lc5/h;
    .locals 5

    const-string v0, "media_router"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    const-string v1, "PresentationDisplay"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "getPresentationDisplay from mediaRouter"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string v3, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_1

    const-string v3, "getPresentationDisplay from displayManager"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aget-object v0, v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "getPresentationDisplay from CompatibilityUtils"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, LQa/a;->a(Landroid/content/Context;)[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lc5/h;

    invoke-direct {v1, p0, v0, p1, p2}, Lc5/h;-><init>(Landroid/content/Context;Landroid/view/Display;II)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t find presentation display."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final B9()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc5/t;->cancel()V

    return-void

    :cond_0
    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "CameraPresentation"

    const-string/jumbo v3, "showAutoHibernation"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lc5/h;->m0:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lc5/h;->m0:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lc5/h;->N:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final Gf(I)V
    .locals 5

    const-string v0, "PresentationDisplay"

    iget-object v1, p0, Lc5/t;->b:Lcom/android/camera/Camera;

    iget-boolean v1, v1, Lcom/android/camera/a;->a0:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/m;->P()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lc5/t;->a:Lc5/h;

    if-nez v1, :cond_4

    const/4 p1, 0x1

    invoke-static {p1}, LK2/j;->i(Z)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lc5/t;->b:Lcom/android/camera/Camera;

    iget v3, p0, Lc5/t;->d:I

    iget v4, p0, Lc5/t;->c:I

    invoke-static {v2, v3, v4}, Lc5/t;->q(Landroid/content/Context;II)Lc5/h;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v2, p0, Lc5/t;->a:Lc5/h;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lc5/t;->b:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/a;->l0()LF1/Y2;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/camera/a;->C0:LD8/m;

    invoke-virtual {v1, p0}, LD8/m;->P(Lru/n;)V

    :cond_2
    invoke-virtual {p0}, Lc5/t;->L2()V

    const-string p0, "presentation display show"

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v2, v1

    :goto_0
    const-string v4, "Failed to show presentation display"

    invoke-static {v0, v4, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, LK2/j;->i(Z)V

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Lc5/h;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    const-string v2, "cancel presentation after show failure error"

    invoke-static {v0, v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    iput-object v1, p0, Lc5/t;->a:Lc5/h;

    return-void

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    :goto_2
    return-void

    :cond_5
    invoke-virtual {v1}, Lc5/h;->e()V

    iget-object p1, p0, Lc5/t;->a:Lc5/h;

    invoke-virtual {p1}, Lc5/h;->m()V

    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    invoke-virtual {p0}, Lc5/h;->n()V

    return-void
.end method

.method public final L2()V
    .locals 1

    invoke-static {}, LK2/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lc5/t;->d:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/E;->n0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc5/t;->a:Lc5/h;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc5/h;->L:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lc5/h;->g()V

    :cond_1
    return-void
.end method

.method public final N()V
    .locals 1

    invoke-static {}, LK2/j;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lc5/t;->d:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/E;->n0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_3

    iget v0, p0, Lc5/h;->a:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lc5/h$a;->b:Lc5/h$a;

    iput-object v0, p0, Lc5/h;->L0:Lc5/h$a;

    iget-boolean v0, p0, Lc5/h;->A0:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc5/h;->b(Z)V

    :cond_2
    invoke-virtual {p0}, Lc5/h;->h()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final U()V
    .locals 3

    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hideDelayNumber "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lc5/h;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CameraPresentation"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lc5/h;->o:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc5/h;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lc5/h;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final V1()V
    .locals 1

    invoke-static {}, LK2/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lc5/h;->m0:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lc5/h;->m0:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Z()V
    .locals 1

    invoke-static {}, LK2/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lc5/t;->d:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/E;->n0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_2

    iget v0, p0, Lc5/h;->a:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lc5/h$a;->b:Lc5/h$a;

    iput-object v0, p0, Lc5/h;->L0:Lc5/h$a;

    iget-boolean v0, p0, Lc5/h;->A0:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc5/h;->b(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final animateCapture()V
    .locals 3

    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "animateCapture mAnimState :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lc5/h;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CameraPresentation"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lc5/h;->W:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lc5/h;->W:I

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S4()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc5/t;->b:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/a;->l0()LF1/Y2;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/camera/a;->C0:LD8/m;

    invoke-virtual {v0, p0}, LD8/m;->V(Lru/n;)V

    :cond_1
    iget-object v0, p0, Lc5/t;->a:Lc5/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc5/h;->cancel()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PresentationDisplay"

    const-string v2, "presentation display hide"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc5/t;->a:Lc5/h;

    :cond_2
    :goto_0
    return-void
.end method

.method public final canProvide()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final cancel()V
    .locals 3

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S4()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc5/t;->b:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/a;->l0()LF1/Y2;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/camera/a;->C0:LD8/m;

    invoke-virtual {v0, p0}, LD8/m;->V(Lru/n;)V

    :cond_1
    iget-object v0, p0, Lc5/t;->a:Lc5/h;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, LK2/j;->i(Z)V

    iget-object v1, p0, Lc5/t;->a:Lc5/h;

    invoke-virtual {v1}, Lc5/h;->cancel()V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PresentationDisplay"

    const-string v2, "presentation display cancel"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc5/t;->a:Lc5/h;

    :cond_2
    :goto_0
    return-void
.end method

.method public final d0()V
    .locals 1

    invoke-static {}, LK2/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lc5/t;->d:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/E;->n0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_2

    iget v0, p0, Lc5/h;->a:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lc5/h$a;->c:Lc5/h$a;

    iput-object v0, p0, Lc5/h;->L0:Lc5/h$a;

    iget-boolean v0, p0, Lc5/h;->A0:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc5/h;->b(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e0(Z)V
    .locals 2

    invoke-static {}, LK2/j;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lc5/t;->d:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/camera/data/data/E;->n0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_9

    iget v0, p0, Lc5/h;->a:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lc5/h$a;->d:Lc5/h$a;

    iput-object v0, p0, Lc5/h;->L0:Lc5/h$a;

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    iget-object p0, p0, Lc5/h;->m0:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    iget-boolean p1, p0, Lc5/h;->A0:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lc5/h;->b(Z)V

    :cond_3
    iget-boolean p1, p0, Lc5/h;->B0:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lc5/h;->v0:Landroid/widget/ScrollView;

    invoke-virtual {p1, v1, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    iput-boolean v1, p0, Lc5/h;->B0:Z

    :cond_4
    iget-object p1, p0, Lc5/h;->J0:Lio/reactivex/disposables/b;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lio/reactivex/disposables/b;->c()V

    :cond_5
    iget-object p1, p0, Lc5/h;->q0:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lc5/h;->p0:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lc5/h;->o0:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    invoke-virtual {p0, v1}, Lc5/h;->j(Z)V

    :cond_9
    :goto_0
    return-void
.end method

.method public final f0()V
    .locals 8

    iget-object v0, p0, Lc5/t;->a:Lc5/h;

    if-eqz v0, :cond_9

    iget-object v1, v0, Lc5/h;->c:Landroid/view/SurfaceView;

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lc5/h;->o:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lc5/h;->g0:Lzu/b;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lc5/h;->j0:Lcom/xiaomi/renderengine/gl/GlHandlerThread;

    if-eqz v1, :cond_9

    iget-boolean v0, v0, Lc5/h;->f0:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lc5/t;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lc5/t;->f:I

    iget-object v0, p0, Lc5/t;->b:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/a;->C0:LD8/m;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, LD8/m;->p:Lru/h;

    iget-object v0, v0, Lru/h;->U:Ltu/a;

    sget-object v3, Ltu/a;->a:Ltu/a;

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-object v3, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    iget v4, v3, Lcom/android/camera/c;->a:I

    div-int/lit16 v4, v4, 0x3e8

    const/16 v5, 0x2e

    if-lt v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget v3, v3, Lcom/android/camera/c;->b:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v0, :cond_4

    invoke-static {}, LK2/j;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget v0, p0, Lc5/t;->f:I

    sget v1, Lc5/t;->g:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "requestRender skip needJumpFrameCount:"

    const-string v3, ",jumpFrame"

    invoke-static {v1, v0, v3}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lc5/t;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "PresentationDisplay"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_2
    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    iget-boolean v0, p0, Lc5/h;->e0:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lc5/h;->f0:Z

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lc5/h;->b:Lcom/android/camera/Camera;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, "CameraPresentation::onDrawFrame"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lc5/h;->b:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/a;->C0:LD8/m;

    iget-object v1, p0, Lc5/h;->g0:Lzu/b;

    iget-object v2, p0, Lc5/h;->j0:Lcom/xiaomi/renderengine/gl/GlHandlerThread;

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lc5/h;->m:I

    iget v3, p0, Lc5/h;->n:I

    iget v4, p0, Lc5/h;->M0:F

    invoke-static {v0, v1, v3, v4}, LG8/n;->u(Landroid/content/Context;IIF)F

    move-result v0

    iget-object v1, p0, Lc5/h;->b:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/a;->C0:LD8/m;

    invoke-virtual {v1}, LD8/m;->A()[F

    move-result-object v1

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lc5/h;->q:I

    iget v5, p0, Lc5/h;->p:I

    iget v6, p0, Lc5/h;->m:I

    add-int/2addr v6, v4

    iget v7, p0, Lc5/h;->n:I

    add-int/2addr v7, v5

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Lc5/c;

    invoke-direct {v4, p0, v1, v3, v0}, Lc5/c;-><init>(Lc5/h;[FLandroid/graphics/Rect;F)V

    const-string p0, "onDrawFrame"

    invoke-virtual {v2, v4, p0}, Lcom/xiaomi/renderengine/gl/GlHandlerThread;->c(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_8
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_9
    :goto_4
    return-void
.end method

.method public final f1(F)V
    .locals 2

    invoke-static {}, LK2/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lc5/t;->d:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/E;->n0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lc5/h;->n0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iput-boolean v1, p0, Lc5/h;->C0:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final fp(IZ)V
    .locals 4

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_4

    iget-boolean v0, p0, Lc5/h;->o:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lc5/h;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lc5/h;->l:F

    const v1, 0x7f0713a5

    const/4 v2, 0x1

    if-nez p2, :cond_2

    iget-object p2, p0, Lc5/h;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p2, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lc5/h;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v1, v3

    div-float/2addr v1, v0

    invoke-virtual {p2, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    new-instance p2, LU1/b;

    iget-object v0, p0, Lc5/h;->d:Landroid/widget/TextView;

    invoke-direct {p2, v0}, LU1/b;-><init>(Landroid/view/View;)V

    invoke-static {p2}, LS1/h;->e(LU1/b;)V

    :cond_3
    iget-object p0, p0, Lc5/h;->d:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final i1(ZZ)V
    .locals 0

    invoke-static {}, LK2/j;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lc5/t;->d:I

    invoke-static {p2}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/E;->n0()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lc5/h;->b(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isEnableClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final m1(I)V
    .locals 5

    invoke-static {}, LK2/j;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lc5/t;->d:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/E;->n0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_3

    const-string v0, "onTextSpeedChanged: textSpeed = "

    invoke-static {p1, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CameraPresentation"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lc5/h;->F0:I

    iget-boolean p1, p0, Lc5/h;->A0:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lc5/h;->y0:Lio/reactivex/disposables/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lio/reactivex/disposables/b;->a()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lc5/h;->y0:Lio/reactivex/disposables/b;

    invoke-interface {p1}, Lio/reactivex/disposables/b;->c()V

    const/4 p1, 0x0

    iput-object p1, p0, Lc5/h;->y0:Lio/reactivex/disposables/b;

    :cond_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget v0, Lio/reactivex/h;->a:I

    sget-object v0, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    const-string/jumbo v1, "unit is null"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "scheduler is null"

    invoke-static {v0, p1}, Lio/reactivex/internal/functions/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lio/reactivex/internal/operators/flowable/p;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xc8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-direct {p1, v1, v2, v0}, Lio/reactivex/internal/operators/flowable/p;-><init>(JLio/reactivex/v;)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    sget v1, Lio/reactivex/h;->a:I

    invoke-virtual {p1, v0, v1}, Lio/reactivex/h;->a(Lio/reactivex/v;I)Lio/reactivex/internal/operators/flowable/k;

    move-result-object p1

    new-instance v0, LF1/h0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LF1/h0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lio/reactivex/h;->subscribe(Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object p1

    iput-object p1, p0, Lc5/h;->y0:Lio/reactivex/disposables/b;

    return-void

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lc5/h;->b(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final needViewClear()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final notifyAfterFrameAvailable(I)V
    .locals 3

    const-string v0, "notifyAfterFrameAvailable "

    invoke-static {p1, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PresentationDisplay"

    invoke-static {v2, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lc5/t;->b:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p1

    iget-object p1, p1, Loh/b;->m:LY2/f;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LY2/f;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lc5/t;->e:Z

    return-void

    :cond_0
    iput-boolean v0, p0, Lc5/t;->e:Z

    invoke-static {}, Lcom/android/camera/data/data/m;->P()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lc5/t;->cancel()V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lc5/t;->Gf(I)V

    return-void
.end method

.method public final notifyDataChanged(II)V
    .locals 0

    return-void
.end method

.method public final notifyPreviewRectChange(LZ5/h;Landroid/graphics/Rect;FLZ5/p;)V
    .locals 0

    sget-object p1, LZ5/p;->c:LZ5/p;

    if-ne p4, p1, :cond_1

    iget-boolean p1, p0, Lc5/t;->e:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "notifyPreviewRectChange "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    const-string p4, "PresentationDisplay"

    invoke-static {p4, p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p2, p0, Lc5/t;->e:Z

    invoke-static {}, Lcom/android/camera/data/data/m;->P()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc5/t;->cancel()V

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lc5/t;->Gf(I)V

    :cond_1
    return-void
.end method

.method public final notifyThemeChanged(II)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFlashScreenHalo"
        type = 0x0
    .end annotation

    return-void
.end method

.method public final ol(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    iget-object v0, p0, Lc5/h;->R:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lc5/h;->R:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onBackEvent(I)Z
    .locals 1

    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_1

    iget-object p1, p0, Lc5/h;->L:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lc5/h;->L:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/data/data/E;->n0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc5/h;->g()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onLayoutChange(LZ5/h;LZ5/h;)V
    .locals 0

    return-void
.end method

.method public final onShot(Le2/h;)V
    .locals 0

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

    iput p1, p0, Lc5/t;->d:I

    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_0

    iput p1, p0, Lc5/h;->a:I

    :cond_0
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

    rsub-int p1, p2, 0x168

    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    :goto_0
    iget p2, p0, Lc5/t;->c:I

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lc5/t;->a:Lc5/h;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_2

    iput p1, p0, Lc5/t;->c:I

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lc5/t;->a:Lc5/h;

    iput p1, p0, Lc5/t;->c:I

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lc5/h;->f(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final registerProtocol()V
    .locals 2

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/S0;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    invoke-static {}, LQ6/h;->b()LQ6/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LQ6/h;->j5(LQ6/c0;)V

    :cond_0
    return-void
.end method

.method public final setClickEnable(Z)V
    .locals 0

    return-void
.end method

.method public final sq(LS1/g;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0xffffff1

    invoke-virtual {p1, v0, p0}, LS1/g;->e(ILcom/android/camera/fragment/c;)V

    iput p2, p0, Lc5/t;->d:I

    iget p1, p1, LS1/g;->j:I

    iput p1, p0, Lc5/t;->c:I

    return-void
.end method

.method public final ud(I)V
    .locals 16

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc5/t;->a:Lc5/h;

    if-eqz v0, :cond_c

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v1

    const-class v2, Lw7/c;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw7/c;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    iget-boolean v2, v2, Lv2/D0;->B:Z

    const-string v3, "/"

    const/16 v4, 0xac

    const/16 v5, 0xa7

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/16 v9, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, v0, Lc5/h;->U:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lc5/h;->S:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lc5/h;->S:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v0, v0, Lc5/h;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :pswitch_1
    iget-object v1, v0, Lc5/h;->U:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lc5/h;->U:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    iget-object v1, v0, Lc5/h;->S:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v9, Landroid/view/animation/RotateAnimation;

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual {v0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    invoke-virtual {v9, v6}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, v0, Lc5/h;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :pswitch_2
    iget-object v1, v0, Lc5/h;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lc5/h;->R:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lc5/h;->V:Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    iget-object v1, v0, Lc5/h;->U:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lc5/h;->U:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    iget-object v1, v0, Lc5/h;->U:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, v0, Lc5/h;->S:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lc5/h;->S:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v0, v0, Lc5/h;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :pswitch_3
    iget-object v1, v0, Lc5/h;->R:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lc5/h;->V:Landroid/view/animation/AlphaAnimation;

    if-nez v1, :cond_3

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, v0, Lc5/h;->V:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, v0, Lc5/h;->V:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, v0, Lc5/h;->V:Landroid/view/animation/AlphaAnimation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, v0, Lc5/h;->V:Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v1, v0, Lc5/h;->V:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    :cond_3
    iget-object v1, v0, Lc5/h;->R:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;

    iget-object v0, v0, Lc5/h;->V:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :pswitch_4
    iget-object v0, v0, Lc5/h;->V:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    return-void

    :pswitch_5
    iget v2, v0, Lc5/h;->a:I

    const/16 v6, 0xa3

    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    const/16 v1, 0xad

    if-eq v2, v1, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->M()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lc5/h;->U:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lc5/h;->U:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f130232

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v1, v0, Lc5/h;->U:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object v0, v0, Lc5/h;->U:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    return-void

    :cond_5
    invoke-static {v2}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lc5/h;->U:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lc5/h;->U:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f130233

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v1, v0, Lc5/h;->U:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object v0, v0, Lc5/h;->U:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    return-void

    :cond_6
    invoke-virtual {v1}, Lw7/c;->b()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, LK2/j;->c()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v0, Lc5/h;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/data/data/A;->e()I

    move-result v2

    iget-object v4, v0, Lc5/h;->P:Landroid/widget/TextView;

    invoke-virtual {v1}, Lw7/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lc5/h;->Q:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_6
    iget v6, v0, Lc5/h;->a:I

    sget-object v7, Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView$a;->a:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView$a;

    if-eq v6, v5, :cond_9

    const/16 v5, 0xa9

    if-eq v6, v5, :cond_8

    if-eq v6, v4, :cond_7

    const/16 v4, 0xb4

    if-eq v6, v4, :cond_7

    const/16 v4, 0xb7

    if-eq v6, v4, :cond_8

    const/16 v4, 0xd6

    if-eq v6, v4, :cond_8

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_0

    :cond_7
    :pswitch_7
    invoke-static {v6}, Lcom/android/camera/data/data/m;->I(I)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lc5/h;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lc5/h;->R:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lc5/h;->R:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;

    invoke-virtual {v0, v7}, Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;->b(Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView$a;)V

    return-void

    :cond_8
    :pswitch_8
    iget-object v1, v0, Lc5/h;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lc5/h;->R:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lc5/h;->R:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;

    sget-object v1, Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView$a;->b:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView$a;

    invoke-virtual {v0, v1}, Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;->b(Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView$a;)V

    return-void

    :cond_9
    :pswitch_9
    invoke-virtual {v1}, Lw7/c;->b()Z

    move-result v4

    if-nez v4, :cond_a

    if-nez v2, :cond_a

    iget-object v1, v0, Lc5/h;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lc5/h;->R:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lc5/h;->R:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;

    invoke-virtual {v1, v7}, Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;->b(Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView$a;)V

    iget-object v0, v0, Lc5/h;->R:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;

    const-string v1, "00:15"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v2, v0, Lc5/h;->O:Landroid/widget/LinearLayout;

    invoke-static {}, LK2/j;->c()Z

    move-result v4

    if-eqz v4, :cond_b

    move v8, v9

    :cond_b
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/data/data/A;->e()I

    move-result v2

    iget-object v4, v0, Lc5/h;->P:Landroid/widget/TextView;

    invoke-virtual {v1}, Lw7/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lc5/h;->Q:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lc5/h;->R:Lcom/android/camera2/compat/theme/custom/mm/top/topalert/RecordingTimeView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa2
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final unRegisterProtocol()V
    .locals 2

    invoke-virtual {p0}, Lc5/t;->cancel()V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/S0;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    invoke-static {}, LQ6/h;->b()LQ6/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LQ6/h;->he(LQ6/c0;)V

    :cond_0
    return-void
.end method

.method public final x7()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc5/t;->Gf(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lc5/t;->a:Lc5/h;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "CameraPresentation"

    const-string v3, "hideAutoHibernation"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lc5/h;->m0:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget v1, p0, Lc5/h;->a:I

    invoke-static {v1}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/E;->n0()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc5/h;->L:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lc5/h;->m0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lc5/h;->N:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
