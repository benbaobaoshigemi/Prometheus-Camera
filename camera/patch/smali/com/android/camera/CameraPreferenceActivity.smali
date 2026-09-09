.class public Lcom/android/camera/CameraPreferenceActivity;
.super Lcom/android/camera/fragment/settings/a;
.source "SourceFile"

# interfaces
.implements LW5/g;


# static fields
.field public static final W:Ljava/util/HashMap;


# instance fields
.field public V:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/CameraPreferenceActivity;->W:Ljava/util/HashMap;

    const-class v1, Lcom/android/camera/fragment/settings/ValueListPreferenceActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_image_format_key"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_focal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_main_back_default_focal"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_jpegquality"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_jpegquality_key"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_encoder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_encoder_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraPreferenceActivity;->V:Z

    return-void
.end method

.method public static Bq(Lmiuix/appcompat/app/ActionBar;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lj/a;->d()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/ActionBar;->n(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lj/a;->c(I)Lj/a$d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/a;->g(Lj/a$d;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static yq(Ljava/util/List;)Z
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    instance-of v3, v2, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->getGoToActivity()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2}, Lcom/android/camera/fragment/settings/b;->onRestart()V

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public final Aq()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object p0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/B;

    invoke-virtual {p0}, Landroidx/fragment/app/B;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/camera/fragment/settings/b;->initializeActivity()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final Cq(ZZ)V
    .locals 5

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj/a;->c(I)Lj/a$d;

    move-result-object v1

    const v2, 0x7f1413ee

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lj/a$d;->b()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0xe5

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    invoke-virtual {p1}, LJe/c;->N()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    invoke-virtual {p1, v4}, Lu2/Q;->c0(I)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->zq()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lj/a;->f()Lmiuix/appcompat/internal/app/widget/o$g;

    move-result-object p0

    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/o$g;->e(Ljava/lang/CharSequence;)Lmiuix/appcompat/internal/app/widget/o$g;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2, p0, p1}, Lmiuix/appcompat/app/ActionBar;->k(Ljava/lang/String;Lj/a$d;Landroid/os/Bundle;)V

    return-void

    :cond_2
    if-nez p1, :cond_5

    if-eqz v3, :cond_5

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    iget p2, p1, Lu2/Q;->u:I

    invoke-virtual {p1, p2}, Lu2/Q;->E(I)I

    move-result p1

    if-ne p1, v4, :cond_3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    const/16 p2, 0xe1

    invoke-virtual {p1, p2}, Lu2/Q;->c0(I)V

    :cond_3
    invoke-static {}, LQ6/d0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LF1/K1;

    const/4 v2, 0x1

    invoke-direct {p2, v2}, LF1/K1;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->zq()V

    return-void

    :cond_4
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->q(Lj/a$d;)V

    :cond_5
    return-void
.end method

.method public final Ua(Z)V
    .locals 4

    const-string v0, "onCameraHandleStateChanged: "

    invoke-static {v0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CameraPreferenceActivity"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/CameraPreferenceActivity;->Cq(ZZ)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/settings/a;->onBackPressed()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->Z()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-super {p0, p1}, Lcom/android/camera/fragment/settings/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "from_where"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0xb3

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xd3

    goto :goto_0

    :cond_1
    const/16 p1, 0xd2

    goto :goto_0

    :cond_2
    const/16 p1, 0xd1

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v0, LS8/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LS8/h;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/data/data/r;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    const v0, 0x7f100002

    invoke-virtual {p0, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0059

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/CameraPreferenceActivity;->V:Z

    const/16 v0, 0xa0

    invoke-static {p0, v0}, LI2/p;->b(Landroidx/fragment/app/l;I)V

    const-string p0, "CameraPreferenceActivity"

    const-string v0, "go to description"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/l;->onPause()V

    invoke-static {}, LQ6/d0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LC4/G;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LC4/G;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onRestart()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/fragment/settings/a;->onRestart()V

    invoke-virtual {p0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/B;

    invoke-virtual {v0}, Landroidx/fragment/app/B;->f()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/CameraPreferenceActivity;->V:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/camera/CameraPreferenceActivity;->V:Z

    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/camera/CameraPreferenceActivity;->yq(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget-object v1, v1, Lu2/Q;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "CameraPreferenceActivity"

    const-string v4, "onRestart: global().isTimeOutEmpty, reInitActivity."

    invoke-static {v3, v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->Aq()V

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/android/camera/fragment/settings/CameraCommonPreferenceFragment;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/android/camera/fragment/settings/CameraCommonPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/camera/fragment/settings/CameraCommonPreferenceFragment;->updateRecordLocation()V

    :cond_3
    check-cast v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->setGoToActivity(Z)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->Aq()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/l;->onResume()V

    sget-boolean v0, LQa/b;->w:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-boolean v0, LF1/C4;->a:Z

    const v0, 0x7f14031d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, LF1/C4;->b(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, LQ6/d0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/K1;

    invoke-direct {v2, v1}, LF1/K1;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraPreferenceActivity;->Cq(ZZ)V

    invoke-static {}, LQ6/d0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/W2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LF1/W2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    invoke-virtual {p0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/B;

    invoke-virtual {v0}, Landroidx/fragment/app/B;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/CameraPreferenceActivity;->V:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/camera/CameraPreferenceActivity;->yq(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method public final oq()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final xq(Landroid/os/Bundle;)V
    .locals 11

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from_where"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/settings/a;->T:I

    iget-object p1, p0, Lmiuix/appcompat/app/AppCompatActivity;->P:Lmiuix/appcompat/app/j;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/j;->r(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    const-string v3, "CameraPreferenceActivity"

    if-nez p1, :cond_0

    const-string p0, "action bar is null"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const v4, 0x7f140ecf

    invoke-virtual {p1, v4}, Lj/a;->h(I)V

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/ActionBar;->v(Lmiuix/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->x()V

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->y()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, LQ6/d0;->a()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LF1/K1;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, LF1/K1;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lh0/b;

    const v6, 0x7f1413ee

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Lcom/android/camera/fragment/settings/CameraHandleFragment;

    invoke-direct {v5, v6, v7}, Lh0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v5, Lh0/b;

    const v6, 0x7f140b26

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Lcom/android/camera/fragment/settings/CameraCapturePreferenceFragment;

    invoke-direct {v5, v6, v7}, Lh0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lh0/b;

    const v6, 0x7f140b4c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v8, Lcom/android/camera/fragment/settings/CameraCamcorderPreferenceFragment;

    invoke-direct {v5, v6, v8}, Lh0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lh0/b;

    const v6, 0x7f141501

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v9, Lcom/android/camera/fragment/settings/CameraCommonPreferenceFragment;

    invoke-direct {v5, v6, v9}, Lh0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lh0/b;

    const v6, 0x7f1403b7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v9, Lcom/android/camera/fragment/settings/CameraAdvancePreferenceFragment;

    invoke-direct {v5, v6, v9}, Lh0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh0/b;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "initActionBar: pair is "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v3, v6, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v5, Lh0/b;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Lj/a;->f()Lmiuix/appcompat/internal/app/widget/o$g;

    move-result-object v9

    invoke-virtual {v9, v6}, Lmiuix/appcompat/internal/app/widget/o$g;->d(I)Lmiuix/appcompat/internal/app/widget/o$g;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v10, v5, Lh0/b;->a:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v5, v5, Lh0/b;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {p1, v6, v9, v5, v10}, Lmiuix/appcompat/app/ActionBar;->j(Landroid/os/Bundle;Lj/a$d;Ljava/lang/Class;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v1, LF1/X2;

    invoke-direct {v1, p1}, LF1/X2;-><init>(Lmiuix/appcompat/app/ActionBar;)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->l(Lmiuix/appcompat/app/ActionBar$a;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "target_tag"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/camera/CameraPreferenceActivity;->W:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    iput-boolean v2, p0, Lcom/android/camera/CameraPreferenceActivity;->V:Z

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/fragment/settings/ValueListPreferenceActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/android/camera/fragment/settings/a;->T:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "value_list_data"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_3
    invoke-static {p1, v1}, Lcom/android/camera/CameraPreferenceActivity;->Bq(Lmiuix/appcompat/app/ActionBar;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iput-boolean v2, p0, Lcom/android/camera/CameraPreferenceActivity;->V:Z

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/camera/fragment/settings/PreferenceExtraActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_4
    iget p0, p0, Lcom/android/camera/fragment/settings/a;->T:I

    if-eqz p0, :cond_6

    invoke-static {p0}, Lcom/android/camera/data/data/j;->G0(I)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p1, p0}, Lcom/android/camera/CameraPreferenceActivity;->Bq(Lmiuix/appcompat/app/ActionBar;Ljava/lang/String;)Z

    :cond_6
    return-void
.end method

.method public final zq()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "reInitCameraHandleFragment: E"

    const-string v3, "CameraPreferenceActivity"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object p0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/B;

    invoke-virtual {p0}, Landroidx/fragment/app/B;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    instance-of v2, v1, Lcom/android/camera/fragment/settings/CameraHandleFragment;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/camera/fragment/settings/CameraHandleFragment;

    invoke-virtual {v1}, Lcom/android/camera/fragment/settings/b;->initializeActivity()V

    goto :goto_0

    :cond_1
    const-string p0, "reInitCameraHandleFragment: X"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
