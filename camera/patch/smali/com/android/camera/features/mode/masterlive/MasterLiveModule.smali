.class public Lcom/android/camera/features/mode/masterlive/MasterLiveModule;
.super Lcom/android/camera/module/Camera2Module;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mode/masterlive/MasterLiveModule$j;,
        Lcom/android/camera/features/mode/masterlive/MasterLiveModule$k;
    }
.end annotation


# static fields
.field private static final AUTO_ZOOM_CAPTURE:I = 0x2

.field private static final AUTO_ZOOM_CAPTURE_BY_CAM_PROCESS:I = 0x4

.field private static final AUTO_ZOOM_IDLE:I = 0x0

.field private static final AUTO_ZOOM_RESET_AFTER_CAPTURE:I = 0x3

.field private static final AUTO_ZOOM_RESET_BEFORE_CAPTURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MasterLiveModule"

.field private static final ULTRA_PIXEL_CAPTURING:I = 0x5


# instance fields
.field private autoZoomAnimator:Landroid/animation/ValueAnimator;

.field private currentCaptureStatus:I

.field private lastSTUpdatedTimestamp:J

.field private mCountdownTimer:Lvr/n;

.field private mFirstYuv:[B

.field private mImageSaver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lk7/i;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAllImageReceived:Z

.field private mIsBeforeResetZoomCompleted:Z

.field private mIsCaptureZoomCompleted:Z

.field private mIsGetFirstImage:Z

.field private mIsMasterLiveSlowMotionOn:Z

.field private final mLiveShot:Lxm/o;

.field private mParallelTaskData:LRh/r;

.field private final mResetButtonRunnable:Ljava/lang/Runnable;

.field private volatile mSnapCondition:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->currentCaptureStatus:I

    new-instance v1, Lxm/o;

    invoke-direct {v1, p0}, Lxm/o;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    iput v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mSnapCondition:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lastSTUpdatedTimestamp:J

    new-instance v0, LD8/d;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LD8/d;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mResetButtonRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic Bq(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$startAutoZoom$15(LQ6/l1;)V

    return-void
.end method

.method public static synthetic Cq(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$onCaptureStart$4(LQ6/d;)V

    return-void
.end method

.method public static synthetic Dq()V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$onCaptureStart$5()V

    return-void
.end method

.method public static synthetic Eq(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$resetZoomRatioAfterRecording$10(FFF)V

    return-void
.end method

.method public static synthetic Fq(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$startMasterLiveFeatureZoom$7(FFF)V

    return-void
.end method

.method public static synthetic Gq(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$new$0(LQ6/d;)V

    return-void
.end method

.method public static synthetic Hq(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;FFFZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$resetZoomRatioBeforeRecording$13(FFFZ)V

    return-void
.end method

.method public static synthetic Iq(F)F
    .locals 1

    const v0, 0x3f6147ae    # 0.88f

    invoke-static {v0, p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$startAutoZoom$14(FF)F

    move-result p0

    return p0
.end method

.method public static synthetic Jq(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$resetZoomRatioAfterRecording$11(LQ6/d;)V

    return-void
.end method

.method public static synthetic Kq(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;JI)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$onCaptureStart$6(JI)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Lq(Landroid/util/Range;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$startAutoZoom$16(Landroid/util/Range;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic Mq()V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$resetZoomRatioAfterRecording$12()V

    return-void
.end method

.method public static synthetic Nq()V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$clearMasterLiveSlowMotionState$8()V

    return-void
.end method

.method public static synthetic Oq(LV6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$resetZoomRatioAfterRecording$9(LV6/d;)V

    return-void
.end method

.method public static synthetic Pq(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$onActionStop$3(LQ6/d;)V

    return-void
.end method

.method public static synthetic Qq(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$new$2()V

    return-void
.end method

.method public static synthetic Rq()V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lambda$new$1()V

    return-void
.end method

.method public static bridge synthetic Sq(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->autoZoomAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static bridge synthetic Tq(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->currentCaptureStatus:I

    return p0
.end method

.method public static bridge synthetic Uq(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lvr/n;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mCountdownTimer:Lvr/n;

    return-object p0
.end method

.method public static bridge synthetic Vq(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mFirstYuv:[B

    return-object p0
.end method

.method public static bridge synthetic Wq(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mImageSaver:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic Xq(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsGetFirstImage:Z

    return p0
.end method

.method public static bridge synthetic Yq(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lxm/o;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    return-object p0
.end method

.method public static bridge synthetic Zq(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->currentCaptureStatus:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsCaptureDownScene:Z

    return p1
.end method

.method public static synthetic access$1102(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsCaptureDownScene:Z

    return p1
.end method

.method public static synthetic access$1200(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)LQ6/j1;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)LF1/E3;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Ll6/b;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkMoreFrameCaptureLockAFAE()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    return p0
.end method

.method public static synthetic access$2000(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static bridge synthetic ar(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mFirstYuv:[B

    return-void
.end method

.method public static bridge synthetic br(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsAllImageReceived:Z

    return-void
.end method

.method private checkRunningConditionDisableBurst()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/data/data/E;->j0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->u0()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private clearMasterLiveSlowMotionState(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v0, LU3/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LU3/i;-><init>(I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    iget-object p1, p1, Lxm/o;->c:Lxm/a;

    if-eqz p1, :cond_2

    iget-object p2, p1, Lxm/a;->b:Lym/d;

    if-eqz p2, :cond_1

    new-instance v0, LAs/x;

    const/16 v1, 0xb

    invoke-direct {v0, p2, v1}, LAs/x;-><init>(Ljava/lang/Object;I)V

    iget-object p2, p2, Lym/c;->k:Lym/c$a;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p1, p1, Lxm/a;->c:Lym/a;

    if-eqz p1, :cond_2

    new-instance p2, LAs/x;

    const/16 v0, 0xb

    invoke-direct {p2, p1, v0}, LAs/x;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p1, Lym/c;->k:Lym/c$a;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsGetFirstImage:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsAllImageReceived:Z

    return-void
.end method

.method public static bridge synthetic cr(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsBeforeResetZoomCompleted:Z

    return-void
.end method

.method public static bridge synthetic dr(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsCaptureZoomCompleted:Z

    return-void
.end method

.method public static bridge synthetic er(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsGetFirstImage:Z

    return-void
.end method

.method public static bridge synthetic fr(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->clearMasterLiveSlowMotionState(ZZ)V

    return-void
.end method

.method private getMasterLiveResolution()I
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/data/data/j;->A(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/data/data/j;->O(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0xa

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lj9/e;->C()Lbn/a;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "CameraCapabilities"

    if-eqz v0, :cond_4

    iget v4, v0, Lbn/a;->b:I

    if-lez v4, :cond_4

    iget-object v0, v0, Lbn/a;->c:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbn/b;

    iget v6, v5, Lbn/b;->a:I

    if-ne v6, p0, :cond_2

    move-object v4, v5

    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    iget-object v0, v4, Lbn/b;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getMasterLiveResolution: scene="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", resolution="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_4
    const-string p0, "getMasterLiveResolution: using default QUALITY_4KDCI"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private getRawCallbackTypeForBackCamera()I
    .locals 6

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-nez v0, :cond_3

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v3, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->r5()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->F7()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LJe/c;->m()I

    move-result v0

    const/16 v3, 0x8

    const-string v4, "MasterLiveModule"

    if-ne v3, v0, :cond_0

    const-string v0, "getRawCallbackTypeForBackCamera:RAW_CALLBACK_RAW_ALGO_HIDL_SE"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x20

    :cond_0
    const/16 v3, 0x40

    if-ne v3, v0, :cond_1

    const-string v0, "getRawCallbackTypeForBackCamera:QCOM_RAW_CALLBACK_SUPERNIGHT"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    :cond_1
    if-ne v1, v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    invoke-static {p0}, Lj9/f;->J1(Lj9/e;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "mivi raw super night is not enabled in capture mode"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->isMultipleRawHdrSupported()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->Z()V

    return v2
.end method

.method private getRawCallbackTypeForFrontCamera()I
    .locals 3

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->R()V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    invoke-static {p0}, Lj9/f;->G1(Lj9/e;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object p0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->F7()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, LJe/c;->m()I

    move-result p0

    const/16 v2, 0x8

    if-ne v2, p0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "MasterLiveModule"

    const-string v1, "getRawCallbackTypeForFrontCamera \uff1aRAW_CALLBACK_RAW_ALGO_HIDL_SE"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p0, 0x20

    return p0

    :cond_0
    invoke-virtual {v0}, LJe/c;->k0()V

    return p0

    :cond_1
    return v1
.end method

.method public static bridge synthetic gr(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;[BJII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->saveFirstFrame2Image([BJII)V

    return-void
.end method

.method private static synthetic lambda$clearMasterLiveSlowMotionState$8()V
    .locals 3

    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LD8/h;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LD8/h;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$new$0(LQ6/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/d;->Ro(Z)V

    return-void
.end method

.method private static synthetic lambda$new$1()V
    .locals 3

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/i;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, LEs/i;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/data/data/E;->z0(Z)V

    iput v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->currentCaptureStatus:I

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v0, LT9/t;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LT9/t;-><init>(I)V

    invoke-static {p0, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method private static synthetic lambda$onActionStop$3(LQ6/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/d;->Ro(Z)V

    return-void
.end method

.method private static synthetic lambda$onCaptureStart$4(LQ6/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/d;->Ro(Z)V

    return-void
.end method

.method private static synthetic lambda$onCaptureStart$5()V
    .locals 3

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/K3;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LF1/K3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onCaptureStart$6(JI)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mResetButtonRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1f4

    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    const-wide/16 p2, 0x64

    goto :goto_0

    :cond_0
    sub-long/2addr p2, v0

    :goto_0
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$resetZoomRatioAfterRecording$10(FFF)V
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->startAutoZoom(FFFIZ)V

    return-void
.end method

.method private static synthetic lambda$resetZoomRatioAfterRecording$11(LQ6/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/d;->Ro(Z)V

    return-void
.end method

.method private static synthetic lambda$resetZoomRatioAfterRecording$12()V
    .locals 3

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH4/z;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, LH4/z;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LD8/h;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LD8/h;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$resetZoomRatioAfterRecording$9(LV6/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/data/data/m;->b1(F)V

    invoke-interface {p0}, LV6/d;->P()V

    return-void
.end method

.method private synthetic lambda$resetZoomRatioBeforeRecording$13(FFFZ)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->startAutoZoom(FFFIZ)V

    return-void
.end method

.method private static synthetic lambda$startAutoZoom$14(FF)F
    .locals 2

    cmpl-float p0, p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez p0, :cond_0

    return v0

    :cond_0
    sub-float/2addr v0, p1

    float-to-double p0, v0

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method private static synthetic lambda$startAutoZoom$15(LQ6/l1;)V
    .locals 1

    const/16 v0, 0x8

    invoke-interface {p0, v0}, LQ6/l1;->K7(I)V

    return-void
.end method

.method private static synthetic lambda$startAutoZoom$16(Landroid/util/Range;ILandroid/animation/ValueAnimator;)V
    .locals 3

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/o;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, LEs/o;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p2, v0, p0}, LPq/b;->o(FFF)F

    move-result p0

    invoke-static {}, LQ6/B0;->b()LQ6/B0;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p0, p1}, LQ6/B0;->F4(FI)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startMasterLiveFeatureZoom$7(FFF)V
    .locals 6

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->startAutoZoom(FFFIZ)V

    return-void
.end method

.method private declared-synchronized saveFirstFrame2Image([BJII)V
    .locals 8

    const-string/jumbo v0, "savePhoto title "

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/data/data/j;->O0(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "MasterLiveModule"

    const-string/jumbo p2, "save condition not ready"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mParallelTaskData:LRh/r;

    if-nez v1, :cond_1

    const-string p1, "MasterLiveModule"

    const-string p2, "mParallelTaskData is null"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/android/camera/data/data/j;->t()LF1/g3;

    move-result-object v1

    iget v1, v1, LF1/g3;->a:I

    invoke-static {p4, p5, v1, p1}, LQg/f;->f(III[B)[B

    move-result-object p1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mFirstYuv:[B

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mParallelTaskData:LRh/r;

    iget-object v3, v3, LRh/r;->k:LRh/A;

    iget-object v3, v3, LRh/A;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lav/j;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string v3, "MasterLiveModule"

    array-length v4, p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", length "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mParallelTaskData:LRh/r;

    iget-object v3, v0, LRh/r;->a:LRh/z;

    iget v4, v3, LRh/z;->d:I

    iget v5, v3, LRh/z;->c:I

    add-int v6, v4, v5

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    move v7, p5

    move p5, p4

    move p4, v7

    :goto_0
    iput-wide p2, v3, LRh/z;->f:J

    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p4, p5}, Landroid/util/Size;-><init>(II)V

    iget-object p3, v0, LRh/r;->g:LRh/s;

    iput-object p2, p3, LRh/s;->s:Landroid/util/Size;

    iget-object p2, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mParallelTaskData:LRh/r;

    iget-object p3, p2, LRh/r;->a:LRh/z;

    iput v5, p3, LRh/z;->c:I

    iget-object v0, p2, LRh/r;->l:LRh/C;

    iput v4, v0, LRh/C;->l:I

    iget-object v0, p2, LRh/r;->k:LRh/A;

    iput-object v2, v0, LRh/A;->j:Ljava/lang/String;

    iput-object v1, v0, LRh/A;->k:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, LRh/A;->m:Z

    iput-object p1, p3, LRh/z;->i:[B

    iput v4, p3, LRh/z;->c:I

    iput p4, p3, LRh/z;->a:I

    iput p5, p3, LRh/z;->b:I

    iput v4, p3, LRh/z;->d:I

    iget-object p1, p2, LRh/r;->b:LRh/a;

    iput-boolean v1, p1, LRh/a;->i:Z

    new-instance p1, Lk7/l;

    invoke-direct {p1, p2}, Lk7/L;-><init>(LRh/r;)V

    iget-object p2, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mImageSaver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mImageSaver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lk7/A;

    invoke-virtual {p1, p2, p3}, Lk7/L;->q(Landroid/content/Context;Lk7/A;)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    move p2, v1

    iget-object v1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mParallelTaskData:LRh/r;

    new-instance v2, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$c;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$c;-><init>(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;Lk7/l;)V

    invoke-static {}, Lcom/android/camera/data/data/j;->L0()Z

    move-result p1

    xor-int/lit8 v4, p1, 0x1

    invoke-direct {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getMasterLiveResolution()I

    move-result v5

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lxm/o;->R4(LRh/r;Lk7/N;LU3/h;ZI)V

    invoke-direct {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->trackInMasterLiveSlowMotion()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private startMasterLiveFeatureZoom(Z)V
    .locals 7

    invoke-static {}, Lcom/android/camera/data/data/j;->L0()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/d0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/d0;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/data/data/j;->A(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lv2/d0;->m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/data/data/j;->O0(I)Z

    move-result p1

    const/high16 v0, 0x40400000    # 3.0f

    if-eqz p1, :cond_0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/data/data/j;->N0(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/data/data/j;->M0(I)Z

    goto :goto_0

    :goto_1
    invoke-static {}, Lvr/Z;->c()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v0, LU3/j;

    invoke-direct {v0, p0, v2, v3, v4}, LU3/j;-><init>(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;FFF)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void

    :cond_2
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->startAutoZoom(FFFIZ)V

    :cond_3
    return-void
.end method

.method private trackInMasterLiveSlowMotion()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->x()Lx4/s;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-object v0, v0, Lj6/a;->q:Landroid/location/Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget v5, v0, Ll6/b;->b:I

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->U()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v2, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/module/r;->trackGeneralInfo(ZLx4/s;ZILjava/lang/Boolean;)V

    new-instance p0, Lqh/g;

    invoke-direct {p0}, Lqh/g;-><init>()V

    invoke-virtual {v1}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-object v0, v0, Lj6/a;->q:Landroid/location/Location;

    iget-object v0, v1, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    iget v0, v0, Ll6/z;->j:I

    iput v0, p0, Lqh/g;->e:I

    invoke-virtual {v1}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/m;->i0(I)Z

    move-result v0

    iput-boolean v0, p0, Lqh/g;->f:Z

    invoke-virtual {v1}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->x()Lx4/s;

    move-result-object v0

    iput-object v0, p0, Lqh/g;->g:Lx4/s;

    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->getWatermarkItem()LN1/n;

    move-result-object v0

    iput-object v0, p0, Lqh/g;->j:LN1/n;

    invoke-virtual {v1}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getJpegRotation()I

    move-result v0

    iput v0, p0, Lqh/g;->k:I

    invoke-virtual {v1}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    iput v0, p0, Lqh/g;->l:I

    invoke-virtual {v1}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    iput-boolean v0, p0, Lqh/g;->m:Z

    invoke-virtual {v1}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->B()I

    move-result v0

    iput v0, p0, Lqh/g;->n:I

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/effect/EffectController;->m()I

    move-result v0

    iput v0, p0, Lqh/g;->o:I

    invoke-virtual {v1, p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->trackModeCustomInfo(Lqh/g;)V

    return-void
.end method


# virtual methods
.method public animateCapture()V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/data/j;->L0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/camera/module/PhotoBase;->animateCapture()V

    return-void
.end method

.method public announceAccessAfterPictureTakenFinished(Z)V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/d0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/d0;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lv2/d0;->isSwitchOn(I)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->currentCaptureStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    move p1, v2

    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->announceAccessAfterPictureTakenFinished(Z)V

    return-void
.end method

.method public appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/a;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/a;)V

    new-instance v0, Lr6/W;

    iget-object p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    invoke-direct {v0, p0}, Lr6/W;-><init>(Lxm/e;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    return-void
.end method

.method public beforeGotoGallery()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/r;->beforeGotoGallery()V

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->m1()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->d0()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, LZh/b$c;->d:LZh/b$c;

    invoke-virtual {p0}, LZh/b$c;->a()V

    :cond_0
    return-void
.end method

.method public canMoveWhenProcessing()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public checkDisplayOrientation()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->checkDisplayOrientation()V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Li9/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li9/h;->e()V

    :cond_0
    return-void
.end method

.method public checkMultiCaptureAllReceived()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v0, p0, Ll6/t;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "updateNeedWaitAllReceived needWait: true"

    const-string v1, "MultiCaptureManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll6/t;->h:Z

    return-void
.end method

.method public consumePreference(I)Z
    .locals 4

    const/16 v0, 0x31

    const/4 v1, 0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x8e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x94

    if-eq p1, v0, :cond_2

    const/16 v0, 0x97

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9b

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->consumePreference(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->updateMasterLiveInResetZoom()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateLiteGalleryStatus()V

    return v1

    :cond_2
    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->g4()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mHdrColorReproduction:Ll6/e;

    invoke-virtual {p0}, Ll6/e;->a()V

    return v1

    :cond_3
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v0, Lr2/T;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/T;

    if-eqz p1, :cond_8

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->M()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-boolean v2, p1, Lr2/T;->a:Z

    const/4 v3, 0x0

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "on"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v1

    goto :goto_1

    :cond_6
    iget-boolean p0, p1, Lr2/T;->g:Z

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v0, v3}, Lj9/h0;->U(I)V

    :cond_8
    return v1

    :cond_9
    iget-object p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    invoke-virtual {p1}, Lxm/o;->x5()V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lj9/c0;

    invoke-direct {p1, v1}, Lj9/c0;-><init>(Z)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v1
.end method

.method public createCameraManager()Lj6/d;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/camera/module/E;

    .line 3
    invoke-direct {v0, p0}, Ll6/g;-><init>(Lcom/android/camera/module/Camera2Module;)V

    return-object v0
.end method

.method public bridge synthetic createCameraManager()Lj6/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->createCameraManager()Lj6/d;

    move-result-object p0

    return-object p0
.end method

.method public genCameraAction()Ll6/f;
    .locals 1

    new-instance v0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$j;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$j;-><init>(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)V

    return-object v0
.end method

.method public generatePhotoTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    iget-boolean v0, v0, Lxm/o;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MV"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->generatePhotoTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->generatePhotoTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureExposureTime()J
    .locals 2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lv2/E0;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/E0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lv2/E0;->b()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
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

.method public getFixTimeBackCamera()J
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportP2done"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lj9/f;->d0(Lj9/e;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->getFixTimeForBackSAT(Lj9/e;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getJpegRotation()I
    .locals 4

    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->getJpegRotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-boolean v1, v1, Lj9/i0;->D1:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    iget-object v2, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v2, Lj6/a;

    iget v2, v2, Lj6/a;->c:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, LQ6/j1;->Pm(IZ)I

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {p0, v0}, LQ6/j1;->Ok(I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getLiveShotManager()Lxm/o;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    return-object p0
.end method

.method public getLivephotoEisSurface()Landroid/view/Surface;
    .locals 1

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->Z2(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    invoke-virtual {p0}, Lxm/o;->S0()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->getLivephotoEisSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getMixedQuickShotSupportOfBackCamera()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIn3OrMoreSatMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->W()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x9005

    iget v2, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    if-ne v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    invoke-virtual {v0}, Ll6/z;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v0, v0, Lj9/i0;->v1:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lj9/e;->Z()I

    move-result p0

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public getMixedQuickShotSupportOfFrontCamera()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lj9/e;->Z()I

    move-result p0

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getRawCallbackType()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-boolean v0, v0, Lj6/a;->i:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getRawCallbackTypeForBackCamera()I

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getRawCallbackTypeForFrontCamera()I

    move-result p0

    return p0
.end method

.method public getSnapCondition()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mSnapCondition:I

    return p0
.end method

.method public getSuperNightCbImpl()Ll6/L;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightCbImageImpl:Ll6/L;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$k;

    invoke-direct {v0, p0}, Ll6/L;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightCbImageImpl:Ll6/L;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightCbImageImpl:Ll6/L;

    return-object p0
.end method

.method public getTagSupportModeBackCamera()Z
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportEnableHighQualityQuickShotByTag"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj9/e;->Z()I

    move-result p0

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIn3OrMoreSatMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->W()Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x9005

    iget v4, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v1}, LF1/E3;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lj9/e;->Z()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v3

    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v1}, LF1/E3;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lj9/a;->t()Lj9/i0;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lj9/a;->t()Lj9/i0;

    move-result-object v1

    iget-object v1, v1, Lj9/i0;->P0:Lj1/a;

    invoke-virtual {p0}, Lj9/a;->t()Lj9/i0;

    move-result-object p0

    iget-object p0, p0, Lj9/i0;->P0:Lj1/a;

    invoke-virtual {p0}, Lj1/a;->b()Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lj9/e;->Z()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v3

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lj9/e;->Z()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v3

    :cond_9
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    iget-boolean p0, p0, Lj9/i0;->v1:Z

    if-eqz p0, :cond_b

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lj9/e;->Z()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_a

    return v2

    :cond_a
    return v3

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lj9/e;->Z()I

    move-result p0

    and-int/2addr p0, v2

    if-eqz p0, :cond_c

    return v2

    :cond_c
    return v3
.end method

.method public getTagSupportModeFrontCamera()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {p0}, LF1/E3;->a()Z

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj9/e;->Z()I

    move-result p0

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lj9/e;->Z()I

    move-result p0

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public getZoomManager()Lf9/a;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    if-nez v0, :cond_0

    new-instance v0, Lh9/s;

    invoke-direct {v0, p0}, Lh9/r;-><init>(Lcom/android/camera/module/r;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    return-object p0
.end method

.method public handleMessage(ILandroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->handleMessage(ILandroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public handlePreviewTouchEvent(ZLandroid/graphics/Point;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportOCR"
        type = 0x0
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->handlePreviewTouchEvent(ZLandroid/graphics/Point;)V

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->m1()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->d0()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, LWj/a;->h:LWj/a;

    invoke-virtual {p0, p2}, LWj/a;->c(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public initZoomMapControllerIfNeeded()V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSatPipSupported"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->K1()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Li9/h;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->d0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, LK2/b;->a0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v1

    check-cast v1, Lj6/a;

    iget-boolean v1, v1, Lj6/a;->i:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lj9/f;->U1(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    iget v1, v1, Lj9/a;->a:I

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->v()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lj9/e;->q0()Ljava/util/List;

    move-result-object v1

    new-instance v2, Li9/h;

    iget-object v3, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    iget v4, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v4}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v4

    invoke-direct {v2, v3, v4, v1, v0}, Li9/h;-><init>(Lcom/android/camera/module/X;ZLjava/util/List;Lj9/e;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Li9/h;

    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->b()Lp9/K;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Li9/h;

    invoke-interface {v0, p0}, Lp9/K;->i(Li9/h;)V

    :cond_0
    return-void
.end method

.method public isBlockSnap()Z
    .locals 5

    iget v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->currentCaptureStatus:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "MasterLiveModule"

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    const-string p0, "isBlockSnap: master live is in zoom after reset"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_0
    if-ne v0, v4, :cond_1

    const-string p0, "isBlockSnap: master live is in zoom before reset"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    const-string p0, "isBlockSnap: master live is in ultra pixel capture"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_2
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->isBlockSnap()Z

    move-result p0

    return p0
.end method

.method public isCaptureWillCostHugeMemory()Z
    .locals 6

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->V1()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->v0()I

    move-result v0

    sget v1, LQa/e;->b:I

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/z;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/z;

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lo6/a;

    iget-boolean v1, v1, Lo6/a;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LF1/v1;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, LF1/v1;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LH4/N;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, LH4/N;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->d0()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget-boolean v0, v0, Ll6/b;->c:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "MasterLiveModule"

    const-string v1, "isCaptureWillCostHugeMemory: true >>> hdr_ai_beauty_watermark_0 "

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isHugeMemCaptureScene()Z

    move-result p0

    return p0
.end method

.method public isCupCaptureEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->d0()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->R()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDoingAction()Z
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v2, Lv2/d0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/d0;

    iget-boolean v0, v0, Lv2/d0;->b:Z

    const/4 v3, 0x0

    const-string v4, "MasterLiveModule"

    if-eqz v0, :cond_1

    const-string p0, "isDoingAction: master live is in recording"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/d0;

    iget-boolean v0, v0, Lv2/d0;->c:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->currentCaptureStatus:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const-string p0, "isDoingAction: master live is in zoom reset"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public bridge synthetic isDolbyVisionPreview()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHeicPreferred()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "allowCapturingHeicImage"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-boolean v0, v0, Lj6/a;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v0, v0, Lv6/b;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, LJe/c;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/j;->F0()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    invoke-static {p0}, Lj9/f;->w1(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isMiLiveRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiSnapStarted()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-object p0, p0, Ll6/t;->e:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMultipleRawHdrSupported()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lj9/f;->z0(Lj9/e;)I

    move-result p0

    const-string v1, "isMultipleRawHdrSupported: hdrType = "

    invoke-static {p0, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "MasterLiveModule"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/4 v1, 0x4

    if-ne v1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isNeedBottomTip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsShutterLongClickRecording:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->isShooting()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->X3()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->isNeedBottomTip()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedDelaySound()Z
    .locals 4

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->z7()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean p0, p0, Ll6/t;->d:Z

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lv2/E0;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/E0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isNeedDelaySound: nightData="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_1

    const-string v2, "null"

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lv2/E0;->b:Lha/e;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MasterLiveModule"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_2

    iget-object v0, p0, Lv2/E0;->b:Lha/e;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lv2/E0;->g()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    return v1
.end method

.method public isNeedMute()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPendingMultiCapture()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean p0, p0, Ll6/t;->c:Z

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

.method public isQuickShotSupport()Z
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object v0

    iget-boolean v0, v0, Lj9/i0;->v1:Z

    if-nez v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->a()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    invoke-virtual {v0}, Ll6/z;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_2

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->m2()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "MACRO"

    invoke-static {p0, v0, v1, v2}, LMf/c;->i(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->m2()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "FRONT"

    invoke-static {p0, v0, v1, v2}, LMf/c;->i(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getZoomManager()Lf9/a;

    move-result-object v0

    invoke-interface {v0}, Lf9/a;->a1()F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getZoomManager()Lf9/a;

    move-result-object v0

    invoke-interface {v0}, Lf9/a;->a1()F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getZoomManager()Lf9/a;

    move-result-object v0

    invoke-interface {v0}, Lf9/a;->a1()F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v2

    if-lez v0, :cond_5

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->l0()Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->a1()F

    move-result p0

    float-to-double v4, p0

    cmpg-double p0, v4, v2

    if-gez p0, :cond_6

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->m2()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "ULTRA_WIDE"

    invoke-static {p0, v0, v1, v2}, LMf/c;->i(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_6
    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->m0()Z

    move-result p0

    return p0

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isRecordingPaused()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSatMultipleRawUseCase(Lj9/H1$a;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lj9/H1$a;->E:Z

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object p1

    iget p1, p1, Lj9/i0;->Z2:I

    if-eqz p1, :cond_1

    const/16 v3, 0xa

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object p1

    iget-boolean p1, p1, Lj9/i0;->v1:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lj9/a;->W()Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getRawCallbackType()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isSatMultipleRawUseCase: isSuperNightOn = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", rawCallback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "MasterLiveModule"

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    invoke-virtual {p0}, Ll6/z;->g()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_3
    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->Y()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p0, 0x20

    if-ne p0, v0, :cond_5

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, LJe/c;->Z()V

    invoke-virtual {p0}, LJe/c;->k0()V

    const/16 p0, 0x10

    if-ne p0, v0, :cond_5

    :goto_2
    return v1

    :cond_5
    return v2
.end method

.method public isSupportSunriseSunset()Z
    .locals 0

    const/4 p0, 0x1

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

    invoke-static {}, Lcom/android/camera/data/data/j;->L0()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isZoomSegmentEnabled()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lcom/android/camera/data/data/j;->L0()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isZslPreferred()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public judgeHighQualityQuickShotSupportByFeature()Z
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportEnableHighQualityQuickShotByTag"
        type = 0x2
    .end annotation

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_0

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->f2()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "MACRO"

    invoke-static {p0, v0, v1, v2}, LMf/c;->i(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->f2()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "FRONT"

    invoke-static {p0, v0, v1, v2}, LMf/c;->i(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getZoomManager()Lf9/a;

    move-result-object v0

    invoke-interface {v0}, Lf9/a;->a1()F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getZoomManager()Lf9/a;

    move-result-object v0

    invoke-interface {v0}, Lf9/a;->a1()F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getZoomManager()Lf9/a;

    move-result-object v0

    invoke-interface {v0}, Lf9/a;->a1()F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v2

    if-lez v0, :cond_3

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->f2()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "TELE"

    invoke-static {p0, v0, v1, v2}, LMf/c;->i(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->a1()F

    move-result p0

    float-to-double v4, p0

    cmpg-double p0, v4, v2

    if-gez p0, :cond_4

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->f2()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "ULTRA_WIDE"

    invoke-static {p0, v0, v1, v2}, LMf/c;->i(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->T()Z

    move-result p0

    return p0
.end method

.method public needASD()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needMixQuickShot()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isMfAutoMfnrSupported"
        type = 0x0
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    invoke-virtual {p0}, Ll6/f;->L()Z

    move-result p0

    return p0
.end method

.method public needQuickShot()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFastShutterCallbackSupported"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->needBlockQuickShot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-boolean v0, v0, Lj6/a;->i:Z

    if-nez v0, :cond_3

    invoke-static {}, LEv/G;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->enablePreviewAsThumbnail()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getZoomManager()Lf9/a;

    move-result-object v0

    invoke-interface {v0}, Lf9/a;->a1()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->v1(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->W()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/m;->S()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->x()Lx4/s;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p0

    invoke-interface {p0}, Lj6/f;->x()Lx4/s;

    move-result-object p0

    invoke-virtual {p0}, Lx4/s;->e()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    const-string v0, "needQuickShot bRet:"

    invoke-static {v0, p0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MasterLiveModule"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public onActionStop()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/r;->mInStartingFocusRecording:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/module/r;->mInStartingFocusRecording:Z

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v2, Lv2/d0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/d0;

    iget-boolean v0, v0, Lv2/d0;->b:Z

    if-nez v0, :cond_2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/d0;

    iget-boolean v0, v0, Lv2/d0;->c:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->autoZoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsAllImageReceived:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsBeforeResetZoomCompleted:Z

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->K0()Lj9/h0;

    move-result-object v2

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iput v1, v2, Lj9/i0;->M3:I

    const/16 v1, 0x9b

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v1

    const-class v2, Lw7/c;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw7/c;

    invoke-virtual {v1}, Lw7/c;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v2}, LQ6/j1;->m7()V

    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v2, v2, Ll6/t;->d:Z

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/module/Camera2Module;->onBurstPictureTakenFinished(ZJ)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->doLaterReleaseIfNeed()V

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/l;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LEs/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LD8/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LD8/h;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    return-void
.end method

.method public onActive()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->onActive()V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->createFaceBeautyAnimatorManager()V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->socketController:LKp/m;

    invoke-virtual {v0}, LKp/m;->r()V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->socketController:LKp/m;

    invoke-virtual {v0}, LKp/m;->u()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mImageSaver:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    new-instance v1, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$a;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$a;-><init>(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)V

    iput-object v1, v0, Lxm/o;->e0:Lcom/android/camera/features/mode/masterlive/MasterLiveModule$a;

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->O0(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsMasterLiveSlowMotionOn:Z

    if-eqz v0, :cond_0

    const-string p0, "red_carpet_zoom"

    const/4 v0, 0x1

    invoke-static {v0, p0}, LF1/u4;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onActivityResult(Lcom/android/camera/module/X;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCaptureStart(LRh/r;Lj9/p0;)LRh/r;
    .locals 10

    iget-object v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    iget-boolean v0, v0, Lxm/o;->h:Z

    iget-object v1, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v1, Lj6/a;

    iget v1, v1, Lj6/a;->c:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    move v1, v3

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->D()I

    move-result v2

    iget-object v4, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    iget-object v5, p1, LRh/r;->b:LRh/a;

    iget v5, v5, LRh/a;->f:I

    invoke-virtual {v4, v5}, Lxm/o;->b5(I)V

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->onCaptureStart(LRh/r;Lj9/p0;)LRh/r;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mParallelTaskData:LRh/r;

    iget-object p2, p2, LRh/r;->a:LRh/z;

    iput v1, p2, LRh/z;->c:I

    iput v2, p2, LRh/z;->d:I

    invoke-direct {p0, v0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->startMasterLiveFeatureZoom(Z)V

    iget p2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p2}, Lcom/android/camera/data/data/j;->O0(I)Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/j;->L0()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    iget-object v5, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mParallelTaskData:LRh/r;

    new-instance v6, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$b;

    invoke-direct {v6, p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$b;-><init>(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)V

    invoke-static {}, Lcom/android/camera/data/data/j;->L0()Z

    move-result p2

    xor-int/lit8 v8, p2, 0x1

    invoke-direct {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getMasterLiveResolution()I

    move-result v9

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lxm/o;->R4(LRh/r;Lk7/N;LU3/h;ZI)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mResetButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {v3}, LS8/d;->b(Z)LGg/P;

    move-result-object p2

    invoke-virtual {p2}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object p2

    iget-object v1, p1, LRh/r;->l:LRh/C;

    iget-boolean v1, v1, LRh/C;->e:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/xiaomi/cam/watermark/a;->e0()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/android/camera/data/data/E;->z0(Z)V

    const/4 p2, 0x5

    iput p2, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->currentCaptureStatus:I

    sget-object p2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, LU3/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LU3/g;-><init>(I)V

    invoke-static {p2, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    iget-object v4, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mParallelTaskData:LRh/r;

    new-instance v6, LU3/h;

    invoke-direct {v6, p0, v1, v2}, LU3/h;-><init>(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;J)V

    invoke-static {}, Lcom/android/camera/data/data/j;->L0()Z

    move-result p2

    xor-int/lit8 v7, p2, 0x1

    invoke-direct {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->getMasterLiveResolution()I

    move-result v8

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lxm/o;->R4(LRh/r;Lk7/N;LU3/h;ZI)V

    :cond_3
    :goto_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p2

    const-class v0, Lr2/T;

    invoke-virtual {p2, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr2/T;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p2, Lr2/T;->f:I

    int-to-float p2, p2

    iget-object p1, p1, LRh/r;->g:LRh/s;

    iput p2, p1, LRh/s;->n:F

    iget-object p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mParallelTaskData:LRh/r;

    return-object p0
.end method

.method public onDrawBlackFrameChanged(Z)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportOCR"
        type = 0x0
    .end annotation

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->m1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LJe/c;->m1()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/w;->d0()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    sget-object p0, LZh/b$c;->e:LZh/b$c;

    invoke-virtual {p0}, LZh/b$c;->a()V

    return-void

    :cond_1
    sget-object p0, LZh/b$c;->e:LZh/b$c;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LZh/b$c;->c(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFocusReset()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->onFocusReset()V

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->m1()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->d0()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, LWj/a;->h:LWj/a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LWj/a;->c(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public onInactive()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lxm/o;->g5(Z)V

    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->onInactive()V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->socketController:LKp/m;

    invoke-virtual {v0}, LKp/m;->t()V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->socketController:LKp/m;

    invoke-virtual {v0}, LKp/m;->s()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mFirstYuv:[B

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$d;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$d;-><init>(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    iget-boolean p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsMasterLiveSlowMotionOn:Z

    if-eqz p0, :cond_0

    const-string p0, "red_carpet_zoom"

    const/4 v0, 0x0

    invoke-static {v0, p0}, LF1/u4;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLayoutModeChanged(LZ5/h;LZ5/h;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onLayoutModeChanged(LZ5/h;LZ5/h;)V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Li9/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li9/h;->c()V

    :cond_0
    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->m1()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/w;->d0()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, LK2/b;->R()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, LK2/b;->M()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, LK2/b;->N()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, LZh/b$c;->f:LZh/b$c;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LZh/b$c;->c(Z)V

    return-void

    :cond_2
    :goto_0
    sget-object p0, LZh/b$c;->f:LZh/b$c;

    invoke-virtual {p0}, LZh/b$c;->a()V

    :cond_3
    return-void
.end method

.method public bridge synthetic onLiveShotVideoTakenFinished(Z)V
    .locals 0

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

.method public onRenderEngineCreate()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/module/r;->onRenderEngineCreate()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Ltu/d;->h:Ltu/d;

    invoke-interface {v0, v1}, Lru/k;->E(Ltu/d;)LCu/x;

    sget-object v1, Ltu/d;->i:Ltu/d;

    invoke-interface {v0, v1}, Lru/k;->E(Ltu/d;)LCu/x;

    sget-object v1, Ltu/d;->j:Ltu/d;

    invoke-interface {v0, v1}, Lru/k;->E(Ltu/d;)LCu/x;

    sget-object v1, Ltu/d;->f:Ltu/d;

    invoke-interface {v0, v1}, Lru/k;->E(Ltu/d;)LCu/x;

    sget-object v1, Ltu/d;->a0:Ltu/d;

    invoke-interface {v0, v1}, Lru/k;->E(Ltu/d;)LCu/x;

    sget-object v1, Ltu/d;->k:Ltu/d;

    invoke-interface {v0, v1}, Lru/k;->E(Ltu/d;)LCu/x;

    sget-object v2, Ltu/d;->l:Ltu/d;

    invoke-interface {v0, v2}, Lru/k;->E(Ltu/d;)LCu/x;

    sget-object v3, Ltu/d;->o:Ltu/d;

    invoke-interface {v0, v3}, Lru/k;->E(Ltu/d;)LCu/x;

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lj6/j;->o0()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p0, v3, :cond_1

    invoke-interface {v0, v1, v4}, Lru/k;->o(Ltu/d;Z)V

    invoke-interface {v0, v2, v4}, Lru/k;->o(Ltu/d;Z)V

    :cond_1
    const-string v0, "onRenderEngineCreate camId:"

    invoke-static {p0, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "MasterLiveModule"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onRenderEngineDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/r;->onRenderEngineDestroy()V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-object v0, Ltu/d;->f:Ltu/d;

    invoke-interface {p0, v0}, Lru/k;->r(Ltu/d;)V

    sget-object v0, Ltu/d;->a0:Ltu/d;

    invoke-interface {p0, v0}, Lru/k;->r(Ltu/d;)V

    sget-object v0, Ltu/d;->h:Ltu/d;

    invoke-interface {p0, v0}, Lru/k;->r(Ltu/d;)V

    sget-object v0, Ltu/d;->i:Ltu/d;

    invoke-interface {p0, v0}, Lru/k;->r(Ltu/d;)V

    sget-object v0, Ltu/d;->j:Ltu/d;

    invoke-interface {p0, v0}, Lru/k;->r(Ltu/d;)V

    sget-object v0, Ltu/d;->k:Ltu/d;

    invoke-interface {p0, v0}, Lru/k;->r(Ltu/d;)V

    sget-object v0, Ltu/d;->l:Ltu/d;

    invoke-interface {p0, v0}, Lru/k;->r(Ltu/d;)V

    sget-object v0, Ltu/d;->o:Ltu/d;

    invoke-interface {p0, v0}, Lru/k;->r(Ltu/d;)V

    :cond_1
    return-void
.end method

.method public onSATMasterIdChanged(I)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "iNeedWaitBurstCapturePictureForLensSwitch"
        type = 0x0
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->onSATMasterIdChanged(I)V

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    invoke-virtual {p1}, LJe/c;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LJe/c;->K1()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->checkMultiCaptureAllReceived()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Lj3/b;)V
    .locals 13

    if-eqz p1, :cond_6

    iget v0, p1, Lj3/b;->a:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    move-object v0, p1

    check-cast v0, Lj3/e;

    invoke-static {}, LK2/e;->E()Z

    move-result v1

    const/high16 v2, -0x41000000    # -0.5f

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, LK2/j;->h()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v1

    check-cast v1, Lj6/a;

    iget v1, v1, Lj6/a;->h:I

    iget-object v6, v0, Lj3/e;->c:[F

    invoke-static {v6, v5, v4, v4, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v7, v0, Lj3/e;->c:[F

    int-to-float v9, v1

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v1, v0, Lj3/e;->c:[F

    invoke-static {v1, v5, v2, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    iget-boolean v1, v1, Lxm/o;->P:Z

    if-nez v1, :cond_4

    invoke-static {}, Lj9/f;->y1()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/camera/module/X;->getSurfaceTexture()LEu/a;

    move-result-object v6

    invoke-virtual {v6}, LEu/a;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Lcom/android/camera/module/X;->getSurfaceTexture()LEu/a;

    move-result-object v1

    iget-object v1, v1, LEu/a;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v6

    goto :goto_0

    :cond_2
    const-wide/16 v6, -0x1

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-ltz v1, :cond_3

    iget-wide v10, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lastSTUpdatedTimestamp:J

    sub-long v10, v6, v10

    cmp-long v1, v10, v8

    if-gtz v1, :cond_3

    const-string v1, "onSurfaceTextureUpdated timeStamp err timeStamp = "

    const-string v8, ", lastUpdatedTimestamp = "

    invoke-static {v6, v7, v1, v8}, LF1/r0;->h(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lastSTUpdatedTimestamp:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",gap = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lastSTUpdatedTimestamp:J

    invoke-static {v6, v7, v8, v9, v1}, LF1/T;->b(JJLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "MasterLiveModule"

    invoke-static {v7, v1, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v6, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lastSTUpdatedTimestamp:J

    const-wide/32 v8, 0x1f78a40

    add-long/2addr v6, v8

    :cond_3
    iget-object v1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    invoke-virtual {v1, v0, v6, v7}, Lxm/o;->T2(Lj3/e;J)V

    iput-wide v6, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->lastSTUpdatedTimestamp:J

    :cond_4
    invoke-static {}, LK2/e;->E()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, LK2/j;->h()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v1

    check-cast v1, Lj6/a;

    iget v1, v1, Lj6/a;->h:I

    iget-object v6, v0, Lj3/e;->c:[F

    invoke-static {v6, v5, v4, v4, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v7, v0, Lj3/e;->c:[F

    neg-int v1, v1

    int-to-float v9, v1

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, v0, Lj3/e;->c:[F

    invoke-static {v0, v5, v2, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_5
    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->onSurfaceTextureUpdated(Lj3/b;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onThumbnailClicked(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->onThumbnailClicked(Z)V

    return-void
.end method

.method public onTiltShiftSwitched(Z)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->onTiltShiftSwitched(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "circle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sget-object v4, Ltu/d;->k:Ltu/d;

    invoke-interface {p0, v4, v2}, Lru/k;->o(Ltu/d;Z)V

    const-string v2, "parallel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    move v3, v0

    :cond_1
    sget-object v1, Ltu/d;->l:Ltu/d;

    invoke-interface {p0, v1, v3}, Lru/k;->o(Ltu/d;Z)V

    :cond_2
    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->m1()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/android/camera/data/data/w;->d0()Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    sget-object p0, LZh/b$c;->c:LZh/b$c;

    invoke-virtual {p0}, LZh/b$c;->a()V

    return-void

    :cond_3
    sget-object p0, LZh/b$c;->c:LZh/b$c;

    invoke-virtual {p0, v0}, LZh/b$c;->c(Z)V

    :cond_4
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->onUserInteraction()V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->socketController:LKp/m;

    invoke-virtual {p0}, LKp/m;->v()V

    return-void
.end method

.method public onWaitingFocusFinished()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const-string v2, "MasterLiveModule"

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->isBlockSnap()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->b()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return v3

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/module/r;->mInStartingFocusRecording:Z

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/android/camera/module/r;->mInStartingFocusRecording:Z

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->H()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo p0, "video record check: sat fallback"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->onFocusSnapCanceled()V

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->H()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isDownCapturing()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, v0}, Lj6/j;->V0(Z)V

    const-string p0, "capture check: sat fallback"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1, v3}, Lj6/j;->V0(Z)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->S()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/Camera2Module;->startNormalCapture(I)Z

    move-result p0

    if-nez p0, :cond_6

    const-string/jumbo p0, "startNormalCapture failed"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_6
    return v0

    :cond_7
    :goto_1
    const-string p0, "onWaitingFocusFinished : Activity already paused, ignore!"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public prepareNormalCapture(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->prepareNormalCapture(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    if-eqz p0, :cond_1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->P()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LC4/x;

    const/16 p2, 0x13

    invoke-direct {p1, p2}, LC4/x;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetZoomRatioAfterRecording()Z
    .locals 10

    iget-boolean v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsAllImageReceived:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsCaptureZoomCompleted:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, LV6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LEs/j;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, LEs/j;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/d0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/d0;

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v3}, Lcom/android/camera/data/data/j;->A(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lv2/d0;->m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {}, LV6/d;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LE4/b;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, LE4/b;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const-string v3, "resetZoomRatioAfterRecording: lensType = "

    const-string v4, " zoomRange = "

    invoke-static {v3, v0, v4}, LP/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startZoomRatio = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " actualZoomRatio = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "MasterLiveModule"

    invoke-static {v4, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmpl-float v0, v5, v6

    if-eqz v0, :cond_2

    sub-float v0, v5, v6

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d199998    # 0.037499994f

    mul-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    add-float v7, v0, v1

    invoke-static {}, Lvr/Z;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, LU3/f;

    invoke-direct {v1, p0, v5, v6, v7}, LU3/f;-><init>(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;FFF)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return v3

    :cond_1
    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->startAutoZoom(FFFIZ)V

    return v3

    :cond_2
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v0, LJs/a;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, LJs/a;-><init>(I)V

    invoke-static {p0, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-static {v1}, Lcom/android/camera/data/data/E;->A0(Z)V

    invoke-static {v1}, Lcom/android/camera/data/data/E;->z0(Z)V

    :cond_3
    :goto_0
    return v1
.end method

.method public resetZoomRatioBeforeRecording(Z)Z
    .locals 10

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/d0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/d0;

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/data/data/j;->A(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lv2/d0;->m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {}, LV6/d;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LE4/b;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, LE4/b;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const-string v3, "resetZoomRatioBeforeRecording: lensType = "

    const-string v4, " zoomrange = "

    invoke-static {v3, v0, v4}, LP/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startZoomRatio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " actualZoomRatio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "MasterLiveModule"

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmpl-float v0, v5, v6

    if-eqz v0, :cond_1

    sub-float v0, v5, v6

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d199998    # 0.037499994f

    mul-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    add-float v7, v0, v1

    invoke-static {}, Lvr/Z;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v4, LU3/k;

    move v9, p1

    move v8, v7

    move v7, v6

    move v6, v5

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, LU3/k;-><init>(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;FFFZ)V

    invoke-static {v0, v4}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return v3

    :cond_0
    move-object v4, p0

    move v9, p1

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->startAutoZoom(FFFIZ)V

    return v3

    :cond_1
    return v2
.end method

.method public sensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    invoke-virtual {v0, p1}, Lxm/o;->x4(Landroid/hardware/SensorEvent;)V

    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->sensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method public setOrientationParameter()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->setOrientationParameter()V

    iget-object v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mLiveShot:Lxm/o;

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->c:I

    iget-object v0, v0, Lxm/o;->c:Lxm/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lxm/a;->n(I)V

    :cond_0
    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/Camera2Module;->shouldReleaseLater()Z

    move-result p0

    return p0
.end method

.method public startAutoZoom(FFFIZ)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->autoZoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->autoZoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    if-eq p4, v1, :cond_1

    if-ne p4, v2, :cond_2

    :cond_1
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v3}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    const-class v5, Lv2/d0;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/d0;

    iget v5, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v5}, Lcom/android/camera/data/data/j;->A(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lv2/d0;->p(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Range;

    move-result-object v3

    if-ne p4, v1, :cond_3

    const/16 v4, 0xd

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne p4, v4, :cond_4

    const/16 v4, 0xe

    goto :goto_0

    :cond_4
    const/16 v4, 0xc

    :goto_0
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    if-ne p4, v2, :cond_7

    iget v6, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v6}, Lcom/android/camera/data/data/j;->O0(I)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v5, LU3/d;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    goto :goto_2

    :cond_5
    iget v6, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v6}, Lcom/android/camera/data/data/j;->N0(I)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v6, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$f;

    invoke-direct {v6, v5}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$f;-><init>(Landroid/view/animation/PathInterpolator;)V

    :goto_1
    move-object v5, v6

    goto :goto_2

    :cond_6
    iget v6, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v6}, Lcom/android/camera/data/data/j;->M0(I)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_2

    :cond_7
    if-ne p4, v1, :cond_8

    const v5, 0x3f19999a    # 0.6f

    add-float/2addr v5, p3

    div-float/2addr p3, v5

    new-instance v6, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$g;

    invoke-direct {v6, p3}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$g;-><init>(F)V

    move p3, v5

    goto :goto_1

    :cond_8
    :goto_2
    new-array v2, v2, [F

    aput p1, v2, v0

    aput p2, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->autoZoomAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v2, "startAutoZoom(): zoomSpeed = "

    const-string v6, " ZoomRange = "

    const-string v7, ":"

    invoke-static {v2, p3, v6, p1, v7}, LF1/y3;->c(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " fromEvent = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "MasterLiveModule"

    invoke-static {v2, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->autoZoomAnimator:Landroid/animation/ValueAnimator;

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p3, v0

    float-to-long v6, p3

    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->autoZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->autoZoomAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, LU3/e;

    invoke-direct {p3, v3, v4}, LU3/e;-><init>(Landroid/util/Range;I)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v1}, Lcom/android/camera/data/data/E;->z0(Z)V

    iget-object p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->autoZoomAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$h;

    invoke-direct {p3, p0, p4, p2, p5}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$h;-><init>(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;IFZ)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->autoZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, LEp/i;->e(Landroid/animation/ValueAnimator;)V

    iget-object p0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->autoZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startCountdownAnimationOnly()V
    .locals 3

    new-instance v0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$i;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$i;-><init>(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)V

    const/4 v1, 0x3

    iput v1, v0, Lw7/a;->a:I

    new-instance v2, Lvr/n;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mCountdownTimer:Lvr/n;

    iput v1, v2, Lvr/n;->c:I

    const/4 p0, 0x1

    iput p0, v2, Lvr/n;->e:I

    invoke-virtual {v2, v0}, Lvr/n;->d(Lio/reactivex/u;)V

    return-void
.end method

.method public startTimerCapture(I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/data/j;->L0()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->currentCaptureStatus:I

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->resetZoomRatioBeforeRecording(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->startTimerCapture(I)V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/Camera2Module;->startTimerCapture(I)V

    return-void
.end method

.method public supportAnchorFrameAsThumbnail()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v1

    check-cast v1, Lj6/a;

    iget-boolean v1, v1, Lj6/a;->i:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-static {}, LOh/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lj9/f;->f2(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj9/e;->i()I

    move-result v1

    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->d0()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->d0()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x64

    invoke-static {v3, p0, v0}, Lj9/f;->c1(IILj9/e;)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {v2, v3, v0}, Lj9/f;->c1(IILj9/e;)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method public supportEdgeWideLDC()Z
    .locals 0

    const/4 p0, 0x1

    return p0
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

.method public supportMTKHDRReprocess()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportHDRReprocess"
        type = 0x0
    .end annotation

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->c2()V

    invoke-virtual {p0}, LJe/c;->w2()V

    const/4 p0, 0x0

    return p0
.end method

.method public supportMTKMFNRAlgo()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportMtkIspHidl"
        type = 0x0
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public supportMultiCaptureByRunningCondition()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->checkRunningConditionDisableBurst()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v2, v0, Ll6/t;->d:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Ll6/t;->c:Z

    if-nez v0, :cond_1

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v0, v0, Ll6/t;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/q;->updateSnapCondition(I)V

    return v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, LQ6/q;->updateSnapCondition(I)V

    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, LQ6/q;->updateSnapCondition(I)V

    return v1
.end method

.method public trackModeCustomInfo(Lqh/g;)V
    .locals 6

    invoke-static {}, Lcom/android/camera/data/data/j;->L0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "none"

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->O0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "red carpet zoom"

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "subject zoom"

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->M0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "manual zoom"

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/d0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/d0;

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/data/data/j;->A(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Lv2/d0;->m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v4, p0, v3

    const-string/jumbo v5, "x"

    invoke-static {v1, v4, v5}, LS1/h;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v4, p0, v2

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    cmpg-float p0, v4, p0

    if-gez p0, :cond_4

    move v2, v3

    :cond_4
    new-instance p0, Lgq/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "M_live_mov_"

    iput-object v3, p0, Lgq/h;->a:Ljava/lang/String;

    new-instance v3, Lgq/f;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v3, p0, Lgq/h;->b:Lgq/f;

    invoke-virtual {p0, p1}, Lgq/h;->a(Ljava/lang/Object;)V

    new-instance p1, Lf8/a;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "zoom in"

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "zoom out"

    :goto_1
    invoke-direct {p1, v0, v1, v2}, Lf8/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgq/h;->d()V

    return-void
.end method

.method public updateCamSensorResult(ZIJ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/r;->updateCamSensorResult(ZIJ)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/j;->L0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsBeforeResetZoomCompleted:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lj6/j;->V0(Z)V

    iput-boolean p2, p0, Lcom/android/camera/features/mode/masterlive/MasterLiveModule;->mIsBeforeResetZoomCompleted:Z

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$e;

    invoke-direct {p2, p0}, Lcom/android/camera/features/mode/masterlive/MasterLiveModule$e;-><init>(Lcom/android/camera/features/mode/masterlive/MasterLiveModule;)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public updateCinematicPhoto()V
    .locals 1

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    iput-boolean v0, p0, Lj9/i0;->z1:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/camera/effect/EffectController;->p:Z

    const/16 v0, 0x9

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/effect/EffectController;->R([I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic updateColorSpace(Lwu/a$k;)V
    .locals 0

    return-void
.end method

.method public updateEnablePreviewThumbnail(Z)V
    .locals 3

    invoke-static {}, LJe/c;->d0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/module/PhotoBase;->setEnabledPreviewThumbnail(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-string v2, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v2, v1}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/module/PhotoBase;->setEnabledPreviewThumbnail(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a8()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v0, v0, Lj9/i0;->k0:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/module/PhotoBase;->setEnabledPreviewThumbnail(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-boolean v0, v0, Lj6/a;->i:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/module/PhotoBase;->setEnabledPreviewThumbnail(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v0, v0, Lv6/b;->e:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget p1, p1, Ll6/t;->b:I

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->enablePreviewAsThumbnail()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/module/PhotoBase;->setEnabledPreviewThumbnail(Z)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->enabledPreviewThumbnail()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/camera/module/X;->Xi(Z)V

    :cond_6
    return-void
.end method

.method public updateEvValueForHdrColorReproduction(I)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportHighDynamicColorRepFromFilter"
        type = 0x2
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->g4()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mHdrColorReproduction:Ll6/e;

    iput p1, p0, Ll6/e;->b:I

    invoke-virtual {p0}, Ll6/e;->a()V

    :cond_0
    return-void
.end method

.method public updateMasterLiveInResetZoom()V
    .locals 3

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lj9/w;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lj9/w;-><init>(Lj9/h0;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
