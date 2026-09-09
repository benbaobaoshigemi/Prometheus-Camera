.class public Lcom/android/camera/features/mode/doc/DocModule;
.super Lcom/android/camera/module/Camera2Module;
.source "SourceFile"


# static fields
.field private static final IS_SAVE_DOC_PREVIEW:Z

.field private static final TAG:Ljava/lang/String; = "DocModule"


# instance fields
.field private final mDataObserver:Lgi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgi/a<",
            "Lyn/d;",
            ">;"
        }
    .end annotation
.end field

.field private final mDocDecoderFactory:Lzn/c;

.field private volatile mDocPicUri:Landroid/net/Uri;

.field private volatile mDocShotData:Lyn/e;

.field private final mDocumentManager:Lxn/e;

.field private volatile mJumpToEdit:Z

.field private volatile mLastDocInfo:Lyn/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "camera.doc.save_preview"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/features/mode/doc/DocModule;->IS_SAVE_DOC_PREVIEW:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;-><init>()V

    sget-object v0, Lxn/e;->f:Lxn/e;

    iput-object v0, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocumentManager:Lxn/e;

    new-instance v1, LF1/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LF1/a;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDataObserver:Lgi/a;

    new-instance v2, Lzn/c;

    invoke-direct {v2, v0, v1}, Lzn/c;-><init>(Lxn/e;Lgi/a;)V

    iput-object v2, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocDecoderFactory:Lzn/c;

    return-void
.end method

