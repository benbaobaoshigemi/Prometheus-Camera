.class public final Lq8/f;
.super LNw/b;
.source "SourceFile"


# instance fields
.field public e:I


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, LJe/d;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, LK2/e;->f(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lq8/f;->e:I

    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFlipPhone"
        type = 0x0
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->c()Z

    move-result p1

    if-nez p1, :cond_0

    sget-boolean p1, LJe/d;->c:Z

    if-eqz p1, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/android/camera/Camera;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {p1}, LK2/e;->f(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lq8/f;->e:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rotation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lq8/f;->e:I

    const-string v3, "->"

    invoke-static {v2, v0, v3, v1}, LO0/o;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CamSurfaceView"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p1

    iget-object p1, p1, Loh/b;->m:LY2/f;

    sget-object v1, LZ5/m;->e:LZ5/m;

    invoke-virtual {p1, v1}, LY2/f;->g(LZ5/m;)Z

    :cond_1
    iput v0, p0, Lq8/f;->e:I

    :cond_2
    return-void
.end method
