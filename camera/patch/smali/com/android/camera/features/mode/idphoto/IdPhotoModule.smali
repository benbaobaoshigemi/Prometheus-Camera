.class public final Lcom/android/camera/features/mode/idphoto/IdPhotoModule;
.super Lcom/android/camera/module/Camera2Module;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mode/idphoto/IdPhotoModule$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 42\u00020\u0001:\u00014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0010\u001a\u00020\u00112\n\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0014J,\u0010\u0016\u001a\u00020\u00112\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u0018H\u0016J\u0008\u0010\u001c\u001a\u00020\u0018H\u0014J\u001c\u0010\u001d\u001a\u00020\u00112\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0012\u0010\"\u001a\u00020\u00112\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0008\u0010%\u001a\u00020&H\u0014J\u0010\u0010\'\u001a\u00020\u00112\u0006\u0010(\u001a\u00020\u0018H\u0002J\u0008\u0010)\u001a\u00020\u0011H\u0002J\u0016\u0010*\u001a\u00020\u00112\u000c\u0010+\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010,H\u0014J\u0008\u0010-\u001a\u00020\u0011H\u0002J\u0006\u0010.\u001a\u00020\u0011J\u0008\u0010/\u001a\u00020\u0018H\u0016J\u0008\u00100\u001a\u00020\u0011H\u0002J\u0008\u00101\u001a\u000202H\u0016J\u0008\u00103\u001a\u00020\u0011H\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\t\u0010\u0003R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u00065"
    }
    d2 = {
        "Lcom/android/camera/features/mode/idphoto/IdPhotoModule;",
        "Lcom/android/camera/module/Camera2Module;",
        "<init>",
        "()V",
        "mMediaEditorHelper",
        "Lcom/android/camera/external/MediaEditorHelper;",
        "mCapturedDisplayRotation",
        "",
        "mCaptureDeviceState",
        "getMCaptureDeviceState$annotations",
        "uri",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "setUri",
        "(Landroid/net/Uri;)V",
        "onProcessorJpegFinish",
        "",
        "parallelTaskData",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        "getColorSpaceDescriptionInner",
        "Lcom/xiaomi/renderengine/gl/ColorSpace$Description;",
        "onNewUriArrived",
        "isHeic",
        "",
        "title",
        "",
        "isPreview",
        "handleCoverViewForNormalCapture",
        "prepareNormalCapture",
        "previewResult",
        "Landroid/hardware/camera2/CaptureResult;",
        "previewParam",
        "Lcom/android/camera2/SnapParam$Param;",
        "trackModeCustomInfo",
        "pictureTakenParameter",
        "Lcom/xiaomi/camera/bean/PictureTakenParameter;",
        "genCameraAction",
        "Lcom/android/camera/module/image/ImageActionImpl;",
        "trackSaveAction",
        "save",
        "showCaptureReview",
        "appendModuleExternalASD",
        "asdInterceptorChain",
        "Lcom/android/camera/module/interceptor/base/ASDInterceptorChain;",
        "hideCaptureReview",
        "ensureMediaEditorUseful",
        "supportEvOverlap",
        "gotoEditorNew",
        "getZoomManager",
        "Lcom/android/camera/zoom/IZoomManager;",
        "updateBeauty",
        "Companion",
        "app_cnRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/android/camera/features/mode/idphoto/IdPhotoModule$a;

.field private static final EXTRA_CAPACITY_MAX:Ljava/lang/String; = "id_photo_capacity_max"

.field private static final EXTRA_CAPACITY_MIN:Ljava/lang/String; = "id_photo_capacity_min"

.field private static final EXTRA_HEIGHT:Ljava/lang/String; = "id_photo_height"

.field private static final EXTRA_LOAD_TYPE:Ljava/lang/String; = "loadType"

.field private static final EXTRA_QUALITY:Ljava/lang/String; = "id_photo_quality"

.field private static final EXTRA_SIZE_NAME:Ljava/lang/String; = "id_photo_size_name"

.field private static final EXTRA_SIZE_UNIT:Ljava/lang/String; = "id_photo_size_unit"

.field private static final EXTRA_WIDTH:Ljava/lang/String; = "id_photo_width"

.field public static final TAG:Ljava/lang/String; = "IdPhotoModule"

.field private static final VALUE_CERTIFICATES_PHOTO:Ljava/lang/String; = "certificatesPhoto"


# instance fields
.field private mCaptureDeviceState:I

.field private mCapturedDisplayRotation:I

.field private mMediaEditorHelper:Lq3/d;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->Companion:Lcom/android/camera/features/mode/idphoto/IdPhotoModule$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->mCaptureDeviceState:I

    return-void
.end method

.method public static synthetic Bq(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->hideCaptureReview$lambda$18$lambda$17$lambda$14(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V

    return-void
.end method

.method public static synthetic Cq(LS3/c;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->hideCaptureReview$lambda$18$lambda$17$lambda$13(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic Dq(LQ6/d;)LPu/A;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->hideCaptureReview$lambda$18$lambda$17$lambda$12(LQ6/d;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Eq(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->prepareNormalCapture$lambda$7$lambda$6(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/d;)V

    return-void
.end method

.method public static synthetic Fq(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->prepareNormalCapture$lambda$7(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V

    return-void
.end method

.method public static synthetic Gq(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LRh/r;LQ6/j0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->onProcessorJpegFinish$lambda$2$lambda$1(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LRh/r;LQ6/j0;)V

    return-void
.end method

.method public static synthetic Hq(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->showCaptureReview$lambda$11$lambda$10(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/d;)V

    return-void
.end method

.method public static synthetic Iq(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->showCaptureReview$lambda$11(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V

    return-void
.end method

.method public static synthetic Jq(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/j0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->hideCaptureReview$lambda$18$lambda$17(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/j0;)V

    return-void
.end method

.method public static synthetic Kq(LQ6/d;)LPu/A;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->showCaptureReview$lambda$8(LQ6/d;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Lq(LRp/c;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->hideCaptureReview$lambda$19(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic Mq(LNo/j;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->showCaptureReview$lambda$9(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic Nq(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->onProcessorJpegFinish$lambda$5(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V

    return-void
.end method

.method public static synthetic Oq(LQ6/G0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->ensureMediaEditorUseful$lambda$21$lambda$20(LQ6/G0;)V

    return-void
.end method

.method public static synthetic Pq(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/j0;)LPu/A;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->hideCaptureReview$lambda$18(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/j0;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Qq(LQ6/n1;)LPu/A;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->hideCaptureReview$lambda$18$lambda$17$lambda$15(LQ6/n1;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Rq(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LRh/r;LQ6/j0;)LPu/A;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->onProcessorJpegFinish$lambda$2(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LRh/r;LQ6/j0;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Sq(LH5/d;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->hideCaptureReview$lambda$18$lambda$17$lambda$16(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic Tq(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->ensureMediaEditorUseful$lambda$21(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;Z)V

    return-void
.end method

.method public static synthetic Uq(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;Lu2/x;)LPu/A;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->gotoEditorNew$lambda$28(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;Lu2/x;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Vq(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->onProcessorJpegFinish$lambda$5$lambda$4(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/d;)V

    return-void
.end method

.method public static synthetic Wq(LQ6/M;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->onProcessorJpegFinish$lambda$2$lambda$1$lambda$0(LQ6/M;)V

    return-void
.end method

.method public static synthetic Xq(LQu/a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->gotoEditorNew$lambda$29(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic Yq(LJ5/b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->onProcessorJpegFinish$lambda$3(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$hideCaptureReview(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->hideCaptureReview()V

    return-void
.end method

.method public static final synthetic access$trackSaveAction(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->trackSaveAction(Z)V

    return-void
.end method

.method private static final ensureMediaEditorUseful$lambda$21(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ensureMediaEditorUseful: require editor installed."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object p1

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    const-string v1, "com.miui.mediaeditor"

    invoke-static {p1, v1}, LF1/c3;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const-string v1, "getApplicationInfo(...)"

    invoke-static {p1, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "mediaeditor_api_for_certificate_version_code"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "isMediaEditorInstalled: exception occur -> "

    invoke-static {v1, p1}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MediaEditorDependencyUtil"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->gotoEditorNew()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object p0

    const p1, 0x7f1408b9

    invoke-static {p0, p1}, LF1/C4;->g(Landroid/app/Activity;I)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ensureMediaEditorUseful: require editor not installed."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object p0

    check-cast p0, LA2/a$a;

    iget-object p0, p0, LA2/a$a;->b:Lu2/Q;

    const/16 p1, 0xe8

    invoke-virtual {p0, p1}, Lu2/Q;->c0(I)V

    invoke-static {}, LQ6/G0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LE3/k;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, LE3/k;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final ensureMediaEditorUseful$lambda$21$lambda$20(LQ6/G0;)V
    .locals 2

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140b31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe8

    invoke-interface {p0, v1, v0}, LQ6/G0;->g6(ILjava/lang/String;)V

    return-void
.end method

.method private static synthetic getMCaptureDeviceState$annotations()V
    .locals 0

    return-void
.end method

.method private final gotoEditorNew()V
    .locals 3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-class v1, Lu2/x;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LQu/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LQu/a;-><init>(Ljava/lang/Object;I)V

    new-instance p0, LF1/T0;

    invoke-direct {p0, v1, v2}, LF1/T0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final gotoEditorNew$lambda$28(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;Lu2/x;)LPu/A;
    .locals 12

    const-string v0, "extra"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe8

    invoke-virtual {p1, v1}, Lu2/x;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ll9/b$a;->a(Landroid/content/Context;Ljava/lang/String;)Ll9/b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ll9/b;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.miui.mediaeditor"

    const-string v4, "com.miui.gallery.editor.photo.app.PhotoEditor"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "loadType"

    const-string v3, "certificatesPhoto"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Ll9/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lww/k;->n(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v3, "id_photo_size_name"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    iget-object v3, p1, Ll9/b;->d:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "id_photo_width"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    iget-object v3, p1, Ll9/b;->e:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "id_photo_height"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    iget-object v3, p1, Ll9/b;->f:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Ll9/b;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id_photo_size_unit"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v3, p1, Ll9/b;->g:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "id_photo_capacity_min"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    iget-object v3, p1, Ll9/b;->h:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "id_photo_capacity_max"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    iget-object v3, p1, Ll9/b;->i:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "id_photo_quality"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getTAG()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Ll9/a;->a:Ljava/lang/String;

    iget-object v5, p1, Ll9/b;->d:Ljava/lang/Integer;

    iget-object v6, p1, Ll9/b;->e:Ljava/lang/Integer;

    invoke-virtual {p1}, Ll9/b;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Ll9/b;->g:Ljava/lang/Integer;

    iget-object v9, p1, Ll9/b;->h:Ljava/lang/Integer;

    iget-object p1, p1, Ll9/b;->i:Ljava/lang/Integer;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "gotoEditorNew: id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", sizeId="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unit="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileSizeMin="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileSizeMax="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dpi="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object p1

    const v1, 0x8c3a

    invoke-static {p1, v0, v1}, LDf/d;->q(Landroid/app/Activity;Landroid/content/Intent;I)Z

    invoke-direct {p0}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->hideCaptureReview()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.android.camera.ActivityBase"

    invoke-static {p0, p1}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/camera/a;

    sget-object p1, LOh/c;->o:LOh/c;

    invoke-virtual {p0, p1}, Lcom/android/camera/a;->G2(LOh/c;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method private static final gotoEditorNew$lambda$29(Lev/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final hideCaptureReview()V
    .locals 3

    invoke-static {}, LQ6/j0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LRp/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LRp/c;-><init>(Ljava/lang/Object;I)V

    new-instance p0, LH4/v;

    invoke-direct {p0, v1, v2}, LH4/v;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final hideCaptureReview$lambda$18(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/j0;)LPu/A;
    .locals 3

    const-string v0, "intentDoneProtocol"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LHu/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, LHu/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method private static final hideCaptureReview$lambda$18$lambda$17(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/j0;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mKeepCoverView:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    invoke-interface {p1}, LQ6/j0;->c()V

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LS3/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LS3/c;-><init>(I)V

    new-instance v2, LG4/a;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, LG4/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lj9/a;->Z()Z

    move-result p1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->resumePreview()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    const-string/jumbo v0, "sCameraSetupScheduler"

    invoke-static {p1, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LF1/T1;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, LF1/T1;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :goto_0
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LH5/d;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LH5/d;-><init>(I)V

    new-instance v0, LS3/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LS3/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final hideCaptureReview$lambda$18$lambda$17$lambda$12(LQ6/d;)LPu/A;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/d;->xe(Z)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method private static final hideCaptureReview$lambda$18$lambda$17$lambda$13(Lev/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final hideCaptureReview$lambda$18$lambda$17$lambda$14(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->startPreview()V

    return-void
.end method

.method private static final hideCaptureReview$lambda$18$lambda$17$lambda$15(LQ6/n1;)LPu/A;
    .locals 1

    const-string v0, "p"

    invoke-static {p0, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xb26    # 4.0E-42f

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-interface {p0, v0}, LQ6/n1;->T0([I)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method private static final hideCaptureReview$lambda$18$lambda$17$lambda$16(Lev/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final hideCaptureReview$lambda$19(Lev/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onProcessorJpegFinish$lambda$2(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LRh/r;LQ6/j0;)LPu/A;
    .locals 3

    const-string v0, "intentDoneProtocol"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LS3/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1, p2}, LS3/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method private static final onProcessorJpegFinish$lambda$2$lambda$1(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LRh/r;LQ6/j0;)V
    .locals 12

    invoke-direct {p0}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->showCaptureReview()V

    iget p0, p0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->mCapturedDisplayRotation:I

    rsub-int p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    iget-object v0, p1, LRh/r;->d:LRh/f;

    iget v0, v0, LRh/f;->f:I

    rsub-int v0, v0, 0x168

    iget-object v1, p1, LRh/r;->a:LRh/z;

    iget v2, v1, LRh/z;->c:I

    invoke-static {}, LK2/b;->W()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p0, v0

    add-int/2addr v2, p0

    :goto_0
    iget-object p0, v1, LRh/z;->i:[B

    iget-object p1, p1, LRh/r;->g:LRh/s;

    iget-object v0, p1, LRh/s;->s:Landroid/util/Size;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p1, p1, LRh/s;->s:Landroid/util/Size;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v1, v0, p1}, Lh4/b;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length p1, p0

    invoke-static {p0, v4, p1, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    rem-int/lit16 v2, v2, 0x168

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {v10, p0, p1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :try_start_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v5, p0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x0

    :catch_0
    :cond_4
    :goto_2
    invoke-interface {p2, v5}, LQ6/j0;->V0(Landroid/graphics/Bitmap;)V

    invoke-interface {p2}, LQ6/j0;->g()V

    invoke-static {}, LQ6/M;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LB3/b;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, LB3/b;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final onProcessorJpegFinish$lambda$2$lambda$1$lambda$0(LQ6/M;)V
    .locals 1

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    const/16 v0, 0xb26    # 4.0E-42f

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-interface {p0, v0}, LQ6/M;->bm([I)V

    return-void
.end method

.method private static final onProcessorJpegFinish$lambda$3(Lev/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onProcessorJpegFinish$lambda$5(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V
    .locals 3

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LL9/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LL9/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final onProcessorJpegFinish$lambda$5$lambda$4(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/d;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lv2/D0;->P:Z

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onProcessorJpegFinish: showOrHideLoadingProgress"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v1}, LQ6/d;->Ro(Z)V

    return-void
.end method

.method private static final prepareNormalCapture$lambda$7(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V
    .locals 3

    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v0

    invoke-virtual {v0}, Ls4/e;->a()I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->mCaptureDeviceState:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/U0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LF1/U0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final prepareNormalCapture$lambda$7$lambda$6(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/d;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lv2/D0;->P:Z

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getTAG()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "onCaptureStart: showOrHideLoadingProgress"

    invoke-static {p0, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v1}, LQ6/d;->Ro(Z)V

    return-void
.end method

.method private final showCaptureReview()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu6/q;->a()V

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/m;->P()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->pausePreview()V

    :cond_1
    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LNo/j;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LNo/j;-><init>(I)V

    new-instance v2, LL9/o;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, LL9/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    const-string/jumbo v1, "sMainThreadScheduler"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LGs/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LGs/d;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method private static final showCaptureReview$lambda$11(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V
    .locals 3

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LE4/f;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LE4/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final showCaptureReview$lambda$11$lambda$10(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;LQ6/d;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lv2/D0;->P:Z

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onProcessorJpegFinish: showOrHideLoadingProgress"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v1}, LQ6/d;->Ro(Z)V

    return-void
.end method

.method private static final showCaptureReview$lambda$8(LQ6/d;)LPu/A;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/d;->xe(Z)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method private static final showCaptureReview$lambda$9(Lev/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final trackSaveAction(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo p0, "save"

    goto :goto_0

    :cond_0
    const-string p0, "cancel"

    :goto_0
    new-instance p1, Lgq/h;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_common"

    iput-object v0, p1, Lgq/h;->a:Ljava/lang/String;

    new-instance v0, Lgq/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v0, p1, Lgq/h;->b:Lgq/f;

    const-string v0, "attr_feature_name"

    const-string v1, "id_photo_is_saved_click"

    invoke-virtual {p1, v1, v0}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr_value"

    const-string v1, "attr_trigger_mode"

    const-string v2, "click"

    invoke-static {p1, v0, p0, v1, v2}, LMv/a;->b(Lgq/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/interceptor/base/a<",
            "*>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/a;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    invoke-static {p0}, Lj9/f;->Z4(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p0, Lr6/e;

    invoke-direct {p0}, Lr6/e;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic canMoveWhenProcessing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final ensureMediaEditorUseful()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getTAG()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ensureMediaEditorUseful: start."

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->mMediaEditorHelper:Lq3/d;

    if-nez v0, :cond_0

    new-instance v0, Lq3/d;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object v1

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lq3/d;-><init>(Landroidx/fragment/app/l;)V

    iput-object v0, p0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->mMediaEditorHelper:Lq3/d;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->mMediaEditorHelper:Lq3/d;

    if-eqz v0, :cond_1

    new-instance v1, LCs/P;

    invoke-direct {v1, p0}, LCs/P;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lq3/d;->b(Lq3/e;)V

    :cond_1
    return-void
.end method

.method public genCameraAction()Ll6/f;
    .locals 1

    new-instance v0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule$b;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule$b;-><init>(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V

    return-object v0
.end method

.method public getColorSpaceDescriptionInner()Lwu/a$k;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getTexP3DpyP3ColorSpaceDescription()Lwu/a$k;

    move-result-object p0

    const-string v0, "getTexP3DpyP3ColorSpaceDescription(...)"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getDismissPureBlurDelayTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bridge synthetic getSnapCondition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public getZoomManager()Lf9/a;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    if-nez v0, :cond_0

    new-instance v0, Lh9/p;

    invoke-direct {v0, p0}, Lh9/r;-><init>(Lcom/android/camera/module/r;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    const-string v0, "mZoomManager"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public handleCoverViewForNormalCapture()Z
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getTAG()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "handleCoverViewForNormalCapture"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mKeepCoverView:Z

    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    return v0
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

.method public bridge synthetic onActivityResult(Lcom/android/camera/module/X;IILandroid/content/Intent;)V
    .locals 0

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

.method public bridge synthetic onLiveShotVideoTakenFinished(Z)V
    .locals 0

    return-void
.end method

.method public onNewUriArrived(Landroid/net/Uri;ZLjava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getTAG()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNewUriArrived: title: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", isPreview: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", uri:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", path:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p4, :cond_1

    iput-object p1, p0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->uri:Landroid/net/Uri;

    :cond_1
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

.method public onProcessorJpegFinish(LRh/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRh/r<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "parallelTaskData"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LRh/r;->b:LRh/a;

    iget v0, v0, LRh/a;->g:I

    const/16 v1, 0xe8

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->mCaptureDeviceState:I

    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v1

    invoke-virtual {v1}, Ls4/e;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, LQ6/j0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LJ5/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, LJ5/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, LF1/I;

    const/4 v2, 0x2

    invoke-direct {p1, v1, v2}, LF1/I;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    const-string/jumbo v0, "sMainThreadScheduler"

    invoke-static {p1, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LFn/Y;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LFn/Y;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_0
    return-void
.end method

.method public prepareNormalCapture(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->prepareNormalCapture(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object p1

    check-cast p1, Lj6/a;

    iget p1, p1, Lj6/a;->h:I

    iput p1, p0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->mCapturedDisplayRotation:I

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance p2, LF1/R1;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, LF1/R1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->uri:Landroid/net/Uri;

    return-void
.end method

.method public supportEvOverlap()Z
    .locals 0

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Q6()Z

    move-result p0

    return p0
.end method

.method public trackModeCustomInfo(Lqh/g;)V
    .locals 8

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "M_ID_Photo_"

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

    new-instance v1, LY7/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lgq/h;->b(Lgq/e;)V

    invoke-virtual {v0, p1}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    iget v3, p1, Lqh/g;->a:I

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v4

    iget-object v5, p1, Lqh/g;->g:Lx4/s;

    iget-wide v6, p1, Lqh/g;->i:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/module/Camera2Module;->trackBeautyInfo(IZLx4/s;J)V

    return-void
.end method

.method public updateBeauty()V
    .locals 4

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->y0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->x()Lx4/s;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    new-instance v1, Lx4/s;

    invoke-direct {v1}, Lx4/s;-><init>()V

    invoke-interface {v0, v1}, Lj6/f;->h(Lx4/s;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->x()Lx4/s;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/data/data/j;->d0(Lx4/s;Lj9/e;I)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v1

    invoke-interface {v1}, Lj6/f;->x()Lx4/s;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateBeauty(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v1

    invoke-interface {v1}, Lj6/f;->x()Lx4/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj9/h0;->r(Lx4/s;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->x()Lx4/s;

    move-result-object v0

    invoke-virtual {v0}, Lx4/s;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsBeautyBodySlimOn:Z

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateFaceAgeAnalyze()V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mFaceAnim:Ln6/d;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p0

    invoke-interface {p0}, Lj6/f;->x()Lx4/s;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln6/d;->v(Lx4/s;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic updateColorSpace(Lwu/a$k;)V
    .locals 0

    return-void
.end method
