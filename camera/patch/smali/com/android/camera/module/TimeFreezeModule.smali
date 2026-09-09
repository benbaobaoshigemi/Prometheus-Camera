.class public Lcom/android/camera/module/TimeFreezeModule;
.super Lcom/android/camera/module/CloneModule;
.source "SourceFile"


# static fields
.field public static final DURATION_VIDEO_RECORDING:I = 0x3a98

.field private static final MAX_VIDEO_SUBJECT_COUNT:I = 0x1

.field public static final STATE_FREEZE:I = 0x4

.field public static final STATE_FREEZE_END:I = 0x8

.field public static final STATE_PREPARE:I = 0x1

.field public static final STATE_PREVIEW:I = 0x10

.field public static final STATE_PREVIEW_PAUSING:I = 0x20

.field public static final STATE_RECORDING:I = 0xe

.field public static final STATE_START:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TimeFreezeModule"


# instance fields
.field private mInSaving:Z

.field private mOriginMaxRatio:F

.field private mOriginMinRatio:F

.field private final mSlideChangeListener:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$a;

.field private mStartDetecting:Z

.field private mState:I

.field private maxFreezeRatio:F

.field private minFreezeRatio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CloneModule;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    new-instance v0, Lcom/android/camera/module/TimeFreezeModule$a;

    invoke-direct {v0, p0}, Lcom/android/camera/module/TimeFreezeModule$a;-><init>(Lcom/android/camera/module/TimeFreezeModule;)V

    iput-object v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mSlideChangeListener:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$a;

    return-void
.end method

