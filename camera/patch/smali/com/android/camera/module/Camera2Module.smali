.class public abstract Lcom/android/camera/module/Camera2Module;
.super Lcom/xiaomi/camera/module/PhotoBase;
.source "SourceFile"

# interfaces
.implements Lip/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/Camera2Module$f;,
        Lcom/android/camera/module/Camera2Module$e;,
        Lcom/android/camera/module/Camera2Module$d;
    }
.end annotation


# static fields
.field private static final BLOCK_SNAP_TIMEOUT_MS:J = 0x1388L

.field private static final DEBUG_LUT:Z

.field private static final MOTOR_SOUND_PLAY_DELAY_TIME:I = 0x190

.field public static final PSI_STRESS_B2Y:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Camera2Module"


# instance fields
.field private isRemoteCapture:Z

.field private mAiCompositionInfo:Ljava/lang/String;

.field protected mAiSceneMgr:Ll6/b;

.field public mAlgorithmName:Ljava/lang/String;

.field private final mAnchorPreviewCb:Lj9/a$a;

.field private mApertures:[F

.field private mBlockSnapDfsReported:Z

.field private mBlockSnapStartTime:J

.field private mCacheImageDecoder:Lv6/a;

.field public mCameraAction:Ll6/f;

.field public mCaptureButtonStatus:Lqh/a;

.field private mDebugFaceInfos:Ljava/lang/String;

.field private mDelayTimeMessageSent:Z

.field public mDelayTimeReturned:Z

.field public mDirtDetection:Ll6/d;

.field public mEnableShot2Gallery:Z

.field public mFaceAnim:Ln6/d;

.field private mFixedShot2ShotTime:I

.field private mFocalLengths:[F

.field private mHHTDisabled:Z

.field private mHandGestureDecoderFactory:Lfi/d;

.field protected mHdrColorReproduction:Ll6/e;

.field public mHdrManager:Lo6/a;

.field private volatile mIsAiShutterOn:Z

.field protected mIsBeautyBodySlimOn:Z

.field protected volatile mIsCaptureDownScene:Z

.field private mIsHdrDegradeMFNREnabled:Z

.field private mIsHighQualityQuickShotBurstShot:Z

.field public mIsHighQualityQuickShotEnabled:Z

.field private mIsISORight4HWMFNR:Z

.field private mIsISORight4MFNRReplaceSR:Z

.field private mIsMfHdrQuickShotEnabled:Z

.field private mIsNeedWaitMtkQuickShotReturned:Z

.field private mIsQuickShotEnabled:Z

.field protected mIsShowLyingDirectHintStatus:I

.field public mIsShutterLongClickRecording:Z

.field public mKeepCoverView:Z

.field private mLastCaptureStartTime:J

.field public mLastCaptureTime:J

.field protected mLastFlashMode:Ljava/lang/String;

.field public mLightFilterId:I

.field public mLoadStreamSizeBase:Ll6/n;

.field private final mLocationReceivedListener:Lh6/b$a;

.field private mMFNRReplaceSRWhenMotion:Z

.field public final mMateDataParserLock:Ljava/lang/Object;

.field public mMultiCap:Ll6/t;

.field private mNeedDelaySoundForCapture:Z

.field protected mNightManager:Ll6/z;

.field private mNumberOfFace:I

.field public mOnResumeTime:J

.field public mParalManager:Lv6/b;

.field private mQuickShotAnimateEnable:Z

.field private mRawCallbackType:I

.field protected mRotationMatrix:[F

.field protected final mScreenHaloBrightnessCb:Lj9/a$m;

.field private final mScreenLightCb:Lj9/a$n;

.field private final mSensorStateListener:LF1/i4$q;

.field private mShouldDoMFNR:Z

.field public mShutterReturned:Z

.field private mSpecShotMode:Ljava/lang/Integer;

.field protected mSuperNightCbImageImpl:Ll6/L;

.field public mSupportAnchorFrame:Z

.field public mSupportAnchorFrameAsThumbnail:Z

.field private final mTopConfigImpl:LQ6/o1;

.field public mUpscaleImageWithSR:Z

.field private mVolumeKeyDownWhenSnapButtonDowned:Z

.field public mZoomMapController:Li9/h;

.field public final socketController:LKp/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "camera.preview.debug.lut"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/Camera2Module;->DEBUG_LUT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/xiaomi/camera/module/PhotoBase;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->genCameraAction()Ll6/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    new-instance v0, Ll6/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Ll6/c;->a:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAnchorPreviewCb:Lj9/a$a;

    new-instance v0, Lcom/android/camera/module/Camera2Module$f;

    invoke-direct {v0, p0}, Lcom/android/camera/module/Camera2Module$f;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mTopConfigImpl:LQ6/o1;

    new-instance v0, Ll6/E;

    invoke-direct {v0, p0}, Ll6/E;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mScreenLightCb:Lj9/a$n;

    new-instance v0, Ll6/A;

    invoke-direct {v0, p0}, Ll6/A;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mScreenHaloBrightnessCb:Lj9/a$m;

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->b1()Z

    move-result v1

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->s4()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ll6/p;

    invoke-direct {v0}, Ll6/p;-><init>()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Ll6/o;

    invoke-direct {v0}, Ll6/o;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Ll6/q;

    invoke-direct {v0}, Ll6/n;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeMessageSent:Z

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mShutterReturned:Z

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    iput v0, p0, Lcom/android/camera/module/Camera2Module;->mNumberOfFace:I

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mQuickShotAnimateEnable:Z

    sget v1, Li3/b;->N:I

    iput v1, p0, Lcom/android/camera/module/Camera2Module;->mLightFilterId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/module/Camera2Module;->mIsShowLyingDirectHintStatus:I

    iput v1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotBurstShot:Z

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsQuickShotEnabled:Z

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHdrDegradeMFNREnabled:Z

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsMfHdrQuickShotEnabled:Z

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4MFNRReplaceSR:Z

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsAiShutterOn:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mMateDataParserLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mMFNRReplaceSRWhenMotion:Z

    new-instance v2, Ll6/t;

    invoke-direct {v2, p0}, Ll6/t;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    new-instance v2, Ll6/z;

    invoke-direct {v2, p0}, Ll6/z;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    new-instance v2, Lo6/a;

    invoke-direct {v2, p0}, Lo6/a;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lo6/a;

    new-instance v2, Ll6/d;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mDirtDetection:Ll6/d;

    new-instance v2, Ll6/b;

    invoke-direct {v2, p0}, Ll6/b;-><init>(Lcom/android/camera/module/r;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    new-instance v2, Lv6/b;

    invoke-direct {v2, p0}, Lv6/b;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    new-instance v2, LKp/m;

    invoke-direct {v2, p0}, LKp/m;-><init>(Lcom/android/camera/module/r;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->socketController:LKp/m;

    new-instance v2, Ll6/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput v1, v2, Ll6/e;->c:I

    invoke-static {}, Lcom/android/camera/data/data/j;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Ll6/e;->a:Ljava/lang/String;

    const-string v3, "HdrColorReproduction.new mCvType: "

    invoke-static {v3, v1}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "HdrColorReproduction"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/camera/module/Camera2Module;->mHdrColorReproduction:Ll6/e;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/module/Camera2Module;->mBlockSnapStartTime:J

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mBlockSnapDfsReported:Z

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsCaptureDownScene:Z

    new-instance v0, Lcom/android/camera/module/Camera2Module$a;

    invoke-direct {v0, p0}, Lcom/android/camera/module/Camera2Module$a;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLocationReceivedListener:Lh6/b$a;

    new-instance v0, Lcom/android/camera/module/Camera2Module$b;

    invoke-direct {v0, p0}, Lcom/android/camera/module/Camera2Module$b;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSensorStateListener:LF1/i4$q;

    return-void
.end method

.method public static synthetic Af(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$onSingleTapUp$40(LQ6/t0;)V

    return-void
.end method

.method public static bridge synthetic Aq(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateSwMfnr()V

    return-void
.end method

.method public static synthetic Bi(Lcom/android/camera/module/Camera2Module;Lj9/E1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$onShutter$26(Lj9/E1;)V

    return-void
.end method

.method public static synthetic Ck(LQ6/X;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$playCameraSound$10(LQ6/X;)V

    return-void
.end method

.method public static synthetic Cl(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$showPostCaptureAlert$31(LQ6/t0;)V

    return-void
.end method

.method public static synthetic De(Lcom/android/camera/module/Camera2Module;LQ6/t0;)[Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$prepareNormalCapture$3(LQ6/t0;)[Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Di(Lcom/android/camera/module/Camera2Module;LQ6/j1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$playCameraSound$11(LQ6/j1;)V

    return-void
.end method

.method public static synthetic Dj(LRh/r;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$doAttach$34(LRh/r;)V

    return-void
.end method

.method public static synthetic Ei()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/Camera2Module;->lambda$startNormalCapture$5()V

    return-void
.end method

.method public static synthetic Fc(LQ6/K0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$performKeyClicked$44(LQ6/K0;)V

    return-void
.end method

.method public static synthetic Jo(Landroid/view/KeyEvent;LQ6/L;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$performMiHandlePressed$50(Landroid/view/KeyEvent;LQ6/L;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Kg(Lcom/android/camera/module/Camera2Module;Lj9/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$updateDecodePreview$38(Lj9/a;)V

    return-void
.end method

.method public static synthetic Kj(LQ6/W0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$hidePostCaptureAlert$55(LQ6/W0;)V

    return-void
.end method

.method public static synthetic Mc(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->lambda$prepareNormalCapture$4()V

    return-void
.end method

.method public static synthetic Nh(Lcom/android/camera/module/Camera2Module;LQ6/t0;)[Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$getDebugInfo$51(LQ6/t0;)[Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Rh(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$doShutterLongPressAction$49(LQ6/l1;)V

    return-void
.end method

.method public static synthetic Te(Landroidx/fragment/app/l;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$startNormalCapture$6(Landroidx/fragment/app/l;)V

    return-void
.end method

.method public static synthetic Ul(Lqh/f;LQ6/q;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$getPictureInfo$52(Lqh/f;LQ6/q;)V

    return-void
.end method

.method public static synthetic Vg(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->lambda$onCameraOpened$35()V

    return-void
.end method

.method public static synthetic Wj(Lcom/android/camera/module/Camera2Module;Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$showPostCaptureAlert$33(Ljava/util/Optional;)V

    return-void
.end method

.method public static synthetic Wm()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/Camera2Module;->lambda$onCaptureCompleted$24()V

    return-void
.end method

.method public static synthetic Xg(Landroid/view/Window;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$handleMessage$57(Landroid/view/Window;)V

    return-void
.end method

.method public static synthetic Xi(Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$onPictureTakenFinished$20(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic Xk(Lgi/f;Landroid/media/Image;Lj9/D0;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/module/Camera2Module;->lambda$updateDecodePreview$37(Lgi/f;Landroid/media/Image;Lj9/a;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic Xm(Landroid/view/KeyEvent;LQ6/L;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$performKeyClicked$48(Landroid/view/KeyEvent;LQ6/L;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Xn(LQ6/d;Z)V
    .locals 0

    invoke-static {p1, p0}, Lcom/android/camera/module/Camera2Module;->lambda$performKeyClicked$43(ZLQ6/d;)V

    return-void
.end method

.method public static synthetic Yi(Lcom/android/camera/module/Camera2Module;ZLQ6/t0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->lambda$onTiltShiftSwitched$41(ZLQ6/t0;)V

    return-void
.end method

.method public static synthetic Zm(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->lambda$handleZslSoundAndAnim$7()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/Camera2Module;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->needBlockQuickShot()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/Camera2Module;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->needBlockQuickShot()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$201(Lcom/android/camera/module/Camera2Module;D)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onDeviceKeepMoving(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic ah(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->lambda$notifyFirstFrameArrived$36()V

    return-void
.end method

.method private appendCacheImageDecoder(Lvr/i;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lvr/i;->a([I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    iget-object p1, p1, Lj9/h0;->a:Lj9/i0;

    iget v0, p1, Lj9/i0;->Y:I

    const/16 v1, 0x15

    if-le v1, v0, :cond_0

    iput v1, p1, Lj9/i0;->Y:I

    :cond_0
    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v0, LAs/j;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, LAs/j;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_1
    return-void
.end method

.method private boostCameraForCapture()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportCameraBoostByMode"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->z3()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_2

    const/16 v0, 0xaf

    if-eq p0, v0, :cond_2

    const/16 v0, 0xe7

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    invoke-static {p0}, LPh/h;->b(I)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/data/data/m;->D()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    invoke-static {p0}, LPh/h;->b(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private calcScreenFiredDelayTime()I
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isNeedIncreaseBrightnessWithHalo"
        type = 0x0
    .end annotation

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->o()I

    move-result v0

    invoke-virtual {p0}, LJe/c;->e0()V

    return v0
.end method

.method public static synthetic ce(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$hidePostCaptureAlert$54(LQ6/t0;)V

    return-void
.end method

.method private changeDefaultAlgo(Lj9/H1;ZI)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isMfAutoMfnrSupported"
        type = 0x0
    .end annotation

    new-instance v0, Lj9/H1$a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, v0, Lj9/H1$a$a;->b:Z

    iput p3, v0, Lj9/H1$a$a;->a:I

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isZslPreferred()Z

    move-result p0

    iput-boolean p0, p1, Lj9/H1;->c:Z

    const/4 p0, 0x0

    iput p0, p1, Lj9/H1;->a:I

    const/4 p2, 0x1

    iput p2, p1, Lj9/H1;->f:I

    iput p0, p1, Lj9/H1;->e:I

    iget-object p0, p1, Lj9/H1;->g:Lj9/H1$a;

    iput p2, p0, Lj9/H1$a;->c:I

    iput p2, p0, Lj9/H1$a;->d:I

    iput-object v0, p0, Lj9/H1$a;->S:Lj9/H1$a$a;

    return-void
.end method

.method private changeDefaultAlgoIfNeeded(Lj9/H1;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isMfAutoMfnrSupported"
        type = 0x0
    .end annotation

    if-eqz p1, :cond_1

    iget p0, p1, Lj9/H1;->h:I

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method

.method private checkCaptureStartDeparted(LRh/r;)Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeparted()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-static {}, LJe/c;->d0()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "onCaptureStart: departed"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Camera2Module"

    invoke-static {v3, p0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->p2()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, LRh/r;->g:LRh/s;

    iput-boolean v0, p0, LRh/s;->h:Z

    :cond_0
    iget-object p0, p1, LRh/r;->j:LRh/y;

    iput-boolean v0, p0, LRh/y;->q:Z

    return v1

    :cond_1
    return v0
.end method

.method private checkFlatSelfieFrontMirror()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/data/data/j;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isFrontMirror()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v0

    invoke-virtual {v0}, Ls4/e;->e()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isFrontMirror()Z

    move-result p0

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private checkMoreFrameCaptureLockAFAE(Z)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportMoreFrameCaptureLockAFAE"
        type = 0x0
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkMoreFrameCaptureLockAFAE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    .line 3
    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    .line 4
    iput-boolean p1, p0, Lj9/i0;->s2:Z

    :cond_0
    return-void
.end method

.method private checkPreviewPixelsRead([BII)Z
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v0, v0, Lv6/b;->e:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-boolean v0, v0, Lj6/a;->i:Z

    if-eqz v0, :cond_5

    :cond_2
    invoke-static {}, LK2/e;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget v3, v0, Lj6/a;->p:I

    iget v0, v0, Lj6/a;->h:I

    sub-int/2addr v3, v0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isFrontMirror()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const/4 p1, 0x0

    invoke-static {p1, p2, v3, v0}, LF1/w4;->c(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)LF1/w4;

    move-result-object p1

    iput-boolean v2, p1, LF1/w4;->d:Z

    iget-object p2, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p2, p1, v2, v2}, Lcom/android/camera/module/X;->f8(LF1/w4;ZZ)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lj9/a;->i0(I)V

    return v1

    :cond_5
    return v2

    :cond_6
    :goto_2
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "Camera2Module"

    const-string p2, "onPreviewPixelsRead: module is dead"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static synthetic cl(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$multiCapture$1(LQ6/d;)V

    return-void
.end method

.method private computeBlockSnap()Z
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj9/a;->Z()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "SessionNotReady"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_0
    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v3, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x3

    invoke-direct {p0, v0, v3}, Lcom/android/camera/module/Camera2Module;->isCloudWatermarkProcessing(Lj9/a;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "CloudWatermarkProcessing"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isSnapshotInProgress()Z

    move-result v0

    const-string v3, "Camera2Module"

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    const-string p0, "isBlockSnap: snapshot is in progress"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "SnapshotInProgress"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "isBlockSnap: paused"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "Paused"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->u0()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "isBlockSnap: isTargetZooming"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "TargetZooming"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->H()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "isBlockSnap: zooming"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "Zooming"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->s0()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "isBlockSnap: camera sensor processed"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "SensorProcessed"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needKeepCoverView()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "isBlockSnap: isKeptBitmapTexture"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "KeepCoverView"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v0, v0, Ll6/t;->d:Z

    if-eqz v0, :cond_8

    const-string p0, "isBlockSnap: multiSnap"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "MultiSnap"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-nez v0, :cond_9

    const-string p0, "isBlockSnap: getCameraState() = CameraStateConstant.PREVIEW_STOPPED"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "PreviewStopped"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->shouldShotOneByOne(Lj9/a;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isCaptureWillCostHugeMemory()Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isParallelSessionEnable()Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v0}, Lwp/g;->a()Lwp/g$b;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v5, LE4/b;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, LE4/b;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "isBlockSnap: shooting super night or shooting with huge memory, then discard snap"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "OneByOneCapture"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isQueueFull()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "isBlockSnap: queue is full"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "QueueFull"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_b
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isTransitQueueFull()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "isBlockSnap:friend mode transitQueue is full"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "TransitQueueFull"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_c
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v2}, LJe/c;->k2()Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v5}, LF1/E3;->a()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotSupport()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->shouldEnableMfHdrQuickShot()Z

    move-result v5

    if-nez v5, :cond_d

    move v5, v1

    goto :goto_0

    :cond_d
    move v5, v4

    :goto_0
    invoke-virtual {v0, v5}, Lj9/a;->N(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getPreviewSnapParam()Lj9/H1$a;

    move-result-object v5

    invoke-interface {v0, v5}, Lj6/j;->a1(Lj9/H1$a;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getPreviewSnapParam()Lj9/H1$a;

    invoke-interface {v0}, Lj6/j;->v()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->s4()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "isBlockSnap: mCamera2Device\'s boolean is true"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "Camera2Device"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_e
    invoke-static {}, LJe/c;->d0()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->isSnapshotAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    const-string p0, "isBlockSnap: mivi queue is full"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "MiviQueueFull"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "isBlockSnap: counting down"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "CountingDown"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->needWaitSaveFinish()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "isBlockSnap: waiting save finish"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "WaitSaveFinish"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_11
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v5, v0, Lv6/b;->e:Z

    if-eqz v5, :cond_12

    iget-object v5, v0, Lv6/b;->c:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v0, v0, Lv6/b;->b:Z

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_12
    move v0, v1

    :goto_1
    if-nez v0, :cond_13

    const-string p0, "isBlockSnap: parallel session hasn\'t been configured"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "ParallelSessionNotConfigured"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_13
    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "isBlockSnap: has message MSG_RESUME_CAPTURE"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "ResumeCapture"

    sput-object p0, LK7/l;->n:Ljava/lang/String;

    return v1

    :cond_14
    invoke-static {}, Lcom/android/camera/data/data/m;->S()Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-static {}, Lcom/xiaomi/camera/mivi/ImagePoolAdapter;->getAllAcquiredImageCount()I

    move-result p0

    iget-object v0, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t6()I

    move-result v0

    if-lt p0, v0, :cond_15

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isBlockSnap: AlgoImagePool full, count="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/camera/mivi/ImagePoolAdapter;->getAllAcquiredImageCount()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_15
    const-string p0, "isBlockSnap: return false"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public static synthetic dd(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$announceAccessAfterPictureTakenFinished$21(LQ6/d;)V

    return-void
.end method

.method public static synthetic dh(Lcom/android/camera/module/Camera2Module;JIILjava/lang/String;Lqh/a;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/module/Camera2Module;->lambda$appendCacheImageDecoder$16(JII[ILjava/lang/String;Lqh/a;)V

    return-void
.end method

.method private doKeyShutterLongPress(ILandroid/view/KeyEvent;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/Camera2Module;->doShutterLongPressAction(ILandroid/view/KeyEvent;Z)Z

    move-result p2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p3

    invoke-interface {p3, p2}, Lj6/f;->A(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p2

    invoke-interface {p2, p1}, Lj6/f;->N(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p1

    invoke-interface {p1}, Lj6/f;->g()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    iget-boolean p1, p1, Ll6/f;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lj6/f;->A(Z)V

    :cond_0
    return-void
.end method

.method private doKeyShutterSnap(ILandroid/view/KeyEvent;)V
    .locals 4

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    iget-boolean v0, v0, Lv2/D0;->B:Z

    if-eqz v0, :cond_0

    invoke-static {}, LQ6/j1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LE4/i;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, LE4/i;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    const-class v1, Lw7/c;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw7/c;

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->O6()Z

    move-result v1

    const-string v2, "Camera2Module"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, LU6/c;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "onSnapClick: down capturing"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, LU6/c;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lw7/c;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "onSnapClick: down block snap"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, LU6/c;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lw7/c;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "onSnapClick: block snap"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    invoke-virtual {v0, p1}, Ll6/f;->onShutterButtonClick(I)Z

    invoke-virtual {p0, p2, v3, p1}, Lcom/android/camera/module/r;->trackKeyShutterEvent(Landroid/view/KeyEvent;ZI)V

    return-void
.end method

.method private doLaterReleaseCheckTexture()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isTextureExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Camera2Module"

    const-string v2, "doLaterReleaseIfNeed: surfaceTexture expired, restartModule"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LF1/b2;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LF1/b2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private doLogSystemCheck()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-boolean v0, v0, Lj6/a;->o:Z

    if-eqz v0, :cond_0

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    sget-object v2, LF6/a;->f0:LF6/a;

    invoke-virtual {v1, v2}, LF6/q;->r(LF6/a;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->showPostCaptureAlert()V

    if-eqz v0, :cond_1

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p0

    sget-object v0, LF6/a;->f0:LF6/a;

    filled-new-array {v0}, [LF6/a;

    move-result-object v0

    invoke-virtual {p0, v0}, LF6/q;->s([LF6/a;)J

    :cond_1
    return-void
.end method

.method private doShutterLongPressAction(ILandroid/view/KeyEvent;Z)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    invoke-static {}, LQ6/Z0;->a()Ljava/util/Optional;

    move-result-object p3

    new-instance v2, LF1/g;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, LF1/g;-><init>(I)V

    invoke-virtual {p3, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p3

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, LQ6/Z0;->a()Ljava/util/Optional;

    move-result-object p3

    new-instance v3, LF1/P3;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, LF1/P3;-><init>(I)V

    invoke-virtual {p3, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    invoke-interface {p3}, LQ6/q;->onShutterDragging()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/camera/module/r;->trackKeyShutterEvent(Landroid/view/KeyEvent;ZI)V

    :cond_0
    return p3

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p3

    if-nez p3, :cond_4

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p3

    new-instance v1, LEs/G;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, LEs/G;-><init>(I)V

    invoke-virtual {p3, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->doKeyShutterSnap(ILandroid/view/KeyEvent;)V

    return v0

    :cond_2
    invoke-static {v0}, Lcom/android/camera/data/data/w;->B(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f140f56

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140f54

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    if-ne p1, v3, :cond_3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v2

    check-cast v2, Lj6/a;

    iget-boolean v2, v2, Lj6/a;->i:Z

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    const/4 p1, 0x2

    const/16 p2, 0xa0

    invoke-interface {p0, p1, p2}, LQ6/j1;->ec(II)V

    return v1

    :cond_3
    if-ne p1, v3, :cond_5

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    return v0

    :cond_5
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    invoke-virtual {p0}, Ll6/f;->onShutterButtonLongClick()Z

    move-result p0

    return p0
.end method

.method public static synthetic dq(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$tryRemoveCountDownMessage$14(LQ6/l1;)V

    return-void
.end method

.method private enableFrontMFNR()Z
    .locals 3

    sget-boolean v0, LJe/d;->i:Z

    if-eqz v0, :cond_0

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object v0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S3()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->u2()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_0
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S3()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    const v2, 0x8005

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->W3()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    const v2, 0x8002

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const v2, 0x9000

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->u2()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    const v2, 0x9001

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_5
    const v2, 0x9003

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->v6()Z

    move-result p0

    return p0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-eqz v0, :cond_7

    iget p0, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    const v0, 0x9005

    if-ne p0, v0, :cond_7

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic ep(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/X;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$updateEnablePreviewThumbnail$25(Lcom/android/camera/module/X;)V

    return-void
.end method

.method public static synthetic gd(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->lambda$appendCacheImageDecoder$17()V

    return-void
.end method

.method public static synthetic ge(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$handleMessage$59(LQ6/d;)V

    return-void
.end method

.method private genPreviewSurface()Landroid/view/Surface;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startPreview: surfaceTexture = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1}, Lcom/android/camera/module/X;->getSurfaceTexture()LEu/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Module"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->getSurfaceTexture()LEu/a;

    move-result-object v0

    invoke-virtual {v0}, LEu/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1}, Lcom/android/camera/module/X;->v()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj6/f;->J(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "startPreview: surfaceTexture unavailable!!!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->getSurfaceTexture()LEu/a;

    move-result-object p0

    invoke-virtual {p0}, LEu/a;->a()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private generateDecoderParams()Lgi/g;
    .locals 4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->o0()I

    move-result v1

    invoke-virtual {v0, v1}, Lu6/f;->O(I)Lj9/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkp/a;->a(Lj9/e;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_0
    new-instance v1, Lgi/g;

    new-instance v2, LEm/b;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, LEm/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result p0

    invoke-static {}, Lcom/android/camera/data/data/E;->e()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v2, v0, p0, v3}, Lgi/g;-><init>(Lev/a;IZLandroid/graphics/Rect;)V

    return-object v1
.end method

.method private getCalibrationDataFileName(I)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->d0()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "front_dual_camera_caldata.bin"

    return-object p0

    :cond_0
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->d()I

    move-result p0

    if-ne p1, p0, :cond_1

    const-string p0, "back_dual_camera_caldata_wu.bin"

    return-object p0

    :cond_1
    const-string p0, "back_dual_camera_caldata.bin"

    return-object p0
.end method

.method private getCaptureAlgoStatus()Lmq/a;
    .locals 5

    new-instance v0, Lmq/a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Lmq/a;->a:I

    iput-object v1, v0, Lmq/a;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isNightOn()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "night"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/data/data/m;->T(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "livephoto"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getSmartScene()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isUltraPixelOn()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "ultraPixel"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHdrOn()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "hdr"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isSuperMoonOn()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "moon"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method private getFocusRect()Landroid/graphics/Rect;
    .locals 2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lv2/F0;

    invoke-virtual {p0, v0}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LT9/E;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LT9/E;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    invoke-static {v0}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getHandGestureDecoderFactory()Lfi/d;
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mHandGestureDecoderFactory:Lfi/d;

    if-nez v0, :cond_0

    new-instance v0, Lfi/d;

    new-instance v1, Lcom/android/camera/module/u;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/camera/module/u;-><init>(I)V

    invoke-direct {v0, v1}, Lfi/d;-><init>(Lcom/android/camera/module/u;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mHandGestureDecoderFactory:Lfi/d;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mHandGestureDecoderFactory:Lfi/d;

    return-object p0
.end method

.method private getParallelTaskDataParameter(LRh/r;IILandroid/util/Size;Landroid/util/Size;I)LRh/r;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v1, v3}, LRh/r;->C(Landroid/util/Size;)V

    iget-object v3, v1, LRh/r;->a:LRh/z;

    move/from16 v4, p3

    iput v4, v3, LRh/z;->j:I

    iget-object v5, v1, LRh/r;->g:LRh/s;

    move-object/from16 v6, p4

    iput-object v6, v5, LRh/s;->s:Landroid/util/Size;

    iget-object v6, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v6}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v6

    iget-object v7, v1, LRh/r;->b:LRh/a;

    iput-object v6, v7, LRh/a;->b:Landroid/util/Size;

    const/4 v6, 0x1

    iget-object v8, v1, LRh/r;->h:LRh/t;

    if-eq v2, v6, :cond_0

    const/16 v9, 0xe

    if-eq v2, v9, :cond_0

    const/16 v9, 0x14

    if-eq v2, v9, :cond_0

    const/16 v9, 0x65

    if-ne v2, v9, :cond_1

    :cond_0
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v2, v2, Ll6/n;->y:Landroid/util/Size;

    if-eqz v2, :cond_1

    iget v9, v0, Lcom/android/camera/module/Camera2Module;->mRawCallbackType:I

    if-ne v9, v6, :cond_1

    iget v9, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v10, 0xa7

    if-ne v9, v10, :cond_1

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v9, v0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v9, v9, Ll6/n;->y:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v2, v9}, Landroid/util/Size;-><init>(II)V

    iput-object v10, v8, LRh/t;->f:Landroid/util/Size;

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    iget v9, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v9, v2}, Lcom/android/camera/data/data/m;->p0(ILj9/e;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->B3(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/data/data/m;->a0(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v2, v2, Ll6/n;->y:Landroid/util/Size;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v2, v2, Ll6/n;->y:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v9, v0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v9, v9, Ll6/n;->y:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v2, v9}, Landroid/util/Size;-><init>(II)V

    iput-object v10, v8, LRh/t;->f:Landroid/util/Size;

    :cond_3
    :goto_0
    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->s4(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v4}, LQa/a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->i1(Lj9/e;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v2, v6

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v7, LRh/a;->c:Z

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->V2(Lj9/e;)Z

    move-result v2

    iput-boolean v2, v5, LRh/s;->u:Z

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/effect/EffectController;->m()I

    move-result v4

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v2, v9, v4}, Lcom/xiaomi/camera/effect/EffectController;->q(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaomi/camera/effect/EffectController;->z()I

    move-result v9

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/xiaomi/camera/effect/EffectController;->g()I

    move-result v10

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/xiaomi/camera/effect/EffectController;->f()I

    move-result v11

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/xiaomi/camera/effect/EffectController;->A()I

    move-result v12

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/xiaomi/camera/effect/EffectController;->x()I

    move-result v13

    iget-object v14, v0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v14, Lj6/a;

    iget v14, v14, Lj6/a;->c:I

    const/4 v15, -0x1

    if-ne v15, v14, :cond_6

    const/4 v14, 0x0

    :cond_6
    iget-object v15, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v15}, Lj6/j;->D()I

    move-result v15

    const/16 p2, 0x0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v8

    const-class v6, Lv2/a;

    invoke-virtual {v8, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv2/a;

    if-eqz v6, :cond_7

    invoke-static/range {p2 .. p2}, LS8/d;->b(Z)LGg/P;

    move-result-object v6

    invoke-static {v6}, Ltd/L8;->c(LGg/P;)Z

    move-result v6

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    move/from16 p3, v6

    iget v6, v8, Lu2/Q;->u:I

    invoke-virtual {v8, v6}, Lu2/Q;->E(I)I

    move-result v6

    const/16 v8, 0xa3

    :cond_7
    invoke-static {}, Lcom/android/camera/data/data/j;->l1()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static/range {p2 .. p2}, LS8/d;->b(Z)LGg/P;

    move-result-object v6

    invoke-static {v6}, Ltd/L8;->c(LGg/P;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    move/from16 v6, p2

    :goto_2
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v8

    move-object/from16 p5, v5

    const-class v5, Lv2/s0;

    invoke-virtual {v8, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv2/s0;

    if-eqz v5, :cond_9

    iget-boolean v5, v5, Lv2/s0;->a:Z

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/android/camera/data/data/j;->c1()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_3

    :cond_9
    move/from16 v5, p2

    :goto_3
    invoke-static/range {p2 .. p2}, LNh/d;->a(Z)Z

    move-result v8

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v16

    move/from16 p3, v5

    move-object/from16 v5, v16

    check-cast v5, Lj6/a;

    iget-object v5, v5, Lj6/a;->q:Landroid/location/Location;

    sget-object v16, LS8/b;->g:LS8/b;

    const/16 v17, 0x0

    move/from16 v18, v15

    if-eqz v8, :cond_a

    sget-object v15, LN5/c;->a:LN5/c;

    invoke-virtual {v15, v5}, LN5/c;->h(Landroid/location/Location;)LN5/c$a;

    move-result-object v15

    invoke-static {}, LS8/b;->b()LS8/b;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, LS8/b;->a()Lcom/xiaomi/camera/bean/CloudWmAttribute;

    move-result-object v19

    move-object/from16 v20, v19

    move-object/from16 v19, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v20

    :goto_4
    move-object/from16 v20, v3

    goto :goto_5

    :cond_a
    move-object/from16 v19, v5

    move-object/from16 v15, v16

    move-object/from16 v5, v17

    move-object/from16 v16, v5

    goto :goto_4

    :goto_5
    invoke-static {}, Lcom/android/camera/data/data/j;->u0()Z

    move-result v3

    invoke-virtual {v1, v3}, LRh/r;->z(Z)V

    iget-object v3, v1, LRh/r;->d:LRh/f;

    iget-object v3, v3, LRh/f;->l:Ln3/e;

    iput-boolean v6, v3, Ln3/e;->d:Z

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/camera/data/data/w;->M0()Z

    move-result v3

    move/from16 v21, v6

    iget-object v6, v1, LRh/r;->l:LRh/C;

    iput-boolean v3, v6, LRh/C;->i:Z

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    move/from16 v22, v14

    const-string v14, "pref_westcoast_watermark_figure"

    move-object/from16 v23, v2

    const/4 v2, 0x1

    invoke-virtual {v3, v14, v2}, LWh/a;->j(Ljava/lang/String;I)I

    move-result v3

    iput v3, v6, LRh/C;->j:I

    iput-boolean v8, v6, LRh/C;->e:Z

    iget-object v2, v15, LS8/b;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v6, LRh/C;->f:Ljava/lang/String;

    iget-boolean v2, v15, LS8/b;->b:Z

    iput-boolean v2, v6, LRh/C;->g:Z

    iget-boolean v2, v15, LS8/b;->c:Z

    iput-boolean v2, v6, LRh/C;->h:Z

    iput-object v5, v6, LRh/C;->u:Lcom/xiaomi/camera/bean/CloudWmAttribute;

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->K0()Lj9/h0;

    move-result-object v2

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-wide v2, v2, Lj9/i0;->x0:J

    iput-wide v2, v7, LRh/a;->e:J

    invoke-direct {v0}, Lcom/android/camera/module/Camera2Module;->checkFlatSelfieFrontMirror()Z

    move-result v2

    iput-boolean v2, v7, LRh/a;->h:Z

    invoke-static {}, LK2/e;->E()Z

    move-result v2

    iput-boolean v2, v6, LRh/C;->k:Z

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/effect/EffectController;->i()I

    move-result v2

    invoke-virtual {v1, v2}, LRh/r;->t(I)V

    invoke-virtual {v1, v9}, LRh/r;->K(I)V

    invoke-virtual {v1, v10}, LRh/r;->M(I)V

    invoke-virtual {v1, v11}, LRh/r;->E(I)V

    iget-object v2, v1, LRh/r;->d:LRh/f;

    iget-object v2, v2, LRh/f;->k:Ln3/b$a;

    iput v12, v2, Ln3/b$a;->j:I

    iput v13, v2, Ln3/b$a;->l:I

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/xiaomi/camera/effect/EffectController;->k(I)I

    move-result v2

    invoke-virtual {v1, v2}, LRh/r;->J(I)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/xiaomi/camera/effect/EffectController;->C(I)I

    move-result v2

    invoke-virtual {v1, v2}, LRh/r;->L(I)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/xiaomi/camera/effect/EffectController;->t(I)I

    move-result v2

    invoke-virtual {v1, v2}, LRh/r;->D(I)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/effect/EffectController;->B()I

    move-result v2

    iget-object v3, v1, LRh/r;->d:LRh/f;

    iget-object v3, v3, LRh/f;->k:Ln3/b$a;

    iput v2, v3, Ln3/b$a;->k:I

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/effect/EffectController;->y()I

    move-result v2

    iget-object v3, v1, LRh/r;->d:LRh/f;

    iget-object v3, v3, LRh/f;->k:Ln3/b$a;

    iput v2, v3, Ln3/b$a;->m:I

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/effect/EffectController;->v()I

    move-result v2

    iget-object v3, v1, LRh/r;->d:LRh/f;

    iget-object v3, v3, LRh/f;->k:Ln3/b$a;

    iput v2, v3, Ln3/b$a;->n:I

    invoke-virtual {v1, v4}, LRh/r;->x(I)V

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, LRh/r;->y(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/effect/EffectController;->o()I

    move-result v2

    invoke-virtual {v1, v2}, LRh/r;->w(I)V

    move-object/from16 v2, v20

    move/from16 v14, v22

    iput v14, v2, LRh/z;->c:I

    move/from16 v3, v18

    iput v3, v2, LRh/z;->d:I

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lvr/b0;->b(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    iput-boolean v4, v6, LRh/C;->v:Z

    iget-object v4, v0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v4, Lj6/a;

    iget v4, v4, Lj6/a;->p:I

    iget-object v8, v1, LRh/r;->d:LRh/f;

    iput v4, v8, LRh/f;->f:I

    invoke-static/range {p2 .. p2}, LS8/d;->b(Z)LGg/P;

    move-result-object v4

    invoke-virtual {v4}, LGg/P;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v6, LRh/C;->w:Ljava/lang/String;

    iget-object v4, v1, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    move-object/from16 v8, v19

    invoke-virtual {v4, v8}, Lcom/xiaomi/camera/core/ExifData;->setLocation(Landroid/location/Location;)V

    const-string v8, ""

    move-object/from16 v9, v16

    if-eqz v16, :cond_b

    iget-object v10, v9, LN5/c$a;->b:Ljava/lang/String;

    goto :goto_6

    :cond_b
    move-object v10, v8

    :goto_6
    invoke-virtual {v4, v10}, Lcom/xiaomi/camera/core/ExifData;->setLocationAddress(Ljava/lang/String;)V

    if-eqz v9, :cond_c

    iget-object v8, v9, LN5/c$a;->c:Ljava/lang/String;

    :cond_c
    invoke-virtual {v4, v8}, Lcom/xiaomi/camera/core/ExifData;->setLatlngStringCache(Ljava/lang/String;)V

    if-eqz v9, :cond_d

    iget-boolean v8, v9, LN5/c$a;->a:Z

    if-eqz v8, :cond_d

    move v8, v5

    goto :goto_7

    :cond_d
    move/from16 v8, p2

    :goto_7
    iput-boolean v8, v6, LRh/C;->m:Z

    invoke-static {}, Lcom/android/camera/data/data/j;->r1()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static {}, LFr/d;->c()Ljava/lang/String;

    move-result-object v17

    :cond_e
    move-object/from16 v8, v17

    invoke-virtual {v1, v8}, LRh/r;->I(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v8}, Lj6/j;->d0()Z

    move-result v8

    iput-boolean v8, v7, LRh/a;->d:Z

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Ll6/g;

    move-result-object v7

    invoke-virtual {v7}, Ll6/g;->h1()Z

    move-result v7

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ExifData;->getDepthData()Lcom/xiaomi/camera/core/DepthData;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/xiaomi/camera/core/DepthData;->setBokehFrontCamera(Z)V

    iget-object v7, v0, Lcom/android/camera/module/Camera2Module;->mAlgorithmName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/xiaomi/camera/core/ExifData;->setAlgorithmName(Ljava/lang/String;)V

    move/from16 v7, p2

    invoke-virtual {v0, v7}, Lcom/android/camera/module/Camera2Module;->getPictureInfo(Z)Lqh/f;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/xiaomi/camera/core/ExifData;->setPictureInfo(Lqh/f;)V

    invoke-virtual {v1}, LRh/r;->H()V

    invoke-static {}, Lcom/android/camera/module/Camera2Module;->getTiltShiftMode()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, LRh/r;->d:LRh/f;

    iget-object v9, v9, LRh/f;->k:Ln3/b$a;

    iput-object v8, v9, Ln3/b$a;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    invoke-virtual {v8}, Lv6/b;->c()LFr/a;

    move-result-object v8

    invoke-virtual {v1, v8}, LRh/r;->v(LFr/a;)V

    iget-object v8, v1, LRh/r;->d:LRh/f;

    move/from16 v9, p6

    iput v9, v8, LRh/f;->g:I

    move/from16 v9, p3

    move-object/from16 v8, p5

    iput-boolean v9, v8, LRh/s;->t:Z

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getWatermarkItem()LN1/n;

    move-result-object v8

    iget-object v9, v1, LRh/r;->d:LRh/f;

    iget-object v9, v9, LRh/f;->l:Ln3/e;

    iput-object v8, v9, Ln3/e;->f:LN1/n;

    if-eqz v21, :cond_f

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v8

    const-class v9, Lv2/F0;

    invoke-virtual {v8, v9}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv2/F0;

    invoke-virtual {v8}, Lv2/F0;->b()I

    move-result v8

    goto :goto_8

    :cond_f
    move v8, v7

    :goto_8
    invoke-static {v8}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, v1, LRh/r;->d:LRh/f;

    iput-object v8, v9, LRh/f;->i:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/camera/data/data/w;->U()Z

    move-result v8

    if-eqz v8, :cond_10

    iget v8, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v8}, Lcom/android/camera/data/data/m;->i0(I)Z

    move-result v8

    if-nez v8, :cond_10

    move v8, v7

    goto :goto_9

    :cond_10
    move v8, v5

    :goto_9
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ExifData;->getDepthData()Lcom/xiaomi/camera/core/DepthData;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/xiaomi/camera/core/DepthData;->setCameraPreferredMode(I)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/camera/effect/EffectController;->d()Li3/a;

    move-result-object v4

    iget-object v8, v1, LRh/r;->d:LRh/f;

    iput-object v4, v8, LRh/f;->b:Li3/a;

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v4

    check-cast v4, Lj6/a;

    iget-boolean v4, v4, Lj6/a;->i:Z

    iget-object v8, v1, LRh/r;->j:LRh/y;

    iput-boolean v4, v8, LRh/y;->p:Z

    iget-object v4, v15, LS8/b;->d:Ljava/lang/String;

    if-eqz v4, :cond_11

    const-string v8, "location_latlng_switch"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "location_latlng"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_a

    :cond_11
    move v5, v7

    :cond_12
    :goto_a
    iput-boolean v5, v6, LRh/C;->n:Z

    iget-boolean v4, v15, LS8/b;->e:Z

    iput-boolean v4, v6, LRh/C;->o:Z

    invoke-static {}, Lcom/android/camera/data/data/E;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v6, LRh/C;->p:I

    invoke-virtual {v0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v4

    iget-wide v4, v4, Ll6/h;->y:J

    iput-wide v4, v2, LRh/z;->h:J

    invoke-static {}, LQg/e;->b()I

    move-result v2

    iget-object v4, v1, LRh/r;->k:LRh/A;

    iput v2, v4, LRh/A;->f:I

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->k2()Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v2, Lcom/xiaomi/camera/mivi/filter/MIVIRenderTag;

    iget-object v4, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v0, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v2, v4, v0, v14, v3}, Lcom/xiaomi/camera/mivi/filter/MIVIRenderTag;-><init>(IIII)V

    invoke-virtual {v2}, Lcom/xiaomi/camera/mivi/filter/MIVIRenderTag;->getLutBitmaps()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, v1, LRh/r;->d:LRh/f;

    iput-object v0, v3, LRh/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/xiaomi/camera/mivi/filter/MIVIRenderTag;->getCandyParams()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v1, LRh/r;->d:LRh/f;

    iput-object v0, v2, LRh/f;->j:Ljava/util/ArrayList;

    :cond_13
    return-object v1
.end method

.method private getPreviewSnapParam()Lj9/H1$a;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lj9/a;->K()Lj9/H1;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lj9/H1;->b()Lj9/H1$a;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRequestFlashMode()Ljava/lang/String;
    .locals 7

    const/4 v0, -0x1

    const-string v1, "105"

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/w;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/w;

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v2, v3}, Lr2/w;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->c()Lj9/e;

    move-result-object v4

    invoke-static {v4}, Lj9/f;->u1(Lj9/e;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->c()Lj9/e;

    move-result-object v4

    invoke-static {v4}, Lj9/f;->H2(Lj9/e;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    :goto_1
    iget-boolean v2, v2, Lr2/w;->f:Z

    if-eqz v2, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    iget v2, v2, LF1/E3;->b:I

    if-nez v2, :cond_3

    move v2, v6

    goto :goto_2

    :cond_3
    move v2, v5

    :goto_2
    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v2}, LF1/E3;->c()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    if-eqz v4, :cond_4

    iget v2, v2, LF1/E3;->b:I

    if-ne v2, v6, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_7

    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/android/camera/module/r;->mFlashAsdManager:Lj6/g;

    check-cast v2, Lm6/a;

    iget v2, v2, Lm6/a;->a:I

    const/16 v4, 0x9

    if-ne v2, v4, :cond_a

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_4
    move v5, v0

    goto :goto_5

    :sswitch_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v5, 0x2

    goto :goto_5

    :sswitch_1
    const-string v2, "103"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    move v5, v6

    goto :goto_5

    :sswitch_2
    const-string v2, "3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    :goto_5
    packed-switch v5, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const-string p0, "1"

    return-object p0

    :pswitch_1
    const-string p0, "101"

    return-object p0

    :pswitch_2
    const-string p0, "2"

    return-object p0

    :cond_a
    :goto_6
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p0, p0, Lcom/android/camera/module/r;->mFlashAsdManager:Lj6/g;

    check-cast p0, Lm6/a;

    iget p0, p0, Lm6/a;->a:I

    const/16 v1, 0xa

    if-ne p0, v1, :cond_b

    const-string p0, "104"

    return-object p0

    :cond_b
    const/16 v1, 0xb

    if-ne p0, v1, :cond_c

    const-string p0, "106"

    return-object p0

    :cond_c
    if-ne p0, v0, :cond_d

    :goto_7
    const-string p0, "0"

    return-object p0

    :cond_d
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_2
        0xbdf4 -> :sswitch_1
        0xbdf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSmartScene()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/n0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/n0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lv2/n0;->isSupportMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lv2/n0;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ldq/e;->g(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSuperMoonIconStatus()I
    .locals 0

    invoke-static {}, Lcom/android/camera/data/data/w;->s0()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/j;->c1()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public static getTiltShiftMode()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/data/data/E;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getZoomMapSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Li9/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li9/h;->a()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleHaloFlash(Ljava/lang/String;I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v1, v0}, LEw/k;->j(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x49

    if-eqz v0, :cond_0

    invoke-static {v1, p1}, LEw/k;->j(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v1, v0}, LEw/k;->j(ILjava/lang/String;)I

    move-result v0

    const/16 v4, 0x69

    if-ne v0, v4, :cond_2

    invoke-static {v1, p1}, LEw/k;->j(ILjava/lang/String;)I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    invoke-virtual {p1}, LJe/c;->O0()V

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p1, v3, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return v2

    :cond_2
    invoke-static {v1, p1}, LEw/k;->j(ILjava/lang/String;)I

    move-result p1

    if-ne p1, v4, :cond_5

    const/16 p1, 0x68

    if-eq p2, p1, :cond_4

    const/16 p1, 0x6a

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    if-eq p2, v4, :cond_5

    if-eq p2, v2, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p1, v3, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return v1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p1, v3, p0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return v1

    :cond_6
    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->O0()V

    return v1
.end method

.method public static synthetic hf(Ljava/util/concurrent/atomic/AtomicBoolean;LQ6/X;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$isTransitQueueFull$12(Ljava/util/concurrent/atomic/AtomicBoolean;LQ6/X;)V

    return-void
.end method

.method public static synthetic ic(Lcom/android/camera/module/Camera2Module;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->lambda$generateDecoderParams$18()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private initFlashAutoStateForTrack(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lj6/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/w;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/w;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lr2/w;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "auto-off"

    const/16 v3, 0xa

    if-nez v1, :cond_4

    const-string v1, "103"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "105"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/r;->mFlashAsdManager:Lj6/g;

    check-cast p1, Lm6/a;

    iget p1, p1, Lm6/a;->a:I

    if-ne p1, v3, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    const-string p1, "auto_halo"

    invoke-interface {p0, p1}, Lj6/f;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    const-string p1, "auto_halo_flash"

    invoke-interface {p0, p1}, Lj6/f;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0, v2}, Lj6/f;->a(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mFlashAsdManager:Lj6/g;

    check-cast v0, Lm6/a;

    iget v0, v0, Lm6/a;->a:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    if-eq v0, v3, :cond_6

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0, v2}, Lj6/f;->a(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    const-string p1, "auto-on"

    invoke-interface {p0, p1}, Lj6/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private initPreviewDecoders()I
    .locals 5

    new-instance v0, Lvr/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lvr/i;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/X;->F5()Lgi/f;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->generateDecoderParams()Lgi/g;

    move-result-object v2

    const-string v3, "Camera2Module"

    const-string v4, "initPreviewDecoders: appendPreviewDecoder E"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/module/Camera2Module;->appendPreviewDecoder(Lgi/f;Lgi/g;Lvr/i;)V

    const-string v1, "initPreviewDecoders: appendPreviewDecoder X"

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/camera/module/Camera2Module;->appendCacheImageDecoder(Lvr/i;)V

    iget p0, v0, Lvr/i;->a:I

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/w;->d1()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/w;->S()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/m;->V0()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x4

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {v0, p0}, Lvr/i;->a([I)V

    :cond_1
    iget p0, v0, Lvr/i;->a:I

    return p0
.end method

.method private isCannotGotoGallery()Z
    .locals 9

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/B0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/B0;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lr2/B0;->u(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Ll6/z;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Ll6/g;

    move-result-object v3

    iget v3, v3, Lj6/d;->n:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lj6/f;->S()I

    move-result v4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v4}, Lj6/f;->S()I

    move-result v4

    const/16 v5, 0xa0

    if-ne v4, v5, :cond_4

    :cond_3
    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    iget-object v5, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v5, v5, Lv6/b;->e:Z

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/module/X;->Nh()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v1

    goto :goto_5

    :cond_6
    move v5, v2

    :goto_5
    if-eqz v3, :cond_7

    iget-object v6, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v6}, Lcom/android/camera/module/X;->of()LF1/w4;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v6}, Lcom/android/camera/module/X;->of()LF1/w4;

    move-result-object v6

    iget-boolean v6, v6, LF1/w4;->n:Z

    if-nez v6, :cond_7

    move v6, v1

    goto :goto_6

    :cond_7
    move v6, v2

    :goto_6
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v7

    invoke-interface {v7}, Lj6/f;->q()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v7

    invoke-interface {v7}, Lj6/f;->H()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needKeepCoverView()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v7, v7, Ll6/t;->d:Z

    if-nez v7, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v7

    invoke-interface {v7}, Lj6/j;->x0()I

    move-result v7

    if-eqz v7, :cond_a

    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result v7

    if-nez v7, :cond_a

    if-nez v0, :cond_a

    if-eqz v4, :cond_8

    if-nez v3, :cond_a

    :cond_8
    if-eqz v6, :cond_9

    goto :goto_7

    :cond_9
    move v1, v2

    :cond_a
    :goto_7
    if-eqz v1, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isCannotGotoGallery, isPaused: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v8

    invoke-interface {v8}, Lj6/f;->q()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isZooming: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v8

    invoke-interface {v8}, Lj6/f;->H()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", needKeepCoverView: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needKeepCoverView()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isWorking: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v8, v8, Ll6/t;->d:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", cameraState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v8

    invoke-interface {v8}, Lj6/j;->x0()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", saveBusy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isInCountDown: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isLongExpCapturing: "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isCountDownShowThumbnail: "

    const-string v5, ", isCapturing: "

    invoke-static {v7, v0, p0, v4, v5}, LF1/u2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string p0, ", waitThumbnailShow: "

    invoke-static {v7, v3, p0, v6}, LF1/B2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Camera2Module"

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    return v1
.end method

.method private isCaptureAlertShown()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->x0()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isCloudWatermarkProcessing(Lj9/a;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/m;->D()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/m;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isHeicPreferred()Z

    move-result v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move p2, v0

    :cond_4
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v4, Lr2/c0;

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/c0;

    invoke-virtual {v1}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lr2/c0;->I()Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_6

    invoke-static {}, LQa/e;->b()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 p2, 0x2

    :cond_6
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->k2()Z

    move-result v4

    if-nez v4, :cond_9

    sget-boolean v4, LNh/d;->a:Z

    invoke-virtual {v1}, LJe/c;->E1()Z

    invoke-static {v0}, LS8/d;->b(Z)LGg/P;

    move-result-object v1

    invoke-virtual {v1}, LGg/P;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, LNh/d;->c(Z)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lj9/a;->x()I

    move-result p1

    if-gt p1, p2, :cond_8

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-gt p0, p2, :cond_8

    :cond_7
    if-eqz v3, :cond_9

    invoke-static {}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->getListenerMapSize()I

    move-result p0

    if-le p0, p2, :cond_9

    :cond_8
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Camera2Module"

    const-string p2, "isBlockSnap: watermark capture, need capture slowdown"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_9
    :goto_3
    return v0
.end method

.method private isCupCaptureRequired()Z
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFrontCUPLens"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isCupCaptureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const-string v2, "Camera2Module"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object v0

    iget v0, v0, Lj9/i0;->h0:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->B()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    sget-boolean v3, Lj9/n0;->a:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    sget-object v4, Lga/C0;->d1:Lga/D0;

    invoke-virtual {v4}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lga/E0;->a:I

    invoke-static {p0, v4, v0}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getThermalAlgoDisableMask : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CaptureResultParser"

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v3

    :goto_0
    if-eq p0, v3, :cond_3

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_3

    const-string p0, "isCupCaptureRequired : cup algo disabled by HAL!"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    sget-boolean p0, Lcom/android/camera/b;->k:Z

    sget-object p0, Lcom/android/camera/b$a;->a:Lcom/android/camera/b;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera/b;->a(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_4
    :goto_1
    const-string p0, "isCupCaptureRequired : disable cup capture when ev is not 0 !"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private isFlashFired(ILjava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isFlashFired : flashMode = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", aeState = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", flashState = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "Camera2Module"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    if-eq p0, p1, :cond_2

    const/4 v0, 0x2

    if-eq v0, p1, :cond_2

    const/16 v0, 0x65

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    return p2

    :cond_2
    :goto_0
    return p0
.end method

.method private isHdrOn()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xab

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getMutexModePicker()LF1/E3;

    move-result-object p0

    invoke-virtual {p0}, LF1/E3;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isHighQualityQuickShotSupport()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-boolean v0, v0, Lj6/a;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->J1(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/E;->W()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    iget-boolean v1, v1, Ll6/z;->m:Z

    if-eqz v1, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lj9/e;->Z()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->judgeHighQualityQuickShotSupportByTag()Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->judgeHighQualityQuickShotSupportByFeature()Z

    move-result p0

    return p0
.end method

.method private isHighQualityQuickShotSupportedBurstShot()Z
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget-object v0, v0, Lj9/i0;->P0:Lj1/a;

    invoke-virtual {v0}, Lj1/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v3, 0xab

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v2}, LF1/E3;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj9/e;->Z()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIn3OrMoreSatMode()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->W()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotSupport()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v2}, LF1/E3;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lj9/e;->Z()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v2}, LF1/E3;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lj9/e;->Z()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/module/Camera2Module;->isSatMultipleRawUseCase(Lj9/H1$a;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lj9/e;->Z()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_5

    :goto_1
    return v4

    :cond_5
    :goto_2
    return v1

    :cond_6
    return v2
.end method

.method private isNeedBurst(ILandroid/view/KeyEvent;)Z
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    const v0, 0x7f140f53

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v1, "pref_camera_volume_function_shutter_category_long_press_key"

    invoke-virtual {v0, v1, p0}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/data/data/w;->B(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140f51

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f140f52

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/16 v1, 0xaa

    if-eq p1, v1, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "OM"

    invoke-static {p1, p2, v0}, Lww/l;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-nez p1, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    :goto_2
    return v2
.end method

.method private isNeedColorLight()Z
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v0, LGp/a;->c:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v2, Lv2/w0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/w0;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lv2/w0;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa7

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v3

    invoke-static {v3}, Lw7/j;->L(I)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa3

    if-ne v3, v4, :cond_4

    if-nez v0, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0}, Lj6/f;->S()I

    move-result p0

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_6

    :cond_5
    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method private isNeedFixedShotTime(Lj9/H1$a;)Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsAiShutterOn:Z

    const-string v1, "Camera2Module"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, LJe/d;->i:Z

    if-eqz v0, :cond_0

    const-string p0, "(mtk)isNeedFixedShotTime mIsAiShutterOn: true"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/E;->W()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/xiaomi/camera/module/PhotoBase;->setNeedBlockQuickShot(Z)V

    const-string p0, "isSuperNightOn, isNeedFixedShotTime false"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    if-eqz p1, :cond_2

    iget p1, p1, Lj9/H1$a;->y:I

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    invoke-virtual {p1}, LJe/c;->e0()V

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotSupportedBurstShot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotBurstShot:Z

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isQuickShotSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsQuickShotEnabled:Z

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->shouldEnableMfHdrQuickShot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsMfHdrQuickShotEnabled:Z

    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHdrDegradeMFNREnabled:Z

    if-eqz v0, :cond_3

    :goto_0
    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsMfHdrQuickShotEnabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, LJe/c;->l2()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isParallelSessionEnable()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsQuickShotEnabled:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsMfHdrQuickShotEnabled:Z

    if-eqz p1, :cond_8

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    invoke-virtual {p1}, Lj9/a;->W()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    iget-object p1, p1, Lj9/h0;->a:Lj9/i0;

    iget-boolean p1, p1, Lj9/i0;->v1:Z

    if-nez p1, :cond_8

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object p1

    check-cast p1, Lj6/a;

    iget-boolean p1, p1, Lj6/a;->i:Z

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/data/data/m;->T(I)Z

    move-result p1

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    if-eqz p1, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/camera/data/data/E;->j0()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    move v3, v2

    :goto_1
    const-string p1, "isNeedFixedShotTime nfst:"

    const-string v0, ", mIsISORight4HWMFNR:"

    invoke-static {p1, v0, v3}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isHQQuickShot:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method private isNightOn()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->r5()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->R()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/m;->i0(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    iget p0, p0, Ll6/z;->j:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isParallel()Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "is Parallel path, shot2Galley: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",anchorFrame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Camera2Module"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v0, v0, Ll6/t;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v0, v0, Lv6/b;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lw7/j;->L(I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, LJe/c;->d0()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private isRefuseOffer()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xba

    if-ne v0, v1, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a8()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isPreviewThumbnailWhenFlash()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/camera/data/data/E;->j0()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/camera/data/data/j;->F0()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-boolean p0, LJe/d;->i:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSnapshotInProgress()Z
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const-string v1, "Camera2Module"

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotSupport()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-boolean v5, LJe/c;->k:Z

    sget-object v5, LJe/c$b;->a:LJe/c;

    invoke-virtual {v5}, LJe/c;->b1()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lj9/a;->W()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->x0()I

    move-result v5

    if-eq v5, v2, :cond_0

    invoke-virtual {v0}, Lj9/a;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeMessageSent:Z

    if-eqz v2, :cond_3

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    if-nez p0, :cond_3

    const-string p0, "isBlockSnap HQQuickShot is in progress!"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_3
    return v0

    :cond_4
    if-eqz v0, :cond_9

    iget-boolean v5, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getPreviewSnapParam()Lj9/H1$a;

    move-result-object v6

    invoke-interface {v5, v6}, Lj6/j;->a1(Lj9/H1$a;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getPreviewSnapParam()Lj9/H1$a;

    invoke-interface {v5}, Lj6/j;->v()Z

    move-result v5

    if-nez v5, :cond_9

    sget-boolean v5, LJe/c;->k:Z

    sget-object v5, LJe/c$b;->a:LJe/c;

    invoke-virtual {v5}, LJe/c;->b1()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v0}, Lj9/a;->W()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->x0()I

    move-result p0

    if-ne p0, v2, :cond_8

    goto :goto_2

    :cond_5
    iget-object v1, v5, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->s4()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v4}, Lj9/a;->N(Z)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->x0()I

    move-result p0

    if-ne p0, v2, :cond_8

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->x0()I

    move-result p0

    if-ne p0, v2, :cond_8

    :cond_7
    :goto_2
    return v4

    :cond_8
    return v3

    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-ne v0, v2, :cond_a

    goto :goto_3

    :cond_a
    move v4, v3

    :goto_3
    if-nez v4, :cond_b

    invoke-static {}, LJe/c;->d0()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v0}, Lwp/g;->a()Lwp/g$b;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LH8/k;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, LH8/k;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isBlockSnap snapshotInProgress: getCameraState() : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->x0()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_b
    return v4
.end method

.method private isSuperMoonOn()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->O()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    invoke-static {p0}, Lj9/f;->Q3(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/j;->c1()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lv2/s0;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/s0;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lv2/s0;->a:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isTransitQueueFull()Z
    .locals 3

    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {}, LQ6/X;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LK4/b;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, LK4/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method private isUltraPixelOn()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    const/16 v0, 0xa7

    if-ne p0, v0, :cond_1

    :cond_0
    const-string p0, "off"

    invoke-static {}, Ln8/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private judgeHighQualityQuickShotSupportByTag()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportEnableHighQualityQuickShotByTag"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getTagSupportModeFrontCamera()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getTagSupportModeBackCamera()Z

    move-result p0

    return p0
.end method

.method public static synthetic ke(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->lambda$doLaterReleaseCheckTexture$15()V

    return-void
.end method

.method private static synthetic lambda$announceAccessAfterPictureTakenFinished$21(LQ6/d;)V
    .locals 1

    const v0, 0x7f140046

    invoke-interface {p0, v0}, LQ6/c;->da(I)V

    return-void
.end method

.method private synthetic lambda$appendCacheImageDecoder$16(JII[ILjava/lang/String;Lqh/a;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCacheImageDecoder:Lv6/a;

    move-object p5, p7

    invoke-virtual/range {p0 .. p5}, Lv6/a;->a(JIILqh/a;)V

    return-void
.end method

.method private lambda$appendCacheImageDecoder$17()V
    .locals 6

    const-string v0, "Camera2Module"

    const-string v1, "[WTP]CacheImageDecoder#init: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lv6/a;

    invoke-direct {v1}, Lv6/a;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/Camera2Module;->mCacheImageDecoder:Lv6/a;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "CacheImageDecoder"

    const-string v5, "init"

    invoke-static {v4, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v1, Lv6/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Cache Image already init"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mCacheImageDecoder:Lv6/a;

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mAnchorPreviewCb:Lj9/a$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, Lv6/a;->h:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/camera/module/v;

    invoke-direct {v2, p0}, Lcom/android/camera/module/v;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {v1, v2}, Lj9/a;->x0(Lcom/android/camera/module/v;)V

    :cond_1
    const-string p0, "[WTP]CacheImageDecoder#init: X"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$doAttach$34(LRh/r;)V
    .locals 1

    invoke-virtual {p0}, LRh/r;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LRh/r;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvr/z;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LRh/r;->i()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvr/z;->c([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$doLaterReleaseCheckTexture$15()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-interface {v0, p0}, Lcom/android/camera/module/X;->v8(I)V

    return-void
.end method

.method private static synthetic lambda$doShutterLongPressAction$49(LQ6/l1;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f14038e

    const-string v2, "handle_camera_function"

    invoke-interface {p0, v0, v1, v2}, LQ6/l1;->Ue(IILjava/lang/String;)V

    return-void
.end method

.method private lambda$generateDecoderParams$18()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDebugInfo$51(LQ6/t0;)[Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->G()Landroid/util/Size;

    move-result-object p0

    invoke-interface {p1, p0}, LQ6/t0;->Sm(Landroid/util/Size;)[Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getHandGestureDecoderFactory$0()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, LK2/e;->y()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LK2/e;->B()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/m;->P()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LK2/e;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LK2/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getPictureInfo$52(Lqh/f;LQ6/q;)V
    .locals 0

    invoke-interface {p1, p0}, LQ6/q;->setCaptureTime(Lqh/f;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$56(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$57(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private lambda$handleMessage$58(Landroid/os/Message;LQ6/C;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    move-object v0, p0

    check-cast v0, Lj6/a;

    iget v0, v0, Lj6/a;->c:I

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->h:I

    add-int/2addr v0, p0

    rem-int/lit16 v0, v0, 0x168

    if-ltz v0, :cond_0

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 v0, v0, 0x168

    add-int/lit16 v0, v0, 0x168

    :goto_0
    rsub-int p0, v0, 0x168

    rem-int/lit16 p0, p0, 0x168

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p2, p1, p0}, LQ6/C;->d5(II)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$59(LQ6/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/d;->Ro(Z)V

    return-void
.end method

.method private synthetic lambda$handleZslSoundAndAnim$7()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Camera2Module"

    const-string/jumbo v3, "takePicture play sound when up"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->playCameraSound(I)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->animateCapture()V

    return-void
.end method

.method private static synthetic lambda$hidePostCaptureAlert$54(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/t0;->ka(Z)V

    invoke-interface {p0, v0}, LQ6/t0;->Bk(Z)V

    return-void
.end method

.method private static synthetic lambda$hidePostCaptureAlert$55(LQ6/W0;)V
    .locals 0

    invoke-interface {p0}, LQ6/W0;->ef()V

    invoke-interface {p0}, LQ6/W0;->n9()V

    invoke-interface {p0}, LQ6/W0;->ib()V

    return-void
.end method

.method private static synthetic lambda$isTransitQueueFull$12(Ljava/util/concurrent/atomic/AtomicBoolean;LQ6/X;)V
    .locals 0

    invoke-interface {p1}, LQ6/X;->isTransitQueueFull()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static synthetic lambda$multiCapture$1(LQ6/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/d;->Mk(Z)Z

    return-void
.end method

.method private synthetic lambda$notifyFirstFrameArrived$36()V
    .locals 1

    sget-object v0, Le2/m;->e:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method private lambda$onButtonStatusFocused$8(Lqh/a;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onButtonStatusFocused: capture down time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v1

    iget-wide v1, v1, Ll6/h;->z:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Module"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v0

    iget-wide v2, v0, Ll6/h;->z:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    monitor-enter p1

    :try_start_0
    iget v0, p1, Lqh/a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    monitor-enter p1

    :try_start_1
    iget v0, p1, Lqh/a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "onButtonStatusFocused: button status focusing"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onButtonStatusFocused: reset button status"

    invoke-static {v1, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj9/a;->w0(Lqh/a;)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object p1

    iput-wide v4, p1, Ll6/h;->z:J

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lqh/a;

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    return-void
.end method

.method private synthetic lambda$onCameraOpened$35()V
    .locals 1

    sget-object v0, Le2/m;->a:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method private static synthetic lambda$onCaptureCompleted$22()V
    .locals 3

    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC3/f;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LC3/f;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onCaptureCompleted$23(LQ6/w0;)V
    .locals 1

    sget-object v0, Le2/h;->f:Le2/h;

    invoke-interface {p0, v0}, LQ6/w0;->onShot(Le2/h;)V

    return-void
.end method

.method private static synthetic lambda$onCaptureCompleted$24()V
    .locals 3

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/r1;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LF1/r1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private lambda$onFlashReady$9(Ljava/lang/Runnable;)V
    .locals 6

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/E0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/E0;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v1}, Lj9/a;->B()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->c()Lj9/e;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lv2/E0;->h(Landroid/hardware/camera2/CaptureResult;Lj9/e;)V

    iget-object v3, v0, Lv2/E0;->b:Lha/e;

    iget v3, v3, Lha/e;->c:I

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mNeedDelaySoundForCapture:Z

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Ll6/z;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getSuperNightCbImpl()Ll6/L;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v2}, Ll6/L;->a(IZZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ll6/z;->l(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lv2/E0;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mNeedDelaySoundForCapture:Z

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getPreviewSnapParam()Lj9/H1$a;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v4}, Ll6/z;->h(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;Z)V

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mNeedDelaySoundForCapture:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->playCameraSound(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/m;->T(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    const-string v1, "Camera2Module"

    if-eqz v0, :cond_5

    iget v0, v0, Ll6/n;->D:I

    const v3, 0x48454946

    if-ne v0, v3, :cond_5

    const-string v0, "onFlashReady : Reset format for for night live shot!"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    const/16 v3, 0x100

    iput v3, v0, Lj9/i0;->X:I

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getPreviewSnapParam()Lj9/H1$a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput v3, v0, Lj9/H1$a;->m:I

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v0}, Lj9/i0;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->K0()Lj9/h0;

    move-result-object v3

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v3}, Lj9/i0;->b()Ljava/lang/String;

    sget-object v3, Lk7/K;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lav/j;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    const-string v3, ""

    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "MV"

    if-nez v4, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onFlashReady : Update image name for night live shot. title = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x16

    invoke-static {v3, v1}, LPh/h;->l(I[Ljava/lang/Object;)V

    const-string v1, ".jpg"

    invoke-static {v0, v1}, Lk7/K;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isParallel()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isRefuseOffer()Z

    move-result p0

    invoke-virtual {v1, v0, v3, p0, v2}, Lj9/h0;->W(Ljava/lang/String;ZZZ)V

    :cond_9
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$onPictureTakenFinished$20(Landroid/os/Handler;)V
    .locals 1

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private lambda$onPreviewPixelsRead$19([BII)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAnchorPreviewCb:Lj9/a$a;

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p2, p3, p1}, Lj9/a$a;->c(II[B)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic lambda$onShutter$26(Lj9/E1;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    sget-object v0, Ltu/c;->a:Ltu/c;

    iget-boolean p1, p1, Lj9/E1;->f:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lru/k;->k(Ltu/c;[Ljava/lang/Object;)V

    return-void
.end method

.method private lambda$onShutter$27()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {p0}, Lj9/i0;->b()Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onShutter$28(Lj9/E1;)V
    .locals 1

    iget-boolean v0, p1, Lj9/E1;->c:Z

    iget-boolean p1, p1, Lj9/E1;->d:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/module/Camera2Module;->playSoundOrReadPixel(ZZ)V

    return-void
.end method

.method private lambda$onShutter$29()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {p0}, Lj9/i0;->b()Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onShutter$30(Lj9/E1;)V
    .locals 0

    iget-boolean p1, p1, Lj9/E1;->f:Z

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/module/PhotoBase;->playSoundNoPreviewThumbnail(Z)V

    return-void
.end method

.method private static synthetic lambda$onSingleTapUp$40(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/t0;->Wp(Z)V

    return-void
.end method

.method private lambda$onTiltShiftSwitched$41(ZLQ6/t0;)V
    .locals 3

    invoke-interface {p2}, LQ6/t0;->Dn()V

    const/4 v0, 0x2

    const/4 v1, 0x5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    invoke-interface {p2}, LQ6/t0;->U9()V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/D;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/D;

    iget-boolean v1, v0, Lv2/D;->f:Z

    if-eqz v1, :cond_0

    xor-int/lit8 p0, p1, 0x1

    invoke-interface {p2, p0}, LQ6/t0;->la(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActualCameraId()I

    move-result p0

    invoke-static {v2, p0, v1}, Lv2/D;->z(IILj9/e;)Z

    move-result p0

    iput-boolean p0, v0, Lv2/D;->f:Z

    if-eqz p0, :cond_1

    xor-int/lit8 p0, p1, 0x1

    invoke-interface {p2, p0}, LQ6/t0;->la(Z)V

    :cond_1
    :goto_0
    invoke-interface {p2}, LQ6/t0;->V6()V

    return-void
.end method

.method private static synthetic lambda$performKeyClicked$43(ZLQ6/d;)V
    .locals 0

    invoke-interface {p1, p0}, LQ6/d;->W9(Z)V

    return-void
.end method

.method private static synthetic lambda$performKeyClicked$44(LQ6/K0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/K0;->Aj(Z)Z

    return-void
.end method

.method private static synthetic lambda$performKeyClicked$45(Landroid/view/KeyEvent;LQ6/L;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p1, p0}, LQ6/L;->O5(Landroid/view/InputEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$performKeyClicked$46(LQ6/w0;)V
    .locals 1

    sget-object v0, Le2/h;->b:Le2/h;

    invoke-interface {p0, v0}, LQ6/w0;->onShot(Le2/h;)V

    return-void
.end method

.method private static synthetic lambda$performKeyClicked$47(LQ6/X;)V
    .locals 1

    const/16 v0, 0x14

    invoke-interface {p0, v0}, LQ6/X;->S3(I)V

    return-void
.end method

.method private static synthetic lambda$performKeyClicked$48(Landroid/view/KeyEvent;LQ6/L;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p1, p0}, LQ6/L;->O5(Landroid/view/InputEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$performMiHandlePressed$50(Landroid/view/KeyEvent;LQ6/L;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p1, p0}, LQ6/L;->Db(Landroid/view/KeyEvent;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$playCameraSound$10(LQ6/X;)V
    .locals 1

    const/16 v0, 0xbe

    invoke-interface {p0, v0}, LQ6/X;->S3(I)V

    return-void
.end method

.method private synthetic lambda$playCameraSound$11(LQ6/j1;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0}, Lj6/f;->S()I

    move-result p0

    const/16 v0, 0x8c

    invoke-interface {p1, v0}, LQ6/j1;->Um(I)I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x78

    if-eq p0, p1, :cond_0

    const/16 p1, 0xa0

    if-eq p0, p1, :cond_0

    const/16 p1, 0x64

    if-eq p0, p1, :cond_0

    invoke-static {}, LQ6/X;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/p;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, LEs/p;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$prepareForKeyCamera$42(Landroid/view/KeyEvent;Landroid/view/KeyEvent$DispatcherState;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private lambda$prepareNormalCapture$2(LQ6/X;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->c:I

    const/4 v0, -0x1

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, LQ6/X;->E4(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$prepareNormalCapture$3(LQ6/t0;)[Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->G()Landroid/util/Size;

    move-result-object p0

    invoke-interface {p1, p0}, LQ6/t0;->Sm(Landroid/util/Size;)[Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$prepareNormalCapture$4()V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->playCameraSound(I)V

    return-void
.end method

.method private lambda$setFrameAvailable$13()V
    .locals 13

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "ParallelManager"

    const-string v2, "initParallelSession: E"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lv6/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Camera2Module;

    if-nez v1, :cond_0

    const-string v0, "ParallelManager"

    const-string v1, "initParallelSession: module is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    iget-object v2, v0, Lv6/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Camera2Module;

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/camera/module/Camera2Module;->getRawCallbackType()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/camera/module/Camera2Module;->getGraphDescriptorBean()Lcom/xiaomi/engine/GraphDescriptorBean;

    move-result-object v6

    const-string v7, "ParallelManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "configParallelSession: algorithmOutputSize = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v9, v9, Ll6/n;->A:Landroid/util/Size;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    const-string v10, "ParallelManager"

    const-string v11, "configParallelSession:         pictureSize = "

    invoke-static {v7, v8, v9, v11}, LF1/Q;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v8

    invoke-interface {v8}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, "ParallelManager"

    const-string v11, "configParallelSession:          outputSize = "

    invoke-static {v10, v7, v8, v11}, LF1/Q;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v8, v8, Ll6/n;->B:Landroid/util/Size;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    const-string v10, "ParallelManager"

    const-string v11, "configParallelSession:        outputFormat = "

    invoke-static {v9, v7, v8, v11}, LF1/Q;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget v8, v8, Ll6/n;->D:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v10, v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, v2, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    invoke-virtual {v2}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v8

    invoke-interface {v8}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v8

    iget-object v9, v7, Ll6/n;->A:Landroid/util/Size;

    if-eqz v9, :cond_2

    move-object v8, v9

    :cond_2
    sget-boolean v9, LJe/c;->k:Z

    sget-object v9, LJe/c$b;->a:LJe/c;

    invoke-virtual {v9}, LJe/c;->u2()Z

    move-result v10

    const/4 v11, 0x1

    const/16 v12, 0x23

    if-nez v10, :cond_3

    invoke-virtual {v9}, LJe/c;->c2()V

    goto :goto_0

    :cond_3
    const/16 v9, 0xa3

    if-ne v4, v9, :cond_4

    if-eqz v8, :cond_4

    new-instance v4, Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v7, v12, v6}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    goto/16 :goto_2

    :cond_4
    :goto_0
    and-int/lit8 v9, v5, 0x28

    if-eqz v9, :cond_5

    move v9, v11

    goto :goto_1

    :cond_5
    move v9, v3

    :goto_1
    const/16 v10, 0x20

    if-eqz v9, :cond_7

    iget-object v9, v7, Ll6/n;->y:Landroid/util/Size;

    if-eqz v9, :cond_7

    const/16 v5, 0xad

    if-ne v4, v5, :cond_6

    new-instance v4, Lcom/xiaomi/engine/BufferFormat;

    iget-object v5, v7, Ll6/n;->y:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v7, v7, Ll6/n;->y:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v7, v10, v6}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    goto :goto_2

    :cond_6
    new-instance v4, Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v7, v12, v6}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    goto :goto_2

    :cond_7
    and-int/lit8 v4, v5, 0x10

    if-eqz v4, :cond_9

    iget-object v4, v7, Ll6/n;->y:Landroid/util/Size;

    if-eqz v4, :cond_9

    new-instance v4, Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-direct {v4, v5, v9, v10, v6}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    invoke-virtual {v4, v12}, Lcom/xiaomi/engine/BufferFormat;->setBufferFormat(I)V

    const-string v5, "configParallelSession: override output format to YUV_420_888"

    new-array v6, v3, [Ljava/lang/Object;

    const-string v9, "LoadStreamSizeBase"

    invoke-static {v9, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v7, Ll6/n;->y:Landroid/util/Size;

    invoke-virtual {v8, v5}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v5, v7, Ll6/n;->y:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "configParallelSession: input size: "

    const-string v8, ", output size: "

    invoke-static {v7, v5, v8, v6}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v9, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-static {}, Lcom/android/camera/data/data/r;->e()V

    goto :goto_2

    :cond_9
    new-instance v4, Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v7, v12, v6}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    :goto_2
    iget-object v5, v2, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v5, v5, Ll6/n;->z:Landroid/util/Size;

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v2, v2, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v2, v2, Ll6/n;->z:Landroid/util/Size;

    invoke-virtual {v4, v2}, Lcom/xiaomi/engine/BufferFormat;->setDepthBufferSize(Landroid/util/Size;)V

    :cond_a
    const-string v2, "ParallelManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "configParallelSession: bufferFormat is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v2}, Lwp/g;->a()Lwp/g$b;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2, v4}, Lwp/g$b;->b(Lcom/xiaomi/engine/BufferFormat;)V

    iget-object v2, v0, Lv6/b;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-boolean v11, v0, Lv6/b;->b:Z

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_b
    :goto_3
    sget-object v2, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v2}, Lwp/g;->a()Lwp/g$b;

    move-result-object v2

    if-nez v2, :cond_c

    const-string v0, "ParallelManager"

    const-string v1, "initParallelSession: X. Null binder!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    iget-boolean v4, v0, Lv6/b;->g:Z

    if-nez v4, :cond_d

    invoke-virtual {v0}, Lv6/b;->b()V

    :cond_d
    invoke-virtual {v1}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v0

    invoke-virtual {v2, v0}, Lwp/g$b;->q(Lk7/i;)V

    :cond_e
    iget-object v0, v1, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v0, v0, Ll6/n;->B:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v4, v1, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v4, v4, Ll6/n;->B:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-object v1, v1, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget v1, v1, Ll6/n;->D:I

    invoke-static {}, Lwp/g;->b()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v5

    invoke-interface {v5, v0, v4, v1}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->setOutputPictureSpec(III)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->n0()V

    invoke-virtual {v2}, Lwp/g$b;->r()V

    const-string v0, "ParallelManager"

    const-string v1, "initParallelSession: X"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkIntentAndCapture()V

    return-void
.end method

.method private static lambda$setOrientationParameter$39(Ljava/lang/ref/Reference;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->c:I

    invoke-virtual {v0, p0}, Lj9/h0;->B(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setRemoteCapture$53(LQ6/j1;)V
    .locals 1

    const/4 v0, -0x1

    invoke-interface {p0, v0}, LQ6/j1;->Lb(I)V

    return-void
.end method

.method private static synthetic lambda$showPostCaptureAlert$31(LQ6/t0;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/t0;->ka(Z)V

    const/4 v1, 0x7

    invoke-interface {p0, v1}, LQ6/t0;->ug(I)V

    invoke-interface {p0, v0}, LQ6/t0;->Bk(Z)V

    return-void
.end method

.method private synthetic lambda$showPostCaptureAlert$32(LQ6/W0;)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LF1/N0;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, LF1/N0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private lambda$showPostCaptureAlert$33(Ljava/util/Optional;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/X;->Te()LF8/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    iget-boolean v0, v0, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->n:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, LF8/c;->setSuspendShutterVisibility(I)V

    :cond_1
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ6/j0;

    invoke-interface {p0}, LQ6/j0;->g()V

    return-void
.end method

.method private static synthetic lambda$startNormalCapture$5()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$startNormalCapture$6(Landroidx/fragment/app/l;)V
    .locals 11

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1412b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f140610

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, LCs/e;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, LCs/e;-><init>(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Lvr/w;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/h;

    return-void
.end method

.method private static synthetic lambda$tryRemoveCountDownMessage$14(LQ6/l1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/l1;->Fi(Z)V

    return-void
.end method

.method private static synthetic lambda$updateDecodePreview$37(Lgi/f;Landroid/media/Image;Lj9/a;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lgi/f;->b(Landroid/media/Image;)V

    const/4 p0, 0x1

    return p0
.end method

.method private lambda$updateDecodePreview$38(Lj9/a;)V
    .locals 4

    const-string v0, "Camera2Module"

    const-string v1, "[WTP] mCacheImageDecoder#startDecode E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mCacheImageDecoder:Lv6/a;

    if-eqz v1, :cond_1

    const-string v1, "[WTP] mCacheImageDecoder#startDecode startDecode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mCacheImageDecoder:Lv6/a;

    iget-object v1, v1, Lv6/a;->k:LGs/j;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lj9/a;->e1(Lj9/a$k;LGs/j;)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCacheImageDecoder:Lv6/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    new-array v1, p1, [Ljava/lang/Object;

    const-string v2, "CacheImageDecoder"

    const-string/jumbo v3, "start decode"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lv6/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "cache image start decode success"

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-string p0, "[WTP] mCacheImageDecoder#startDecode X"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateEnablePreviewThumbnail$25(Lcom/android/camera/module/X;)V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->enabledPreviewThumbnail()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/camera/module/X;->Xi(Z)V

    return-void
.end method

.method public static synthetic li(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$setOrientationParameter$39(Ljava/lang/ref/Reference;)V

    return-void
.end method

.method public static synthetic lk(Landroid/view/Window;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$handleMessage$56(Landroid/view/Window;)V

    return-void
.end method

.method public static synthetic lp()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/Camera2Module;->lambda$onCaptureCompleted$22()V

    return-void
.end method

.method public static synthetic nd(Lcom/android/camera/module/Camera2Module;Lqh/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$onButtonStatusFocused$8(Lqh/a;)V

    return-void
.end method

.method private needZslSound(Lj9/H1;)Z
    .locals 3

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p1, Lj9/H1;->c:Z

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v1, p1, Lj9/H1;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p1, Lj9/H1;->f:I

    if-eqz v1, :cond_1

    iget v1, p1, Lj9/H1;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-boolean p1, p1, Lj9/H1;->c:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mNeedDelaySoundForCapture:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p0}, Ll6/z;->f(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return p1
.end method

.method public static synthetic nk(Lcom/android/camera/module/Camera2Module;LQ6/X;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$prepareNormalCapture$2(LQ6/X;)V

    return-void
.end method

.method public static synthetic nn(LQ6/w0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$onCaptureCompleted$23(LQ6/w0;)V

    return-void
.end method

.method public static synthetic of(LQ6/w0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$performKeyClicked$46(LQ6/w0;)V

    return-void
.end method

.method private onCameraOpened()V
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->d0()Z

    move-result v2

    const/16 v3, 0xab

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v5, 0xa3

    if-eq v2, v5, :cond_0

    const/16 v5, 0xcd

    if-ne v2, v5, :cond_2

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    if-nez v1, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Lj9/e;->g(Z)I

    move-result v5

    :goto_0
    invoke-virtual {v2, v5}, Lcom/xiaomi/camera/effect/EffectController;->W(I)V

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    if-ne v2, v3, :cond_4

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    if-nez v1, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Lj9/e;->g(Z)I

    move-result v5

    :goto_1
    invoke-virtual {v2, v5}, Lcom/xiaomi/camera/effect/EffectController;->W(I)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/xiaomi/camera/effect/EffectController;->W(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->initializeFocusManager()V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->initZoomMapControllerIfNeeded()V

    new-instance v2, Lcom/android/camera/module/A;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/module/A;-><init>(Lcom/android/camera/module/Camera2Module;I)V

    const-string/jumbo v5, "updatePreferenceTrampoline(CAMERA_TYPES_INIT)"

    invoke-static {v2, v5}, Lvr/a0;->b(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->boostCameraForCapture()V

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v2, v2, Lv6/b;->e:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    if-ne v2, v3, :cond_8

    iget-object v2, v1, Lj9/e;->l0:[B

    if-nez v2, :cond_6

    sget-object v2, Lga/w0;->G:Lga/D0;

    invoke-virtual {v2}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Lga/E0;->a:I

    iget-object v5, v1, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v5, v2, v3}, Lga/E0;->i(Landroid/hardware/camera2/CameraCharacteristics;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v1, Lj9/e;->l0:[B

    goto :goto_3

    :cond_5
    new-array v2, v4, [B

    iput-object v2, v1, Lj9/e;->l0:[B

    :cond_6
    :goto_3
    iget-object v2, v1, Lj9/e;->l0:[B

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    iget v3, v3, Lj9/a;->a:I

    invoke-direct {p0, v3}, Lcom/android/camera/module/Camera2Module;->getCalibrationDataFileName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_8

    array-length v5, v2

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    array-length v5, v2

    invoke-static {v5, v3, v2}, Lur/b;->a(ILjava/lang/String;[B)Z

    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    invoke-virtual {v2}, Lv6/b;->b()V

    :cond_9
    invoke-static {v1}, Lj9/f;->T1(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {v1}, Lj9/f;->k(Lj9/e;)I

    move-result v2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v3

    invoke-virtual {v3}, Lu6/f;->v()I

    move-result v3

    if-ne v2, v3, :cond_16

    iget-object v2, v1, Lj9/e;->M2:[Lha/r;

    if-nez v2, :cond_10

    sget-object v2, Lga/w0;->d1:Lga/D0;

    invoke-virtual {v2}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "CameraCapabilities"

    if-eqz v3, :cond_f

    const v3, 0xdead

    iget-object v6, v1, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v6, v2, v3}, Lga/E0;->i(Landroid/hardware/camera2/CameraCharacteristics;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_c

    array-length v3, v2

    const/16 v6, 0x8

    if-ge v3, v6, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    new-array v8, v7, [B

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v9, Lha/r;

    invoke-direct {v9, v6, v7, v8}, Lha/r;-><init>(II[B)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lha/r;

    move v6, v4

    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lha/r;

    aput-object v7, v2, v6

    add-int/2addr v6, v0

    goto :goto_6

    :cond_c
    :goto_7
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-nez v2, :cond_d

    move v2, v4

    goto :goto_8

    :cond_d
    array-length v2, v2

    :goto_8
    const-string v3, "Expected size should be 8, but got: "

    invoke-static {v2, v3}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v6, "SatFusionCalibrationData"

    invoke-static {v6, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :cond_e
    iput-object v2, v1, Lj9/e;->M2:[Lha/r;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSatFusionCalibrationDataArray: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lj9/e;->M2:[Lha/r;

    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v5, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_f
    const-string v2, "getSatFusionCalibrationInfoArray: tag undefined"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v5, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v4, [Lha/r;

    iput-object v2, v1, Lj9/e;->M2:[Lha/r;

    :cond_10
    :goto_9
    iget-object v1, v1, Lj9/e;->M2:[Lha/r;

    if-eqz v1, :cond_16

    array-length v2, v1

    if-nez v2, :cond_11

    goto :goto_d

    :cond_11
    array-length v2, v1

    :goto_a
    if-ge v4, v2, :cond_16

    aget-object v3, v1, v4

    iget v5, v3, Lha/r;->a:I

    const/16 v6, 0x14

    if-eq v5, v6, :cond_14

    const/16 v6, 0x15

    if-eq v5, v6, :cond_13

    const/high16 v6, 0x140000

    if-eq v5, v6, :cond_14

    const v6, 0x140017

    if-eq v5, v6, :cond_12

    const/high16 v6, 0x150000

    if-eq v5, v6, :cond_13

    const v6, 0x170014

    if-eq v5, v6, :cond_12

    const-string v6, "back_dual_camera_caldata_"

    invoke-static {v5, v6}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_12
    const-string v6, "back_dual_camera_caldata_tut.bin"

    goto :goto_b

    :cond_13
    const-string v6, "back_dual_camera_caldata_wu.bin"

    goto :goto_b

    :cond_14
    const-string v6, "back_dual_camera_caldata.bin"

    :goto_b
    iget-object v7, v3, Lha/r;->c:[B

    iget v3, v3, Lha/r;->b:I

    invoke-static {v3, v6, v7}, Lur/b;->a(ILjava/lang/String;[B)Z

    move-result v7

    const-string v8, "CalibrationUtil"

    if-eqz v7, :cond_15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v5, v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "Sat fusion calibration data successfully saved: %d@%s@%d"

    invoke-static {v8, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v5, v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "Sat fusion calibration data not saved: %d@%s@%d"

    invoke-static {v8, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_c
    add-int/2addr v4, v0

    goto :goto_a

    :cond_16
    :goto_d
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needKeepCoverView()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->startPreviewOnCameraOpened()V

    :cond_17
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateAutoHibernation()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/Camera2Module;->mOnResumeTime:J

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static bridge synthetic oq(Lcom/android/camera/module/Camera2Module;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    return p0
.end method

.method private performMiHandlePressed(ILandroid/view/KeyEvent;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMiHandle"
        type = 0x0
    .end annotation

    invoke-static {}, LQ6/L;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/z;

    invoke-direct {v1, p2}, Lcom/android/camera/module/z;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/module/Camera2Module;->doKeyShutterLongPress(ILandroid/view/KeyEvent;Z)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->doKeyShutterSnap(ILandroid/view/KeyEvent;)V

    :cond_1
    return-void
.end method

.method public static synthetic pf(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->lambda$setFrameAvailable$13()V

    return-void
.end method

.method private prepareForKeyCamera(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getWindowOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LI4/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LI4/g;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LH8/x;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LH8/x;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LH8/y;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, LH8/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private prepareNoParallelQuickShotStatus(Lj9/H1$a;)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, p1}, Lj6/j;->a1(Lj9/H1$a;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v2, v2, Lv6/b;->e:Z

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->d0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getFixTimeFrontCamera()J

    move-result-wide v2

    long-to-int p1, v2

    iput p1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getFixTimeBackCamera()J

    move-result-wide v2

    long-to-int p1, v2

    iput p1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    :goto_2
    iget p1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    if-gtz p1, :cond_3

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Y()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    :cond_3
    iget p1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "prepareNoParallelQuickShotStatus: send MSG_FIXED_SNAP_SHOT_DELAY_TIME "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Camera2Module"

    invoke-static {v2, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    return-void

    :cond_4
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    return-void
.end method

.method private prepareQuickShotStatus(Lj9/H1$a;)V
    .locals 8

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->b1()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->isNeedFixedShotTime(Lj9/H1$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean p1, p1, Ll6/t;->d:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->d0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getFixTimeFrontCamera()J

    move-result-wide v4

    long-to-int p1, v4

    iput p1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getFixTimeBackCamera()J

    move-result-wide v4

    long-to-int p1, v4

    iput p1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    :goto_0
    iget p1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    if-gtz p1, :cond_2

    iget-object p1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Y()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    iput-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    iput-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mIsQuickShotEnabled:Z

    iput-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotBurstShot:Z

    iput-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mIsMfHdrQuickShotEnabled:Z

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lj9/a;->t()Lj9/i0;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    iput-boolean v4, v1, Lj9/i0;->h3:Z

    invoke-virtual {p1}, Lj9/a;->t()Lj9/i0;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/camera/module/Camera2Module;->mIsQuickShotEnabled:Z

    iput-boolean v4, v1, Lj9/i0;->i3:Z

    invoke-virtual {p1}, Lj9/a;->t()Lj9/i0;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/camera/module/Camera2Module;->mIsMfHdrQuickShotEnabled:Z

    iput-boolean v4, v1, Lj9/i0;->k2:Z

    invoke-virtual {v0}, Lj9/e;->Z()I

    move-result v0

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lj9/a;->x()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v4, v0, Lj9/i0;->X0:Z

    if-eq v4, v1, :cond_4

    iput-boolean v1, v0, Lj9/i0;->X0:Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v4, v0, Lj9/i0;->X0:Z

    if-eqz v4, :cond_4

    iput-boolean v3, v0, Lj9/i0;->X0:Z

    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "fixShotTime: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Camera2Module"

    invoke-static {v5, v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    if-eq v0, v2, :cond_5

    iput-boolean v1, p1, Lj9/a;->n:Z

    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    int-to-long v6, v2

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":send MSG_FIXED_SHOT2SHOT_TIME_OUT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iput-boolean v3, p1, Lj9/a;->n:Z

    :cond_6
    :goto_3
    invoke-virtual {p1}, Lj9/a;->t()Lj9/i0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isQuickShotMultiFrameToZsl()Z

    move-result p0

    iput-boolean p0, p1, Lj9/i0;->q3:Z

    :cond_7
    return-void
.end method

.method private processQuickViewParam(LRh/r;Lj9/p0;)V
    .locals 9

    iget-object p2, p2, Lj9/p0;->a:Lj9/E1;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-boolean v2, p2, Lj9/E1;->a:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    iget-boolean v3, p2, Lj9/E1;->b:Z

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz p2, :cond_2

    iget-boolean v4, p2, Lj9/E1;->c:Z

    if-eqz v4, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-eqz p2, :cond_3

    iget-boolean v5, p2, Lj9/E1;->d:Z

    if-eqz v5, :cond_3

    move v5, v0

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    invoke-virtual {p0, v2, v3}, Lcom/android/camera/module/Camera2Module;->isNeedThumbnail(ZZ)Z

    move-result v6

    iget-object v7, p1, LRh/r;->b:LRh/a;

    iput-boolean v6, v7, LRh/a;->i:Z

    const-string v6, "onCaptureStart: quickShotAnimation: "

    const-string v7, ", anchorFrame: "

    const-string v8, ", doAnchor: "

    invoke-static {v6, v7, v2, v3, v8}, LF1/Q2;->g(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", doAnchorPixel: "

    invoke-static {v3, v4, v6, v5}, LF1/B2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Camera2Module"

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->enabledPreviewThumbnail()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->b1()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/android/camera/data/data/m;->O0(Z)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->enabledPreviewThumbnail()Z

    move-result v2

    if-nez v2, :cond_6

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->s4()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2}, Lv2/D0;->G()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, p1, LRh/r;->g:LRh/s;

    iget p1, p1, LRh/s;->a:I

    if-gt p1, v0, :cond_6

    :cond_5
    const-string/jumbo p1, "single capture shutter"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/module/Camera2Module;->onShutter(Lj9/E1;I)V

    invoke-static {v0}, Lcom/android/camera/data/data/m;->O0(Z)V

    :cond_6
    return-void
.end method

.method public static synthetic qg(Lcom/android/camera/module/Camera2Module;Lj9/E1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$onShutter$30(Lj9/E1;)V

    return-void
.end method

.method public static synthetic qh(Lcom/android/camera/module/Camera2Module;LQ6/W0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$showPostCaptureAlert$32(LQ6/W0;)V

    return-void
.end method

.method public static synthetic qk(Lcom/android/camera/module/Camera2Module;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/Camera2Module;->lambda$onPreviewPixelsRead$19([BII)V

    return-void
.end method

.method private recordCurrentCameraInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    :goto_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/android/camera/module/Camera2Module;->mFocalLengths:[F

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mApertures:[F

    return-void
.end method

.method private reportBlockSnapTimeoutDfs(J)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v2, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v2}, Lu2/Q;->E(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AppMoudle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Rear"

    goto :goto_0

    :cond_0
    const-string v1, "Front"

    :goto_0
    const-string v2, "Facing"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->getActualCameraId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "RoleId"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, LK7/l;->n:Ljava/lang/String;

    const-string v1, "Reason"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "CAPTURE_BLOCK"

    const-string v1, "Event"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "LookbackTime"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x36d63de0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p0, p1, p2, v0}, LJ2/e;->c(IJLjava/util/HashMap;)V

    return-void
.end method

.method private resetHandGesture()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/data/w;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/X;->F5()Lgi/f;

    move-result-object p0

    const-class v0, Lfi/d;

    invoke-virtual {p0, v0}, Lgi/f;->g(Ljava/lang/Class;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Camera2Module"

    const-string v1, "resetHandGesture: done"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private resetSuperMoonStatus()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->Q3(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getSuperMoonIconStatus()I

    move-result p0

    iget v1, v0, Lj9/i0;->N1:I

    if-eq v1, p0, :cond_0

    iput p0, v0, Lj9/i0;->N1:I

    :cond_0
    return-void
.end method

.method public static synthetic se(LQ6/j1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$setRemoteCapture$53(LQ6/j1;)V

    return-void
.end method

.method private sendDelayTimeMessage()V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getFixTimeFrontCamera()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getFixTimeBackCamera()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x4b

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeMessageSent:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    const-string p0, "HQQuickShot : send MSG_FIXED_SNAP_SHOT_DELAY_TIME "

    invoke-static {v0, v1, p0}, LHs/a;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Camera2Module"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    return-void
.end method

.method private setPictureOrientation()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object p0

    iget-boolean p0, p0, LF1/i4;->d:Z

    check-cast v0, Lj6/a;

    iget p0, v0, Lj6/a;->c:I

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    :cond_0
    iput p0, v0, Lj6/a;->p:I

    :cond_1
    return-void
.end method

.method private setupPhotoSaveInterceptors(LRh/r;)V
    .locals 2

    new-instance v0, LZp/a;

    invoke-direct {v0}, LZp/f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->appendPhotoSaveInterceptors(LZp/a;)V

    iput-object v0, p1, LRh/r;->m:LZp/c;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setupPhotoSaveInterceptors: img="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, LRh/r;->k:LRh/A;

    iget-object v1, v1, LRh/A;->g:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chainHash="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", parallelTaskDataHash="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Camera2Module"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private shouldApplyEdgeWideLDC()Z
    .locals 3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v1, "pref_camera_edge_wide_ldc_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->supportEdgeWideLDC()Z

    move-result p0

    return p0
.end method

.method private shouldDoMultiFrameCapture(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->c()Lj9/e;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->V()Lj9/a;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lj9/a;->t()Lj9/i0;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget v7, v4, Lj9/i0;->h0:I

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    sget-boolean v8, LJe/c;->k:Z

    sget-object v8, LJe/c$b;->a:LJe/c;

    iget-object v9, v8, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v9}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->g()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    iget-object v7, v0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v7}, LF1/E3;->a()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v6

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v5

    :goto_3
    const-string v9, "Camera2Module"

    if-eqz v7, :cond_5

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    sget-object v10, Lga/C0;->Q:Lga/D0;

    const v11, 0xbabe

    invoke-static {v1, v10, v11}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Byte;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "preview trigger hdr "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v9, v11, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    if-eqz v10, :cond_4

    iput-boolean v6, v2, Lj9/H1$a;->a:Z

    iget-object v10, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-static {v10, v2, v1, v4}, Lj9/J1;->d(Lj6/j;Lj9/H1$a;Landroid/hardware/camera2/CaptureResult;Lj9/i0;)I

    move-result v1

    iput v1, v2, Lj9/H1$a;->b:I

    goto :goto_4

    :cond_4
    move v7, v5

    :cond_5
    :goto_4
    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v1}, Lj9/a;->t()Lj9/i0;

    move-result-object v1

    iput v5, v1, Lj9/i0;->c3:I

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v1}, Lj9/a;->t()Lj9/i0;

    move-result-object v1

    iput v5, v1, Lj9/i0;->d3:I

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    iget-object v4, v8, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    if-eqz v1, :cond_6

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a8()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v1}, Lj9/a;->W()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v3}, Lj9/f;->u1(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v0, "shouldDoMultiFrameCapture: return false in case of flash"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_6
    iget v1, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v10, 0xa7

    if-ne v1, v10, :cond_7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    iget-boolean v1, v0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithSR:Z

    if-eqz v1, :cond_8

    const-string/jumbo v0, "shouldDoMultiFrameCapture: SR is enabled for upscaling image"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_8
    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a7()Z

    move-result v1

    const/16 v10, 0xab

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-boolean v1, v1, Lj9/i0;->v1:Z

    if-nez v1, :cond_d

    iget v1, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    if-ne v1, v10, :cond_9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v1, v5

    goto :goto_5

    :cond_9
    const/16 v11, 0xba

    if-ne v1, v11, :cond_a

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_a
    move v1, v6

    :goto_5
    iget-boolean v11, v0, Lcom/android/camera/module/Camera2Module;->mHHTDisabled:Z

    if-nez v11, :cond_c

    iget-object v11, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v11}, Lj6/j;->d0()Z

    move-result v11

    if-nez v11, :cond_b

    if-eqz v1, :cond_c

    :cond_b
    move v1, v6

    goto :goto_6

    :cond_c
    move v1, v5

    :goto_6
    const-string/jumbo v11, "shouldDoMultiFrameCapture: isShouldDoHHT="

    const-string v12, ", isHHTDisabled="

    invoke-static {v11, v12, v1}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v0, Lcom/android/camera/module/Camera2Module;->mHHTDisabled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v9, v11, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_d
    move v1, v5

    :goto_7
    iget-object v11, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v11}, Lj6/j;->V()Lj9/a;

    move-result-object v11

    if-eqz v11, :cond_e

    iget-object v11, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v11}, Lj6/j;->K0()Lj9/h0;

    move-result-object v11

    iget-object v11, v11, Lj9/h0;->a:Lj9/i0;

    iget-boolean v11, v11, Lj9/i0;->v1:Z

    if-eqz v11, :cond_e

    move v11, v6

    goto :goto_8

    :cond_e
    move v11, v5

    :goto_8
    iget-object v12, v0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v12}, LF1/E3;->b()Z

    move-result v12

    if-eqz v12, :cond_f

    if-nez v11, :cond_f

    move v12, v6

    goto :goto_9

    :cond_f
    move v12, v5

    :goto_9
    iget-object v13, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v13}, Lj6/j;->V()Lj9/a;

    move-result-object v13

    invoke-virtual {v0, v13, v3}, Lcom/android/camera/module/Camera2Module;->checkMotionStatus(Lj9/a;Lj9/e;)Z

    move-result v13

    const-string/jumbo v14, "shouldDoMultiFrameCapture: shouldDoSR: "

    const-string v15, ", isMotionExisted: "

    const-string v10, ", isSuperNightSePriority: "

    invoke-static {v14, v15, v12, v13, v10}, LF1/Q2;->g(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {v9, v10, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v10, 0xa3

    if-eqz v13, :cond_1b

    if-eqz v12, :cond_10

    iget v12, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v12}, Lcom/android/camera/data/data/j;->c0(I)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/camera/module/Camera2Module;->mMFNRReplaceSRWhenMotion:Z

    xor-int/2addr v12, v6

    invoke-virtual {v0, v6}, Lcom/android/camera/module/Camera2Module;->updateMfnr(Z)V

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "shouldDoMultiFrameCapture: shouldDoSR\uff1a"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {v9, v13, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iget v13, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    sget-boolean v14, LJe/d;->i:Z

    if-eqz v14, :cond_12

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v15

    invoke-virtual {v15}, Lu2/Q;->S()Z

    move-result v15

    if-nez v15, :cond_12

    :cond_11
    move v10, v5

    goto :goto_c

    :cond_12
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v15

    invoke-virtual {v15}, Lu6/f;->P()Lj9/e;

    move-result-object v15

    if-eqz v15, :cond_13

    invoke-virtual {v15}, Lj9/e;->h()I

    move-result v16

    and-int/lit8 v17, v16, 0x2

    if-eqz v17, :cond_13

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_13

    if-ne v13, v10, :cond_13

    move/from16 v16, v6

    goto :goto_a

    :cond_13
    move/from16 v16, v5

    :goto_a
    if-eqz v15, :cond_14

    invoke-virtual {v15}, Lj9/e;->h()I

    move-result v15

    and-int/lit16 v10, v15, 0x200

    if-eqz v10, :cond_14

    and-int/lit16 v10, v15, 0x100

    if-eqz v10, :cond_14

    const/16 v10, 0xab

    if-ne v13, v10, :cond_14

    move v10, v6

    goto :goto_b

    :cond_14
    move v10, v5

    :goto_b
    if-nez v16, :cond_15

    if-eqz v10, :cond_11

    :cond_15
    move v10, v6

    :goto_c
    iget-object v13, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v13}, Lj6/j;->V()Lj9/a;

    move-result-object v13

    invoke-virtual {v13}, Lj9/a;->t()Lj9/i0;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "shouldDoMultiFrameCapture: isMotionCapture\uff1a"

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " shouldDoSR: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v15, v5, [Ljava/lang/Object;

    invoke-static {v9, v13, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v14, :cond_1d

    if-nez v12, :cond_1d

    const/4 v13, 0x3

    const/4 v14, 0x4

    if-eqz v10, :cond_19

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->needMixQuickShot()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->R5()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_d

    :cond_16
    const-string/jumbo v0, "shouldDoMultiFrameCapture\uff1ause mfnr replace AIS"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_17
    :goto_d
    if-eqz v7, :cond_18

    iget v1, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/data/data/j;->r0(I)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v0, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object v0

    iput v14, v0, Lj9/i0;->c3:I

    const-string/jumbo v0, "shouldDoMultiFrameCapture\uff1aselect AIS2 in HDR & motion scenario"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_18
    iget-object v0, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object v0

    iput v13, v0, Lj9/i0;->c3:I

    const-string/jumbo v0, "shouldDoMultiFrameCapture\uff1aselect AIS1 in motion scenario"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_19
    iget-object v15, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v15}, Lj6/j;->c()Lj9/e;

    move-result-object v15

    invoke-static {v15}, Lcom/android/camera/data/data/j;->T0(Lj9/e;)Z

    move-result v15

    if-eqz v15, :cond_1a

    iget-object v0, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object v0

    iput v14, v0, Lj9/i0;->c3:I

    const-string/jumbo v0, "shouldDoMultiFrameCapture: select AIS2 in device that supports AIS2"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_1a
    iget-object v14, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v14}, Lj6/j;->c()Lj9/e;

    move-result-object v14

    invoke-static {v14}, Lcom/android/camera/data/data/j;->R0(Lj9/e;)Z

    move-result v14

    if-eqz v14, :cond_1d

    iget-object v0, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object v0

    iput v13, v0, Lj9/i0;->c3:I

    const-string/jumbo v0, "shouldDoMultiFrameCapture: select AIS1 in device that supports AIS1"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_1b
    iget-boolean v10, v0, Lcom/android/camera/module/Camera2Module;->mMFNRReplaceSRWhenMotion:Z

    if-eqz v10, :cond_1c

    iput-boolean v5, v0, Lcom/android/camera/module/Camera2Module;->mMFNRReplaceSRWhenMotion:Z

    invoke-virtual {v0, v6}, Lcom/android/camera/module/Camera2Module;->updateMfnr(Z)V

    :cond_1c
    move v10, v5

    :cond_1d
    iget v13, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v14, 0xad

    if-ne v13, v14, :cond_20

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->d0()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Y6()Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_1e
    if-nez v2, :cond_22

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K6()Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_1f
    move v2, v6

    goto :goto_e

    :cond_20
    const/16 v4, 0xa3

    if-eqz v11, :cond_21

    if-ne v13, v4, :cond_21

    if-eqz v2, :cond_21

    invoke-static {v3}, Lj9/f;->r4(Lj9/e;)Z

    move-result v3

    iput-boolean v3, v2, Lj9/H1$a;->P:Z

    move v2, v3

    goto :goto_e

    :cond_21
    if-ne v13, v4, :cond_22

    if-eqz v2, :cond_22

    invoke-virtual {v8}, LJe/c;->y2()V

    iput-boolean v5, v0, Lcom/android/camera/module/Camera2Module;->mShouldDoMFNR:Z

    :cond_22
    move v2, v5

    :goto_e
    if-nez v7, :cond_24

    if-nez v1, :cond_24

    iget-boolean v1, v0, Lcom/android/camera/module/Camera2Module;->mShouldDoMFNR:Z

    if-nez v1, :cond_24

    if-nez v12, :cond_24

    if-nez v2, :cond_24

    if-eqz v10, :cond_23

    goto :goto_f

    :cond_23
    move v6, v5

    :cond_24
    :goto_f
    const-string/jumbo v1, "shouldDoMultiFrameCapture: "

    const-string v2, " | "

    invoke-static {v1, v2, v6}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, v0, Lcom/android/camera/module/Camera2Module;->mShouldDoMFNR:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method private shouldEnableMfHdrQuickShot()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportMfHdrQuickShot"
        type = 0x0
    .end annotation

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->l2()V

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "Camera2Module"

    const-string/jumbo v2, "shouldEnableMfHdrQuickShot: no supportMfHdrQuickShot"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method private shouldResetStatusToIdle(JZ)Z
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lj9/a;->S(J)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lj9/a;->Y(J)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mMultiSnapStatus: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v0, v0, Ll6/t;->d:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mBlockQuickShot: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->needBlockQuickShot()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isQuickShot: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isHighQualityQuickShot: "

    const-string v4, ", isParallel = "

    invoke-static {p2, p1, v0, v3, v4}, LF1/u2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v0, v0, Lv6/b;->e:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mFixedShot2ShotTime = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v4, "Camera2Module"

    invoke-static {v4, p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LJe/c;->d0()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean p2, p2, Ll6/t;->d:Z

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needKeepCoverView()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean p2, p2, Ll6/t;->d:Z

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->needBlockQuickShot()Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_6

    if-nez p1, :cond_6

    if-nez v3, :cond_6

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getPreviewSnapParam()Lj9/H1$a;

    move-result-object p2

    invoke-interface {p1, p2}, Lj6/j;->a1(Lj9/H1$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsNeedWaitMtkQuickShotReturned:Z

    if-nez p1, :cond_6

    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getPreviewSnapParam()Lj9/H1$a;

    invoke-interface {p1}, Lj6/j;->v()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-boolean p1, LJe/d;->l:Z

    if-nez p1, :cond_6

    :cond_4
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->W0()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p1, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->G6()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    :goto_2
    return v2

    :cond_6
    return v1
.end method

.method private static shouldShotOneByOne(Lj9/a;)Z
    .locals 1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lj6/k;->a(Lj9/a;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private showPostCaptureAlert()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isCaptureAlertShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->q0()Lu6/q;

    move-result-object v1

    invoke-interface {v1}, Lu6/q;->a()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->stopFaceDetection(Z)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->P()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->pausePreview()V

    :cond_1
    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/D0;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, LF1/D0;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/W0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LGn/f;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, LGn/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/b0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LEs/f;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, LEs/f;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/j0;->a()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v2, LWc/l;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v1}, LWc/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "Camera2Module"

    const-string/jumbo v1, "showPostCaptureAlert: lost BaseDelegate"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic sj(Lcom/android/camera/module/Camera2Module;Lj9/E1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$onShutter$28(Lj9/E1;)V

    return-void
.end method

.method private startPreviewOnCameraOpened()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Camera2Module"

    const-string v1, "Failed to start preview"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic tk()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/android/camera/module/Camera2Module;->lambda$getHandGestureDecoderFactory$0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic tp(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->lambda$onShutter$27()V

    return-void
.end method

.method private static trackFluencyCaptureStart()V
    .locals 3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmq/s;->d(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FluencyTrackProxy.onCaptureStart error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Camera2Module"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic uh(Lcom/android/camera/module/Camera2Module;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$onFlashReady$9(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unregisterSensor()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    invoke-virtual {v0, v1}, LF1/i4;->m(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    invoke-virtual {v0, v1}, LF1/i4;->n(Z)V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/Camera2Module;->mIsShowLyingDirectHintStatus:I

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private updateAiShutter()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiShutter"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/data/data/j;->e1(Lj9/e;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->k0(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsAiShutterOn:Z

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/w;->N(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsAiShutterOn:Z

    invoke-static {v0}, Lcom/android/camera/data/data/j;->h(Z)B

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    iget-byte v1, p0, Lj9/i0;->f2:B

    if-eq v0, v1, :cond_2

    iput-byte v0, p0, Lj9/i0;->f2:B

    :cond_2
    :goto_1
    return-void
.end method

.method private updateAlgorithmName()V
    .locals 4

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->i2(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v2, Lv2/i0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/i0;

    iget-object v0, v0, Lv2/i0;->a:Lrh/a;

    iget v0, v0, Lrh/a;->i:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->q(Lj9/e;)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->K0()Lj9/h0;

    move-result-object v2

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-boolean v2, v2, Lj9/i0;->h1:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->O()Z

    move-result v1

    const/16 v2, 0xff

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_1
    const/16 v3, 0x80

    if-eqz v1, :cond_2

    if-lt v0, v3, :cond_3

    if-ge v0, v2, :cond_3

    goto :goto_1

    :cond_2
    if-ltz v0, :cond_3

    if-ge v0, v3, :cond_3

    :goto_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->O()Z

    move-result v1

    invoke-static {v0, v1}, LO0/A;->y(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    :goto_2
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->P()I

    move-result v0

    if-lez v0, :cond_4

    const-string/jumbo v0, "soft-portrait-enc"

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "soft-portrait"

    goto :goto_3

    :cond_5
    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    if-ne v2, v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->O()Z

    move-result v1

    invoke-static {v0, v1}, LO0/A;->y(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    const-string v0, "portrait"

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    iget v0, v0, LF1/E3;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const-string v0, ""

    goto :goto_3

    :cond_8
    const-string v0, "HDR"

    :goto_3
    const-string/jumbo v1, "updateAlgorithmName:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Camera2Module"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAlgorithmName:Ljava/lang/String;

    return-void
.end method

.method private updateAlgorithmPreviewFormat(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "updateAlgorithmPreviewFormat, device is null. "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {p1, p0}, LF1/r0;->g(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Camera2Module"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lj9/a;->t0(I)V

    return-void
.end method

.method private updateAlgorithmPreviewSize(Landroid/util/Size;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "updateAlgorithmPreviewSize, device is null. "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {p1, p0}, LF1/r0;->g(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Camera2Module"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lj9/a;->u0(Landroid/util/Size;)V

    return-void
.end method

.method private updateAnchorFramePreview()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->supportAnchorFrameAsThumbnail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    return v0
.end method

.method private updateCameraConfig()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v1, v1, Ll6/n;->z:Landroid/util/Size;

    :goto_0
    iget-object v2, v0, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->k:Landroid/util/Size;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v0, Lj9/i0;->k:Landroid/util/Size;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, v0, Lj9/i0;->k:Landroid/util/Size;

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getRawCallbackType()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/Camera2Module;->mRawCallbackType:I

    const-string v1, "Camera2Module"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v3, v3, Ll6/n;->y:Landroid/util/Size;

    if-nez v3, :cond_2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "startPreview: force reset raw callback type from "

    const-string v4, " to 0"

    invoke-static {v0, v3, v4}, LF1/E;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v2, p0, Lcom/android/camera/module/Camera2Module;->mRawCallbackType:I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startPreview: set SensorRawImageSize with "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v3, v3, Ll6/n;->y:Landroid/util/Size;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v3, v3, Ll6/n;->y:Landroid/util/Size;

    iget-object v4, v0, Lj9/h0;->a:Lj9/i0;

    iget-object v4, v4, Lj9/i0;->n:Landroid/util/Size;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v0, v3}, Lj9/i0;->C(Landroid/util/Size;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v0, v0, Lv6/b;->e:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v3, 0xab

    if-ne v0, v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startPreview: set SubPictureSize with "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v3, v3, Ll6/n;->v:Landroid/util/Size;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v1, v1, Ll6/n;->v:Landroid/util/Size;

    iget-object v2, v0, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->o:Landroid/util/Size;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v0, v1}, Lj9/i0;->F(Landroid/util/Size;)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v0, v0, Ll6/n;->w:Landroid/util/Size;

    if-eqz v0, :cond_5

    invoke-static {v0}, LEw/i;->h(Landroid/util/Size;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v0, v0, Ll6/n;->x:Landroid/util/Size;

    if-eqz v0, :cond_5

    invoke-static {v0}, LEw/i;->h(Landroid/util/Size;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v1, v1, Ll6/n;->w:Landroid/util/Size;

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iput-object v1, v0, Lj9/i0;->z:Landroid/util/Size;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v1, v1, Ll6/n;->x:Landroid/util/Size;

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iput-object v1, v0, Lj9/i0;->A:Landroid/util/Size;

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateConfigQcfa()V

    return-void
.end method

.method private updateCaptureHint()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPixelModeCustomSize"
        type = 0x2
    .end annotation

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-virtual {v0}, Lv2/D0;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    sget-byte v0, Lga/A0;->L3:B

    iput-byte v0, p0, Lj9/i0;->n3:B

    :cond_0
    return-void
.end method

.method private updateConfigQcfa()V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedQcfa"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v1, v1, Lv6/b;->e:Z

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->Y0()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lvr/E;->b(Lj9/e;ZZ)Z

    move-result v0

    const-string v1, "[QCFA]startPreview: set qcfa enable "

    invoke-static {v1, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Camera2Module"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iput-boolean v0, v1, Lj9/i0;->u1:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startPreview: set binning picture size with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v1, v1, Ll6/n;->i:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v1, v1, Ll6/n;->i:Landroid/util/Size;

    iget-object v3, v0, Lj9/h0;->a:Lj9/i0;

    iget-object v3, v3, Lj9/i0;->l:Landroid/util/Size;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget-object v3, v0, Lj9/i0;->l:Landroid/util/Size;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v1, v0, Lj9/i0;->l:Landroid/util/Size;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "startPreview: set binning picture size(1/16) with null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lj9/h0;->a:Lj9/i0;

    iget-object p0, p0, Lj9/i0;->m:Landroid/util/Size;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lj9/h0;->a:Lj9/i0;

    iget-object v0, p0, Lj9/i0;->m:Landroid/util/Size;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v1, p0, Lj9/i0;->m:Landroid/util/Size;

    :cond_1
    return-void
.end method

.method private updateDecodePreview()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj9/a;->A()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateDecodePreview: PreviewDecodeManager AlgorithmPreviewSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->K0()Lj9/h0;

    move-result-object v2

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->h:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Camera2Module"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/X;->F5()Lgi/f;

    move-result-object v1

    new-instance v2, LD5/d;

    invoke-direct {v2, v1}, LD5/d;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lj9/a;->e1(Lj9/a$k;LGs/j;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v2, LF1/B3;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0, v0}, LF1/B3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_1
    return-void
.end method

.method private updateEdgeWideLDC()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->shouldApplyEdgeWideLDC()Z

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setEdgeWideLDC: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraConfigManager"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v2, v1, Lj9/i0;->H0:Z

    if-eq v2, p0, :cond_0

    iput-boolean p0, v1, Lj9/i0;->H0:Z

    invoke-virtual {v0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lj9/u;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lj9/u;-><init>(Lj9/h0;I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private updateEvValue()V
    .locals 3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/D0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/D0;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->supportEvOverlap()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lr2/D0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/D;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/D;

    iget-boolean v2, v1, Lv2/D;->f:Z

    if-eqz v2, :cond_1

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v1, v0}, Lr2/D0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lr2/D0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->u(Lj9/e;)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-interface {v2, v0}, Lj6/j;->q(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lj6/j;->Y(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->setEvValue()V

    return-void
.end method

.method private updateFocusMode()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->q0()Lu6/q;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getFocusMode()I

    move-result v2

    invoke-interface {v1, v2}, Lu6/q;->d(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2, v1}, Lj6/j;->d(I)V

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/m;->m()I

    move-result v1

    invoke-static {v0}, Lj9/f;->N(Lj9/e;)F

    move-result v2

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v3}, Lcom/android/camera/module/Y;->l(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/Z;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/Z;

    sget v1, Lcom/android/camera/module/Y;->a:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    sget-boolean v3, LJe/d;->i:Z

    const/high16 v4, 0x447a0000    # 1000.0f

    if-eqz v3, :cond_1

    invoke-static {v0}, Lj9/f;->I(Lj9/e;)F

    move-result v0

    sub-float/2addr v2, v0

    int-to-float v1, v1

    mul-float/2addr v2, v1

    div-float/2addr v2, v4

    add-float v1, v2, v0

    goto :goto_0

    :cond_1
    int-to-float v0, v1

    mul-float/2addr v2, v0

    div-float v1, v2, v4

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v1}, Lj9/h0;->I(F)V

    :cond_2
    return-void
.end method

.method private updateHdrDegradeMFNR()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->z()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHdrDegradeMFNREnabled:Z

    :cond_0
    return-void
.end method

.method private updateJpegQuality()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/module/PhotoBase;->getPhotoQuality(Z)I

    move-result p0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v0, p0}, Lj9/i0;->t(I)V

    return-void
.end method

.method private updateMotionCapture()V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionCaptureTip"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->u1()I

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/data/data/w;->N(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/G;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/G;

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v1, v2}, Lr2/G;->isSwitchOn(I)Z

    move-result v2

    invoke-static {}, Lyh/a;->b()Z

    move-result v3

    const-string/jumbo v4, "updateMotionCapture enable: "

    const-string v5, ", cloudMotionCaptureCompletelyClose: "

    invoke-static {v4, v5, v2, v3}, LF1/P;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "Camera2Module"

    invoke-static {v7, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v4, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v6, 0xab

    const/4 v7, 0x2

    if-ne v4, v6, :cond_1

    iget-boolean v1, v1, Lr2/G;->b:Z

    if-eqz v1, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v5}, Lj9/h0;->c(B)V

    return-void

    :cond_1
    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    const/4 v1, 0x4

    if-eqz v2, :cond_4

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->u1()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->s0(Lj9/e;)Landroid/util/Range;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v2

    if-eqz v0, :cond_2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v5, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v7

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->u1()I

    move-result v0

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    :goto_2
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_7

    goto :goto_3

    :cond_7
    move v7, v5

    goto :goto_3

    :cond_8
    const/4 v7, -0x1

    :goto_3
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v7}, Lj9/h0;->c(B)V

    return-void
.end method

.method private updateOutputSize(Lj9/p0;ZLandroid/util/Size;)Landroid/util/Size;
    .locals 7

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LJe/c;->b1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIn3OrMoreSatMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, LJe/d;->i:Z

    if-nez v0, :cond_2

    :cond_1
    move-object v2, p3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v0, v0, Ll6/n;->A:Landroid/util/Size;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, p3}, Lj6/j;->e(Landroid/util/Size;)V

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget v3, p1, Lj9/p0;->c:I

    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    iget v5, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/4 v6, 0x0

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Ll6/n;->p(Landroid/util/Size;ILj6/j;IZ)V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object p1, p1, Ll6/n;->B:Landroid/util/Size;

    if-nez p1, :cond_4

    move-object p3, v2

    goto :goto_1

    :cond_4
    move-object p3, p1

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCaptureStart: outputSize = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2Module"

    invoke-static {v0, p1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->c()Lj9/e;

    move-result-object p1

    invoke-static {p1}, Lj9/f;->s4(Lj9/e;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->c()Lj9/e;

    move-result-object p1

    invoke-static {p1}, Lj9/f;->i1(Lj9/e;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->D()I

    move-result p1

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_6

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->D()I

    move-result p0

    const/16 p1, 0x10e

    if-ne p0, p1, :cond_7

    :cond_6
    new-instance p0, Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    const-string p1, "onCaptureStart: switched outputSize: "

    invoke-static {p1, p0}, LF1/S;->a(Ljava/lang/String;Landroid/util/Size;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_7
    return-object p3
.end method

.method private updateParallelTaskData(LRh/r;Lj9/p0;)V
    .locals 12

    iget-object v0, p2, Lj9/p0;->a:Lj9/E1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lj9/E1;->a:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p1, LRh/r;->b:LRh/a;

    iget v6, v3, LRh/a;->f:I

    iget v3, p2, Lj9/p0;->d:I

    if-lez v3, :cond_1

    :goto_1
    move v7, v3

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/camera/module/Camera2Module;->getPictureFormatSuitableForShot(I)I

    move-result v3

    goto :goto_1

    :goto_2
    invoke-static {v7}, LQa/a;->c(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v4, "HEIC"

    goto :goto_3

    :cond_2
    const-string v4, "JPEG"

    :goto_3
    const-string/jumbo v5, "updateParallelTaskData: outputFormat = "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Camera2Module"

    invoke-static {v5, v4}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p2, Lj9/p0;->b:Landroid/util/Size;

    invoke-direct {p0, p2, v3, v8}, Lcom/android/camera/module/Camera2Module;->updateOutputSize(Lj9/p0;ZLandroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    invoke-virtual {p0, v3}, Lcom/xiaomi/camera/module/PhotoBase;->getPhotoQuality(Z)I

    move-result v10

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateParallelTaskData: outputQuality = "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v3, 0xaf

    if-ne p2, v3, :cond_3

    sget-boolean p2, LJe/c;->k:Z

    sget-object p2, LJe/c$b;->a:LJe/c;

    iget-object p2, p2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->v5()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/android/camera/module/Camera2Module$e;

    invoke-direct {p2, p0}, Lcom/android/camera/module/Camera2Module$e;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object p2, p1, LRh/r;->q:Lcom/android/camera/module/Camera2Module$e;

    :cond_3
    iget-object p2, p1, LRh/r;->g:LRh/s;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/camera/module/Camera2Module$d;

    invoke-direct {v0, p0}, Lcom/android/camera/module/Camera2Module$d;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v0, p2, LRh/s;->r:LRh/r$a;

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->W2(Lj9/e;)Z

    move-result v0

    iget-object v11, p1, LRh/r;->j:LRh/y;

    iput-boolean v0, v11, LRh/y;->h:Z

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-object v0, v0, Lv6/b;->f:Ll6/r;

    iput-object v0, p2, LRh/s;->d:LRh/x;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/module/Camera2Module;->getParallelTaskDataParameter(LRh/r;IILandroid/util/Size;Landroid/util/Size;I)LRh/r;

    invoke-static {}, Lcom/android/camera/data/data/m;->f0()Z

    move-result p0

    iput-boolean p0, v11, LRh/y;->a:Z

    iget p0, v4, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object p1, v5, LRh/r;->b:LRh/a;

    iput p0, p1, LRh/a;->g:I

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p1, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->D4()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, v4, Lcom/android/camera/module/r;->mModuleIndex:I

    if-ne p1, v3, :cond_5

    move p1, v2

    goto :goto_4

    :cond_5
    move p1, v1

    :goto_4
    invoke-static {}, Lcom/android/camera/data/data/w;->K()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    move p1, v2

    goto :goto_5

    :cond_6
    move p1, v1

    :goto_5
    iget-object v0, v5, LRh/r;->l:LRh/C;

    iput-boolean p1, v0, LRh/C;->d:Z

    invoke-virtual {v4}, Lcom/android/camera/module/r;->isWCGOn()Z

    move-result p1

    iput-boolean p1, v0, LRh/C;->c:Z

    invoke-virtual {v4}, Lcom/android/camera/module/r;->isWCGOn()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, LMb/d;->c()[B

    move-result-object p1

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    :goto_6
    invoke-virtual {v5, p1}, LRh/r;->A([B)V

    iget-object p1, v4, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->c()Lj9/e;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, v4, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->c()Lj9/e;

    move-result-object p1

    invoke-static {p1}, Lj9/f;->Z0(Lj9/e;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, v4, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->c()Lj9/e;

    move-result-object p1

    invoke-static {p1}, Lj9/f;->k(Lj9/e;)I

    move-result p1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->v()I

    move-result v0

    if-ne p1, v0, :cond_8

    move p1, v2

    goto :goto_7

    :cond_8
    move p1, v1

    :goto_7
    iget-object v0, v5, LRh/r;->d:LRh/f;

    iput-boolean p1, v0, LRh/f;->d:Z

    invoke-virtual {v5, v1}, LRh/r;->B(Z)V

    invoke-virtual {p0}, LJe/c;->p2()Z

    move-result p0

    if-eqz p0, :cond_9

    iput-boolean v2, p2, LRh/s;->h:Z

    :cond_9
    invoke-virtual {v4}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->a1()F

    move-result p0

    iput p0, p2, LRh/s;->m:F

    invoke-direct {v4, v5}, Lcom/android/camera/module/Camera2Module;->setupPhotoSaveInterceptors(LRh/r;)V

    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    const-string v2, "Camera2Module"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v0, "updatePictureAndPreviewSize: cameraDevice is null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v4, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v5, 0xab

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->updatePortraitBokehRole()V

    :cond_1
    new-instance v4, Ll6/n$a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getRawCallbackType()I

    move-result v6

    iput v6, v4, Ll6/n$a;->a:I

    invoke-virtual {v0, v6}, Lcom/android/camera/module/Camera2Module;->requireRaw(I)Z

    move-result v6

    iput-boolean v6, v4, Ll6/n$a;->b:Z

    iget-object v6, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v6, v6, Lv6/b;->e:Z

    iput-boolean v6, v4, Ll6/n$a;->c:Z

    iget v6, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    iput v6, v4, Ll6/n$a;->d:I

    iget v6, v0, Lcom/android/camera/module/r;->mOperatingMode:I

    iput v6, v4, Ll6/n$a;->e:I

    invoke-virtual {v0}, Lcom/android/camera/module/r;->isHeicPreferred()Z

    move-result v6

    iput-boolean v6, v4, Ll6/n$a;->f:Z

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isCupCaptureEnabled()Z

    move-result v6

    iput-boolean v6, v4, Ll6/n$a;->g:Z

    iget-object v6, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v6}, Lj6/j;->Y0()Z

    move-result v6

    iput-boolean v6, v4, Ll6/n$a;->i:Z

    iget-object v6, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v6, v6, Lv6/b;->e:Z

    if-nez v6, :cond_3

    sget-boolean v6, LJe/c;->k:Z

    sget-object v6, LJe/c$b;->a:LJe/c;

    invoke-virtual {v6}, LJe/c;->b1()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Lvr/E;->a(Z)I

    move-result v6

    iput v6, v4, Ll6/n$a;->h:I

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v6

    check-cast v6, Lj6/a;

    iget-boolean v6, v6, Lj6/a;->i:Z

    iput-boolean v6, v4, Ll6/n$a;->j:Z

    invoke-virtual {v1}, Lj9/a;->E()[I

    move-result-object v6

    iput-object v6, v4, Ll6/n$a;->k:[I

    iget-object v6, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v6}, Lj6/j;->c()Lj9/e;

    move-result-object v6

    iput-object v6, v4, Ll6/n$a;->p:Lj9/e;

    iget-object v6, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v6}, Lj6/j;->o0()I

    move-result v6

    iput v6, v4, Ll6/n$a;->l:I

    iget-object v6, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v6}, Lj6/j;->getActualCameraId()I

    move-result v6

    iput v6, v4, Ll6/n$a;->u:I

    iget-object v6, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x2

    iput v6, v4, Ll6/n$a;->m:I

    invoke-virtual {v1}, Lj9/a;->R()Z

    move-result v8

    iput-boolean v8, v4, Ll6/n$a;->n:Z

    iget-object v8, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v8}, Lj6/j;->d0()Z

    move-result v8

    iput-boolean v8, v4, Ll6/n$a;->o:Z

    iput-object v1, v4, Ll6/n$a;->q:Lj9/a;

    iget-object v8, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v8}, Lj6/j;->K0()Lj9/h0;

    move-result-object v8

    iget-object v8, v8, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v8}, Lj9/i0;->c()Z

    move-result v8

    iput-boolean v8, v4, Ll6/n$a;->r:Z

    iget-object v8, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v8}, Lj6/j;->z()Z

    move-result v8

    iput-boolean v8, v4, Ll6/n$a;->s:Z

    invoke-virtual {v1}, Lj9/a;->l()I

    move-result v1

    iput v1, v4, Ll6/n$a;->t:I

    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iput-object v4, v1, Ll6/n;->E:Ll6/n$a;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v1, Ll6/n;->F:Ljava/util/HashMap;

    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-boolean v8, v4, Ll6/n$a;->f:Z

    if-eqz v8, :cond_4

    const v8, 0x48454946

    goto :goto_2

    :cond_4
    const/16 v8, 0x100

    :goto_2
    iput v8, v1, Ll6/n;->D:I

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v8}, LQa/a;->c(I)Z

    move-result v1

    const-string v8, "JPEG"

    const-string v10, "HEIC"

    if-eqz v1, :cond_5

    move-object v1, v10

    goto :goto_3

    :cond_5
    move-object v1, v8

    :goto_3
    const-string/jumbo v11, "updateSize: use "

    const-string v12, " as preferred output image format"

    invoke-static {v11, v1, v12}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    invoke-virtual {v1}, Ll6/n;->i()V

    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v11, v1, Ll6/n;->E:Ll6/n$a;

    iget-object v11, v11, Ll6/n$a;->p:Lj9/e;

    iget-object v12, v1, Ll6/n;->F:Ljava/util/HashMap;

    sget-object v13, Ll6/n$b;->a:Ll6/n$b;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    iget v14, v11, Lj9/e;->b:I

    const-class v15, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v11, v14, v15}, Lj9/e;->j0(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v18

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-static {v14, v12, v11}, Lcom/android/camera/data/data/j;->M(IILj9/e;)F

    move-result v12

    invoke-static {v11}, Lj9/f;->E3(Lj9/e;)Z

    move-result v14

    if-eqz v14, :cond_6

    iget-object v14, v1, Ll6/n;->E:Ll6/n$a;

    iget v14, v14, Ll6/n$a;->d:I

    invoke-static {v11, v12, v14}, Lj9/f;->b0(Lj9/e;FI)Landroid/util/Size;

    move-result-object v14

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    :goto_4
    iget-object v7, v1, Ll6/n;->E:Ll6/n$a;

    iget-object v15, v7, Ll6/n$a;->p:Lj9/e;

    iget v9, v7, Ll6/n$a;->d:I

    const-string v3, "2"

    const-class v6, Lr2/m;

    const/16 v5, 0xa3

    move-object/from16 v24, v8

    const/16 v8, 0x4b8

    if-eq v9, v5, :cond_10

    const/16 v5, 0xab

    if-eq v9, v5, :cond_a

    const/16 v5, 0xad

    if-eq v9, v5, :cond_9

    const/16 v5, 0xe7

    if-eq v9, v5, :cond_9

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v5

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/m;

    invoke-virtual {v5, v9}, Lr2/m;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v1, Ll6/n;->E:Ll6/n$a;

    iget v5, v3, Ll6/n$a;->d:I

    iget v3, v3, Ll6/n$a;->l:I

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v8, v8}, Landroid/util/Size;-><init>(II)V

    const/16 v21, 0x0

    move/from16 v17, v3

    move/from16 v16, v5

    move-object/from16 v20, v6

    move/from16 v19, v12

    invoke-static/range {v16 .. v21}, Ll6/n;->f(IILjava/util/List;FLandroid/util/Size;Z)Landroid/util/Size;

    move-result-object v14

    :cond_7
    :goto_5
    move-object/from16 v3, v18

    move/from16 v5, v19

    goto/16 :goto_7

    :cond_8
    move/from16 v19, v12

    iget-object v3, v1, Ll6/n;->E:Ll6/n$a;

    iget v5, v3, Ll6/n$a;->d:I

    iget v3, v3, Ll6/n$a;->l:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v17, v3

    move/from16 v16, v5

    invoke-static/range {v16 .. v21}, Ll6/n;->f(IILjava/util/List;FLandroid/util/Size;Z)Landroid/util/Size;

    move-result-object v14

    goto :goto_5

    :cond_9
    move/from16 v19, v12

    if-nez v14, :cond_7

    iget v3, v7, Ll6/n$a;->l:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v17, v3

    move/from16 v16, v9

    invoke-static/range {v16 .. v21}, Ll6/n;->f(IILjava/util/List;FLandroid/util/Size;Z)Landroid/util/Size;

    move-result-object v14

    goto :goto_5

    :cond_a
    move/from16 v19, v12

    if-nez v14, :cond_7

    invoke-static {v15}, Lj9/f;->i2(Lj9/e;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v23, 0xab

    invoke-static/range {v23 .. v23}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v3

    invoke-static/range {v23 .. v23}, Lcom/android/camera/data/data/m;->u(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Ll6/n;->E:Ll6/n$a;

    iget v6, v6, Ll6/n$a;->d:I

    invoke-static {v6}, Lcom/android/camera/data/data/j;->g1(I)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lj9/f;->n2()Z

    move-result v6

    if-nez v6, :cond_b

    const/4 v6, 0x1

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    :goto_6
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v7

    const-class v8, Lv2/i0;

    invoke-virtual {v7, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv2/i0;

    invoke-virtual {v7, v5, v3, v6}, Lv2/i0;->m(Ljava/lang/String;FZ)Landroid/util/Size;

    move-result-object v14

    if-nez v14, :cond_7

    iget-object v3, v1, Ll6/n;->E:Ll6/n$a;

    iget v5, v3, Ll6/n$a;->d:I

    iget v3, v3, Ll6/n$a;->l:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v17, v3

    move/from16 v16, v5

    invoke-static/range {v16 .. v21}, Ll6/n;->f(IILjava/util/List;FLandroid/util/Size;Z)Landroid/util/Size;

    move-result-object v14

    goto :goto_5

    :cond_c
    move/from16 v3, v19

    invoke-static {v15}, Lj9/f;->D3(Lj9/e;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v3, v15}, Lj9/f;->i(FLj9/e;)Landroid/util/Size;

    move-result-object v14

    :cond_d
    if-nez v14, :cond_f

    iget-object v5, v1, Ll6/n;->E:Ll6/n$a;

    iget-boolean v6, v5, Ll6/n$a;->o:Z

    if-nez v6, :cond_e

    iget v6, v5, Ll6/n$a;->d:I

    iget v5, v5, Ll6/n$a;->l:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v19, v3

    move/from16 v17, v5

    move/from16 v16, v6

    invoke-static/range {v16 .. v21}, Ll6/n;->f(IILjava/util/List;FLandroid/util/Size;Z)Landroid/util/Size;

    move-result-object v14

    goto/16 :goto_5

    :cond_e
    move/from16 v19, v3

    iget v3, v5, Ll6/n$a;->d:I

    iget v5, v5, Ll6/n$a;->l:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v16, v3

    move/from16 v17, v5

    invoke-static/range {v16 .. v21}, Ll6/n;->f(IILjava/util/List;FLandroid/util/Size;Z)Landroid/util/Size;

    move-result-object v14

    goto/16 :goto_5

    :cond_f
    move v5, v3

    move-object/from16 v3, v18

    goto :goto_7

    :cond_10
    move v5, v9

    move/from16 v19, v12

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v7

    invoke-virtual {v7, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/m;

    invoke-virtual {v6, v5}, Lr2/m;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Lcom/android/camera/data/data/m;->S()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v1, Ll6/n;->E:Ll6/n$a;

    iget v5, v3, Ll6/n$a;->d:I

    iget v3, v3, Ll6/n$a;->l:I

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v8, v8}, Landroid/util/Size;-><init>(II)V

    const/16 v21, 0x0

    move/from16 v17, v3

    move/from16 v16, v5

    move-object/from16 v20, v6

    invoke-static/range {v16 .. v21}, Ll6/n;->f(IILjava/util/List;FLandroid/util/Size;Z)Landroid/util/Size;

    move-result-object v14

    goto/16 :goto_5

    :cond_11
    if-eqz v14, :cond_12

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_5

    :cond_12
    iget-object v3, v1, Ll6/n;->E:Ll6/n$a;

    iget v5, v3, Ll6/n$a;->d:I

    iget v3, v3, Ll6/n$a;->l:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v17, v3

    move/from16 v16, v5

    invoke-static/range {v16 .. v21}, Ll6/n;->f(IILjava/util/List;FLandroid/util/Size;Z)Landroid/util/Size;

    move-result-object v14

    goto/16 :goto_5

    :goto_7
    iget-object v6, v1, Ll6/n;->F:Ljava/util/HashMap;

    sget-object v7, Ll6/n$b;->b:Ll6/n$b;

    invoke-virtual {v6, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lj9/f;->y1()Z

    move-result v6

    const-string v7, "LoadStreamSizeBase"

    if-eqz v6, :cond_1f

    iget-object v6, v1, Ll6/n;->E:Ll6/n$a;

    iget v8, v6, Ll6/n$a;->d:I

    const/16 v9, 0xa3

    if-eq v8, v9, :cond_13

    const/16 v9, 0xa8

    if-eq v8, v9, :cond_13

    const/16 v9, 0xe7

    if-eq v8, v9, :cond_13

    const/16 v9, 0xe6

    if-ne v8, v9, :cond_14

    :cond_13
    move-object v12, v10

    goto :goto_9

    :cond_14
    const/16 v9, 0xab

    if-ne v8, v9, :cond_17

    sget v9, LQa/b;->X:I

    const/4 v12, 0x2

    if-ne v9, v12, :cond_16

    move-object v12, v10

    float-to-double v9, v5

    invoke-static {v11, v8, v3, v9, v10}, Ll6/n;->e(Lj9/e;ILjava/util/List;D)Landroid/util/Size;

    move-result-object v6

    if-nez v6, :cond_15

    const-string v6, "getLivePhotoSize, for portrait, do not get limitSize, use preview size: "

    invoke-static {v6, v14}, LF1/S;->a(Ljava/lang/String;Landroid/util/Size;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v7, v6, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v14

    :cond_15
    iget-object v8, v1, Ll6/n;->E:Ll6/n$a;

    invoke-static {v6, v8}, Ll6/n;->c(Landroid/util/Size;Ll6/n$a;)Landroid/util/Size;

    move-result-object v6

    :goto_8
    move-object/from16 v18, v3

    goto/16 :goto_d

    :cond_16
    move-object v12, v10

    invoke-static {v14, v6}, Ll6/n;->c(Landroid/util/Size;Ll6/n$a;)Landroid/util/Size;

    move-result-object v6

    goto :goto_8

    :cond_17
    move-object v12, v10

    move-object/from16 v18, v3

    const/4 v6, 0x0

    goto/16 :goto_d

    :goto_9
    float-to-double v9, v5

    invoke-static {v11, v8, v3, v9, v10}, Ll6/n;->e(Lj9/e;ILjava/util/List;D)Landroid/util/Size;

    move-result-object v6

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v8

    const-class v9, Lv2/d0;

    invoke-virtual {v8, v9}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv2/d0;

    iget-object v9, v1, Ll6/n;->E:Ll6/n$a;

    iget v9, v9, Ll6/n$a;->d:I

    invoke-static {v9}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    move-result-object v10

    iget-object v15, v1, Ll6/n;->E:Ll6/n$a;

    iget v15, v15, Ll6/n$a;->d:I

    invoke-static {v15}, Lcom/android/camera/data/data/j;->A(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10, v15, v5}, Lv2/d0;->n(ILjava/lang/String;Ljava/lang/String;F)Landroid/util/Size;

    move-result-object v8

    if-eqz v8, :cond_18

    move-object v6, v8

    :cond_18
    if-nez v6, :cond_19

    const-string v6, "getLivePhotoSize, do not get limitSize, use preview size: "

    invoke-static {v6, v14}, LF1/S;->a(Ljava/lang/String;Landroid/util/Size;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v7, v6, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v14

    :cond_19
    iget-object v8, v1, Ll6/n;->E:Ll6/n$a;

    invoke-static {v6, v8}, Ll6/n;->c(Landroid/util/Size;Ll6/n$a;)Landroid/util/Size;

    move-result-object v8

    iget-object v9, v1, Ll6/n;->E:Ll6/n$a;

    iget v10, v9, Ll6/n$a;->d:I

    const/16 v15, 0xe7

    if-ne v10, v15, :cond_1c

    iget-object v9, v9, Ll6/n$a;->p:Lj9/e;

    invoke-static {v9}, Lj9/f;->B(Lj9/e;)[Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_1b

    array-length v10, v9

    if-lez v10, :cond_1b

    const v10, 0x3faaaaaa

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move-object v15, v8

    move-object/from16 v16, v9

    float-to-double v8, v10

    const-wide v17, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v8, v8, v17

    if-gez v8, :cond_1a

    new-instance v8, Landroid/util/Size;

    const/16 v22, 0x2

    aget-object v9, v16, v22

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x3

    aget-object v10, v16, v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    goto :goto_a

    :cond_1a
    new-instance v8, Landroid/util/Size;

    const/4 v9, 0x6

    aget-object v9, v16, v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x7

    aget-object v10, v16, v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    goto :goto_a

    :cond_1b
    move-object v15, v8

    const/4 v8, 0x0

    :goto_a
    const-string v9, "getLivePhotoSize, livePhotoUpScaleSize: "

    invoke-static {v9, v8}, LF1/S;->a(Ljava/lang/String;Landroid/util/Size;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v3

    const/4 v10, 0x0

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v7, v9, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v8, :cond_1d

    :goto_b
    move-object v15, v8

    goto :goto_c

    :cond_1c
    move-object/from16 v18, v3

    goto :goto_b

    :cond_1d
    :goto_c
    invoke-static {}, Lcom/android/camera/data/data/m;->S()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {}, Lj9/f;->C()I

    move-result v3

    const/16 v8, 0xfa

    if-ne v3, v8, :cond_1e

    invoke-static {v11}, Lj9/f;->W2(Lj9/e;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v1, v6}, Ll6/n;->l(Landroid/util/Size;)V

    :cond_1e
    move-object v6, v15

    :goto_d
    if-eqz v6, :cond_20

    iget-object v3, v1, Ll6/n;->F:Ljava/util/HashMap;

    sget-object v8, Ll6/n$b;->Q:Ll6/n$b;

    invoke-virtual {v3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "getLivePhotoSize\uff0c videoSize: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v7, v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_1f
    move-object/from16 v18, v3

    move-object v12, v10

    :cond_20
    :goto_e
    iget-object v3, v1, Ll6/n;->E:Ll6/n$a;

    iget v6, v3, Ll6/n$a;->d:I

    const/16 v9, 0xa3

    if-ne v6, v9, :cond_22

    iget-boolean v6, v3, Ll6/n$a;->o:Z

    if-nez v6, :cond_22

    iget-object v3, v3, Ll6/n$a;->p:Lj9/e;

    invoke-static {v3}, Lj9/f;->E3(Lj9/e;)Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, v1, Ll6/n;->E:Ll6/n$a;

    iget v3, v3, Ll6/n$a;->l:I

    const/16 v21, 0x1

    const/16 v16, 0xa3

    const/16 v20, 0x0

    move/from16 v17, v3

    move/from16 v19, v5

    invoke-static/range {v16 .. v21}, Ll6/n;->f(IILjava/util/List;FLandroid/util/Size;Z)Landroid/util/Size;

    move-result-object v3

    move-object/from16 v5, v18

    move/from16 v6, v19

    if-eqz v3, :cond_21

    move-object v14, v3

    :cond_21
    float-to-double v8, v6

    invoke-virtual {v1, v5, v14, v8, v9}, Ll6/n;->m(Ljava/util/List;Landroid/util/Size;D)V

    goto :goto_f

    :cond_22
    move v6, v5

    move-object/from16 v5, v18

    float-to-double v8, v6

    invoke-virtual {v1, v5, v14, v8, v9}, Ll6/n;->m(Ljava/util/List;Landroid/util/Size;D)V

    :goto_f
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v1, v1, Lv6/b;->e:Z

    if-nez v1, :cond_24

    invoke-static {}, LJe/c;->d0()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_10

    :cond_23
    const/4 v1, 0x0

    goto :goto_11

    :cond_24
    :goto_10
    const/4 v1, 0x1

    :goto_11
    iput-boolean v1, v4, Ll6/n$a;->c:Z

    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    invoke-virtual {v1}, Ll6/n;->q()V

    iget-object v3, v1, Ll6/n;->E:Ll6/n$a;

    iget-object v3, v3, Ll6/n$a;->p:Lj9/e;

    iget-object v4, v1, Ll6/n;->F:Ljava/util/HashMap;

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    iget-object v5, v1, Ll6/n;->E:Ll6/n$a;

    iget-boolean v5, v5, Ll6/n$a;->j:Z

    if-eqz v5, :cond_27

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    const/16 v5, 0x1004

    if-le v4, v5, :cond_27

    iget-object v4, v1, Ll6/n;->E:Ll6/n$a;

    iget v4, v4, Ll6/n$a;->h:I

    iget v5, v3, Lj9/e;->b:I

    invoke-virtual {v3, v4, v5}, Lj9/e;->i0(II)Ljava/util/List;

    move-result-object v13

    :try_start_0
    iget-object v4, v1, Ll6/n;->E:Ll6/n$a;

    iget v5, v4, Ll6/n$a;->d:I

    iget v6, v4, Ll6/n$a;->l:I

    iget-object v4, v4, Ll6/n$a;->p:Lj9/e;

    const/4 v14, 0x1

    const/16 v15, 0x1004

    move-object/from16 v18, v4

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-static/range {v13 .. v18}, LF1/H3;->i(Ljava/util/List;IIIILj9/e;)V

    iget-object v4, v1, Ll6/n;->E:Ll6/n$a;

    iget v4, v4, Ll6/n$a;->d:I

    sget-object v5, LF1/H3;->a:Ljava/util/ArrayList;

    invoke-static {v4, v5}, LF1/H3;->d(ILjava/util/List;)Landroid/util/Size;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_12

    :catch_0
    const-string/jumbo v4, "updateSize: No find tempSize for tripartite used"

    const/4 v8, 0x0

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v7, v4, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x0

    :goto_12
    if-eqz v15, :cond_27

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v4

    const/16 v5, 0xbb8

    if-lt v4, v5, :cond_27

    iget-object v4, v1, Ll6/n;->E:Ll6/n$a;

    iget-boolean v4, v4, Ll6/n$a;->c:Z

    if-eqz v4, :cond_26

    iget v4, v3, Lj9/e;->b:I

    const/16 v5, 0x100

    invoke-virtual {v3, v5, v4}, Lj9/e;->i0(II)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/data/m;->f0()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v4, v4}, Landroid/util/Size;-><init>(II)V

    goto :goto_13

    :cond_25
    move-object v5, v15

    :goto_13
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v1, v15}, Ll6/n;->l(Landroid/util/Size;)V

    iput-object v5, v1, Ll6/n;->B:Landroid/util/Size;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, "updateSize: algoUp picture size for tripartite (JPEG): "

    invoke-static {v1, v5}, LF1/S;->a(Ljava/lang/String;Landroid/util/Size;)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v7, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_26
    invoke-virtual {v1, v15}, Ll6/n;->l(Landroid/util/Size;)V

    :cond_27
    :goto_14
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v1, v1, Ll6/n;->F:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/android/camera/module/Camera2Module;->updateSizeResult(Ljava/util/Map;)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v1, v1, Lv6/b;->e:Z

    if-eqz v1, :cond_28

    const-string v8, "YUV"

    goto :goto_15

    :cond_28
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget v1, v1, Ll6/n;->D:I

    invoke-static {v1}, LQa/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_29

    move-object v8, v12

    goto :goto_15

    :cond_29
    move-object/from16 v8, v24

    :goto_15
    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v1

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v4, v4, Ll6/n;->y:Landroid/util/Size;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateSize: picture size ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preview size: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sensor raw image size: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/r;->updateCameraScreenNailSize(II)V

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->checkDisplayOrientation()V

    return-void
.end method

.method private updateSRAndMFNR()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget-object v0, v0, Lj9/i0;->P0:Lj1/a;

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->d2()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj1/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isSuperResolutionHDR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    new-instance v0, Lj1/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lj1/a;-><init>(I)V

    invoke-virtual {p0, v0}, Lj9/h0;->L(Lj1/a;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateSuperResolution()V

    return-void
.end method

.method private updateSecondScreenFlashPreference()V
    .locals 5

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/U;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/U;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updateSecondScreenFlashPreference currentFlash = "

    invoke-static {v1, v0}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Camera2Module"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v2, v0}, LEw/k;->j(ILjava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "updateSecondScreenFlashPreference flashMode: "

    invoke-static {v0, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lj9/a;->R0(I)V

    return-void
.end method

.method private updateShotDetermine()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/android/camera/module/Camera2Module;->updateShotDetermine(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V

    return-void
.end method

.method private updateShotDetermine(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v5

    const/4 v13, 0x0

    const/16 v2, 0xab

    if-ne v5, v2, :cond_1

    .line 3
    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->d0()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    sget-boolean v3, LJe/c;->k:Z

    .line 5
    sget-object v3, LJe/c$b;->a:LJe/c;

    .line 6
    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    .line 7
    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->J6()Z

    move-result v3

    :goto_0
    move v12, v3

    goto :goto_1

    .line 8
    :cond_0
    sget-boolean v3, LJe/c;->k:Z

    .line 9
    sget-object v3, LJe/c$b;->a:LJe/c;

    .line 10
    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    .line 11
    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->T6()Z

    move-result v3

    goto :goto_0

    :cond_1
    move v12, v13

    .line 12
    :goto_1
    iget-object v3, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isParallelSessionEnable()Z

    move-result v4

    .line 13
    iput-boolean v4, v3, Lv6/b;->e:Z

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v3

    check-cast v3, Lj6/a;

    .line 15
    iget-boolean v3, v3, Lj6/a;->i:Z

    const/4 v14, 0x1

    if-nez v3, :cond_3

    .line 16
    iget-object v3, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    .line 17
    iget-boolean v3, v3, Lv6/b;->e:Z

    if-nez v3, :cond_2

    .line 18
    sget-boolean v3, LJe/c;->k:Z

    .line 19
    sget-object v3, LJe/c$b;->a:LJe/c;

    .line 20
    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    .line 21
    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->I7()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 22
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->enablePreviewAsThumbnail()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/data/data/m;->T(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v14

    goto :goto_2

    :cond_2
    move v3, v13

    :goto_2
    iput-boolean v3, v0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    :cond_3
    const/4 v3, 0x2

    if-ne v5, v2, :cond_7

    .line 23
    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    .line 24
    invoke-static {v2}, Lj9/f;->E1(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 25
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    .line 26
    const-class v4, Lv2/E0;

    invoke-virtual {v2, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/E0;

    if-eqz v2, :cond_6

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "isMiviSuperNightBokehUseCase: mode = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lv2/E0;->b:Lha/e;

    if-nez v2, :cond_4

    const-string v6, "null"

    goto :goto_3

    .line 28
    :cond_4
    iget v6, v2, Lha/e;->c:I

    .line 29
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v13, [Ljava/lang/Object;

    const-string v7, "ImageModuleUtil"

    invoke-static {v7, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_6

    .line 30
    iget v2, v2, Lha/e;->c:I

    if-ne v2, v14, :cond_5

    goto :goto_4

    :cond_5
    if-ne v2, v3, :cond_6

    :goto_4
    move v2, v14

    goto :goto_5

    :cond_6
    move v2, v13

    :goto_5
    move v10, v2

    goto :goto_6

    .line 31
    :cond_7
    invoke-virtual {v0, v1}, Lcom/android/camera/module/Camera2Module;->isSatMultipleRawUseCase(Lj9/H1$a;)Z

    move-result v2

    goto :goto_5

    .line 32
    :goto_6
    sget-boolean v2, LJe/c;->k:Z

    .line 33
    sget-object v15, LJe/c$b;->a:LJe/c;

    .line 34
    invoke-virtual {v15}, LJe/c;->b1()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x3

    :goto_7
    move v8, v3

    goto :goto_8

    .line 35
    :cond_8
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    .line 36
    iget-boolean v2, v2, Lv6/b;->e:Z

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    move v8, v14

    .line 37
    :goto_8
    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    if-nez v2, :cond_a

    return-void

    .line 38
    :cond_a
    new-instance v3, Lw6/h;

    move-object v4, v3

    invoke-virtual {v2}, Lj9/a;->t()Lj9/i0;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v6

    check-cast v6, Lj6/a;

    .line 39
    iget-boolean v6, v6, Lj6/a;->i:Z

    .line 40
    iget-object v7, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v7}, Lj6/j;->o0()I

    move-result v7

    .line 41
    iget-object v9, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    .line 42
    iget-boolean v9, v9, Lv6/b;->e:Z

    .line 43
    invoke-direct/range {p0 .. p2}, Lcom/android/camera/module/Camera2Module;->shouldDoMultiFrameCapture(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)Z

    move-result v9

    iget-object v11, v0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    .line 44
    iget-boolean v11, v11, Ll6/t;->d:Z

    .line 45
    iget v2, v2, Lj9/a;->a:I

    move/from16 v16, v7

    move v7, v2

    move-object v2, v4

    move v4, v6

    move/from16 v6, v16

    invoke-direct/range {v2 .. v12}, Lw6/h;-><init>(Lj9/i0;ZIIIIZZZZ)V

    .line 46
    invoke-direct {v0}, Lcom/android/camera/module/Camera2Module;->isCupCaptureRequired()Z

    move-result v3

    .line 47
    iput-boolean v3, v2, Lw6/h;->l:Z

    .line 48
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getRawCallbackType()I

    move-result v3

    .line 49
    iput v3, v2, Lw6/h;->k:I

    if-eqz v1, :cond_b

    .line 50
    iget-boolean v1, v1, Lj9/H1$a;->a:Z

    if-eqz v1, :cond_b

    move v1, v14

    goto :goto_9

    :cond_b
    move v1, v13

    :goto_9
    iput-boolean v1, v2, Lw6/h;->n:Z

    .line 51
    iget v1, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v3, 0xa7

    if-ne v1, v3, :cond_c

    .line 52
    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->m1(Lj9/e;)Z

    move-result v1

    .line 53
    iput-boolean v1, v2, Lw6/h;->m:Z

    .line 54
    :cond_c
    iget-object v1, v15, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->s4()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 55
    new-instance v3, Lw6/d;

    .line 56
    invoke-direct {v3, v2}, Lw6/b;-><init>(Ljava/lang/Object;)V

    .line 57
    new-instance v4, Lw6/e;

    .line 58
    invoke-direct {v4, v2}, Lw6/b;-><init>(Ljava/lang/Object;)V

    .line 59
    iput-object v4, v3, Lw6/b;->b:Lw6/b;

    .line 60
    invoke-virtual {v3}, Lw6/b;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_d

    const/16 v2, 0x65

    goto :goto_a

    .line 61
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_a

    .line 62
    :cond_e
    new-instance v3, Lw6/d;

    .line 63
    invoke-direct {v3, v2}, Lw6/b;-><init>(Ljava/lang/Object;)V

    .line 64
    new-instance v4, Lw6/a;

    .line 65
    invoke-direct {v4, v2}, Lw6/b;-><init>(Ljava/lang/Object;)V

    .line 66
    new-instance v5, Lw6/f;

    .line 67
    invoke-direct {v5, v2}, Lw6/b;-><init>(Ljava/lang/Object;)V

    .line 68
    new-instance v6, Lw6/i;

    .line 69
    invoke-direct {v6, v2}, Lw6/b;-><init>(Ljava/lang/Object;)V

    .line 70
    new-instance v7, Lw6/c;

    .line 71
    invoke-direct {v7, v2}, Lw6/b;-><init>(Ljava/lang/Object;)V

    .line 72
    iput-object v4, v3, Lw6/b;->b:Lw6/b;

    .line 73
    iput-object v5, v4, Lw6/b;->b:Lw6/b;

    .line 74
    iput-object v6, v5, Lw6/b;->b:Lw6/b;

    .line 75
    iput-object v7, v6, Lw6/b;->b:Lw6/b;

    .line 76
    invoke-virtual {v3}, Lw6/b;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_f

    move v2, v13

    goto :goto_a

    .line 77
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 78
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "enableParallel="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    .line 79
    iget-boolean v4, v4, Lv6/b;->e:Z

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " enableShot2Gallery="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " shotType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/Object;

    const-string v5, "Camera2Module"

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->K0()Lj9/h0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lj9/h0;->X(I)V

    .line 82
    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->K0()Lj9/h0;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setShot2Gallery: isShot2Gallery="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v13, [Ljava/lang/Object;

    const-string v7, "CameraConfigManager"

    invoke-static {v7, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    .line 85
    iput-boolean v3, v2, Lj9/i0;->Z0:Z

    .line 86
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotAndQuickShotMixedUseSupport()Z

    move-result v2

    .line 87
    invoke-static {}, LJe/c;->d0()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 88
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    invoke-virtual {v1}, Ll6/f;->L()Z

    move-result v1

    goto :goto_c

    .line 89
    :cond_10
    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->R5()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 90
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->needMixQuickShot()Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v2, :cond_11

    goto :goto_b

    :cond_11
    move v14, v13

    :goto_b
    move v1, v14

    goto :goto_c

    :cond_12
    move v1, v2

    .line 91
    :goto_c
    const-string v3, "HQQuickShot | needMixQuickShot:"

    const-string v4, ", isMixQuickShotSupport:"

    .line 92
    invoke-static {v3, v4, v1, v2}, LF1/P;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 93
    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v5, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    .line 95
    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    .line 96
    iput-boolean v1, v0, Lj9/i0;->j3:Z

    return-void
.end method

.method private updateSizeResult(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ll6/n$b;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll6/n$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->w:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iput-object v0, v1, Lj9/i0;->w:Landroid/util/Size;

    goto :goto_0

    :pswitch_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/Camera2Module;->updateAlgorithmPreviewFormat(I)V

    goto :goto_0

    :pswitch_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-direct {p0, v0}, Lcom/android/camera/module/Camera2Module;->updateAlgorithmPreviewSize(Landroid/util/Size;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->n:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v1, v0}, Lj9/i0;->C(Landroid/util/Size;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v1, v0}, Lj9/i0;->z(Landroid/util/Size;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->K:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->K:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->K:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->v:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->v:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->v:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->u:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->u:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->u:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->P:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->P:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->t:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->t:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->t:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->I:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->I:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->I:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->H:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->H:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->H:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_c
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->O:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->O:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_d
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->s:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->s:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->s:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_e
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->G:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->G:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->G:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_f
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->F:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->F:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->F:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_10
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->N:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->N:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_11
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->r:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->r:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->r:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_12
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lha/d;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->x:Lha/d;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->x:Lha/d;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->x:Lha/d;

    goto/16 :goto_0

    :pswitch_13
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->E:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v1, v0}, Lj9/i0;->o(Landroid/util/Size;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->D:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v1, v0}, Lj9/i0;->p(Landroid/util/Size;)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v1, v0}, Lj9/i0;->B(Landroid/util/Size;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->q:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v1, v0}, Lj9/i0;->K(Landroid/util/Size;)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->C:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->C:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->C:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_18
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->B:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v1, Lj9/i0;->B:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lj9/i0;->B:Landroid/util/Size;

    goto/16 :goto_0

    :pswitch_19
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v1, v0}, Lj9/i0;->A(Landroid/util/Size;)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v2, v2, Lj9/i0;->p:Landroid/util/Size;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v1, v0}, Lj9/i0;->I(Landroid/util/Size;)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    invoke-interface {v1, v2}, Lj6/j;->J(Landroid/util/Size;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v1, v0}, Lj9/h0;->R(Landroid/util/Size;)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-interface {v1, v0}, Lj6/j;->e(Landroid/util/Size;)V

    goto/16 :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSwMfnr()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isUseSwMfnr()Z

    move-result v0

    const-string/jumbo v1, "setSwMfnr to "

    invoke-static {v1, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Camera2Module"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object v1, p0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v2, v1, Lj9/i0;->g1:Z

    if-eq v2, v0, :cond_0

    iput-boolean v0, v1, Lj9/i0;->g1:Z

    invoke-virtual {p0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lj9/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lj9/l;-><init>(Lj9/h0;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private updateThumbSettingWhenShutter(Lj9/E1;I)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean p2, p1, Lj9/E1;->a:Z

    invoke-virtual {p0, p2}, Lcom/android/camera/module/Camera2Module;->updateEnablePreviewThumbnail(Z)V

    iget-boolean p1, p1, Lj9/E1;->b:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->enabledPreviewThumbnail()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Camera2Module"

    const-string v0, "onShutter remove thumbnail path for not anchorframe and previewthumbnail"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {p0}, Lj9/i0;->b()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private updateVideoSize()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LK2/e;->E()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->j0()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->I()I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_2

    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setVideoSize "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "LoadStreamSizeBase"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, p0, Ll6/n;->C:Landroid/util/Size;

    return-void
.end method

.method public static synthetic vl(Lcom/android/camera/module/Camera2Module;Landroid/os/Message;LQ6/C;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->lambda$handleMessage$58(Landroid/os/Message;LQ6/C;)V

    return-void
.end method

.method public static synthetic wl(LQ6/X;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$performKeyClicked$47(LQ6/X;)V

    return-void
.end method

.method public static synthetic wm(Landroid/view/KeyEvent;Landroid/view/KeyEvent$DispatcherState;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$prepareForKeyCamera$42(Landroid/view/KeyEvent;Landroid/view/KeyEvent$DispatcherState;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic xd(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->lambda$onShutter$29()V

    return-void
.end method

.method public static bridge synthetic xq(Lcom/android/camera/module/Camera2Module;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotBurstShot:Z

    return p0
.end method

.method public static synthetic yj(Landroid/view/KeyEvent;LQ6/L;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$performKeyClicked$45(Landroid/view/KeyEvent;LQ6/L;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic yq(Lcom/android/camera/module/Camera2Module;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsMfHdrQuickShotEnabled:Z

    return p0
.end method

.method public static bridge synthetic zq(Lcom/android/camera/module/Camera2Module;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsQuickShotEnabled:Z

    return p0
.end method


# virtual methods
.method public announceAccessAfterPictureTakenFinished(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/K;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LEs/K;-><init>(IB)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/a;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/a;)V

    new-instance v0, Lr6/a0;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/base/i;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v0, Lr6/A0;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lr6/A0;-><init>(ZLru/c;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Li9/h;

    if-eqz v0, :cond_1

    new-instance v0, Lr6/D0;

    invoke-direct {v0}, Lr6/D0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    :cond_1
    new-instance v0, Lr6/Q;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v0, Lr6/u0;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isSupportNightOrLLSASD()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lr6/V;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    :cond_2
    new-instance v0, Lr6/h;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v0, Lr6/S;

    invoke-direct {v0}, Lr6/S;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v0, Lr6/g;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/base/i;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lr6/g;->i:J

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v0, Lr6/a;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/base/i;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lr6/a;->b:I

    iput v1, v0, Lr6/a;->c:I

    const/4 v1, 0x0

    iput v1, v0, Lr6/a;->d:I

    iput v1, v0, Lr6/a;->e:I

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v0, Lr6/P;

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lo6/a;

    invoke-direct {v0, v1}, Lr6/P;-><init>(Lj9/a$h;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isSupportNightOrLLSASD()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lr6/x0;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getSuperNightCbImpl()Ll6/L;

    move-result-object v1

    invoke-direct {v0, v1}, Lr6/x0;-><init>(Ll6/L;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    :cond_3
    new-instance v0, Lr6/Y;

    invoke-direct {v0}, Lr6/Y;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v0, Lr6/K;

    iget-object v1, p0, Lcom/android/camera/module/r;->mFlashAsdManager:Lj6/g;

    check-cast v1, Lm6/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lr6/K;-><init>(Lcom/android/camera/module/Q;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v0, Lr6/b0;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v0, Lr6/x;

    sget-object v1, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    invoke-direct {v0, v1}, Lr6/x;-><init>(Lcom/android/camera/c;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v0, Lr6/U;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v0, Lr6/T;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/base/i;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v0, Lr6/v0;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->B2(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lr6/F;

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mDirtDetection:Ll6/d;

    invoke-direct {v0, p0}, Lr6/F;-><init>(Lj9/a$e;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    :cond_4
    return-void
.end method

.method public appendPhotoSaveInterceptors(LZp/a;)V
    .locals 0

    return-void
.end method

.method public appendPreviewDecoder(Lgi/f;Lgi/g;Lvr/i;)V
    .locals 1

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->f4()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getHandGestureDecoderFactory()Lfi/d;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lgi/f;->d(Lgi/c;Lgi/g;)V

    const/4 p0, 0x4

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {p3, p0}, Lvr/i;->a([I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized beforeCameraClosed(Lj9/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaomi/camera/module/PhotoBase;->beforeCameraClosed(Lj9/a;)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v0, v0, Ll6/t;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj9/a;->f()V

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iput-boolean v1, p1, Ll6/t;->d:Z

    invoke-virtual {p1}, Ll6/t;->e()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    invoke-virtual {p1}, Ll6/z;->i()V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p1

    sget v0, Li3/b;->N:I

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/camera/effect/EffectController;->X(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public calculateTimeout()J
    .locals 2

    invoke-static {}, Lcom/android/camera/data/data/E;->W()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x5dc0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x2ee0

    return-wide v0
.end method

.method public canDragOutSuspendButton()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkDragCondition()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic canMoveWhenProcessing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkDisplayOrientation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/r;->checkDisplayOrientation()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->I()I

    move-result v1

    invoke-interface {v0, v1}, Lu6/q;->r(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateVideoSize()V

    return-void
.end method

.method public checkDragCondition()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isLongExpCaptureInCaptureMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v0, v0, Lj9/i0;->k0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    const/4 v1, 0x3

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-boolean v0, v0, Lj6/a;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->isShooting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {p0}, LQ6/j1;->isInCountDown()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public checkIntentAndCapture()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object v1

    invoke-virtual {v1}, Lvr/m;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lvr/m;->r(Landroidx/fragment/app/l;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object v1

    const-string v2, "Camera2Module"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    sget-boolean v3, LJe/d;->m:Z

    if-nez v3, :cond_1

    invoke-interface {v0}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object v3

    iget-object v3, v3, Lvr/m;->a:Landroid/content/Intent;

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const-string v5, "focus_not_required"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/camera/module/X;->z3()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "checkIntentAndCapture: MSG_STILL_CAPTURE, mHandler: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_2

    const/16 v1, 0x35

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    invoke-interface {v0}, Lcom/android/camera/module/X;->Q5()V

    return-void

    :cond_3
    :goto_1
    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    if-nez v1, :cond_4

    const-string v0, "current = null"

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "checkIntentAndCapture: reject by dialog. pause:%b , focus:%b"

    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public checkMoreFrameCaptureLockAFAE()Z
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportMoreFrameCaptureLockAFAE"
        type = 0x0
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Camera2Module"

    const-string v2, "mCamera2Device == null, return"

    invoke-static {v0, v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 7
    :cond_0
    sget-boolean v2, LJe/c;->k:Z

    .line 8
    sget-object v2, LJe/c$b;->a:LJe/c;

    .line 9
    iget-object v3, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    .line 10
    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->u7()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object v3

    .line 12
    iget-boolean v3, v3, Lj9/i0;->V0:Z

    .line 13
    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->h6()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 15
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v3}, LF1/E3;->a()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->d0()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->n()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v1

    .line 17
    :goto_0
    invoke-static {}, Lcom/android/camera/module/Y;->m()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    .line 18
    iget-boolean v6, v5, Ll6/z;->f:Z

    if-nez v6, :cond_5

    if-nez v3, :cond_5

    .line 19
    iget-boolean v5, v5, Ll6/z;->m:Z

    if-nez v5, :cond_5

    .line 20
    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object v5

    .line 21
    iget-boolean v5, v5, Lj9/i0;->V0:Z

    if-nez v5, :cond_5

    goto :goto_1

    .line 22
    :cond_5
    iget-object v5, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    .line 23
    iget-boolean v5, v5, Ll6/z;->m:Z

    if-eqz v5, :cond_6

    if-nez v3, :cond_6

    goto :goto_1

    .line 24
    :cond_6
    invoke-static {}, Lcom/android/camera/module/Y;->m()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    .line 25
    iget-boolean v3, v3, Ll6/z;->f:Z

    if-eqz v3, :cond_8

    .line 26
    :cond_7
    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->O7()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    .line 27
    :cond_8
    iget-object v2, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v2}, LF1/E3;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 28
    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj9/a;->x1(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    .line 29
    :cond_9
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->U()Z

    move-result p0

    if-eqz p0, :cond_a

    :goto_1
    return v1

    :cond_a
    return v4
.end method

.method public checkMotionStatus(Lj9/a;Lj9/e;)Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionCaptureType"
        type = 0x2
    .end annotation

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lj9/a;->B()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lj9/o0;->m(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tag of motion capture type is: "

    invoke-static {v2, v1}, LV9/Z1;->c(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    new-array v2, p2, [Ljava/lang/Object;

    const-string v3, "Camera2Module"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    invoke-virtual {v3}, Lj9/a;->t()Lj9/i0;

    move-result-object v3

    iput v0, v3, Lj9/i0;->d3:I

    if-nez v2, :cond_1

    sget-object v0, Lga/C0;->Y:Lga/D0;

    const v2, 0xbabe

    invoke-static {p1, v0, v2}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_2

    aget p1, p1, p2

    if-ne p1, v1, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->t()Lj9/i0;

    move-result-object p0

    iget-byte p0, p0, Lj9/i0;->f2:B

    if-eqz p0, :cond_2

    :cond_1
    return v1

    :cond_2
    return p2
.end method

.method public checkSuperResolutionValid()Z
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const-string v1, "Camera2Module"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateSuperResolution: null camera device"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->d0()Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    iget v0, v0, Lj9/a;->a:I

    invoke-static {v0}, Lu6/f;->h0(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p0, "SR force off for ultra wide camera"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_2
    invoke-static {v0}, Lu6/f;->f0(I)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->p7()Z

    move-result v4

    if-nez v4, :cond_3

    const-string p0, "HAL doesn\'t support SR in macro mode."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_3
    invoke-static {v0}, Lu6/f;->f0(I)Z

    move-result v0

    const-string v4, "macro camera prefers MFNR to SR"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->C1(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_4
    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->z2()Z

    move-result v5

    if-eqz v5, :cond_5

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result p0

    if-eqz p0, :cond_5

    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_5
    iget-object p0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->s5()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, LJe/c;->k:Z

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->s5()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const-string v0, "pref_camera_sr_enable_key"

    invoke-virtual {p0, v0, v3}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    const-string p0, "SR is disabled"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public closeCamera()V
    .locals 4

    invoke-super {p0}, Lcom/xiaomi/camera/module/PhotoBase;->closeCamera()V

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCacheImageDecoder:Lv6/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CacheImageDecoder"

    const-string v3, "quit"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v2, LF1/Y1;

    const/16 v3, 0x8

    invoke-direct {v2, v0, v3}, LF1/Y1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_0
    sget-boolean v0, LJe/d;->i:Z

    if-eqz v0, :cond_1

    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object v0

    sget-wide v1, LAg/b;->a:J

    invoke-virtual {v0, v1, v2}, LRh/c;->d(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    invoke-interface {p0}, Lru/k;->clear()V

    return-void
.end method

.method public consumePreference(I)Z
    .locals 8

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_20

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1f

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1e

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1d

    const/16 v3, 0x37

    if-eq p1, v3, :cond_1c

    const/16 v3, 0x38

    if-eq p1, v3, :cond_1b

    const/16 v3, 0x3b

    if-eq p1, v3, :cond_1a

    const/16 v3, 0x3c

    if-eq p1, v3, :cond_19

    const/16 v3, 0x5e

    if-eq p1, v3, :cond_a

    const/16 v3, 0x5f

    if-eq p1, v3, :cond_9

    const/16 v3, 0x65

    if-eq p1, v3, :cond_8

    const/16 v3, 0x66

    if-eq p1, v3, :cond_7

    const/16 v3, 0x71

    if-eq p1, v3, :cond_6

    const/16 v3, 0x72

    if-eq p1, v3, :cond_5

    const/16 v3, 0x86

    if-eq p1, v3, :cond_4

    const/16 v3, 0x87

    if-eq p1, v3, :cond_3

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->consumePreference(I)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, p1}, Lj6/j;->f1(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_4

    :cond_0
    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->idleManuallyFocus()V

    return v2

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateFocusDistance()V

    return v2

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->setFocusDistanceByGear()V

    return v2

    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateMotionCapture()V

    return v2

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateAiScene()V

    return v2

    :pswitch_5
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->c:I

    invoke-virtual {p1, p0}, Lj9/h0;->B(I)V

    return v2

    :pswitch_6
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    const-string v0, "pref_camera_mfnr_sat_enable_key"

    invoke-virtual {p1, v0, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->updateMfnr(Z)V

    return v2

    :pswitch_7
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateFocusMode()V

    return v2

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateBeauty()V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->R()V

    return v2

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/r;->setEvValue()V

    return v2

    :pswitch_a
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lo6/a;

    invoke-virtual {p0}, Lo6/a;->i()V

    return v2

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateFlashPreference()V

    return v2

    :pswitch_c
    invoke-static {}, Lcom/android/camera/data/data/w;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updateAntiBanding(Ljava/lang/String;)V

    return v2

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateSunriseSunsetTimestamp()V

    return v2

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateOpMode()V

    return v2

    :pswitch_f
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateESPDisplay()V

    return v2

    :pswitch_10
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateSoftLightRing()V

    return v2

    :pswitch_11
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateSharpness()V

    return v2

    :pswitch_12
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateSaturation()V

    return v2

    :pswitch_13
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateContrast()V

    return v2

    :pswitch_14
    invoke-virtual {p0}, Lcom/android/camera/module/r;->focusCenter()V

    return v2

    :pswitch_15
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->a0()V

    return v2

    :pswitch_16
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateDecodePreview()V

    return v2

    :pswitch_17
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isZslPreferred()Z

    move-result p0

    invoke-virtual {p1, p0}, Lj9/h0;->G(Z)V

    return v2

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateSessionParams()V

    return v2

    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateSecondScreenFlashPreference()V

    return v2

    :sswitch_2
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lo6/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v1, Lr2/z;

    invoke-virtual {p1, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/z;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object p0, p0, Lo6/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    if-nez p0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v1

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v3

    invoke-static {v3}, Lj9/f;->h3(Lj9/e;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    invoke-static {p0}, Lr2/z;->q(Ljava/lang/String;)I

    move-result p0

    iget-object v1, p1, Lj9/h0;->a:Lj9/i0;

    iget v3, v1, Lj9/i0;->U0:I

    if-eq v3, p0, :cond_1d

    iput p0, v1, Lj9/i0;->U0:I

    invoke-virtual {p1}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LE4/k;

    invoke-direct {v1, p1, v0}, LE4/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v2

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateFoldState()V

    return v2

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getApertureManager()LV1/f;

    move-result-object p0

    invoke-interface {p0}, LV1/f;->L()V

    return v2

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateTrackFocus()V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateTrackEye()V

    return v2

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateHighQualityPreferred()V

    return v2

    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateAiShutter()V

    return v2

    :sswitch_8
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateASD()V

    return v2

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateThermalLevel()V

    return v2

    :sswitch_a
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateEvValue()V

    return v2

    :sswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateUltraWideLDC()V

    return v2

    :sswitch_c
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateShotDetermine()V

    return v2

    :sswitch_d
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateSwMfnr()V

    return v2

    :sswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateSuperResolution()V

    return v2

    :sswitch_f
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateJpegQuality()V

    return v2

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateEdgeWideLDC()V

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateCloseFocus()V

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getExposureModeManager()LV1/g;

    move-result-object p0

    invoke-interface {p0}, LV1/g;->q()V

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->setFaceAEStrategy()V

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updatePortraitRepairEnable()V

    return v2

    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateCaptureHint()V

    return v2

    :cond_9
    invoke-virtual {p0, p0}, Lcom/android/camera/module/r;->initializeMetaDataCallback(Lcom/android/camera/module/r;)V

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Ll6/g;

    move-result-object p1

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/data/data/m;->i0(I)Z

    move-result p0

    iget-object v3, p1, Lj6/d;->N:Lj9/e;

    iget-object v4, p1, Lj6/d;->a:Lj9/a;

    iget-object v5, p1, Lj6/d;->b:Lcom/android/camera/module/r;

    invoke-interface {v5}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v5

    const/16 v6, 0xa3

    if-eq v5, v6, :cond_c

    iget-object v5, p1, Lj6/d;->b:Lcom/android/camera/module/r;

    invoke-interface {v5}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v5

    const/16 v6, 0xab

    if-ne v5, v6, :cond_b

    invoke-static {v3}, Lj9/f;->E1(Lj9/e;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    iget-object v5, p1, Lj6/d;->b:Lcom/android/camera/module/r;

    invoke-interface {v5}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v5

    const/16 v6, 0xaf

    if-ne v5, v6, :cond_1d

    invoke-static {v3}, Lj9/f;->K1(Lj9/e;)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_c
    invoke-static {v3}, Lj9/f;->P2(Lj9/e;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object p0, p1, Lj6/d;->J:Lj9/h0;

    iget-object p1, p1, Lj6/d;->N:Lj9/e;

    invoke-static {p1}, Lj9/f;->J1(Lj9/e;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/android/camera/data/data/w;->U()Z

    move-result p1

    if-nez p1, :cond_d

    move v1, v2

    :cond_d
    invoke-virtual {p0, v1}, Lj9/h0;->N(Z)V

    return v2

    :cond_e
    iget-object v3, p1, Lj6/d;->N:Lj9/e;

    invoke-static {v3}, Lj9/f;->I1(Lj9/e;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static {}, Lcom/android/camera/data/data/w;->I()Z

    move-result v3

    const-string/jumbo v5, "updateAsdNightPreferred isAsdNightOn ="

    invoke-static {v5, v3}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "ImageModuleCameraManager"

    invoke-static {v7, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_1d

    iget-object v4, p1, Lj6/d;->J:Lj9/h0;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lj9/h0;->N(Z)V

    invoke-static {}, Lcom/android/camera/data/data/E;->k0()Z

    move-result v4

    if-nez v4, :cond_11

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, LJe/c;->a1()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {}, Lj9/f;->y1()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {}, Lcom/android/camera/data/data/m;->S()Z

    move-result v4

    if-nez v4, :cond_11

    :cond_f
    iget-object v4, p1, Lj6/d;->b:Lcom/android/camera/module/r;

    invoke-interface {v4}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p1, Lj6/d;->J:Lj9/h0;

    iget-object v4, v4, Lj9/h0;->a:Lj9/i0;

    iget v4, v4, Lj9/i0;->i0:I

    if-ne v4, v2, :cond_10

    goto :goto_0

    :cond_10
    move v4, v1

    goto :goto_1

    :cond_11
    :goto_0
    move v4, v2

    :goto_1
    iget-object v5, p1, Lj6/d;->J:Lj9/h0;

    if-nez p0, :cond_13

    if-eqz v4, :cond_12

    goto :goto_2

    :cond_12
    move p0, v1

    goto :goto_3

    :cond_13
    :goto_2
    move p0, v2

    :goto_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setMiviNightIconDisabled: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "CameraConfigManager"

    invoke-static {v7, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v5, Lj9/h0;->a:Lj9/i0;

    iget-boolean v6, v4, Lj9/i0;->S0:Z

    if-eq v6, p0, :cond_14

    iput-boolean p0, v4, Lj9/i0;->S0:Z

    :cond_14
    invoke-virtual {v5}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object p0

    new-instance v4, Lj9/x;

    invoke-direct {v4, v5, v1}, Lj9/x;-><init>(Lj9/h0;I)V

    invoke-virtual {p0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p1, Lj6/d;->N:Lj9/e;

    invoke-static {p0}, Lj9/f;->J1(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_17

    iget-object p0, p1, Lj6/d;->J:Lj9/h0;

    if-nez v3, :cond_15

    iget-object p1, p1, Lj6/d;->b:Lcom/android/camera/module/r;

    invoke-interface {p1}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/data/data/j;->a1(I)Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_15
    move v0, v1

    :cond_16
    invoke-virtual {p0, v0}, Lj9/h0;->P(I)V

    return v2

    :cond_17
    if-eqz v3, :cond_18

    iget-object p0, p1, Lj6/d;->J:Lj9/h0;

    invoke-virtual {p0, v2}, Lj9/h0;->q(I)V

    return v2

    :cond_18
    iget-object p0, p1, Lj6/d;->J:Lj9/h0;

    const p1, 0x11111110

    invoke-virtual {p0, p1}, Lj9/h0;->p(I)V

    return v2

    :cond_19
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateCinematicPhoto()V

    return v2

    :cond_1a
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateOnTripMode()V

    return v2

    :cond_1b
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Ll6/z;->l(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V

    return v2

    :cond_1c
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateModuleRelated()V

    :cond_1d
    :goto_4
    return v2

    :cond_1e
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object p0

    invoke-interface {p0, v1}, Lj6/j;->D0(Z)V

    return v2

    :cond_1f
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateFilter()V

    return v2

    :cond_20
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updatePictureAndPreviewSize()V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_f
        0x1e -> :sswitch_e
        0x2a -> :sswitch_d
        0x2c -> :sswitch_c
        0x2f -> :sswitch_b
        0x3f -> :sswitch_a
        0x42 -> :sswitch_9
        0x46 -> :sswitch_8
        0x52 -> :sswitch_7
        0x54 -> :sswitch_6
        0x56 -> :sswitch_5
        0x68 -> :sswitch_4
        0x92 -> :sswitch_3
        0x96 -> :sswitch_2
        0x9c -> :sswitch_1
        0xcafe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x22
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x80
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public consumeWatermarkCoordinate(J)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public createCameraManager()Lj6/d;
    .locals 1

    .line 2
    new-instance v0, Ll6/g;

    invoke-direct {v0, p0}, Ll6/g;-><init>(Lcom/android/camera/module/Camera2Module;)V

    return-object v0
.end method

.method public bridge synthetic createCameraManager()Lj6/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->createCameraManager()Lj6/d;

    move-result-object p0

    return-object p0
.end method

.method public createFaceBeautyAnimatorManager()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFacePossEnable"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->r1(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lj9/f;->Z4(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lga/A0;->z3:Lga/D0;

    invoke-virtual {v1}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->N()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ln6/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln6/d;-><init>(Lcom/android/camera/module/Camera2Module;Z)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mFaceAnim:Ln6/d;

    invoke-virtual {v0}, Ln6/d;->init()V

    :cond_1
    :goto_0
    return-void
.end method

.method public doAttach()V
    .locals 18
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "crop-temp"

    iget-object v2, v0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v4}, Lj6/f;->q()Z

    move-result v4

    const-string v5, "Camera2Module"

    const/4 v6, 0x0

    if-nez v4, :cond_8

    if-eqz v2, :cond_8

    if-nez v3, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-interface {v2}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v4

    invoke-virtual {v4}, Lk7/i;->z()[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v7

    check-cast v7, Lj6/a;

    iget-boolean v7, v7, Lj6/a;->m:Z

    const/4 v8, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_2

    const-string v7, "check width & height"

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v5, v7, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v7

    iget-object v7, v7, Lk7/i;->k:LRh/r;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, LF1/o3;->a(J)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v7, LRh/r;->k:LRh/A;

    iput-object v11, v12, LRh/A;->j:Ljava/lang/String;

    iput-object v10, v12, LRh/A;->k:Ljava/lang/String;

    iput-object v10, v12, LRh/A;->n:Landroid/net/Uri;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v14, v7, LRh/r;->a:LRh/z;

    iput-wide v12, v14, LRh/z;->g:J

    iget-object v12, v7, LRh/r;->k:LRh/A;

    iput-boolean v6, v12, LRh/A;->o:Z

    iget-object v13, v14, LRh/z;->i:[B

    iget-object v15, v7, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v15, v13}, Lcom/xiaomi/camera/core/ExifData;->getExif([B)Lrf/b;

    move-result-object v13

    invoke-virtual {v7}, LRh/r;->j()Landroid/util/Size;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-virtual {v7}, LRh/r;->j()Landroid/util/Size;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v16

    sget-object v17, Lk7/d;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Lrf/b;->r()I

    move-result v13

    iget v9, v14, LRh/z;->d:I

    add-int/2addr v9, v13

    rem-int/lit16 v9, v9, 0xb4

    if-nez v9, :cond_1

    move/from16 v9, v16

    goto :goto_0

    :cond_1
    move v9, v15

    move/from16 v15, v16

    :goto_0
    iput v15, v14, LRh/z;->a:I

    iput v9, v14, LRh/z;->b:I

    iput v6, v14, LRh/z;->c:I

    iput-object v11, v12, LRh/A;->j:Ljava/lang/String;

    iput-object v10, v12, LRh/A;->k:Ljava/lang/String;

    iput-object v10, v12, LRh/A;->n:Landroid/net/Uri;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v14, LRh/z;->g:J

    iput-boolean v8, v12, LRh/A;->m:Z

    iget-object v10, v7, LRh/r;->b:LRh/a;

    iput-boolean v6, v10, LRh/a;->h:Z

    const/4 v11, -0x1

    iput v11, v10, LRh/a;->k:I

    new-instance v10, Lk7/l;

    invoke-direct {v10, v7}, Lk7/L;-><init>(LRh/r;)V

    invoke-interface {v2}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v11

    invoke-virtual {v11, v10}, Lk7/i;->s(Lk7/z;)V

    sget-object v10, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v11, LDr/d;

    const/16 v12, 0x8

    invoke-direct {v11, v7, v12}, LDr/d;-><init>(Ljava/lang/Object;I)V

    invoke-static {v10, v11}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v7

    check-cast v7, Lj6/a;

    iget-object v7, v7, Lj6/a;->l:Ljava/lang/String;

    if-nez v7, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v1

    check-cast v1, Lj6/a;

    iget-object v1, v1, Lj6/a;->k:Landroid/net/Uri;

    if-eqz v1, :cond_3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-object v0, v0, Lj6/a;->k:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v10, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    const/4 v11, -0x1

    invoke-virtual {v3, v11}, Landroid/app/Activity;->setResult(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    invoke-static {v10}, Lvr/Q;->a(Ljava/io/Closeable;)V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v10, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v10, 0x0

    :goto_2
    :try_start_2
    const-string v1, "Exception when doAttach: "

    invoke-static {v5, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    invoke-static {v10}, Lvr/Q;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    invoke-static {v4}, Lvr/j;->d([B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v4}, Lrf/a;->c([B)Lrf/b;

    move-result-object v1

    sget-object v4, Lk7/d;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Lrf/b;->r()I

    move-result v1

    invoke-static {v1, v0}, Lvr/j;->i(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "inline-data"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v11, -0x1

    invoke-virtual {v3, v11, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_5

    :cond_4
    :try_start_3
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v5

    check-cast v5, Lj6/a;

    iget-object v5, v5, Lj6/a;->l:Ljava/lang/String;

    const-string v6, "circle"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "circleCrop"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v5

    check-cast v5, Lj6/a;

    iget-object v5, v5, Lj6/a;->k:Landroid/net/Uri;

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-object v0, v0, Lj6/a;->k:Landroid/net/Uri;

    const-string v5, "output"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_4

    :cond_6
    const-string/jumbo v0, "return-data"

    invoke-virtual {v4, v0, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x3e8

    invoke-virtual {v3, v0, v1}, Le/i;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_5
    invoke-interface {v2}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v0

    iget-object v0, v0, Lk7/i;->k:LRh/r;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, LRh/r;->s()V

    :cond_7
    return-void

    :catchall_2
    move-exception v0

    const/4 v10, 0x0

    goto :goto_7

    :catch_2
    const/4 v10, 0x0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v10, v1

    goto :goto_7

    :catch_3
    move-object v10, v1

    :goto_6
    :try_start_6
    invoke-virtual {v3, v6}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-static {v10}, Lvr/Q;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_4
    move-exception v0

    :goto_7
    invoke-static {v10}, Lvr/Q;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_8
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "doAttach, isPaused: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", callback: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public doLaterReleaseIfNeed()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const-string v1, "Camera2Module"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "doLaterReleaseIfNeed: mActivity is null..."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lj9/a;->Z()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v4, v4, Lv6/b;->e:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lj9/a;->x()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lj9/a;->Z()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v3, :cond_4

    const-string v4, "doLaterRelease"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v4, "doLaterRelease but session is closed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-interface {v0, p0, v3}, Lcom/android/camera/module/X;->Af(Lcom/android/camera/module/W;Z)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "doLaterReleaseIfNeed: isDeparted..."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->doLaterReleaseCheckTexture()V

    :cond_7
    :goto_2
    return-void
.end method

.method public enablePreviewAsThumbnail()Z
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v0, v0, Lv6/b;->e:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->U1()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v3

    invoke-static {v3}, Lw7/j;->L(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/xiaomi/camera/effect/EffectController;->O(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, LJe/d;->l:Z

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/data/data/m;->T(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-string v4, "pref_camera_portrait_mode_key"

    invoke-virtual {v3, v4, v1}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v4, 0xad

    if-eq v3, v4, :cond_c

    invoke-static {}, Lcom/android/camera/data/data/E;->W()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/camera/data/data/E;->j0()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, LJe/c;->b1()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v4, 0xab

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->d0()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    :cond_9
    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->K0()Lj9/h0;

    move-result-object v3

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v4, 0xa3

    if-ne p0, v4, :cond_a

    iget-object p0, v3, Lj9/h0;->a:Lj9/i0;

    iget-object p0, p0, Lj9/i0;->P0:Lj1/a;

    invoke-virtual {p0}, Lj1/a;->a()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, v0, L㼰㼼㼾㽽㼾㼺㽽㼷㼶㼥㼺㼰㼶㽽㼡㼶㼷㼾㼺㽽㼐㼼㼾㼾㼼㼽㼇㼲㼱㼿㼶㼧;

    return p0

    :cond_a
    iget-object p0, v3, Lj9/h0;->a:Lj9/i0;

    iget-object p0, p0, Lj9/i0;->P0:Lj1/a;

    invoke-virtual {p0}, Lj1/a;->a()Z

    move-result p0

    if-nez p0, :cond_c

    iget-object p0, v3, Lj9/h0;->a:Lj9/i0;

    iget-boolean v0, p0, Lj9/i0;->e1:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lj9/i0;->g1:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lj9/i0;->V0:Z

    if-eqz p0, :cond_c

    :cond_b
    :goto_0
    return v2

    :cond_c
    :goto_1
    return v1
.end method

.method public genCameraAction()Ll6/f;
    .locals 1

    new-instance v0, Ll6/f;

    invoke-direct {v0, p0}, Ll6/f;-><init>(Lcom/android/camera/module/Camera2Module;)V

    return-object v0
.end method

.method public generatePhotoTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lw7/j;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {p0}, LQ6/j1;->J7()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/camera/module/PhotoBase;->generatePhotoTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAiSceneEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/data/data/j;->i(I)Z

    move-result v1

    iput-boolean v1, v0, Ll6/b;->c:Z

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget-boolean p0, p0, Ll6/b;->c:Z

    return p0
.end method

.method public getAiSceneManager()Ll6/b;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    return-object p0
.end method

.method public getApertureManager()LV1/f;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mApertureManager:LV1/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/module/T;

    invoke-direct {v0, p0}, LV1/c;-><init>(Lcom/android/camera/module/r;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mApertureManager:LV1/f;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mApertureManager:LV1/f;

    return-object p0
.end method

.method public getCaptureButtonStatus()Lqh/a;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lqh/a;

    return-object p0
.end method

.method public getCaptureStartTime()J
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object p0

    iget-wide v0, p0, Ll6/h;->y:J

    return-wide v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, " "

    if-eqz v2, :cond_1

    iget-object v2, v2, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v2, :cond_1

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    const-string v6, "lensFocal:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    const-string v5, "lensApertues:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v2, 0xa7

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "sceneProfession:true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "zoomMultiple:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object v1

    invoke-interface {v1}, Lf9/a;->a1()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lj9/a;->t()Lj9/i0;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v1, Lj9/i0;->c:[Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    aget-object v1, v1, v3

    if-nez v1, :cond_3

    const-string v1, "0"

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->getY()I

    move-result v3

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result v1

    add-int/2addr v1, v3

    const-string v6, "["

    const-string v7, ","

    invoke-static {v2, v3, v6, v7, v7}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v2, v5, v7, v1, v3}, LS1/h;->c(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "afRoi:"

    invoke-static {v0, v2, v1, v4}, LL/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/x;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/x;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/RectF;

    invoke-static {v1}, LCc/h;->l([Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "faceRoi:"

    invoke-static {v0, v2, v1, v4}, LL/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v1, "filterId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/data/data/j;->P()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AIScene:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget p0, p0, Ll6/b;->b:I

    invoke-static {v0, v4, p0}, LP/e;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDismissPureBlurDelayTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEncodingQuality()LF1/g3;
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getEncodingQuality()LF1/g3;

    move-result-object v0

    sget-object v1, LF1/g3;->c:LF1/g3;

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean p0, p0, Ll6/t;->d:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v2, 0x1

    if-le p0, v2, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getExposureModeManager()LV1/g;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mExposureModeManager:LV1/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/module/U;

    invoke-direct {v0, p0}, LV1/d;-><init>(Lcom/android/camera/module/r;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mExposureModeManager:LV1/g;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mExposureModeManager:LV1/g;

    return-object p0
.end method

.method public getFixTime()I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    return p0
.end method

.method public getFixTimeBackCamera()J
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFixTimeForBackSAT(Lj9/e;)J
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIn3OrMoreSatMode()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lj9/f;->c0(Lj9/e;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lj9/f;->e0(Lj9/e;)J

    move-result-wide p0

    return-wide p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/v1;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, LF1/v1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LH4/N;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, LH4/N;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1}, Lj9/f;->f0(Lj9/e;)J

    move-result-wide p0

    return-wide p0

    :cond_3
    invoke-static {p1}, Lj9/f;->k(Lj9/e;)I

    move-result p0

    invoke-static {p0}, Lu6/f;->h0(I)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lj9/e;->Q()J

    move-result-wide v3

    const-wide v5, 0xf00000000000L

    and-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Lj9/e;->Q()J

    move-result-wide v0

    and-long/2addr v0, v5

    const/16 p0, 0x2c

    shr-long/2addr v0, p0

    invoke-virtual {p1}, Lj9/e;->P()I

    move-result p0

    :goto_0
    int-to-long p0, p0

    mul-long/2addr v0, p0

    return-wide v0

    :cond_4
    invoke-static {p1}, Lj9/f;->k(Lj9/e;)I

    move-result p0

    invoke-static {p0}, Lu6/f;->e0(I)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Lj9/e;->Q()J

    move-result-wide v3

    const-wide/high16 v5, 0xf000000000000L

    and-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Lj9/e;->Q()J

    move-result-wide v0

    and-long/2addr v0, v5

    const/16 p0, 0x30

    shr-long/2addr v0, p0

    invoke-virtual {p1}, Lj9/e;->P()I

    move-result p0

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lj9/f;->e0(Lj9/e;)J

    move-result-wide p0

    return-wide p0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lj9/f;->c0(Lj9/e;)J

    move-result-wide p0

    return-wide p0

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LF1/v1;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, LF1/v1;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LH4/N;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, LH4/N;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lj9/f;->f0(Lj9/e;)J

    move-result-wide p0

    return-wide p0

    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    iget-boolean p0, p0, Lj9/i0;->v1:Z

    if-eqz p0, :cond_9

    invoke-virtual {p1}, Lj9/e;->Q()J

    move-result-wide v3

    const-wide/32 v5, 0xf00000

    and-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Lj9/e;->Q()J

    move-result-wide v0

    and-long/2addr v0, v5

    const/16 p0, 0x14

    shr-long/2addr v0, p0

    invoke-virtual {p1}, Lj9/e;->P()I

    move-result p0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lj9/e;->Q()J

    move-result-wide v3

    const-wide/16 v5, 0xf00

    and-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Lj9/e;->Q()J

    move-result-wide v0

    and-long/2addr v0, v5

    const/16 p0, 0x8

    shr-long/2addr v0, p0

    invoke-virtual {p1}, Lj9/e;->P()I

    move-result p0

    goto/16 :goto_0

    :cond_a
    return-wide v1
.end method

.method public getFixTimeFrontCamera()J
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGraphDescriptorBean()Lcom/xiaomi/engine/GraphDescriptorBean;
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->getActualCameraId()I

    move-result p0

    invoke-static {p0}, LQg/c;->a(I)I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x201

    :cond_0
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, p0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    return-object v0
.end method

.method public getHdrColorReproduction()Ll6/e;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mHdrColorReproduction:Ll6/e;

    return-object p0
.end method

.method public getImageCameraMgr()Ll6/g;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    check-cast p0, Ll6/g;

    return-object p0
.end method

.method public getIsCaptureDownScene()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsCaptureDownScene:Z

    return p0
.end method

.method public getJpegRotation()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->o0()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->c:I

    const/16 v1, 0x5a

    invoke-static {v0, p0, v1}, LBw/i;->H(III)I

    move-result p0

    return p0
.end method

.method public getLivephotoEisSurface()Landroid/view/Surface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMateDataParserLock()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMateDataParserLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getMixedQuickShotSupportOfBackCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMixedQuickShotSupportOfFrontCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getModuleDeviceParam()Ly3/v;
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isParallelSessionEnable()Z

    move-result v0

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->o0()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->getActualCameraId()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->c()Lj9/e;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object p0

    check-cast p0, Lj6/a;

    iget-boolean p0, p0, Lj6/a;->i:Z

    if-nez v0, :cond_1

    invoke-static {}, LJe/c;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v5, Ly3/f;

    invoke-direct {v5}, Ly3/f;-><init>()V

    iput-boolean v0, v5, Ly3/f;->f:Z

    iput v2, v5, Ly3/v;->b:I

    iput-boolean p0, v5, Ly3/f;->e:Z

    iput-object v4, v5, Ly3/v;->d:Lj9/e;

    iput v3, v5, Ly3/v;->c:I

    iput v1, v5, Ly3/v;->a:I

    return-object v5
.end method

.method public getMutexCallback()LF1/E3$a;
    .locals 1

    new-instance v0, Lcom/android/camera/module/Camera2Module$c;

    invoke-direct {v0, p0}, Lcom/android/camera/module/Camera2Module$c;-><init>(Lcom/android/camera/module/Camera2Module;)V

    return-object v0
.end method

.method public getNightManager()Ll6/z;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    return-object p0
.end method

.method public getPictureFormatSuitableForShot(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/m;->T(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lvr/E;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Camera2Module"

    const-string v0, "getPictureFormatSuitableForShot, live photo is on"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p0, 0x100

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget p0, p0, Ll6/n;->D:I

    return p0
.end method

.method public getPictureInfo(Z)Lqh/f;
    .locals 10

    const-string v0, "PictureInfo"

    new-instance v1, Lqh/f;

    invoke-direct {v1}, Lqh/f;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Ll6/g;

    move-result-object v2

    iget v2, v2, Lj6/d;->M:I

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v3

    invoke-virtual {v3}, Lu6/f;->y()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->Q()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, LK2/j;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isFrontMirror()Z

    move-result v3

    if-eq v2, v3, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Lqh/f;->c(Z)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->d0()Z

    move-result v2

    invoke-virtual {v1, v2}, Lqh/f;->h(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Ll6/g;

    move-result-object v2

    invoke-virtual {v2}, Ll6/g;->h1()Z

    move-result v2

    iput-boolean v2, v1, Lqh/f;->f:Z

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/z;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/z;

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v2, v3}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lqh/f;->d(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    invoke-virtual {v1, v2}, Lqh/f;->g(I)V

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iput v2, v1, Lqh/f;->A:I

    invoke-virtual {v1, p1}, Lqh/f;->e(Z)V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {}, LF6/b;->c()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "_17"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lqh/f;->E:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget-boolean v3, v2, Ll6/b;->c:Z

    iput-boolean v3, v1, Lqh/f;->e:Z

    iget v2, v2, Ll6/b;->b:I

    iput v2, v1, Lqh/f;->d:I

    :try_start_0
    iget-object v3, v1, Lqh/f;->b:Lorg/json/JSONObject;

    const-string v6, "AIScene"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v3, "setAIScene JSONException occurs "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v3, 0xa7

    if-ne v2, v3, :cond_2

    iput-boolean v5, v1, Lqh/f;->l:Z

    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v2, v2, Ll6/t;->d:Z

    iput-boolean v2, v1, Lqh/f;->k:Z

    invoke-static {}, Lcom/android/camera/data/data/j;->P()I

    move-result v2

    invoke-virtual {v1, v2}, Lqh/f;->b(I)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/effect/EffectController;->l()I

    move-result v3

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v2, v6, v3}, Lcom/xiaomi/camera/effect/EffectController;->q(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lqh/f;->i:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/data/data/E;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/data/E;->i0()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v2, "1000"

    :cond_3
    sget-object v3, Li2/a;->a:Li2/b;

    invoke-interface {v3}, Li2/b;->b()Lj2/h;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Lj2/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lqh/f;->j:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->d0()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "front"

    iput-object v2, v1, Lqh/f;->t:Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActualCameraId()I

    move-result v2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v3

    invoke-virtual {v3}, Lu6/f;->k()I

    move-result v3

    if-ne v2, v3, :cond_5

    const-string v3, "_RearUltra"

    invoke-static {v2, v3}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lqh/f;->t:Ljava/lang/String;

    goto :goto_3

    :cond_5
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v3

    invoke-virtual {v3}, Lu6/f;->o()I

    move-result v3

    if-ne v2, v3, :cond_6

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K7()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "_RearMacro"

    invoke-static {v2, v3}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lqh/f;->t:Ljava/lang/String;

    goto :goto_3

    :cond_6
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v3

    invoke-virtual {v3}, Lu6/f;->r()I

    move-result v3

    if-ne v2, v3, :cond_7

    const-string v3, "_RearTele"

    invoke-static {v2, v3}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lqh/f;->t:Ljava/lang/String;

    goto :goto_3

    :cond_7
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v3

    invoke-virtual {v3}, Lu6/f;->M()I

    move-result v3

    if-ne v2, v3, :cond_8

    const-string v3, "_RearTele4x"

    invoke-static {v2, v3}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lqh/f;->t:Ljava/lang/String;

    goto :goto_3

    :cond_8
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v3

    invoke-virtual {v3}, Lu6/f;->f()I

    move-result v3

    if-ne v2, v3, :cond_9

    const-string v3, "_RearWide"

    invoke-static {v2, v3}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lqh/f;->t:Ljava/lang/String;

    goto :goto_3

    :cond_9
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v3

    invoke-virtual {v3}, Lu6/f;->v()I

    move-result v3

    if-ne v2, v3, :cond_a

    const-string v3, "_rear"

    invoke-static {v2, v3}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lqh/f;->t:Ljava/lang/String;

    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mFocalLengths:[F

    if-eqz v2, :cond_b

    array-length v3, v2

    if-lez v3, :cond_b

    aget v2, v2, v4

    iput v2, v1, Lqh/f;->u:F

    :cond_b
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    iget-object v2, v2, Ll6/z;->h:Lha/o$a;

    if-eqz v2, :cond_d

    iget-object v3, v2, Lha/o$a;->h:Ljava/lang/String;

    if-eqz v3, :cond_c

    iput-object v3, v1, Lqh/f;->L:Ljava/lang/String;

    goto :goto_5

    :cond_c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "luxIndex"

    iget v8, v2, Lha/o$a;->a:F

    float-to-double v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v7, "light"

    iget v8, v2, Lha/o$a;->b:F

    float-to-double v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v7, "darkRatio"

    iget v8, v2, Lha/o$a;->c:F

    float-to-double v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v7, "middleRatio"

    iget v8, v2, Lha/o$a;->d:F

    float-to-double v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v7, "brightRatio"

    iget v8, v2, Lha/o$a;->e:F

    float-to-double v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v7, "result"

    iget v2, v2, Lha/o$a;->f:F

    float-to-double v8, v2

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "superNightExif"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "XpCommentBytes SuperNightExifException: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v6}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "MarshalQueryableSuperNightExif"

    invoke-static {v7, v2, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    iput-object v2, v1, Lqh/f;->K:Ljava/lang/String;

    :cond_d
    :goto_5
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mApertures:[F

    if-eqz v2, :cond_e

    array-length v3, v2

    if-lez v3, :cond_e

    aget v2, v2, v4

    iput v2, v1, Lqh/f;->v:F

    :cond_e
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mDebugFaceInfos:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mDebugFaceInfos:Ljava/lang/String;

    iput-object v2, v1, Lqh/f;->s:Ljava/lang/String;

    :cond_f
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mAiCompositionInfo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mAiCompositionInfo:Ljava/lang/String;

    iput-object v2, v1, Lqh/f;->B:Ljava/lang/String;

    :cond_10
    iget v2, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    iput v2, v1, Lqh/f;->M:I

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object v2

    invoke-interface {v2}, Lf9/a;->a1()F

    move-result v2

    iput v2, v1, Lqh/f;->n:F

    :try_start_2
    iget-object v3, v1, Lqh/f;->b:Lorg/json/JSONObject;

    const-string/jumbo v6, "zoomMultiple"

    float-to-double v7, v2

    invoke-virtual {v3, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v2

    const-string/jumbo v3, "setZoomMulti JSONException occurs "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lj9/a;->t()Lj9/i0;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-wide v6, v3, Lj9/i0;->n0:J

    iput-wide v6, v1, Lqh/f;->T:J

    iget v6, v3, Lj9/i0;->h0:I

    iput v6, v1, Lqh/f;->m:I

    iget-object v3, v3, Lj9/i0;->c:[Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v3, :cond_12

    array-length v6, v3

    if-lez v6, :cond_12

    aget-object v3, v3, v4

    if-nez v3, :cond_11

    const-string v3, "0"

    iput-object v3, v1, Lqh/f;->o:Ljava/lang/String;

    goto :goto_7

    :cond_11
    iput-object v3, v1, Lqh/f;->r:Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getX()I

    move-result v4

    iput v4, v1, Lqh/f;->p:I

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getY()I

    move-result v3

    iput v3, v1, Lqh/f;->q:I

    :cond_12
    :goto_7
    invoke-virtual {v2}, Lj9/a;->K()Lj9/H1;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lj9/H1;->b()Lj9/H1$a;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v2}, Lj9/H1;->b()Lj9/H1$a;

    move-result-object v3

    iget-object v3, v3, Lj9/H1$a;->N:Ljava/lang/String;

    iput-object v3, v1, Lqh/f;->y:Ljava/lang/String;

    invoke-virtual {v2}, Lj9/H1;->b()Lj9/H1$a;

    move-result-object v2

    iget-wide v2, v2, Lj9/H1$a;->O:J

    iput-wide v2, v1, Lqh/f;->z:J

    :cond_13
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v2

    invoke-interface {v2}, Lj6/f;->x()Lx4/s;

    move-result-object v2

    if-eqz v2, :cond_14

    const-string v2, "i:0"

    invoke-static {}, Lcom/android/camera/data/data/j;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lj9/e;->m()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v2

    invoke-interface {v2}, Lj6/f;->x()Lx4/s;

    move-result-object v2

    iget-object v2, v2, Lx4/s;->a:Ljava/lang/String;

    :try_start_3
    iget-object v3, v1, Lqh/f;->b:Lorg/json/JSONObject;

    const-string v4, "BeautyLevel"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v2

    const-string/jumbo v3, "setBeautyLevel JSONException occurs "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    :goto_8
    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v3, 0xad

    if-ne v2, v3, :cond_15

    :try_start_4
    iget-object v2, v1, Lqh/f;->b:Lorg/json/JSONObject;

    const-string v3, "NightScene"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catch_4
    move-exception v2

    const-string/jumbo v3, "setNightScene JSONException occurs "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_9
    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v0

    iget-wide v2, v0, Ll6/h;->A:J

    iput-wide v2, v1, Lqh/f;->O:J

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/f2;

    const/4 v3, 0x7

    invoke-direct {v2, v1, v3}, LF1/f2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lqh/f;->a()V

    if-nez p1, :cond_16

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object p0

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ll6/h;->B:Ljava/lang/ref/WeakReference;

    :cond_16
    return-object v1
.end method

.method public getRawCallbackType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getReprocessDataSize()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {p0}, Lwp/g;->a()Lwp/g$b;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/d2;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LF1/d2;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSnapCondition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSuperNightCbImpl()Ll6/L;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightCbImageImpl:Ll6/L;

    if-nez v0, :cond_0

    new-instance v0, Ll6/L;

    invoke-direct {v0, p0}, Ll6/L;-><init>(Lcom/android/camera/module/Camera2Module;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightCbImageImpl:Ll6/L;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mSuperNightCbImageImpl:Ll6/L;

    return-object p0
.end method

.method public getTagSupportModeBackCamera()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportEnableHighQualityQuickShotByTag"
        type = 0x2
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getTagSupportModeFrontCamera()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportEnableHighQualityQuickShotByTag"
        type = 0x2
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getWatermarkItem()LN1/n;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getZoomManager()Lf9/a;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    if-nez v0, :cond_0

    new-instance v0, Lh9/r;

    invoke-direct {v0, p0}, Lh9/r;-><init>(Lcom/android/camera/module/r;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    return-object p0
.end method

.method public handleCoverViewForNormalCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handleMessage(ILandroid/os/Message;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, "Camera2Module"

    if-eq p1, v2, :cond_b

    const-wide/16 v4, 0x1388

    const/4 v6, 0x4

    if-eq p1, v6, :cond_9

    const/16 v6, 0x9

    if-eq p1, v6, :cond_a

    const/16 v6, 0xa

    if-eq p1, v6, :cond_8

    sget-object v6, Lcom/android/camera/guide/a;->i:Lcom/android/camera/guide/a$b;

    const/16 v7, 0x6e

    const/16 v8, 0x11

    if-eq p1, v8, :cond_7

    const/16 v2, 0x1f

    if-eq p1, v2, :cond_6

    const/16 v2, 0x35

    if-eq p1, v2, :cond_5

    const/16 v2, 0x49

    if-eq p1, v2, :cond_3

    const/16 v2, 0x4b

    if-eq p1, v2, :cond_2

    if-eq p1, v7, :cond_1

    const/16 v2, 0x32

    if-eq p1, v2, :cond_0

    const/16 v2, 0x33

    if-eq p1, v2, :cond_8

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->handleMessage(ILandroid/os/Message;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->enterAutoHibernation()V

    return v1

    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x42

    invoke-virtual {p1, p2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/android/camera/module/r;->showAutoHibernationTip()V

    return v1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->onWaitingFocusFinished()Z

    return v1

    :pswitch_3
    const-string/jumbo p1, "wait save finish timeout"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/module/PhotoBase;->setNeedWaitSaveFinish(Z)V

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/j;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, LEs/j;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v1

    :pswitch_4
    const-string p1, "fallback timeout"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1, v0}, Lj6/j;->N0(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1, v0}, Lj6/j;->v0(Z)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lj6/j;->n(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->c0()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->x0()I

    move-result p1

    if-ne p1, v1, :cond_a

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1, v0}, Lj6/j;->V0(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1

    :pswitch_5
    const-string p1, "receive MSG_FIXED_SHOT2SHOT_TIME_OUT"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resetStatusToIdle()V

    return v1

    :pswitch_6
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LV9/G;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0, p2}, LV9/G;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v1

    :cond_0
    const-string p1, "Oops, capture timeout later release timeout!"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 p1, 0x0

    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/camera/module/Camera2Module;->onPictureTakenFinished(ZJI)V

    return v1

    :cond_1
    const-string p0, "receive CLEAR_SECOND_SCREEN_DELAY"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    invoke-static {}, Lcom/android/camera/guide/a;->b()V

    return v1

    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    const-string p1, "receive MSG_FIXED_SNAP_SHOT_DELAY_TIME"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mShutterReturned:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resetStatusToIdle()V

    return v1

    :cond_3
    sget-object p0, Lf2/a;->f:Lf2/a;

    iget p1, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    if-ne p2, v1, :cond_4

    move p2, v1

    goto :goto_0

    :cond_4
    move p2, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, p2, v1, v0}, Lf2/a;->j(IZZZZ)V

    return v1

    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    const/16 p2, 0x46

    invoke-interface {p1, p2}, Lj6/f;->N(I)V

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0}, Lj6/f;->S()I

    move-result p0

    invoke-virtual {p1, p0}, Ll6/f;->onShutterButtonClick(I)Z

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->setOrientationParameter()V

    return v1

    :cond_7
    const-string p1, "receive MSG_KEEP_SCREEN_ON"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v6}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/camera/guide/a;->a(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getWindowOpt()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LEs/h;

    const/16 v0, 0xf

    invoke-direct {p2, v0}, LEs/h;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getScreenDelay()I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/r;->onCameraOpenedFail()V

    return v1

    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkActivityOrientation()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/android/camera/module/Camera2Module;->mOnResumeTime:J

    sub-long/2addr p1, v2

    cmp-long p1, p1, v4

    if-gez p1, :cond_a

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v6, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    return v1

    :cond_b
    const-string p1, "receive CLEAR_SCREEN_DELAY"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getWindowOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LE4/e;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, LE4/e;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleZslSoundAndAnim(Lj9/H1;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->needZslSound(Lj9/H1;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lqh/a;

    if-eqz p1, :cond_0

    new-instance v0, LV9/W4;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LV9/W4;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Lhi/d;->c()Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lqh/a;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "Camera2Module"

    const-string/jumbo v2, "takePicture play sound"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->playCameraSound(I)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->animateCapture()V

    :cond_1
    return-void
.end method

.method public handledSuperNightResult(Z)V
    .locals 7

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    invoke-virtual {p1}, Ll6/z;->c()Z

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    iget-boolean p1, p1, Lv2/D0;->H:Z

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean p1, p0, Ll6/z;->f:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v0, LDr/e;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, LDr/e;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_1
    invoke-virtual {p0}, Ll6/z;->g()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iput v0, p0, Ll6/z;->l:I

    return-void

    :cond_2
    iget-object p1, p0, Ll6/z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lip/a;

    if-nez p1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-interface {p1}, Lip/a;->getCameraManager()Lj6/j;

    move-result-object v1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/E0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/E0;

    invoke-interface {p1}, Lip/a;->isMultiCaptureWorking()Z

    move-result v3

    if-nez v3, :cond_12

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lv2/E0;->a()Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/c0;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/c0;

    invoke-interface {p1}, Lip/a;->getModuleIndex()I

    move-result v4

    const/16 v5, 0xaf

    const-string v6, "NightManager"

    if-ne v4, v5, :cond_5

    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->D4()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lv2/E0;->c()Z

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v3, v3, Lr2/c0;->f:Z

    if-eqz v3, :cond_5

    const-string p0, " handleLongExpCaptureIfNeeded() supportCaptureDuration"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v3

    invoke-static {v3}, Lj9/f;->J1(Lj9/e;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Lip/a;->getModuleIndex()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/data/data/m;->i0(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string p0, "prepareLongExpCaptureIfNeeded: mivi super night is canceled"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj9/h0;->P(I)V

    :cond_7
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    iget-boolean v1, v1, Lv2/D0;->H:Z

    if-eqz v1, :cond_8

    goto/16 :goto_2

    :cond_8
    invoke-static {}, LJe/c;->d0()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    iget-boolean v1, v2, Lv2/E0;->j:Z

    if-nez v1, :cond_c

    const-string v1, "mivi2 playCameraSound"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v6, v1, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, v2, Lv2/E0;->j:Z

    invoke-interface {p1}, Lip/a;->stopCameraSound()V

    invoke-interface {p1, v0}, Lip/a;->playCameraSound(I)V

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lv2/E0;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Lip/a;->animateCapture()V

    :cond_9
    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object v1

    invoke-virtual {v1}, LBr/e;->l()V

    goto :goto_0

    :cond_a
    iget-boolean v1, v2, Lv2/E0;->i:Z

    if-nez v1, :cond_c

    iput-boolean v3, v2, Lv2/E0;->i:Z

    const-string v1, "mivi night readpixel"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v6, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lip/a;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v1

    sget-object v3, Ltu/c;->a:Ltu/c;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lru/k;->k(Ltu/c;[Ljava/lang/Object;)V

    :cond_b
    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object v1

    invoke-virtual {v1}, LBr/e;->l()V

    :cond_c
    :goto_0
    iget-boolean v1, v2, Lv2/E0;->h:Z

    if-eqz v1, :cond_f

    const-string v1, "handleLongExpCaptureIfNeeded"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v6, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lip/a;->getModuleIndex()I

    move-result v1

    if-eq v1, v5, :cond_d

    iget-object v1, p0, Ll6/z;->b:Lio/reactivex/disposables/b;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lio/reactivex/disposables/b;->a()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Ll6/z;->b:Lio/reactivex/disposables/b;

    invoke-interface {v1}, Lio/reactivex/disposables/b;->c()V

    const/4 v1, 0x0

    iput-object v1, p0, Ll6/z;->b:Lio/reactivex/disposables/b;

    :cond_d
    iput-boolean v0, v2, Lv2/E0;->h:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-interface {p1}, Lip/a;->getModuleIndex()I

    move-result v1

    if-ne v1, v5, :cond_e

    iget-object v1, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->D4()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->v5()Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, Ll6/w;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_1

    :cond_e
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, Lcom/xiaomi/microfilm/vlog/vv/E;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/xiaomi/microfilm/vlog/vv/E;-><init>(I)V

    invoke-static {p0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_1

    :cond_f
    invoke-virtual {v2}, Lv2/E0;->g()Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "handleLongExpCaptureIfNeeded: short"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v6, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-interface {p1}, Lip/a;->getModuleIndex()I

    move-result v1

    if-ne v1, v5, :cond_10

    iget-object v1, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->D4()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->v5()Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, LDs/j;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LDs/j;-><init>(I)V

    invoke-static {p0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_1

    :cond_10
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, LR3/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LR3/a;-><init>(I)V

    invoke-static {p0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_11
    :goto_1
    invoke-interface {p1, v0}, Lip/a;->lockScreenOrientation(Z)V

    :cond_12
    :goto_2
    return-void
.end method

.method public hidePostCaptureAlert()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getUserEventMgr()Lj6/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lj6/i;->enableCameraControls(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->restartPreview()V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LD8/h;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LD8/h;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/W0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/K3;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, LF1/K3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/j0;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/module/X;->Te()LF8/c;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;

    iget-boolean v1, v1, Lcom/android/camera/ui/suspendshutter/V9SuspendShutterButton;->n:Z

    if-eqz v1, :cond_2

    invoke-interface {p0, v2}, LF8/c;->setSuspendShutterVisibility(I)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ6/j0;

    invoke-interface {p0}, LQ6/j0;->c()V

    return-void

    :cond_3
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "Camera2Module"

    const-string/jumbo v1, "showPostCaptureAlert: lost BaseDelegate"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public ignoreCameraKeyEvent()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->ignoreKeyEvent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->x0()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LU4/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LU4/c;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

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

.method public initZoomMapControllerIfNeeded()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSatPipSupported"
        type = 0x2
    .end annotation

    return-void
.end method

.method public isBlockSnap()Z
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->computeBlockSnap()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/module/Camera2Module;->mBlockSnapStartTime:J

    cmp-long v1, v5, v1

    if-nez v1, :cond_0

    iput-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mBlockSnapStartTime:J

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mBlockSnapDfsReported:Z

    if-nez v1, :cond_1

    sub-long v1, v3, v5

    const-wide/16 v7, 0x1388

    cmp-long v1, v1, v7

    if-lez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mBlockSnapDfsReported:Z

    sub-long/2addr v3, v5

    invoke-direct {p0, v3, v4}, Lcom/android/camera/module/Camera2Module;->reportBlockSnapTimeoutDfs(J)V

    :cond_1
    return v0

    :cond_2
    iput-wide v1, p0, Lcom/android/camera/module/Camera2Module;->mBlockSnapStartTime:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mBlockSnapDfsReported:Z

    return v0
.end method

.method public final isBokehUltraWideBackCamera()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->getActualCameraId()I

    move-result p0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->d()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCameraSwitchingDuringZoomingAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lv2/l0;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/l0;

    iget-boolean v0, p0, Lv2/l0;->b:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lv2/l0;->j:Z

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/r;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0}, Lcom/android/camera/module/r;->isCameraSwitchingDuringZoomingAllowed()Z

    move-result p0

    return p0

    :cond_2
    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->D()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/module/Y;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->d0()Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public isCaptureIntent()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object p0

    check-cast p0, Lj6/a;

    iget-boolean p0, p0, Lj6/a;->i:Z

    return p0
.end method

.method public isCaptureWillCostHugeMemory()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isHugeMemCaptureScene()Z

    move-result p0

    return p0
.end method

.method public isCupCaptureEnabled()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFrontCUPLens"
        type = 0x0
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isDoingAction()Z
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/camera/module/PhotoBase;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean p0, p0, Ll6/t;->d:Z

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

.method public bridge synthetic isDolbyVisionPreview()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDownCapturing()Z
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object p0

    iget-wide v0, p0, Ll6/h;->z:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFallbackToWide()Z
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isMTKPlatform"
        type = 0x1
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->D0(Lj9/e;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v1}, Lj9/a;->H()I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object v4

    invoke-interface {v4}, Lf9/a;->a1()F

    move-result v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->a1()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_2

    if-eqz v1, :cond_2

    :goto_1
    return v3

    :cond_2
    return v2
.end method

.method public isFrontMirror()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/data/j;->v0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->Q()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v0

    invoke-virtual {v0}, Ls4/e;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, LK2/e;->z()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/w;->Q()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->d0()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-static {}, Lcom/android/camera/data/data/w;->Q()Z

    move-result p0

    return p0
.end method

.method public isHighQualityQuickShotAndQuickShotMixedUseSupport()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getMixedQuickShotSupportOfFrontCamera()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getMixedQuickShotSupportOfBackCamera()Z

    move-result p0

    return p0
.end method

.method public isHugeMemCaptureScene()Z
    .locals 3

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->V1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object v0

    iget v0, v0, Lj9/i0;->a1:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mSpecShotMode:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mSpecShotMode:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    :cond_1
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Camera2Module"

    const-string v1, "isCaptureWillCostHugeMemory: true >>> capture will trigger AINR "

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    return v1
.end method

.method public isISORight4HWMFNR()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportQuickshotIsoThresholds"
        type = 0x2
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    return p0
.end method

.method public isInStartingFocusRecording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/r;->mInStartingFocusRecording:Z

    return p0
.end method

.method public isIsAiShutterOn()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isMTKPlatform"
        type = 0x1
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsAiShutterOn:Z

    return p0
.end method

.method public isLongExpCaptureInCaptureMode()Z
    .locals 0

    invoke-static {}, Ll6/z;->e()Z

    move-result p0

    return p0
.end method

.method public isMeteringAreaOnly()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget v0, v0, Lj9/i0;->l0:I

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->Z0()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    const/4 p0, 0x5

    if-eq p0, v0, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isMfnrNeeded()Z
    .locals 15
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSuperResolution"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->D0(Lj9/e;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object v1

    invoke-interface {v1}, Lf9/a;->a1()F

    move-result v1

    const-string v2, "Camera2Module"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_f

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->V()Lj9/a;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lur/i;->p(Lj9/a;Ljava/util/HashMap;F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithSR:Z

    if-eqz v0, :cond_e

    :cond_0
    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->R5()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needMixQuickShot()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v0, p0, Lj9/e;->V6:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lj9/e;->U6:Ljava/lang/Boolean;

    iget-object v6, p0, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    const v7, 0xdead

    if-nez v5, :cond_4

    sget-object v5, Lga/w0;->Z2:Lga/D0;

    invoke-virtual {v5}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6, v5, v7}, Lga/E0;->i(Landroid/hardware/camera2/CameraCharacteristics;Lga/D0;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lj9/e;->U6:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v5, p0, Lj9/e;->U6:Ljava/lang/Boolean;

    :cond_4
    :goto_1
    iget-object v5, p0, Lj9/e;->U6:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v0, Lga/w0;->Z2:Lga/D0;

    invoke-static {v6, v0, v7}, Lga/E0;->i(Landroid/hardware/camera2/CameraCharacteristics;Lga/D0;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v5, "CameraCapabilities"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v7

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v8

    if-ge v7, v8, :cond_8

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    new-instance v7, Lj9/F1;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lj9/F1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getQuickshotNoSRZoomRange: zoom count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v5, v9, v10}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    rem-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_6

    move v9, v3

    goto :goto_3

    :cond_6
    move v9, v4

    :goto_3
    move v10, v4

    :goto_4
    div-int/lit8 v11, v8, 0x2

    if-ge v10, v11, :cond_7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v11

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    iget-object v13, v7, Lj9/F1;->a:Ljava/util/ArrayList;

    new-instance v14, Landroid/util/Range;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-direct {v14, v11, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v3

    goto :goto_4

    :catch_0
    move-exception v7

    goto :goto_5

    :cond_7
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getQuickshotNoSRZoomRange: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    move-object v0, v6

    :cond_9
    iput-object v0, p0, Lj9/e;->V6:Ljava/util/ArrayList;

    :cond_a
    iget-object p0, p0, Lj9/e;->V6:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj9/F1;

    iget-object v0, v0, Lj9/F1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_c

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_c

    goto :goto_7

    :cond_d
    :goto_6
    move v3, v4

    :cond_e
    :goto_7
    const-string p0, "mfnrNeeded: "

    invoke-static {p0, v3}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_f
    sget-boolean v0, LJe/d;->i:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->needMixQuickShot()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->R5()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4MFNRReplaceSR:Z

    if-eqz v0, :cond_10

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_10

    cmpl-float v0, v1, v5

    if-lez v0, :cond_10

    const-string p0, "mtk mfnrNeeded true"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_10
    cmpg-float v0, v1, v5

    if-lez v0, :cond_12

    float-to-double v0, v1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    cmpg-double v5, v0, v5

    if-gez v5, :cond_11

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v5

    if-lez v0, :cond_11

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->l0()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithSR:Z

    if-nez p0, :cond_11

    goto :goto_8

    :cond_11
    move v3, v4

    :cond_12
    :goto_8
    const-string p0, "isMfnrNeeded -> getThresholdZoom is null, and mfnrNeeded: "

    invoke-static {p0, v3}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public bridge synthetic isMiLiveRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiCaptureWorking()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean p0, p0, Ll6/t;->d:Z

    return p0
.end method

.method public bridge synthetic isMultiSnapStarted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultipleRawHdrSupported()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedBottomTip()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v0, p0, Ll6/t;->c:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Ll6/t;->d:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedDelaySound()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedMute()Z
    .locals 0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    iget-boolean p0, p0, Lv2/D0;->N:Z

    return p0
.end method

.method public isNeedNearRangeTip()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportNearRangeMode"
        type = 0x2
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {p0}, LQ6/j1;->isShooting()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isNeedThumbnail(ZZ)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->enabledPreviewThumbnail()Z

    move-result p1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 p2, 0xba

    if-ne p1, p2, :cond_0

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    invoke-virtual {p1}, LJe/c;->G0()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 p2, 0xb6

    if-ne p1, p2, :cond_1

    invoke-static {}, LJe/c;->d0()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 p1, 0xe8

    if-eq p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    const-string p1, "parallel need thumbnail "

    invoke-static {p1, p0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Camera2Module"

    invoke-static {v0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public isParallelSessionEnable()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    invoke-static {}, LJe/c;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/j;->o0()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->getActualCameraId()I

    move-result v0

    invoke-static {v0}, Lu6/f;->f0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->o0()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->getActualCameraId()I

    move-result v0

    invoke-static {v0}, Lu6/f;->h0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->R1()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object p0

    check-cast p0, Lj6/a;

    iget-boolean p0, p0, Lj6/a;->i:Z

    if-eqz p0, :cond_4

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->I()Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, 0x1

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

.method public isPreviewThumbnailWhenFlash()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "useLegacyFlashMode"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a8()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "3"

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPurePreview()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isQueueFull()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v1, v0, Lv6/b;->e:Z

    if-eqz v1, :cond_4

    const/4 p0, 0x0

    if-nez v1, :cond_0

    return p0

    :cond_0
    iget-object v0, v0, Lv6/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lg3/f;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lg3/f;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lg3/g;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lg3/g;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object v0, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v0}, Lwp/g;->a()Lwp/g$b;

    move-result-object v0

    const-string v1, "ParallelManager"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lwp/g$b;->k()Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "isParallelQueueFull: NOTICE: CHECK WHY BINDER IS NULL!"

    new-array v2, p0, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, p0

    :goto_0
    if-eqz v0, :cond_3

    const-string v2, "isParallelQueueFull: isNeedWaitProcess"

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v1, v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v0

    :cond_4
    invoke-super {p0}, Lcom/xiaomi/camera/module/PhotoBase;->isQueueFull()Z

    move-result p0

    return p0
.end method

.method public isQuickShotMultiFrameToZsl()Z
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->t()Lj9/i0;

    move-result-object v1

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->E2()Z

    move-result v2

    const-string v3, "Camera2Module"

    if-nez v2, :cond_1

    const-string p0, "isQuickShotMultiFrameToZsl: isMfnrAlogUpQuickShotEnabled false"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    iget-boolean v2, p0, Lj9/a;->n:Z

    if-nez v2, :cond_2

    const-string p0, "isQuickShotMultiFrameToZsl: isFixShotTime false"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_2
    sget-object v2, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v2}, Lwp/g;->a()Lwp/g$b;

    move-result-object v2

    invoke-virtual {v2}, Lwp/g$b;->h()Z

    move-result v2

    if-nez v2, :cond_3

    const-string p0, "isQuickShotMultiFrameToZsl: isAnyRequestIsHWMFNRProcessing false"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_3
    iget-boolean v2, v1, Lj9/i0;->h2:Z

    if-eqz v2, :cond_4

    const-string p0, "isQuickShotMultiFrameToZsl: isAiShutterExistMotion true"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_4
    iget-boolean v2, v1, Lj9/i0;->h3:Z

    iget-boolean v4, v1, Lj9/i0;->i3:Z

    iget-boolean v1, v1, Lj9/i0;->j3:Z

    invoke-virtual {p0}, Lj9/a;->y()I

    move-result v5

    invoke-virtual {p0}, Lj9/a;->t()Lj9/i0;

    move-result-object v6

    iget-boolean v6, v6, Lj9/i0;->Q0:Z

    invoke-virtual {p0}, Lj9/a;->w()I

    move-result p0

    if-eqz v4, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    if-nez v6, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-gt v5, p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_0
    const-string p0, "isQuickShotMultiFrameToZsl: isQuickShot... false"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public isQuickShotSupport()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isRecording()Z
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->isShooting()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {p0}, LQ6/j1;->Od()Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    iget-boolean v0, v0, Lv2/D0;->B:Z

    if-eqz v0, :cond_1

    invoke-static {}, LQ6/k1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LE4/n;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, LE4/n;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    return v2
.end method

.method public bridge synthetic isRecordingPaused()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRepeatingRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v0, v0, Ll6/t;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->x0()I

    move-result p0

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSatMultipleRawUseCase(Lj9/H1$a;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSelectingCapturedResult()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object p0

    check-cast p0, Lj6/a;

    invoke-virtual {p0}, Lj6/a;->a()Z

    move-result p0

    return p0
.end method

.method public isShot2GalleryOrEnableParallel()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v0, v0, Lv6/b;->e:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

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

.method public isShowAeAfLockIndicator()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->U()Z

    move-result p0

    return p0
.end method

.method public isShowCaptureButton()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isSupportTapShoot()Z

    move-result p0

    return p0
.end method

.method public isShutterLongClickRecording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mIsShutterLongClickRecording:Z

    return p0
.end method

.method public isSuperResolutionHDR()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportHdrAndSuperResolution"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->D0(Lj9/e;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->a1()F

    move-result p0

    invoke-static {v1, v0, p0}, Lur/i;->p(Lj9/a;Ljava/util/HashMap;F)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/z;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/z;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->a1()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_1

    const-string p0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportNightOrLLSASD()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportTapShoot()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v0, 0xab

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xad

    if-eq p0, v0, :cond_0

    const/16 v0, 0xaf

    if-eq p0, v0, :cond_0

    const/16 v0, 0xcd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xbc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xba

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/module/Y;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xe4

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x100

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe8

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/w;->z0()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
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

.method public isTestImageCaptureWithoutLocation()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-object v0, v0, Lj6/a;->k:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object p0

    check-cast p0, Lj6/a;

    iget-object p0, p0, Lj6/a;->k:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.providerui.cts.fileprovider"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "isTestImageCaptureWithoutLocation"

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Camera2Module"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public isTripodDetected()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUseSwMfnr()Z
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportSwMfnr"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v2, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Camera2Module"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget v0, v0, Lj9/a;->a:I

    invoke-static {v0}, Lu6/f;->h0(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->m()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const-string p0, "SwMfnr force off for ultra wide camera"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_2
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const-string v0, "pref_camera_mfnr_sat_enable_key"

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Mfnr not enabled"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_3
    iget-object p0, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "SwMfnr is not supported"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public isZoomEnabled()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->R4()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->a1()F

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/j;->I0(F)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->b4()Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Ll6/g;

    move-result-object v0

    invoke-virtual {v0}, Lj6/d;->o()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/S;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/S;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lr2/S;->isSwitchOn(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->a1()F

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/j;->I0(F)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public isZslPreferred()Z
    .locals 0

    sget-boolean p0, LJe/d;->i:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public judgeHighQualityQuickShotSupportByFeature()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportEnableHighQualityQuickShotByTag"
        type = 0x2
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public multiCapture()Z
    .locals 15
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/16 v0, 0x11

    const/4 v1, 0x3

    const/16 v2, 0xc

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const-string v5, "Camera2Module"

    const/4 v6, 0x0

    if-eqz v4, :cond_1c

    invoke-interface {v4}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    iget-boolean v4, v4, Ll6/f;->e:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v4

    iget-wide v7, v4, Ll6/h;->z:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "multiCapture: doing action"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Ll6/t;->e:Ljava/lang/Boolean;

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/J;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LEs/J;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v6

    :cond_2
    :goto_0
    const-string v4, "multiCapture: ignore down capture"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5, v4, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v4

    const-string/jumbo v5, "shot_prepare_capture"

    invoke-virtual {v4, v5}, LF6/q;->q(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-object v5, v4, Ll6/t;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/module/Camera2Module;

    if-eqz v7, :cond_1a

    iget-boolean v8, v4, Ll6/t;->c:Z

    if-nez v8, :cond_4

    goto/16 :goto_6

    :cond_4
    iput-boolean v6, v4, Ll6/t;->c:Z

    invoke-virtual {v7}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/module/X;->Z0()V

    invoke-static {}, Lk7/K;->p()Z

    move-result v8

    const-string v9, "MultiCaptureManager"

    if-eqz v8, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not enough space or storage not ready. remaining="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lk7/K;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v7}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v8

    iget-boolean v10, v8, Lk7/i;->g:Z

    if-eqz v10, :cond_6

    new-array v10, v6, [Ljava/lang/Object;

    const-string v11, "ImageSaver"

    const-string v12, "ImageSaver is full"

    invoke-static {v11, v12, v10}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-boolean v8, v8, Lk7/i;->g:Z

    if-nez v8, :cond_19

    invoke-virtual {v7}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    const/16 v10, 0x58

    if-le v8, v10, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v7}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v8

    invoke-interface {v8}, Lj6/j;->V()Lj9/a;

    move-result-object v8

    if-nez v8, :cond_8

    const-string v0, "multiCapture exception: cameraDevice is null!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v7}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v8

    invoke-interface {v8}, Lj6/j;->V()Lj9/a;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v8

    invoke-interface {v8}, Lj6/j;->V()Lj9/a;

    move-result-object v8

    invoke-virtual {v8, v3}, Lj9/a;->c(Z)V

    :cond_9
    invoke-virtual {v7}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v8

    invoke-interface {v8}, Lj6/j;->c()Lj9/e;

    move-result-object v8

    invoke-static {v8}, Lj9/f;->h3(Lj9/e;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v8

    new-instance v10, LEs/p;

    invoke-direct {v10, v2}, LEs/p;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_a
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v8

    new-instance v10, LB9/c;

    const/16 v11, 0xe

    invoke-direct {v10, v11}, LB9/c;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_1
    invoke-static {}, LQ6/P;->a()Ljava/util/Optional;

    move-result-object v8

    new-instance v10, LEs/r;

    const/4 v11, 0x7

    invoke-direct {v10, v11}, LEs/r;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-array v8, v6, [Ljava/lang/Object;

    const-string v10, "prepareMultiCapture"

    invoke-static {v9, v10, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v8

    invoke-interface {v8}, Lj6/j;->q0()Lu6/q;

    move-result-object v8

    invoke-interface {v8}, Lu6/q;->a()V

    iput-boolean v3, v4, Ll6/t;->d:Z

    iput-boolean v6, v4, Ll6/t;->f:Z

    invoke-virtual {v5, v3}, Lcom/android/camera/module/r;->setDisEnableAsdChain(Z)V

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v8

    invoke-interface {v8}, Lj6/j;->V()Lj9/a;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v8

    invoke-interface {v8}, Lj6/j;->K0()Lj9/h0;

    move-result-object v8

    iget-object v8, v8, Lj9/h0;->a:Lj9/i0;

    iput-boolean v6, v8, Lj9/i0;->b2:Z

    :cond_b
    sget-boolean v8, Lvr/K;->b:Z

    if-nez v8, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, LEp/h;->a()V

    sput-boolean v3, Lvr/K;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v14, "clearMemoryLimit() consume:"

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13, v10, v11, v8}, LF1/T;->b(JJLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "MemoryUtil"

    invoke-static {v10, v8}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v5}, Lcom/android/camera/module/Camera2Module;->prepareNormalCapture()V

    invoke-static {}, LN6/b;->a()Ljava/util/Optional;

    move-result-object v8

    new-instance v10, LEs/g;

    invoke-direct {v10, v2}, LEs/g;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v8, LE4/c;

    const/16 v10, 0xd

    invoke-direct {v8, v10}, LE4/c;-><init>(I)V

    invoke-virtual {v2, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/data/data/w;->C0(I)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v8, LT9/t;

    invoke-direct {v8, v1}, LT9/t;-><init>(I)V

    const-wide/16 v10, 0x64

    invoke-static {v2, v8, v10, v11}, LAr/d;->g(Lio/reactivex/v;Ljava/lang/Runnable;J)Lio/reactivex/disposables/b;

    :cond_d
    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->m1()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static {}, Lcom/android/camera/data/data/w;->d0()Z

    move-result v8

    if-eqz v8, :cond_e

    sget-object v8, LZh/b$c;->k:LZh/b$c;

    invoke-virtual {v8}, LZh/b$c;->a()V

    :cond_e
    sget-object v8, LN6/h$a;->a:LN6/h;

    const-class v10, Lg5/Y;

    invoke-virtual {v8, v10}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v8

    const-string v10, "getAttachProtocol2(...)"

    invoke-static {v8, v10}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, LF4/g;

    const/16 v11, 0xf

    invoke-direct {v10, v11}, LF4/g;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-boolean v8, LJe/c;->k:Z

    iget-object v8, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->D()I

    move-result v8

    and-int/lit16 v10, v8, 0xff

    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0x1e

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v12

    invoke-interface {v12}, Lj6/j;->V()Lj9/a;

    move-result-object v12

    if-eqz v12, :cond_10

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v13

    invoke-virtual {v13}, Lu6/f;->v()I

    move-result v13

    iget v14, v12, Lj9/a;->a:I

    if-ne v13, v14, :cond_f

    invoke-virtual {v12}, Lj9/a;->H()I

    move-result v12

    if-ne v12, v3, :cond_10

    move v12, v3

    goto :goto_2

    :cond_f
    invoke-static {v14}, Lu6/f;->h0(I)Z

    move-result v12

    goto :goto_2

    :cond_10
    move v12, v6

    :goto_2
    if-nez v12, :cond_11

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v12

    invoke-interface {v12}, Lj6/j;->m()Z

    move-result v12

    if-nez v12, :cond_11

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v12

    invoke-interface {v12}, Lj6/f;->D()Z

    move-result v12

    if-eqz v12, :cond_12

    :cond_11
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_12
    invoke-virtual {v5}, Lcom/android/camera/module/r;->isHeicPreferred()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v2}, LJe/c;->e2()Z

    move-result v5

    if-nez v5, :cond_14

    shr-int/lit8 v5, v8, 0x10

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_13

    const/16 v5, 0x32

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_3

    :cond_13
    move v10, v5

    :cond_14
    :goto_3
    sget v5, Ll6/t;->m:I

    if-eqz v5, :cond_15

    move v10, v5

    :cond_15
    iput v10, v4, Ll6/t;->a:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "For best user experience, burst capture count is limited to "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v4, Ll6/t;->a:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v9, v5, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Ll6/t;->a()Ll6/t$c;

    move-result-object v5

    const/16 v8, 0x31

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v5, LG4/c;

    const/4 v8, 0x4

    invoke-direct {v5, v4, v8}, LG4/c;-><init>(Ljava/lang/Object;I)V

    new-instance v8, Lio/reactivex/internal/operators/observable/d;

    invoke-direct {v8, v5}, Lio/reactivex/internal/operators/observable/d;-><init>(Lio/reactivex/s;)V

    sget-object v5, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {v8, v5}, Lio/reactivex/q;->m(Lio/reactivex/v;)Lio/reactivex/internal/operators/observable/C;

    move-result-object v8

    new-instance v9, LFn/T;

    const/4 v10, 0x2

    invoke-direct {v9, v4, v10}, LFn/T;-><init>(Ljava/lang/Object;I)V

    new-instance v10, Lio/reactivex/internal/operators/observable/B;

    invoke-direct {v10, v8, v9}, Lio/reactivex/internal/operators/observable/B;-><init>(Lio/reactivex/q;Lio/reactivex/functions/e;)V

    new-instance v8, LCs/W;

    invoke-direct {v8, v4, v3}, LCs/W;-><init>(Ljava/lang/Object;I)V

    new-instance v9, Lio/reactivex/internal/operators/observable/j;

    invoke-direct {v9, v10, v8}, Lio/reactivex/internal/operators/observable/j;-><init>(Lio/reactivex/q;Lio/reactivex/functions/a;)V

    new-instance v8, Lio/reactivex/internal/operators/observable/U;

    invoke-direct {v8, v9, v5}, Lio/reactivex/internal/operators/observable/U;-><init>(Lio/reactivex/q;Lio/reactivex/v;)V

    invoke-virtual {v8}, Lio/reactivex/q;->subscribe()Lio/reactivex/disposables/b;

    invoke-virtual {v7}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v5

    invoke-interface {v5}, Lj6/j;->V()Lj9/a;

    move-result-object v5

    invoke-virtual {v2}, LJe/c;->b1()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual {v7}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v1

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj9/h0;->X(I)V

    iget v0, v4, Ll6/t;->a:I

    invoke-virtual {v7}, Lcom/android/camera/module/Camera2Module;->getIsCaptureDownScene()Z

    move-result v1

    new-instance v2, Ll6/t$b;

    invoke-direct {v2, v4, v7}, Ll6/t$b;-><init>(Ll6/t;Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {v7}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v7

    invoke-virtual {v5, v0, v1, v2, v7}, Lj9/a;->h(IZLj9/a$j;Lk7/i;)V

    goto/16 :goto_4

    :cond_16
    iget-object v0, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->s4()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v7}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lj9/h0;->X(I)V

    iget v0, v4, Ll6/t;->a:I

    invoke-virtual {v7}, Lcom/android/camera/module/Camera2Module;->getIsCaptureDownScene()Z

    move-result v1

    new-instance v2, Ll6/t$b;

    invoke-direct {v2, v4, v7}, Ll6/t$b;-><init>(Ll6/t;Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {v7}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v7

    invoke-virtual {v5, v0, v1, v2, v7}, Lj9/a;->h(IZLj9/a$j;Lk7/i;)V

    goto :goto_4

    :cond_17
    invoke-virtual {v7}, Lcom/android/camera/module/Camera2Module;->isParallelSessionEnable()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v7}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lj9/h0;->X(I)V

    iget v0, v4, Ll6/t;->a:I

    new-instance v1, Ll6/t$b;

    invoke-direct {v1, v4, v7}, Ll6/t$b;-><init>(Ll6/t;Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {v7}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v2

    invoke-virtual {v5, v0, v1, v2}, Lj9/a;->g(ILj9/a$j;Lk7/i;)V

    goto :goto_4

    :cond_18
    invoke-virtual {v7}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lj9/h0;->X(I)V

    iget v0, v4, Ll6/t;->a:I

    new-instance v1, Ll6/t$a;

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v2

    iget-object v2, v2, Lh6/b;->a:Lh6/a;

    invoke-interface {v2}, Lh6/a;->c()Landroid/location/Location;

    invoke-direct {v1, v4}, Ll6/t$a;-><init>(Ll6/t;)V

    invoke-virtual {v7}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v2

    invoke-virtual {v5, v0, v1, v2}, Lj9/a;->g(ILj9/a$j;Lk7/i;)V

    :goto_4
    move v0, v3

    goto :goto_7

    :cond_19
    :goto_5
    const-string v1, "ImageSaver is busy, wait for a moment!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/b1;

    invoke-direct {v2, v0}, LF1/b1;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1a
    :goto_6
    move v0, v6

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Ll6/t;->e:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-object p0, p0, Ll6/t;->e:Ljava/lang/Boolean;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1b

    return v3

    :cond_1b
    return v6

    :cond_1c
    :goto_8
    const-string v0, "multiCapture : Activity already paused, ignore!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Ll6/t;->e:Ljava/lang/Boolean;

    return v6
.end method

.method public needDrawFace()Z
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/r;->needDrawFace()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mFaceAnim:Ln6/d;

    if-eqz p0, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->N()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public needFaceDetection()Z
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/r;->needFaceDetection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean p0, p0, Ll6/t;->d:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needKeepCoverView()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mKeepCoverView:Z

    return p0
.end method

.method public needMixQuickShot()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public needQuickShot()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFastShutterCallbackSupported"
        type = 0x0
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public notifyFirstFrameArrived(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->notifyFirstFrameArrived(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "notifyAfterFirstFrameArrived.m3ALocked: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->U()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Camera2Module"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object p1

    invoke-virtual {p1}, Lvr/m;->b()V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->U()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->L()V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->q0()Lu6/q;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->q0()Lu6/q;

    move-result-object p1

    invoke-interface {p1}, Lu6/q;->o()V

    :cond_1
    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sASDScheduler:Lio/reactivex/v;

    new-instance v0, LF1/x1;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, LF1/x1;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public onActionPause()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mNeedDelaySoundForCapture:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->stopCameraSound()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->isShooting()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    iget-boolean v0, v0, Lv2/D0;->B:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->m7()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->tryRemoveCountDownMessage()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v0, v0, Ll6/t;->d:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/Camera2Module;->onBurstPictureTakenFinished(ZJ)V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    invoke-virtual {p0}, Ll6/t;->c()V

    :cond_4
    return-void
.end method

.method public onActionStop()V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v1}, LQ6/j1;->m7()V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v1, v1, Ll6/t;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/camera/module/Camera2Module;->onBurstPictureTakenFinished(ZJ)V

    :cond_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lj9/e;->F()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0}, Lj9/e;->F()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    invoke-virtual {v0}, Ll6/z;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->doLaterReleaseIfNeed()V

    return-void
.end method

.method public onActive()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/r;->onActive()V

    const-string v0, "Camera2Module.onActive"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    check-cast v0, Lj6/a;

    invoke-virtual {v0, v1}, Lj6/a;->b(Lcom/android/camera/module/X;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mSensorStateListener:LF1/i4$q;

    invoke-virtual {v0, v1}, LF1/i4;->s(LF1/i4$q;)V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->supportAnchorFrameAsThumbnail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->onCameraOpened()V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Ll6/g;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Ll6/g;->Q:Z

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepScreenOnAwhile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public bridge synthetic onActivityResult(Lcom/android/camera/module/X;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAeConvergedForFlash()V
    .locals 4

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/E0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/E0;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Ll6/z;->k(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v1}, Lj9/a;->B()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lv2/E0;->h(Landroid/hardware/camera2/CaptureResult;Lj9/e;)V

    iget-object v1, v0, Lv2/E0;->b:Lha/e;

    iget v1, v1, Lha/e;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getSuperNightCbImpl()Ll6/L;

    move-result-object p0

    invoke-virtual {p0, v2, v3, v2}, Ll6/L;->a(IZZ)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getSuperNightCbImpl()Ll6/L;

    move-result-object p0

    invoke-virtual {v0}, Lv2/E0;->b()I

    move-result v0

    invoke-virtual {p0, v0, v3, v3}, Ll6/L;->a(IZZ)V

    :cond_2
    return-void
.end method

.method public onAllFrameCompleted()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onAllFrameCompleted"

    const-string v3, "Camera2Module"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isNeedColorLight()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "onAllFrameCompleted: need colorLight"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, LGp/a;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAllHalFrameReceived()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v3}, Lj6/f;->y()Z

    move-result v3

    const-string v4, "Camera2Module"

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAllHalFrameReceived : module has been destroy !! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    iget-object v3, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v3}, Lj6/f;->S()I

    move-result v3

    invoke-interface {v0, v3}, LQ6/j1;->Um(I)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    const-string v3, "onAllHalFrameReceived: isMenuTimer > "

    invoke-static {v3, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v5, Lr2/B0;

    invoke-virtual {v3, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/B0;

    iget v5, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v3, v5}, Lr2/B0;->u(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v3}, Ll6/z;->f(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v3}, LQ6/j1;->isShooting()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->S()I

    move-result v0

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f140f54

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object v0

    invoke-virtual {v0}, LBr/e;->l()V

    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mShutterReturned:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotBurstShot:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mShutterReturned:Z

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isHQQuickShot: All shutter is received isHdr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v1}, LF1/E3;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mDelayTimeReturned:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsHighQualityQuickShotBurstShot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotBurstShot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotBurstShot:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resetStatusToIdle()V

    :cond_6
    return-void
.end method

.method public onAsdChanged(Lcom/android/camera/module/interceptor/base/d;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->onAsdChanged(Lcom/android/camera/module/interceptor/base/d;)V

    instance-of v0, p1, Ls6/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Li9/h;

    if-eqz p0, :cond_0

    check-cast p1, Ls6/a;

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    const-class v1, Lw7/c;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw7/c;

    invoke-virtual {v0}, Lw7/c;->b()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Li9/h;->h(Ls6/a;Z)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v0, v0, Ll6/t;->d:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    invoke-virtual {p0, v1}, Ll6/f;->onShutterButtonLongClickCancel(Z)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    iget-wide v3, p0, Lcom/android/camera/module/Camera2Module;->mLastCaptureTime:J

    invoke-interface {v0, v3, v4}, LQ6/j1;->s5(J)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-super {p0}, Lcom/android/camera/module/r;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "android.media.action.VOICE_COMMAND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Camera2Module"

    if-eqz v1, :cond_3

    const-string v1, "on Receive voice control broadcast action intent"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lvr/m;->j(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object p2, p0, Lcom/android/camera/module/r;->mBroadcastIntent:Landroid/content/Intent;

    const-string v3, "CAPTURE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isBlockSnap()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string p1, "on voice control: block snap"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/camera/module/r;->mBroadcastIntent:Landroid/content/Intent;

    return-void

    :cond_2
    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_action"

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

    new-instance v1, LI7/a;

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-direct {v1, v2}, LI7/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    const/16 v1, 0x46

    invoke-interface {v0, v1}, Lj6/f;->N(I)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->S()I

    move-result v1

    invoke-virtual {v0, v1}, Ll6/f;->onShutterButtonClick(I)Z

    iput-object v3, p0, Lcom/android/camera/module/r;->mBroadcastIntent:Landroid/content/Intent;

    goto/16 :goto_1

    :cond_3
    const-string v1, "com.android.camera.action.SPEECH_SHUTTER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "on Receive speech shutter broadcast action intent"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isBlockSnap()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, LQ6/G0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LH4/u;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, LH4/u;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "on Speech shutter: ingore caz mode changing"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    invoke-static {}, LIp/a;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LH4/c0;

    invoke-direct {v4, v0}, LH4/c0;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p0, "onBroadcastReceived: OCR content displaying, ignore speech shutter"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Ll6/f;->onShutterButtonClick(I)Z

    goto :goto_1

    :cond_7
    :goto_0
    const-string p0, "on Speech shutter: block snap"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public onBurstPictureTakenFinished(ZJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    invoke-virtual {v0}, Ll6/t;->e()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/module/Camera2Module;->onPictureTakenFinished(ZJI)V

    return-void
.end method

.method public onButtonStatusFocused(Lqh/a;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LF1/v;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, LF1/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCapabilityChanged(Lj9/e;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->onCapabilityChanged(Lj9/e;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->e0()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj9/a;->f0(Lj9/e;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0}, Lu6/q;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->q0()Lu6/q;

    move-result-object v1

    invoke-interface {v1, p1}, Lu6/q;->z(Lj9/e;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->q0()Lu6/q;

    move-result-object v1

    invoke-interface {v1}, Lu6/q;->b()Z

    move-result v1

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0}, Lu6/q;->getFocusMode()I

    move-result v0

    sget-boolean v2, LJe/d;->i:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {p1}, Lj9/f;->k(Lj9/e;)I

    move-result p1

    invoke-static {p1}, Lu6/f;->h0(I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateFocusMode()V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->q0()Lu6/q;

    move-result-object v1

    invoke-interface {v1}, Lu6/q;->getFocusMode()I

    move-result v1

    const-string v2, "focusAreaSupported diff, focus mode: "

    const-string v4, " -> "

    const-string v5, ", update focusMode: "

    invoke-static {v0, v1, v2, v4, v5}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Camera2Module"

    invoke-static {v3, p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x4

    if-eq p1, v0, :cond_4

    const/4 v2, 0x3

    if-eq v2, v0, :cond_4

    if-eq p1, v1, :cond_3

    if-ne v2, v1, :cond_4

    :cond_3
    const/16 p1, 0x19

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    :cond_4
    return-void
.end method

.method public onCaptureCompleted(Z)V
    .locals 5

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lj9/a;->o0()V

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v0, Lr2/B0;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/B0;

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p1, v0}, Lr2/B0;->u(I)Z

    move-result v0

    const-string v1, "Camera2Module"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v0, "onCaptureCompleted: playCameraSound"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mNeedDelaySoundForCapture:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->stopCameraSound()V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->animateCapture()V

    invoke-virtual {p0, v2}, Lcom/android/camera/module/Camera2Module;->playCameraSound(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/module/s;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object v0

    invoke-virtual {v0}, LBr/e;->l()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->G0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LQ6/w0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LH4/z;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, LH4/z;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isHighQualityQuickShotSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "hdr support high quality quick shot, do not unlock AFAE"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/camera/module/Camera2Module;->checkMoreFrameCaptureLockAFAE(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->Z1(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget-boolean v1, v1, Ll6/b;->c:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object v0

    iget-boolean v0, v0, Lj9/i0;->p1:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lj9/h0;->h(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->resumePreviewInWorkThread()V

    :cond_5
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p1, v0}, Lr2/B0;->u(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {p1}, LQ6/j1;->isShooting()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/camera/module/t;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    invoke-virtual {p1}, Lv2/D0;->G()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Ll6/z;->e()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    iget-object p0, p0, Ll6/z;->d:Lio/reactivex/subjects/b;

    if-eqz p0, :cond_7

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/b;->onNext(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public onCaptureProgress(Lj9/E1;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "Camera2Module"

    if-nez p2, :cond_0

    const-string p0, "onCaptureProgress: departed"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-boolean p2, p1, Lj9/E1;->a:Z

    const-string v2, "onCaptureProgress: quick = "

    const-string v3, ", anchorFrame = "

    invoke-static {v2, v3, p2}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v2, p1, Lj9/E1;->b:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", doAnchor = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lj9/E1;->c:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", anchorPixel = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lj9/E1;->d:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->onShutter(Lj9/E1;I)V

    return-void
.end method

.method public onCaptureStart(LRh/r;Lj9/p0;)LRh/r;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj9/a;->w1()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module;->checkCaptureStartDeparted(LRh/r;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->recordCurrentCameraInfo()V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->processQuickViewParam(LRh/r;Lj9/p0;)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->updateParallelTaskData(LRh/r;Lj9/p0;)V

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v0, p2, Lv6/b;->e:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Lv6/b;->a(LRh/r;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->resetHandGesture()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onCaptureStart: isParallel = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean p0, p0, Lv6/b;->e:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", shotType = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, LRh/r;->b:LRh/a;

    iget p0, p0, LRh/a;->f:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Camera2Module"

    invoke-static {p2, p0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onDoubleTap"

    const-string v3, "Camera2Module"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v2}, Lj6/f;->q()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->hasCameraException()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lj9/a;->Z()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lj9/a;->X()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->x0()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->x0()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v1, v1, Ll6/t;->d:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/r;->isInTapableRect(II)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->E()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "ignore onDoubleTap trackFocus off"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v1}, LQ6/j1;->isShooting()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "ignore onDoubleTap isInTimerBurstShotting"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->onDoubleTapStartTrackFocus(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const-string p0, "ignore onDoubleTap"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public bridge synthetic onDrawBlackFrameChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFlashReady(Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, LH4/G;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, LH4/G;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public onFocusAreaChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isSupportAFSaliency()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/saliencychecker/SaliencyChecker;->getInstance()Lcom/android/camera/saliencychecker/SaliencyChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/saliencychecker/SaliencyChecker;->hasInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Camera2Module"

    const-string v0, "onFocusAreaChanged isAFSaliencyCheckSeparation requestReadPixels"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    sget-object p1, Ltu/c;->d:Ltu/c;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lru/k;->k(Ltu/c;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/r;->updateFocusAreaForAF(II)V

    return-void
.end method

.method public bridge synthetic onFocusReset()V
    .locals 0

    return-void
.end method

.method public onFocusSnapCanceled()V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Camera2Module"

    const-string v3, "onFocusSnapCanceled: "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v1

    iget-wide v3, v1, Ll6/h;->z:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    const-string v1, "onFocusSnapCanceled: reset"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lqh/a;

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v1

    iget-wide v1, v1, Ll6/h;->z:J

    invoke-virtual {v0, v1, v2}, Lqh/a;->d(J)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v0

    iput-wide v5, v0, Ll6/h;->z:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lqh/a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    :cond_0
    return-void
.end method

.method public onHandGestureSwitched(Z)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPresentationDisplay"
        type = 0x0
    .end annotation

    invoke-static {}, Lcom/android/camera/data/data/w;->d1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/X;->F5()Lgi/f;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getHandGestureDecoderFactory()Lfi/d;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->generateDecoderParams()Lgi/g;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lgi/f;->d(Lgi/c;Lgi/g;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/X;->F5()Lgi/f;

    move-result-object p0

    const-class p1, Lfi/d;

    invoke-virtual {p0, p1}, Lgi/f;->j(Ljava/lang/Class;)V

    return-void
.end method

.method public onHdrSceneChanged(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFlashScreenHalo"
        type = 0x0
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lo6/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lo6/a;->onHdrSceneChanged(Z)V

    :cond_0
    return-void
.end method

.method public onInactive()V
    .locals 6

    invoke-super {p0}, Lcom/android/camera/module/r;->onInactive()V

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mLocationReceivedListener:Lh6/b$a;

    invoke-virtual {v0, v1}, Lh6/b;->d(Lh6/b$a;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-boolean v0, v0, Lj6/a;->i:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Camera2Module"

    const-string v3, "onInactive: dropBitmapTexture"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lk7/i;->J(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0}, Lu6/q;->a()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mFaceAnim:Ln6/d;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    invoke-virtual {v4, v1}, Lu2/Q;->d0(Z)V

    invoke-interface {v0}, LQ6/O;->unRegisterProtocol()V

    invoke-virtual {v0}, Ln6/d;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Ln6/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    iput-object v3, v0, Lcom/android/camera/module/Camera2Module;->mFaceAnim:Ln6/d;

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->unregisterSensor()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    invoke-virtual {v0}, LF1/i4;->k()V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resetScreenOn()V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->closeCamera()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lo6/a;

    iput-boolean v2, v0, Lo6/a;->f:Z

    const-string v0, "Camera2Module"

    const-string v1, "onInactive: mIsNeedNightHDR is false"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mZoomMapController:Li9/h;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Li9/h;->d()V

    :cond_4
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-object v0, p0, Lv6/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lv6/b;->d:Z

    if-eqz v1, :cond_5

    sget-object v1, LRh/p$d;->a:LRh/p;

    iget-object v1, v1, LRh/p;->a:Lvr/U;

    invoke-virtual {v1}, Lvr/U;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, LAp/f;

    const/16 v5, 0x10

    invoke-direct {v4, v0, v5}, LAp/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget-object v0, p0, Lv6/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean v2, p0, Lv6/b;->b:Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_0
    iget-object v0, p0, Lv6/b;->f:Ll6/r;

    if-eqz v0, :cond_7

    iput-object v3, p0, Lv6/b;->f:Ll6/r;

    :cond_7
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x58

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-eq p1, v2, :cond_4

    const/16 v4, 0x19

    if-eq p1, v4, :cond_4

    const/16 v4, 0x1b

    const v5, 0x7f140f51

    if-eq p1, v4, :cond_3

    const/16 v4, 0x42

    if-eq p1, v4, :cond_2

    const/16 v4, 0x50

    if-eq p1, v4, :cond_1

    const/16 v4, 0x57

    if-eq p1, v4, :cond_4

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, v3}, Lcom/android/camera/module/r;->ignoreFocusKeyEvent(Z)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    invoke-interface {v0, v3, v3}, LQ6/q;->onShutterButtonFocus(ZI)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x28

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/camera/module/Camera2Module;->performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V

    return v3

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/module/Camera2Module;->prepareForKeyCamera(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, p2}, Lcom/android/camera/module/r;->parseKeyCameraTriggerMode(Landroid/view/KeyEvent;)I

    move-result p1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/android/camera/module/Camera2Module;->performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V

    return v3

    :cond_4
    if-eq p1, v2, :cond_6

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    :goto_0
    move v0, v3

    :goto_1
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v3

    :cond_7
    invoke-virtual {p0, v0, v3, p2, v1}, Lcom/android/camera/module/r;->handleVolumeKeyEvent(ZZLandroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return v3

    :cond_9
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_2
    invoke-static {}, LQ6/h;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6/h;

    invoke-interface {v0}, LQ6/h;->Y3()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onLiveShotVideoTakenFinished(Z)V
    .locals 0

    return-void
.end method

.method public onLongPress(FF)V
    .locals 1

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/r;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/module/Camera2Module;->onSingleTapUp(IIZ)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->F0()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    iget-object p1, p1, Lj9/h0;->a:Lj9/i0;

    iget p1, p1, Lj9/i0;->l0:I

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->R0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeteringAreaChanged(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v1

    invoke-interface {v1}, Lj6/j;->T()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->d(Lj9/e;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->q0()Lu6/q;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lu6/q;->G(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, LF1/i4;->l(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->q0()Lu6/q;

    move-result-object v3

    invoke-interface {v3, p1, p2, v1, v2}, Lu6/q;->T(IILandroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj9/h0;->f([Landroid/hardware/camera2/params/MeteringRectangle;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->p0()I

    :cond_2
    :goto_1
    return-void
.end method

.method public onMtkNotifyNextCaptureReady()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportP2done"
        type = 0x2
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMtkNotifyNextCaptureReady: mDelayTimeReturned = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Camera2Module"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mShutterReturned:Z

    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resetStatusToIdle()V

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsNeedWaitMtkQuickShotReturned:Z

    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->setOrientation(II)V

    return-void
.end method

.method public bridge synthetic onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public onPictureTakenFinished(ZJI)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v10, p1

    move-wide/from16 v11, p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPictureTakenFinished: succeed = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v13, "Camera2Module"

    invoke-static {v13, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    sget-object v2, LF6/a;->i0:LF6/a;

    filled-new-array {v2}, [LF6/a;

    move-result-object v2

    invoke-virtual {v1, v2}, LF6/q;->s([LF6/a;)J

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    sget-object v2, LF6/r;->a:LF6/a;

    filled-new-array {v2}, [LF6/a;

    move-result-object v2

    invoke-virtual {v1, v2}, LF6/q;->s([LF6/a;)J

    const/4 v1, 0x0

    if-eqz v10, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/module/Camera2Module;->announceAccessAfterPictureTakenFinished(Z)V

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v3

    iget-boolean v3, v3, Lt2/j;->m:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa3

    if-ne v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v4

    invoke-interface {v4}, Lj6/f;->x()Lx4/s;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v5

    check-cast v5, Lj6/a;

    iget-object v5, v5, Lj6/a;->q:Landroid/location/Location;

    if-eqz v5, :cond_1

    move v5, v3

    move v3, v2

    goto :goto_1

    :cond_1
    move v5, v3

    move v3, v1

    :goto_1
    iget-object v6, v0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget v6, v6, Ll6/b;->b:I

    iget-object v7, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v7}, Lj6/j;->U()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v9, v0, Lcom/android/camera/module/Camera2Module;->mNumberOfFace:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move/from16 v16, v1

    const/4 v1, 0x0

    move/from16 v17, v2

    move-object v2, v4

    move v4, v6

    const/4 v6, 0x0

    move-object/from16 v18, v7

    move-object v7, v5

    move-object/from16 v5, v18

    move-wide/from16 v18, v14

    move/from16 v14, v16

    move/from16 v15, v17

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/module/r;->trackGeneralInfo(ZLx4/s;ZILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;)V

    invoke-direct {v0}, Lcom/android/camera/module/Camera2Module;->getCaptureAlgoStatus()Lmq/a;

    move-result-object v1

    sget-object v2, Lmq/s;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "captureAlgoStatusInfo"

    invoke-static {v1, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraOptScheduler:Lio/reactivex/v;

    const-string/jumbo v3, "sCameraOptScheduler"

    invoke-static {v2, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LF1/S1;

    const/16 v4, 0xe

    invoke-direct {v3, v1, v4}, LF1/S1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v3}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    new-instance v1, Lqh/g;

    invoke-direct {v1}, Lqh/g;-><init>()V

    iput-wide v11, v1, Lqh/g;->i:J

    iput v15, v1, Lqh/g;->a:I

    iput-boolean v14, v1, Lqh/g;->b:Z

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v2

    check-cast v2, Lj6/a;

    iget-object v2, v2, Lj6/a;->q:Landroid/location/Location;

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget v2, v2, Ll6/b;->b:I

    iput v2, v1, Lqh/g;->c:I

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    iget v2, v2, Ll6/z;->j:I

    iput v2, v1, Lqh/g;->e:I

    iget v2, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/data/data/m;->i0(I)Z

    move-result v2

    iput-boolean v2, v1, Lqh/g;->f:Z

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    invoke-virtual {v2}, Ll6/z;->g()Z

    move-result v2

    iput-boolean v2, v1, Lqh/g;->d:Z

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v2

    invoke-interface {v2}, Lj6/f;->x()Lx4/s;

    move-result-object v2

    iput-object v2, v1, Lqh/g;->g:Lx4/s;

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v2

    invoke-interface {v2}, Lj6/f;->D()Z

    move-result v2

    iput-boolean v2, v1, Lqh/g;->h:Z

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getWatermarkItem()LN1/n;

    move-result-object v2

    iput-object v2, v1, Lqh/g;->j:LN1/n;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getJpegRotation()I

    move-result v2

    iput v2, v1, Lqh/g;->k:I

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v2

    iput v2, v1, Lqh/g;->l:I

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v2

    invoke-interface {v2}, Lj6/j;->d0()Z

    move-result v2

    iput-boolean v2, v1, Lqh/g;->m:Z

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v2

    invoke-interface {v2}, Lj6/j;->B()I

    move-result v2

    iput v2, v1, Lqh/g;->n:I

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/effect/EffectController;->m()I

    move-result v2

    iput v2, v1, Lqh/g;->o:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/r;->trackPictureTaken(Lqh/g;)V

    invoke-virtual {v0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v1

    iget-wide v1, v1, Ll6/h;->y:J

    sub-long v1, v18, v1

    sget-object v3, LF6/r;->a:LF6/a;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, LK7/l;->a:Ljava/util/LinkedHashMap;

    const-string v4, "captureType"

    invoke-static {v3, v4}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, LK7/j;

    invoke-direct {v4, v3, v1, v2}, LK7/j;-><init>(Ljava/lang/String;J)V

    invoke-static {v4}, LK7/l;->b(Lev/a;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mCaptureStartTime(from onShutterButtonClick start to jpegCallback finished) = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v1

    check-cast v1, Lj6/a;

    iget-boolean v1, v1, Lj6/a;->i:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v1

    check-cast v1, Lj6/a;

    iget-boolean v1, v1, Lj6/a;->n:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v15, v0, Lcom/android/camera/module/Camera2Module;->mKeepCoverView:Z

    const-string v1, "onPictureTakenFinished: showPostCaptureAlert"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v13, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v0}, Lcom/android/camera/module/Camera2Module;->doLogSystemCheck()V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->doAttach()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->handleCoverViewForNormalCapture()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    iget-boolean v2, v1, Ll6/f;->f:Z

    if-eqz v2, :cond_5

    if-nez p4, :cond_5

    iput-boolean v14, v1, Ll6/f;->f:Z

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->q0()Lu6/q;

    move-result-object v1

    invoke-interface {v1}, Lu6/q;->L()V

    goto :goto_2

    :cond_4
    move-wide/from16 v18, v14

    move v14, v1

    invoke-virtual {v0, v11, v12}, Lcom/android/camera/module/Camera2Module;->consumeWatermarkCoordinate(J)V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/module/Camera2Module;->handledSuperNightResult(Z)V

    invoke-direct {v0, v11, v12, v10}, Lcom/android/camera/module/Camera2Module;->shouldResetStatusToIdle(JZ)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    invoke-virtual {v1}, Ll6/t;->a()Ll6/t$c;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ll6/t;->a()Ll6/t$c;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ll6/t;->a()Ll6/t$c;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->resetStatusToIdle()V

    :cond_7
    invoke-direct {v0}, Lcom/android/camera/module/Camera2Module;->resetSuperMoonStatus()V

    iput-boolean v14, v0, Lcom/android/camera/module/Camera2Module;->mIsNeedWaitMtkQuickShotReturned:Z

    iget-object v1, v0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LB9/c;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, LB9/c;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->doLaterReleaseIfNeed()V

    iget-wide v1, v0, Lcom/android/camera/module/Camera2Module;->mLastCaptureStartTime:J

    cmp-long v1, v1, v11

    if-eqz v1, :cond_8

    iput-wide v11, v0, Lcom/android/camera/module/Camera2Module;->mLastCaptureStartTime:J

    iget-object v1, v0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    move-wide/from16 v2, v18

    invoke-interface {v1, v2, v3}, LQ6/j1;->F6(J)V

    :cond_8
    invoke-virtual {v0, v14}, Lcom/android/camera/module/Camera2Module;->setRemoteCapture(Z)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    iput v14, v0, Lv2/D0;->D:I

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public bridge synthetic onPictureTakenImageConsumed(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreviewPixelsRead([BIILtu/c;Z)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->s0()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ltu/c;->c:Ltu/c;

    if-eq p4, v0, :cond_0

    sget-object v0, Ltu/c;->d:Ltu/c;

    if-ne p4, v0, :cond_1

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/camera/module/r;->onPreviewPixelsRead([BIILtu/c;Z)V

    return-void

    :cond_1
    const-string p4, "Camera2Module"

    const-string v0, "onPreviewPixelsRead E"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p4, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p5, :cond_8

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p4

    const-class p5, Lr2/B0;

    invoke-virtual {p4, p5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lr2/B0;

    iget p5, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p4, p5}, Lr2/B0;->u(I)Z

    move-result p4

    if-nez p4, :cond_8

    iget-object p4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p4}, Lj6/j;->d0()Z

    move-result p4

    const/4 p5, 0x1

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p4}, Lj6/j;->V()Lj9/a;

    move-result-object p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p4}, Lj6/j;->V()Lj9/a;

    move-result-object p4

    invoke-virtual {p4}, Lj9/a;->W()Z

    move-result p4

    if-eqz p4, :cond_2

    move p4, p5

    goto :goto_0

    :cond_2
    move p4, v1

    :goto_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v2, Lv2/E0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/E0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lv2/E0;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, p5

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-nez p4, :cond_5

    if-nez v2, :cond_5

    if-eqz v0, :cond_4

    iput-boolean p5, v0, Lv2/E0;->k:Z

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->animateCapture()V

    :cond_5
    if-eqz v0, :cond_6

    iget-boolean p4, v0, Lv2/E0;->j:Z

    if-eqz p4, :cond_6

    goto :goto_2

    :cond_6
    const-string p4, "Camera2Module"

    const-string v2, "onPreviewPixelsRead playCameraSound"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p4, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_7

    iput-boolean p5, v0, Lv2/E0;->j:Z

    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/camera/module/Camera2Module;->playCameraSound(I)V

    :cond_8
    :goto_2
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/Camera2Module;->checkPreviewPixelsRead([BII)Z

    move-result p4

    if-nez p4, :cond_9

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_9
    sget-object p4, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance p5, Lcom/android/camera/module/C;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/android/camera/module/C;-><init>(Lcom/android/camera/module/Camera2Module;[BII)V

    invoke-static {p4, p5}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "Camera2Module"

    const-string p1, "onPreviewPixelsRead X"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onShineChanged(I)V
    .locals 4

    const/16 v0, 0xc4

    if-eq p1, v0, :cond_6

    const/16 v0, 0xd4

    const/16 v1, 0x2a

    const/16 v2, 0x22

    const/16 v3, 0xd

    if-eq p1, v0, :cond_4

    const/16 v0, 0xef

    if-eq p1, v0, :cond_4

    const/16 v0, 0xf3

    if-eq p1, v0, :cond_3

    const/16 v0, 0xf4

    if-eq p1, v0, :cond_3

    const/16 v0, 0xf6

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf7

    if-ne p1, v0, :cond_0

    const/16 p1, 0x88

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unknown configItem changed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S3()Z

    move-result p1

    const/16 v0, 0xa

    if-eqz p1, :cond_2

    filled-new-array {v3, v2, v1, v0}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void

    :cond_2
    filled-new-array {v3, v0}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    :cond_3
    return-void

    :cond_4
    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S3()Z

    move-result p1

    if-eqz p1, :cond_5

    filled-new-array {v3, v2, v1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void

    :cond_5
    filled-new-array {v3}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void

    :cond_6
    const/4 p1, 0x2

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LE4/i;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, LE4/i;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onShutter(Lj9/E1;)V
    .locals 5

    .line 4
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Ll6/z;->f(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Camera2Module"

    if-eqz v0, :cond_0

    .line 5
    const-string p0, "onShutter: is night capture, hold on!"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, LJe/c;->d0()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->enabledPreviewThumbnail()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lj9/E1;->b:Z

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p1, Lj9/E1;->e:Lqh/a;

    if-eqz v0, :cond_1

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onShutter: not anchorFrame, check ButtonStatus: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance v1, LQ5/o;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, LQ5/o;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, LAc/e;

    const/4 v2, 0x5

    invoke-direct {p1, p0, v2}, LAc/e;-><init>(Ljava/lang/Object;I)V

    .line 10
    invoke-static {}, Lhi/d;->c()Landroid/os/Handler;

    move-result-object p0

    .line 11
    invoke-virtual {v0, v1, p1, p0}, Lqh/a;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void

    .line 12
    :cond_1
    const-string v0, "onShutter: not anchorFrame, read pixel"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    sget-object v0, Ltu/c;->a:Ltu/c;

    iget-boolean p1, p1, Lj9/E1;->f:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lru/k;->k(Ltu/c;[Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_2
    invoke-static {}, LJe/c;->d0()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lj9/E1;->b:Z

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p1, Lj9/E1;->e:Lqh/a;

    if-eqz v0, :cond_3

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onShutter: anchorFrame, check ButtonStatus: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v1, Lcom/android/camera/module/B;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/android/camera/module/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, LF1/S2;

    const/4 v2, 0x4

    invoke-direct {p1, p0, v2}, LF1/S2;-><init>(Ljava/lang/Object;I)V

    .line 18
    invoke-static {}, Lhi/d;->c()Landroid/os/Handler;

    move-result-object p0

    .line 19
    invoke-virtual {v0, v1, p1, p0}, Lqh/a;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void

    .line 20
    :cond_3
    const-string v0, "onShutter: anchorFrame, normal handle"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-boolean v0, p1, Lj9/E1;->c:Z

    iget-boolean p1, p1, Lj9/E1;->d:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/module/Camera2Module;->playSoundOrReadPixel(ZZ)V

    return-void

    .line 22
    :cond_4
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    .line 23
    const-class v3, Lr2/c0;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c0;

    if-eqz v0, :cond_8

    .line 24
    iget-boolean v0, v0, Lr2/c0;->f:Z

    if-eqz v0, :cond_8

    .line 25
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-static {}, LJe/c;->d0()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    .line 28
    iget-boolean v0, v0, Lv2/D0;->H:Z

    if-eqz v0, :cond_5

    .line 29
    const-string v0, "onShutter: mivi2.0 not Preview thumbnail, normal handle"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-boolean p1, p1, Lj9/E1;->f:Z

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/module/PhotoBase;->playSoundNoPreviewThumbnail(Z)V

    return-void

    .line 31
    :cond_5
    iget-boolean v0, p1, Lj9/E1;->f:Z

    if-nez v0, :cond_7

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->shouldDeferShutterSoundToUltraPixelManager()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    const-string p0, "onShutter: mivi2.0 non-zsl, sound handled by UltraPixelManager"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 34
    :cond_6
    const-string v0, "onShutter: mivi2.0 non-zsl, play sound in onShutter"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-boolean p1, p1, Lj9/E1;->f:Z

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/module/PhotoBase;->playSoundNoPreviewThumbnail(Z)V

    :cond_7
    return-void

    .line 36
    :cond_8
    iget-object v0, p1, Lj9/E1;->e:Lqh/a;

    if-eqz v0, :cond_9

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onShutter: not preview thumbnail, check ButtonStatus: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lj9/E1;->e:Lqh/a;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    new-instance v0, LSs/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, LSs/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lhi/d;->c()Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v3, v0, p1, p0}, Lqh/a;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void

    .line 39
    :cond_9
    const-string v0, "onShutter: not Preview thumbnail, normal handle"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-boolean p1, p1, Lj9/E1;->f:Z

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/module/PhotoBase;->playSoundNoPreviewThumbnail(Z)V

    return-void
.end method

.method public onShutter(Lj9/E1;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/xiaomi/camera/module/PhotoBase;->onShutter(Lj9/E1;I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/Camera2Module;->updateThumbSettingWhenShutter(Lj9/E1;I)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->onShutter(Lj9/E1;)V

    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSingleTapUp mPaused: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v2}, Lj6/f;->q()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", loc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mCamera2Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; isInCountDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; getCameraState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->x0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mMultiSnapStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v2, v2, Ll6/t;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; Camera2Module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera2Module"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->q()Z

    move-result v1

    if-nez v1, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/camera/module/r;->hasCameraException()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lj9/a;->Z()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lj9/a;->X()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->x0()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_f

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->x0()I

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget-boolean v1, v1, Ll6/t;->d:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v1}, LQ6/j1;->isShooting()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string p0, "ignore onSingleTapUp isInTimerBurstShotting"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->r()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/r;->handleBackStackFromTapDown(II)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->tryRemoveCountDownMessage()V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->b()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->k()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-static {}, LK2/b;->U()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getFocusRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LH3/p;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, LH3/p;-><init>(IB)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->mapTapCoordinate(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->L()V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lj6/j;->E(I)V

    invoke-virtual {p0, p3, v1}, Lcom/android/camera/module/r;->handlePreviewTouchEvent(ZLandroid/graphics/Point;)V

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    iget-object p3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p3}, Lj6/j;->c()Lj9/e;

    move-result-object p3

    invoke-virtual {v0}, Lj9/a;->B()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    iget-object v1, p1, Ll6/z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lip/a;

    if-nez v1, :cond_6

    goto/16 :goto_3

    :cond_6
    invoke-interface {v1}, Lip/a;->getCameraManager()Lj6/j;

    move-result-object v2

    invoke-static {p3}, Lj9/f;->k(Lj9/e;)I

    move-result v4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v5

    invoke-virtual {v5}, Lu6/f;->v()I

    move-result v5

    if-ne v4, v5, :cond_7

    invoke-static {v0}, Lj9/n0;->e(Landroid/hardware/camera2/CaptureResult;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    invoke-interface {v2}, Lj6/j;->d0()Z

    move-result p3

    invoke-static {v4, p3}, LQg/c;->c(IZ)I

    move-result p3

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2, p3}, Lu6/f;->O(I)Lj9/e;

    move-result-object p3

    :cond_7
    invoke-interface {v1}, Lip/a;->getModuleIndex()I

    move-result v2

    invoke-static {v2, p3}, Lcom/android/camera/data/data/w;->x(ILj9/e;)I

    move-result v2

    if-eqz p3, :cond_e

    and-int/lit8 v4, v2, 0xf

    if-eqz v4, :cond_e

    invoke-static {v0}, Lj9/n0;->a(Landroid/hardware/camera2/CaptureResult;)I

    move-result v4

    sget-object v5, Lga/C0;->L:Lga/D0;

    const v6, 0xbabe

    invoke-static {v0, v5, v6}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    if-eqz v4, :cond_d

    if-eqz v5, :cond_d

    if-ne v4, p2, :cond_8

    const/4 p1, 0x0

    goto :goto_2

    :cond_8
    const/4 p2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    if-ne v4, p2, :cond_c

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-boolean v5, p1, Ll6/z;->g:Z

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p3, v2, 0xf

    if-eqz p3, :cond_a

    and-int/lit16 p3, v2, 0xf0

    shr-int/lit8 p3, p3, 0x4

    const v6, 0xffff00

    and-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x8

    if-eqz v5, :cond_9

    sub-int/2addr v6, p3

    :cond_9
    int-to-float p3, v6

    cmpl-float p3, v1, p3

    if-ltz p3, :cond_a

    const/high16 p3, -0x1000000

    and-int/2addr p3, v2

    shr-int/lit8 p3, p3, 0x18

    int-to-float p3, p3

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr p3, v1

    goto :goto_0

    :cond_a
    move p3, v0

    :goto_0
    cmpl-float v0, p3, v0

    if-eqz v0, :cond_b

    goto :goto_1

    :cond_b
    move p2, v3

    :goto_1
    iput-boolean p2, p1, Ll6/z;->g:Z

    move p1, p3

    goto :goto_2

    :cond_c
    move p1, v0

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "handleSuperNightEvMapValue: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", evMapValue: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    const-string v0, "NightManager"

    invoke-static {v0, p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Ll6/v;

    invoke-direct {p3, p1}, Ll6/v;-><init>(F)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_d
    invoke-interface {v1}, Lip/a;->getModuleIndex()I

    move-result p1

    const/16 p3, 0xad

    if-ne p1, p3, :cond_e

    sget-object p1, Lga/C0;->O0:Lga/D0;

    const p3, 0xdead

    invoke-static {v0, p1, p3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_e

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LH4/K;

    const/16 p3, 0x9

    invoke-direct {p2, p3}, LH4/K;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->b()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->k()Z

    move-result p0

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object p0

    invoke-virtual {p0}, LF1/i4;->k()V

    :cond_f
    :goto_4
    return-void
.end method

.method public onSprdNotifyNextCaptureReady()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSprdShotToShot"
        type = 0x2
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSprdNotifyNextCaptureReady: mDelayTimeReturned = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Camera2Module"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mShutterReturned:Z

    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeReturned:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resetStatusToIdle()V

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mIsNeedWaitMtkQuickShotReturned:Z

    return-void
.end method

.method public onSurfaceTextureReleased()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string p0, "Camera2Module"

    const-string v0, "onSurfaceTextureReleased: no further preview frame will be available"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Lj3/b;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lj9/a;->h0()V

    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->needWaitSaveFinish()Z

    move-result v0

    const-string v1, "Camera2Module"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "onThumbnailClicked: CannotGotoGallery...mWaitSaveFinish"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v0, v0, Lv6/b;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    if-nez v0, :cond_2

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->b1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LU6/c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "onThumbnailClicked: DoingAction.."

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->isCannotGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "onThumbnailClicked: CannotGotoGallery..."

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p0, v2, p1}, Lcom/android/camera/module/r;->gotoGallery(ZZ)V

    return-void
.end method

.method public onTiltShiftSwitched(Z)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lcom/android/camera/data/data/w;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x56

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->resetEvValue(Z)V

    :cond_1
    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/y;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/camera/module/y;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/module/r;->onUserInteraction()V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/l;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LCs/l;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepScreenOnAwhile()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepAutoHibernation()V

    :cond_1
    return-void
.end method

.method public onWaitingFocusFinished()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const-string v2, "Camera2Module"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isBlockSnap()Z

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
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->H()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, v0}, Lj6/j;->V0(Z)V

    const-string p0, "capture check: sat fallback"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1, v3}, Lj6/j;->V0(Z)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->S()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/Camera2Module;->startNormalCapture(I)Z

    move-result p0

    if-nez p0, :cond_4

    const-string/jumbo p0, "startNormalCapture failed"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_4
    return v0

    :cond_5
    :goto_1
    const-string p0, "onWaitingFocusFinished : Activity already paused, ignore!"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public onWaitingFocusFinishedFailed()Z
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Camera2Module"

    const-string v3, "onWaitingFocusFinishedFailed: "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v1

    iget-wide v3, v1, Ll6/h;->z:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    const-string v1, "onWaitingFocusFinishedFailed: reset"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lqh/a;

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v1

    iget-wide v1, v1, Ll6/h;->z:J

    invoke-virtual {v0, v1, v2}, Lqh/a;->e(J)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v0

    iput-wide v5, v0, Ll6/h;->z:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lqh/a;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->onWindowFocusChanged(Z)V

    const-string v0, "onWindowFocusChanged: "

    invoke-static {v0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Camera2Module"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {p1}, LQ6/j1;->isShooting()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepAutoHibernation()V

    :cond_0
    return-void
.end method

.method public openForShotWithWinFocus()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-super {p0}, Lcom/android/camera/module/r;->openForShotWithWinFocus()V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v1, v0, Lv6/b;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lv6/b;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, v0, Lv6/b;->b:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkIntentAndCapture()V

    :cond_1
    return-void
.end method

.method public performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V
    .locals 7

    const-string v0, "Camera2Module"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-ne p1, v3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LU4/c;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, LU4/c;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mVolumeKeyDownWhenSnapButtonDowned:Z

    :cond_0
    iget-boolean v4, p0, Lcom/android/camera/module/Camera2Module;->mVolumeKeyDownWhenSnapButtonDowned:Z

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "volume key event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", is it down when snap button downed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/camera/module/Camera2Module;->mVolumeKeyDownWhenSnapButtonDowned:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v4, p0, Lcom/android/camera/module/Camera2Module;->mVolumeKeyDownWhenSnapButtonDowned:Z

    if-eqz v4, :cond_2

    iput-boolean v2, p0, Lcom/android/camera/module/Camera2Module;->mVolumeKeyDownWhenSnapButtonDowned:Z

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    if-eqz v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Ignore volume key events when snap button downed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/camera/module/Camera2Module;->mVolumeKeyDownWhenSnapButtonDowned:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->ignoreCameraKeyEvent()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v4

    invoke-interface {v4}, Lj6/f;->g()Z

    move-result v4

    if-nez v4, :cond_4

    const-string p0, "Ignore camera events"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/camera/module/w;

    invoke-direct {v5, p4}, Lcom/android/camera/module/w;-><init>(Z)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "performKeyClicked: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " | function "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " | pressed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " | repeatCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_5

    if-ne p1, v3, :cond_5

    invoke-static {}, LQ6/K0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LFn/x;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, LFn/x;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    if-eqz p4, :cond_8

    invoke-static {}, LQ6/L;->a()Ljava/util/Optional;

    move-result-object p2

    new-instance p4, LH4/Z;

    const/4 v0, 0x1

    invoke-direct {p4, p3, v0}, LH4/Z;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0, p1, p3}, Lcom/android/camera/module/Camera2Module;->performMiHandlePressed(ILandroid/view/KeyEvent;)V

    return-void

    :cond_6
    const/16 p2, 0xaa

    if-ne p1, p2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    const/4 p4, 0x5

    invoke-interface {p2, v1, p4}, LQ6/q;->onShutterButtonFocus(ZI)V

    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    const/4 p4, 0x3

    if-le p2, p4, :cond_d

    invoke-direct {p0, p1, p3}, Lcom/android/camera/module/Camera2Module;->isNeedBurst(ILandroid/view/KeyEvent;)Z

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/module/Camera2Module;->doKeyShutterLongPress(ILandroid/view/KeyEvent;Z)V

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p4

    invoke-interface {p4}, Lj6/f;->g()Z

    move-result p4

    if-eqz p4, :cond_9

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    invoke-interface {p1, v2, v2}, LQ6/q;->onShutterButtonFocus(ZI)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p1

    invoke-interface {p1}, Lj6/f;->g()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p1

    invoke-interface {p1, v2}, Lj6/f;->A(Z)V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    invoke-virtual {p0, v2}, Ll6/f;->onShutterButtonLongClickCancel(Z)V

    return-void

    :cond_9
    iget-object p4, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    invoke-interface {p4, v1, v1}, LQ6/q;->onShutterButtonFocus(ZI)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p4

    const v0, 0x7f140f54

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class p2, Lr2/B0;

    invoke-virtual {p1, p2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/B0;

    iget p2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p1, p2}, Lr2/B0;->u(I)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isBlockSnap()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LCs/J;

    const/4 p3, 0x7

    invoke-direct {p2, p3}, LCs/J;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_a
    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/data/data/j;->G0(I)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isBlockSnap()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {}, LQ6/w0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LE3/l;

    const/16 p3, 0xa

    invoke-direct {p2, p3}, LE3/l;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_b
    :goto_1
    invoke-static {}, LQ6/X;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LC4/M;

    const/16 p3, 0xa

    invoke-direct {p2, p3}, LC4/M;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    const/4 p1, 0x2

    const/16 p2, 0xa0

    invoke-interface {p0, p1, p2}, LQ6/j1;->ec(II)V

    return-void

    :cond_c
    invoke-static {}, LQ6/L;->a()Ljava/util/Optional;

    move-result-object p2

    new-instance p4, LU4/f;

    const/4 v0, 0x3

    invoke-direct {p4, p3, v0}, LU4/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_e

    :cond_d
    return-void

    :cond_e
    invoke-direct {p0, p1, p3}, Lcom/android/camera/module/Camera2Module;->doKeyShutterSnap(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method public performKeyLongPress(IZLandroid/view/KeyEvent;Z)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->ignoreCameraKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/module/Camera2Module;->doKeyShutterLongPress(ILandroid/view/KeyEvent;Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, LQ6/q;->onShutterButtonFocus(ZI)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p1

    invoke-interface {p1}, Lj6/f;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p1

    invoke-interface {p1, p2}, Lj6/f;->A(Z)V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    invoke-virtual {p0, p2}, Ll6/f;->onShutterButtonLongClickCancel(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public playCameraSound(I)V
    .locals 3

    invoke-static {}, LQ6/j1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LFn/w;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, LFn/w;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->playCameraSound(I)V

    return-void
.end method

.method public playSoundOrReadPixel(ZZ)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    const-string v0, "onShutter: anchor playSound "

    const-string v1, " readPixel "

    invoke-static {v0, v1, p1, p2}, LF1/P;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Camera2Module"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Ltu/c;->a:Ltu/c;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v2, Lr2/B0;

    invoke-virtual {p1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/B0;

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p1, v2}, Lr2/B0;->u(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/module/Camera2Module;->playCameraSound(I)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->animateCapture()V

    :cond_0
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lru/k;->k(Ltu/c;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lru/k;->k(Ltu/c;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public prepareNormalCapture()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/Camera2Module;->prepareNormalCapture(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V

    return-void
.end method

.method public prepareNormalCapture(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x6

    const/4 v5, 0x1

    .line 2
    const-string v0, "Camera2Module"

    const-string v6, "prepareNormalCapture"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v1}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Ll6/h;->y:J

    .line 4
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v6

    iget-wide v8, v6, Ll6/h;->y:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setCaptureTime: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v10, v7, [Ljava/lang/Object;

    const-string v11, "CameraConfigManager"

    invoke-static {v11, v6, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    .line 7
    iput-wide v8, v0, Lj9/i0;->d1:J

    .line 8
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->W()Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/camera/module/Camera2Module;->initFlashAutoStateForTrack(Z)V

    .line 9
    invoke-virtual {v1, v7}, Lcom/xiaomi/camera/module/PhotoBase;->setEnabledPreviewThumbnail(Z)V

    .line 10
    iget-object v0, v1, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    .line 11
    iput v5, v0, Ll6/t;->a:I

    .line 12
    iput v7, v0, Ll6/t;->b:I

    .line 13
    iget-boolean v0, v0, Ll6/t;->d:Z

    if-nez v0, :cond_1

    .line 14
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    .line 15
    new-instance v6, LF6/e$a;

    .line 16
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v8, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 18
    invoke-interface {v8}, Lj6/j;->d0()Z

    move-result v8

    .line 19
    iput-boolean v8, v6, LF6/e$a;->a:Z

    .line 20
    iget v8, v1, Lcom/android/camera/module/r;->mModuleIndex:I

    .line 21
    iput v8, v6, LF6/e$a;->b:I

    .line 22
    iget-object v8, v1, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    .line 23
    iget-boolean v8, v8, Ll6/t;->d:Z

    .line 24
    iget-object v8, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 25
    invoke-interface {v8}, Lj6/j;->V()Lj9/a;

    move-result-object v8

    invoke-virtual {v8}, Lj9/a;->W()Z

    move-result v8

    .line 26
    iput-boolean v8, v6, LF6/e$a;->c:Z

    .line 27
    iget-object v8, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 28
    invoke-interface {v8}, Lj6/j;->V()Lj9/a;

    move-result-object v8

    invoke-virtual {v8}, Lj9/a;->t()Lj9/i0;

    move-result-object v8

    .line 29
    iget-object v8, v8, Lj9/i0;->P0:Lj1/a;

    .line 30
    invoke-virtual {v8}, Lj1/a;->a()Z

    move-result v8

    .line 31
    iput-boolean v8, v6, LF6/e$a;->d:Z

    .line 32
    invoke-static {}, Lcom/android/camera/data/data/E;->W()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v8}, Lj6/j;->V()Lj9/a;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v8}, Lj6/j;->V()Lj9/a;

    move-result-object v8

    invoke-virtual {v8}, Lj9/a;->W()Z

    move-result v8

    if-nez v8, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v7

    .line 33
    :goto_0
    iput-boolean v8, v6, LF6/e$a;->e:Z

    .line 34
    new-instance v8, LF6/e;

    invoke-direct {v8, v6}, LF6/e;-><init>(LF6/e$a;)V

    .line 35
    invoke-static {v8}, LF6/r;->a(LF6/e;)LF6/a;

    move-result-object v6

    sput-object v6, LF6/r;->a:LF6/a;

    .line 36
    invoke-virtual {v0, v6}, LF6/q;->r(LF6/a;)V

    .line 37
    :cond_1
    invoke-virtual {v1}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v0

    iget-wide v8, v0, Ll6/h;->y:J

    iput-wide v8, v1, Lcom/android/camera/module/Camera2Module;->mLastCaptureTime:J

    .line 38
    iget-object v6, v1, Lcom/android/camera/module/Camera2Module;->mMateDataParserLock:Ljava/lang/Object;

    monitor-enter v6

    .line 39
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v8, 0x3

    invoke-interface {v0, v8}, Lj6/j;->E(I)V

    .line 40
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget-object v0, v1, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    .line 42
    iget-boolean v0, v0, Ll6/t;->d:Z

    if-nez v0, :cond_2

    .line 43
    invoke-virtual {v1}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lw7/j;->L(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-virtual {v0, v5}, Lj9/h0;->M(Z)V

    .line 45
    invoke-static {}, LF1/i0;->a()LF1/i0;

    move-result-object v0

    .line 46
    iget-object v6, v0, LF1/i0;->g:LF1/h0;

    .line 47
    iget-object v0, v0, LF1/i0;->f:Lvr/O;

    invoke-virtual {v0, v6}, Lvr/O;->a(Ljava/lang/Object;)V

    .line 48
    :cond_2
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->getJpegRotation()I

    move-result v6

    .line 49
    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    .line 50
    invoke-virtual {v0, v6}, Lj9/i0;->u(I)V

    .line 51
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v6

    sget-object v0, LY1/m;->a:LY1/m$a;

    .line 52
    sget-boolean v0, LY1/m;->l:Z

    const-wide/16 v8, 0x0

    if-eqz v0, :cond_7

    .line 53
    sget-object v0, LY1/m;->k:LY1/m$b;

    .line 54
    sget-boolean v10, LY1/m;->f:Z

    .line 55
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 56
    :try_start_1
    const-string v12, "reg"

    invoke-virtual {v11, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-nez v10, :cond_3

    goto/16 :goto_4

    .line 57
    :cond_3
    sget-wide v12, LY1/m;->c:J

    cmp-long v10, v12, v8

    if-ltz v10, :cond_4

    .line 58
    const-string v10, "fot"

    invoke-virtual {v11, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    .line 59
    :cond_4
    :goto_1
    const-string/jumbo v10, "tilt"

    sget v12, LY1/m;->j:F

    const/16 v13, 0xa

    int-to-float v13, v13

    mul-float/2addr v12, v13

    invoke-static {v12}, LEv/G;->h(F)I

    move-result v12

    int-to-double v14, v12

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    div-double v14, v14, v16

    invoke-virtual {v11, v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 60
    sget v10, LY1/m;->g:F

    sget v12, LY1/m;->g:F

    mul-float/2addr v10, v12

    sget v12, LY1/m;->h:F

    sget v14, LY1/m;->h:F

    mul-float/2addr v12, v14

    add-float/2addr v12, v10

    sget v10, LY1/m;->i:F

    sget v14, LY1/m;->i:F

    mul-float/2addr v10, v14

    add-float/2addr v10, v12

    float-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v10, v14

    .line 61
    const-string v12, "acc"

    mul-float/2addr v10, v13

    invoke-static {v10}, LEv/G;->h(F)I

    move-result v10

    int-to-double v13, v10

    div-double v13, v13, v16

    invoke-virtual {v11, v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 62
    const-string/jumbo v10, "stuck"

    .line 63
    iget-boolean v12, v0, LY1/m$b;->b:Z

    .line 64
    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    iget-boolean v10, v0, LY1/m$b;->b:Z

    if-eqz v10, :cond_6

    .line 66
    const-string/jumbo v10, "type"

    .line 67
    iget-object v0, v0, LY1/m$b;->e:LY1/m$d;

    .line 68
    sget-object v12, LY1/m$d;->b:LY1/m$d;

    if-ne v0, v12, :cond_5

    const-string v0, "MAG"

    goto :goto_2

    :cond_5
    const-string v0, "IDT"

    .line 69
    :goto_2
    invoke-virtual {v11, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 70
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v10, "[OrientationTrace] toJson error: "

    .line 71
    invoke-static {v10, v0}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-array v10, v7, [Ljava/lang/Object;

    const-string v12, "SensorDiagnostics"

    invoke-static {v12, v0, v10}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_6
    :goto_4
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "toString(...)"

    invoke-static {v0, v10}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, LY1/m;->m:Ljava/lang/String;

    .line 74
    sput-boolean v7, LY1/m;->l:Z

    .line 75
    :cond_7
    sget-object v0, LY1/m;->m:Ljava/lang/String;

    .line 76
    iget-object v6, v6, Lj9/h0;->a:Lj9/i0;

    .line 77
    iput-object v0, v6, Lj9/i0;->U:Ljava/lang/String;

    .line 78
    invoke-static {}, LQ6/X;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v6, LQ5/s;

    const/4 v10, 0x7

    invoke-direct {v6, v1, v10}, LQ5/s;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 79
    const-string v0, "Camera2Module"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "[OrientationTrace] prepareNormalCapture: mOrientation = "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    .line 80
    check-cast v10, Lj6/a;

    .line 81
    iget v10, v10, Lj6/a;->c:I

    .line 82
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", shootOrientation="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    .line 83
    check-cast v10, Lj6/a;

    .line 84
    iget v10, v10, Lj6/a;->p:I

    .line 85
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", jpegRotation = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 86
    invoke-interface {v10}, Lj6/j;->K0()Lj9/h0;

    move-result-object v10

    .line 87
    iget-object v10, v10, Lj9/h0;->a:Lj9/i0;

    .line 88
    iget v10, v10, Lj9/i0;->S:I

    .line 89
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v10, v7, [Ljava/lang/Object;

    .line 90
    invoke-static {v0, v6, v10}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->updateLocation()Landroid/location/Location;

    move-result-object v0

    .line 92
    iget-object v6, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v6}, Lj6/j;->K0()Lj9/h0;

    move-result-object v6

    .line 93
    iget-object v6, v6, Lj9/h0;->a:Lj9/i0;

    .line 94
    iput-object v0, v6, Lj9/i0;->a:Landroid/location/Location;

    .line 95
    invoke-virtual {v1}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v6

    check-cast v6, Lj6/a;

    .line 96
    iput-object v0, v6, Lj6/a;->q:Landroid/location/Location;

    .line 97
    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    .line 98
    new-array v6, v7, [Landroid/graphics/Rect;

    .line 99
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v10

    const/16 v11, 0xaf

    const/4 v12, 0x0

    if-eqz v10, :cond_c

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LQ6/t0;

    invoke-interface {v10}, LQ6/t0;->bg()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 100
    iget-object v10, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v10}, Lj6/j;->K0()Lj9/h0;

    move-result-object v10

    .line 101
    iget-object v10, v10, Lj9/h0;->a:Lj9/i0;

    .line 102
    iput-boolean v5, v10, Lj9/i0;->w2:Z

    .line 103
    new-instance v10, Lcom/android/camera/module/D;

    invoke-direct {v10, v1, v7}, Lcom/android/camera/module/D;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v10}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/graphics/RectF;

    .line 104
    invoke-static {v10}, LCc/h;->l([Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/android/camera/module/Camera2Module;->mDebugFaceInfos:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 105
    array-length v10, v10

    iput v10, v1, Lcom/android/camera/module/Camera2Module;->mNumberOfFace:I

    .line 106
    :cond_8
    iget v10, v1, Lcom/android/camera/module/r;->mModuleIndex:I

    if-ne v10, v11, :cond_d

    invoke-static {}, Lcom/android/camera/data/data/j;->q0()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 107
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LQ6/t0;

    invoke-interface {v6}, LQ6/t0;->b3()[Lj9/l0;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 108
    array-length v10, v6

    if-nez v10, :cond_9

    goto :goto_6

    .line 109
    :cond_9
    array-length v10, v6

    new-array v10, v10, [Landroid/graphics/Rect;

    move v12, v7

    .line 110
    :goto_5
    array-length v13, v6

    if-ge v12, v13, :cond_a

    .line 111
    aget-object v13, v6, v12

    iget-object v13, v13, Lj9/l0;->a:Landroid/graphics/Rect;

    aput-object v13, v10, v12

    add-int/2addr v12, v5

    goto :goto_5

    :cond_a
    move-object v6, v10

    goto :goto_7

    .line 112
    :cond_b
    :goto_6
    const-string v6, "convertCameraHardwareFace warning"

    new-array v10, v7, [Ljava/lang/Object;

    const-string v12, "CameraHardwareFace"

    invoke-static {v12, v6, v10}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    new-array v6, v7, [Landroid/graphics/Rect;

    goto :goto_7

    .line 114
    :cond_c
    iget-object v10, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v10}, Lj6/j;->K0()Lj9/h0;

    move-result-object v10

    .line 115
    iget-object v10, v10, Lj9/h0;->a:Lj9/i0;

    .line 116
    iput-boolean v7, v10, Lj9/i0;->w2:Z

    .line 117
    iput-object v12, v1, Lcom/android/camera/module/Camera2Module;->mDebugFaceInfos:Ljava/lang/String;

    .line 118
    iput v7, v1, Lcom/android/camera/module/Camera2Module;->mNumberOfFace:I

    .line 119
    :cond_d
    :goto_7
    iget-object v10, v1, Lcom/android/camera/module/Camera2Module;->mDebugFaceInfos:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 120
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6/t0;

    iget-object v10, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v10}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v10

    invoke-interface {v0, v10}, LQ6/t0;->xo(Landroid/util/Size;)[Landroid/graphics/RectF;

    move-result-object v0

    .line 121
    invoke-static {v0}, LCc/h;->l([Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/module/Camera2Module;->mDebugFaceInfos:Ljava/lang/String;

    .line 122
    :cond_e
    iget v0, v1, Lcom/android/camera/module/r;->mModuleIndex:I

    if-ne v0, v11, :cond_11

    invoke-static {}, Lcom/android/camera/data/data/j;->q0()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 123
    sget-object v0, LJe/c$b;->a:LJe/c;

    .line 124
    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    .line 125
    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->D3()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 126
    iget-object v0, v1, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    .line 127
    iget v0, v0, Ll6/b;->b:I

    .line 128
    iget-object v10, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 129
    invoke-interface {v10}, Lj6/j;->c()Lj9/e;

    move-result-object v10

    invoke-static {v10}, Lj9/f;->d(Lj9/e;)Landroid/graphics/Rect;

    move-result-object v10

    iget-object v11, v1, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v11, Lj6/a;

    .line 130
    iget v11, v11, Lj6/a;->c:I

    .line 131
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 132
    :try_start_2
    const-string v13, "Version"

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    const-string v13, "AIScene"

    invoke-virtual {v12, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    const-string v0, "ActiveSizeWidth"

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    const-string v0, "ActiveSizeHeight"

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v12, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    const-string v0, "Orientation"

    invoke-virtual {v12, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    array-length v0, v6

    if-lez v0, :cond_10

    .line 138
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 139
    const-string v10, "FaceSize"

    array-length v11, v6

    invoke-virtual {v12, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move v10, v7

    .line 140
    :goto_8
    array-length v11, v6

    if-ge v10, v11, :cond_f

    .line 141
    aget-object v11, v6, v10

    invoke-static {v11}, LF1/c3;->i(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/2addr v10, v5

    goto :goto_8

    .line 142
    :cond_f
    const-string v6, "FaceRects"

    invoke-virtual {v12, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 143
    :catch_1
    :cond_10
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    iput-object v0, v1, Lcom/android/camera/module/Camera2Module;->mAiCompositionInfo:Ljava/lang/String;

    .line 145
    const-string v0, "Camera2Module"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "mAiCompositionInfo "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/camera/module/Camera2Module;->mAiCompositionInfo:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 146
    :cond_11
    const-string v0, ""

    iput-object v0, v1, Lcom/android/camera/module/Camera2Module;->mAiCompositionInfo:Ljava/lang/String;

    .line 147
    :goto_9
    iput-boolean v7, v1, Lcom/android/camera/module/Camera2Module;->mUpscaleImageWithSR:Z

    .line 148
    iget-object v0, v1, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    .line 149
    iget-boolean v0, v0, Ll6/t;->d:Z

    if-nez v0, :cond_12

    .line 150
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->B()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/camera/module/Camera2Module;->shouldDoQCFA(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v0

    .line 151
    const-string v6, "Camera2Module"

    const-string v10, "prepareNormalCapture: qcfa = "

    .line 152
    invoke-static {v10, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 153
    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v6, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_12
    move v0, v7

    .line 154
    :goto_a
    iget-object v6, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v6}, Lj6/j;->V()Lj9/a;

    move-result-object v6

    invoke-virtual {v6}, Lj9/a;->t()Lj9/i0;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    const-string/jumbo v6, "setLockedAlgoSize: null"

    new-array v10, v7, [Ljava/lang/Object;

    const-string v11, "CameraConfigs"

    invoke-static {v11, v6, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v6, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v6}, Lj6/j;->V()Lj9/a;

    move-result-object v6

    invoke-virtual {v6}, Lj9/a;->t()Lj9/i0;

    move-result-object v6

    .line 157
    iput-boolean v0, v6, Lj9/i0;->X2:Z

    .line 158
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget-object v6, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 159
    invoke-interface {v6}, Lj6/j;->V()Lj9/a;

    move-result-object v6

    invoke-virtual {v6}, Lj9/a;->B()Landroid/hardware/camera2/CaptureResult;

    move-result-object v6

    .line 160
    sget-boolean v10, Lj9/n0;->a:Z

    if-eqz v0, :cond_15

    .line 161
    sget-object v10, Lga/C0;->r2:Lga/D0;

    invoke-virtual {v10}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_b

    :cond_13
    const v0, 0xdead

    .line 162
    invoke-static {v6, v10, v0}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v0

    .line 163
    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_14

    const/4 v0, -0x1

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 165
    :cond_14
    const-string v6, "remosaicDetectMode: "

    .line 166
    invoke-static {v6, v0}, LV9/Z1;->c(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 167
    new-array v6, v7, [Ljava/lang/Object;

    const-string v10, "CaptureResultParser"

    invoke-static {v10, v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_15
    :goto_b
    invoke-static {}, Lcom/android/camera/data/data/r;->k()V

    .line 169
    invoke-static {}, Lcom/android/camera/data/data/r;->e()V

    if-eqz v2, :cond_1b

    if-eqz v3, :cond_1b

    .line 170
    invoke-static {}, LK2/e;->B()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Ll6/g;

    move-result-object v0

    .line 171
    iget-object v0, v0, Lj6/d;->a:Lj9/a;

    .line 172
    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object v0

    .line 173
    iget v0, v0, Lj9/i0;->j0:I

    goto :goto_c

    .line 174
    :cond_16
    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Ll6/g;

    move-result-object v0

    .line 175
    iget-object v0, v0, Lj6/d;->a:Lj9/a;

    .line 176
    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object v0

    .line 177
    iget v0, v0, Lj9/i0;->i0:I

    .line 178
    :goto_c
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 179
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v10}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eq v5, v0, :cond_18

    .line 180
    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Ll6/g;

    move-result-object v11

    .line 181
    iget-object v11, v11, Lj6/d;->a:Lj9/a;

    .line 182
    invoke-virtual {v11, v6, v0}, Lj9/a;->V(Ljava/lang/Integer;I)Z

    move-result v11

    if-eqz v11, :cond_17

    goto :goto_d

    :cond_17
    move v11, v7

    goto :goto_e

    :cond_18
    :goto_d
    move v11, v5

    :goto_e
    iput-boolean v11, v3, Lj9/H1$a;->G:Z

    if-nez v11, :cond_1a

    .line 183
    invoke-direct {v1, v0, v6, v10}, Lcom/android/camera/module/Camera2Module;->isFlashFired(ILjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_f

    :cond_19
    move v0, v7

    goto :goto_10

    :cond_1a
    :goto_f
    move v0, v5

    :goto_10
    iput-boolean v0, v3, Lj9/H1$a;->H:Z

    .line 184
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v10

    iput-wide v10, v3, Lj9/H1$a;->O:J

    .line 185
    const-string v0, "Camera2Module"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "prepareNormalCapture: isNeedFlashOn = "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, v3, Lj9/H1$a;->H:Z

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v10}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_1b
    iget-boolean v0, v1, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    iput-boolean v0, v1, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrame:Z

    .line 187
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-direct {v1}, Lcom/android/camera/module/Camera2Module;->updateAnchorFramePreview()Z

    move-result v6

    .line 188
    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    .line 189
    iput-boolean v6, v0, Lj9/i0;->G2:Z

    .line 190
    invoke-virtual/range {p0 .. p2}, Lcom/android/camera/module/Camera2Module;->updateDepthExpand(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V

    .line 191
    iget-object v0, v1, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    iget-object v6, v1, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    sget-object v6, Lwp/g$c;->a:Lwp/g;

    .line 193
    invoke-virtual {v6}, Lwp/g;->a()Lwp/g$b;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v10, LL9/m;

    invoke-direct {v10, v4}, LL9/m;-><init>(I)V

    .line 194
    invoke-virtual {v6, v10}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    invoke-virtual {v0, v2, v3}, Ll6/z;->l(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V

    .line 196
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->isFrontMirror()Z

    move-result v6

    .line 197
    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    .line 198
    iput-boolean v6, v0, Lj9/i0;->t1:Z

    .line 199
    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->updateBeauty()V

    .line 200
    invoke-direct {v1}, Lcom/android/camera/module/Camera2Module;->updateHdrDegradeMFNR()V

    .line 201
    invoke-direct {v1}, Lcom/android/camera/module/Camera2Module;->updateSRAndMFNR()V

    .line 202
    invoke-direct/range {p0 .. p2}, Lcom/android/camera/module/Camera2Module;->updateShotDetermine(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V

    .line 203
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/effect/EffectController;->m()I

    move-result v0

    .line 204
    sget-object v6, Lo3/d;->d:Lo3/d;

    const/16 v6, 0xf4

    invoke-static {v5, v6}, Li3/b;->c(II)I

    move-result v6

    .line 205
    invoke-virtual {v1}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v10

    invoke-interface {v10}, Lj6/f;->j()I

    move-result v10

    if-eq v10, v0, :cond_1d

    .line 206
    sget-object v10, LJe/c$b;->a:LJe/c;

    .line 207
    iget-object v10, v10, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    .line 208
    invoke-virtual {v10}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->g4()Z

    move-result v10

    if-eqz v10, :cond_1c

    if-eq v6, v0, :cond_1d

    .line 209
    :cond_1c
    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->updateFilter()V

    .line 210
    :cond_1d
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->b1()V

    .line 211
    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->updateRawCapture()V

    .line 212
    sget-object v0, LJe/c$b;->a:LJe/c;

    .line 213
    invoke-virtual {v0}, LJe/c;->o1()Z

    move-result v6

    const/16 v10, 0x100

    if-eqz v6, :cond_1f

    .line 214
    iget-object v6, v1, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    invoke-virtual {v1}, Lcom/android/camera/module/r;->isHeicPreferred()Z

    move-result v11

    if-eqz v11, :cond_1e

    const v11, 0x48454946

    goto :goto_11

    :cond_1e
    move v11, v10

    :goto_11
    iput v11, v6, Ll6/n;->D:I

    .line 215
    :cond_1f
    iget-object v6, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v6}, Lj6/j;->V()Lj9/a;

    move-result-object v6

    invoke-virtual {v6}, Lj9/a;->t()Lj9/i0;

    move-result-object v6

    .line 216
    iget v6, v6, Lj9/i0;->a1:I

    .line 217
    invoke-virtual {v1}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v11

    invoke-static {v11}, Lcom/android/camera/data/data/m;->T(I)Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-static {v6}, Lvr/E;->c(I)Z

    move-result v6

    if-eqz v6, :cond_20

    goto :goto_12

    .line 218
    :cond_20
    iget-object v6, v1, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget v10, v6, Ll6/n;->D:I

    .line 219
    :goto_12
    iget-object v6, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v6}, Lj6/j;->K0()Lj9/h0;

    move-result-object v6

    .line 220
    iget-object v6, v6, Lj9/h0;->a:Lj9/i0;

    .line 221
    iput v10, v6, Lj9/i0;->X:I

    .line 222
    invoke-static {}, Lcom/android/camera/data/data/r;->k()V

    if-eqz v3, :cond_21

    .line 223
    iput v10, v3, Lj9/H1$a;->m:I

    .line 224
    :cond_21
    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->generatePhotoTitle()Ljava/lang/String;

    move-result-object v6

    .line 225
    const-string v11, "Camera2Module"

    const-string v12, "prepareNormalCapture title = "

    const-string v13, ", outputPictureFormat: 0x"

    .line 226
    invoke-static {v12, v6, v13}, LP/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 227
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v6, v11}, [Ljava/lang/Object;

    move-result-object v11

    const/16 v12, 0x16

    invoke-static {v12, v11}, LPh/h;->l(I[Ljava/lang/Object;)V

    .line 229
    invoke-static {v10}, LQa/a;->c(I)Z

    move-result v10

    invoke-static {v6, v10}, Lk7/K;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 230
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-static {v10}, Lav/j;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    .line 232
    invoke-static {v10}, Lk7/K;->t(Ljava/lang/String;)Z

    move-result v10

    .line 233
    iget-object v11, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v11}, Lj6/j;->K0()Lj9/h0;

    move-result-object v11

    invoke-direct {v1}, Lcom/android/camera/module/Camera2Module;->isParallel()Z

    move-result v12

    invoke-direct {v1}, Lcom/android/camera/module/Camera2Module;->isRefuseOffer()Z

    move-result v13

    invoke-virtual {v11, v6, v12, v13, v10}, Lj9/h0;->W(Ljava/lang/String;ZZZ)V

    .line 234
    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->enablePreviewAsThumbnail()Z

    move-result v6

    if-eqz v6, :cond_24

    iget-object v6, v1, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v6}, LF1/E3;->a()Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_14

    .line 235
    :cond_22
    invoke-static {}, LJe/c;->O()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 236
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v6

    .line 237
    const-string v10, "pref_camera_quick_shot_anim_enable_key"

    invoke-virtual {v6, v10, v5}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v6

    goto :goto_13

    :cond_23
    move v6, v7

    .line 238
    :goto_13
    iput-boolean v6, v1, Lcom/android/camera/module/Camera2Module;->mQuickShotAnimateEnable:Z

    goto :goto_15

    .line 239
    :cond_24
    :goto_14
    iput-boolean v7, v1, Lcom/android/camera/module/Camera2Module;->mQuickShotAnimateEnable:Z

    .line 240
    :goto_15
    const-string v6, "Camera2Module"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mQuickShotAnimateEnable: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, v1, Lcom/android/camera/module/Camera2Module;->mQuickShotAnimateEnable:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v6, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-direct {v1}, Lcom/android/camera/module/Camera2Module;->setPictureOrientation()V

    .line 242
    invoke-direct {v1}, Lcom/android/camera/module/Camera2Module;->updateJpegQuality()V

    .line 243
    invoke-direct {v1}, Lcom/android/camera/module/Camera2Module;->updateAlgorithmName()V

    .line 244
    iget-object v6, v1, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    invoke-virtual {v6, v2, v3, v7}, Ll6/z;->h(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;Z)V

    .line 245
    invoke-direct {v1, v3}, Lcom/android/camera/module/Camera2Module;->prepareQuickShotStatus(Lj9/H1$a;)V

    .line 246
    invoke-direct {v1, v3}, Lcom/android/camera/module/Camera2Module;->prepareNoParallelQuickShotStatus(Lj9/H1$a;)V

    .line 247
    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->isNeedDelaySound()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/camera/module/Camera2Module;->mNeedDelaySoundForCapture:Z

    if-eqz v2, :cond_26

    .line 248
    iget v2, v1, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v6, 0xbf

    if-eq v2, v6, :cond_25

    if-eqz v3, :cond_25

    iget-boolean v2, v3, Lj9/H1$a;->G:Z

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 249
    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->f3(Lj9/e;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 250
    :cond_25
    const-string v2, "Camera2Module"

    const-string v10, "Need playCameraSound for capture audio"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x9

    .line 251
    invoke-virtual {v1, v2}, Lcom/android/camera/module/Camera2Module;->playCameraSound(I)V

    .line 252
    iget v2, v1, Lcom/android/camera/module/r;->mModuleIndex:I

    if-eq v2, v6, :cond_26

    .line 253
    iget-object v2, v1, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v6, LC4/J;

    invoke-direct {v6, v1, v4}, LC4/J;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v10, 0x190

    invoke-virtual {v2, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    :cond_26
    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    .line 255
    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->O6()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 256
    invoke-virtual {v1}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v0

    iget-wide v10, v0, Ll6/h;->z:J

    cmp-long v0, v10, v8

    if-gtz v0, :cond_27

    goto :goto_16

    .line 257
    :cond_27
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    .line 258
    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    .line 259
    iput-boolean v7, v0, Lj9/i0;->s2:Z

    goto :goto_17

    .line 260
    :cond_28
    :goto_16
    invoke-direct {v1, v5}, Lcom/android/camera/module/Camera2Module;->checkMoreFrameCaptureLockAFAE(Z)V

    .line 261
    :goto_17
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object v0

    iget-object v2, v1, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget-object v2, v2, Ll6/n;->B:Landroid/util/Size;

    invoke-virtual {v0, v2}, Lj9/i0;->v(Landroid/util/Size;)V

    .line 262
    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Ll6/g;

    move-result-object v0

    iput-boolean v7, v0, Ll6/g;->Q:Z

    .line 263
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    .line 264
    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    .line 265
    iget-object v2, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2, v3}, Lj6/j;->a1(Lj9/H1$a;)Z

    move-result v2

    .line 266
    iput-boolean v2, v0, Lj9/i0;->o3:Z

    .line 267
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    .line 268
    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    .line 269
    iget-object v2, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->v()Z

    move-result v2

    .line 270
    iput-boolean v2, v0, Lj9/i0;->p3:Z

    .line 271
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    .line 272
    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    .line 273
    invoke-direct {v1}, Lcom/android/camera/module/Camera2Module;->calcScreenFiredDelayTime()I

    move-result v2

    .line 274
    iput v2, v0, Lj9/i0;->y3:I

    .line 275
    invoke-direct {v1}, Lcom/android/camera/module/Camera2Module;->isNeedColorLight()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 276
    const-string v0, "Camera2Module"

    const-string/jumbo v2, "setColorLight: need colorLight"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    .line 278
    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    .line 279
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    const-string/jumbo v1, "setNeedColorLight:true"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "CameraConfigs"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iput-boolean v5, v0, Lj9/i0;->w3:Z

    goto :goto_18

    .line 282
    :cond_29
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    .line 283
    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    .line 284
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    const-string/jumbo v1, "setNeedColorLight:false"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "CameraConfigs"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iput-boolean v7, v0, Lj9/i0;->w3:Z

    :goto_18
    return-void

    :catchall_0
    move-exception v0

    .line 287
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public registerProtocol()V
    .locals 6

    invoke-super {p0}, Lcom/android/camera/module/r;->registerProtocol()V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    invoke-virtual {v0}, Ll6/f;->registerProtocol()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LN6/a;->registerProtocol()V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/Z0;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/K;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/l0;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mTopConfigImpl:LQ6/o1;

    invoke-interface {v0}, LN6/a;->registerProtocol()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object p0

    const-class v2, LQ6/B0;

    const-class v3, LQ6/M0;

    const-class v0, LQ6/C;

    const-class v1, LQ6/P;

    const-class v4, LQ6/V0;

    const-class v5, LQ6/b;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp6/b;->d([Ljava/lang/Class;)V

    return-void
.end method

.method public requireRaw(I)Z
    .locals 2

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->p2()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->supportMTKMFNRAlgo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LJe/c;->u2()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, LJe/c;->Y()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->supportMTKHDRReprocess()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/r;->e()V

    and-int/lit8 p0, p1, 0x28

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x10

    if-eq p0, p1, :cond_3

    const/16 p0, 0x40

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public resetScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public resetStatusToIdle()V
    .locals 10

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string/jumbo v1, "shot_2_shot"

    invoke-virtual {v0, v1}, LF6/q;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    invoke-virtual {v0, v1}, LF6/q;->g(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->getImageModuleState()Ll6/h;

    move-result-object v0

    iget-object v0, v0, Ll6/h;->B:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqh/f;

    if-eqz v0, :cond_0

    iput-wide v4, v0, Lqh/f;->P:J

    :cond_0
    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_camera_performance"

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

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "attr_cost_time"

    invoke-virtual {v0, v1, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lhq/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lgq/h;->b(Lgq/e;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    const-wide/16 v0, 0x320

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraOptScheduler:Lio/reactivex/v;

    new-instance v2, LJ2/d;

    const-string v3, "SHOT2SHOT"

    const/16 v8, 0x320

    const v9, 0x36d68c2b

    invoke-direct/range {v2 .. v9}, LJ2/d;-><init>(Ljava/lang/String;JJII)V

    invoke-static {v0, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/module/PhotoBase;->setNeedBlockQuickShot(Z)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mDelayTimeMessageSent:Z

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mShutterReturned:Z

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lj6/j;->E(I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "reset Status to Idle, caller(time-consuming):"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/camera/log/DumpTrace;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Camera2Module"

    invoke-static {v0, p0}, Lcom/android/camera/log/LogK;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public restartPreview()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->resumePreview()V

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v1, LDr/e;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LDr/e;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public sendOpenFailMessage()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    return-void
.end method

.method public setAsdScenes([Lha/l$a;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mFlashAsdManager:Lj6/g;

    check-cast p0, Lm6/a;

    iput-object p1, p0, Lm6/a;->c:[Lha/l$a;

    return-void
.end method

.method public setFaceAEStrategy()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFaceAEStrategy"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LQh/a;->pref_camera_metering_weight_entry_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const-string v2, "pref_metering_weight"

    invoke-virtual {v1, v2, v0}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setFaceAEStrategy(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraConfigManager"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lj9/h0;->a:Lj9/i0;

    iput v0, v1, Lj9/i0;->m3:I

    invoke-virtual {p0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lj9/z;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lj9/z;-><init>(Lj9/h0;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 5

    const/16 v0, 0xb

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->setFrameAvailable(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, LF1/D3;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, LF1/D3;->a()LF1/D3;

    move-result-object v3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {v3, v0}, LF1/D3;->d([I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const-string v3, "Camera2Module"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v4, p1, Lv6/b;->e:Z

    iput-boolean v4, p1, Lv6/b;->d:Z

    sget-object p1, LRh/p$d;->a:LRh/p;

    iget-object p1, p1, LRh/p;->a:Lvr/U;

    invoke-virtual {p1}, Lvr/U;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v4, v4, Lv6/b;->d:Z

    if-eqz v4, :cond_1

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, LJe/c;->b1()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    new-instance v4, Lcom/android/camera/module/H0;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/module/H0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkIntentAndCapture()V

    :goto_0
    if-nez v0, :cond_2

    const-string p0, "camera2Device is null"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lj9/a;->m0()V

    return-void

    :cond_3
    const-string/jumbo p0, "setFrameAvailable: invalid"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0x2
        0x3
        0x4
        0x5
        0x7
        0x9
        0xa
        0xb
        0x6
    .end array-data
.end method

.method public setHHTDisabled(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportHHTAlgo"
        type = 0x0
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mHHTDisabled:Z

    return-void
.end method

.method public setOrientation(II)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iput p1, v0, Lj6/a;->c:I

    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkActivityOrientation()V

    iget-object p1, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    move-object v0, p1

    check-cast v0, Lj6/a;

    iget v0, v0, Lj6/a;->b:I

    if-eq v0, p2, :cond_1

    check-cast p1, Lj6/a;

    iput p2, p1, Lj6/a;->b:I

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->setOrientationParameter()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOrientationParameter()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget v0, v0, Lj6/a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x23

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v1, LDr/c;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, LDr/c;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_2
    :goto_0
    return-void
.end method

.method public setRemoteCapture(Z)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->isRemoteCapture:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->isRemoteCapture:Z

    if-nez p1, :cond_0

    invoke-static {}, LQ6/j1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LH4/K;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, LH4/K;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    invoke-static {}, LIp/a;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/V3;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, LF1/V3;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public setSpecShotMode(Ljava/lang/Integer;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isMTKPlatform"
        type = 0x1
    .end annotation

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module;->mSpecShotMode:Ljava/lang/Integer;

    return-void
.end method

.method public setupCameraConfigForSessionIfNeed(Lj6/j;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->setupCameraConfigForSessionIfNeed(Lj6/j;)V

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    iget-object p1, p1, Lj9/h0;->a:Lj9/i0;

    invoke-static {}, Lcom/android/camera/data/data/j;->o()I

    move-result v0

    iput v0, p1, Lj9/i0;->C3:I

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/j;->N(I)F

    move-result p0

    iput p0, p1, Lj9/i0;->D3:F

    return-void
.end method

.method public setupCameraDeviceForPreview(Lj9/a;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Ll6/g;

    move-result-object v0

    iget-object v0, v0, Ll6/g;->P:Ll6/g$a;

    invoke-virtual {p1, v0}, Lj9/a;->E0(Lj9/a$g;)V

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Ll6/g;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lj9/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Lj9/a;->K0(Lj9/a$c;)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mScreenLightCb:Lj9/a$n;

    invoke-virtual {p1, v0}, Lj9/a;->Q0(Lj9/a$n;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->e0()V

    iget-object v0, p1, Lj9/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lj9/a;->j:Ljava/lang/ref/WeakReference;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startPreview: set PictureSize with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Module"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj9/a;->P0(Landroid/util/Size;)V

    invoke-static {}, LJe/c;->d0()Z

    move-result v0

    const-string/jumbo v2, "startPreview: set PictureFormat to "

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    invoke-static {p0}, Lj9/f;->W2(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x100

    goto :goto_0

    :cond_0
    const/16 p0, 0x23

    :goto_0
    invoke-virtual {p1, p0}, Lj9/a;->N0(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget v0, v0, Ll6/n;->D:I

    invoke-virtual {p1, v0}, Lj9/a;->N0(I)V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mLoadStreamSizeBase:Ll6/n;

    iget p0, p0, Ll6/n;->D:I

    invoke-static {p0}, LQa/a;->c(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "HEIC"

    goto :goto_1

    :cond_2
    const-string p0, "JPEG"

    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public shouldCheckSatFallbackState()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIn3OrMoreSatMode()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->w6()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldDeferShutterSoundToUltraPixelManager()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldDoQCFA(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedQcfa"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v1, v1, Lv6/b;->e:Z

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->Y0()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lvr/E;->b(Lj9/e;ZZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/r;->e()V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Lga/C0;->s0:Lga/D0;

    invoke-virtual {v0}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lj9/o0;->q(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p0

    return p0

    :cond_2
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string/jumbo p1, "shouldDoQCFA: iso = "

    invoke-static {p1, p0}, LV9/Z1;->c(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Camera2Module"

    invoke-static {v2, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0xc8

    if-gt p0, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public shouldReleaseLater()Z
    .locals 6

    invoke-static {}, LJe/c;->d0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->wk()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lj9/a;->N(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v4, Lr2/B0;

    invoke-virtual {v2, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/B0;

    iget v4, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v2, v4}, Lr2/B0;->u(I)Z

    move-result v2

    iget-boolean v4, p0, Lcom/android/camera/module/r;->mInStartingFocusRecording:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v4}, LQ6/j1;->isShooting()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v4

    check-cast v4, Lj6/a;

    iget-boolean v4, v4, Lj6/a;->i:Z

    if-nez v4, :cond_6

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x32

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    invoke-virtual {v0}, Ll6/t;->a()Ll6/t$c;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ll6/t;->a()Ll6/t$c;

    move-result-object v4

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Ll6/t;->a()Ll6/t$c;

    move-result-object v0

    const/16 v4, 0x31

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-interface {p0}, Lu6/q;->v()Z

    move-result p0

    if-nez p0, :cond_6

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    return v1

    :cond_7
    :goto_3
    return v3
.end method

.method public startNormalCapture(I)Z
    .locals 37

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0xb

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startNormalCapture mode -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Camera2Module"

    invoke-static {v4, v3}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v3}, Lcom/android/camera/module/X;->Z0()V

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v5, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->q4()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-static {}, LQa/e;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getImageCameraMgr()Ll6/g;

    move-result-object v5

    iget-boolean v5, v5, Ll6/g;->Q:Z

    if-nez v5, :cond_4

    invoke-static {}, Lvr/K;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v0, "startNormalCapture: skip capture due to low memory"

    invoke-static {v4, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_0
    invoke-static {}, Lk7/K;->p()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v1, v0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v1}, LQ6/j1;->isShooting()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    iget-boolean v1, v1, Lv2/D0;->B:Z

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v1}, LQ6/j1;->r4()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LEs/O;

    invoke-direct {v3, v2}, LEs/O;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    iget-object v0, v0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->m7()V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not enough space or storage not ready. remaining="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lk7/K;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v5

    check-cast v5, Lj6/a;

    iget-boolean v5, v5, Lj6/a;->i:Z

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v5}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v5}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v5

    invoke-virtual {v5, v6}, Lk7/i;->J(Z)V

    :cond_5
    iget-object v5, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->V()Lj9/a;

    move-result-object v5

    if-nez v5, :cond_6

    const-string/jumbo v0, "startNormalCapture exception: cameraDevice is null!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_6
    invoke-virtual {v5}, Lj9/a;->Q()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v0, "startNormalCapture: cameraDevice disconnected!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_7
    new-instance v7, Lj9/H1$a;

    invoke-direct {v7}, Lj9/H1$a;-><init>()V

    invoke-virtual {v5}, Lj9/a;->F()Lqh/d;

    move-result-object v8

    iput-object v8, v7, Lj9/H1$a;->f:Lqh/d;

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v8

    invoke-static {v8}, Lcom/android/camera/data/data/m;->T(I)Z

    move-result v8

    iput-boolean v8, v7, Lj9/H1$a;->k:Z

    invoke-virtual {v5}, Lj9/a;->B()Landroid/hardware/camera2/CaptureResult;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Lcom/android/camera/module/Camera2Module;->prepareNormalCapture(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V

    iget-object v9, v0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x32

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->calculateTimeout()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v9, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v9}, Lj6/j;->K0()Lj9/h0;

    move-result-object v9

    iget-boolean v10, v0, Lcom/android/camera/module/Camera2Module;->mQuickShotAnimateEnable:Z

    iget-object v9, v9, Lj9/h0;->a:Lj9/i0;

    iput-boolean v10, v9, Lj9/i0;->j2:Z

    invoke-virtual {v5}, Lj9/a;->t()Lj9/i0;

    move-result-object v5

    iget-object v5, v5, Lj9/i0;->P0:Lj1/a;

    invoke-virtual {v5}, Lj1/a;->a()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->c()Lj9/e;

    move-result-object v5

    invoke-static {v5}, Lj9/f;->Z1(Lj9/e;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget-boolean v5, v5, Ll6/b;->c:Z

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    iget-object v5, v5, Lj9/h0;->a:Lj9/i0;

    iget-boolean v5, v5, Lj9/i0;->p1:Z

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    invoke-virtual {v5, v6}, Lj9/h0;->h(Z)V

    invoke-virtual {v0}, Lcom/android/camera/module/r;->resumePreviewInWorkThread()V

    :cond_8
    iget-boolean v5, v0, Lcom/android/camera/module/Camera2Module;->mIsHighQualityQuickShotEnabled:Z

    if-eqz v5, :cond_9

    iget-boolean v5, v0, Lcom/android/camera/module/Camera2Module;->mDelayTimeMessageSent:Z

    if-nez v5, :cond_9

    invoke-direct {v0}, Lcom/android/camera/module/Camera2Module;->sendDelayTimeMessage()V

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "startNormalCapture ButtonStatus: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lqh/a;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v5, v1}, LQ6/j1;->Um(I)I

    move-result v5

    const/16 v9, 0x14

    if-gtz v5, :cond_b

    const/16 v11, 0x28

    if-eq v1, v11, :cond_b

    if-eq v1, v9, :cond_b

    const/16 v11, 0x64

    if-eq v1, v11, :cond_b

    const/16 v11, 0x78

    if-ne v1, v11, :cond_a

    goto :goto_0

    :cond_a
    move v11, v6

    goto :goto_1

    :cond_b
    :goto_0
    const/4 v11, 0x1

    :goto_1
    const-string v12, "countdown "

    const-string v13, ", mode "

    invoke-static {v5, v1, v12, v13}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v5

    check-cast v5, Lj6/a;

    iget-boolean v5, v5, Lj6/a;->i:Z

    iget v12, v0, Lcom/android/camera/module/r;->mOperatingMode:I

    iget-object v13, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isZslPreferred()Z

    move-result v14

    invoke-virtual {v3}, LJe/c;->Y1()Z

    move-result v15

    move/from16 v16, v9

    const/16 v17, 0x0

    if-eqz v15, :cond_47

    if-nez v5, :cond_47

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v5

    const/16 v15, 0xba

    if-eq v5, v15, :cond_47

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v5

    const/16 v15, 0xb6

    if-eq v5, v15, :cond_47

    if-nez v8, :cond_c

    goto/16 :goto_18

    :cond_c
    invoke-interface {v13}, Lj6/j;->V()Lj9/a;

    move-result-object v5

    invoke-virtual {v5}, Lj9/a;->t()Lj9/i0;

    move-result-object v5

    new-instance v15, Lj9/H1;

    invoke-direct {v15, v7}, Lj9/H1;-><init>(Lj9/H1$a;)V

    const/16 v18, -0x1

    const/4 v9, 0x2

    iput v9, v15, Lj9/H1;->h:I

    invoke-interface {v13}, Lj6/j;->V()Lj9/a;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lj9/a;->W()Z

    move-result v9

    const-string v10, "createSnapParam: needFlash: "

    invoke-static {v10, v9}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    new-array v2, v6, [Ljava/lang/Object;

    const-string v6, "SnapParamCreater"

    invoke-static {v6, v10, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v9, v15, Lj9/H1;->b:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "createSnapParam: FusionType: "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-object v9, v9, Lj9/H1$a;->f:Lqh/d;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v10}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v15, Lj9/H1;->g:Lj9/H1$a;

    invoke-interface {v13}, Lj6/j;->V()Lj9/a;

    move-result-object v9

    check-cast v9, Lj9/D0;

    invoke-virtual {v9, v8}, Lj9/D0;->t2(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v9

    iput-boolean v9, v2, Lj9/H1$a;->e:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "createSnapParam: FakeSatEnabled: "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-boolean v9, v9, Lj9/H1$a;->e:Z

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v10}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v15, Lj9/H1;->g:Lj9/H1$a;

    invoke-interface {v13}, Lj6/j;->V()Lj9/a;

    move-result-object v9

    check-cast v9, Lj9/D0;

    iget-object v9, v9, Lj9/D0;->F:Lj9/h0;

    iget-object v9, v9, Lj9/h0;->a:Lj9/i0;

    iget-boolean v9, v9, Lj9/i0;->u1:Z

    iput-boolean v9, v2, Lj9/H1$a;->h:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "createSnapParam: QcfaEnabled: "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-boolean v9, v9, Lj9/H1$a;->h:Z

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v10}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, v5, Lj9/i0;->a3:I

    iput v2, v15, Lj9/H1;->e:I

    const-string v10, "createSnapParam: rawCallbackType: "

    invoke-static {v2, v10}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v10}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v12, v15, Lj9/H1;->d:I

    const-string v2, "createSnapParam: opMode: "

    invoke-static {v12, v2}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v10}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lga/C0;->f2:Lga/D0;

    const v9, 0xbabe

    invoke-static {v8, v2, v9}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget v2, v5, Lj9/i0;->a1:I

    const-string/jumbo v10, "shotType is "

    invoke-static {v2, v10}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v6, v10, v9}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v9, 0x6

    const/4 v12, 0x5

    const/16 v10, 0x8

    if-eq v2, v12, :cond_10

    if-eq v2, v9, :cond_10

    move/from16 v30, v9

    const/4 v9, 0x7

    if-eq v2, v9, :cond_11

    if-eq v2, v10, :cond_f

    const/16 v9, 0xb

    if-eq v2, v9, :cond_f

    const/16 v9, 0xd

    if-eq v2, v9, :cond_f

    const/16 v9, 0xf

    if-eq v2, v9, :cond_e

    const/16 v9, 0x13

    if-eq v2, v9, :cond_d

    const/4 v2, 0x0

    goto :goto_2

    :cond_d
    const/4 v2, 0x3

    goto :goto_2

    :cond_e
    const/4 v2, 0x4

    goto :goto_2

    :cond_f
    const/4 v2, 0x2

    goto :goto_2

    :cond_10
    move/from16 v30, v9

    :cond_11
    const/4 v2, 0x1

    :goto_2
    const-string v9, "captureType is "

    invoke-static {v2, v9}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move/from16 v32, v10

    move/from16 v31, v12

    const/4 v12, 0x0

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v6, v9, v10}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v2, v15, Lj9/H1;->f:I

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    const/4 v12, 0x1

    if-eq v2, v12, :cond_32

    const/16 v33, 0x11

    const/16 v12, 0x10

    const/16 v34, 0xc

    const/16 v35, 0xa

    const/16 v36, 0x12

    const-class v10, Lv2/E0;

    const/4 v9, 0x2

    if-eq v2, v9, :cond_1a

    const/4 v9, 0x3

    if-eq v2, v9, :cond_14

    const/4 v5, 0x4

    if-eq v2, v5, :cond_12

    move-object/from16 v23, v3

    const/4 v5, 0x0

    goto/16 :goto_12

    :cond_12
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/E0;

    if-eqz v2, :cond_13

    iget-object v5, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-object v2, v2, Lv2/E0;->c:Lha/w;

    iput-object v2, v5, Lj9/H1$a;->J:Lha/w;

    goto :goto_3

    :cond_13
    iget-object v2, v15, Lj9/H1;->g:Lj9/H1$a;

    invoke-static {v15, v8}, Lj9/J1;->e(Lj9/H1;Landroid/hardware/camera2/CaptureResult;)Lha/w;

    move-result-object v5

    iput-object v5, v2, Lj9/H1$a;->J:Lha/w;

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "getRawBokehAlgoType: evValue = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-object v5, v5, Lj9/H1$a;->J:Lha/w;

    invoke-virtual {v5}, Lha/w;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-object v5, v2, Lj9/H1$a;->J:Lha/w;

    iget v5, v5, Lha/w;->a:I

    iput v5, v2, Lj9/H1$a;->c:I

    iput v5, v2, Lj9/H1$a;->d:I

    move-object/from16 v23, v3

    const/16 v5, 0x13

    goto/16 :goto_12

    :cond_14
    iget-object v2, v15, Lj9/H1;->g:Lj9/H1$a;

    invoke-static {v8}, Lj9/o0;->t(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v5

    iput-boolean v5, v2, Lj9/H1$a;->t:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "getRawHDRAlgoType: isZslHDR: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-boolean v5, v5, Lj9/H1$a;->t:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lga/C0;->d0:Lga/D0;

    const v5, 0xbabe

    invoke-static {v8, v2, v5}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/16 v5, 0x15

    if-eqz v2, :cond_15

    array-length v9, v2

    const/4 v10, 0x1

    const/16 v22, 0x0

    if-lt v9, v10, :cond_16

    aget-byte v9, v2, v22

    if-nez v9, :cond_17

    goto :goto_4

    :cond_15
    const/4 v10, 0x1

    const/16 v22, 0x0

    :cond_16
    :goto_4
    const/16 v2, 0x1c

    new-array v2, v2, [B

    aput-byte v30, v2, v22

    aput-byte v22, v2, v10

    const/16 v20, 0x2

    aput-byte v22, v2, v20

    const/16 v25, 0x3

    aput-byte v22, v2, v25

    const/16 v24, 0x4

    aput-byte v10, v2, v24

    aput-byte v22, v2, v31

    aput-byte v22, v2, v30

    const/16 v29, 0x7

    aput-byte v22, v2, v29

    const/16 v9, -0xc

    aput-byte v9, v2, v32

    const/16 v9, 0x9

    aput-byte v18, v2, v9

    aput-byte v18, v2, v35

    const/16 v21, 0xb

    aput-byte v18, v2, v21

    const/16 v9, -0x18

    aput-byte v9, v2, v34

    const/16 v28, 0xd

    aput-byte v18, v2, v28

    const/16 v9, 0xe

    aput-byte v18, v2, v9

    const/16 v27, 0xf

    aput-byte v18, v2, v27

    const/16 v19, 0x1

    aput-byte v19, v2, v12

    const/16 v22, 0x0

    aput-byte v22, v2, v33

    aput-byte v22, v2, v36

    const/16 v26, 0x13

    aput-byte v22, v2, v26

    aput-byte v19, v2, v16

    aput-byte v22, v2, v5

    const/16 v9, 0x16

    aput-byte v22, v2, v9

    const/16 v9, 0x17

    aput-byte v22, v2, v9

    const/16 v9, 0x18

    aput-byte v19, v2, v9

    const/16 v9, 0x19

    aput-byte v22, v2, v9

    const/16 v9, 0x1a

    aput-byte v22, v2, v9

    const/16 v9, 0x1b

    aput-byte v22, v2, v9

    :cond_17
    invoke-static {}, Lj9/J1;->c()[I

    move-result-object v9

    new-instance v10, Lha/j;

    invoke-direct {v10, v9, v2}, Lha/j;-><init>([I[B)V

    iget v2, v10, Lha/j;->b:I

    iget-object v9, v10, Lha/j;->c:[I

    iget-object v10, v15, Lj9/H1;->g:Lj9/H1$a;

    iput v2, v10, Lj9/H1$a;->c:I

    iput v2, v10, Lj9/H1$a;->d:I

    iput-object v9, v10, Lj9/H1$a;->q:[I

    invoke-static {v8}, Lj9/o0;->g(Landroid/hardware/camera2/CaptureResult;)I

    move-result v2

    iput v2, v10, Lj9/H1$a;->r:I

    iget-object v2, v15, Lj9/H1;->g:Lj9/H1$a;

    invoke-static {v8}, Lj9/o0;->f(Landroid/hardware/camera2/CaptureResult;)I

    move-result v9

    iput v9, v2, Lj9/H1$a;->s:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "getRawHDRAlgoType: scene = "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v15, Lj9/H1;->g:Lj9/H1$a;

    iget v9, v9, Lj9/H1$a;->r:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",adrc = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Lj9/H1;->g:Lj9/H1$a;

    iget v9, v9, Lj9/H1$a;->s:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",EvValue = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-object v9, v9, Lj9/H1$a;->q:[I

    if-eqz v9, :cond_18

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v17

    :cond_18
    move-object/from16 v9, v17

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v10}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v13}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    invoke-virtual {v2}, Lj9/a;->q()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->P3(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v15, Lj9/H1;->g:Lj9/H1$a;

    invoke-interface {v13}, Lj6/j;->V()Lj9/a;

    move-result-object v9

    invoke-virtual {v9}, Lj9/a;->q()Lj9/e;

    move-result-object v9

    invoke-static {v8, v9}, Lj9/n0;->f(Landroid/hardware/camera2/CaptureResult;Lj9/e;)[B

    move-result-object v9

    iput-object v9, v2, Lj9/H1$a;->A:[B

    :cond_19
    move-object/from16 v23, v3

    goto/16 :goto_12

    :cond_1a
    const/16 v27, 0xf

    iget-boolean v2, v5, Lj9/i0;->V0:Z

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v9

    invoke-virtual {v9}, Lu2/Q;->O()Z

    move-result v9

    if-eqz v9, :cond_1b

    iget v9, v15, Lj9/H1;->e:I

    if-ne v12, v9, :cond_1b

    const/4 v9, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    const-string v10, "fillSnapParamForCup"

    invoke-static {v6, v10, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v9}, [I

    move-result-object v5

    iget-object v9, v15, Lj9/H1;->g:Lj9/H1$a;

    const/4 v10, 0x1

    iput v10, v9, Lj9/H1$a;->c:I

    iput v10, v9, Lj9/H1$a;->d:I

    iput-object v5, v9, Lj9/H1$a;->q:[I

    move-object/from16 v23, v3

    move/from16 v9, v33

    goto/16 :goto_10

    :cond_1b
    iget v9, v15, Lj9/H1;->d:I

    const v12, 0x800a

    move-object/from16 v23, v3

    const/16 v3, 0x20

    if-eq v12, v9, :cond_2d

    iget v9, v15, Lj9/H1;->e:I

    move/from16 v12, v32

    if-eq v12, v9, :cond_2d

    if-eq v3, v9, :cond_2d

    const/16 v12, 0x10

    if-eq v12, v9, :cond_2d

    invoke-virtual {v15}, Lj9/H1;->b()Lj9/H1$a;

    move-result-object v9

    iget-boolean v9, v9, Lj9/H1$a;->P:Z

    if-eqz v9, :cond_1c

    goto/16 :goto_d

    :cond_1c
    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-boolean v9, v3, Lj9/H1$a;->a:Z

    if-eqz v9, :cond_1e

    iget v9, v3, Lj9/H1$a;->b:I

    move/from16 v10, v18

    if-eq v9, v10, :cond_1d

    goto/16 :goto_10

    :cond_1d
    invoke-static {v13, v3, v8, v5}, Lj9/J1;->d(Lj6/j;Lj9/H1$a;Landroid/hardware/camera2/CaptureResult;Lj9/i0;)I

    move-result v3

    move v9, v3

    goto/16 :goto_10

    :cond_1e
    if-eqz v2, :cond_23

    invoke-interface {v13}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    invoke-virtual {v3}, Lj9/a;->q()Lj9/e;

    move-result-object v3

    iget-object v5, v15, Lj9/H1;->g:Lj9/H1$a;

    if-eqz v3, :cond_22

    iget-object v9, v3, Lj9/e;->o4:Ljava/lang/Boolean;

    if-nez v9, :cond_21

    sget-object v9, Lga/w0;->R2:Lga/D0;

    invoke-virtual {v9}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    sget v10, Lga/E0;->a:I

    iget-object v12, v3, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v12, v9, v10}, Lga/E0;->i(Landroid/hardware/camera2/CameraCharacteristics;Lga/D0;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_1f

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v20, 0x2

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_1f

    const/4 v9, 0x1

    goto :goto_5

    :cond_1f
    const/4 v9, 0x0

    :goto_5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v3, Lj9/e;->o4:Ljava/lang/Boolean;

    goto :goto_6

    :cond_20
    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    const-string v9, "CameraCapabilities"

    const-string v12, "isFusionSRZSLSupported : IS_FUSIONSR_ZSL_SUPPORT not defined"

    invoke-static {v9, v12, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v9, v3, Lj9/e;->o4:Ljava/lang/Boolean;

    :cond_21
    :goto_6
    iget-object v3, v3, Lj9/e;->o4:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    goto :goto_7

    :cond_22
    const/4 v3, 0x0

    :goto_7
    iput-boolean v3, v5, Lj9/H1$a;->g:Z

    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    invoke-static {v3}, Lj9/J1;->b(Lj9/H1$a;)V

    const/4 v9, 0x3

    goto/16 :goto_10

    :cond_23
    const/16 v20, 0x2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v8, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-boolean v9, v5, Lj9/i0;->e1:Z

    iget-object v10, v15, Lj9/H1;->g:Lj9/H1$a;

    if-nez v3, :cond_24

    const/4 v3, 0x0

    goto :goto_8

    :cond_24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_8
    iput v3, v10, Lj9/H1$a;->z:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "getBurstAlgoType: iso = "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v15, Lj9/H1;->g:Lj9/H1$a;

    iget v10, v10, Lj9/H1$a;->z:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " isHwMFNREnabled = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v6, v3, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {v23 .. v23}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a7()Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    const/4 v10, 0x1

    iput-boolean v10, v3, Lj9/H1$a;->j:Z

    goto :goto_a

    :cond_25
    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    iget v10, v3, Lj9/H1$a;->z:I

    const/16 v12, 0x320

    if-lt v10, v12, :cond_26

    const/4 v10, 0x1

    goto :goto_9

    :cond_26
    const/4 v10, 0x0

    :goto_9
    iput-boolean v10, v3, Lj9/H1$a;->j:Z

    :goto_a
    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-boolean v3, v3, Lj9/H1$a;->j:Z

    if-eqz v3, :cond_2c

    sget v3, Lcom/android/camera/module/Y;->a:I

    const/16 v10, 0xbc

    if-ne v3, v10, :cond_27

    if-nez v9, :cond_2c

    :cond_27
    invoke-virtual/range {v23 .. v23}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a7()Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    iget v3, v3, Lj9/H1$a;->z:I

    sget-object v9, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v9}, Lwp/g;->a()Lwp/g$b;

    move-result-object v9

    iget-boolean v10, v5, Lj9/i0;->k1:Z

    if-eqz v9, :cond_28

    if-nez v10, :cond_28

    invoke-virtual/range {v23 .. v23}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->e7()I

    move-result v12

    if-ge v3, v12, :cond_28

    invoke-virtual {v9}, Lwp/g$b;->d()I

    move-result v3

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x1

    if-lt v3, v12, :cond_28

    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    iput v12, v3, Lj9/H1$a;->c:I

    iput v12, v3, Lj9/H1$a;->d:I

    const-string/jumbo v3, "switch to quick shot hht(1 -> 1)"

    const/4 v9, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v6, v3, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_28
    if-eqz v9, :cond_29

    if-nez v10, :cond_29

    iget-object v3, v5, Lj9/i0;->J1:Lx4/s;

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Lx4/s;->f()Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v9}, Lwp/g$b;->i()Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    const/4 v9, 0x3

    iput v9, v3, Lj9/H1$a;->c:I

    iput v9, v3, Lj9/H1$a;->d:I

    const-string/jumbo v3, "switch to quick shot hht(3 -> 1)"

    const/4 v9, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v6, v3, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_29
    invoke-interface {v13}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    invoke-virtual {v3}, Lj9/a;->q()Lj9/e;

    move-result-object v3

    invoke-static {v8, v3}, Lj9/n0;->d(Landroid/hardware/camera2/CaptureResult;Lj9/e;)I

    move-result v3

    if-lez v3, :cond_2a

    iget-object v5, v15, Lj9/H1;->g:Lj9/H1$a;

    iput v3, v5, Lj9/H1$a;->c:I

    iput v3, v5, Lj9/H1$a;->d:I

    const-string v5, "getHHTFrameNumber hht("

    const-string v9, " -> 1)"

    invoke-static {v3, v5, v9}, LF1/E;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v6, v3, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_2a
    const/4 v9, 0x0

    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    move/from16 v5, v31

    iput v5, v3, Lj9/H1$a;->c:I

    iput v5, v3, Lj9/H1$a;->d:I

    const-string v3, "default hht(5 -> 1)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v6, v3, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_b
    const/4 v9, 0x7

    goto :goto_c

    :cond_2b
    invoke-virtual/range {v23 .. v23}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->u2()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3}, Lu2/Q;->O()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    const/4 v5, 0x5

    iput v5, v3, Lj9/H1$a;->c:I

    iput v5, v3, Lj9/H1$a;->d:I

    move/from16 v9, v20

    goto :goto_c

    :cond_2c
    const/4 v9, 0x0

    :goto_c
    if-nez v9, :cond_31

    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    const/4 v10, 0x1

    iput v10, v3, Lj9/H1$a;->c:I

    iput v10, v3, Lj9/H1$a;->d:I

    goto :goto_10

    :cond_2d
    :goto_d
    iget v5, v15, Lj9/H1;->e:I

    const/16 v12, 0x8

    if-ne v12, v5, :cond_2e

    move/from16 v9, v34

    goto :goto_e

    :cond_2e
    if-ne v3, v5, :cond_2f

    move/from16 v9, v27

    goto :goto_e

    :cond_2f
    move/from16 v9, v35

    :goto_e
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    invoke-virtual {v3, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/E0;

    if-eqz v3, :cond_30

    iget-object v5, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-object v3, v3, Lv2/E0;->c:Lha/w;

    iput-object v3, v5, Lj9/H1$a;->J:Lha/w;

    goto :goto_f

    :cond_30
    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    invoke-static {v15, v8}, Lj9/J1;->e(Lj9/H1;Landroid/hardware/camera2/CaptureResult;)Lha/w;

    move-result-object v5

    iput-object v5, v3, Lj9/H1$a;->J:Lha/w;

    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "fillSnapParamForSN: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-object v5, v5, Lj9/H1$a;->J:Lha/w;

    invoke-virtual {v5}, Lha/w;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v6, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-object v5, v3, Lj9/H1$a;->J:Lha/w;

    iget v5, v5, Lha/w;->a:I

    iput v5, v3, Lj9/H1$a;->c:I

    iput v5, v3, Lj9/H1$a;->d:I

    invoke-static {v8}, Lj9/o0;->n(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v5

    iput-object v5, v3, Lj9/H1$a;->K:[I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "fillSnapParamForSN, mSuperNightAepLineValue: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-object v5, v5, Lj9/H1$a;->K:[I

    invoke-static {v5, v3}, LF1/Q;->b([ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v6, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    :goto_10
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    iget v5, v3, Lj9/H1$a;->c:I

    iget-boolean v3, v3, Lj9/H1$a;->j:Z

    const-string v10, "prepare: algo="

    const-string v12, " captureNum="

    const-string v13, " doMFNR="

    invoke-static {v9, v5, v10, v12, v13}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " doSR="

    invoke-static {v5, v3, v10, v2}, LF1/B2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v9

    goto :goto_12

    :cond_32
    move-object/from16 v23, v3

    move/from16 v12, v32

    const/16 v36, 0x12

    iget-boolean v2, v5, Lj9/i0;->X2:Z

    if-eqz v2, :cond_34

    iget-object v3, v5, Lj9/i0;->P0:Lj1/a;

    invoke-virtual {v3}, Lj1/a;->a()Z

    move-result v3

    if-nez v3, :cond_33

    invoke-interface {v13}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    check-cast v3, Lj9/D0;

    invoke-virtual {v3}, Lj9/D0;->r2()Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_33
    const/4 v2, 0x0

    :cond_34
    const-string v3, "getSingleAlgoType: doRemosaic: "

    invoke-static {v3, v2}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v6, v3, v10}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v15, Lj9/H1;->g:Lj9/H1$a;

    iput-boolean v2, v3, Lj9/H1$a;->i:Z

    const/4 v10, 0x1

    iput v10, v3, Lj9/H1$a;->c:I

    iput v10, v3, Lj9/H1$a;->d:I

    invoke-interface {v13}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    invoke-virtual {v3}, Lj9/a;->t()Lj9/i0;

    move-result-object v3

    iget-boolean v3, v3, Lj9/i0;->u1:Z

    if-eqz v3, :cond_35

    if-eqz v2, :cond_35

    goto :goto_11

    :cond_35
    const/16 v30, 0x0

    :goto_11
    iget-boolean v3, v5, Lj9/i0;->Q0:Z

    if-eqz v3, :cond_36

    move/from16 v30, v12

    :cond_36
    if-eqz v2, :cond_37

    invoke-static {}, Lcom/android/camera/data/data/r;->e()V

    :cond_37
    move/from16 v5, v30

    :goto_12
    const-string v2, "createSnapParam: algoType: "

    invoke-static {v5, v2}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v5, v15, Lj9/H1;->a:I

    if-eqz v11, :cond_38

    const-string v2, "createSnapParam: forbidden zsl "

    invoke-static {v2, v11}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v9, v15, Lj9/H1;->c:Z

    goto/16 :goto_19

    :cond_38
    iget-boolean v2, v15, Lj9/H1;->b:Z

    if-eqz v2, :cond_39

    move v14, v9

    goto/16 :goto_17

    :cond_39
    const-string v2, "isZslCapture: preferredZsl is "

    invoke-static {v2, v14}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, v15, Lj9/H1;->f:I

    const/4 v10, 0x1

    if-ne v2, v10, :cond_3a

    goto/16 :goto_17

    :cond_3a
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3b

    const-string v2, "raw hdr zsl "

    invoke-static {v2, v14}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_17

    :cond_3b
    const/4 v3, 0x4

    if-ne v2, v3, :cond_3c

    const-string v2, "raw bokeh zsl "

    invoke-static {v2, v14}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_17

    :cond_3c
    sget v2, Lcom/android/camera/module/Y;->a:I

    const/16 v10, 0xbc

    if-ne v2, v10, :cond_40

    const/4 v9, 0x3

    if-ne v5, v9, :cond_3e

    invoke-virtual/range {v23 .. v23}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->h6()Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_13

    :cond_3d
    const/4 v14, 0x0

    goto :goto_14

    :cond_3e
    :goto_13
    const/4 v14, 0x1

    :goto_14
    if-eqz v14, :cond_3f

    const-string v2, "enable"

    goto :goto_15

    :cond_3f
    const-string v2, "disable"

    :goto_15
    const-string v3, " ZSL for SuperMoonMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :cond_40
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v5, v10, :cond_41

    const/4 v3, 0x3

    if-eq v5, v3, :cond_44

    const/4 v2, 0x7

    if-eq v5, v2, :cond_43

    move/from16 v2, v36

    if-eq v5, v2, :cond_42

    move/from16 v2, v16

    if-eq v5, v2, :cond_41

    const-string v2, "default burst zsl false. algoType = "

    invoke-static {v5, v2}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_41
    const/4 v14, 0x0

    goto :goto_17

    :cond_42
    :goto_16
    const/4 v14, 0x1

    goto :goto_17

    :cond_43
    invoke-virtual/range {v23 .. v23}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->N5()Z

    move-result v14

    goto :goto_17

    :cond_44
    iget-object v2, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-boolean v2, v2, Lj9/H1$a;->e:Z

    if-nez v2, :cond_41

    invoke-virtual {v15}, Lj9/H1;->a()Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-boolean v2, v2, Lj9/H1$a;->g:Z

    if-eqz v2, :cond_41

    :cond_45
    iget-object v2, v15, Lj9/H1;->g:Lj9/H1$a;

    iget-boolean v3, v2, Lj9/H1$a;->o:Z

    if-eqz v3, :cond_46

    iget-boolean v2, v2, Lj9/H1$a;->p:Z

    if-eqz v2, :cond_41

    :cond_46
    invoke-static {}, Lcom/android/camera/module/Y;->j()Z

    move-result v2

    if-nez v2, :cond_41

    invoke-virtual/range {v23 .. v23}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->h6()Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_16

    :goto_17
    const-string v2, "createSnapParam: zsl "

    invoke-static {v2, v14}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v14, v15, Lj9/H1;->c:Z

    goto :goto_19

    :cond_47
    :goto_18
    move-object/from16 v15, v17

    :goto_19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create snapParamV2: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v0, v15}, Lcom/android/camera/module/Camera2Module;->changeDefaultAlgoIfNeeded(Lj9/H1;)V

    if-nez v15, :cond_48

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v2

    invoke-static {v2, v7, v8, v11}, Lj9/J1;->a(ILj9/H1$a;Landroid/hardware/camera2/CaptureResult;Z)Lj9/H1;

    move-result-object v15

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create snapParamV1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_48
    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    invoke-virtual {v2, v15}, Lj9/a;->S0(Lj9/H1;)V

    invoke-virtual {v0, v15}, Lcom/android/camera/module/Camera2Module;->handleZslSoundAndAnim(Lj9/H1;)V

    invoke-static {}, Lcom/android/camera/data/data/E;->W()Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/xiaomi/camera/module/PhotoBase;->setNeedBlockQuickShot(Z)V

    const/4 v10, -0x1

    iput v10, v0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    const-string v1, "isSuperNightOn, and block quick shot"

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_49
    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->needQuickShot()Z

    move-result v2

    if-eqz v2, :cond_4a

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_4a

    iget v1, v0, Lcom/android/camera/module/Camera2Module;->mFixedShot2ShotTime:I

    if-ne v1, v10, :cond_4a

    const-string/jumbo v1, "startNormalCapture force set CameraStateConstant.IDLE"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v10, 0x1

    invoke-interface {v1, v10}, Lj6/j;->E(I)V

    invoke-virtual {v0, v10}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    goto :goto_1a

    :cond_4a
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/xiaomi/camera/module/PhotoBase;->setNeedBlockQuickShot(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isParallelSessionEnable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isParallelSessionEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", and block quick shot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1a
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->trackFluencyCaptureStart()V

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v2}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/Camera2Module;->mCaptureButtonStatus:Lqh/a;

    invoke-virtual {v1, v0, v2, v3}, Lj9/a;->r1(Lj9/a$j;Lk7/i;Lqh/a;)V

    const/16 v19, 0x1

    return v19
.end method

.method public startPreview()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/Camera2Module;->setupCameraDeviceForPreview(Lj9/a;)V

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->updateCameraConfig()V

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->initPreviewDecoders()I

    move-result v3

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->genPreviewSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getZoomMapSurface()Landroid/view/Surface;

    move-result-object v5

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->A(I)Ljava/lang/String;

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->O0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v4, p0, Lcom/android/camera/module/Camera2Module;->mRawCallbackType:I

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getLivephotoEisSurface()Landroid/view/Surface;

    iget v6, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v7, v0, Lv6/b;->e:Z

    new-instance v8, Landroid/util/Range;

    const/16 v0, 0x78

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v8, v9, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lj9/a;->W0(Landroid/view/Surface;IILandroid/view/Surface;IZLandroid/util/Range;Lcom/android/camera/module/Camera2Module;)V

    goto :goto_0

    :cond_0
    move-object v9, p0

    iget v4, v9, Lcom/android/camera/module/Camera2Module;->mRawCallbackType:I

    invoke-virtual {v9}, Lcom/android/camera/module/Camera2Module;->getLivephotoEisSurface()Landroid/view/Surface;

    move-result-object v6

    iget v7, v9, Lcom/android/camera/module/r;->mOperatingMode:I

    iget-object p0, v9, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v8, p0, Lv6/b;->e:Z

    invoke-virtual/range {v1 .. v9}, Lj9/a;->f1(Landroid/view/Surface;IILandroid/view/Surface;Landroid/view/Surface;IZLcom/android/camera/module/Camera2Module;)V

    goto :goto_0

    :cond_1
    move-object v9, p0

    :goto_0
    iget-object p0, v9, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    sget v0, Lh3/b;->a:I

    sget v0, Lh3/c;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    sget-object v0, Lh3/b$a;->c:Lh3/b$a;

    const-string/jumbo v1, "startPreview: preview for camera"

    invoke-static {v0, v1, p0}, Lh3/b;->c(Lh3/b$a;Ljava/lang/String;Landroid/hardware/camera2/CameraMetadata;)V

    :cond_2
    iget-object p0, v9, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-object p0, p0, Lv6/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    if-eqz p0, :cond_3

    sget-object v0, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v0}, Lwp/g;->a()Lwp/g$b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/module/Camera2Module;->mSupportAnchorFrameAsThumbnail:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object p0

    invoke-interface {p0}, Lj6/j;->h0()LRh/i;

    move-result-object p0

    invoke-virtual {v0}, Lwp/g$b;->c()Lwp/l;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lwp/l;->u:Ljava/lang/ref/WeakReference;

    :cond_3
    invoke-virtual {v9}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {v9}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {v9}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    invoke-interface {p0}, Lru/k;->p()Lru/h;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {v9}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    invoke-interface {p0}, Lru/k;->p()Lru/h;

    move-result-object p0

    iget-object p0, p0, Lru/h;->h:LGu/b;

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Camera2Module"

    const-string v1, "Set callback"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    invoke-interface {p0}, Lru/k;->p()Lru/h;

    move-result-object p0

    iget-object p0, p0, Lru/h;->h:LGu/b;

    invoke-static {p0}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->setInsertionFrame(LGu/b;)V

    :cond_4
    return-void
.end method

.method public startTimerCapture(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->startNormalCapture(I)Z

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Camera2Module"

    const-string/jumbo v0, "startNormalCapture : Activity already paused, ignore!"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public supportAnchorFrameAsThumbnail()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public supportEdgeWideLDC()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic supportEvOverlap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportMTKHDRReprocess()Z
    .locals 0

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

    const/4 p0, 0x0

    return p0
.end method

.method public trackBeautyInfo(IZLx4/s;J)V
    .locals 2

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    move-wide v0, p4

    move p5, p0

    move p0, p1

    move p1, p2

    move-object p2, p3

    move-wide p3, v0

    invoke-static/range {p0 .. p5}, LB7/a;->b(IZLx4/s;JI)V

    return-void
.end method

.method public trackMultiCapture()V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget v0, v0, Ll6/t;->b:I

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v1

    invoke-interface {v1}, Lj6/f;->x()Lx4/s;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v1

    check-cast v1, Lj6/a;

    iget-object v1, v1, Lj6/a;->q:Landroid/location/Location;

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v5, v1

    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget v6, v1, Ll6/b;->b:I

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v1

    invoke-interface {v1}, Lj6/j;->U()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v3, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/module/r;->trackGeneralInfo(ZLx4/s;ZILjava/lang/Boolean;)V

    new-instance p0, Lqh/g;

    invoke-direct {p0}, Lqh/g;-><init>()V

    iput v0, p0, Lqh/g;->a:I

    iput-boolean v8, p0, Lqh/g;->b:Z

    invoke-virtual {v2}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v0

    check-cast v0, Lj6/a;

    iget-object v0, v0, Lj6/a;->q:Landroid/location/Location;

    iget-object v0, v2, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget v0, v0, Ll6/b;->b:I

    iput v0, p0, Lqh/g;->c:I

    iget-object v0, v2, Lcom/android/camera/module/Camera2Module;->mNightManager:Ll6/z;

    iget v0, v0, Ll6/z;->j:I

    iput v0, p0, Lqh/g;->e:I

    iget v0, v2, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->i0(I)Z

    move-result v0

    iput-boolean v0, p0, Lqh/g;->f:Z

    invoke-virtual {v2}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->x()Lx4/s;

    move-result-object v0

    iput-object v0, p0, Lqh/g;->g:Lx4/s;

    invoke-virtual {v2}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->D()Z

    move-result v0

    iput-boolean v0, p0, Lqh/g;->h:Z

    invoke-virtual {v2}, Lcom/android/camera/module/Camera2Module;->getWatermarkItem()LN1/n;

    move-result-object v0

    iput-object v0, p0, Lqh/g;->j:LN1/n;

    invoke-virtual {v2}, Lcom/android/camera/module/Camera2Module;->getJpegRotation()I

    move-result v0

    iput v0, p0, Lqh/g;->k:I

    invoke-virtual {v2}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    iput v0, p0, Lqh/g;->l:I

    invoke-virtual {v2}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    iput-boolean v0, p0, Lqh/g;->m:Z

    invoke-virtual {v2}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->B()I

    move-result v0

    iput v0, p0, Lqh/g;->n:I

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/effect/EffectController;->m()I

    move-result v0

    iput v0, p0, Lqh/g;->o:I

    invoke-virtual {v2, p0}, Lcom/android/camera/module/r;->trackPictureTaken(Lqh/g;)V

    return-void
.end method

.method public tryRemoveCountDownMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->wk()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->tryRemoveCountDownMessage()V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/w0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/w0;

    invoke-virtual {v0}, Lv2/w0;->o()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa3

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/l0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LF1/l0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/r;->unRegisterProtocol()V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mCameraAction:Ll6/f;

    invoke-virtual {v0}, Ll6/f;->unRegisterProtocol()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LN6/a;->unRegisterProtocol()V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/Z0;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/K;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/l0;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mTopConfigImpl:LQ6/o1;

    invoke-interface {v0}, LN6/a;->unRegisterProtocol()V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object p0

    invoke-virtual {p0}, Lp6/b;->c()V

    return-void
.end method

.method public updateASD()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/camera/module/PhotoBase;->needASD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lj6/j;->n0(Z)V

    :cond_0
    return-void
.end method

.method public updateAiScene()V
    .locals 9

    const/16 v0, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget-object v3, p0, Ll6/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/Camera2Module;

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v4

    invoke-interface {v4}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v6

    invoke-static {v6}, Lcom/android/camera/data/data/j;->i(I)Z

    move-result v6

    iget-object v7, v5, Lj9/h0;->a:Lj9/i0;

    iget-boolean v8, v7, Lj9/i0;->m1:Z

    if-eq v8, v6, :cond_1

    iput-boolean v6, v7, Lj9/i0;->m1:Z

    invoke-virtual {v5}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lj9/Y;

    invoke-direct {v7, v5, v2}, Lj9/Y;-><init>(Lj9/h0;I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-virtual {v3}, Lcom/android/camera/module/Camera2Module;->getAiSceneEnabled()Z

    move-result v5

    iput-boolean v5, p0, Ll6/b;->c:Z

    iput v2, p0, Ll6/b;->b:I

    invoke-interface {v4}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/camera/module/Camera2Module;->getAiSceneEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lj9/h0;->l(Z)V

    iget-boolean v5, p0, Ll6/b;->c:Z

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lj6/j;->c()Lj9/e;

    move-result-object v5

    invoke-static {v5}, Lj9/f;->Z1(Lj9/e;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    invoke-virtual {v5, v1}, Lj9/h0;->h(Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    invoke-virtual {v5, v2}, Lj9/h0;->h(Z)V

    :goto_0
    invoke-interface {v4}, Lj6/j;->d0()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/camera/module/Y;->c()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-boolean v5, p0, Ll6/b;->c:Z

    if-nez v5, :cond_5

    :cond_4
    invoke-interface {v4}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    iget-boolean v6, p0, Ll6/b;->c:Z

    iget-object v7, v5, Lj9/h0;->a:Lj9/i0;

    iget-boolean v8, v7, Lj9/i0;->q1:Z

    if-eq v8, v6, :cond_5

    iput-boolean v6, v7, Lj9/i0;->q1:Z

    invoke-virtual {v5}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lj9/s;

    invoke-direct {v7, v5, v1}, Lj9/s;-><init>(Lj9/h0;I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    iget v5, p0, Ll6/b;->b:I

    invoke-virtual {p0, v5}, Ll6/b;->j(I)V

    iget v5, p0, Ll6/b;->b:I

    const-string/jumbo v6, "updateAiScene: aiScene "

    invoke-static {v5, v6}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "AiSceneManager"

    invoke-static {v7, v6, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v6, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->E3()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/camera/data/data/j;->o()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K()I

    move-result v7

    if-ne v7, v1, :cond_6

    invoke-static {v5}, Ll6/b;->f(I)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K()I

    move-result v1

    const/4 v7, 0x2

    if-ne v1, v7, :cond_7

    invoke-static {v5}, Ll6/b;->e(I)I

    move-result v1

    goto :goto_1

    :cond_7
    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_8

    invoke-static {v5}, Ll6/b;->c(I)I

    move-result v1

    goto :goto_1

    :cond_8
    invoke-static {v5}, Ll6/b;->d(I)I

    move-result v1

    :goto_1
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/xiaomi/camera/effect/EffectController;->Y(I)V

    invoke-virtual {v2}, LJe/c;->k2()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v1}, Lcom/xiaomi/camera/mivi/filter/MIVILutSaver;->saveLutByFilterId(I)V

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v1

    sget v2, Li3/b;->P:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/effect/EffectController;->Y(I)V

    :cond_a
    :goto_2
    invoke-interface {v4}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget v2, p0, Ll6/b;->b:I

    invoke-virtual {v1, v2}, Lj9/h0;->i(I)V

    iget-boolean p0, p0, Ll6/b;->c:Z

    if-eqz p0, :cond_c

    invoke-interface {v4}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object v1, p0, Lj9/h0;->a:Lj9/i0;

    iget v2, v1, Lj9/i0;->r1:I

    const/16 v3, 0x12c

    if-eq v2, v3, :cond_b

    iput v3, v1, Lj9/i0;->r1:I

    invoke-virtual {p0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LE4/j;

    invoke-direct {v2, p0, v0}, LE4/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_b
    :goto_3
    return-void

    :cond_c
    invoke-static {}, LK2/e;->B()Z

    move-result p0

    const/16 v1, 0x95

    const/16 v2, 0xd

    const/16 v4, 0xb

    if-eqz p0, :cond_d

    invoke-virtual {v3}, Lcom/android/camera/module/r;->getUserEventMgr()Lj6/i;

    move-result-object p0

    const/16 v3, 0x9c

    filled-new-array {v4, v0, v3, v2, v1}, [I

    move-result-object v0

    invoke-interface {p0, v0}, Lj6/i;->updatePreferenceTrampoline([I)V

    return-void

    :cond_d
    invoke-virtual {v3}, Lcom/android/camera/module/r;->getUserEventMgr()Lj6/i;

    move-result-object p0

    filled-new-array {v4, v0, v2, v1}, [I

    move-result-object v0

    invoke-interface {p0, v0}, Lj6/i;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method public updateBeauty()V
    .locals 5

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xaf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->e5(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v3, 0xa3

    if-eq v1, v3, :cond_1

    const/16 v3, 0xa8

    if-eq v1, v3, :cond_1

    const/16 v3, 0xe7

    if-eq v1, v3, :cond_1

    const/16 v3, 0xcd

    if-eq v1, v3, :cond_1

    const/16 v3, 0xe6

    if-eq v1, v3, :cond_1

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->x()Lx4/s;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    new-instance v1, Lx4/s;

    invoke-direct {v1}, Lx4/s;-><init>()V

    invoke-interface {v0, v1}, Lj6/f;->h(Lx4/s;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->x()Lx4/s;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0, v1, v3}, Lcom/android/camera/data/data/j;->d0(Lx4/s;Lj9/e;I)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/I;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/I;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lr2/I;->m(I)Z

    move-result v0

    const-string v1, "Camera2Module"

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget v0, v0, Ll6/b;->b:I

    const/16 v3, 0x19

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LF1/v1;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, LF1/v1;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LH4/N;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, LH4/N;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v3, Lv2/k0;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/k0;

    iget-boolean v0, v0, Lv2/k0;->n:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->x()Lx4/s;

    move-result-object v0

    const-string v3, "i:1"

    iput-object v3, v0, Lx4/s;->a:Ljava/lang/String;

    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->x()Lx4/s;

    move-result-object v0

    iget-object v0, v0, Lx4/s;->a:Ljava/lang/String;

    const-string v3, "Human scene mode detected, auto set beauty level from i:0 to "

    invoke-static {v3, v0}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateBeauty(): "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v3

    invoke-interface {v3}, Lj6/f;->x()Lx4/s;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p0

    invoke-interface {p0}, Lj6/f;->x()Lx4/s;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln6/d;->v(Lx4/s;)V

    :cond_5
    :goto_1
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

    return-void
.end method

.method public bridge synthetic updateColorSpace(Lwu/a$k;)V
    .locals 0

    return-void
.end method

.method public updateContrast()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportContrast"
        type = 0x2
    .end annotation

    sget-boolean v0, LJe/d;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "5"

    goto :goto_0

    :cond_0
    const-string v0, "-1"

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lj9/h0;->v(I)V

    return-void
.end method

.method public updateDepthExpand(Landroid/hardware/camera2/CaptureResult;Lj9/H1$a;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDepthExpand"
        type = 0x2
    .end annotation

    return-void
.end method

.method public updateESPDisplay()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/r;->updateESPDisplay()V

    invoke-static {}, Lcom/android/camera/data/data/m;->V0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->S()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Camera2Module;->onHandGestureSwitched(Z)V

    :cond_0
    return-void
.end method

.method public updateEnablePreviewThumbnail(Z)V
    .locals 2

    invoke-static {}, LJe/c;->d0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/module/PhotoBase;->setEnabledPreviewThumbnail(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a8()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isPreviewThumbnailWhenFlash()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/module/PhotoBase;->setEnabledPreviewThumbnail(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lv6/b;

    iget-boolean v0, v0, Lv6/b;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/Camera2Module;->mEnableShot2Gallery:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module;->mMultiCap:Ll6/t;

    iget p1, p1, Ll6/t;->b:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->enablePreviewAsThumbnail()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/module/PhotoBase;->setEnabledPreviewThumbnail(Z)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LEs/x;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LEs/x;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateFaceAgeAnalyze()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFaceAgeAnalyze"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/v1;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LF1/v1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH4/N;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LH4/N;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object v1, p0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v2, v1, Lj9/i0;->j1:Z

    if-eq v2, v0, :cond_0

    iput-boolean v0, v1, Lj9/i0;->j1:Z

    invoke-virtual {p0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lj9/E;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lj9/E;-><init>(Lj9/h0;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public updateFilter()V
    .locals 8

    invoke-static {}, Lcom/android/camera/data/data/j;->P()I

    move-result v0

    const-string/jumbo v1, "setEffectFilter: "

    invoke-static {v0, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Camera2Module"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v3, Lr2/K;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/K;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lg2/a;->k()Lx2/b;

    move-result-object v0

    sget-object v1, Lr2/t;->e:Ljava/util/List;

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v3, Lr2/t;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/Q;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v1, v5}, Lv2/Q;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v5

    iget v5, v5, Lv2/D0;->O:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v5, Li3/b;->N:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v5

    const-class v6, Lv2/S;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv2/S;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v5, v7}, Lv2/S;->getKey(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    iget v1, v1, Lv2/D0;->O:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v6, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v5, v6}, Lv2/S;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "setEffectFilter portrait star: "

    const-string v5, " | "

    invoke-static {v3, v0, v1, v5}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    move v0, v3

    goto :goto_1

    :cond_0
    sget-object v1, Lr2/t;->e:Ljava/util/List;

    invoke-static {}, Lcom/android/camera/data/data/j;->v0()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaomi/camera/cloudfilter/constant/CameraType;->CAMERA_FRONT_ID:Lcom/xiaomi/camera/cloudfilter/constant/CameraType;

    invoke-virtual {v1}, Lcom/xiaomi/camera/cloudfilter/constant/CameraType;->getValue()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->o0()I

    move-result v1

    :goto_0
    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v3

    check-cast v3, LA2/a$a;

    invoke-virtual {v3, v1}, LA2/a$a;->b(I)Lr2/f1;

    move-result-object v1

    const-class v3, Lr2/u;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/u;

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v1, v3, v0}, Lv2/T;->m(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->K0()Lj9/h0;

    move-result-object v3

    sget v4, Li3/b;->N:I

    const/4 v5, 0x1

    if-eq v4, v0, :cond_2

    move v2, v5

    :cond_2
    invoke-virtual {v3, v2}, Lj9/h0;->s(Z)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v3}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/effect/EffectController;->h0(Lru/k;)V

    sget-boolean v2, Lcom/android/camera/module/Camera2Module;->DEBUG_LUT:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v1

    sget-object v2, Lo3/d;->d:Lo3/d;

    const/16 v2, 0xed

    invoke-static {v5, v2}, Li3/b;->c(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/effect/EffectController;->a0(I)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/camera/effect/EffectController;->b0(II)V

    :goto_2
    iget-object v1, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    iget v2, v1, Ll6/b;->b:I

    invoke-virtual {v1, v2}, Ll6/b;->j(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p0

    invoke-interface {p0, v0}, Lj6/f;->c(I)V

    return-void
.end method

.method public updateFlashPreference()V
    .locals 6

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/w;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/w;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lr2/w;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, LEw/k;->j(ILjava/lang/String;)I

    move-result v3

    invoke-static {v2, v1}, LEw/k;->j(ILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/Camera2Module;->mAiSceneMgr:Ll6/b;

    invoke-virtual {v4}, Ll6/b;->i()V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->setFlashMode(Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/android/camera/module/Camera2Module;->handleHaloFlash(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2, v0}, LEw/k;->j(ILjava/lang/String;)I

    move-result v3

    const/16 v4, 0x67

    if-eq v3, v4, :cond_2

    invoke-static {v2, v0}, LEw/k;->j(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/r;->mFlashAsdManager:Lj6/g;

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->d0()Z

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    check-cast v2, Lm6/a;

    if-eqz v3, :cond_5

    iget v3, v2, Lm6/a;->a:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    goto :goto_0

    :cond_3
    const/16 v5, 0x9

    if-eq v3, v5, :cond_4

    const/16 v5, 0xa

    if-ne v3, v5, :cond_6

    :cond_4
    new-instance v3, LF1/X1;

    const/16 v5, 0xa

    invoke-direct {v3, v2, v5}, LF1/X1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    invoke-virtual {v2}, Lj9/a;->o0()V

    :cond_7
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "105"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/camera/module/r;->mFlashAsdManager:Lj6/g;

    check-cast v1, Lm6/a;

    iget v2, v1, Lm6/a;->a:I

    iput v2, v1, Lm6/a;->b:I

    :cond_9
    iput-object v0, p0, Lcom/android/camera/module/Camera2Module;->mLastFlashMode:Ljava/lang/String;

    return-void
.end method

.method public updateHighQualityPreferred()V
    .locals 3

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/data/data/w;->U()Z

    move-result v0

    invoke-virtual {p0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LV9/P0;

    invoke-direct {v2, p0, v0}, LV9/P0;-><init>(Lj9/h0;Z)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateLiteGalleryStatus()V
    .locals 3

    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Camera2Module"

    const-string/jumbo v2, "updateLiteGalleryStatus: status = 0"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object v0, p0, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/x;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, LEs/x;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateLocation()Landroid/location/Location;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isTestImageCaptureWithoutLocation()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object p0

    iget-object p0, p0, Lh6/b;->a:Lh6/a;

    invoke-interface {p0}, Lh6/a;->c()Landroid/location/Location;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public updateMfnr(Z)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMfnr"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isUseSwMfnr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move v2, v1

    goto/16 :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v0, 0xaf

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->R4()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v0, Lr2/c0;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/c0;

    invoke-virtual {p1}, Lr2/c0;->J()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_1

    :cond_3
    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v0, 0xba

    if-ne p1, v0, :cond_4

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    iget-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mMFNRReplaceSRWhenMotion:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    iget p1, p1, LF1/E3;->b:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->d0()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;->enableFrontMFNR()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->getActualCameraId()I

    move-result p1

    invoke-static {p1}, Lu6/f;->f0(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->c()Lj9/e;

    move-result-object p1

    invoke-static {p1}, Lj9/f;->C1(Lj9/e;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Y7()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object p1

    invoke-interface {p1}, Lf9/a;->a1()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->d0()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->getActualCameraId()I

    move-result p1

    invoke-static {p1}, Lu6/f;->h0(I)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->m()Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lj9/a;->Q()Z

    move-result p1

    if-nez p1, :cond_a

    const-string/jumbo p1, "setMfnr to "

    invoke-static {p1, v2}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Camera2Module"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/camera/data/data/w;->U()Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->w0()I

    move-result p1

    goto :goto_2

    :cond_9
    const/4 p1, -0x1

    :goto_2
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Lj9/h0;->O(IZ)V

    :cond_a
    return-void
.end method

.method public updateOnTripMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mFlashAsdManager:Lj6/g;

    check-cast v0, Lm6/a;

    iget-object v0, v0, Lm6/a;->c:[Lha/l$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mFlashAsdManager:Lj6/g;

    check-cast p0, Lm6/a;

    iget-object p0, p0, Lm6/a;->c:[Lha/l$a;

    iget-object v1, v0, Lj9/h0;->a:Lj9/i0;

    iput-object p0, v1, Lj9/i0;->o2:[Lha/l$a;

    invoke-virtual {v0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lj9/t;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lj9/t;-><init>(Lj9/h0;I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public updatePortraitBokehRole()V
    .locals 5

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->O()Z

    move-result v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-string v2, "pref_ultra_wide_bokeh_enabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v4, Lv2/B0;

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/B0;

    invoke-virtual {v1}, Lv2/B0;->t()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    iget v1, v1, Lv2/D0;->z:I

    if-lez v1, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    if-nez v3, :cond_4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    iget-object v1, v1, Lu6/f;->a:Lu6/b;

    invoke-interface {v1}, Lu6/a;->l()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    iget-object v1, v1, Lu6/f;->a:Lu6/b;

    invoke-interface {v1}, Lu6/a;->i()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->m()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    const/16 v1, 0x3f

    goto :goto_1

    :cond_6
    const/16 v1, 0x3d

    :goto_1
    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/camera/data/data/j;->v0()Z

    move-result v2

    invoke-static {v0, v2}, Lj9/q0;->d(ZZ)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object v1

    invoke-interface {v1}, Lf9/a;->a1()F

    move-result v1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/i0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/i0;

    invoke-virtual {v2, v1, v0}, Lv2/i0;->w(FZ)F

    move-result v1

    invoke-static {v1, v0}, Lj9/q0;->c(FZ)I

    move-result v2

    invoke-static {v1, v0}, Lj9/q0;->b(FZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iput v0, v1, Lj9/i0;->v2:I

    move v1, v2

    :cond_7
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, v1}, Lj6/j;->C(I)V

    return-void
.end method

.method public updatePortraitRepairEnable()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPortraitRepair"
        type = 0x2
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/data/data/j;->W0()Z

    move-result v0

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    iput-boolean v0, p0, Lj9/i0;->I0:Z

    return-void
.end method

.method public updatePreviewSurface()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/module/r;->updatePreviewSurface()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "Camera2Module"

    const-string/jumbo v0, "updatePreviewSurface failed because activity is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/module/r;->updateCameraScreenNailSize(II)V

    :cond_1
    const-string v2, "Camera2Module"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updatePreviewSurface: surfaceTexture = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/camera/module/X;->getSurfaceTexture()LEu/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/camera/module/X;->getSurfaceTexture()LEu/a;

    move-result-object v1

    invoke-virtual {v1}, LEu/a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lcom/android/camera/module/X;->v()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lj6/f;->J(J)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->A0()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-interface {v0}, Lcom/android/camera/module/X;->getSurfaceTexture()LEu/a;

    move-result-object v0

    invoke-virtual {v0}, LEu/a;->a()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj9/a;->v1(Landroid/view/Surface;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateQuickshotISORight4HWMFNR(ZZZ)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportQuickshotIsoThresholds"
        type = 0x2
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4HWMFNR:Z

    iput-boolean p2, p0, Lcom/android/camera/module/Camera2Module;->mIsISORight4MFNRReplaceSR:Z

    iput-boolean p3, p0, Lcom/android/camera/module/Camera2Module;->mShouldDoMFNR:Z

    return-void
.end method

.method public updateRawCapture()V
    .locals 0

    return-void
.end method

.method public updateSATZooming(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/Camera2Module;->updateSATZooming(IZ)V

    return-void
.end method

.method public updateSATZooming(IZ)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lf9/a;->v(I)B

    move-result p1

    invoke-interface {v0, p1, p2}, Lj6/j;->t0(BZ)V

    const/16 p1, 0x5d

    .line 3
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public updateSaturation()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140eb1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lj9/h0;->T(I)V

    return-void
.end method

.method public updateSharpness()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->o0(Lj9/e;)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lj9/h0;->V(I)V

    return-void
.end method

.method public updateSmartCompositionCropState(I)V
    .locals 2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-class v1, Lu2/D;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/D;

    iget-boolean v0, v0, Lu2/D;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, p1}, Lj6/j;->updateSmartCompositionCropState(I)V

    const/16 p1, 0x9d

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public updateSoftLightRing()V
    .locals 2

    invoke-static {}, Lf2/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    sget-object v1, Lf2/a;->f:Lf2/a;

    iget-boolean v1, v1, Lf2/a;->a:Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/camera/effect/EffectController;->i0(ZLru/k;)V

    :cond_0
    return-void
.end method

.method public updateSuperResolution()V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSuperResolution"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->checkSuperResolutionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v0

    const-string v1, "Camera2Module"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v3, Lr2/c0;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c0;

    invoke-virtual {v0}, Lr2/c0;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v3, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->R4()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "UltraPixel: digital zoom, disable SR"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Q4()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "UltraPixel: optical zoom, disable SR"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->getZoomManager()Lf9/a;

    move-result-object v0

    invoke-interface {v0}, Lf9/a;->a1()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isMfnrNeeded()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {p0}, LF1/E3;->d()V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v2}, Lj9/h0;->Z(Z)V

    return-void

    :cond_4
    sget-boolean v3, LJe/d;->i:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    invoke-virtual {v3}, Lj9/a;->H()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    goto :goto_0

    :cond_5
    move v4, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isFallbackToWide()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "currentZoomRatio: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  isUW: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {p0}, LF1/E3;->d()V

    return-void

    :cond_6
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v2}, Lj9/h0;->Z(Z)V

    return-void

    :cond_7
    invoke-static {}, Lcom/android/camera/data/data/E;->W()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v0}, LF1/E3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {p0}, LF1/E3;->d()V

    :cond_8
    :goto_1
    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    iget v0, v0, LF1/E3;->b:I

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LF1/E3;->e(I)V

    :cond_a
    return-void
.end method

.method public updateTrackEye()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportTrackEye"
        type = 0x2
    .end annotation

    invoke-static {}, Lcom/android/camera/data/data/j;->s1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setTrackEyeEnable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "CameraConfigManager"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v2, v1, Lj9/i0;->V2:Z

    if-eq v2, v0, :cond_1

    iput-boolean v0, v1, Lj9/i0;->V2:Z

    invoke-virtual {p0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lj9/q;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lj9/q;-><init>(Lj9/h0;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method
