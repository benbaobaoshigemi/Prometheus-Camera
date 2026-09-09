.class public final Lj6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj6/b;


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:F

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Landroid/net/Uri;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:I

.field public q:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lj6/a;->b:I

    iput v0, p0, Lj6/a;->c:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lj6/a;->d:F

    iput v0, p0, Lj6/a;->g:I

    const/4 v0, -0x1

    iput v0, p0, Lj6/a;->h:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-boolean v0, p0, Lj6/a;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lj6/a;->j:Z

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-static {}, LQ6/j0;->a()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ6/j0;

    invoke-interface {p0}, LQ6/j0;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final b(Lcom/android/camera/module/X;)V
    .locals 4

    invoke-interface {p1}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object p1

    iget-object v0, p1, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v0}, Lvr/m;->n(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lj6/a;->i:Z

    iget-object v0, p1, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v0}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lj6/a;->j:Z

    iget-boolean v0, p0, Lj6/a;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lvr/m;->g()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lj6/a;->k:Landroid/net/Uri;

    iget-object v0, p1, Lvr/m;->a:Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    iput-object v1, p0, Lj6/a;->l:Ljava/lang/String;

    iget-object v0, p1, Lvr/m;->a:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v3, "save-image"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lj6/a;->m:Z

    iget-object v0, p1, Lvr/m;->a:Landroid/content/Intent;

    if-eqz v0, :cond_5

    const-string v3, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lj6/a;->n:Z

    iget-object p1, p1, Lvr/m;->a:Landroid/content/Intent;

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "log_system_check"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_7
    :goto_4
    iput-boolean v2, p0, Lj6/a;->o:Z

    return-void
.end method
