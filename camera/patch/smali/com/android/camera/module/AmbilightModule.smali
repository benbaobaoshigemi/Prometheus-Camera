.class public Lcom/android/camera/module/AmbilightModule;
.super Lcom/android/camera/module/r;
.source "SourceFile"

# interfaces
.implements Lj9/a$g;
.implements LQ6/q;
.implements LQ6/e;
.implements Lru/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/AmbilightModule$h;,
        Lcom/android/camera/module/AmbilightModule$d;,
        Lcom/android/camera/module/AmbilightModule$e;,
        Lcom/android/camera/module/AmbilightModule$f;,
        Lcom/android/camera/module/AmbilightModule$g;
    }
.end annotation


# static fields
.field public static final ALGO_XML_FILENAME:Ljava/lang/String; = "ambilight_parameter.xml"

.field public static final ALGO_XML_FOLDER_NAME:Ljava/lang/String; = "ambilight"

.field private static final COUNTDOWN_INTERVAL:I = 0x1

.field private static final DEBUG:Z = false

.field public static final LONG_EXPOSURE_VERSION:I = 0x1

.field private static final MAX_DROP_COUNT:I = 0x5

.field private static final MAX_IMAGES_COUNT:I = 0x6

.field private static final MIN_RECORD_TIME:I = 0x1b7740

.field private static final MIN_SHOOTING_TIME:I = 0x258

.field private static final SKIP_FRAME:I = 0x4

.field public static final STAR_TRACK_VIDEO_SPEED:F = 0.0027777778f

.field public static final STAT_TRACK_VIDEO_FPS:I = 0x3c

.field public static final TAG:Ljava/lang/String; = "AmbilightModule"


# instance fields
.field private frameNo:I

.field private final mAcquiredCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

.field private mAmbilightEngineInitedData:Z

.field private mAmbilightHeight:I

.field private mAmbilightRoi:Lcom/android/camera/ambilight/AmbilightRoi;

.field private mAmbilightWidth:I

