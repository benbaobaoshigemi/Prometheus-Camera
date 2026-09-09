.class public Lcom/android/camera/features/mode/idcard/IdCardModule;
.super Lcom/android/camera/module/Camera2Module;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "IdCardModule"


# instance fields
.field private final mIDCardUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mJumpToEdit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:Ljava/util/List;

    return-void
.end method

.method public static synthetic Bq()V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$handleSaveFinishIfNeed$12()V

    return-void
.end method

.method public static synthetic Cq(Lcom/android/camera/features/mode/idcard/IdCardModule;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$callGalleryIDCardPage$18(I)V

    return-void
.end method

.method public static synthetic Dq(Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$handleSaveFinishIfNeed$6(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic Eq(Lcom/android/camera/features/mode/idcard/IdCardModule;Lr2/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$handleSaveFinishIfNeed$5(Lr2/k;)V

    return-void
.end method

.method public static synthetic Fq()V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$handleSaveFinishIfNeed$4()V

    return-void
.end method

.method public static synthetic Gq()V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$handleSaveFinishIfNeed$8()V

    return-void
.end method

.method public static synthetic Hq(LHp/a;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$callGalleryIDCardPage$16(LHp/a;)V

    return-void
.end method

.method public static synthetic Iq(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$clearPrevPictures$1(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic Jq(Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$checkHandleSaveFinish$3(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic Kq()V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$handleSaveFinishIfNeed$13()V

    return-void
.end method

.method public static synthetic Lq(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$handleSaveFinishIfNeed$7(LQ6/d;)V

    return-void
.end method

.method public static synthetic Mq()V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$handleSaveFinishIfNeed$15()V

    return-void
.end method

.method public static synthetic Nq(Lcom/android/camera/features/mode/idcard/IdCardModule;ILQ6/G0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$callGalleryIDCardPage$17(ILQ6/G0;)V

    return-void
.end method

.method public static synthetic Oq()V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$handleSaveFinishIfNeed$9()V

    return-void
.end method

.method public static synthetic Pq(Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$handleSaveFinishIfNeed$10(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic Qq(Lcom/android/camera/features/mode/idcard/IdCardModule;LHp/a;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$generatePhotoTitle$0(LHp/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Rq(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$handleSaveFinishIfNeed$11(LQ6/d;)V

    return-void
.end method

.method public static synthetic Sq(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->lambda$handleSaveFinishIfNeed$14(LQ6/d;)V

    return-void
.end method

.method private callGalleryIDCardPage(Lcom/android/camera/module/X;)V
    .locals 10

    const-string v0, "IdCardModule"

    const-string v1, "callGalleryIDCardPage"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LXh/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, LXh/a;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string p0, "callGalleryIDCardPage: id card pics deleted, return"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p1, :cond_5

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v2}, LKn/b;->a(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    const-string v8, "DocModeUtils"

    if-eqz v6, :cond_4

    const-string/jumbo v6, "saveIDCard: use mediaEditor."

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v8, v6, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, LKn/b;->b(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "com.miui.mediaeditor.action.EDIT_IDCARD_PHOTO_V2"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    const-string v6, "com.miui.mediaeditor.action.EDIT_IDCARD_PHOTO"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string v6, "com.miui.mediaeditor"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_4
    const-string/jumbo v6, "saveIDCard: use extraPhoto."

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v8, v6, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "com.miui.extraphoto.action.EDIT_IDCARD_PHOTO"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.miui.extraphoto"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const-string/jumbo v6, "volumeKey"

    invoke-static {v3}, Lcom/android/camera/data/data/w;->B(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v4, "privacyWatermark"

    invoke-virtual {v5, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v4, Lr2/k;

    invoke-virtual {v1, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LEr/b;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, LEr/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v2, v5}, LKn/a;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    const v1, 0x8c35

    invoke-static {v2, v5, v1}, LDf/d;->q(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mJumpToEdit:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callGalleryIDCardPage: saveIDCard result is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mJumpToEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mJumpToEdit:Z

    if-eqz v0, :cond_5

    invoke-static {}, LHp/a;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/l;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, LCs/l;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    sget-object v0, LOh/c;->g:LOh/c;

    invoke-interface {p1, v0}, Lcom/android/camera/module/X;->G2(LOh/c;)V

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, LKn/b;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    iget p1, p1, Lv2/D0;->u:I

    if-nez p1, :cond_6

    const/16 p1, 0xba

    :cond_6
    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v0

    check-cast v0, LA2/a$a;

    iget-object v0, v0, LA2/a$a;->b:Lu2/Q;

    invoke-virtual {v0, p1}, Lu2/Q;->c0(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LR3/e;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p0}, LR3/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method private checkHandleSaveFinish(Lcom/android/camera/module/X;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0}, Lj6/f;->b()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    sget-object p0, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance p1, LCs/q;

    const/4 p3, 0x5

    invoke-direct {p1, p2, p3}, LCs/q;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_2
    return v0
.end method

.method private clearPrevPictures()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget-object p0, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v2, LR3/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, LR3/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_1
    return-void
.end method

.method private handleSaveFinishIfNeed(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/module/PhotoBase;->setNeedWaitSaveFinish(Z)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/camera/features/mode/idcard/IdCardModule;->checkHandleSaveFinish(Lcom/android/camera/module/X;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleSaveFinishIfNeed title: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdCardModule"

    invoke-static {v3, v2}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lk7/K;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ID_CARD_PICTURE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p2}, Lk7/K;->o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p2, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->clearPrevPictures()V

    :cond_1
    iget-object p2, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class p2, Lr2/k;

    invoke-virtual {p1, p2}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LK4/l;

    invoke-direct {p2, p0, v0}, LK4/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "handleSaveFinishIfNeed: back page arrived without front page, reset."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance p2, LC4/t;

    const/4 v2, 0x6

    invoke-direct {p2, p1, v2}, LC4/t;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, p2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance p1, LR3/g;

    invoke-direct {p1, v1}, LR3/g;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    new-instance p1, LF1/O2;

    invoke-direct {p1, v0}, LF1/O2;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleSaveFinishIfNeed: unexpected mIDCardUris size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reset. title="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v0, LR3/h;

    invoke-direct {v0, p1, v1}, LR3/h;-><init>(Ljava/lang/Object;I)V

    invoke-static {p2, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-direct {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->clearPrevPictures()V

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance p1, LR3/i;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    new-instance p1, LR3/j;

    invoke-direct {p1, v1}, LR3/j;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void

    :cond_4
    sget-object p2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v0, LR3/a;

    invoke-direct {v0, v1}, LR3/a;-><init>(I)V

    invoke-static {p2, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    iget-object p2, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mIDCardUris:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/idcard/IdCardModule;->callGalleryIDCardPage(Lcom/android/camera/module/X;)V

    :cond_5
    return-void
.end method

.method private static synthetic lambda$callGalleryIDCardPage$16(LHp/a;)V
    .locals 0

    invoke-interface {p0}, LHp/a;->Hn()V

    return-void
.end method

.method private synthetic lambda$callGalleryIDCardPage$17(ILQ6/G0;)V
    .locals 0

    invoke-interface {p2, p1}, LQ6/G0;->qi(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->lockScreenOrientation(Z)V

    return-void
.end method

.method private synthetic lambda$callGalleryIDCardPage$18(I)V
    .locals 2

    invoke-static {}, LQ6/G0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LR3/b;

    invoke-direct {v1, p0, p1}, LR3/b;-><init>(Lcom/android/camera/features/mode/idcard/IdCardModule;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$checkHandleSaveFinish$3(Landroid/net/Uri;)V
    .locals 0

    filled-new-array {p0}, [Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lu7/d;->b([Landroid/net/Uri;)V

    return-void
.end method

.method private static synthetic lambda$clearPrevPictures$1(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    filled-new-array {p0, p1}, [Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lu7/d;->b([Landroid/net/Uri;)V

    return-void
.end method

.method private lambda$generatePhotoTitle$0(LHp/a;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, LHp/a;->qc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lk7/K;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ID_CARD_PICTURE_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/module/PhotoBase;->blockSnapClickUntilSaveFinish(Z)V

    return-object p1
.end method

.method private static synthetic lambda$handleSaveFinishIfNeed$10(Landroid/net/Uri;)V
    .locals 0

    filled-new-array {p0}, [Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lu7/d;->b([Landroid/net/Uri;)V

    return-void
.end method

.method private static synthetic lambda$handleSaveFinishIfNeed$11(LQ6/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/d;->Ro(Z)V

    return-void
.end method

.method private static synthetic lambda$handleSaveFinishIfNeed$12()V
    .locals 3

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/n;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LCs/n;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$handleSaveFinishIfNeed$13()V
    .locals 3

    invoke-static {}, LHp/a;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/z2;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LF1/z2;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$handleSaveFinishIfNeed$14(LQ6/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/d;->Ro(Z)V

    return-void
.end method

.method private static synthetic lambda$handleSaveFinishIfNeed$15()V
    .locals 3

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/f;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LCs/f;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$handleSaveFinishIfNeed$4()V
    .locals 3

    invoke-static {}, LHp/a;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/O;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LEs/O;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private lambda$handleSaveFinishIfNeed$5(Lr2/k;)V
    .locals 1

    invoke-virtual {p1}, Lr2/k;->o()Lr2/k$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lr2/k;->o()Lr2/k$a;

    move-result-object p1

    iget-boolean p1, p1, Lr2/k$a;->e:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/idcard/IdCardModule;->callGalleryIDCardPage(Lcom/android/camera/module/X;)V

    return-void

    :cond_1
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance p1, LF1/d;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LF1/d;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method private static synthetic lambda$handleSaveFinishIfNeed$6(Landroid/net/Uri;)V
    .locals 0

    filled-new-array {p0}, [Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lu7/d;->b([Landroid/net/Uri;)V

    return-void
.end method

.method private static synthetic lambda$handleSaveFinishIfNeed$7(LQ6/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/d;->Ro(Z)V

    return-void
.end method

.method private static synthetic lambda$handleSaveFinishIfNeed$8()V
    .locals 3

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/y2;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LF1/y2;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$handleSaveFinishIfNeed$9()V
    .locals 3

    invoke-static {}, LHp/a;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/z2;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LF1/z2;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static lambda$notifyGalleryContainerManager$2(Landroid/net/Uri;LF1/w4;)Z
    .locals 0

    iget-object p1, p1, LF1/w4;->a:Landroid/net/Uri;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private notifyGalleryContainerManager(Landroid/net/Uri;)V
    .locals 0

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->R0()Z

    return-void
.end method

.method private trackIdCardShutterClick()V
    .locals 4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    const-class v0, Lr2/k;

    invoke-virtual {p0, v0}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/k;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lr2/k;->o()Lr2/k$a;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lr2/k$a;->k:Ljava/lang/String;

    iget-boolean p0, p0, Lr2/k$a;->e:Z

    if-eqz p0, :cond_2

    const-string/jumbo p0, "single"

    goto :goto_1

    :cond_2
    invoke-static {}, LHp/a;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LFn/y;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LFn/y;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v1, "ID_CARD_PICTURE_1"

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "ID_CARD_PICTURE_2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "2ndpage"

    goto :goto_1

    :cond_3
    const-string p0, "1stpage"

    :goto_1
    new-instance v1, Lgq/h;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, "key_common"

    iput-object v2, v1, Lgq/h;->a:Ljava/lang/String;

    new-instance v2, Lgq/f;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v2, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v2, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v2, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v2, v1, Lgq/h;->b:Lgq/f;

    const-string v2, "attr_module_name"

    const-string v3, "M_ID_Card"

    invoke-virtual {v1, v3, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "attr_card_type"

    const-string v3, "attr_card_side"

    invoke-static {v1, v2, v0, v3, p0}, LMv/a;->b(Lgq/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic canMoveWhenProcessing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public generatePhotoTitle()Ljava/lang/String;
    .locals 3

    invoke-static {}, LHp/a;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LR3/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LR3/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->generatePhotoTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getColorSpaceDescriptionInner()Lwu/a$k;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getTexP3DpyP3ColorSpaceDescription()Lwu/a$k;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDismissPureBlurDelayTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getJpegRotation()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getDisplayRotation()I

    move-result p0

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    const/16 p0, 0xb4

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPictureFormatSuitableForShot(I)I
    .locals 0

    const/16 p0, 0x100

    return p0
.end method

.method public bridge synthetic getSnapCondition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZoomManager()Lf9/a;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    if-nez v0, :cond_0

    new-instance v0, Lh9/i;

    invoke-direct {v0, p0}, Lh9/r;-><init>(Lcom/android/camera/module/r;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    return-object p0
.end method

.method public ignoreKeyEvent()Z
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/r;->ignoreKeyEvent()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, LHp/a;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LR3/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LR3/c;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isDolbyVisionPreview()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isMiLiveRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isMultiSnapStarted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPendingMultiCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPrepareRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPurePreview()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isRecordingPaused()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSwitchingCameraInRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isTemporary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomEnabled()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isZslPreferred()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needASD()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needFaceDetection()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityResult(Lcom/android/camera/module/X;IILandroid/content/Intent;)V
    .locals 2

    const p3, 0x8c35

    if-eq p2, p3, :cond_0

    return-void

    :cond_0
    const-string p2, "onActivityResult: "

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "IdCardModule"

    invoke-static {v1, p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p4, LF1/P3;

    const/4 v0, 0x1

    invoke-direct {p4, v0}, LF1/P3;-><init>(I)V

    invoke-virtual {p2, p4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    if-eqz p2, :cond_1

    const/4 p4, 0x1

    invoke-interface {p1, p4, p2}, Lcom/android/camera/module/X;->cl(ZLandroid/net/Uri;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->clearPrevPictures()V

    iput-boolean p3, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mJumpToEdit:Z

    invoke-static {}, LHp/a;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p3, LF1/z2;

    const/4 p4, 0x2

    invoke-direct {p3, p4}, LF1/z2;-><init>(I)V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-direct {p0, p2}, Lcom/android/camera/features/mode/idcard/IdCardModule;->notifyGalleryContainerManager(Landroid/net/Uri;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    invoke-static {}, LHp/a;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/i;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LF1/i;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "IdCardModule"

    const-string v1, "onBackPressed: ignore back from editor"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onDrawBlackFrameChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onFocusReset()V
    .locals 0

    return-void
.end method

.method public onInactive()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->onInactive()V

    iget-boolean v0, p0, Lcom/android/camera/features/mode/idcard/IdCardModule;->mJumpToEdit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IdCardModule"

    const-string v2, "onInactive: do clearPrevPictures"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->clearPrevPictures()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLiveShotVideoTakenFinished(Z)V
    .locals 0

    return-void
.end method

.method public onNewUriArrived(Landroid/net/Uri;ZLjava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-static {p3}, Lk7/K;->t(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/camera/features/mode/idcard/IdCardModule;->handleSaveFinishIfNeed(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPictureTakenImageConsumed(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setFaceAEStrategy()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFaceAEStrategy"
        type = 0x2
    .end annotation

    return-void
.end method

.method public startNormalCapture(I)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mode/idcard/IdCardModule;->trackIdCardShutterClick()V

    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->startNormalCapture(I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic supportEvOverlap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public trackModeCustomInfo(Lqh/g;)V
    .locals 13

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "M_capture_"

    iput-object v1, v0, Lgq/h;->a:Ljava/lang/String;

    new-instance v1, Lgq/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v1, v0, Lgq/h;->b:Lgq/f;

    invoke-virtual {v0, p1}, Lgq/h;->a(Ljava/lang/Object;)V

    new-instance v3, LY7/d;

    iget v4, p0, Lcom/android/camera/module/Camera2Module;->mIsShowLyingDirectHintStatus:I

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->S()I

    move-result v5

    iget-boolean v6, p1, Lqh/g;->b:Z

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isHeicPreferred()Z

    move-result v7

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget v8, v1, Ll6/n;->D:I

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->g5(Lj9/e;)Z

    move-result v9

    iget-boolean v10, p1, Lqh/g;->h:Z

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->i5(Lj9/e;)Z

    move-result v11

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v1

    invoke-interface {v1}, Lj6/f;->G()Z

    move-result v12

    invoke-direct/range {v3 .. v12}, LY7/d;-><init>(IIZZIZZZZ)V

    invoke-virtual {v0, v3}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    iget-boolean v0, p1, Lqh/g;->b:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lqh/g;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "icon"

    const-string v3, "burst_shot"

    invoke-static {v3, v0, v1, v2}, Liq/d;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v5, p1, Lqh/g;->a:I

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v6

    iget-object v7, p1, Lqh/g;->g:Lx4/s;

    iget-wide v8, p1, Lqh/g;->i:J

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/module/Camera2Module;->trackBeautyInfo(IZLx4/s;J)V

    return-void
.end method

.method public bridge synthetic updateColorSpace(Lwu/a$k;)V
    .locals 0

    return-void
.end method

.method public updateEnablePreviewThumbnail(Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/module/PhotoBase;->setEnabledPreviewThumbnail(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/module/X;->Xi(Z)V

    :cond_0
    return-void
.end method