.method public static synthetic Af(Lcom/android/camera/module/TimeFreezeModule;LQ6/B;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/TimeFreezeModule;->lambda$onTimeFreezeClicked$3(LQ6/B;)V

    return-void
.end method

.method public static synthetic Kg(LQ6/n1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/TimeFreezeModule;->lambda$onReviewDoneClicked$4(LQ6/n1;)V

    return-void
.end method

.method public static bridge synthetic Nh(Lcom/android/camera/module/TimeFreezeModule;F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    return-void
.end method

.method public static bridge synthetic Rh(Lcom/android/camera/module/TimeFreezeModule;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    return-void
.end method

.method public static synthetic Vg(Lcom/android/camera/module/TimeFreezeModule;LQ6/B;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/TimeFreezeModule;->lambda$startFenShenCam$1(LQ6/B;)V

    return-void
.end method

.method public static synthetic Xg()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/TimeFreezeModule;->lambda$setFrameAvailable$2()V

    return-void
.end method

.method public static synthetic ah(Lcom/android/camera/module/TimeFreezeModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->lambda$onFragmentResume$5()V

    return-void
.end method

.method private changeState(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    invoke-static {}, LQ6/B;->b()LQ6/B;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    invoke-interface {p1, p0}, LQ6/B;->Sj(I)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic dh(Lcom/android/camera/module/TimeFreezeModule;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    return p0
.end method

.method private isInRecording()Z
    .locals 0

    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    and-int/lit8 p0, p0, -0xf

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onFragmentResume$5()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mLastMessage:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CloneModule;->onCloneMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    return-void
.end method

.method private static synthetic lambda$onReviewDoneClicked$4(LQ6/n1;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, LQ6/n1;->Eo([IZ)V

    return-void
.end method

.method private static synthetic lambda$onShutterButtonClick$0(LQ6/n1;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, LQ6/n1;->Cp([IZ)V

    return-void
.end method

.method private synthetic lambda$onTimeFreezeClicked$3(LQ6/B;)V
    .locals 1

    invoke-interface {p1}, LQ6/B;->getStatus()LC4/P;

    move-result-object p1

    sget-object v0, LC4/P;->a:LC4/P;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->switchTimeFreeze()V

    :cond_0
    return-void
.end method

.method private static lambda$setFrameAvailable$2()V
    .locals 1

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    iget-boolean v0, v0, Lt2/j;->k:Z

    invoke-static {v0}, Lcom/xiaomi/fenshen/FenShenCam;->setFilmFormat(Z)V

    return-void
.end method

.method private synthetic lambda$startFenShenCam$1(LQ6/B;)V
    .locals 1

    invoke-interface {p1}, LQ6/B;->getStatus()LC4/P;

    move-result-object p1

    sget-object v0, LC4/P;->e:LC4/P;

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->cancelVideo()V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->start()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mStartDetecting:Z

    :cond_0
    return-void
.end method

.method public static bridge synthetic li(Lcom/android/camera/module/TimeFreezeModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    return-void
.end method

.method private pausePlayEffect()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->pausePlayEffect()V

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    invoke-static {}, LQ6/B;->b()LQ6/B;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, LQ6/B;->Pn()V

    :cond_0
    return-void
.end method

.method public static synthetic qg(LQ6/n1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/TimeFreezeModule;->lambda$onShutterButtonClick$0(LQ6/n1;)V

    return-void
.end method

.method public static bridge synthetic qh(Lcom/android/camera/module/TimeFreezeModule;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    return p0
.end method

.method private resetEdit()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->pausePlayEffect()V

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->editMultiCopy()V

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    iget v1, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    iput v1, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    invoke-static {v0, v1}, Lcom/xiaomi/fenshen/FenShenCam;->onMoveDoubleSeekBar(FF)V

    invoke-static {}, LQ6/B;->b()LQ6/B;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    invoke-interface {v0, v1, p0}, LQ6/B;->L5(FF)V

    const/high16 p0, -0x40800000    # -1.0f

    invoke-interface {v0, p0}, LQ6/B;->wn(F)V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->saveDraft()V

    :cond_0
    return-void
.end method

.method private resumePlayEffect()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->resumePlayEffect()V

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    invoke-static {}, LQ6/B;->b()LQ6/B;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, LQ6/B;->Pg()V

    :cond_0
    return-void
.end method

.method private startFenShenCam()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CloneModule;->mDetectedPerson:Z

    invoke-static {}, LQ6/B;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LJ9/b;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, LJ9/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private switchTimeFreeze()V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->stopTimeFreeze()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->startTimeFreeze()V

    :cond_1
    return-void
.end method

.method public static bridge synthetic uh(Lcom/android/camera/module/TimeFreezeModule;F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    return-void
.end method

.method private updateEditPos()V
    .locals 4

    sget v0, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeStartPos:I

    if-lez v0, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    sget v2, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeTotalFrames:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    sget v0, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeStopPos:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sget v1, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeTotalFrames:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    :cond_0
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    invoke-static {}, LQ6/B;->b()LQ6/B;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    iget v3, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    invoke-interface {v0, v2, v3}, LQ6/B;->L5(FF)V

    invoke-interface {v0, v1}, LQ6/B;->wn(F)V

    iget-object p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mSlideChangeListener:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$a;

    invoke-interface {v0, p0}, LQ6/B;->O8(Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$a;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic blockPreviewForPrepare()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic canDragOutSuspendButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canEnterDragVideo()Z
    .locals 0

    invoke-interface {p0}, LQ6/q;->isSupportDragVideo()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic canMoveWhenProcessing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public cancelPhotoOrVideo()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->cancelVideo()V

    iget-object p0, p0, Lcom/android/camera/module/CloneModule;->mCaptureState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public bridge synthetic checkDragBurstEnable(FFZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic checkSnapClickValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public dispatchConfigChange(I)Z
    .locals 0

    const/16 p0, 0xfb

    if-ne p1, p0, :cond_0

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p0

    iget-boolean p0, p0, Lt2/j;->k:Z

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p1

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, p1, Lt2/j;->k:Z

    invoke-static {}, LQ6/B;->b()LQ6/B;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, LQ6/B;->Ii()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getCaptureStartTime()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getColorSpaceDescriptionInner()Lwu/a$k;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getTexSrgbDpyP3ColorSpaceDescription()Lwu/a$k;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDismissPureBlurDelayTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDurationVideoRecording()I
    .locals 0

    const/16 p0, 0x3a98

    return p0
.end method

.method public getMaxVideoSubjectCount()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getModuleDeviceParam()Ly3/v;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getProcessorType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getSnapCondition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic handledSuperNightResult(Z)V
    .locals 0

    return-void
.end method

.method public initCloneMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/CloneModule;->mPendingStart:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic isDolbyVisionPreview()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isDownCapturing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isGamutMappingSupported(Lwu/a;Lwu/a;)Z
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

.method public bridge synthetic isNeedAuxDisplay()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isNeedCopyPreviewFromExternal()Z
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

.method public bridge synthetic isSupportDragVideo()Z
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

.method public isVideoMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onActivityResult(Lcom/android/camera/module/X;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAdjustClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    const-string v2, "onAdjustClicked"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->editMultiCopy()V

    const/4 p0, 0x6

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->generateThumbnails(I)V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->saveDraft()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAeConvergedForFlash()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAllFrameCompleted()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAllHalFrameReceived()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onButtonStatusFocused(Lqh/a;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCameraPickerClicked(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onCaptureCompleted(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCaptureProgress(Lj9/E1;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCaptureShutter(Lj9/E1;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFastShutterCallbackSupported"
        type = 0x0
    .end annotation

    return-void
.end method

.method public onCloneMessage(Lcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/xiaomi/fenshen/FenShenCam$Message;LQ6/B;I)Z
    .locals 6

    invoke-interface {p3}, LQ6/B;->getStatus()LC4/P;

    move-result-object p1

    sget-object v0, LC4/P;->e:LC4/P;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->EDIT_POS:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->updateEditPos()V

    return v1

    :cond_1
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PLAY_ONE_TIME:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_2

    sget-boolean p1, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    const/high16 p0, -0x40800000    # -1.0f

    invoke-interface {p3, p0}, LQ6/B;->wn(F)V

    return v1

    :cond_2
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PLAY_CURRENT_POS:Lcom/xiaomi/fenshen/FenShenCam$Message;

    const/16 v0, 0x10

    const-string v2, "TimeFreezeModule"

    if-ne p2, p1, :cond_3

    sget-boolean p1, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    if-eqz p1, :cond_5

    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    if-ne p0, v0, :cond_5

    sget p0, Lcom/xiaomi/fenshen/FenShenCam;->mCurrentPlayPos:F

    invoke-interface {p3, p0}, LQ6/B;->wn(F)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "currentPos: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_TOO_LARGE_OR_FAILED:Lcom/xiaomi/fenshen/FenShenCam$Message;

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne p2, p1, :cond_6

    const-string/jumbo p1, "too much movement, stop capture"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f1404b3

    invoke-interface {p3, p1, v1}, LQ6/B;->c1(IZ)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v4}, Lcom/android/camera/module/CloneModule;->onShutterButtonClick(IZ)V

    return v1

    :cond_4
    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    if-ne p0, v3, :cond_5

    invoke-interface {p3}, LQ6/B;->e6()V

    :cond_5
    :goto_0
    return v1

    :cond_6
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-eq p2, p1, :cond_9

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_7

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->START:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-eq p2, p1, :cond_8

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_a

    :cond_8
    invoke-interface {p3, v4}, LQ6/B;->o8(Z)V

    invoke-interface {p3}, LQ6/B;->D4()V

    iput-boolean v4, p0, Lcom/android/camera/module/CloneModule;->mDetectedPerson:Z

    return v1

    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-interface {p3, v1}, LQ6/B;->o8(Z)V

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateCaptureMessage "

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_b

    goto :goto_2

    :cond_b
    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_c

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_OK:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_c

    const p4, 0x7f141347

    :cond_c
    if-ne p0, v3, :cond_d

    const p4, 0x7f141346

    :cond_d
    const/16 p1, 0x8

    if-ne p0, p1, :cond_e

    invoke-interface {p3}, LQ6/B;->D4()V

    return v1

    :cond_e
    if-ne p0, v0, :cond_f

    :goto_2
    return v4

    :cond_f
    invoke-interface {p3, p4, v1}, LQ6/B;->c1(IZ)V

    return v4
.end method

.method public onCreate(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mStartDetecting:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    return-void
.end method

.method public bridge synthetic onDrawBlackFrameChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDrawFrame(Lia/g;[FLandroid/graphics/Rect;Lia/f;Landroid/util/Size;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onError()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    const-string v2, "onError"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LAs/d;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, LAs/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LAs/e;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, LAs/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onFlashReady(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onFocusReset()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onFocusSnapCanceled()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onFragmentResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onFragmentResume()V

    iget-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mStartDetecting:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CloneModule;->mPendingStart:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->startFenShenCam()V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mLastMessage:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeFreeze onFragmentResume, last message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/CloneModule;->mLastMessage:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TimeFreezeModule"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    new-instance v1, LAs/h;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, LAs/h;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lru/k;->s(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onGiveUpEditClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    const-string v2, "onGiveUpEditClicked"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->resetEdit()V

    :cond_0
    return-void
.end method

.method public onHostStopAndNotifyActionStop(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CloneModule;->stopVideoRecording(Z)V

    :cond_0
    return-void
.end method

.method public onInactive()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->switchTimeFreeze()V

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onInactive()V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->cancelVideo()V

    return-void
.end method

.method public bridge synthetic onLiveShotVideoTakenFinished(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onMtkNotifyNextCaptureReady()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPictureTakenFinished(ZJI)V
    .locals 0

    return-void
.end method

.method public onPlayClicked()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    const-string v2, "onPlayClicked"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->resumePlayEffect()V

    :cond_0
    return-void
.end method

.method public onResetEditClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    const-string v2, "onResetEditClicked"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->resetEdit()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onRetryCapture(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onReviewDoneClicked()V
    .locals 3

    const/4 p0, 0x0

    sput-object p0, LC4/c;->a:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-static {}, LQ6/B;->b()LQ6/B;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, LQ6/B;->I()V

    :cond_0
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/l0;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, LF1/l0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/C;->b()LQ6/C;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, LQ6/C;->s3(Lcom/android/camera/fragment/film/FilmItem;Z)V

    :cond_1
    return-void
.end method

.method public onSaveEditClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    const-string v2, "onConfirmClicked"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->saveEdit()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSceneRecognizeButtonClick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onShutterButtonCancel(Z)V
    .locals 0

    return-void
.end method

.method public onShutterButtonClick(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 6

    iget-object p1, p0, Lcom/android/camera/module/CloneModule;->mCaptureState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string v0, "TimeFreezeModule"

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const-string p0, "ignore onShutterButtonClick"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/CloneModule;->mCaptureState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    iget-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInSaving:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LQ6/V0;->b()LQ6/V0;

    move-result-object p1

    iget-object v5, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v5}, Lj6/f;->b()Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, LQ6/B;->b()LQ6/B;

    move-result-object p1

    if-eqz p1, :cond_8

    iget v5, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    if-eq v5, v4, :cond_7

    if-eq v5, v2, :cond_6

    const/4 v2, 0x4

    if-eq v5, v2, :cond_5

    const/16 v2, 0x8

    if-eq v5, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1, v5}, LQ6/B;->Sj(I)V

    iget p1, p0, Lcom/android/camera/module/CloneModule;->mFrameCount:I

    const/16 v2, 0xf

    if-ge p1, v2, :cond_4

    const-string p0, "ignore onShutterButtonClick cause frameCount < 15"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CloneModule;->stopVideoRecording(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->stopCaptureToPreviewResult()V

    invoke-direct {p0, v3}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/TimeFreezeModule;->onTimeFreezeClicked()V

    return-void

    :cond_6
    invoke-interface {p1, v5}, LQ6/B;->Sj(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/TimeFreezeModule;->onTimeFreezeClicked()V

    return-void

    :cond_7
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LF1/r1;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LF1/r1;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->delayTriggerShooting()V

    :cond_8
    :goto_0
    return-void
.end method

.method public bridge synthetic onShutterButtonFocus(ZI)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onShutterButtonLongClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onShutterButtonLongClickCancel(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onShutterDragging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(IIZ)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSprdNotifyNextCaptureReady()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSurfaceViewPause()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSurfaceViewResume()V
    .locals 0

    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;Z)V
    .locals 0

    invoke-interface {p0, p1}, LQ6/q;->onThumbnailClicked(Landroid/view/View;)V

    return-void
.end method

.method public onTimeFreezeClicked()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    const-string v2, "onTimeFreezeClicked"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/B;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/d0;

    invoke-direct {v1, p0}, Lcom/android/camera/module/d0;-><init>(Lcom/android/camera/module/TimeFreezeModule;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTouchDown(FF)Z
    .locals 9

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onTouchDown  ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->CLICK_DOWN:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v3 .. v8}, Lcom/xiaomi/fenshen/FenShenCam;->sendTouchEvent(Lcom/xiaomi/fenshen/FenShenCam$TEventType;FFFFF)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/16 p2, 0x20

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->resumePlayEffect()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    :cond_2
    :goto_0
    return v2
.end method

.method public bridge synthetic onTouchDownEvent()V
    .locals 0

    return-void
.end method

.method public onVideoSaveFinish()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInSaving:Z

    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mVideoFilePath:Ljava/lang/String;

    const-string v1, "filePath"

    invoke-static {v0, v1}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LV9/g5;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LV9/g5;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Lvr/Q;->d(Lev/l;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onVideoSaveFinish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onWaitingFocusFinishedFailed()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic performKeyLongPress(IZLandroid/view/KeyEvent;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic prepareGL()V
    .locals 0

    return-void
.end method

.method public resumePreviewIfNeeded()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TimeFreezeModule"

    const-string/jumbo v3, "resumePreviewIfNeeded"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/camera/module/CloneModule;->mIsFinished:Z

    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->resumePreview()V

    invoke-virtual {p0}, Lcom/android/camera/module/TimeFreezeModule;->cancelPhotoOrVideo()V

    return-void
.end method

.method public saveVideo()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInSaving:Z

    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->saveVideo()V

    return-void
.end method

.method public bridge synthetic setCaptureTime(Lqh/f;)V
    .locals 0

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/module/CloneModule;->setFrameAvailable(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v0, LRt/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LRt/c;-><init>(I)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->startFenShenCam()V

    invoke-static {}, LQ6/B;->b()LQ6/B;

    :cond_0
    return-void
.end method

.method public setVideoCodec()V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/data/j;->X()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string/jumbo p0, "video/hevc"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "video/avc"

    :goto_0
    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->setVideoCodec(Ljava/lang/String;)V

    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/CloneModule;->mIsFinished:Z

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

.method public bridge synthetic skipFrameDrawnNum()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startCountDown()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/TimeFreezeModule;->getDurationVideoRecording()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1c2

    add-long/2addr v0, v2

    new-instance v2, Lcom/android/camera/module/TimeFreezeModule$b;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/camera/module/TimeFreezeModule$b;-><init>(Lcom/android/camera/module/TimeFreezeModule;J)V

    iput-object v2, p0, Lcom/android/camera/module/CloneModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public startPreviewSession()V
    .locals 8

    invoke-static {}, LQ6/B;->b()LQ6/B;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, LQ6/B;->getStatus()LC4/P;

    move-result-object v0

    sget-object v1, LC4/P;->e:LC4/P;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "TimeFreezeModule"

    const-string/jumbo v1, "startPreview: camera has been closed"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj9/a;->E0(Lj9/a$g;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj9/h0;->R(Landroid/util/Size;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CloneModule;->mAlgorithmPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Lj9/a;->u0(Landroid/util/Size;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj9/a;->P0(Landroid/util/Size;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lj9/a;->O0(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lj9/a;->N0(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1}, Lcom/android/camera/module/X;->v()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lj6/f;->J(J)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->getSurfaceTexture()LEu/a;

    move-result-object v0

    invoke-virtual {v0}, LEu/a;->a()Landroid/view/Surface;

    move-result-object v2

    iget v5, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lj9/a;->g1(Landroid/view/Surface;ILandroid/view/Surface;IZLj9/a$d;)V

    return-void
.end method

.method public startVideoRecording(Lcom/xiaomi/fenshen/FenShenCam$Mode;LQ6/B;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/CloneModule;->startVideoRecording(Lcom/xiaomi/fenshen/FenShenCam$Mode;LQ6/B;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    return-void
.end method

.method public stopCaptureToPreviewResult(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->playCameraSound(I)V

    return-void
.end method

.method public stopVideoRecording(ZLcom/xiaomi/fenshen/FenShenCam$Mode;LQ6/B;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/CloneModule;->stopVideoRecording(ZLcom/xiaomi/fenshen/FenShenCam$Mode;LQ6/B;)V

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object p2

    invoke-virtual {p2}, LBr/e;->l()V

    if-eqz p3, :cond_0

    invoke-interface {p3}, LQ6/B;->D4()V

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic supportEvOverlap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic updateColorSpace(Lwu/a$k;)V
    .locals 0

    return-void
.end method

.method public updatePictureAndPreviewSize()V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Lj6/j;->J(Landroid/util/Size;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updatePictureAndPreviewSize previewSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TimeFreezeModule"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/util/Size;

    const/16 v2, 0x500

    const/16 v4, 0x3c0

    invoke-direct {v0, v2, v4}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/CloneModule;->mAlgorithmPreviewSize:Landroid/util/Size;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lj6/j;->e(Landroid/util/Size;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget v2, v0, Lj9/e;->b:I

    const/16 v4, 0x23

    invoke-virtual {v0, v4, v2}, Lj9/e;->i0(II)Ljava/util/List;

    move-result-object v5

    iget v8, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->o0()I

    move-result v9

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v10

    const/4 v6, 0x0

    const v7, 0x12c000

    invoke-static/range {v5 .. v10}, LF1/H3;->i(Ljava/util/List;IIIILj9/e;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    sget-object v4, LF1/H3;->a:Ljava/util/ArrayList;

    invoke-static {v2, v4}, LF1/H3;->d(ILjava/util/List;)Landroid/util/Size;

    move-result-object v2

    invoke-interface {v0, v2}, Lj6/j;->e(Landroid/util/Size;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updatePictureAndPreviewSize sizeLimit 1228800, mPictureSize "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAlgorithmPreviewSize "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/CloneModule;->mAlgorithmPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/r;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method public bridge synthetic updateSATZooming(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic updateSATZooming(IZ)V
    .locals 0

    .line 2
    return-void
.end method

.method public bridge synthetic updateSmartCompositionCropState(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic updateSnapCondition(I)V
    .locals 0

    return-void
.end method