.field private mAsdScenes:[Lha/l$a;

.field private mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$e;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mBoostHandle:J

.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mCaptureStartTime:J

.field private mCaptureStopTime:J

.field private mCropRegion:Landroid/graphics/Rect;

.field private mDropCount:I

.field private mDropFrameCount:I

.field private mExposureTime:J

.field private mFocalLength35mmFromPreviewMeta:F

.field private mFocusDistance:F

.field private mImage:LLu/b;

.field private mImagedata:[B

.field private mInDebugMode:Z

.field private mIsInRendering:Z

.field private volatile mIsPrepareSaveTask:Z

.field private mIsPrepared:Z

.field private mIsRegisterSensorListener:Z

.field private volatile mIsShooting:Z

.field private mIso:I

.field private mJpegRotation:I

.field private mLiveMediaRecorder:Lum/a;

.field private final mMediaEncoderListener:Lum/a$a;

.field protected volatile mMediaRecorderRecording:Z

.field private mPendingSaveTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/module/AmbilightModule$h;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoBuffer:Ljava/nio/ByteBuffer;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mReceivedImage:Z

.field private mReceivedPicturesCount:I

.field private mRecordingStartTime:J

.field private mRecordingTime:Ljava/lang/String;

.field private final mReleaseedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mRenderLock:Ljava/lang/Object;

.field private mRequestStartTime:J

.field private mSaveOutputImageTask:Lcom/android/camera/module/AmbilightModule$g;

.field private mSceneMode:I

.field private mSensorStateListener:LF1/i4$q;

.field private mShootingStartTime:J

.field private mSkipSaveVideo:Z

.field private mTransform:[F

.field private mTranslateX:I

.field private mTranslateY:I

.field private mTripodMode:I

.field private mUBuffer:Ljava/nio/ByteBuffer;

.field private mVBuffer:Ljava/nio/ByteBuffer;

.field private mVideoSize:Landroid/util/Size;

.field private mYBuffer:Ljava/nio/ByteBuffer;

.field private mYuvAttribute:Lj3/a;

.field private mYuvAttributeForVideo:Lj3/a;

.field private mZoom:F

.field private prevOutputPTSUs:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/r;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mInDebugMode:Z

    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepareSaveTask:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mImage:LLu/b;

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mDropCount:I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mAcquiredCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mReleaseedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mRenderLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsRegisterSensorListener:Z

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mYBuffer:Ljava/nio/ByteBuffer;

    new-instance v2, Lcom/android/camera/ambilight/AmbilightRoi;

    invoke-direct {v2}, Lcom/android/camera/ambilight/AmbilightRoi;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightRoi:Lcom/android/camera/ambilight/AmbilightRoi;

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->mExposureTime:J

    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mImagedata:[B

    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mRecordingTime:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->prevOutputPTSUs:J

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mTripodMode:I

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mDropFrameCount:I

    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mSkipSaveVideo:Z

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->frameNo:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->mBoostHandle:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/module/AmbilightModule$a;

    invoke-direct {v0, p0}, Lcom/android/camera/module/AmbilightModule$a;-><init>(Lcom/android/camera/module/AmbilightModule;)V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mMediaEncoderListener:Lum/a$a;

    new-instance v0, Lcom/android/camera/module/AmbilightModule$c;

    invoke-direct {v0, p0}, Lcom/android/camera/module/AmbilightModule$c;-><init>(Lcom/android/camera/module/AmbilightModule;)V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mSensorStateListener:LF1/i4$q;

    return-void
.end method

.method public static bridge synthetic Af(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightWidth:I

    return p0
.end method

.method public static bridge synthetic Bi(Lcom/android/camera/module/AmbilightModule;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mReleaseedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static bridge synthetic De(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->frameNo:I

    return p0
.end method

.method public static bridge synthetic Di(Lcom/android/camera/module/AmbilightModule;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mRenderLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic Dj(Lcom/android/camera/module/AmbilightModule;I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/AmbilightModule;->mDropFrameCount:I

    return-void
.end method

.method public static bridge synthetic Ei(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    return p0
.end method

.method public static synthetic Fc(Ljava/lang/String;LQ6/l1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/AmbilightModule;->lambda$updateRecordingTime$8(Ljava/lang/String;LQ6/l1;)V

    return-void
.end method

.method public static bridge synthetic Kg(Lcom/android/camera/module/AmbilightModule;)Landroid/hardware/camera2/CaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public static bridge synthetic Kj(Lcom/android/camera/module/AmbilightModule;[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mImagedata:[B

    return-void
.end method

.method public static synthetic Mc(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->lambda$notifyFirstFrameArrived$15()V

    return-void
.end method

.method public static bridge synthetic Nh(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mJpegRotation:I

    return p0
.end method

.method public static bridge synthetic Rh(Lcom/android/camera/module/AmbilightModule;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static bridge synthetic Te(Lcom/android/camera/module/AmbilightModule;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mAcquiredCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic Ua(LQ6/n1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->lambda$startAmbilightShooting$5(LQ6/n1;)V

    return-void
.end method

.method public static synthetic Vb(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->lambda$tryRemoveCountDownMessage$2(LQ6/l1;)V

    return-void
.end method

.method public static bridge synthetic Vg(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mDropCount:I

    return p0
.end method

.method public static synthetic Wb(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->lambda$startSaveTask$12()V

    return-void
.end method

.method public static bridge synthetic Wj(Lcom/android/camera/module/AmbilightModule;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepareSaveTask:Z

    return-void
.end method

.method public static bridge synthetic Xg(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mDropFrameCount:I

    return p0
.end method

.method public static bridge synthetic Xi(Lcom/android/camera/module/AmbilightModule;I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/AmbilightModule;->frameNo:I

    return-void
.end method

.method public static bridge synthetic Yi(Lcom/android/camera/module/AmbilightModule;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngineInitedData:Z

    return-void
.end method

.method public static bridge synthetic ah(Lcom/android/camera/module/AmbilightModule;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mFocalLength35mmFromPreviewMeta:F

    return p0
.end method

.method private ambilightEngineInit()V
    .locals 7

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/module/AmbilightModule;->startCpuBoost(I)V

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    iget v2, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    invoke-static {v2}, Lcom/android/camera/ambilight/AmbilightEngine;->getEngineModeByScene(I)I

    move-result v2

    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightWidth:I

    iget v4, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightHeight:I

    iget v5, p0, Lcom/android/camera/module/AmbilightModule;->mTripodMode:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/camera/ambilight/AmbilightEngine;->init(IIII)V

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightWidth:I

    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightHeight:I

    mul-int/2addr v1, v3

    mul-int/2addr v1, v0

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    iget-object v4, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/ambilight/AmbilightEngine;->prepare(Ljava/nio/ByteBuffer;I)V

    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mZoom:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    iget-object v3, p0, Lcom/android/camera/module/AmbilightModule;->mCropRegion:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v3}, Lcom/android/camera/ambilight/AmbilightEngine;->setZoomRoi(IIII)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    invoke-virtual {v1}, Lcom/android/camera/ambilight/AmbilightEngine;->getPreviewWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewWidth:I

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    invoke-virtual {v1}, Lcom/android/camera/ambilight/AmbilightEngine;->getPreviewHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewHeight:I

    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "AmbilightModule"

    const-string/jumbo v4, "update preview size [%d, %d]"

    invoke-static {v3, v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-ne v1, v0, :cond_4

    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mJpegRotation:I

    if-eqz v0, :cond_3

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    invoke-virtual {v0, v2}, Lcom/android/camera/ambilight/AmbilightEngine;->setFlipMode(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ambilight/AmbilightEngine;->setFlipMode(I)V

    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/AmbilightModule;->updateBuffers(I)V

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mAcquiredCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mReleaseedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput v1, p0, Lcom/android/camera/module/AmbilightModule;->mReceivedPicturesCount:I

    return-void
.end method

.method public static synthetic ce(Lcom/android/camera/module/AmbilightModule;LQ6/l1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/AmbilightModule;->lambda$startAmbilightShooting$4(LQ6/l1;)V

    return-void
.end method

.method private clearBuffer()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mUBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mVBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYBuffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mUBuffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mVBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mImage:LLu/b;

    if-eqz v1, :cond_1

    iget-object v1, v1, LLu/b;->c:LLu/b$a;

    iput-object v0, v1, LLu/b$a;->a:Ljava/nio/ByteBuffer;

    iput-object v0, v1, LLu/b$a;->b:Ljava/nio/ByteBuffer;

    iput-object v0, v1, LLu/b$a;->c:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mImage:LLu/b;

    :cond_1
    return-void
.end method

.method public static synthetic dd(Ljava/lang/String;LQ6/g;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/AmbilightModule;->lambda$updateRecordingTime$9(Ljava/lang/String;LQ6/g;)V

    return-void
.end method

.method public static bridge synthetic dh(Lcom/android/camera/module/AmbilightModule;)[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mImagedata:[B

    return-object p0
.end method

.method private doLaterReleaseIfNeed()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->o3()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/camera/module/X;->Af(Lcom/android/camera/module/W;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic gc(ZLQ6/l1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/AmbilightModule;->lambda$updateRecordingTimeStyle$10(ZLQ6/l1;)V

    return-void
.end method

.method public static synthetic gd(Landroid/view/Window;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->lambda$keepScreenOn$7(Landroid/view/Window;)V

    return-void
.end method

.method public static synthetic ge(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->lambda$exitAutoHibernation$14(LQ6/l1;)V

    return-void
.end method

.method private getLightTrackExposureTime()J
    .locals 4

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->j0()J

    move-result-wide v0

    sget-boolean p0, LJe/d;->i:Z

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x1dcd6500

    return-wide v0

    :cond_1
    cmp-long p0, v2, v0

    if-eqz p0, :cond_2

    :goto_0
    return-wide v0

    :cond_2
    const-wide/32 v0, 0x13de4355

    return-wide v0
.end method

.method private getPictureInfo()Lqh/f;
    .locals 2

    new-instance v0, Lqh/f;

    invoke-direct {v0}, Lqh/f;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqh/f;->h(Z)V

    iget p0, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    invoke-virtual {v0, p0}, Lqh/f;->g(I)V

    invoke-virtual {v0}, Lqh/f;->a()V

    return-object v0
.end method

.method private getTipHint(I)I
    .locals 1

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f14024c

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz p0, :cond_1

    const p0, 0x7f141303

    return p0

    :cond_1
    const/4 p0, 0x3

    if-eq p1, p0, :cond_4

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3

    const/4 p0, 0x5

    if-eq p1, p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const p0, 0x7f14024e

    return p0

    :cond_3
    const p0, 0x7f140251

    return p0

    :cond_4
    const p0, 0x7f14024d

    return p0
.end method

.method private handleFocusStateChange(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportDepthFocus"
        type = 0x2
    .end annotation

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onAutoFocusMoving start"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, LQa/b;->b:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "AmbilightModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p1, Lcom/android/camera/module/loader/camera2/FocusTask;->a:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-interface {p0, p1}, Lu6/q;->M(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    return-void
.end method

.method public static bridge synthetic hf(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/ambilight/AmbilightEngine;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    return-object p0
.end method

.method public static synthetic ic(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->lambda$onShutterButtonClick$1(LQ6/l1;)V

    return-void
.end method

.method private isCannotGotoGallery()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->H()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

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

.method private isProcessingSaveTask()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mSaveOutputImageTask:Lcom/android/camera/module/AmbilightModule$g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p0

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isShootingTooShort()Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsInRendering:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mRenderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v2, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-eq v2, v1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/camera/module/AmbilightModule;->frameNo:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/AmbilightModule;->mShootingStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x258

    cmp-long p0, v2, v4

    if-gez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic ke(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopAmbilightShooting()V

    return-void
.end method

.method private static synthetic lambda$exitAutoHibernation$14(LQ6/l1;)V
    .locals 4

    const v0, 0x7f141303

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-interface {p0, v1, v2, v3, v0}, LQ6/l1;->np(JII)V

    return-void
.end method

.method private static synthetic lambda$keepScreenOn$7(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private synthetic lambda$notifyFirstFrameArrived$15()V
    .locals 1

    const/16 v0, 0x5f

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method private static synthetic lambda$onShutterButtonClick$1(LQ6/l1;)V
    .locals 1

    const-string/jumbo v0, "speech_shutter_desc"

    invoke-interface {p0, v0}, LQ6/l1;->Uo(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$performKeyClicked$0(LQ6/l1;)V
    .locals 0

    invoke-interface {p0}, LQ6/l1;->hideAlert()V

    return-void
.end method

.method private synthetic lambda$startAmbilightShooting$4(LQ6/l1;)V
    .locals 4

    invoke-interface {p1}, LQ6/l1;->setShow()V

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const v3, 0x7f141303

    invoke-interface {p1, v0, v1, v2, v3}, LQ6/l1;->np(JII)V

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->shouldHideTimeLabel()Z

    move-result p0

    const/4 v0, 0x1

    invoke-interface {p1, v0, p0}, LQ6/l1;->Yn(IZ)V

    return-void
.end method

.method private static synthetic lambda$startAmbilightShooting$5(LQ6/n1;)V
    .locals 0

    invoke-interface {p0}, LQ6/n1;->qj()V

    return-void
.end method

.method private synthetic lambda$startSaveTask$12()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AmbilightModule"

    const-string v2, "onSaveCompleted"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->onSaveFinish()V

    return-void
.end method

.method private static synthetic lambda$stopAmbilightShooting$3(LQ6/l1;)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, LQ6/l1;->Vf(I)V

    return-void
.end method

.method private static synthetic lambda$tryRemoveCountDownMessage$2(LQ6/l1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/l1;->Fi(Z)V

    return-void
.end method

.method private synthetic lambda$updateAutoHibernationFirstRecordingTime$13(LQ6/g;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mRecordingTime:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p0, v0}, LQ6/g;->Eh(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$updateRecordingTime$8(Ljava/lang/String;LQ6/l1;)V
    .locals 0

    invoke-interface {p1, p0}, LQ6/l1;->z(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$updateRecordingTime$9(Ljava/lang/String;LQ6/g;)V
    .locals 1

    const-string v0, ""

    invoke-interface {p1, p0, v0}, LQ6/g;->df(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$updateRecordingTimeStyle$10(ZLQ6/l1;)V
    .locals 0

    invoke-interface {p1, p0}, LQ6/l1;->updateRecordingTimeStyle(Z)V

    return-void
.end method

.method private static synthetic lambda$updateRecordingTimeStyle$11(Z)V
    .locals 3

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/K;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LF1/K;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$updateTips$6(LQ6/n1;ILQ6/l1;)V
    .locals 1

    if-eqz p1, :cond_2

    const-string/jumbo v0, "speech_shutter_desc"

    invoke-interface {p1, v0}, LQ6/n1;->La(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const p0, 0x7f14024d

    const p1, 0x7f14024c

    const p2, 0x7f14024e

    const v0, 0x7f140251

    filled-new-array {p2, v0, p0, p1}, [I

    move-result-object p0

    invoke-interface {p3, p0}, LQ6/l1;->F8([I)V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/module/AmbilightModule;->getTipHint(I)I

    move-result p0

    const-wide/16 p1, -0x1

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0, p0}, LQ6/l1;->np(JII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static bridge synthetic li(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mReceivedPicturesCount:I

    return p0
.end method

.method public static bridge synthetic lk(Lcom/android/camera/module/AmbilightModule;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static synthetic nd(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->lambda$stopAmbilightShooting$3(LQ6/l1;)V

    return-void
.end method

.method private needAutoHibernationScene()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static bridge synthetic nk(Lcom/android/camera/module/AmbilightModule;I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/AmbilightModule;->mReceivedPicturesCount:I

    return-void
.end method

.method public static synthetic oa(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->lambda$performKeyClicked$0(LQ6/l1;)V

    return-void
.end method

.method public static bridge synthetic of(Lcom/android/camera/module/AmbilightModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngineInitedData:Z

    return p0
.end method

.method private onAmbilightPreviewAvailable()V
    .locals 1

    invoke-static {}, LQ6/V0;->b()LQ6/V0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->shouldDisableStopButton()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, LQ6/V0;->onResume()V

    :cond_0
    return-void
.end method

.method private onSaveFinish()V
    .locals 7

    const-string v0, "onSaveFinish E"

    const-string v1, "AmbilightModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopCpuBoost()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/AmbilightModule;->updateRecordingTimeStyle(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->doLaterReleaseIfNeed()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Photo generation cost = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureStopTime:J

    sub-long/2addr v3, v5

    const-string p0, "ms"

    invoke-static {v3, v4, p0, v2}, LF1/v2;->d(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic pf(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightHeight:I

    return p0
.end method

.method public static bridge synthetic qg(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/module/AmbilightModule$e;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$e;

    return-object p0
.end method

.method public static bridge synthetic qh(Lcom/android/camera/module/AmbilightModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule;->mInDebugMode:Z

    return p0
.end method

.method public static bridge synthetic qk(Lcom/android/camera/module/AmbilightModule;)Lqh/f;
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->getPictureInfo()Lqh/f;

    move-result-object p0

    return-object p0
.end method

.method private registerSensorListener()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsRegisterSensorListener:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsRegisterSensorListener:Z

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mSensorStateListener:LF1/i4$q;

    invoke-virtual {v0, p0}, LF1/i4;->s(LF1/i4$q;)V

    :cond_0
    return-void
.end method

.method public static synthetic se(Lcom/android/camera/module/AmbilightModule;LQ6/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/AmbilightModule;->lambda$updateAutoHibernationFirstRecordingTime$13(LQ6/g;)V

    return-void
.end method

.method private shouldHideTimeLabel()Z
    .locals 1

    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->e2(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic sj(Lcom/android/camera/module/AmbilightModule;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method

.method private startAmbilightShooting()V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->mRequestStartTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->prevOutputPTSUs:J

    iget v2, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->startVideoRecording()V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/r;->lockScreenOrientation(Z)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LL9/l;

    const/16 v6, 0x8

    invoke-direct {v5, p0, v6}, LL9/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LEs/h;

    const/16 v6, 0xe

    invoke-direct {v5, v6}, LEs/h;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/camera/module/AmbilightModule;->updateSpeechShutter(Z)V

    iget-boolean v5, p0, Lcom/android/camera/module/AmbilightModule;->mInDebugMode:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x67

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->o0()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v6, Lj6/a;

    iget v6, v6, Lj6/a;->c:I

    const/16 v7, 0x5a

    invoke-static {v5, v6, v7}, LBw/i;->H(III)I

    move-result v5

    iput v5, p0, Lcom/android/camera/module/AmbilightModule;->mJpegRotation:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startAmbilightShooting mJpegRotation = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/camera/module/AmbilightModule;->mJpegRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AmbilightModule"

    invoke-static {v6, v5}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->ambilightEngineInit()V

    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    iput-boolean v4, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngineInitedData:Z

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->updateExposureParameters()V

    invoke-direct {p0, v4}, Lcom/android/camera/module/AmbilightModule;->updateAutoAeParameters(Z)Z

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    invoke-virtual {v5, v4}, Lj9/h0;->J(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "focus distance:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/camera/module/AmbilightModule;->mFocusDistance:F

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v5, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v8, 0x0

    if-eq v5, v7, :cond_4

    if-ne v5, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    iget v9, p0, Lcom/android/camera/module/AmbilightModule;->mFocusDistance:F

    invoke-virtual {v5, v9}, Lj9/h0;->I(F)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    invoke-virtual {v5, v8}, Lj9/h0;->I(F)V

    :goto_1
    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v9

    iget-object v9, v9, Lh6/b;->a:Lh6/a;

    invoke-interface {v9}, Lh6/a;->c()Landroid/location/Location;

    move-result-object v9

    iget-object v5, v5, Lj9/h0;->a:Lj9/i0;

    iput-object v9, v5, Lj9/i0;->a:Landroid/location/Location;

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    iget-object v5, v5, Lj9/h0;->a:Lj9/i0;

    iget-boolean v9, v5, Lj9/i0;->s1:Z

    if-eq v9, v2, :cond_5

    iput-boolean v2, v5, Lj9/i0;->s1:Z

    :cond_5
    iget v5, p0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->L0()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    invoke-virtual {v5, v2}, Lj9/h0;->j(Z)V

    :cond_6
    iput v8, p0, Lcom/android/camera/module/AmbilightModule;->mFocalLength35mmFromPreviewMeta:F

    invoke-static {}, LV6/d;->a()Ljava/util/Optional;

    move-result-object v5

    new-instance v8, LH8/k;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, LH8/k;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->V()Lj9/a;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->V()Lj9/a;

    move-result-object v5

    invoke-virtual {v5}, Lj9/a;->B()Landroid/hardware/camera2/CaptureResult;

    move-result-object v5

    invoke-static {v5}, Lj9/o0;->c(Landroid/hardware/camera2/CaptureResult;)F

    move-result v5

    iput v5, p0, Lcom/android/camera/module/AmbilightModule;->mFocalLength35mmFromPreviewMeta:F

    :cond_7
    iget v5, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-ne v5, v7, :cond_8

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    new-instance v5, Lcom/android/camera/module/AmbilightModule$b;

    invoke-direct {v5, p0}, Lcom/android/camera/module/AmbilightModule$b;-><init>(Lcom/android/camera/module/AmbilightModule;)V

    invoke-virtual {v3, v5, v8, v8}, Lj9/a;->r1(Lj9/a$j;Lk7/i;Lqh/a;)V

    invoke-static {}, Lcom/android/camera/module/AmbilightModule;->trackFluencyCaptureStart()V

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    invoke-virtual {v5, v2}, Lj9/h0;->N(Z)V

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->isZslPreferred()Z

    move-result v9

    invoke-virtual {v5, v9}, Lj9/h0;->G(Z)V

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v9, "setZoomRatioForCapture(): 1.0"

    const-string v10, "CameraConfigManager"

    invoke-static {v10, v9}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v5, Lj9/h0;->a:Lj9/i0;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v5, v9}, Lj9/i0;->L(F)Z

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    const/16 v9, 0xc

    invoke-virtual {v5, v9}, Lj9/h0;->X(I)V

    iget v5, p0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->c()Lj9/e;

    move-result-object v5

    invoke-static {v5}, Lj9/f;->e2(Lj9/e;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-eq v5, v3, :cond_a

    :cond_9
    move v3, v2

    goto :goto_2

    :cond_a
    move v3, v4

    :goto_2
    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    iget-object v5, v5, Lj9/h0;->a:Lj9/i0;

    iput-boolean v3, v5, Lj9/i0;->s2:Z

    new-instance v3, Lcom/android/camera/module/AmbilightModule$f;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v3, Lcom/android/camera/module/AmbilightModule$f;->a:Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->V()Lj9/a;

    move-result-object v5

    invoke-virtual {v5, v3, v8, v8}, Lj9/a;->r1(Lj9/a$j;Lk7/i;Lqh/a;)V

    invoke-static {}, Lcom/android/camera/module/AmbilightModule;->trackFluencyCaptureStart()V

    :goto_3
    invoke-static {}, LQ6/V0;->b()LQ6/V0;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->c()Lj9/e;

    move-result-object v5

    invoke-static {v5}, Lj9/f;->e2(Lj9/e;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-ne v5, v7, :cond_b

    iget-wide v7, p0, Lcom/android/camera/module/AmbilightModule;->mExposureTime:J

    cmp-long v0, v7, v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const-wide v1, 0x6fc23ac00L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    :cond_b
    iput-boolean v2, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepared:Z

    invoke-interface {v3, p0}, LQ6/V0;->pe(Lcom/android/camera/module/W;)V

    invoke-interface {v3}, LQ6/V0;->onStart()V

    const-string/jumbo v0, "startAmbilightShooting, record state start."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->keepScreenOn()V

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/camera/module/r;->trackGeneralInfo(ZLx4/s;ZILjava/lang/Boolean;)V

    invoke-static {}, LF1/i0;->a()LF1/i0;

    move-result-object p0

    invoke-virtual {p0}, LF1/i0;->c()V

    iget-object p0, v7, Lcom/android/camera/module/AmbilightModule;->mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$e;

    if-eqz p0, :cond_d

    const/4 v0, 0x2

    iget-object v1, v7, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    invoke-virtual {v7}, Lcom/android/camera/module/r;->keepAutoHibernation()V

    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AmbilightBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/android/camera/module/AmbilightModule$e;

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/camera/module/AmbilightModule$e;-><init>(Landroid/os/Looper;Lcom/android/camera/module/AmbilightModule;)V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$e;

    return-void
.end method

.method private startCpuBoost(I)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "enableAmbilightCPUBoost"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1, p1}, LRh/c;->b(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->mBoostHandle:J

    :cond_0
    return-void
.end method

.method private startPreviewSession()V
    .locals 8

    const-string v0, "AmbilightModule"

    const-string/jumbo v1, "startPreviewSession"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo p0, "startPreview: camera has been closed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    new-instance v1, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v1}, Lj9/h0;->K(Landroid/util/Range;)V

    :cond_2
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

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v1

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

    const/4 v1, 0x6

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

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lj9/a;->g1(Landroid/view/Surface;ILandroid/view/Surface;IZLj9/a$d;)V

    return-void
.end method

.method private startSaveTask([B)V
    .locals 11

    const-string v0, "AmbilightModule"

    const-string/jumbo v1, "startSaveTask stitchResult "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepScreenOnAwhile()V

    iget-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureStopTime:J

    iget-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureStartTime:J

    sub-long v6, v0, v2

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_ambilight"

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

    new-instance v4, LJ7/a;

    iget v5, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    iget-object v1, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v1, Lj6/a;

    iget-boolean v8, v1, Lj6/a;->e:Z

    iget v9, v1, Lj6/a;->g:I

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, LJ7/a;-><init>(IJZIZ)V

    invoke-virtual {v0, v4}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-wide/16 v6, 0x0

    :cond_0
    move-wide v3, v6

    new-instance v0, Lcom/android/camera/module/AmbilightModule$g;

    new-instance v5, LB4/f;

    const/4 v1, 0x5

    invoke-direct {v5, p0, v1}, LB4/f;-><init>(Ljava/lang/Object;I)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/AmbilightModule$g;-><init>(Lcom/android/camera/module/AmbilightModule;[BJLB4/f;)V

    iput-object v0, v1, Lcom/android/camera/module/AmbilightModule;->mSaveOutputImageTask:Lcom/android/camera/module/AmbilightModule$g;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private stopAmbilightShooting()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->lockScreenOrientation(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/module/AmbilightModule;->updateSpeechShutter(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureStopTime:J

    iget-boolean v2, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    const-string v3, "AmbilightModule"

    if-nez v2, :cond_1

    const-string/jumbo p0, "stopAmbilightShooting return, is not shooting"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v4, LH4/z;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, LH4/z;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string/jumbo v2, "stopAmbilightShooting"

    invoke-static {v3, v2}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/camera/module/AmbilightModule;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lum/a;

    if-eqz v2, :cond_4

    iget-wide v4, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureStopTime:J

    iget-wide v6, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureStartTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    iput-boolean v4, p0, Lcom/android/camera/module/AmbilightModule;->mSkipSaveVideo:Z

    iget-object v4, v2, Lum/a;->b:Lvm/d;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lvm/d;->d()V

    :cond_3
    iget-object v2, v2, Lum/a;->l:Lum/a$a;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lum/a$b;->b()V

    :cond_4
    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mMediaRecorderRecording:Z

    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    iget v2, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$e;

    if-eqz v2, :cond_5

    iput-boolean v1, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepareSaveTask:Z

    iget-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$e;

    iget-object v4, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    invoke-virtual {v2, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$e;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    :goto_1
    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    invoke-virtual {v2}, Lj9/a;->f()V

    invoke-static {}, LQ6/V0;->b()LQ6/V0;

    move-result-object v2

    if-nez v2, :cond_6

    const-string p0, "onPreExecute recordState is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    invoke-interface {v2}, LQ6/V0;->onFinish()V

    const/4 v0, 0x3

    invoke-interface {v2, v0}, LQ6/V0;->l7(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/16 v2, 0xbb

    invoke-static {v2}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/module/X;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget-boolean v0, v0, Lj6/a;->e:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->exitAutoHibernation()V

    :cond_7
    :goto_2
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AmbilightModule"

    const-string/jumbo v2, "thread interrupted!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$e;

    return-void
.end method

.method private stopCpuBoost()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "enableAmbilightCPUBoost"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/camera/module/AmbilightModule;->mBoostHandle:J

    invoke-virtual {v0, v1, v2}, LRh/c;->d(J)V

    :cond_0
    return-void
.end method

.method private takeShot()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Z0()V

    invoke-static {}, Lk7/K;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, LQ6/V0;->b()LQ6/V0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, LQ6/V0;->on()V

    :cond_0
    const-string p0, "onShutterButtonClick return, isLowStorageAtLastPoint"

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "AmbilightModule"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->mShootingStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->mRecordingStartTime:J

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->startAmbilightShooting()V

    invoke-direct {p0, v1}, Lcom/android/camera/module/AmbilightModule;->updateRecordingTimeStyle(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->updateRecordingTime()V

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

    const-string v2, "AmbilightModule"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic ub(Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->lambda$updateRecordingTimeStyle$11(Z)V

    return-void
.end method

.method public static bridge synthetic uh(Lcom/android/camera/module/AmbilightModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    return p0
.end method

.method private unregisterSensor()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/data/w;->R()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    invoke-virtual {v0, v1}, LF1/i4;->m(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsRegisterSensorListener:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/camera/module/AmbilightModule;->mIsRegisterSensorListener:Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LF1/i4;->s(LF1/i4$q;)V

    :cond_1
    return-void
.end method

.method private updateASD()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lj6/j;->n0(Z)V

    return-void
.end method

.method private updateAutoAeParameters(Z)Z
    .locals 7

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mInDebugMode:Z

    const/16 v1, 0x28

    if-eqz v0, :cond_0

    const-string v0, "ambi_auto_ae_target"

    invoke-static {v0, v1}, Lur/g;->e(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    sget-boolean v2, LJe/d;->i:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lj9/h0;->m(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    if-eqz p1, :cond_2

    move v1, v4

    :cond_2
    invoke-virtual {v0, v1}, Lj9/h0;->n(I)V

    goto :goto_3

    :cond_3
    const/4 v5, 0x2

    const/4 v6, 0x5

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    sget-boolean v6, LJe/d;->i:Z

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move v2, v5

    :goto_1
    invoke-virtual {v0, v2}, Lj9/h0;->m(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    if-eqz p1, :cond_5

    move v1, v4

    :cond_5
    invoke-virtual {v0, v1}, Lj9/h0;->n(I)V

    goto :goto_3

    :cond_6
    if-ne v0, v5, :cond_7

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    invoke-virtual {p1, v6}, Lj9/h0;->m(I)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    invoke-virtual {p1, v4}, Lj9/h0;->m(I)V

    :goto_2
    move v3, v4

    :goto_3
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    invoke-static {p0}, Lcom/android/camera/ambilight/AmbilightEngine;->getEngineModeByScene(I)I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAmbilightMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "CameraConfigManager"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lj9/h0;->a:Lj9/i0;

    iput p0, v0, Lj9/i0;->E1:I

    invoke-virtual {p1}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lj9/k;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj9/k;-><init>(Lj9/h0;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v3
.end method

.method private updateExposureParameters()V
    .locals 15

    const-string v0, "AmbilightModule"

    const-string/jumbo v1, "set ev:"

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v4, 0x1

    const-wide/32 v5, 0xf4240

    const/4 v7, 0x5

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    if-eqz v3, :cond_0

    const/4 v11, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v11, :cond_0

    const/4 v11, 0x4

    if-eq v3, v4, :cond_5

    const/16 v4, 0x320

    if-eq v3, v11, :cond_3

    if-eq v3, v7, :cond_1

    move v4, v2

    :cond_0
    :goto_0
    move v3, v8

    move-wide v12, v9

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->c()Lj9/e;

    move-result-object v3

    invoke-static {v3}, Lj9/f;->e2(Lj9/e;)Z

    move-result v3

    const/4 v11, 0x6

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->getDuration()I

    move-result v3

    int-to-long v12, v3

    mul-long/2addr v12, v5

    iput v4, p0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    :goto_1
    move v3, v8

    :goto_2
    move v4, v11

    goto :goto_3

    :cond_2
    move v3, v8

    move-wide v12, v9

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->c()Lj9/e;

    move-result-object v3

    invoke-static {v3}, Lj9/f;->e2(Lj9/e;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->getDuration()I

    move-result v3

    int-to-long v11, v3

    mul-long v12, v11, v5

    iput v4, p0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    move v4, v7

    move v3, v8

    goto :goto_3

    :cond_4
    move v4, v7

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->getLightTrackExposureTime()J

    move-result-wide v12

    const/16 v3, 0x32

    iput v3, p0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    goto :goto_1

    :cond_6
    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->G1()F

    move-result v3

    const-wide/32 v12, 0x2faf080

    goto :goto_2

    :goto_3
    iget-boolean v11, p0, Lcom/android/camera/module/AmbilightModule;->mInDebugMode:Z

    if-eqz v11, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "ambi_ev_"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    :try_start_0
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "wrong ev:"

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ambi_fps_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lur/g;->e(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_8

    move v2, v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "ambi_ms_"

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lur/g;->e(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_9

    int-to-long v11, v0

    mul-long v12, v11, v5

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "ambi_iso_"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lur/g;->e(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_a

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    :cond_a
    cmpl-float v0, v3, v8

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-virtual {v0}, Lj9/e;->w()Landroid/util/Rational;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v3, v1

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    float-to-int v0, v3

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj9/h0;->H(I)V

    :cond_b
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    invoke-virtual {v0, v1}, Lj9/a;->J0(I)V

    :cond_c
    cmp-long v0, v12, v9

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Lj9/a;->C0(J)V

    :cond_d
    if-eqz v2, :cond_f

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, LJe/d;->i:Z

    if-nez v1, :cond_e

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->m7()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    new-instance v0, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v0}, Lj9/h0;->K(Landroid/util/Range;)V

    :cond_f
    return-void
.end method

.method private updateFocusMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getFocusMode()I

    move-result v1

    invoke-interface {v0, v1}, Lu6/q;->d(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, v0}, Lj6/j;->d(I)V

    return-void
.end method

.method private updateOis()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->M()V

    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget v1, v0, Lj9/e;->b:I

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Lj9/e;->i0(II)Ljava/util/List;

    move-result-object v3

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    new-instance v1, Landroid/util/Size;

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v4, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Landroid/util/Size;

    const/16 v0, 0x1058

    const/16 v4, 0xc42

    invoke-direct {v1, v0, v4}, Landroid/util/Size;-><init>(II)V

    :cond_1
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int v5, v1, v0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->o0()I

    move-result v7

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v8

    const/4 v4, 0x0

    const/16 v6, 0xbb

    invoke-static/range {v3 .. v8}, LF1/H3;->i(Ljava/util/List;IIIILj9/e;)V

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    sget-object v1, LF1/H3;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, LF1/H3;->d(ILjava/util/List;)Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    iget v3, v1, Lj9/e;->b:I

    const-class v4, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v3, v4}, Lj9/e;->j0(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v7

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    iget v5, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-interface {v1}, Lj6/j;->o0()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-object v8, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v8}, Lj6/j;->c()Lj9/e;

    move-result-object v8

    invoke-static {v3, v4, v8}, Lcom/android/camera/data/data/j;->M(IILj9/e;)F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Ll6/n;->f(IILjava/util/List;FLandroid/util/Size;Z)Landroid/util/Size;

    move-result-object v3

    invoke-interface {v1, v3}, Lj6/j;->J(Landroid/util/Size;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1, v0}, Lj6/j;->e(Landroid/util/Size;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pictureSize= "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "X"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " previewSize="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "AmbilightModule"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    if-nez v1, :cond_4

    const-string/jumbo v1, "ro.product.mod_device"

    invoke-static {v1}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ambilight"

    const-string v5, "ambilight_parameter.xml"

    invoke-static {v4, v3, v1, v3, v5}, LDs/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6, v1, v2}, Lvr/Q;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v4, v3, v5}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lvr/Q;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    new-instance v1, Lcom/android/camera/ambilight/AmbilightEngine;

    invoke-direct {v1}, Lcom/android/camera/ambilight/AmbilightEngine;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    :cond_4
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightWidth:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightHeight:I

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

.method private updateRecordingTimeStyle(Z)V
    .locals 1

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v0, Lcom/android/camera/module/b;

    invoke-direct {v0, p1}, Lcom/android/camera/module/b;-><init>(Z)V

    invoke-static {p0, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method private updateSpeechShutter(Z)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSpeechShutter"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/w;->r0(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class v0, LQ6/c1;

    invoke-virtual {p0, v0}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object p0

    check-cast p0, LQ6/c1;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, LQ6/c1;->j4(Z)V

    :cond_1
    invoke-static {}, LQ6/d;->b()LQ6/d;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, LQ6/d;->wo(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic xd(Lcom/android/camera/module/AmbilightModule;LQ6/n1;ILQ6/l1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/AmbilightModule;->lambda$updateTips$6(LQ6/n1;ILQ6/l1;)V

    return-void
.end method

.method public static bridge synthetic yj(Lcom/android/camera/module/AmbilightModule;I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/AmbilightModule;->mDropCount:I

    return-void
.end method


# virtual methods
.method public addSaveTask(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string v0, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v0, Lcom/android/camera/module/AmbilightModule$h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lcom/android/camera/module/AmbilightModule$h;->a:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/camera/module/AmbilightModule$h;->b:Landroid/content/ContentValues;

    iput-object p1, v0, Lcom/android/camera/module/AmbilightModule$h;->c:Landroid/net/Uri;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/a;)V

    new-instance p0, Lr6/Y;

    invoke-direct {p0}, Lr6/Y;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance p0, Lr6/l;

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance p0, Lr6/L;

    invoke-direct {p0}, Lr6/L;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    return-void
.end method

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

.method public cancelCapture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isProcessingSaveTask()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopAmbilightShooting()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public checkDisplayOrientation()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/r;->checkDisplayOrientation()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->I()I

    move-result p0

    invoke-interface {v0, p0}, Lu6/q;->r(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic checkDragBurstEnable(FFZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkShutterCondition()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isBlockSnap()Z

    move-result v0

    const-string v1, "AmbilightModule"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lk7/K;->p()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "checkShutterCondition: low storage"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    invoke-static {}, LQ6/h;->b()LQ6/h;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, LQ6/h;->a5()V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "checkShutterCondition: blockSnap="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isBlockSnap()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ignoreTouchEvent="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIgnoreTouchEvent()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public bridge synthetic checkSnapClickValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public closeCamera()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "closeCamera: start"

    const-string v3, "AmbilightModule"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v1

    invoke-interface {v1, v2}, Lru/k;->y(Lru/a;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1, v0}, Lj6/j;->n0(Z)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v1}, Lj9/a;->l0()V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lj9/a;->E0(Lj9/a$g;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    iput-object v2, v1, Lj9/a;->b:LF1/V2;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lj9/a;->K0(Lj9/a$c;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1, v2}, Lj6/j;->x(Lj9/a;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopCpuBoost()V

    const-string p0, "closeCamera: end"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public consumePreference(I)Z
    .locals 1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->consumePreference(I)Z

    move-result p0

    return p0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateSessionParams()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateOpMode()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateESPDisplay()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getExposureModeManager()LV1/g;

    move-result-object p0

    invoke-interface {p0}, LV1/g;->q()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->getApertureManager()LV1/f;

    move-result-object p0

    invoke-interface {p0}, LV1/f;->L()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, p0}, Lcom/android/camera/module/r;->initializeMetaDataCallback(Lcom/android/camera/module/r;)V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->updateASD()V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->updateOnTripMode()V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateModuleRelated()V

    goto :goto_0

    :sswitch_9
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->Q0()V

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->getZoomManager()Lg9/f;

    move-result-object p0

    invoke-virtual {p0}, Lg9/f;->a0()V

    goto :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->updateOis()V

    goto :goto_0

    :sswitch_c
    invoke-direct {p0, v0}, Lcom/android/camera/module/AmbilightModule;->updateAutoAeParameters(Z)Z

    goto :goto_0

    :sswitch_d
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->updateFocusMode()V

    goto :goto_0

    :sswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/r;->setEvValue()V

    goto :goto_0

    :sswitch_f
    invoke-static {}, Lcom/android/camera/data/data/w;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updateAntiBanding(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_10
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lj6/j;->D0(Z)V

    goto :goto_0

    :sswitch_11
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->updatePictureAndPreviewSize()V

    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_11
        0x3 -> :sswitch_10
        0x9 -> :sswitch_f
        0xc -> :sswitch_e
        0xe -> :sswitch_d
        0x13 -> :sswitch_c
        0x14 -> :sswitch_b
        0x18 -> :sswitch_a
        0x1d -> :sswitch_9
        0x37 -> :sswitch_8
        0x3b -> :sswitch_7
        0x46 -> :sswitch_6
        0x5f -> :sswitch_5
        0x68 -> :sswitch_4
        0x72 -> :sswitch_3
        0x8a -> :sswitch_2
        0x8b -> :sswitch_1
        0xcafe -> :sswitch_0
    .end sparse-switch
.end method

.method public executeRelease()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lum/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lum/a;->i()V

    invoke-virtual {p0}, Lum/a;->h()V

    :cond_0
    return-void
.end method

.method public executeSaveTask(Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lum/a;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/AmbilightModule;->mSkipSaveVideo:Z

    invoke-virtual {v0, v1}, Lum/a;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/AmbilightModule$h;

    const-string v2, "AmbilightModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeSaveTask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera/module/AmbilightModule$h;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v2

    iget-object v2, v2, Lh6/b;->a:Lh6/a;

    invoke-interface {v2}, Lh6/a;->c()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v2

    iget-object v2, v2, Lh6/b;->a:Lh6/a;

    invoke-interface {v2}, Lh6/a;->f()Landroid/location/Location;

    move-result-object v2

    :goto_1
    invoke-static {}, LQg/e;->b()I

    move-result v3

    new-instance v4, Lk7/P$a;

    invoke-direct {v4}, Lk7/P$a;-><init>()V

    iget-object v5, v0, Lcom/android/camera/module/AmbilightModule$h;->c:Landroid/net/Uri;

    iput-object v5, v4, Lk7/b$a;->a:Landroid/net/Uri;

    iget-object v5, v0, Lcom/android/camera/module/AmbilightModule$h;->a:Ljava/lang/String;

    iput-object v5, v4, Lk7/P$a;->l:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/camera/module/AmbilightModule$h;->b:Landroid/content/ContentValues;

    iput-object v0, v4, Lk7/P$a;->n:Landroid/content/ContentValues;

    const/4 v0, 0x1

    iput-boolean v0, v4, Lk7/P$a;->o:Z

    iput-boolean v1, v4, Lk7/P$a;->p:Z

    iput-object v2, v4, Lk7/b$a;->j:Landroid/location/Location;

    iput v3, v4, Lk7/P$a;->q:I

    const/4 v1, 0x0

    iput-object v1, v4, Lk7/P$a;->m:Ljava/lang/String;

    iput-object v1, v4, Lk7/P$a;->r:Ljava/util/List;

    invoke-virtual {v4}, Lk7/P$a;->a()Lk7/P;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v2}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lk7/i;->u(Lk7/P;Z)Landroid/net/Uri;

    const-string v0, "key_ambilight"

    new-instance v1, Lgq/h;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lgq/h;->a:Ljava/lang/String;

    new-instance v0, Lgq/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v0, v1, Lgq/h;->b:Lgq/f;

    const-string v0, "attr_ambilight_generate_video"

    const-string/jumbo v2, "success"

    invoke-virtual {v1, v2, v0}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lgq/h;->d()V

    if-eqz p1, :cond_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lum/a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lum/a;->i()V

    invoke-virtual {p1}, Lum/a;->h()V

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->doLaterReleaseIfNeed()V

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public exitAutoHibernation()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    invoke-super {p0}, Lcom/android/camera/module/r;->exitAutoHibernation()V

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->needAutoHibernationScene()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz p0, :cond_0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/r;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LEs/r;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public getAmbilightHeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightHeight:I

    return p0
.end method

.method public getAmbilightWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightWidth:I

    return p0
.end method

.method public getApertureManager()LV1/f;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mApertureManager:LV1/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/module/AmbilightModule$d;

    invoke-direct {v0, p0}, LV1/c;-><init>(Lcom/android/camera/module/r;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mApertureManager:LV1/f;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mApertureManager:LV1/f;

    return-object p0
.end method

.method public getAutoFinish()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getCaptureStartTime()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getColorSpaceDescriptionInner()Lwu/a$k;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getTexP3DpyP3ColorSpaceDescription()Lwu/a$k;

    move-result-object p0

    return-object p0
.end method

.method public getCropRegion()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mCropRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public bridge synthetic getDismissPureBlurDelayTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()I
    .locals 4

    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p0, 0x5

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Le2/c;->b:I

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->e2(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->mExposureTime:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_2
    const/16 p0, 0x7530

    return p0

    :cond_3
    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule;->mInDebugMode:Z

    if-eqz p0, :cond_4

    const-string p0, "ambi_crowd_duration"

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lur/g;->e(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v0, :cond_4

    return p0

    :cond_4
    :goto_0
    const/16 p0, 0x7d0

    return p0
.end method

.method public getModuleDeviceParam()Ly3/v;
    .locals 5

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->o0()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->getActualCameraId()I

    move-result v2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    new-instance v3, Ly3/f;

    invoke-direct {v3}, Ly3/f;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Ly3/f;->f:Z

    iput v1, v3, Ly3/v;->b:I

    iput-boolean v4, v3, Ly3/f;->e:Z

    iput-object p0, v3, Ly3/v;->d:Lj9/e;

    iput v2, v3, Ly3/v;->c:I

    iput v0, v3, Ly3/v;->a:I

    return-object v3
.end method

.method public getPTSUs()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->prevOutputPTSUs:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    sub-long/2addr v2, v0

    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method public getPressAnimationEnabled()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->e2(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getProcessorType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSceneMode()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    return p0
.end method

.method public bridge synthetic getSnapCondition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTripodAsdEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZoom()F
    .locals 0

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mZoom:F

    return p0
.end method

.method public bridge synthetic getZoomManager()Lf9/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->getZoomManager()Lg9/f;

    move-result-object p0

    return-object p0
.end method

.method public getZoomManager()Lg9/f;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lh9/b;

    .line 4
    invoke-direct {v0, p0}, Lg9/f;-><init>(Lcom/android/camera/module/W;)V

    .line 5
    iput-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    check-cast p0, Lg9/f;

    return-object p0
.end method

.method public handleDoneMsg([B)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/module/AmbilightModule;->startSaveTask([B)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->onSaveFinish()V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    invoke-interface {p0, p1}, Lru/k;->y(Lru/a;)V

    :cond_1
    return-void
.end method

.method public handleFrameProcessDone()V
    .locals 8

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mRenderLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    iget-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mYBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/camera/module/AmbilightModule;->mUBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/android/camera/module/AmbilightModule;->mVBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightRoi:Lcom/android/camera/ambilight/AmbilightRoi;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/camera/ambilight/AmbilightEngine;->updatePreview(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/android/camera/ambilight/AmbilightRoi;)V

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightRoi:Lcom/android/camera/ambilight/AmbilightRoi;

    iget v3, v0, Lcom/android/camera/ambilight/AmbilightRoi;->xOffset:F

    iget v4, v0, Lcom/android/camera/ambilight/AmbilightRoi;->yOffset:F

    iget v2, v0, Lcom/android/camera/ambilight/AmbilightRoi;->zoomRatio:F

    iget v5, p0, Lcom/android/camera/module/AmbilightModule;->mZoom:F

    mul-float/2addr v5, v2

    iget v6, v0, Lcom/android/camera/ambilight/AmbilightRoi;->xTrans:F

    iget v7, v0, Lcom/android/camera/ambilight/AmbilightRoi;->yTrans:F

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/module/AmbilightModule;->updateTransform(FFFFF)V

    iget-object p0, v2, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    invoke-interface {p0}, Lru/k;->requestRender()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleMessage(ILandroid/os/Message;)Z
    .locals 5

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x41

    const/16 v2, 0x42

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->handleMessage(ILandroid/os/Message;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lum/a;

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lj3/b;

    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule;->mMediaRecorderRecording:Z

    invoke-virtual {p1, p2, p0}, Lum/a;->f(Lj3/b;Z)V

    return v1

    :pswitch_1
    iget-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/module/AmbilightModule;->mExposureTime:J

    invoke-static {}, LQ6/V0;->b()LQ6/V0;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-boolean p2, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepared:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/android/camera/module/AmbilightModule;->mReceivedImage:Z

    if-nez p2, :cond_4

    iput-boolean v1, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepared:Z

    invoke-interface {p1, p0}, LQ6/V0;->pe(Lcom/android/camera/module/W;)V

    invoke-interface {p1}, LQ6/V0;->onStart()V

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "AmbilightModule"

    const-string p2, "check prepare or receive exposure time, record state start."

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :pswitch_2
    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule;->mIsInRendering:Z

    if-eqz p0, :cond_4

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object p0

    invoke-virtual {p0}, LBr/e;->l()V

    return v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->closeCamera()V

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->clearBuffer()V

    return v1

    :pswitch_4
    iget-boolean p1, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isBlockSnap()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->takeShot()V

    return v1

    :pswitch_5
    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class p1, LQ6/f;

    invoke-virtual {p0, p1}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object p0

    check-cast p0, LQ6/f;

    if-eqz p0, :cond_4

    iget-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, LQ6/f;->M2(Ljava/lang/String;)V

    return v1

    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->playCameraSound(I)V

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object p1

    invoke-virtual {p1}, LBr/e;->l()V

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopAmbilightShooting()V

    iget-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/camera/module/AmbilightModule;->handleDoneMsg([B)V

    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsInRendering:Z

    iput-boolean v1, p0, Lcom/android/camera/module/AmbilightModule;->mReceivedImage:Z

    return v1

    :pswitch_7
    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsInRendering:Z

    return v1

    :pswitch_8
    iget-boolean p1, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->handleFrameProcessDone()V

    iget-boolean p1, p0, Lcom/android/camera/module/AmbilightModule;->mIsInRendering:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getDisplayRotation()I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p2}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object p2

    iget-object p2, p2, LF1/q4;->e:Landroid/graphics/Rect;

    invoke-static {}, LK2/e;->k()Landroid/util/Size;

    move-result-object v0

    invoke-static {p1, p2, v0}, LK2/e;->G(ILandroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p2}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object p2

    iput-object p1, p2, LF1/q4;->A:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p1

    invoke-interface {p1, p0}, Lru/k;->y(Lru/a;)V

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->onAmbilightPreviewAvailable()V

    iput-boolean v1, p0, Lcom/android/camera/module/AmbilightModule;->mIsInRendering:Z

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->enterAutoHibernation()V

    return v1

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/android/camera/module/r;->showAutoHibernationTip()V

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->updateRecordingTime()V

    return v1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lru/k;->y(Lru/a;)V

    :cond_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isDoingAction()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->H()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isProcessingSaveTask()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepareSaveTask:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

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

.method public isProcessorReady(Lwu/f;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule;->mIsInRendering:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPurePreview()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepareSaveTask:Z

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

.method public isZoomEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/camera/module/r;->isZoomEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isZslPreferred()Z
    .locals 0

    sget-boolean p0, LJe/d;->i:Z

    return p0
.end method

.method public keepScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getWindowOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE4/i;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LE4/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public needFaceDetection()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needShowAfGridView(Z)Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAfGridResults"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/r;->needShowAfGridView(Z)Z

    move-result p0

    return p0
.end method

.method public notifyFirstFrameArrived(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->notifyFirstFrameArrived(I)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sASDScheduler:Lio/reactivex/v;

    new-instance v0, LCs/k0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, LCs/k0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public onActionPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->isShooting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    iget-boolean v0, v0, Lv2/D0;->B:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->m7()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->tryRemoveCountDownMessage()V

    :cond_2
    return-void
.end method

.method public onActionStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->m7()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz v0, :cond_2

    invoke-static {}, LQ6/V0;->b()LQ6/V0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, LQ6/V0;->onFinish()V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopAmbilightShooting()V

    :cond_2
    return-void
.end method

.method public onActive()V
    .locals 6

    invoke-super {p0}, Lcom/android/camera/module/r;->onActive()V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lr2/f;->o(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->onCameraOpened()V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    sget v1, Li3/b;->N:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/effect/EffectController;->a0(I)V

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lj3/a;

    if-nez v0, :cond_0

    new-instance v0, Lj3/a;

    invoke-direct {v0}, Lj3/a;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lj3/a;

    :cond_0
    new-instance v0, Lj3/a;

    invoke-direct {v0}, Lj3/a;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttributeForVideo:Lj3/a;

    invoke-static {}, Lb7/c;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mTripodMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mImagedata:[B

    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepared:Z

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mDropFrameCount:I

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-ne v3, v4, :cond_1

    new-instance v1, Landroid/util/Size;

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/util/Size;-><init>(II)V

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Landroid/util/Size;

    const/16 v0, 0x5a0

    const/16 v2, 0x780

    invoke-direct {v1, v0, v2}, Landroid/util/Size;-><init>(II)V

    :cond_2
    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mVideoSize:Landroid/util/Size;

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->startBackgroundThread()V

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->registerSensorListener()V

    return-void
.end method

.method public bridge synthetic onActivityResult(Lcom/android/camera/module/X;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->cancelCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/r;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "android.media.action.VOICE_COMMAND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AmbilightModule"

    if-eqz v0, :cond_3

    const-string v0, "on Receive voice control broadcast action intent"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lvr/m;->j(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object p2, p0, Lcom/android/camera/module/r;->mBroadcastIntent:Landroid/content/Intent;

    const-string v3, "CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isBlockSnap()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-string p1, "on voice control: block snap"

    new-array p2, v1, [Ljava/lang/Object;

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

    invoke-interface {v0}, Lj6/f;->S()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/AmbilightModule;->onShutterButtonClick(I)Z

    iput-object v3, p0, Lcom/android/camera/module/r;->mBroadcastIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v0, "com.android.camera.action.SPEECH_SHUTTER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "on Receive speech shutter broadcast action intent"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/G0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LH4/u;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, LH4/u;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "on Speech shutter: ingore caz mode changing"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v0, :cond_5

    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcom/android/camera/module/AmbilightModule;->onShutterButtonClick(I)Z

    :cond_5
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCameraOpened()V
    .locals 2

    const-string v0, "AmbilightModule"

    const-string v1, "Ambilight Moduleon CameraOpened"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->initializeFocusManager()V

    sget-object v0, Le2/m;->j:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    const/16 v0, 0x14

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->startPreviewSession()V

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->updateAutoHibernation()V

    return-void
.end method

.method public bridge synthetic onCameraPickerClicked(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onDrawBlackFrameChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZ)Z
    .locals 3

    .line 2
    iget-object p2, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p2}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p2

    invoke-interface {p2}, Lru/k;->M()Lia/g;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 3
    iget-object p4, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lj3/a;

    if-eqz p4, :cond_2

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p4

    sget v0, Li3/b;->J:I

    invoke-virtual {p4, p2, v0}, Lcom/xiaomi/camera/effect/EffectController;->n(Lia/g;I)Lp3/i;

    .line 5
    invoke-interface {p2}, Lia/g;->j()V

    .line 6
    iget-object p4, p0, Lcom/android/camera/module/AmbilightModule;->mRenderLock:Ljava/lang/Object;

    monitor-enter p4

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lj3/a;

    invoke-static {}, Lcom/android/camera/data/data/w;->t0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/android/camera/module/AmbilightModule;->mTranslateX:I

    :goto_0
    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mTranslateY:I

    .line 8
    iput p3, v0, Lj3/a;->c:I

    .line 9
    iput v1, v0, Lj3/a;->d:I

    .line 10
    iget-object p3, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lj3/a;

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mImage:LLu/b;

    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/util/Size;-><init>(II)V

    .line 11
    iput-object v0, p3, Lj3/a;->e:LLu/b;

    .line 12
    iput-object v1, p3, Lj3/a;->f:Landroid/util/Size;

    .line 13
    invoke-interface {p2, p3}, Lia/g;->h(Lj3/b;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->getPTSUs()J

    move-result-wide p1

    .line 15
    iget-boolean p3, p0, Lcom/android/camera/module/AmbilightModule;->mMediaRecorderRecording:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lum/a;

    if-eqz p3, :cond_1

    iget-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->prevOutputPTSUs:J

    sub-long v0, p1, v0

    long-to-float p3, v0

    const v0, 0x4ab40dc0    # 5900000.0f

    cmpl-float p3, p3, v0

    if-lez p3, :cond_1

    .line 16
    iget-object p3, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttributeForVideo:Lj3/a;

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mImage:LLu/b;

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mVideoSize:Landroid/util/Size;

    .line 17
    iput-object v0, p3, Lj3/a;->e:LLu/b;

    .line 18
    iput-object v1, p3, Lj3/a;->f:Landroid/util/Size;

    .line 19
    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 20
    iput-wide p1, p0, Lcom/android/camera/module/AmbilightModule;->prevOutputPTSUs:J

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 21
    :cond_1
    :goto_1
    monitor-exit p4

    const/4 p0, 0x1

    return p0

    :goto_2
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return p3
.end method

.method public bridge synthetic onDrawFrame(Lia/g;[FLandroid/graphics/Rect;Lia/f;Landroid/util/Size;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
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

.method public onFocusStateChanged(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeparted()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH8/q;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LH8/q;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p1, Lcom/android/camera/module/loader/camera2/FocusTask;->a:I

    const-string v1, "AmbilightModule"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p1, Lcom/android/camera/module/loader/camera2/FocusTask;->d:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/camera/module/loader/camera2/FocusTask;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AutoFocusTime=%1$dms focused=%2$b"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p1, Lcom/android/camera/module/loader/camera2/FocusTask;->g:Z

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/camera/module/AmbilightModule;->handleFocusStateChange(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    return-void

    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-boolean v4, p1, Lcom/android/camera/module/loader/camera2/FocusTask;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "FocusTime=%1$dms focused=%2$b"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0}, Lu6/q;->v()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, v2}, Lj6/j;->E(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lu6/q;->M(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object p0

    invoke-virtual {p0}, LF1/i4;->k()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onInactive()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopBackgroundThread()V

    invoke-super {p0}, Lcom/android/camera/module/r;->onInactive()V

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->unregisterSensor()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->resetScreenOn()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x1b

    const v3, 0x7f140f51

    if-eq p1, v0, :cond_6

    const/16 v0, 0x42

    if-eq p1, v0, :cond_6

    const/16 v0, 0x57

    const/16 v4, 0x58

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/camera/module/AmbilightModule;->performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V

    return v1

    :cond_2
    :pswitch_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    if-ne p1, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v2

    :cond_5
    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/android/camera/module/r;->handleVolumeKeyEvent(ZZLandroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_2
    return v1

    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, p2}, Lcom/android/camera/module/r;->parseKeyCameraTriggerMode(Landroid/view/KeyEvent;)I

    move-result p1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/AmbilightModule;->performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V

    return v1

    :cond_7
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    invoke-static {}, LQ6/h;->b()LQ6/h;

    move-result-object v0

    invoke-interface {v0}, LQ6/h;->Y3()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onPreviewLayoutChanged(Landroid/graphics/Rect;I)V

    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lj3/a;

    if-nez p1, :cond_0

    new-instance p1, Lj3/a;

    invoke-direct {p1}, Lj3/a;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lj3/a;

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/w;->t0()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lj3/a;

    const/4 p1, 0x0

    iput p1, p0, Lj3/a;->c:I

    iput p1, p0, Lj3/a;->d:I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object p1

    iget p1, p1, LF1/q4;->m:I

    iput p1, p0, Lcom/android/camera/module/AmbilightModule;->mTranslateX:I

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object p1

    iget p1, p1, LF1/q4;->n:I

    iput p1, p0, Lcom/android/camera/module/AmbilightModule;->mTranslateY:I

    iget-object p2, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lj3/a;

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mTranslateX:I

    iput p0, p2, Lj3/a;->c:I

    iput p1, p2, Lj3/a;->d:I

    return-void
.end method

.method public onPreviewSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string p0, "AmbilightModule"

    const-string p1, "onPreviewSessionClosed"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string p1, "onPreviewSessionFailed"

    const-string v0, "AmbilightModule"

    invoke-static {v0, p1}, Lcom/android/camera/log/LogK;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isTextureExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->T2()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p1, "sessionFailed due to surfaceTexture expired, retry"

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x33

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    const-string v0, "AmbilightModule"

    const-string v1, "onPreviewSessionSuccess"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/r;->onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lj6/j;->E(I)V

    sget-object p1, Le2/m;->q:[I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onRetryCapture(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onReviewCancelClicked()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onSceneModeSelect(II)V
    .locals 2

    const-string p1, "onSceneModeSelect:"

    const-string v0, ", mSceneMode = "

    invoke-static {p2, p1, v0}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AmbilightModule"

    invoke-static {v0, p1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lj9/a;->r()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "CaptureSession is null"

    new-array p1, p2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lj9/a;->j0()V

    :cond_2
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/module/AmbilightModule;->updateAutoAeParameters(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, LJe/d;->j:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    new-instance v0, Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p1, v0}, Lj9/h0;->K(Landroid/util/Range;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->resumePreview()V

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->updateAutoHibernation()V

    return-void
.end method

.method public bridge synthetic onSceneRecognizeButtonClick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterAnimationEnd()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isShootingTooShort()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AmbilightModule"

    const-string/jumbo v2, "shooting is too short, ignore this animationEnd."

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LG4/e;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LG4/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->getDuration()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopAmbilightShooting()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onShutterButtonCancel(Z)V
    .locals 0

    return-void
.end method

.method public onShutterButtonClick(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIgnoreTouchEvent()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepareSaveTask:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isProcessingSaveTask()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0x6e

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LEs/p;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, LEs/p;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LB9/c;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, LB9/c;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0, p1}, Lj6/f;->N(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onShutterButtonClick "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->x0()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AmbilightModule"

    invoke-static {v3, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->x0()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v0, :cond_5

    invoke-static {}, LQ6/j1;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6/j1;

    invoke-interface {v0, p1}, LQ6/j1;->q2(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "onShutterButtonClick takeShot"

    invoke-static {v3, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isBlockSnap()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->takeShot()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isShootingTooShort()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string/jumbo p0, "shooting is too short, ignore this click"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_6
    iget p1, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const-string p1, "onShutterButtonClick stopAmbilightShooting"

    invoke-static {v3, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopAmbilightShooting()V

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_2
    return v1
.end method

.method public bridge synthetic onShutterButtonFocus(ZI)V
    .locals 0

    return-void
.end method

.method public onShutterButtonLongClick()Z
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/camera/module/AmbilightModule;->onShutterButtonClick(I)Z

    move-result p0

    return p0
.end method

.method public onShutterButtonLongClickCancel(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/camera/module/AmbilightModule;->onShutterButtonClick(I)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onShutterDragging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(IIZ)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/r;->onSingleTapUp(IIZ)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/r;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6/t0;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LQ6/t0;->Wp(Z)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->mapTapCoordinate(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->unlockAEAF()V

    invoke-virtual {p0, p3, v0}, Lcom/android/camera/module/r;->handlePreviewTouchEvent(ZLandroid/graphics/Point;)V

    :cond_2
    :goto_0
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

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p1}, Lj6/f;->q()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isProcessingSaveTask()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isCannotGotoGallery()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "AmbilightModule"

    const-string v0, "onThumbnailClicked: CannotGotoGallery..."

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->gotoGallery(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, LQ6/q;->onThumbnailClicked(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onTouchDownEvent()V
    .locals 0

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/r;->onUserInteraction()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepScreenOnAwhile()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->needAutoHibernationScene()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepAutoHibernation()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onWaitingFocusFinishedFailed()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->onWindowFocusChanged(Z)V

    const-string v0, "onWindowFocusChanged: "

    invoke-static {v0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AmbilightModule"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepAutoHibernation()V

    :cond_0
    return-void
.end method

.method public pausePreview()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string v0, "AmbilightModule"

    const-string v1, "pausePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->j0()V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lj6/j;->E(I)V

    return-void
.end method

.method public performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isModeEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p4

    new-instance v0, LEs/n;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LEs/n;-><init>(I)V

    invoke-virtual {p4, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p4

    const v0, 0x7f140f54

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    const/16 p1, 0xa0

    const/4 p2, 0x2

    invoke-interface {p0, p2, p1}, LQ6/j1;->ec(II)V

    return-void

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/camera/module/AmbilightModule;->trackKeyShutterEvent(Landroid/view/KeyEvent;ZI)V

    invoke-virtual {p0, p1}, Lcom/android/camera/module/AmbilightModule;->onShutterButtonClick(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic performKeyLongPress(IZLandroid/view/KeyEvent;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic prepareGL()V
    .locals 0

    return-void
.end method

.method public registerProtocol()V
    .locals 6

    invoke-super {p0}, Lcom/android/camera/module/r;->registerProtocol()V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/q;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/Z0;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/K;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/e;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object v0

    const-class v1, LQ6/P;

    const-class v2, LQ6/B0;

    const-class v3, LQ6/C;

    const-class v4, LQ6/M0;

    const-class v5, LQ6/V0;

    filled-new-array {v3, v1, v2, v4, v5}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp6/b;->d([Ljava/lang/Class;)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {p0}, LN6/a;->registerProtocol()V

    return-void
.end method

.method public releaseRender()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public resumePreview()V
    .locals 2

    const-string v0, "AmbilightModule"

    const-string/jumbo v1, "resumePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->p0()I

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lj6/j;->E(I)V

    return-void
.end method

.method public setAmbilightHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightHeight:I

    return-void
.end method

.method public setAmbilightWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightWidth:I

    return-void
.end method

.method public setAsdScenes([Lha/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mAsdScenes:[Lha/l$a;

    return-void
.end method

.method public bridge synthetic setCaptureTime(Lqh/f;)V
    .locals 0

    return-void
.end method

.method public setCropRegion(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mCropRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public setExposureTime(J)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isMTKPlatform"
        type = 0x1
    .end annotation

    iget-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->mExposureTime:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/android/camera/module/AmbilightModule;->mExposureTime:J

    iget-boolean p1, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepared:Z

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[setExposureTime] mExposureTime: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->mExposureTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", mIsShooting: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsPrepared: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepared:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "AmbilightModule"

    invoke-static {v0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->mExposureTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/16 p2, 0x6b

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFocusDistance(Ljava/lang/Float;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/camera/module/AmbilightModule;->mFocusDistance:F

    :cond_0
    return-void
.end method

.method public setZoom(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/AmbilightModule;->mZoom:F

    return-void
.end method

.method public shouldDisableStopButton()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldReleaseLater()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isProcessingSaveTask()Z

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

.method public bridge synthetic skipFrameDrawnNum()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startTimerCapture(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->takeShot()V

    return-void
.end method

.method public startVideoRecording()V
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "AmbilightModule"

    const-string/jumbo v2, "startVideoRecording"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lum/a;

    if-nez v2, :cond_0

    new-instance v2, Lum/a;

    invoke-direct {v2}, Lum/a;-><init>()V

    iput-object v2, v0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lum/a;

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f141494

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/module/video/H;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/AmbilightModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/android/camera/module/AmbilightModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4, v2}, Lcom/android/camera/module/video/H;->e(IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v7

    iget-object v2, v0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v2}, Lcom/android/camera/module/X;->Ck()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/data/data/j;->V0(I)Z

    move-result v2

    new-instance v8, Lwm/c;

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v3

    invoke-interface {v3}, Lru/k;->N()Landroid/opengl/EGLContext;

    move-result-object v9

    sget-object v10, Lwu/a;->a:Lwu/a$b;

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/camera/effect/EffectController;->l()I

    move-result v12

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/camera/effect/EffectController;->i()I

    move-result v13

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/camera/effect/EffectController;->E()Z

    move-result v14

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v3

    iget-boolean v15, v3, Lcom/xiaomi/camera/effect/EffectController;->p:Z

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/camera/effect/EffectController;->M()Z

    move-result v16

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v3

    iget-object v3, v3, Lcom/xiaomi/camera/effect/EffectController;->q:Ljava/lang/String;

    invoke-static {}, Lj9/f;->S4()Z

    move-result v18

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "preview_dump"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v11, v10

    move-object/from16 v17, v3

    invoke-direct/range {v8 .. v21}, Lwm/c;-><init>(Landroid/opengl/EGLContext;Lwu/a;Lwu/a;IIZZZLjava/lang/String;ZLjava/io/File;Lev/p;LLs/k;)V

    iget-object v5, v0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lum/a;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v6

    iget-object v3, v0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v3, Lj6/a;

    iget v3, v3, Lj6/a;->b:I

    iget-object v11, v0, Lcom/android/camera/module/AmbilightModule;->mMediaEncoderListener:Lum/a$a;

    const v13, 0x3b360b61

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v9, v8

    move v8, v3

    invoke-virtual/range {v5 .. v13}, Lum/a;->c(Landroid/content/Context;Landroid/content/ContentValues;ILwm/c;Ljava/lang/String;Lum/a$a;ZF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lum/a;

    iget-wide v4, v0, Lcom/android/camera/module/AmbilightModule;->mRequestStartTime:J

    invoke-virtual {v3, v4, v5, v2}, Lum/a;->j(JZ)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/camera/module/AmbilightModule;->mMediaRecorderRecording:Z

    const-string/jumbo v0, "startVideoRecording process done"

    invoke-static {v1, v0}, LF6/k;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic supportEvOverlap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportMultiCaptureByRunningCondition()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public supportMultiCaptureByStableCondition()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public trackKeyShutterEvent(Landroid/view/KeyEvent;ZI)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/r;->trackKeyShutterEvent(Landroid/view/KeyEvent;ZI)V

    :cond_0
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

    new-instance v0, LD8/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LD8/h;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unRegisterModulePersistProtocol()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/module/r;->unRegisterModulePersistProtocol()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AmbilightModule"

    const-string/jumbo v2, "unRegisterModulePersistProtocol"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object v0

    invoke-virtual {v0}, Lp6/b;->a()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {p0}, LN6/a;->unRegisterProtocol()V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->tryRemoveCountDownMessage()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Lcom/android/camera/module/r;->unRegisterProtocol()V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/q;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/Z0;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/K;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/e;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object p0

    invoke-virtual {p0}, Lp6/b;->c()V

    :cond_0
    return-void
.end method

.method public unlockAEAF()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AmbilightModule"

    const-string/jumbo v3, "unlockAEAF"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->N()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj9/h0;->e(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-interface {p0, v0}, Lu6/q;->E(Z)V

    return-void
.end method

.method public updateAutoHibernation()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->n0(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iput-boolean v0, p0, Lj6/a;->e:Z

    return-void
.end method

.method public updateAutoHibernationFirstRecordingTime()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    invoke-static {}, LQ6/g;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LM6/m;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, LM6/m;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateBuffers(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mUBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mVBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mImage:LLu/b;

    if-nez p1, :cond_1

    new-instance p1, LLu/b;

    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewHeight:I

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v2, LLu/b$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, LLu/b$a;->a:Ljava/nio/ByteBuffer;

    iput-object v3, v2, LLu/b$a;->b:Ljava/nio/ByteBuffer;

    iput-object v3, v2, LLu/b$a;->c:Ljava/nio/ByteBuffer;

    iput-object v2, p1, LLu/b;->c:LLu/b$a;

    iput v0, p1, LLu/b;->a:I

    iput v1, p1, LLu/b;->b:I

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mImage:LLu/b;

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mImage:LLu/b;

    iget-object p1, p1, LLu/b;->c:LLu/b$a;

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mUBuffer:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mVBuffer:Ljava/nio/ByteBuffer;

    iput-object v0, p1, LLu/b$a;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p1, LLu/b$a;->b:Ljava/nio/ByteBuffer;

    iput-object p0, p1, LLu/b$a;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public bridge synthetic updateColorSpace(Lwu/a$k;)V
    .locals 0

    return-void
.end method

.method public updateOnTripMode()V
    .locals 6

    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mAsdScenes:[Lha/l$a;

    if-eqz v0, :cond_2

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget v4, v3, Lha/l$a;->a:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    iget v3, v3, Lha/l$a;->b:I

    iput v3, p0, Lcom/android/camera/module/AmbilightModule;->mTripodMode:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    iput v2, p0, Lcom/android/camera/module/AmbilightModule;->mTripodMode:I

    return-void
.end method

.method public updateRecordingTime()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->shouldHideTimeLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, LAg/b;->b(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mRecordingTime:Ljava/lang/String;

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LI4/r;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, LI4/r;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v1, Lj6/a;

    iget-boolean v1, v1, Lj6/a;->e:Z

    if-eqz v1, :cond_1

    invoke-static {}, LQ6/g;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LN1/c;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, LN1/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x2a

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
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

.method public updateTips(I)V
    .locals 3

    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/a;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/module/a;-><init>(Lcom/android/camera/module/AmbilightModule;LQ6/n1;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateTransform(FFFFF)V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    invoke-interface {v0}, Lru/k;->M()Lia/g;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    invoke-interface {v0}, Lru/k;->M()Lia/g;

    move-result-object v0

    invoke-interface {v0}, Lia/g;->getState()Li3/c;

    move-result-object v0

    iget-object v0, v0, Li3/c;->e:[F

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    iget-object v6, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    add-int/lit8 v7, v4, 0x1

    aput v5, v6, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getDisplayRotation()I

    move-result v0

    invoke-static {}, LK2/j;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, p2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v4, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    int-to-float v6, v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    invoke-static {v0, v2, p4, p5, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object p4, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-static {p4, v2, p3, p3, p5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object p3, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    neg-float p1, p1

    neg-float p2, p2

    invoke-static {p3, v2, p1, p2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lj3/a;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    iput-object p2, p1, Lj3/a;->b:[F

    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttributeForVideo:Lj3/a;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    iput-object p0, p1, Lj3/a;->b:[F

    iput v2, p1, Lj3/a;->c:I

    iput v2, p1, Lj3/a;->d:I

    :cond_4
    :goto_1
    return-void
.end method