.method public static synthetic Bq(Lcom/android/camera/features/mode/doc/DocModule;[FLgi/j;I)[F
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$showDocumentPreview$4([FLgi/j;I)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Cq()V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$showDocumentPreview$6()V

    return-void
.end method

.method public static synthetic Dq(Lcom/android/camera/features/mode/doc/DocModule;LHn/a;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$showDocumentPreview$7(LHn/a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Eq(Lcom/android/camera/features/mode/doc/DocModule;Landroid/graphics/Bitmap;Ljava/lang/String;Lj9/E1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$showDocumentPreview$10(Landroid/graphics/Bitmap;Ljava/lang/String;Lj9/E1;)V

    return-void
.end method

.method public static synthetic Fq(Lyn/d;LHn/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$onDocDecodeDataReceived$0(Lyn/d;LHn/a;)V

    return-void
.end method

.method public static synthetic Gq(LHn/a;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$showDocumentPreview$5(LHn/a;)V

    return-void
.end method

.method public static synthetic Hq(LRh/r;Lcom/android/camera/module/X;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$savePreview$15(LRh/r;Lcom/android/camera/module/X;)V

    return-void
.end method

.method public static synthetic Iq(Lcom/android/camera/module/X;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$updateEnablePreviewThumbnail$18(Lcom/android/camera/module/X;)V

    return-void
.end method

.method public static synthetic Jq(LHn/a;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$onTransitionDone$13(LHn/a;)V

    return-void
.end method

.method public static synthetic Kq(LHn/a;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$prepareNormalCapture$2(LHn/a;)V

    return-void
.end method

.method public static synthetic Lq(Lcom/android/camera/features/mode/doc/DocModule;Lyn/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/doc/DocModule;->onDocDecodeDataReceived(Lyn/d;)V

    return-void
.end method

.method public static synthetic Mq(LF1/i4;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$setFrameAvailable$17(LF1/i4;)V

    return-void
.end method

.method public static synthetic Nq(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$showDocumentPreview$12(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic Oq(Lcom/android/camera/features/mode/doc/DocModule;Lj9/E1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$onShutter$1(Lj9/E1;)V

    return-void
.end method

.method public static synthetic Pq(Lcom/android/camera/features/mode/doc/DocModule;Lgi/j;[FLjava/lang/String;I)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$showDocumentPreview$3(Lgi/j;[FLjava/lang/String;I)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Qq(Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$handleSaveFinishIfNeed$21(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic Rq(Lcom/android/camera/features/mode/doc/DocModule;Landroid/graphics/Bitmap;[FLgi/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$showDocumentPreview$9(Landroid/graphics/Bitmap;[FLgi/j;)V

    return-void
.end method

.method public static synthetic Sq(LHn/a;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$beforeGotoGallery$25(LHn/a;)V

    return-void
.end method

.method public static synthetic Tq(Lcom/android/camera/features/mode/doc/DocModule;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$dumpPreview$16(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic Uq(Lcom/android/camera/features/mode/doc/DocModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mode/doc/DocModule;->onTransitionDone()V

    return-void
.end method

.method public static synthetic Vq(Lcom/android/camera/module/X;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$onTransitionDone$14(Lcom/android/camera/module/X;)V

    return-void
.end method

.method public static synthetic Wq()V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$handleSaveFinishIfNeed$23()V

    return-void
.end method

.method public static synthetic Xq(Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$clearPrevDocPic$20(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic Yq(Lcom/android/camera/module/X;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$onActivityResult$19(Lcom/android/camera/module/X;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic Zq(Lcom/android/camera/features/mode/doc/DocModule;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/l;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$callGalleryDocumentPage$24(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/l;)V

    return-void
.end method

.method public static synthetic ar(Lcom/android/camera/features/mode/doc/DocModule;[FLgi/j;Ljava/lang/String;Lj9/E1;Landroid/util/Pair;)Lio/reactivex/f;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$showDocumentPreview$11([FLgi/j;Ljava/lang/String;Lj9/E1;Landroid/util/Pair;)Lio/reactivex/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic br(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$handleSaveFinishIfNeed$22(LQ6/d;)V

    return-void
.end method

.method private callGalleryDocumentPage(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/module/X;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDocumentMode1"
        type = 0x0
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callGalleryDocumentPage effect: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LXh/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LXh/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocPicUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "callGalleryDocumentPage: doc pic deleted, return"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-le v1, v2, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocPicUri:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LH3/d;

    invoke-direct {v2, p0, p1, p2, v0}, LH3/d;-><init>(Lcom/android/camera/features/mode/doc/DocModule;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean p0, p0, Lcom/android/camera/features/mode/doc/DocModule;->mJumpToEdit:Z

    if-eqz p0, :cond_3

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LOh/c;->g:LOh/c;

    invoke-interface {p3, p0}, Lcom/android/camera/module/X;->G2(LOh/c;)V

    :cond_3
    return-void
.end method

.method private clearPrevDocPic()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDocumentMode1"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocPicUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DocModule"

    const-string v3, "clearPrevDocPic: "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocPicUri:Landroid/net/Uri;

    sget-object p0, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v1, LH3/i;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LH3/i;-><init>(Landroid/net/Uri;I)V

    invoke-static {p0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_0
    return-void
.end method

.method private dumpPreview(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v1, LH3/n;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p2, p1}, LH3/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method private static getImageNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleSaveFinishIfNeed(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDocumentMode1"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "handleSaveFinishIfNeed title: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DocModule"

    invoke-static {v2, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lk7/K;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DOCUMENT_PICTURE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v2, LH3/l;

    invoke-direct {v2, v1}, LH3/l;-><init>(I)V

    invoke-static {v0, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    iput-object p1, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocPicUri:Landroid/net/Uri;

    const-string p1, ".jpg"

    invoke-static {p2, p1}, Lk7/K;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p2

    const-class v0, Lr2/p;

    invoke-virtual {p2, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr2/p;

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p2, v0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/features/mode/doc/DocModule;->callGalleryDocumentPage(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/module/X;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/module/PhotoBase;->setNeedWaitSaveFinish(Z)V

    return-void

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    sget-object p2, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v0, LH3/k;

    invoke-direct {v0, p1, v1}, LH3/k;-><init>(Landroid/net/Uri;I)V

    invoke-static {p2, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_3
    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/module/PhotoBase;->setNeedWaitSaveFinish(Z)V

    return-void
.end method

.method private static synthetic lambda$beforeGotoGallery$25(LHn/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LHn/a;->T7(Z)V

    return-void
.end method

.method private lambda$callGalleryDocumentPage$24(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/l;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "context"

    invoke-static {p4, v1}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, LKn/b;->a(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "DocModeUtils"

    if-eqz v1, :cond_1

    const-string/jumbo v1, "saveDocument: use mediaEditor."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "com.miui.mediaeditor.action.EDIT_DOCUMENT_PHOTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.mediaeditor"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "saveDocument: use extraPhoto."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "com.miui.extraphoto.action.EDIT_DOCUMENT_PHOTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.extraphoto"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "com.miui.extraphoto.extra.DOCUMENT_PHOTO_EFFECT"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "privacyWatermark"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p4, v0}, LKn/a;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    const p1, 0x8c35

    invoke-static {p4, v0, p1}, LDf/d;->q(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/features/mode/doc/DocModule;->mJumpToEdit:Z

    return-void
.end method

.method private static synthetic lambda$clearPrevDocPic$20(Landroid/net/Uri;)V
    .locals 0

    filled-new-array {p0}, [Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lu7/d;->b([Landroid/net/Uri;)V

    return-void
.end method

.method private lambda$dumpPreview$16(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "DocModule"

    const-string/jumbo v1, "showDocumentPreview mShootOrientation = "

    :try_start_0
    const-string v2, "IMG_"

    const-string v3, "IMG_Preview_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v1, Lj6/a;

    iget v1, v1, Lj6/a;->p:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    move-object v1, p0

    check-cast v1, Lj6/a;

    iget v1, v1, Lj6/a;->p:I

    if-eqz v1, :cond_0

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->p:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, p0, v1, v2}, Lvr/j;->j(Landroid/graphics/Bitmap;IFZ)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    invoke-static {p2, p1}, Lvr/j;->k(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$handleSaveFinishIfNeed$21(Landroid/net/Uri;)V
    .locals 0

    filled-new-array {p0}, [Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lu7/d;->b([Landroid/net/Uri;)V

    return-void
.end method

.method private static synthetic lambda$handleSaveFinishIfNeed$22(LQ6/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/d;->Ro(Z)V

    return-void
.end method

.method private static synthetic lambda$handleSaveFinishIfNeed$23()V
    .locals 3

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/E;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LEs/E;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onActivityResult$19(Lcom/android/camera/module/X;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/camera/module/X;->cl(ZLandroid/net/Uri;)V

    return-void
.end method

.method private static lambda$onDocDecodeDataReceived$0(Lyn/d;LHn/a;)V
    .locals 2

    iget-object v0, p0, Lyn/d;->a:[F

    iget-object v1, p0, Lyn/d;->c:Landroid/util/Size;

    iget-object p0, p0, Lyn/d;->b:LUt/a$b;

    invoke-interface {p1, v0, p0, v1}, LHn/a;->Np([FLUt/a$b;Landroid/util/Size;)V

    return-void
.end method

.method private synthetic lambda$onShutter$1(Lj9/E1;)V
    .locals 0

    iget-boolean p1, p1, Lj9/E1;->f:Z

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/module/PhotoBase;->playSoundNoPreviewThumbnail(Z)V

    return-void
.end method

.method private static synthetic lambda$onTransitionDone$13(LHn/a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LHn/a;->T7(Z)V

    return-void
.end method

.method private static synthetic lambda$onTransitionDone$14(Lcom/android/camera/module/X;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/camera/module/X;->F5()Lgi/f;

    move-result-object p0

    invoke-virtual {p0}, Lgi/f;->h()V

    return-void
.end method

.method private static synthetic lambda$prepareNormalCapture$2(LHn/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LHn/a;->T7(Z)V

    return-void
.end method

.method private static lambda$savePreview$15(LRh/r;Lcom/android/camera/module/X;)V
    .locals 6

    invoke-interface {p1}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lk7/i;->G(LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/util/function/IntFunction;)V

    return-void
.end method

.method private static synthetic lambda$setFrameAvailable$17(LF1/i4;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LF1/i4;->n(Z)V

    return-void
.end method

.method private synthetic lambda$showDocumentPreview$10(Landroid/graphics/Bitmap;Ljava/lang/String;Lj9/E1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-boolean v0, Lcom/android/camera/features/mode/doc/DocModule;->IS_SAVE_DOC_PREVIEW:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mode/doc/DocModule;->dumpPreview(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p3, Lj9/E1;->g:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/features/mode/doc/DocModule;->savePreview(Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    return-void
.end method

.method private lambda$showDocumentPreview$11([FLgi/j;Ljava/lang/String;Lj9/E1;Landroid/util/Pair;)Lio/reactivex/f;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Optional;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object p5, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p5, [F

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "showDocumentPreview: points="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rotatePoints="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "DocModule"

    invoke-static {v4, p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    array-length p1, p5

    const/16 v3, 0x8

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, LH3/g;

    invoke-direct {p1, p0, v1, p5, p2}, LH3/g;-><init>(Lcom/android/camera/features/mode/doc/DocModule;Landroid/graphics/Bitmap;[FLgi/j;)V

    invoke-static {p1}, Lio/reactivex/b;->a(Lio/reactivex/functions/a;)Lio/reactivex/internal/operators/completable/g;

    move-result-object p1

    sget-object p2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {p1, p2}, Lio/reactivex/b;->d(Lio/reactivex/v;)Lio/reactivex/internal/operators/completable/m;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isCaptureIntent()Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    new-instance p2, LH3/h;

    invoke-direct {p2, p0, v1, p3, p4}, LH3/h;-><init>(Lcom/android/camera/features/mode/doc/DocModule;Landroid/graphics/Bitmap;Ljava/lang/String;Lj9/E1;)V

    invoke-static {p2}, Lio/reactivex/b;->a(Lio/reactivex/functions/a;)Lio/reactivex/internal/operators/completable/g;

    move-result-object p0

    sget-object p2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sImageProcessScheduler:Lio/reactivex/v;

    invoke-virtual {p0, p2}, Lio/reactivex/b;->d(Lio/reactivex/v;)Lio/reactivex/internal/operators/completable/m;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Lio/reactivex/f;

    aput-object p1, p2, v2

    aput-object p0, p2, v0

    new-instance p0, Lio/reactivex/internal/operators/completable/i;

    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/completable/i;-><init>([Lio/reactivex/f;)V

    return-object p0

    :cond_2
    :goto_0
    const-string/jumbo p1, "showDocumentPreview: cropImage null or rotatePoints invalid"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v4, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/camera/module/PhotoBase;->setNeedWaitSaveFinish(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/X;->F5()Lgi/f;

    move-result-object p1

    invoke-virtual {p1}, Lgi/f;->h()V

    iget-object p0, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocumentManager:Lxn/e;

    invoke-virtual {p0}, Lxn/e;->b()V

    new-instance p0, LF1/o2;

    invoke-direct {p0, v0}, LF1/o2;-><init>(I)V

    invoke-static {p0}, Lio/reactivex/b;->a(Lio/reactivex/functions/a;)Lio/reactivex/internal/operators/completable/g;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {p0, p1}, Lio/reactivex/b;->d(Lio/reactivex/v;)Lio/reactivex/internal/operators/completable/m;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$showDocumentPreview$12(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "DocModule"

    const-string/jumbo v1, "showDocumentPreview: error"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private lambda$showDocumentPreview$3(Lgi/j;[FLjava/lang/String;I)Ljava/util/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocumentManager:Lxn/e;

    iget-object v1, p1, Lgi/j;->a:[B

    iget v2, p1, Lgi/j;->b:I

    iget v3, p1, Lgi/j;->c:I

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lxn/e;->a([BII[FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private lambda$showDocumentPreview$4([FLgi/j;I)[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocumentManager:Lxn/e;

    iget v0, p2, Lgi/j;->b:I

    iget p2, p2, Lgi/j;->c:I

    invoke-virtual {p0, v0, p2, p1, p3}, Lxn/e;->d(II[FI)[F

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$showDocumentPreview$5(LHn/a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LHn/a;->T7(Z)V

    return-void
.end method

.method private static synthetic lambda$showDocumentPreview$6()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, LHn/a;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC3/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LC3/c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$showDocumentPreview$7(LHn/a;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mode/doc/DocModule;->shouldPlayTransition()Z

    move-result p0

    return p0
.end method

.method private lambda$showDocumentPreview$8(Landroid/graphics/Bitmap;[FLgi/j;LHn/a;)V
    .locals 2

    new-instance v0, Landroid/util/Size;

    iget v1, p3, Lgi/j;->b:I

    iget p3, p3, Lgi/j;->c:I

    invoke-direct {v0, v1, p3}, Landroid/util/Size;-><init>(II)V

    new-instance p3, LAs/f;

    const/4 v1, 0x2

    invoke-direct {p3, p0, v1}, LAs/f;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p4, p1, p2, v0, p3}, LHn/a;->H9(Landroid/graphics/Bitmap;[FLandroid/util/Size;LAs/f;)V

    return-void
.end method

.method private lambda$showDocumentPreview$9(Landroid/graphics/Bitmap;[FLgi/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DocModule"

    const-string/jumbo v2, "showDocumentPreview: pending transition"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LHn/a;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH3/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LH3/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHn/a;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/features/mode/doc/DocModule;->lambda$showDocumentPreview$8(Landroid/graphics/Bitmap;[FLgi/j;LHn/a;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/camera/features/mode/doc/DocModule;->Uq(Lcom/android/camera/features/mode/doc/DocModule;)V

    return-void
.end method

.method private static synthetic lambda$updateEnablePreviewThumbnail$18(Lcom/android/camera/module/X;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/module/X;->Xi(Z)V

    return-void
.end method

.method private onDocDecodeDataReceived(Lyn/d;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/features/mode/doc/DocModule;->mLastDocInfo:Lyn/d;

    invoke-static {}, LHn/a;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LH3/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LH3/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private onTransitionDone()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/module/PhotoBase;->setNeedWaitSaveFinish(Z)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, LHn/a;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LCs/l;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, LCs/l;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LH3/p;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LH3/p;-><init>(IB)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string p0, "onTransitionDone"

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DocModule"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private savePreview(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 10

    const/4 v0, 0x1

    sget-object v1, LF1/g3;->c:LF1/g3;

    const/16 v1, 0x57

    invoke-static {v1, p1}, Lvr/j;->g(ILandroid/graphics/Bitmap;)[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    new-array p0, v3, [Ljava/lang/Object;

    const-string p1, "DocModule"

    const-string/jumbo p2, "showDocumentPreview: jpegData is null!"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_1

    :goto_0
    move-wide v8, p3

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    goto :goto_0

    :goto_1
    new-instance v4, LRh/r;

    iget-object p3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p3}, Lj6/j;->getActualCameraId()I

    move-result v5

    const/4 v6, -0x1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, LRh/r;-><init>(IILjava/lang/String;J)V

    invoke-static {v7}, Lcom/android/camera/features/mode/doc/DocModule;->getImageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, v4, LRh/r;->k:LRh/A;

    iput-object p2, p3, LRh/A;->b:Ljava/lang/String;

    iget-object p2, v4, LRh/r;->b:LRh/a;

    iput-boolean v0, p2, LRh/a;->i:Z

    sget-boolean p4, LJe/c;->k:Z

    sget-object p4, LJe/c$b;->a:LJe/c;

    iget-object v5, p4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->s4()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x6

    invoke-virtual {v4, v3, v1}, LRh/r;->a(I[B)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v3, v1}, LRh/r;->a(I[B)V

    :goto_2
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v2, p1}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v4, v1}, LRh/r;->C(Landroid/util/Size;)V

    const/16 v1, 0x100

    iget-object v3, v4, LRh/r;->a:LRh/z;

    iput v1, v3, LRh/z;->j:I

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v2, p1}, Landroid/util/Size;-><init>(II)V

    iget-object v5, v4, LRh/r;->g:LRh/s;

    iput-object v1, v5, LRh/s;->s:Landroid/util/Size;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v2, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p2, LRh/a;->b:Landroid/util/Size;

    iget-object p1, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p1, Lj6/a;

    iget p1, p1, Lj6/a;->c:I

    iput p1, v3, LRh/z;->c:I

    invoke-static {}, LQg/e;->b()I

    move-result p1

    iput p1, p3, LRh/A;->f:I

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/effect/EffectController;->d()Li3/a;

    move-result-object p1

    iget-object p2, v4, LRh/r;->d:LRh/f;

    iput-object p1, p2, LRh/f;->b:Li3/a;

    invoke-virtual {p4}, LJe/c;->p2()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v0, v5, LRh/s;->h:Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallbackOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LA3/i;

    invoke-direct {p1, v4, v0}, LA3/i;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private shouldPlayTransition()Z
    .locals 0

    invoke-static {}, LK2/b;->P()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, LK2/b;->R()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private showDocumentPreview(Lj9/E1;)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->playCameraSound(I)V

    iget-object v1, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocShotData:Lyn/e;

    iget-object v4, v1, Lyn/e;->b:[F

    iget-object v1, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocShotData:Lyn/e;

    iget v7, v1, Lyn/e;->c:I

    iget-object v1, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocShotData:Lyn/e;

    iget-object v6, v1, Lyn/e;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v1}, Lj9/i0;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "showDocumentPreview: savePath="

    const-string v3, ", docEffect="

    invoke-static {v2, v1, v3, v6}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "DocModule"

    invoke-static {v3, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocShotData:Lyn/e;

    iget-object v5, v0, Lyn/e;->a:Lgi/j;

    new-instance v2, LH3/q;

    move-object v3, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, LH3/q;-><init>(Lcom/android/camera/features/mode/doc/DocModule;Lgi/j;[FLjava/lang/String;I)V

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    new-instance p0, Lio/reactivex/internal/operators/single/i;

    invoke-direct {p0, v2}, Lio/reactivex/internal/operators/single/i;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    invoke-virtual {p0, v0}, Lio/reactivex/w;->e(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/m;

    move-result-object p0

    new-instance v2, LH3/r;

    invoke-direct {v2, v3, v4, v5, v7}, LH3/r;-><init>(Lcom/android/camera/features/mode/doc/DocModule;[FLgi/j;I)V

    new-instance v6, Lio/reactivex/internal/operators/single/i;

    invoke-direct {v6, v2}, Lio/reactivex/internal/operators/single/i;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v6, v0}, Lio/reactivex/w;->e(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/m;

    move-result-object v0

    new-instance v2, LF1/S;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, v2}, Lio/reactivex/w;->f(Lio/reactivex/w;Lio/reactivex/functions/c;)Lio/reactivex/internal/operators/single/p;

    move-result-object p0

    new-instance v2, LH3/b;

    move-object v7, p1

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, LH3/b;-><init>(Lcom/android/camera/features/mode/doc/DocModule;[FLgi/j;Ljava/lang/String;Lj9/E1;)V

    new-instance p1, Lio/reactivex/internal/operators/single/h;

    invoke-direct {p1, p0, v2}, Lio/reactivex/internal/operators/single/h;-><init>(Lio/reactivex/internal/operators/single/p;LH3/b;)V

    sget-object p0, Lio/reactivex/internal/functions/a;->c:Lio/reactivex/internal/functions/a$b;

    new-instance v0, LF1/U;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LF1/U;-><init>(I)V

    invoke-virtual {p1, p0, v0}, Lio/reactivex/b;->subscribe(Lio/reactivex/functions/a;Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    return-void
.end method


# virtual methods
.method public appendPhotoSaveInterceptors(LZp/a;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->appendPhotoSaveInterceptors(LZp/a;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LBn/a;

    iget-object v1, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocumentManager:Lxn/e;

    iget-object p0, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocShotData:Lyn/e;

    invoke-direct {v0, v1, p0}, LBn/a;-><init>(Lxn/e;Lyn/e;)V

    iget-object p0, p1, LZp/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public appendPreviewDecoder(Lgi/f;Lgi/g;Lvr/i;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/Camera2Module;->appendPreviewDecoder(Lgi/f;Lgi/g;Lvr/i;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocDecoderFactory:Lzn/c;

    invoke-virtual {p1, p0, p2}, Lgi/f;->d(Lgi/c;Lgi/g;)V

    const/16 p0, 0x20

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {p3, p0}, Lvr/i;->a([I)V

    :cond_0
    return-void
.end method

.method public beforeGotoGallery()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/r;->beforeGotoGallery()V

    invoke-static {}, LHn/a;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/l0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LF1/l0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic canMoveWhenProcessing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public generatePhotoTitle()Ljava/lang/String;
    .locals 4

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->R()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DOCUMENT_PICTURE_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/module/PhotoBase;->blockSnapClickUntilSaveFinish(Z)V

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->generatePhotoTitle()Ljava/lang/String;

    move-result-object p0

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

.method public getEncodingQuality()LF1/g3;
    .locals 0

    sget-object p0, LF1/g3;->c:LF1/g3;

    return-object p0
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

.method public isBlockSnap()Z
    .locals 2

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mode/doc/DocModule;->mLastDocInfo:Lyn/d;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "DocModule"

    const-string v1, "isBlockSnap: document cache preview is null..."

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->isBlockSnap()Z

    move-result p0

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
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDocumentMode1"
        type = 0x0
    .end annotation

    const p3, 0x8c35

    if-eq p2, p3, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    const-string v0, "DocModule"

    const-string v1, "onActivityResult: "

    invoke-static {v0, v1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    new-instance p4, LF1/P3;

    const/4 v0, 0x1

    invoke-direct {p4, v0}, LF1/P3;-><init>(I)V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p3

    new-instance p4, LH3/e;

    const/4 v0, 0x0

    invoke-direct {p4, p1, v0}, LH3/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/camera/features/mode/doc/DocModule;->clearPrevDocPic()V

    iput-boolean p2, p0, Lcom/android/camera/features/mode/doc/DocModule;->mJumpToEdit:Z

    return-void
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

    iget-boolean v0, p0, Lcom/android/camera/features/mode/doc/DocModule;->mJumpToEdit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DocModule"

    const-string v2, "onInactive: do clearPrevDocPic"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/features/mode/doc/DocModule;->clearPrevDocPic()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mode/doc/DocModule;->mLastDocInfo:Lyn/d;

    iput-object v0, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocShotData:Lyn/e;

    return-void
.end method

.method public bridge synthetic onLiveShotVideoTakenFinished(Z)V
    .locals 0

    return-void
.end method

.method public onNewUriArrived(Landroid/net/Uri;ZLjava/lang/String;Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDocumentMode1"
        type = 0x0
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {p3}, Lk7/K;->t(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/camera/features/mode/doc/DocModule;->handleSaveFinishIfNeed(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public onPictureTakenFinished(ZJI)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/Camera2Module;->onPictureTakenFinished(ZJI)V

    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class p1, LHn/b;

    invoke-virtual {p0, p1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, "getAttachProtocol2(...)"

    invoke-static {p0, p1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LH3/o;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LH3/o;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LC4/k;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, LC4/k;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic onPictureTakenImageConsumed(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutter(Lj9/E1;)V
    .locals 5

    const/4 v0, 0x1

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->G0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocShotData:Lyn/e;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/doc/DocModule;->showDocumentPreview(Lj9/E1;)V

    return-void

    :cond_0
    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->R()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object v1, p1, Lj9/E1;->e:Lqh/a;

    const/4 v2, 0x0

    const-string v3, "DocModule"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onShutter: not preview thumbnail, check ButtonStatus: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lj9/E1;->e:Lqh/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Lj9/E1;->e:Lqh/a;

    new-instance v2, LC3/j;

    invoke-direct {v2, v0, p0, p1}, LC3/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lhi/d;->c()Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v1, v2, p1, p0}, Lqh/a;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void

    :cond_1
    const-string v0, "onShutter: not Preview thumbnail, normal handle"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p1, Lj9/E1;->f:Z

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/module/PhotoBase;->playSoundNoPreviewThumbnail(Z)V

    :cond_2
    return-void
.end method

.method public prepareNormalCapture(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V
    .locals 7

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->prepareNormalCapture(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V

    iget-object p1, p0, Lcom/android/camera/features/mode/doc/DocModule;->mLastDocInfo:Lyn/d;

    sget-boolean p2, LJe/c;->k:Z

    sget-object p2, LJe/c$b;->a:LJe/c;

    invoke-virtual {p2}, LJe/c;->G0()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/xiaomi/camera/module/PhotoBase;->setNeedWaitSaveFinish(Z)V

    invoke-static {}, LHn/a;->a()Ljava/util/Optional;

    move-result-object p2

    new-instance v1, LH3/c;

    invoke-direct {v1, v0}, LH3/c;-><init>(I)V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/module/X;->F5()Lgi/f;

    move-result-object p2

    const-class v1, Lzn/c;

    invoke-virtual {p2, v1}, Lgi/f;->c(Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->c()Lj9/e;

    move-result-object p2

    invoke-static {p2}, Lkp/a;->a(Lj9/e;)I

    move-result v4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p2

    const-class v1, Lr2/p;

    invoke-virtual {p2, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr2/p;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, LXh/a;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, LXh/a;->a()Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v6, p2

    goto :goto_1

    :cond_0
    const-string p2, ""

    goto :goto_0

    :goto_1
    new-instance v1, Lyn/e;

    iget-object v2, p1, Lyn/d;->d:Lgi/j;

    iget-object v3, p1, Lyn/d;->e:[F

    invoke-direct/range {v1 .. v6}, Lyn/e;-><init>(Lgi/j;[FILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocShotData:Lyn/e;

    iget-object p0, p0, Lcom/android/camera/features/mode/doc/DocModule;->mDocumentManager:Lxn/e;

    iget-object p0, p0, Lxn/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    const-string p1, "onShotBegin: increase count to "

    invoke-static {p0, p1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "DocumentManager"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
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

.method public setFrameAvailable(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->setFrameAvailable(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/o0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LF1/o0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF1/i4;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->L()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v0, LH3/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LH3/j;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_0
    return-void
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
    .locals 1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/module/PhotoBase;->setEnabledPreviewThumbnail(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallbackOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LH3/m;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LH3/m;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
