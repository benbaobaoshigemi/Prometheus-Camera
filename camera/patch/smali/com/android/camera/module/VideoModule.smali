.class public Lcom/android/camera/module/VideoModule;
.super Lcom/android/camera/module/VideoBase;
.source "SourceFile"

# interfaces
.implements LQ6/v1;
.implements La2/c;
.implements Lcom/android/camera/module/video/A$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/VideoModule$h;,
        Lcom/android/camera/module/VideoModule$j;,
        Lcom/android/camera/module/VideoModule$i;,
        Lcom/android/camera/module/VideoModule$k;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALPHA_PERCENT_DISPLAY_FAT:F = 0.3f

.field private static final ALPHA_PERCENT_NORMAL_SCREEN:F = 0.7f

.field private static final LIVE_SHOT_FOR_4K120FPS_INTERVAL:J = 0x12cL

.field private static final LIVE_SHOT_FOR_4K120FPS_THERMAL_BATTERY_TEMP:I = 0x1c2

.field private static final LIVE_SHOT_FOR_4K120FPS_THERMAL_INTERVAL:J = 0x3e8L

.field private static final LIVE_SHOT_SNAPSHOT_MAX_IN_FLIGHT:I = 0xa

.field private static final MDEGREE_0:I = 0x0

.field private static final MDEGREE_180:I = 0xb4

.field private static final MDEGREE_270:I = 0x10e

.field private static final MDEGREE_360:I = 0x168

.field private static final MDEGREE_90:I = 0x5a


# instance fields
.field private isMaxFileSizeReached:Z

.field private volatile mAbandonModuleCallbackCalled:Z

.field protected final mAiAudio:Lcom/android/camera/module/video/AiAudioController;

.field private volatile mAsyncInitRecorder:Z

.field private final mAvailableSpaceController:Lcom/android/camera/module/video/e;

.field private mBitRate:J

.field private mBoostHandle:J

.field private mContinousRecordDisposable:Lio/reactivex/disposables/a;

.field protected mDelayStopRecording:Ljava/lang/Runnable;

.field private mEnableVideoSnapshot:Z

.field private mExcludeScreenRecorderQualityFps:I

.field private mFovcEnabled:Z

.field private mFutureRecorder:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/android/camera/module/video/n;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCameraAECAWBDebug:Ljava/lang/Boolean;

.field private mIsExiting:Z

.field private mIsVideoRecordingSwitch:Z

.field private mLastVideoSnapshotTime:J

.field private mLivePhotoSnapshotInFlight:I

.field private final mMicsBlockingListener:LF4/l;

.field private mNddFrameNumber:Ljava/lang/Integer;

.field private mNormalHDRTargetState:Z

.field protected mOverheatTipAlreadyShown:Z

.field private final mPicCallback:Lj9/a$j;

.field private mPreMicsBlockingState:Z

.field private mQuickVideo:Z

.field protected final mRecorderController:Lcom/android/camera/module/video/A;

.field private final mRecorderListener:Lcom/android/camera/module/video/A$d;

.field private mRecordingSecondTime:Ljava/lang/String;

.field private mRecordingStartDegree:I

.field private mStartRecordDisposable:Lio/reactivex/disposables/b;

.field private final mSubtitilAndTag:Lcom/android/camera/module/video/D;

.field private final mTopConfigProtocol:LQ6/o1;

.field public final mTrackInfoBuilder:Lfq/b$a;

.field private mVideoCaptureEnable:Z

.field private mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$j;

.field private final mVideoSaveCallback:Lk7/P$b;

.field private volatile mVideoSaveCompleted:Z

.field private mVideoStopBoostHandle:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/android/camera/module/VideoBase;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mIsCameraAECAWBDebug:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mNddFrameNumber:Ljava/lang/Integer;

    new-instance v2, Lcom/android/camera/module/video/e;

    invoke-direct {v2}, Lcom/android/camera/module/video/e;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mAvailableSpaceController:Lcom/android/camera/module/video/e;

    new-instance v2, Lcom/android/camera/module/video/D;

    invoke-direct {v2}, Lcom/android/camera/module/video/D;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mNormalHDRTargetState:Z

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/camera/module/VideoModule;->mBoostHandle:J

    iput-wide v3, p0, Lcom/android/camera/module/VideoModule;->mVideoStopBoostHandle:J

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mIsExiting:Z

    new-instance v3, Lcom/android/camera/module/VideoModule$a;

    invoke-direct {v3, p0}, Lcom/android/camera/module/VideoModule$a;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mTopConfigProtocol:LQ6/o1;

    new-instance v3, Lcom/android/camera/module/VideoModule$b;

    invoke-direct {v3, p0}, Lcom/android/camera/module/VideoModule$b;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mPicCallback:Lj9/a$j;

    new-instance v3, Lcom/android/camera/module/VideoModule$c;

    invoke-direct {v3, p0}, Lcom/android/camera/module/VideoModule$c;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mMicsBlockingListener:LF4/l;

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mVideoSaveCompleted:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mAbandonModuleCallbackCalled:Z

    new-instance v2, Lcom/android/camera/module/VideoModule$d;

    invoke-direct {v2, p0}, Lcom/android/camera/module/VideoModule$d;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoSaveCallback:Lk7/P$b;

    new-instance v2, Lcom/android/camera/module/VideoModule$e;

    invoke-direct {v2, p0}, Lcom/android/camera/module/VideoModule$e;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mDelayStopRecording:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/camera/module/video/r;->a()Lcom/android/camera/module/video/r;

    move-result-object v2

    iget-object v3, v2, Lcom/android/camera/module/video/r;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lcom/android/camera/module/video/r;->c:Lcom/android/camera/module/video/h;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LI4/f;

    invoke-direct {v3, v0}, LI4/f;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mFutureRecorder:Ljava/util/concurrent/Future;

    new-instance v1, LF1/w;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, LF1/w;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/video/u;

    iput-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    new-instance v1, LI4/n;

    invoke-direct {v1, v0}, LI4/n;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/video/E;

    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    new-instance v0, LH8/k;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LH8/k;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/video/AiAudioController;

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    invoke-direct {v1, v3}, Lcom/android/camera/module/video/AiAudioController;-><init>(Lcom/android/camera/module/video/u;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/video/AiAudioController;

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    new-instance v0, LE4/o;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LE4/o;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lfq/b$a;

    invoke-direct {v1}, Lfq/b$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfq/b$a;

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    new-instance v1, LT9/E;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, LT9/E;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/video/A;

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/camera/module/video/A;-><init>(Lcom/android/camera/module/video/E;Lcom/android/camera/module/video/u;Lfq/b$a;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/video/A;

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->z4()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lvr/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/module/video/A;->p:Lxm/v;

    if-nez v1, :cond_0

    new-instance v1, Lxm/v;

    invoke-direct {v1, p0}, Lxm/v;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v1, v0, Lcom/android/camera/module/video/A;->p:Lxm/v;

    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/camera/module/video/A;->p:Lxm/v;

    if-eqz v2, :cond_1

    iput-object v1, v2, Lxm/v;->a:Ljava/lang/ref/WeakReference;

    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/camera/module/video/A;->g:Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/android/camera/module/VideoModule$h;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-object v5, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/camera/module/VideoModule$h;->a:Ljava/lang/ref/WeakReference;

    iput-object v3, v1, Lcom/android/camera/module/VideoModule$h;->b:Landroid/os/Handler;

    iput-object v0, v1, Lcom/android/camera/module/VideoModule$h;->c:Lcom/android/camera/module/video/A;

    iput-object v4, v1, Lcom/android/camera/module/VideoModule$h;->d:Lcom/android/camera/module/video/u;

    iput-object v5, v1, Lcom/android/camera/module/VideoModule$h;->e:Lcom/android/camera/module/video/E;

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderListener:Lcom/android/camera/module/video/A$d;

    iput-object v1, v0, Lcom/android/camera/module/video/A;->j:Lcom/android/camera/module/VideoModule$h;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic Aq(Ljava/lang/String;LQ6/S0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$updateRecordingTimeUI$50(Ljava/lang/String;LQ6/S0;)V

    return-void
.end method

.method public static bridge synthetic Ar(Lcom/android/camera/module/VideoModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/VideoModule;->mAbandonModuleCallbackCalled:Z

    return p0
.end method

.method public static synthetic Bi(ILj9/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$applyAudio2micStatus$65(ILj9/a;)V

    return-void
.end method

.method public static synthetic Bq(Lcom/android/camera/module/VideoModule;ZLQ6/C;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->lambda$recheckAiAudioConfig$88(ZLQ6/C;)V

    return-void
.end method

.method public static bridge synthetic Br(Lcom/android/camera/module/VideoModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/VideoModule;->mNormalHDRTargetState:Z

    return p0
.end method

.method public static synthetic Ck()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/VideoModule;->lambda$notifyFirstFrameArrived$74()V

    return-void
.end method

.method public static synthetic Cl()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/VideoModule;->lambda$notifyFirstFrameArrived$81()V

    return-void
.end method

.method public static synthetic Cq(Lcom/android/camera/module/VideoModule;LQ6/C;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$onCameraOpened$1(LQ6/C;)V

    return-void
.end method

.method public static bridge synthetic Cr(Lcom/android/camera/module/VideoModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/VideoModule;->mPreMicsBlockingState:Z

    return p0
.end method

.method public static synthetic Di(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$onCameraOpened$0()V

    return-void
.end method

.method public static synthetic Dj(Lcom/android/camera/module/VideoModule;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$runContinuesVideoRecording$86(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic Dq()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/VideoModule;->lambda$notifyFirstFrameArrived$79()V

    return-void
.end method

.method public static bridge synthetic Dr(Lcom/android/camera/module/VideoModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartDegree:I

    return p0
.end method

.method public static synthetic Ei(Ljava/lang/String;LQ6/l1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$alertExcludeScreenRecoder$19(Ljava/lang/String;LQ6/l1;)V

    return-void
.end method

.method public static synthetic Eq(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$performKeyClicked$82(LQ6/d;)V

    return-void
.end method

.method public static bridge synthetic Er(Lcom/android/camera/module/VideoModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/VideoModule;->mVideoCaptureEnable:Z

    return p0
.end method

.method public static synthetic Fq(Lcom/android/camera/module/VideoModule;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$runContinuesVideoRecording$87(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic Fr(Lcom/android/camera/module/VideoModule;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->isMaxFileSizeReached:Z

    return-void
.end method

.method public static synthetic Gq(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$directRecordingWhenModeChanged$17()V

    return-void
.end method

.method public static bridge synthetic Gr(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mPreMicsBlockingState:Z

    return-void
.end method

.method public static synthetic Hq(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$notifyFirstFrameArrived$69()V

    return-void
.end method

.method public static bridge synthetic Hr(Lcom/android/camera/module/VideoModule;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSaveCompleted:Z

    return-void
.end method

.method public static synthetic Iq(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$onSingleTapUp$53(LQ6/t0;)V

    return-void
.end method

.method public static bridge synthetic Ir(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->configCaptureAnim()V

    return-void
.end method

.method public static synthetic Jo(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$checkLapseError$14()V

    return-void
.end method

.method public static synthetic Jq(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$onInactive$15()V

    return-void
.end method

.method public static bridge synthetic Jr(Lcom/android/camera/module/VideoModule;[BII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/module/VideoModule;->genVideoCover([BIIZ)V

    return-void
.end method

.method public static synthetic Kj(Lcom/android/camera/module/VideoModule;LQ6/V0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$prepareRecordingUI$20(LQ6/V0;)V

    return-void
.end method

.method public static synthetic Kq(Lcom/android/camera/module/VideoModule;Lj9/a;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->lambda$initRecordingSetting$30(Lj9/a;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic Kr(Lcom/android/camera/module/VideoModule;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->recheckAiAudioConfig(Z)V

    return-void
.end method

.method public static synthetic Lq(Lcom/android/camera/module/VideoModule;LV6/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$onStartRecorderSucceed$32(LV6/b;)V

    return-void
.end method

.method public static bridge synthetic Lr(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseAiAudio()V

    return-void
.end method

.method public static synthetic Mq(Lcom/android/camera/module/VideoModule;Landroidx/fragment/app/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$initRecordingSetting$25(Landroidx/fragment/app/l;)V

    return-void
.end method

.method public static bridge synthetic Mr(Lcom/android/camera/module/VideoModule;Lo7/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/android/camera/module/VideoModule;->saveVideo(ZZLo7/a;)Landroid/net/Uri;

    return-void
.end method

.method public static synthetic Nh(LQ6/d;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$notifyFirstFrameArrived$72(LQ6/d;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Nq(LQ6/n1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$stopVideoRecording$36(LQ6/n1;)V

    return-void
.end method

.method public static synthetic Oq(LQ6/n1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$notifyFirstFrameArrived$76(LQ6/n1;)V

    return-void
.end method

.method public static synthetic Pq()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/VideoModule;->lambda$notifyFirstFrameArrived$77()V

    return-void
.end method

.method public static synthetic Qq(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$onStartRecorderSucceed$33(LQ6/l1;)V

    return-void
.end method

.method public static synthetic Rh(Lcom/android/camera/module/VideoModule;Lj9/a;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->lambda$initRecordingSetting$28(Lj9/a;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Rq(Lcom/android/camera/module/VideoModule;LN6/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$prepareRecordingUI$23(LN6/f;)V

    return-void
.end method

.method public static synthetic Sq(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$onShutterButtonLongClickCancel$6(LQ6/d;)V

    return-void
.end method

.method public static synthetic Tq(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$startVideoRecordingIfNeeded$16()V

    return-void
.end method

.method public static synthetic Ul(Lcom/android/camera/module/VideoModule;LQ6/L;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$stopVideoRecording$37(LQ6/L;)V

    return-void
.end method

.method public static synthetic Uq(Lr2/B0;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$trackProVideoInfo$44(Lr2/B0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Vq(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$onCameraOpened$2()V

    return-void
.end method

.method public static synthetic Wj(Lcom/android/camera/module/VideoModule;Landroidx/fragment/app/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$checkLapseError$13(Landroidx/fragment/app/l;)V

    return-void
.end method

.method public static synthetic Wm(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$notifyFirstFrameArrived$75(Z)V

    return-void
.end method

.method public static synthetic Wq(Lcom/android/camera/module/VideoModule;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$captureAnim$56(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic Xi(Lj9/e;Lj9/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$onCapabilityChanged$64(Lj9/e;Lj9/a;)V

    return-void
.end method

.method public static synthetic Xk(Lcom/android/camera/module/VideoModule;ZLjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->lambda$runContinuesVideoRecording$85(ZLjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Xm(Lcom/android/camera/module/VideoModule;LQ6/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$updateAutoHibernationFirstRecordingTime$68(LQ6/g;)V

    return-void
.end method

.method public static synthetic Xn(Landroidx/fragment/app/l;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$takeVideoSnapShoot$55(Landroidx/fragment/app/l;)V

    return-void
.end method

.method public static synthetic Xq(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$stopVideoRecording$34(LQ6/l1;)V

    return-void
.end method

.method public static synthetic Yi(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$useBackToStopRecording$10(LQ6/l1;)V

    return-void
.end method

.method public static synthetic Yq(LQ6/C;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$onNewUriArrived$61(LQ6/C;)V

    return-void
.end method

.method public static synthetic Zm(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$onShutterButtonLongClickCancel$4(LQ6/d;)V

    return-void
.end method

.method public static synthetic Zq(Lcom/android/camera/module/VideoModule;LV6/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$prepareRecordingUI$21(LV6/b;)V

    return-void
.end method

.method private alertExcludeScreenRecoder(I)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/module/VideoModule;->getVideoQualityDisplayString(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LV9/E;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LV9/E;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private applyAudio2micStatus()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAudio2micStatus"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LR3/c;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LR3/c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "applyAudio2micStatus: !cameraCapabilities.isPresent()"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj9/e;

    if-eqz v0, :cond_3

    sget-object v1, Lga/A0;->I3:Lga/D0;

    invoke-virtual {v1}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->G(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->t(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->i0(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/w;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "applyAudio2micStatus 2mic status: "

    invoke-static {v0, v3}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LF1/L1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LF1/L1;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/android/camera/features/mode/capture/p;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/camera/features/mode/capture/p;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method public static synthetic ar(LQ6/C;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$trySaveVidoeFile$49(LQ6/C;)V

    return-void
.end method

.method public static synthetic br(LS6/e;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$onStartRecordButtonClick$12(LS6/e;)V

    return-void
.end method

.method private calculateCodecFlip()I
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/camera/module/video/A;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v2, Lj6/a;

    iget v2, v2, Lj6/a;->c:I

    invoke-static {}, LK2/e;->u()Z

    if-eqz v2, :cond_0

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_2

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_0

    const/16 v0, 0x10e

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "calculateCodecFlip: unknown orientation = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->c:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->o0()I

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private calculationPreviewSize(II)Landroid/util/Size;
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isNeedResetPreviewSize()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    if-nez v0, :cond_1

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_1
    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_2
    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x2d0

    goto :goto_0

    :cond_3
    const/16 v0, 0x438

    :goto_0
    int-to-float v1, v0

    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ge p1, v1, :cond_4

    if-ge p2, v0, :cond_4

    move p2, v0

    move p1, v1

    :cond_4
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "the size width is : "

    const-string v1, ", height is : "

    invoke-static {p1, p2, v0, v1}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private cameraLabsDumpIspNdd()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isLabOptionsVisible"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/d;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v1, "pref_video_dump_ndd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getNddFrameNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "setprop vendor.debug.ndd.prv_ready "

    invoke-static {v0, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "exec cmd, command: "

    invoke-static {v1, v0}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, LEw/k;->f(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private captureAnim(Z)V
    .locals 2

    if-eqz p1, :cond_2

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S4()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, LQ6/S0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LF1/r1;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LF1/r1;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->configCaptureAnim()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isPurePreview()Z

    move-result p1

    sget-object v0, Ltu/a;->c:Ltu/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p1

    new-instance v0, LCs/F;

    invoke-direct {v0, p0}, LCs/F;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lru/k;->h(Lru/k$a;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->getCameraRotation()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lru/k;->O(Ltu/a;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private captureIntentRelated()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->i:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->e()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v1, v1, Lcom/android/camera/module/video/E;->i:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->j()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->i:Lo7/a;

    invoke-direct {p0, v2, v2, v0}, Lcom/android/camera/module/VideoModule;->saveVideo(ZZLo7/a;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mIntentVideoUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onMediaRecorderReleased: outputUri="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mIntentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mIntentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/h;

    const/4 v3, 0x6

    invoke-direct {v1, p0, v3}, LCs/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mIntentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LR3/c;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, LR3/c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoBase;->doReturnToCaller(Z)V

    return-void

    :cond_2
    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->showAlert()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->q:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/camera/module/X;->g9()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, LQ6/s;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/K;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LEs/K;-><init>(IB)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private checkLapseError()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->e:Ljava/lang/String;

    const-string v1, "fast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->e:Ljava/lang/String;

    const-string v1, "film_exposuredelay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-boolean v1, v0, Lcom/android/camera/module/video/E;->d:Z

    if-eqz v1, :cond_2

    iget v0, v0, Lcom/android/camera/module/video/E;->b:I

    const/16 v1, 0x3e8

    add-int/2addr v0, v1

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f0

    if-le v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LV9/W4;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LV9/W4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private checkRecordButtonCondition()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "checkRecordButtonCondition: mMediaRecorderWorking"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/r;->mInStartingFocusRecording:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "checkRecordButtonCondition: mInStartingFocusRecording"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mWaitingShutterSoundFinish:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "checkRecordButtonCondition: mWaitingShutterSoundFinish"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkCallingState()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Z0()V

    invoke-static {}, Lk7/K;->p()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private checkStopButtonCondition()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lj6/j;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->l0()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "checkStopButtonCondition: camera is abnormal"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isSATTargetZooming()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "checkStopButtonCondition: video record check sat fallback"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    return v1
.end method

.method private checkStopInvalid(Z)Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Lcom/android/camera/module/VideoBase;->mWaitingShutterSoundFinish:Z

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "skip stopVideoRecording & remove startVideoRecording"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPrepareRecording:Z

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->checkRecordTimeValid(Z)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method public static synthetic cl()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/VideoModule;->lambda$onShutterButtonLongClickCancel$5()V

    return-void
.end method

.method private configCaptureAnim()V
    .locals 4

    invoke-static {}, LK2/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const v0, 0x3f333333    # 0.7f

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    sget-object v1, Ltu/d;->R:Ltu/d;

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x0

    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lru/k;->t(Ltu/d;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic cr(Ljava/lang/String;Lj9/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$updateExposureTime$60(Ljava/lang/String;Lj9/a;)V

    return-void
.end method

.method private directRecordingWhenModeChanged()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mQuickVideo:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, LHu/e;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, LHu/e;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, LAr/d;->g(Lio/reactivex/v;Ljava/lang/Runnable;J)Lio/reactivex/disposables/b;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private doStop(Z)V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lj6/j;->d1(Z)V

    invoke-static {}, LN6/f;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LM6/m;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, LM6/m;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object v0

    invoke-virtual {v0}, LBr/e;->l()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object v0

    invoke-interface {v0}, Lf9/a;->u2()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updatePostProcessingStatus()V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/camera/module/video/u;->i:Z

    iput-boolean v1, v0, Lcom/android/camera/module/video/u;->f:Z

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v3, LCc/l;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, LCc/l;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v3}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->trackFluencyVideoStop()V

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doStop: camera2Proxy="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lj9/a;->p1()V

    :cond_1
    invoke-static {}, Lr5/a;->a()Lr5/a;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Lr5/a;->a:Lea/a;

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v3, v3, Lcom/android/camera/module/video/u;->q:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-wide v5, v5, Lcom/android/camera/module/video/u;->c:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x5dc

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v5, "doStop: timeValid: "

    invoke-static {v5, v4, v3}, LF1/t2;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v5

    iget-object v5, v5, Lu6/f;->a:Lu6/b;

    iget v5, v5, Lu6/b;->a:I

    iget-object v6, v4, Lcom/android/camera/module/video/A;->j:Lcom/android/camera/module/VideoModule$h;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onRecorderStop, module: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/android/camera/module/VideoModule$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "RecorderControllerStateListener"

    invoke-static {v8, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v6

    iget v7, v6, Lu2/Q;->u:I

    invoke-virtual {v6, v7}, Lu2/Q;->E(I)I

    move-result v6

    const/16 v7, 0xe3

    if-ne v6, v7, :cond_4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v7

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v8

    invoke-virtual {v8}, Lu6/f;->f()I

    move-result v8

    invoke-virtual {v7, v8}, Lu6/f;->O(I)Lj9/e;

    move-result-object v7

    invoke-static {v7}, Lj9/f;->u2(Lj9/e;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v2

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    if-eqz v7, :cond_5

    iget-object v8, v4, Lcom/android/camera/module/video/A;->e:Lcom/android/camera/module/video/E;

    iget v8, v8, Lcom/android/camera/module/video/E;->v:I

    goto :goto_3

    :cond_5
    const/16 v8, 0xa0

    :goto_3
    sget-object v9, LJe/c$b;->a:LJe/c;

    iget-object v10, v9, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_6

    invoke-static {v6}, Lcom/android/camera/data/data/m;->B(I)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v2

    goto :goto_4

    :cond_6
    move v6, v1

    :goto_4
    iget-object v7, v9, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v7}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->J4()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v4, Lcom/android/camera/module/video/A;->e:Lcom/android/camera/module/video/E;

    iget v7, v7, Lcom/android/camera/module/video/E;->b:I

    invoke-static {v7}, Lcom/android/camera/data/data/r;->f(I)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v2

    goto :goto_5

    :cond_7
    move v7, v1

    :goto_5
    if-nez v6, :cond_8

    if-eqz v7, :cond_9

    :cond_8
    iget-object v6, v4, Lcom/android/camera/module/video/A;->e:Lcom/android/camera/module/video/E;

    invoke-static {v5, v6}, Lcom/android/camera/module/video/A;->n(ILcom/android/camera/module/video/E;)I

    move-result v6

    iget-object v7, v4, Lcom/android/camera/module/video/A;->e:Lcom/android/camera/module/video/E;

    iget v7, v7, Lcom/android/camera/module/video/E;->b:I

    invoke-static {v8, v7, v6}, LF1/u4;->b(III)V

    :cond_9
    new-instance v6, Lcom/android/camera/module/video/x;

    invoke-direct {v6, v4, v5, v3}, Lcom/android/camera/module/video/x;-><init>(Lcom/android/camera/module/video/A;IZ)V

    invoke-static {v6}, Lio/reactivex/w;->a(Lio/reactivex/z;)Lio/reactivex/internal/operators/single/a;

    move-result-object v3

    sget-object v5, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    invoke-virtual {v3, v5}, Lio/reactivex/w;->e(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/reactivex/w;->c(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/l;

    move-result-object v0

    new-instance v3, LF1/c;

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, LF1/c;-><init>(Ljava/lang/Object;I)V

    new-instance v5, LF1/A2;

    const/4 v6, 0x3

    invoke-direct {v5, v4, v6}, LF1/A2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3, v5}, Lio/reactivex/w;->subscribe(Lio/reactivex/functions/d;Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "doStop: fromRelease: "

    const-string v4, ", isPurePreview: "

    invoke-static {v3, v4, p1}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isPurePreview()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isActivityPaused: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v2

    goto :goto_6

    :cond_a
    move v4, v1

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isPurePreview()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->restartPreviewSession()V

    :goto_7
    sget-object v0, Lcom/android/camera/module/video/i$b;->a:Lcom/android/camera/module/video/i;

    iget v3, v0, Lcom/android/camera/module/video/i;->b:I

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_c

    const/16 v4, 0xa4

    if-eq v3, v4, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/d;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/d;

    invoke-virtual {v3}, Lr2/d;->q()Z

    move-result v3

    if-nez v3, :cond_d

    iget-boolean v3, v0, Lcom/android/camera/module/video/i;->g:Z

    if-eqz v3, :cond_e

    :cond_d
    invoke-virtual {v0}, Lcom/android/camera/module/video/i;->c()V

    :cond_e
    :goto_8
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->doVideoInfoTrack()V

    invoke-static {}, LF1/i0;->a()LF1/i0;

    move-result-object v0

    invoke-virtual {v0}, LF1/i0;->b()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->exitSavePowerMode()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->exitAutoHibernationRelated()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startBluetoothSco()V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0, v1}, LF1/l4;->f(IZ)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0, v1}, LF1/l4;->c(IZ)V

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->trigerScanFile(Z)V

    if-eqz p1, :cond_f

    invoke-virtual {p0, v2}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    :cond_f
    return-void
.end method

.method private doStopUI()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    iget-boolean v1, v0, Lcom/android/camera/module/video/D;->a:Z

    if-eqz v1, :cond_0

    invoke-static {}, LQ6/g1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LE3/i;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, LE3/i;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/D;->a(I)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LE3/n;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, LE3/n;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->reCheckFastMotionConfig()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->recheckAiAudioConfig(Z)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/m0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/m0;-><init>(Lcom/android/camera/module/VideoModule;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic dq(Lcom/android/camera/module/VideoModule;LQ6/l1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$doStopUI$38(LQ6/l1;)V

    return-void
.end method

.method public static synthetic dr(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$onCameraPickerClicked$89()V

    return-void
.end method

.method public static synthetic ep(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$resumeRecording$58(LQ6/l1;)V

    return-void
.end method

.method public static synthetic er(LQ6/i0;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$onStartRecordButtonClick$11(LQ6/i0;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private exitAutoHibernationRelated()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget-boolean v0, v0, Lj6/a;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->exitAutoHibernation()V

    invoke-static {}, LQ6/g;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/D0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/D0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private forceOISOn()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v0, v0, Lj9/i0;->e2:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/camera/data/data/m;->n()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/camera/data/data/m;->n()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isDoviHdrEisSupported()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic fr(Landroidx/fragment/app/l;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$captureIntentRelated$46(Landroidx/fragment/app/l;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private genVideoCover([BIIZ)V
    .locals 16
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isEnableVideoPreviewThumbnail"
        type = 0x0
    .end annotation

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;->supportVideoCover()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;->isEnableVideoPreviewThumbnail()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v1, v1, Lcom/android/camera/module/video/E;->n:Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v2}, Lj6/f;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v2, v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "onPreviewPixelsRead E , path = "

    invoke-static {v3, v1}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;->needMirrorForCover()Z

    move-result v9

    iget-object v2, v0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget v2, v2, Lcom/android/camera/module/video/u;->l:I

    if-eqz p4, :cond_3

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, LJe/c;->d()V

    :cond_3
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-static {v5, v6, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;->isEnableVideoPreviewThumbnail()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p4, :cond_5

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v5, Lr2/Q;

    invoke-virtual {v3, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/Q;

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v5

    invoke-virtual {v3, v5}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "2.39x1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, LQg/f;->b(Landroid/graphics/Bitmap;ZFZZZ)Landroid/graphics/Bitmap;

    move-result-object v10

    :cond_4
    :goto_1
    move v7, v2

    move-object v6, v10

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v2, v2, Lcom/android/camera/module/video/E;->t:I

    goto :goto_1

    :goto_2
    const-string v2, "black"

    invoke-static {v6, v2}, LQg/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewPixelsRead\uff0c bitmap invalid."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    const/4 v8, 0x0

    const/16 v12, 0x3a

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v12}, Lvr/j;->o(Landroid/graphics/Bitmap;IFZZZI)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v5, Ls2/a;

    invoke-virtual {v3, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls2/a;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ls2/a;->q(I)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    sget-boolean v7, LJe/d;->i:Z

    if-eqz v7, :cond_7

    move v7, v8

    goto :goto_3

    :cond_7
    move v7, v4

    :goto_3
    invoke-virtual {v3, v5}, Ls2/a;->q(I)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez p4, :cond_8

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;->isEnableVideoPreviewThumbnail()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    move v8, v4

    :goto_4
    or-int v3, v7, v8

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v5, "genVideoCover: need hdr2sdr"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lyu/c;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "HDR10ThumbnailUtil"

    invoke-direct {v3, v5, v7}, Lyu/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x0

    filled-new-array {v5}, [Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v8, LWr/a;

    new-instance v9, Lwu/j;

    new-instance v10, LKp/t;

    const/4 v11, 0x3

    invoke-direct {v10, v11, v2, v5}, LKp/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "processHdr2SdrSync"

    invoke-direct {v9, v10, v2}, Lwu/j;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v8, v9}, LWr/a;-><init>(Ljava/lang/Runnable;)V

    iget-object v2, v3, Lyu/c;->b:Lcom/xiaomi/renderengine/gl/GlHandlerThread;

    if-nez v2, :cond_9

    const-string v2, "PictureRenderEngine"

    const-string v8, "postToGL: GL thread is null"

    invoke-static {v2, v8}, Lcom/xiaomi/renderengine/log/LogRE;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    iget-object v2, v2, Lcom/xiaomi/renderengine/gl/GlHandlerThread;->a:Lcom/xiaomi/renderengine/gl/GlHandlerThread$a;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lvr/U;->a()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v9, 0x7d0

    invoke-virtual {v8, v2, v9, v10}, LWr/a;->a(Landroid/os/Handler;J)Z

    :cond_a
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "processHdr2SdrSync: return result:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v7, v2, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lyu/c;->f()V

    aget-object v2, v5, v4

    if-nez v2, :cond_b

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "processhdr2Sdr,bitmap is null."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_b
    const-string v3, "<this>"

    invoke-static {v2, v3}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x64

    invoke-static {v3, v2}, Lvr/j;->g(ILandroid/graphics/Bitmap;)[B

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result v5

    if-eqz v5, :cond_d

    sget-boolean v5, LJe/c;->k:Z

    sget-object v5, LJe/c$b;->a:LJe/c;

    iget-object v5, v5, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->g6()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v3}, Lrf/a;->c([B)Lrf/b;

    move-result-object v5

    invoke-static {}, LMb/d;->c()[B

    move-result-object v7

    iget-object v8, v5, Lrf/b;->h:Luf/i;

    const-class v9, Luf/e;

    invoke-virtual {v8, v9, v7}, Luf/i;->a(Ljava/lang/Class;[B)V

    sget-object v7, Lk7/d;->b:Ljava/lang/Long;

    invoke-static {v5, v3}, Lrf/a;->g(Lrf/b;[B)[B

    move-result-object v5

    if-eqz v5, :cond_c

    move-object v3, v5

    goto :goto_6

    :cond_c
    new-array v5, v4, [Ljava/lang/Object;

    const-string v7, "ExifToolBuild"

    const-string/jumbo v8, "write exif error, exifJpegData is null"

    invoke-static {v7, v8, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_6
    iget-object v5, v0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x46

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "video_cover_data"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v3, "video_path"

    invoke-virtual {v7, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, v0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v2, "onPreviewPixelsRead X , path = "

    invoke-static {v2, v1}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_7
    return-void
.end method

.method private getExcludeScreenRecorderQualityFps()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getVideoQuality()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getVideoFrameRate()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->isHighSpecVideo(II)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Lr2/j1;->g(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getNddFrameNumber()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mNddFrameNumber:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string/jumbo v0, "vendor.debug.ndd.frame_number"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lur/g;->e(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mNddFrameNumber:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mNddFrameNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method private getOnTagsListener(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)Lcom/android/camera/module/VideoBase$e;
    .locals 9

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget-object v0, v0, Lcom/android/camera/module/video/A;->e:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->i:Lo7/a;

    iget-object v8, v0, Lo7/a;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isEnableVideoPreviewThumbnail()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->isThumbnailUpdated(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->B:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/android/camera/module/y0;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/module/y0;-><init>(Lcom/android/camera/module/VideoModule;Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;ZZLjava/lang/String;)V

    return-object v1
.end method

.method private getOrientationAtRecordStart()I
    .locals 1

    invoke-static {}, LK2/e;->y()Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    if-eqz v0, :cond_0

    iget p0, p0, Lj6/a;->b:I

    return p0

    :cond_0
    iget p0, p0, Lj6/a;->c:I

    return p0
.end method

.method private getQuality()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v1, v0, Lcom/android/camera/module/video/E;->b:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/video/E;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0xa

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v0}, Lcom/android/camera/module/video/E;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v2, 0xd

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "getQuality quality = "

    invoke-static {v2, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private getTextOfShowTime(JJ)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v0}, Lcom/android/camera/module/video/E;->j()Z

    move-result v0

    const/4 v6, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 p2, 0xa4

    if-ne p1, p2, :cond_0

    move p1, v6

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    iget-object p2, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    const-wide/16 v0, 0x3e8

    div-long v0, p3, v0

    iget-object p2, p2, Lfq/b$a;->a:Lfq/b;

    iput-wide v0, p2, Lfq/b;->k:J

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iget-boolean p0, p0, Lj6/a;->e:Z

    if-eqz p0, :cond_2

    invoke-static {}, LQ6/g;->a()Ljava/util/Optional;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    move v3, v6

    goto :goto_2

    :cond_2
    move v3, p1

    :goto_2
    const/4 v4, 0x0

    const/16 v0, 0x10

    move v5, v3

    move-wide v1, p3

    invoke-static/range {v0 .. v5}, LAg/b;->c(IJZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    move-wide v1, p3

    iget-object p3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object p3, p3, Lcom/android/camera/module/video/E;->e:Ljava/lang/String;

    const-string p4, "fast"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string p4, "film_exposuredelay"

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object p3, p3, Lcom/android/camera/module/video/E;->e:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v1, v2}, LAg/b;->b(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    iget-object p3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v0, p3, Lcom/android/camera/module/video/E;->k:I

    int-to-double v0, v0

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v3, 0xa9

    if-eq v2, v3, :cond_7

    iget-object p3, p3, Lcom/android/camera/module/video/E;->e:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_4

    :cond_6
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {p0}, Lcom/android/camera/module/video/E;->d()I

    move-result p0

    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/camera/module/video/H;->k(JID)J

    move-result-wide v2

    const/4 v5, 0x0

    const/16 v1, 0x10

    invoke-static/range {v1 .. v6}, LAg/b;->c(IJZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {p0}, Lcom/android/camera/module/video/E;->d()I

    move-result p0

    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/camera/module/video/H;->k(JID)J

    move-result-wide p0

    invoke-static {p0, p1}, LAg/b;->b(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic gr(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$notifyFirstFrameArrived$73(LQ6/d;)V

    return-void
.end method

.method public static synthetic hr(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$resetFocusState$48(LQ6/t0;)V

    return-void
.end method

.method private initBluetoothSco()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBluetoothHeadsetMic"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, La2/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/d;->b()V

    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-static {p0, v0}, LF1/l4;->f(IZ)V

    return-void
.end method

.method private initFutureRecorder()Z
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string v0, "onCameraOpened: wait recorder cost "

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mFutureRecorder:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mFutureRecorder:Ljava/util/concurrent/Future;

    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/video/n;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mFutureRecorder:Ljava/util/concurrent/Future;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v5

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initFutureRecorder failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v1

    :goto_1
    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {v3}, Lcom/android/camera/module/video/AiAudioController;->e()Z

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {v4}, Lcom/android/camera/module/video/AiAudioController;->b()[I

    move-result-object v4

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    iget-object v6, v6, Lcom/android/camera/module/video/AiAudioController;->b:LI1/a;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, LI1/a;->f()F

    move-result v6

    :goto_2
    invoke-virtual {v0, v1, v3, v4, v6}, Lcom/android/camera/module/video/A;->u(IZ[IF)LSp/q;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v5, Lcom/android/camera/module/video/n;->b:LSp/q;

    invoke-virtual {v0, v1}, LSp/q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-virtual {v1}, Lcom/android/camera/module/video/A;->m()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCameraOpened: preparedParam = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v5, Lcom/android/camera/module/video/n;->b:LSp/q;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onCameraOpened: currentParam = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_3
    return v2
.end method

.method private initRecorder()Z
    .locals 12

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initFutureRecorder()Z

    move-result v0

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "initRecorder: success = "

    invoke-static {v3, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object v0

    new-instance v4, LS3/d;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v5}, LS3/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/camera/module/video/E;->s:J

    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    new-instance v4, Lo7/a;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lo7/a;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/camera/module/video/E;->i:Lo7/a;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object v0

    new-instance v4, LD4/b;

    const/16 v5, 0xf

    invoke-direct {v4, p0, v5}, LD4/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->o0()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v5, Lj6/a;

    iget v5, v5, Lj6/a;->c:I

    invoke-static {v4, v5}, LBw/i;->I(II)I

    move-result v4

    iput v4, v0, Lcom/android/camera/module/video/E;->t:I

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v4, Lr2/d;

    invoke-virtual {v0, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/d;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget v5, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v5}, Lr2/d;->p(I)Z

    move-result v0

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->d0()Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v6

    check-cast v6, Lj6/a;

    iget v6, v6, Lj6/a;->c:I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object v7

    invoke-interface {v7}, Lf9/a;->a1()F

    move-result v7

    iput-boolean v0, v4, Lcom/android/camera/module/video/A;->r:Z

    iput-boolean v5, v4, Lcom/android/camera/module/video/A;->s:Z

    iput v6, v4, Lcom/android/camera/module/video/A;->t:I

    iput v7, v4, Lcom/android/camera/module/video/A;->u:F

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v4, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v4, Lj6/a;

    iget v4, v4, Lj6/a;->c:I

    iput v4, v0, Lcom/android/camera/module/video/E;->u:I

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/module/video/A;->o(ZLcom/android/camera/module/video/AiAudioController;Landroid/content/Context;IZ)Lcom/android/camera/module/video/n;

    move-result-object v0

    iget-boolean v4, v0, Lcom/android/camera/module/video/n;->c:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/camera/module/video/n;->b:LSp/q;

    iget v4, v4, LSp/q;->h:I

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mBitRate:J

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v4, v4, Lcom/android/camera/module/video/E;->j:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/camera/module/VideoModule;->mBitRate:J

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initRecorder, init result fail, set a bitrate: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/camera/module/VideoModule;->mBitRate:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-boolean v0, v0, Lcom/android/camera/module/video/n;->c:Z

    invoke-static {}, Lcom/android/camera/module/video/r;->a()Lcom/android/camera/module/video/r;

    move-result-object v4

    new-instance v5, Lcom/android/camera/module/video/h;

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget-object v8, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v9, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    iget-object v11, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    const/4 v6, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/android/camera/module/video/h;-><init>(Ljava/util/concurrent/Future;Lcom/android/camera/module/video/A;Lcom/android/camera/module/video/E;Lcom/android/camera/module/video/u;Lfq/b$a;Lcom/android/camera/module/video/AiAudioController;)V

    iget-object v6, v4, Lcom/android/camera/module/video/r;->b:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iput-object v5, v4, Lcom/android/camera/module/video/r;->c:Lcom/android/camera/module/video/h;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onCameraOpened: prepare recorder cost "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v5}, LF1/q2;->b(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getOrientationAtRecordStart()I

    move-result v1

    sget-object v2, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v3, Lcom/android/camera/module/n0;

    invoke-direct {v3, v1}, Lcom/android/camera/module/n0;-><init>(I)V

    invoke-static {v2, v3}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iput v1, p0, Lcom/android/camera/module/video/u;->l:I

    return v0

    :cond_3
    return v1
.end method

.method private initRecordingSetting(Lj9/a;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "initRecordingSetting: "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string/jumbo v2, "start_record_init_setting"

    invoke-virtual {v0, v2}, LF6/q;->q(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initBluetoothSco()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/module/VideoModule;->aiAudioV3State(ZLcom/android/camera/module/video/AiAudioController;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v0}, Lcom/android/camera/module/video/E;->a()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LEs/v;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, LEs/v;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/camera/module/video/D;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iput-object v3, v0, Lcom/android/camera/module/video/E;->B:[B

    new-instance v3, Lo7/a;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lo7/a;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/camera/module/video/E;->i:Lo7/a;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LH3/e;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v4}, LH3/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->o0()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v4, Lj6/a;

    iget v4, v4, Lj6/a;->c:I

    invoke-static {v3, v4}, LBw/i;->I(II)I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/video/E;->t:I

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->isMaxFileSizeReached:Z

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mAsyncInitRecorder:Z

    new-instance v0, Lcom/android/camera/module/s0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/s0;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lio/reactivex/internal/operators/single/i;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/single/i;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    invoke-virtual {v1, v0}, Lio/reactivex/w;->e(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/m;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    const-string/jumbo v3, "scheduler is null"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lio/reactivex/internal/operators/single/o;

    invoke-direct {v3, v1, v2}, Lio/reactivex/internal/operators/single/o;-><init>(Lio/reactivex/w;Lio/reactivex/v;)V

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    invoke-virtual {v3, v1}, Lio/reactivex/w;->c(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/l;

    move-result-object v1

    new-instance v3, Lio/reactivex/internal/operators/single/d;

    invoke-direct {v3, v1}, Lio/reactivex/internal/operators/single/d;-><init>(Lio/reactivex/w;)V

    new-instance v1, Lcom/android/camera/module/t0;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/module/t0;-><init>(Lcom/android/camera/module/VideoModule;Lj9/a;)V

    new-instance v4, Lio/reactivex/internal/operators/single/k;

    invoke-direct {v4, v3, v1}, Lio/reactivex/internal/operators/single/k;-><init>(Lio/reactivex/w;Lio/reactivex/functions/e;)V

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mExcludeScreenRecorderQualityFps:I

    if-lez v1, :cond_2

    new-instance v1, Lcom/android/camera/module/u0;

    invoke-direct {v1, p0}, Lcom/android/camera/module/u0;-><init>(Lcom/android/camera/module/VideoModule;)V

    new-instance v3, Lio/reactivex/internal/operators/single/i;

    invoke-direct {v3, v1}, Lio/reactivex/internal/operators/single/i;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v3, v0}, Lio/reactivex/w;->e(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/m;

    move-result-object v0

    new-instance v1, Lio/reactivex/internal/operators/single/o;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/single/o;-><init>(Lio/reactivex/w;Lio/reactivex/v;)V

    invoke-virtual {v1, v2}, Lio/reactivex/w;->c(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/l;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/v0;

    invoke-direct {v1, p0, v4}, Lcom/android/camera/module/v0;-><init>(Lcom/android/camera/module/VideoBase;Ljava/lang/Object;)V

    new-instance v4, Lio/reactivex/internal/operators/single/g;

    invoke-direct {v4, v0, v1}, Lio/reactivex/internal/operators/single/g;-><init>(Lio/reactivex/w;Lio/reactivex/functions/e;)V

    :cond_2
    invoke-virtual {v4, v2}, Lio/reactivex/w;->c(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/l;

    move-result-object v0

    new-instance v1, Lio/reactivex/internal/operators/single/d;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/single/d;-><init>(Lio/reactivex/w;)V

    new-instance v0, Lcom/android/camera/module/w0;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/w0;-><init>(Lcom/android/camera/module/VideoModule;Lj9/a;)V

    invoke-virtual {v1, v0}, Lio/reactivex/w;->subscribe(Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mStartRecordDisposable:Lio/reactivex/disposables/b;

    return-void
.end method

.method public static synthetic ir(Lcom/android/camera/module/VideoModule;LQ6/L;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$prepareRecordingUI$22(LQ6/L;)V

    return-void
.end method

.method private is60FPSSupported()Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v1, v1, Lcom/android/camera/module/video/E;->b:I

    invoke-static {v1, v0}, Lj9/f;->P0(ILj9/e;)Z

    move-result v1

    invoke-static {v0}, Lj9/f;->S0(Lj9/e;)Z

    move-result v2

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget p0, p0, Lcom/android/camera/module/video/E;->b:I

    const/16 v3, 0x3c

    invoke-static {p0, v3, v0}, Lj9/f;->g1(IILj9/e;)Z

    move-result p0

    if-nez v1, :cond_1

    if-nez v2, :cond_1

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

.method private isBackCameraSwitchingAllowedDuringZooming()Z
    .locals 4

    invoke-static {}, LK2/e;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/E;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/E;

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->D()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v3, 0xa2

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_4

    :cond_1
    invoke-static {v2}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v1, v2}, Lv2/E;->o(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v2, v1}, Lcom/android/camera/data/data/m;->r0(ILj9/e;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v1, v1, Lcom/android/camera/module/video/u;->f:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v1, v1, Lcom/android/camera/module/video/u;->a:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    iget v0, v0, Lj9/a;->a:I

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->y()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->S()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    invoke-static {p0}, Lj9/f;->X2(Lj9/e;)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isBlockVideoLivePhotoSnapshot(J)Z
    .locals 10

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    iget v2, v2, Lj9/a;->a:I

    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/E;->f(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v1}, Lcom/android/camera/module/video/E;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1}, Lcom/android/camera/module/X;->Nh()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "takeVideoSnapShoot, live photo snapshot image saver full "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/n;

    invoke-direct {p1, v0}, LEs/n;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v3

    :cond_1
    sget-object v1, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    iget v1, v1, Lcom/android/camera/c;->c:I

    if-gt v1, v3, :cond_3

    sget-boolean v1, Lcom/android/camera/b;->k:Z

    sget-object v1, Lcom/android/camera/b$a;->a:Lcom/android/camera/b;

    iget v1, v1, Lcom/android/camera/b;->g:I

    const/16 v4, 0x1c2

    if-le v1, v4, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x12c

    goto :goto_1

    :cond_3
    :goto_0
    const-wide/16 v4, 0x3e8

    :goto_1
    iget-wide v6, p0, Lcom/android/camera/module/VideoModule;->mLastVideoSnapshotTime:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    sub-long v6, p1, v6

    cmp-long v1, v6, v4

    if-ltz v1, :cond_5

    :cond_4
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mLivePhotoSnapshotInFlight:I

    if-le v1, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "takeVideoSnapShoot, live photo snapshot too fast, interval: "

    const-string v6, ", slot: "

    invoke-static {v4, v5, v1, v6}, LF1/r0;->h(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mLastVideoSnapshotTime:J

    sub-long/2addr p1, v4

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", live shot in flight: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/VideoModule;->mLivePhotoSnapshotInFlight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_6
    return v2
.end method

.method private isDoviHdrEisSupported()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isDoviHdrEisSupported"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->n1(Lj9/e;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "isDoviHdrEisSupported: "

    invoke-static {v1, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private isEnableVideoPreviewThumbnail()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isEnableVideoPreviewThumbnail"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isPurePreview()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->z4()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->k2()Z

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v2, v2, Lcom/android/camera/module/video/E;->h:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/module/video/B;->a:Ljava/util/ArrayList;

    invoke-static {v3, v2}, LQu/u;->p0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v2}, Lcom/android/camera/module/video/E;->h()Z

    move-result v2

    xor-int/2addr v2, v1

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v2}, Lcom/android/camera/module/video/E;->i()Z

    move-result v2

    xor-int/2addr v2, v1

    and-int/2addr v0, v2

    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result v2

    xor-int/2addr v2, v1

    and-int/2addr v0, v2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result p0

    xor-int/2addr p0, v1

    and-int/2addr p0, v0

    return p0

    :cond_2
    return v0
.end method

.method private isFrontCameraSwitchingAllowedDuringZooming()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/l0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/l0;

    iget-boolean v2, v1, Lv2/l0;->b:Z

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Lv2/l0;->j:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v2, 0xa2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v1, v1, Lcom/android/camera/module/video/u;->f:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean p0, p0, Lcom/android/camera/module/video/u;->a:Z

    if-nez p0, :cond_0

    if-eqz v0, :cond_0

    iget p0, v0, Lj9/a;->a:I

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->y()I

    move-result v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isHighSpecVideo(II)Z
    .locals 3

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->U0()[I

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    aget v1, p0, v0

    const/4 v2, 0x1

    if-gt p1, v1, :cond_2

    if-ne p1, v1, :cond_1

    aget p0, p0, v2

    if-lt p2, p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return v0

    :cond_2
    :goto_1
    return v2
.end method

.method private isInRecording()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean p0, p0, Lcom/android/camera/module/video/u;->f:Z

    if-nez p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isNeedResetPreviewSize()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v2, Lv2/F0;

    invoke-virtual {p0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/F0;

    invoke-virtual {p0}, Lv2/F0;->b()I

    move-result p0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p0, v2, :cond_1

    return v3

    :cond_1
    invoke-static {v0, v3}, Lcom/android/camera/data/data/m;->L(IZ)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lx4/s;

    invoke-direct {p0}, Lx4/s;-><init>()V

    invoke-static {v0, p0}, Lcom/android/camera/data/data/j;->w0(ILx4/s;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v3

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/data/data/E;->L(I)Z

    move-result v2

    if-nez p0, :cond_3

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/android/camera/data/data/m;->E(I)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v1
.end method

.method private isSATTargetZooming()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSatFallbackEnable"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->H()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->shouldCheckSatFallbackState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isScreenRecorderRecording()Z
    .locals 5

    const-string v0, "content://screenrecorder/recorder_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/module/k0;->a()Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/module/l0;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "isScreenRecorderRecording, screen recorder provider not exist."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "miui_screen_recorder_state"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "isScreenRecorderRecording, state: "

    invoke-static {v1, v3}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const/4 p0, 0x1

    if-ne v1, p0, :cond_3

    return p0

    :cond_3
    return v2
.end method

.method private isStreamingRequested()Z
    .locals 0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    iget-object p0, p0, Lu2/Q;->w:Ljava/lang/String;

    invoke-static {p0}, Lvr/m;->o(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isThumbnailUpdated(Landroid/net/Uri;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->of()LF1/w4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->of()LF1/w4;

    move-result-object v0

    iget-object v0, v0, LF1/w4;->a:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1

    :catch_0
    move-exception v2

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isThumbnailUpdated: failed to parse content URI id, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static synthetic jr(Lcom/android/camera/module/VideoModule;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isScreenRecorderRecording()Z

    move-result p0

    return p0
.end method

.method public static synthetic kr(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$prepareRecordingUI$24()V

    return-void
.end method

.method private static synthetic lambda$alertExcludeScreenRecoder$19(Ljava/lang/String;LQ6/l1;)V
    .locals 8

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1413d3

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v4, 0xbb8

    const-string v6, "record_exclude_screen_recorder_quality"

    const/4 v3, 0x0

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, LQ6/l1;->B2(IJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$applyAudio2micStatus$65(ILj9/a;)V
    .locals 0

    invoke-virtual {p1, p0}, Lj9/a;->a(I)V

    return-void
.end method

.method private synthetic lambda$captureAnim$56(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0, p1}, Lcom/android/camera/module/X;->gc(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$captureIntentRelated$45(Landroidx/fragment/app/l;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mIntentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_captured_video_uri"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "captureIntentRelated: saved uri to intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mIntentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static lambda$captureIntentRelated$46(Landroidx/fragment/app/l;)Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lvr/m;->e:Ljava/util/Set;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "android.intent.extra.quickCapture"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$captureIntentRelated$47(LQ6/s;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/s;->Sg(Landroid/view/View;)V

    return-void
.end method

.method private lambda$checkLapseError$13(Landroidx/fragment/app/l;)V
    .locals 1

    invoke-static {p1}, Lq8/q0;->a(Landroid/app/Activity;)Lq8/q0;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->c:I

    const v0, 0x7f14134b

    invoke-virtual {p1, v0, p0}, Lq8/q0;->b(II)V

    return-void
.end method

.method private synthetic lambda$checkLapseError$14()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/y;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, LC4/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$directRecordingWhenModeChanged$17()V
    .locals 1

    const/16 v0, 0xaa

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick(I)Z

    return-void
.end method

.method private synthetic lambda$doStop$39(LN6/f;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-interface {p1, v0, p0}, LN6/f;->Qb(Landroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$doStop$40()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->updateZoomButtonForRecording(Z)V

    return-void
.end method

.method private lambda$doStopUI$38(LQ6/l1;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    invoke-interface {p1}, LQ6/l1;->wa()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/video/D;->c:Ljava/lang/String;

    return-void
.end method

.method private lambda$getOnTagsListener$18(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_1

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v0

    iget-object v0, v0, Lh6/b;->a:Lh6/a;

    invoke-interface {v0}, Lh6/a;->c()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v0

    iget-object v0, v0, Lh6/b;->a:Lh6/a;

    invoke-interface {v0}, Lh6/a;->f()Landroid/location/Location;

    move-result-object v0

    :goto_0
    invoke-static {}, LQg/e;->b()I

    move-result v1

    new-instance v2, Lk7/P$a;

    invoke-direct {v2}, Lk7/P$a;-><init>()V

    iput-object p1, v2, Lk7/b$a;->a:Landroid/net/Uri;

    iput-object p2, v2, Lk7/P$a;->l:Ljava/lang/String;

    iput-object p3, v2, Lk7/P$a;->n:Landroid/content/ContentValues;

    iput-boolean p4, v2, Lk7/P$a;->o:Z

    iput-boolean p5, v2, Lk7/P$a;->p:Z

    iput-object v0, v2, Lk7/b$a;->j:Landroid/location/Location;

    iput v1, v2, Lk7/P$a;->q:I

    iput-object p6, v2, Lk7/P$a;->m:Ljava/lang/String;

    iput-object p7, v2, Lk7/P$a;->r:Ljava/util/List;

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mVideoSaveCallback:Lk7/P$b;

    iput-object p1, v2, Lk7/P$a;->s:Lk7/P$b;

    invoke-virtual {v2}, Lk7/P$a;->a()Lk7/P;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lk7/i;->u(Lk7/P;Z)Landroid/net/Uri;

    :cond_1
    return-void
.end method

.method private synthetic lambda$initRecorder$7(Landroidx/fragment/app/l;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoBase;->parseIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$initRecorder$8(Landroidx/fragment/app/l;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->i:Lo7/a;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result p0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lo7/a;->h(ZLandroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$initRecorder$9(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "video_rotation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LQa/i;->f(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initRecordingSetting$25(Landroidx/fragment/app/l;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoBase;->parseIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$initRecordingSetting$26(Landroidx/fragment/app/l;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->i:Lo7/a;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result p0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lo7/a;->h(ZLandroid/content/Intent;)V

    return-void
.end method

.method private lambda$initRecordingSetting$27()Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "initRecordingSetting: initializeRecorder start"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/d;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/d;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v3}, Lr2/d;->p(I)Z

    move-result v0

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->d0()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object v4

    check-cast v4, Lj6/a;

    iget v4, v4, Lj6/a;->c:I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object v5

    invoke-interface {v5}, Lf9/a;->a1()F

    move-result v5

    iput-boolean v0, v2, Lcom/android/camera/module/video/A;->r:Z

    iput-boolean v3, v2, Lcom/android/camera/module/video/A;->s:Z

    iput v4, v2, Lcom/android/camera/module/video/A;->t:I

    iput v5, v2, Lcom/android/camera/module/video/A;->u:F

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v2, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v2, Lj6/a;

    iget v2, v2, Lj6/a;->c:I

    iput v2, v0, Lcom/android/camera/module/video/E;->u:I

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/4 v8, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/module/video/A;->o(ZLcom/android/camera/module/video/AiAudioController;Landroid/content/Context;IZ)Lcom/android/camera/module/video/n;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initRecordingSetting: initializeRecorder end, succeed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/camera/module/video/n;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p0

    const-string/jumbo v1, "start_record_init_setting"

    invoke-virtual {p0, v1}, LF6/q;->g(Ljava/lang/String;)J

    iget-boolean p0, v0, Lcom/android/camera/module/video/n;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private lambda$initRecordingSetting$28(Lj9/a;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mAsyncInitRecorder:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isEnableVideoPreviewThumbnail()Z

    move-result v2

    iget-object v1, v1, Lcom/android/camera/module/video/A;->a:LSp/p;

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, LSp/p;->j(Z)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v2, p1, Lj9/a;->a:I

    invoke-virtual {p2, v2, v1}, Lcom/android/camera/module/video/A;->x(ILcom/android/camera/module/video/E;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startAIAudio()V

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->startCameraDeviceRecording(Lj9/a;)V

    sget-object p0, Lcom/android/camera/module/video/i$b;->a:Lcom/android/camera/module/video/i;

    iget p1, p0, Lcom/android/camera/module/video/i;->b:I

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa4

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, LF1/D2;->f:LF1/D2;

    iget-boolean p1, p1, LF1/D2;->d:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/android/camera/b;->k:Z

    sget-object p1, Lcom/android/camera/b$a;->a:Lcom/android/camera/b;

    iget p1, p1, Lcom/android/camera/b;->f:I

    const/4 v1, 0x2

    if-gt p1, v1, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/d;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/d;

    invoke-static {}, LU6/c;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lr2/d;->q()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/video/i;->b()V

    invoke-static {}, Lj7/a;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "50"

    invoke-static {v1}, Lj7/a;->i(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    iput-boolean p2, p0, Lcom/android/camera/module/video/i;->g:Z

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "DecibelController"

    const-string p2, "neededReleaseWhenRecording, set need restart audio map"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$initRecordingSetting$29(Lio/reactivex/w;Ljava/lang/Boolean;)Lio/reactivex/A;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/android/camera/module/VideoModule;->mExcludeScreenRecorderQualityFps:I

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->alertExcludeScreenRecoder(I)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/w;->b(Ljava/lang/Object;)Lio/reactivex/internal/operators/single/j;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private lambda$initRecordingSetting$30(Lj9/a;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onRecordStarted()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderFail()V

    sget-boolean p2, LJe/c;->k:Z

    sget-object p2, LJe/c$b;->a:LJe/c;

    iget-object p2, p2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->J4()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget p2, p2, Lcom/android/camera/module/video/E;->b:I

    invoke-static {p2}, Lcom/android/camera/data/data/r;->f(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->notifyThermal4KRecordStop(Lj9/a;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$isBlockVideoLivePhotoSnapshot$54(Landroidx/fragment/app/l;)V
    .locals 2

    invoke-static {p0}, Lq8/q0;->a(Landroid/app/Activity;)Lq8/q0;

    move-result-object p0

    const v0, 0x7f1413e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lq8/q0;->b(II)V

    return-void
.end method

.method private synthetic lambda$notifyFirstFrameArrived$69()V
    .locals 1

    sget-object v0, Le2/m;->h:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method private static synthetic lambda$notifyFirstFrameArrived$70(LQ6/n1;)V
    .locals 1

    const/16 v0, 0xc2

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-interface {p0, v0}, LQ6/n1;->T0([I)V

    return-void
.end method

.method private static synthetic lambda$notifyFirstFrameArrived$71()V
    .locals 3

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LE4/c;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, LE4/c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$notifyFirstFrameArrived$72(LQ6/d;)Ljava/lang/Boolean;
    .locals 1

    invoke-interface {p0}, LQ6/d;->ng()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, LQ6/d;->y7()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$notifyFirstFrameArrived$73(LQ6/d;)V
    .locals 0

    invoke-interface {p0}, LQ6/d;->qo()V

    return-void
.end method

.method private static synthetic lambda$notifyFirstFrameArrived$74()V
    .locals 3

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LD8/h;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, LD8/h;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private lambda$notifyFirstFrameArrived$75(Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/w;->w()I

    move-result v1

    invoke-static {v1}, LO0/A;->z(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    iget v1, v1, Lv2/D0;->F:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->onShutterButtonLongClickCancel(Z)V

    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v1, v1, Lcom/android/camera/module/video/u;->r:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->takeVideoSnapShoot(Z)Z

    :cond_2
    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LU4/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LU4/c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->S()I

    move-result v0

    goto :goto_1

    :cond_3
    const/16 v0, 0x14

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->onStartRecordButtonClick(I)V

    if-nez p1, :cond_5

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    const/4 v0, 0x3

    iput v0, p1, Lv2/D0;->F:I

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance p1, LFs/e;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, LFs/e;-><init>(I)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    iget v0, v0, Lv2/D0;->F:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const-wide/16 v0, 0x1e0

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x64

    :goto_2
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method private static synthetic lambda$notifyFirstFrameArrived$76(LQ6/n1;)V
    .locals 0

    invoke-interface {p0}, LQ6/n1;->S1()V

    return-void
.end method

.method private static synthetic lambda$notifyFirstFrameArrived$77()V
    .locals 3

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/G;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, LEs/G;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$notifyFirstFrameArrived$78(LQ6/n1;)V
    .locals 2

    const/16 v0, 0xc1

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, LQ6/n1;->ga([IZ)V

    return-void
.end method

.method private static synthetic lambda$notifyFirstFrameArrived$79()V
    .locals 4

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/s;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LC4/s;-><init>(IB)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$notifyFirstFrameArrived$80()V
    .locals 3

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/n;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LCs/n;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$notifyFirstFrameArrived$81()V
    .locals 3

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/o;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, LEs/o;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onCameraAbnormal$67()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)Z

    return-void
.end method

.method private synthetic lambda$onCameraOpened$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v1, v0, Lcom/android/camera/module/video/E;->D:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/camera/module/video/E;->D:I

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[VideoSwitch] onCameraOpened: sensorSwitch = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget p0, p0, Lcom/android/camera/module/video/E;->D:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onCameraOpened$1(LQ6/C;)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, p0, Lcom/android/camera/module/video/u;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/video/u;->a()Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, v1, p0}, LQ6/C;->c4(IZ)V

    return-void
.end method

.method private lambda$onCameraOpened$2()V
    .locals 6

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->E5()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH4/v;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, LH4/v;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->updateZoomButtonForRecording(Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[VideoSwitch] onCameraOpened: updateZoomButtonForRecording"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/camera/module/video/A;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "[VideoSwitch] runContinuesVideoRecording: isPreviousSwitch = "

    const-string v4, ",current camera id = "

    invoke-static {v0, v3, v4}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->o0()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->calculateCodecFlip()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "RecorderController"

    const-string/jumbo v5, "updateCodecMirror"

    invoke-static {v4, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, v0, Lcom/android/camera/module/video/A;->a:LSp/p;

    invoke-interface {v0, v2}, LSp/p;->z(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "failed to pause media recorder"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    if-eqz v0, :cond_2

    check-cast v0, Lj6/a;

    iget v0, v0, Lj6/a;->c:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartDegree:I

    :cond_2
    return-void
.end method

.method private synthetic lambda$onCameraPickerClicked$89()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->p1()V

    return-void
.end method

.method private static synthetic lambda$onCapabilityChanged$64(Lj9/e;Lj9/a;)V
    .locals 0

    invoke-virtual {p1, p0}, Lj9/a;->f0(Lj9/e;)V

    return-void
.end method

.method private synthetic lambda$onInactive$15()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->pauseRecording(Z)V

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v2, v1, Lcom/android/camera/module/video/E;->D:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/camera/module/video/E;->D:I

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[VideoSwitch] onInactive: sensorSwitch = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget p0, p0, Lcom/android/camera/module/video/E;->D:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onNewUriArrived$61(LQ6/C;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, LQ6/C;->s3(Lcom/android/camera/fragment/film/FilmItem;Z)V

    return-void
.end method

.method private static synthetic lambda$onNewUriArrived$62()V
    .locals 3

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH4/K;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LH4/K;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onRecordStarted$31(LQ6/V0;)V
    .locals 0

    invoke-interface {p1}, LQ6/V0;->onStart()V

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/video/D;->a(I)V

    return-void
.end method

.method private static synthetic lambda$onShutterButtonLongClickCancel$3(LQ6/s;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/s;->Sg(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onShutterButtonLongClickCancel$4(LQ6/d;)V
    .locals 0

    invoke-interface {p0}, LQ6/d;->qo()V

    return-void
.end method

.method private static synthetic lambda$onShutterButtonLongClickCancel$5()V
    .locals 3

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/e;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LEs/e;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onShutterButtonLongClickCancel$6(LQ6/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/d;->N0(Z)V

    return-void
.end method

.method private static synthetic lambda$onSingleTapUp$53(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/t0;->Wp(Z)V

    return-void
.end method

.method private static synthetic lambda$onStartRecordButtonClick$11(LQ6/i0;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x7

    const/16 v1, 0xfb

    invoke-interface {p0, v0, v1}, LQ6/i0;->d(II)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onStartRecordButtonClick$12(LS6/e;)V
    .locals 0

    invoke-interface {p0}, LS6/e;->Sh()V

    return-void
.end method

.method private synthetic lambda$onStartRecorderSucceed$32(LV6/b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->E0()Landroid/util/Range;

    move-result-object p0

    invoke-interface {p1, p0}, LV6/b;->w5(Landroid/util/Range;)V

    return-void
.end method

.method private static synthetic lambda$onStartRecorderSucceed$33(LQ6/l1;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/l1;->Tj(Z)V

    return-void
.end method

.method private static synthetic lambda$performKeyClicked$82(LQ6/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/d;->W9(Z)V

    return-void
.end method

.method private static synthetic lambda$performKeyClicked$83(LQ6/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/d;->W9(Z)V

    return-void
.end method

.method private synthetic lambda$prepareRecordingUI$20(LQ6/V0;)V
    .locals 0

    invoke-interface {p1, p0}, LQ6/V0;->pe(Lcom/android/camera/module/W;)V

    return-void
.end method

.method private synthetic lambda$prepareRecordingUI$21(LV6/b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->E0()Landroid/util/Range;

    move-result-object p0

    invoke-interface {p1, p0}, LV6/b;->w5(Landroid/util/Range;)V

    return-void
.end method

.method private synthetic lambda$prepareRecordingUI$22(LQ6/L;)V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActualCameraId()I

    move-result p0

    invoke-interface {p1, v0, p0, v1}, LQ6/L;->kg(IIZ)V

    return-void
.end method

.method private synthetic lambda$prepareRecordingUI$23(LN6/f;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-interface {p1, v0, p0}, LN6/f;->Gc(Landroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$prepareRecordingUI$24()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/4 v0, 0x0

    invoke-static {p0, v0}, LF1/l4;->c(IZ)V

    return-void
.end method

.method private static synthetic lambda$reCheckFastMotionConfig$42(Ljava/lang/Object;)V
    .locals 1

    check-cast p0, LQ6/C;

    const/4 v0, 0x0

    new-array v0, v0, [Z

    invoke-interface {p0, v0}, LQ6/C;->Ic([Z)V

    return-void
.end method

.method private synthetic lambda$recheckAiAudioConfig$88(ZLQ6/C;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, LQ6/C;->kn(Z)V

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-interface {p2, p0, v0}, LQ6/C;->Rd(IZ)V

    :cond_0
    return-void
.end method

.method private lambda$releaseResources$63(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "[WTP] releaseResources auto zoom: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/camera/module/video/i$b;->a:Lcom/android/camera/module/video/i;

    invoke-virtual {p1}, Lcom/android/camera/module/video/i;->b()V

    invoke-static {}, Lj7/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "50"

    invoke-static {p1}, Lj7/a;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/module/video/i$b;->a:Lcom/android/camera/module/video/i;

    invoke-virtual {p1}, Lcom/android/camera/module/video/i;->b()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mAvailableSpaceController:Lcom/android/camera/module/video/e;

    iget-object p1, p1, Lcom/android/camera/module/video/e;->b:LF1/w0;

    if-eqz p1, :cond_3

    iget-object v0, p1, LF1/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, LF1/w0;->e:Lvr/n;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lvr/n;->a()V

    const/4 v1, 0x0

    iput-object v1, p1, LF1/w0;->e:Lvr/n;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "CalculateAvailableSpace"

    const-string v1, "X: stopCalculate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_3
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string p1, "[WTP] releaseResources auto zoom: X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$resetFocusState$48(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, LQ6/t0;->ug(I)V

    return-void
.end method

.method private static synthetic lambda$resumeRecording$58(LQ6/l1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/l1;->og(Z)V

    return-void
.end method

.method private synthetic lambda$runContinuesVideoRecording$84()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[VideoSwitch] runContinuesVideoRecording step1"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Le2/m;->i:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$runContinuesVideoRecording$85(ZLjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[VideoSwitch] runContinuesVideoRecording: step2"

    invoke-static {p2, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->V()Lj9/a;

    move-result-object p2

    invoke-virtual {p2}, Lj9/a;->q0()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/module/VideoBase;->mRecordFlag:Z

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->resumeRecording()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iput-boolean v0, p0, Lcom/android/camera/module/video/u;->g:Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$runContinuesVideoRecording$86(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "[VideoSwitch] runContinuesVideoRecording: success"

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$runContinuesVideoRecording$87(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "[VideoSwitch] runContinuesVideoRecording: error"

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startVideoRecordingIfNeeded$16()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->S()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick(I)Z

    return-void
.end method

.method private static synthetic lambda$stopVideoRecording$34(LQ6/l1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/l1;->Tj(Z)V

    return-void
.end method

.method private synthetic lambda$stopVideoRecording$35()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->doStop(Z)V

    return-void
.end method

.method private static synthetic lambda$stopVideoRecording$36(LQ6/n1;)V
    .locals 2

    const/16 v0, 0xc1

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, LQ6/n1;->ga([IZ)V

    return-void
.end method

.method private synthetic lambda$stopVideoRecording$37(LQ6/L;)V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActualCameraId()I

    move-result p0

    invoke-interface {p1, v0, p0, v1}, LQ6/L;->kg(IIZ)V

    return-void
.end method

.method private lambda$takePreviewSnapShoot$57(IZLjava/lang/String;Ljava/lang/Integer;Lcom/android/camera/module/a0;Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 12

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "snapShotLiveshot: previewShot mRecorderController is null"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v3, v3, Lcom/android/camera/module/video/u;->r:Z

    if-eqz v3, :cond_1

    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/camera/module/video/A;->n:Lxm/t;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/android/camera/module/video/A;->o:J

    return-object v2

    :cond_1
    move-object/from16 v7, p5

    invoke-virtual {v0}, Lcom/android/camera/module/video/A;->l()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v0, v0, Lcom/android/camera/module/video/E;->u:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->E1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/j;->C1()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Lr5/a;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-virtual {v0}, Lcom/android/camera/module/video/A;->l()I

    move-result v3

    :cond_2
    move v6, v3

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "snapShotLiveshot: previewShot  livephotoOrientation = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " videoRotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-virtual {v4}, Lcom/android/camera/module/video/A;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " appRotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v4, v4, Lcom/android/camera/module/video/E;->u:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " timeStamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " quality = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isLivePhotoStarted = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v4, p0

    move v10, p1

    move v11, p2

    move-object v5, p3

    invoke-virtual/range {v4 .. v11}, Lcom/android/camera/module/video/A;->w(Ljava/lang/String;ILxm/t;JIZ)Z

    return-object v2
.end method

.method private static synthetic lambda$takeVideoSnapShoot$55(Landroidx/fragment/app/l;)V
    .locals 2

    invoke-static {p0}, Lq8/q0;->a(Landroid/app/Activity;)Lq8/q0;

    move-result-object p0

    const v0, 0x7f1413e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lq8/q0;->b(II)V

    return-void
.end method

.method private static lambda$trackProVideoInfo$44(Lr2/B0;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lr2/B0;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$trigerScanFile$43(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object p0, p0, Lcom/android/camera/module/video/E;->i:Lo7/a;

    invoke-virtual {p0}, Lo7/a;->d()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$trySaveVidoeFile$49(LQ6/C;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, LQ6/C;->s3(Lcom/android/camera/fragment/film/FilmItem;Z)V

    return-void
.end method

.method private synthetic lambda$updateAutoHibernationFirstRecordingTime$68(LQ6/g;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-object v0, v0, Lcom/android/camera/module/video/u;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mRecordingSecondTime:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, LQ6/g;->Eh(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static lambda$updateExposureTime$59(Lr2/B0;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lr2/B0;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateExposureTime$60(Ljava/lang/String;Lj9/a;)V
    .locals 2

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lj9/a;->C0(J)V

    return-void
.end method

.method private lambda$updateMotionDetectionRect$66(LQ6/a1;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Screen coordinate system   rect   =   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, LQ6/a1;->bd()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, LQ6/a1;->bd()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->translateRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "Stream coordinate system   rect   =   "

    invoke-static {p1, v1}, LCs/V;->c(Landroid/graphics/Rect;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object v0, p0, Lj9/h0;->a:Lj9/i0;

    if-eqz p1, :cond_0

    iput-object p1, v0, Lj9/i0;->f3:Landroid/graphics/Rect;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p1, v2

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMotionDetectionArea: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj9/h0;->a:Lj9/i0;

    iget-object v1, v1, Lj9/i0;->f3:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  , changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "CameraConfigManager"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lj9/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj9/v;-><init>(Lj9/h0;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method private lambda$updateRecordStateWhenStopRecording$41(LQ6/V0;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->k:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    invoke-interface {p1, p0}, LQ6/V0;->l7(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->e:Ljava/lang/String;

    const-string v1, "film_exposuredelay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean p0, p0, Lcom/android/camera/module/video/u;->q:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const/4 v0, 0x0

    iput v0, p0, Lv2/D0;->F:I

    :cond_1
    invoke-interface {p1}, LQ6/V0;->onFinish()V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$updateRecordingTimeUI$50(Ljava/lang/String;LQ6/S0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, LQ6/S0;->ol(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$updateRecordingTimeUI$51(Ljava/lang/String;LQ6/g;)V
    .locals 1

    const-string v0, ""

    invoke-interface {p1, p0, v0}, LQ6/g;->df(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private lambda$updateRecordingTimeUI$52(Ljava/lang/String;LQ6/l1;)V
    .locals 2

    invoke-interface {p2, p1}, LQ6/l1;->z(Ljava/lang/String;)V

    sget-boolean p2, LJe/c;->k:Z

    sget-object p2, LJe/c$b;->a:LJe/c;

    iget-object p2, p2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S4()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, LQ6/S0;->a()Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/android/camera/module/z0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/camera/module/z0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object p2, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p2, Lj6/a;

    iget-boolean p2, p2, Lj6/a;->e:Z

    if-eqz p2, :cond_2

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 p2, 0xa2

    if-eq p0, p2, :cond_1

    const/16 p2, 0xb4

    if-eq p0, p2, :cond_1

    const/16 p2, 0xa4

    if-eq p0, p2, :cond_1

    const/16 p2, 0xe3

    if-eq p0, p2, :cond_1

    const/16 p2, 0xd6

    if-eq p0, p2, :cond_1

    const/16 p2, 0xac

    if-ne p0, p2, :cond_2

    :cond_1
    invoke-static {}, LQ6/g;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/android/camera/features/mode/pro/rec/c;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/android/camera/features/mode/pro/rec/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$useBackToStopRecording$10(LQ6/l1;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f1411f3

    const-string/jumbo v2, "unknow"

    invoke-interface {p0, v0, v1, v2}, LQ6/l1;->Ue(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic li(Lcom/android/camera/module/VideoModule;Landroidx/fragment/app/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$captureIntentRelated$45(Landroidx/fragment/app/l;)V

    return-void
.end method

.method public static synthetic lk(Lcom/android/camera/module/VideoModule;Landroidx/fragment/app/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$initRecordingSetting$26(Landroidx/fragment/app/l;)V

    return-void
.end method

.method public static synthetic lp(Landroidx/fragment/app/l;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$isBlockVideoLivePhotoSnapshot$54(Landroidx/fragment/app/l;)V

    return-void
.end method

.method public static synthetic lr(Lcom/android/camera/module/VideoModule;LN6/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$doStop$39(LN6/f;)V

    return-void
.end method

.method public static synthetic mr(Lcom/android/camera/module/VideoModule;Landroidx/fragment/app/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$initRecorder$7(Landroidx/fragment/app/l;)V

    return-void
.end method

.method private needDisableEISAndOIS()Z
    .locals 8

    invoke-static {}, Lcom/android/camera/data/data/j;->C0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/j;->D0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isDoviHdrEisSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LF1/L1;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, LF1/L1;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LF1/M;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, LF1/M;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LV4/n;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, LV4/n;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LF1/L1;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, LF1/L1;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LI4/h;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, LI4/h;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LV9/L;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, LV9/L;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v3, :cond_2

    if-nez v4, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "videoStabilization: disabled EIS and OIS when HDR10+ and HDR are opened at the same time."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    return v2
.end method

.method private needMirrorForCover()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isEnableVideoPreviewThumbnail"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a6()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->d0()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xcf

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isEnableVideoPreviewThumbnail()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->z4()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/w;->Q()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic nk(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$trigerScanFile$43(Z)V

    return-void
.end method

.method public static synthetic nn(Lcom/android/camera/module/VideoModule;LQ6/V0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$onRecordStarted$31(LQ6/V0;)V

    return-void
.end method

.method private notifyThermal4KRecordStop(Lj9/a;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget p1, p1, Lj9/a;->a:I

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/android/camera/module/video/A;->n(ILcom/android/camera/module/video/E;)I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v0, v0, Lcom/android/camera/module/video/E;->v:I

    const/16 v1, 0xe3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lu6/f;->O(I)Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->u2(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v0, v0, Lcom/android/camera/module/video/E;->v:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget p0, p0, Lcom/android/camera/module/video/E;->b:I

    invoke-static {v0, p0, p1}, LF1/u4;->b(III)V

    return-void
.end method

.method public static synthetic nr(Lcom/android/camera/module/VideoModule;Ljava/lang/String;LQ6/l1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->lambda$updateRecordingTimeUI$52(Ljava/lang/String;LQ6/l1;)V

    return-void
.end method

.method private onCameraOpened()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "onCameraOpened: E"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xa2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoRecordingSwitch:Z

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v4, "[VideoSwitch] onCameraOpened: isVideoRecordingSwitch = "

    invoke-static {v4, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    iget v4, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v5

    const-class v6, Lv2/q0;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv2/q0;

    invoke-virtual {v5, v4}, Lv2/q0;->isSwitchOn(I)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/camera/module/video/D;->a:Z

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    iget v4, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->d0()Z

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/android/camera/data/data/j;->b0(IZ)LF1/j4;

    move-result-object v4

    iget-boolean v5, v4, LF1/j4;->a:Z

    if-eqz v5, :cond_1

    iget-boolean v4, v4, LF1/j4;->b:Z

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/j;->A1()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput-boolean v4, v1, Lcom/android/camera/module/video/D;->b:Z

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateAutoHibernation()V

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v1, v1, Lcom/android/camera/module/video/E;->b:I

    sget-object v4, Lcom/android/camera/data/data/r;->a:Ljava/util/HashSet;

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v5, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->b6()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lj9/e;->f()I

    move-result v5

    if-le v5, v1, :cond_6

    if-ne v1, v3, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1}, Lcom/android/camera/data/data/r;->f(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x3

    goto :goto_4

    :cond_4
    invoke-static {v1}, Lcom/android/camera/data/data/r;->f(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, 0x2

    :goto_4
    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->z3()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v1}, LPh/h;->b(I)V

    :cond_8
    const-wide/16 v4, 0xa2

    invoke-static {v4, v5}, LPh/h;->j(J)V

    :goto_5
    invoke-virtual {p0}, Lcom/android/camera/module/r;->initializeFocusManager()V

    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isVideoBokehEnabled()Z

    move-result v4

    invoke-interface {v1, v4}, Lj6/j;->U0(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateBeauty()V

    :cond_9
    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->n:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, LC4/L;

    const/16 v4, 0x8

    invoke-direct {v1, p0, v4}, LC4/L;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iput-boolean v3, v0, Lcom/android/camera/module/video/u;->o:Z

    :cond_a
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, LE3/m;

    const/4 v4, 0x6

    invoke-direct {v1, p0, v4}, LE3/m;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_6

    :cond_b
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initRecorder()Z

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iput-boolean v2, v0, Lcom/android/camera/module/video/u;->o:Z

    :goto_6
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    iget v4, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/camera/module/video/E;->k(Lj9/e;ILj6/j;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->isEnableScreenShot(Z)Z

    move-result v0

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "isDeparted"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onCameraOpened: X"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_c
    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->startCameraSession(Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAvailableSpaceController:Lcom/android/camera/module/video/e;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/camera/module/VideoModule;->mBitRate:J

    const/16 v7, 0xa4

    if-ne v1, v7, :cond_f

    iput-wide v5, v0, Lcom/android/camera/module/video/e;->a:J

    iget-object v1, v0, Lcom/android/camera/module/video/e;->b:LF1/w0;

    if-nez v1, :cond_d

    new-instance v1, LF1/w0;

    invoke-direct {v1, v4, v5, v6}, LF1/w0;-><init>(Landroid/content/Context;J)V

    iput-object v1, v0, Lcom/android/camera/module/video/e;->b:LF1/w0;

    iput-object v0, v1, LF1/w0;->b:LF1/w0$a;

    :cond_d
    iget-object v0, v0, Lcom/android/camera/module/video/e;->b:LF1/w0;

    if-eqz v0, :cond_10

    const-string v1, "CalculateAvailableSpace"

    const-string v4, "E: startCalculate"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, LF1/w0;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v4, v0, LF1/w0;->e:Lvr/n;

    if-eqz v4, :cond_e

    const/4 v5, 0x5

    iput v5, v4, Lvr/n;->c:I

    const/16 v5, 0x96

    iput v5, v4, Lvr/n;->h:I

    const v5, 0x7fffffff

    iput v5, v4, Lvr/n;->e:I

    new-instance v5, LF1/v0;

    invoke-direct {v5, v0}, LF1/v0;-><init>(LF1/w0;)V

    invoke-virtual {v4, v5}, Lvr/n;->d(Lio/reactivex/u;)V

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_8

    :cond_e
    :goto_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "CalculateAvailableSpace"

    const-string v1, "X: startCalculate"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :goto_8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_10
    :goto_9
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v1

    invoke-static {v0, v1}, LF1/l4;->d(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v1, v0, Lj9/e;->v1:Ljava/lang/Boolean;

    if-nez v1, :cond_13

    sget-object v1, Lga/w0;->P:Lga/D0;

    invoke-virtual {v1}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    sget v4, Lga/E0;->a:I

    iget-object v5, v0, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v5, v1, v4}, Lga/E0;->i(Landroid/hardware/camera2/CameraCharacteristics;Lga/D0;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isFovcSupported: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "CameraCapabilities"

    invoke-static {v6, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, v3, :cond_12

    move v1, v3

    goto :goto_b

    :cond_12
    move v1, v2

    :goto_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lj9/e;->v1:Ljava/lang/Boolean;

    :cond_13
    iget-object v0, v0, Lj9/e;->v1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    if-eqz v0, :cond_14

    goto :goto_c

    :cond_14
    move v3, v2

    :goto_c
    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mFovcEnabled:Z

    :cond_15
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onCameraOpened: X"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onRecordStarted()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    if-eqz v0, :cond_0

    check-cast v0, Lj6/a;

    iget v0, v0, Lj6/a;->c:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartDegree:I

    :cond_0
    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/W0;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, LF1/W0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    sget-object v1, LF6/a;->Q:LF6/a;

    sget-object v2, LF6/a;->P:LF6/a;

    filled-new-array {v1, v2}, [LF6/a;

    move-result-object v1

    invoke-virtual {v0, v1}, LF6/q;->s([LF6/a;)J

    const-string/jumbo v0, "start_videorecord_cost"

    invoke-static {v0}, LK7/l;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderSucceed()V

    invoke-static {}, Lcom/android/camera/data/data/E;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LQ6/x;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/S;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LCs/S;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H7()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/camera/module/VideoModule;->mBoostHandle:J

    invoke-virtual {v0, v1, v2}, LRh/c;->d(J)V

    :cond_2
    return-void
.end method

.method private onStartRecordButtonClick(I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->checkRecordButtonCondition()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0, p1}, Lj6/f;->N(I)V

    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/data/data/r;->d(I)J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mModuleIndex : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  ;timeDelayRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    const/4 v2, 0x1

    if-lez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v4

    invoke-static {}, Lcom/android/camera/module/d;->b()V

    if-eqz v4, :cond_3

    if-nez p1, :cond_2

    const-wide/16 v0, 0x12c

    move p1, v2

    :cond_2
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v5, "onStartRecordButtonClick: isMusicBackground, timeDelayRecord="

    invoke-static {v0, v1, v5}, LHs/a;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/camera/module/r;->playCameraSound(I)V

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object v3

    invoke-virtual {v3}, LBr/e;->l()V

    if-nez p1, :cond_4

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LH8/q;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, LH8/q;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, LS6/e;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LH3/c;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, LH3/c;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->q0()Lu6/q;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lu6/q;->A()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "onShutterButtonClick: startVideoRecording"

    invoke-static {v2, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/VideoBase;->delayTriggerShooting(J)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecording()V

    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait for autoFocus"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/camera/module/r;->mInStartingFocusRecording:Z

    iget-object v2, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x37

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    if-eqz p1, :cond_7

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/VideoBase;->delayTriggerShooting(J)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static synthetic oq(LQ6/s;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$captureIntentRelated$47(LQ6/s;)V

    return-void
.end method

.method public static synthetic or()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/VideoModule;->lambda$notifyFirstFrameArrived$71()V

    return-void
.end method

.method public static synthetic pr(LQ6/n1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$notifyFirstFrameArrived$78(LQ6/n1;)V

    return-void
.end method

.method private prepareRecordingUI()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "prepareRecordingUI: "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPrepareRecording:Z

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v2

    const-string/jumbo v3, "start_record_ui_prepare"

    invoke-virtual {v2, v3}, LF6/q;->q(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v4, LN1/c;

    const/4 v5, 0x7

    invoke-direct {v4, p0, v5}, LN1/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    invoke-virtual {v2, v1}, Lcom/android/camera/module/video/D;->a(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object v2

    invoke-interface {v2}, Lf9/a;->p0()V

    invoke-static {}, LV6/b;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v4, LF1/d1;

    const/16 v5, 0xb

    invoke-direct {v4, p0, v5}, LF1/d1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/data/data/m;->j0()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, LQ6/L;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v4, LF1/I;

    const/16 v5, 0x8

    invoke-direct {v4, p0, v5}, LF1/I;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v4, 0xa2

    const-string v5, "pref_banned_hw_ring_tip_shown_"

    if-eq v2, v4, :cond_2

    const/16 v4, 0xb4

    if-eq v2, v4, :cond_2

    const/16 v4, 0xac

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_3

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LE4/e;

    const/16 v4, 0x9

    invoke-direct {v2, v4}, LE4/e;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, LWh/a;->g()LWh/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v2}, LWh/a;->c()V

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1, v0}, Lj6/j;->d1(Z)V

    invoke-static {}, LN6/f;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LG4/g;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, LG4/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v1, LAp/e;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, LAp/e;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p0

    invoke-virtual {p0, v3}, LF6/q;->g(Ljava/lang/String;)J

    return-void
.end method

.method public static synthetic qk(Ljava/lang/String;LQ6/g;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$updateRecordingTimeUI$51(Ljava/lang/String;LQ6/g;)V

    return-void
.end method

.method public static synthetic qr(Lcom/android/camera/module/VideoModule;Landroidx/fragment/app/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$initRecorder$8(Landroidx/fragment/app/l;)V

    return-void
.end method

.method private reCheckFastMotionConfig()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-boolean p0, p0, Lcom/android/camera/module/video/E;->d:Z

    if-eqz p0, :cond_1

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->L0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LJe/c;->M0()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE4/K;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LE4/K;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method private readVideoPreferences()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    iget v1, v1, Lj9/a;->a:I

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v3, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v3}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->o0()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v5, Lj6/a;

    iget v5, v5, Lj6/a;->c:I

    invoke-static {v4, v5}, LBw/i;->I(II)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/module/video/E;->l(IILvr/m;I)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->checkLapseError()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget p0, p0, Lcom/android/camera/module/video/E;->f:I

    iget-object v0, v0, Lfq/b$a;->a:Lfq/b;

    iput p0, v0, Lfq/b;->h:I

    return-void
.end method

.method private recheckAiAudioConfig(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreMicsBlockingState:Z

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/D0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/camera/module/D0;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private releaseAiAudio()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/AiAudioController;->g(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/VideoModule;->aiAudioV3State(ZLcom/android/camera/module/video/AiAudioController;)V

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    iput-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->d:LF4/l;

    iput v1, p0, Lcom/android/camera/module/video/AiAudioController;->k:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->t0()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/video/AiAudioController;->f()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/video/AiAudioController;->b:LI1/a;

    if-eqz v2, :cond_3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/d;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/d;

    invoke-virtual {v2}, Lr2/d;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/video/AiAudioController;->b:LI1/a;

    invoke-virtual {v2, v1}, LI1/a;->l(Z)V

    :cond_1
    iput-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->d:LF4/l;

    iget-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->b:LI1/a;

    iget-boolean v2, p0, Lcom/android/camera/module/video/AiAudioController;->j:Z

    iput-boolean v1, p0, Lcom/android/camera/module/video/AiAudioController;->i:Z

    iput-boolean v1, p0, Lcom/android/camera/module/video/AiAudioController;->j:Z

    new-array p0, v1, [Ljava/lang/Object;

    const-string v3, "releaseAudioEffects"

    const-string v4, "AiAudioController"

    invoke-static {v4, v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_2

    const-string p0, "releaseAudioEffects: skip because audio effect not created"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v1, Lcom/android/camera/module/video/b;

    invoke-direct {v1, v0}, Lcom/android/camera/module/video/b;-><init>(LI1/a;)V

    invoke-static {p0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_3
    :goto_0
    return-void
.end method

.method private requestVideoCover()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->supportVideoCover()Z

    move-result v0

    sget-object v1, Ltu/c;->a:Ltu/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v1, Ltu/c;->b:Ltu/c;

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lru/k;->k(Ltu/c;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isEnableVideoPreviewThumbnail()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->z4()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lru/k;->k(Ltu/c;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private resetFocusState()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lu6/q;->l()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/b1;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, LF1/b1;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/VideoBase;->setVideoFocusMode(IZ)V

    const/16 v0, 0xe

    .line 7
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    :cond_1
    return-void
.end method

.method public static synthetic rr(LQ6/C;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$reCheckFastMotionConfig$42(Ljava/lang/Object;)V

    return-void
.end method

.method private runContinuesVideoRecording(Z)V
    .locals 4

    new-instance v0, Lio/reactivex/disposables/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mContinousRecordDisposable:Lio/reactivex/disposables/a;

    new-instance v1, Lcom/android/camera/module/o0;

    invoke-direct {v1, p0}, Lcom/android/camera/module/o0;-><init>(Lcom/android/camera/module/VideoModule;)V

    new-instance v2, Lio/reactivex/internal/operators/single/i;

    invoke-direct {v2, v1}, Lio/reactivex/internal/operators/single/i;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    invoke-virtual {v2, v1}, Lio/reactivex/w;->e(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/m;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {v1, v2}, Lio/reactivex/w;->c(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/l;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/p0;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/module/p0;-><init>(Lcom/android/camera/module/VideoModule;Z)V

    new-instance p1, Lio/reactivex/internal/operators/single/k;

    invoke-direct {p1, v1, v2}, Lio/reactivex/internal/operators/single/k;-><init>(Lio/reactivex/w;Lio/reactivex/functions/e;)V

    new-instance v1, LF1/z3;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LF1/z3;-><init>(Ljava/lang/Object;I)V

    new-instance v2, LF1/h2;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, LF1/h2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1, v2}, Lio/reactivex/w;->subscribe(Lio/reactivex/functions/d;Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/disposables/a;->d(Lio/reactivex/disposables/b;)Z

    return-void
.end method

.method private saveVideo(ZZLo7/a;)Landroid/net/Uri;
    .locals 5

    invoke-virtual {p3}, Lo7/a;->e()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mVideoSaveCompleted:Z

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v2, v2, Lcom/android/camera/module/video/E;->i:Lo7/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo7/a;->m(J)V

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "saveVideo: uri="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isFinal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isSync= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/LogK;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object p2, p3, Lo7/a;->d:Landroid/content/ContentValues;

    invoke-direct {p0, v0, v2, p2, p1}, Lcom/android/camera/module/VideoModule;->getOnTagsListener(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)Lcom/android/camera/module/VideoBase$e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->applyTags(Lcom/android/camera/module/VideoBase$e;)V

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsVideoRecordingSwitch:Z

    return-object v0

    :cond_1
    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object p1

    iget-object p1, p1, Lh6/b;->a:Lh6/a;

    invoke-interface {p1}, Lh6/a;->c()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object p1

    iget-object p1, p1, Lh6/b;->a:Lh6/a;

    invoke-interface {p1}, Lh6/a;->f()Landroid/location/Location;

    move-result-object p1

    :goto_0
    invoke-static {}, LQg/e;->b()I

    move-result p2

    new-instance v3, Lk7/P$a;

    invoke-direct {v3}, Lk7/P$a;-><init>()V

    iput-object v0, v3, Lk7/b$a;->a:Landroid/net/Uri;

    iput-object v2, v3, Lk7/P$a;->l:Ljava/lang/String;

    iget-object p3, p3, Lo7/a;->d:Landroid/content/ContentValues;

    iput-object p3, v3, Lk7/P$a;->n:Landroid/content/ContentValues;

    iput-boolean v1, v3, Lk7/P$a;->o:Z

    iput-boolean v1, v3, Lk7/P$a;->p:Z

    iput-object p1, v3, Lk7/b$a;->j:Landroid/location/Location;

    iput p2, v3, Lk7/P$a;->q:I

    iput-object v2, v3, Lk7/P$a;->m:Ljava/lang/String;

    iput-object v2, v3, Lk7/P$a;->r:Ljava/util/List;

    invoke-virtual {v3}, Lk7/P$a;->a()Lk7/P;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object p0

    invoke-virtual {p0, p1}, Lk7/i;->w(Lk7/P;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "saveVideo: failed to save "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/LogK;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private showPostProcessIfNeed()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean p0, p0, Lcom/android/camera/module/video/u;->k:Z

    if-eqz p0, :cond_0

    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LB9/c;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LB9/c;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public static synthetic sj()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/VideoModule;->lambda$notifyFirstFrameArrived$80()V

    return-void
.end method

.method public static synthetic sr(Lcom/android/camera/module/VideoModule;Lio/reactivex/internal/operators/single/k;Ljava/lang/Boolean;)Lio/reactivex/A;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->lambda$initRecordingSetting$29(Lio/reactivex/w;Ljava/lang/Boolean;)Lio/reactivex/A;

    move-result-object p0

    return-object p0
.end method

.method private startAIAudio()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "startAIAudio: "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string/jumbo v2, "start_record_start_ai_audio"

    invoke-virtual {v0, v2}, LF6/q;->q(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "video_rotation="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getOrientationAtRecordStart()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LQa/i;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getOrientationAtRecordStart()I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/video/u;->l:I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mMicsBlockingListener:LF4/l;

    iput-object v3, v0, Lcom/android/camera/module/video/AiAudioController;->d:LF4/l;

    iput v1, v0, Lcom/android/camera/module/video/AiAudioController;->k:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LI1/a;->h()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lj7/a;->e()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v3, v0, Lcom/android/camera/module/video/AiAudioController;->i:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/module/video/AiAudioController;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lj7/a;->g()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, v0, Lcom/android/camera/module/video/AiAudioController;->b:LI1/a;

    invoke-virtual {v0}, LI1/a;->z()V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v3, 0xa2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    iget v3, v0, Lcom/android/camera/module/video/AiAudioController;->p:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    iget v0, v0, Lcom/android/camera/module/video/AiAudioController;->q:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->c()Lj9/e;

    move-result-object v3

    invoke-static {v3, v1}, Lj9/f;->L0(Lj9/e;Z)F

    move-result v1

    iput v1, v0, Lcom/android/camera/module/video/AiAudioController;->p:F

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lj9/f;->L0(Lj9/e;Z)F

    move-result p0

    iput p0, v0, Lcom/android/camera/module/video/AiAudioController;->q:F

    :cond_3
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p0

    invoke-virtual {p0, v2}, LF6/q;->g(Ljava/lang/String;)J

    return-void
.end method

.method private startBluetoothSco()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBluetoothHeadsetMic"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/d;->a()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, La2/b;->b(I)V

    return-void
.end method

.method private startCameraDeviceRecording(Lj9/a;)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "startCameraDeviceRecording: "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string/jumbo v2, "start_record_device_record"

    invoke-virtual {v0, v2}, LF6/q;->q(Ljava/lang/String;)V

    sget-object v0, Le2/m;->i:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->trackFluencyVideoStart()V

    sget v0, Lcom/android/camera/module/Y;->a:I

    const/16 v3, 0xac

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lj9/a;->c1()V

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v3, 0xa9

    if-ne v0, v3, :cond_3

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->P3()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v3, Lr2/B0;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/B0;

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v3}, Lr2/B0;->t(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lj9/a;->j1(Z)V

    :goto_2
    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/data/data/E;->J0(IZ)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/E;->S(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/data/data/E;->I0(IZ)V

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v5, Lv2/q0;

    invoke-virtual {v3, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/q0;

    invoke-virtual {v3, v0}, Lv2/q0;->isSwitchOn(I)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/camera/module/video/D;->a:Z

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->o0()I

    move-result v0

    iget-object p1, p1, Lcom/android/camera/module/video/A;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iget v0, v0, Lj9/a;->a:I

    iput v0, p1, Lt2/j;->t:I

    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVideoRecording process done"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    iget v0, p1, Lu2/Q;->u:I

    invoke-virtual {p1, v0}, Lu2/Q;->E(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    iget-object v0, v0, Lu6/f;->a:Lu6/b;

    iget v0, v0, Lu6/b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {p1, v0, v3}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0xf

    invoke-static {v0, p1}, LPh/h;->l(I[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p1

    invoke-virtual {p1, v2}, LF6/q;->g(Ljava/lang/String;)J

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v0, Lr2/f0;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/f0;

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p1, v0}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/Q;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/Q;

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v2}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "[VideoSwitch] save quality = "

    invoke-static {v3, p1}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iput-object p1, v2, Lu2/Q;->p:Ljava/lang/String;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    iput-object v0, p1, Lu2/Q;->q:Ljava/lang/String;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result v0

    iput-boolean v0, p1, Lu2/Q;->s:Z

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iput-boolean v4, p1, Lcom/android/camera/module/video/u;->f:Z

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/data/data/j;->c(I)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    const-string p0, "null"

    :goto_3
    invoke-virtual {p1, p0}, Lfq/b$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private startVideoRecordingIfNeeded()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->directRecordingWhenModeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object v0

    invoke-virtual {v0}, Lvr/m;->c()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object v1

    iget-object v1, v1, Lvr/m;->a:Landroid/content/Intent;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "focus_not_required"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lvr/m;->r(Landroidx/fragment/app/l;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->z3()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LAp/f;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, LAp/f;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Q5()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "startVideoRecordingIfNeeded: reject by dialog. pause:%b"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private supportVideoCover()Z
    .locals 13

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v2, 0xb4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v4, Lv2/y0;

    invoke-virtual {v2, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/y0;

    invoke-virtual {v2, v1}, Lv2/y0;->isSwitchOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v2, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->A7()I

    move-result v2

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v4}, Lcom/android/camera/module/video/E;->h()Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v5}, Lcom/android/camera/module/video/E;->i()Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/m;->N()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isPurePreview()Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    and-int/lit8 v7, v2, 0x1

    if-lez v7, :cond_2

    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    move v7, v0

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_1
    and-int/lit8 v8, v2, 0x2

    if-lez v8, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    move v8, v0

    goto :goto_2

    :cond_3
    move v8, v3

    :goto_2
    and-int/lit8 v9, v2, 0x4

    if-lez v9, :cond_4

    if-eqz v6, :cond_4

    move v9, v0

    goto :goto_3

    :cond_4
    move v9, v3

    :goto_3
    and-int/lit8 v10, v2, 0x8

    if-lez v10, :cond_5

    move v10, v0

    goto :goto_4

    :cond_5
    move v10, v3

    :goto_4
    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_6

    if-eqz v6, :cond_6

    move v2, v0

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    if-eqz v9, :cond_9

    invoke-virtual {v1}, LJe/c;->e()Lwu/a$k;

    move-result-object v1

    iget-object v1, v1, Lwu/a$k;->a:Lwu/a;

    sget-object v6, Lwu/a;->f:Lwu/a$i;

    if-ne v1, v6, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {}, Lcom/android/camera/data/data/j;->C0()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/camera/data/data/j;->E0()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/camera/data/data/j;->D0()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v10, :cond_9

    :cond_8
    move v1, v0

    goto :goto_7

    :cond_9
    :goto_6
    move v1, v3

    :goto_7
    sget-wide v9, LQa/e;->a:J

    const-wide/16 v11, 0x8

    cmp-long v6, v9, v11

    if-gez v6, :cond_a

    if-nez v1, :cond_f

    if-nez v7, :cond_f

    if-nez v8, :cond_f

    if-eqz v2, :cond_e

    goto :goto_9

    :cond_a
    if-nez v7, :cond_b

    if-eqz v8, :cond_d

    :cond_b
    if-nez v1, :cond_f

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/data/data/m;->q0(I)Z

    move-result p0

    if-eqz p0, :cond_c

    if-nez v4, :cond_f

    :cond_c
    if-nez v5, :cond_f

    :cond_d
    if-eqz v2, :cond_e

    goto :goto_9

    :cond_e
    :goto_8
    return v3

    :cond_f
    :goto_9
    return v0
.end method

.method private takePreviewSnapShoot(Ljava/lang/String;IJ)V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "takePreviewSnapShoot\uff0ccameraState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->x0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, v1}, Lj6/j;->E(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    const/4 v1, -0x8

    invoke-virtual {v0, v1}, Lj9/h0;->X(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-virtual {v0}, Lcom/android/camera/module/video/A;->p()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->r:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v7, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v1

    :goto_1
    new-instance v3, Lcom/android/camera/module/a0;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mPicCallback:Lj9/a$j;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v6

    new-instance v8, Lcom/android/camera/module/r0;

    invoke-direct {v8, p0, p2, v7, p1}, Lcom/android/camera/module/r0;-><init>(Lcom/android/camera/module/VideoModule;IZLjava/lang/String;)V

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/module/a0;-><init>(Lj9/a$j;Lj9/a;Lk7/i;ZLcom/android/camera/module/r0;)V

    iput-wide p3, p0, Lcom/android/camera/module/VideoModule;->mLastVideoSnapshotTime:J

    if-eqz v7, :cond_3

    iget p2, p0, Lcom/android/camera/module/VideoModule;->mLivePhotoSnapshotInFlight:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/android/camera/module/VideoModule;->mLivePhotoSnapshotInFlight:I

    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "takePreviewSnapShoot, live shot in flight: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p0, Lcom/android/camera/module/VideoModule;->mLivePhotoSnapshotInFlight:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-virtual {p2}, Lcom/android/camera/module/video/A;->l()I

    move-result p2

    iget-object p3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget p3, p3, Lcom/android/camera/module/video/E;->u:I

    iput p2, v3, Lcom/android/camera/module/a0;->d:I

    iput p3, v3, Lcom/android/camera/module/a0;->e:I

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->V()Lj9/a;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/VideoModule;->mPicCallback:Lj9/a$j;

    invoke-virtual {p2, p3}, Lj9/a;->s1(Lj9/a$j;)V

    iget-object p2, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p2}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p2

    invoke-interface {p2, v3}, Lru/k;->m(Lru/i;)V

    iget-object p2, p0, Lcom/android/camera/module/VideoModule;->mIsCameraAECAWBDebug:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object p2

    invoke-interface {p2}, Lj6/j;->V()Lj9/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lj9/a;->t1(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->triggerSnapShotInVideo()V

    return-void
.end method

.method public static synthetic tk(Lcom/android/camera/module/VideoModule;IZLjava/lang/String;Ljava/lang/Integer;Lcom/android/camera/module/a0;Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/camera/module/VideoModule;->lambda$takePreviewSnapShoot$57(IZLjava/lang/String;Ljava/lang/Integer;Lcom/android/camera/module/a0;Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private toSaveLivePhoto(Lo7/a;)V
    .locals 12

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget-object v1, v0, Lcom/android/camera/module/video/A;->n:Lxm/t;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lo7/a;->g()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object p1, p1, Lcom/android/camera/module/video/E;->i:Lo7/a;

    iget-wide v4, p1, Lo7/a;->o:J

    invoke-static {}, LSp/z;->f()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget-wide v8, p1, Lcom/android/camera/module/video/A;->o:J

    add-long/2addr v6, v8

    sub-long v4, v6, v4

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getQuality()I

    move-result v6

    const/4 v2, 0x0

    invoke-interface/range {v1 .. v6}, Lxm/t;->e(Ljava/lang/Object;Ljava/lang/String;JI)V

    :cond_0
    return-void
.end method

.method public static synthetic tp(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$stopVideoRecording$35()V

    return-void
.end method

.method public static synthetic tr(Lcom/android/camera/module/VideoModule;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$initRecordingSetting$27()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private traceVideoWatermarkRecordInfo()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoWatermark"
        type = 0x0
    .end annotation

    invoke-static {}, Lcom/android/camera/data/data/j;->C1()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, LS8/d;->b(Z)LGg/P;

    move-result-object v0

    invoke-virtual {v0}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object v0

    invoke-static {p0}, LNh/d;->a(Z)Z

    move-result p0

    const-string v1, "attr_watermark_video_status"

    const-string v2, "key_watermark_capture"

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    new-instance p0, Lgq/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lgq/h;->a:Ljava/lang/String;

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

    iput-object v2, p0, Lgq/h;->b:Lgq/f;

    const-string v2, "on"

    invoke-virtual {p0, v2, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgq/h;->d()V

    return-void

    :cond_1
    new-instance p0, Lgq/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lgq/h;->a:Ljava/lang/String;

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

    iput-object v0, p0, Lgq/h;->b:Lgq/f;

    const-string v0, "off"

    const-string v2, "attr_watermark_video"

    const-string v3, "none"

    invoke-static {p0, v1, v0, v2, v3}, LMv/a;->b(Lgq/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private trackBeautyInfo(Lx4/s;J)V
    .locals 7

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Z4()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->O()Z

    move-result v2

    iget v6, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/4 v1, 0x0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v1 .. v6}, LB7/a;->b(IZLx4/s;JI)V

    :cond_0
    return-void
.end method

.method private trackFluencyVideoStart()V
    .locals 8

    const/4 v0, 0x0

    const-string/jumbo v1, "sCameraOptScheduler"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getVideoFrameRate()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getVideoQuality()I

    move-result v3

    invoke-static {v3}, Lr2/j1;->c(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v4}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v4

    invoke-static {v4}, Ldq/e;->c(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, LK5/a;->z()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmq/s;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraOptScheduler:Lio/reactivex/v;

    invoke-static {v6, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lmq/l;

    invoke-direct {v7, v2, v3, v4, v5}, Lmq/l;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-boolean v4, Lmq/c;->a:Z

    if-eqz v4, :cond_0

    const-string v4, "onVideoStart: timestamp="

    invoke-static {v2, v3, v4}, LHs/a;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "FluencyTrackProxy"

    invoke-static {v6, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v4, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraOptScheduler:Lio/reactivex/v;

    invoke-static {v4, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lmq/n;

    invoke-direct {v1, v2, v3}, Lmq/n;-><init>(J)V

    invoke-static {v4, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FluencyTrackProxy.onVideoStart error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackFluencyVideoStop()V
    .locals 3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmq/s;->i(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FluencyTrackProxy.onVideoStop error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackProVideoInfo()V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportProVideo"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    invoke-static {}, Lcom/android/camera/module/video/H;->l()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    const-string v2, "pref_qc_pro_video_whitebalance_k_value_key"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, v0, Lfq/b$a;->a:Lfq/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    invoke-static {}, Lcom/android/camera/module/video/H;->l()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "0"

    if-eqz v1, :cond_1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v3, Lr2/B0;

    invoke-virtual {v1, v3}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LU6/a;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, LU6/a;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1
    iget-object v0, v0, Lfq/b$a;->a:Lfq/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    invoke-static {}, Lcom/android/camera/module/video/H;->l()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-string v3, "pref_qc_pro_video_camera_iso_key"

    invoke-virtual {v1, v3, v2}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v0, v0, Lfq/b$a;->a:Lfq/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->S0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lfq/b$a;->a:Lfq/b;

    iput-object v1, v0, Lfq/b;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    invoke-static {}, Lcom/android/camera/module/video/H;->l()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-string v2, "pref_camera_pro_video_aperture_key"

    sget-object v3, Le2/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object v0, v0, Lfq/b$a;->a:Lfq/b;

    iput-object v2, v0, Lfq/b;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v1, v1, Lcom/android/camera/module/video/E;->b:I

    iget-object v2, v0, Lfq/b$a;->a:Lfq/b;

    iput v1, v2, Lfq/b;->f:I

    invoke-static {}, Lj7/a;->b()Z

    move-result v1

    iget-object v0, v0, Lfq/b$a;->a:Lfq/b;

    iput-boolean v1, v0, Lfq/b;->o:Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    invoke-static {}, LK5/a;->z()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lfq/b$a;->a:Lfq/b;

    iput-object v1, v0, Lfq/b;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Ln8/a;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lfq/b$a;->a:Lfq/b;

    iput-object v1, v0, Lfq/b;->t:Ljava/lang/String;

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/G0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/G0;

    iget-boolean v1, v0, Lr2/G0;->h:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v3, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v3}, Lu2/Q;->E(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lr2/G0;->n(I)Ljava/lang/String;

    iget-object v0, v1, Lfq/b$a;->a:Lfq/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    iget-object v0, v0, Lfq/b$a;->a:Lfq/b;

    const/16 v1, 0xa4

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    if-ne v1, v2, :cond_5

    new-instance v1, Lgq/h;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, "M_cinemaster_"

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

    new-instance v2, Lfq/a;

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActualCameraId()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->S0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v2, v3, v5, v6, v4}, Lfq/a;-><init>(ILjava/lang/String;ZI)V

    invoke-virtual {v1, v2}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lgq/h;->d()V

    goto :goto_0

    :cond_5
    new-instance v1, Lgq/h;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, "M_proVideo_"

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

    new-instance v2, Lfq/a;

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActualCameraId()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->S0()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v5, v6, v4}, Lfq/a;-><init>(ILjava/lang/String;ZI)V

    invoke-virtual {v1, v2}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lgq/h;->a(Ljava/lang/Object;)V

    new-instance v0, Lm8/b;

    iget-object v2, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v2}, Lj6/f;->S()I

    move-result v2

    invoke-direct {v0, v2}, Lm8/b;-><init>(I)V

    invoke-virtual {v1, v0}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lgq/h;->d()V

    :goto_0
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->trackVideoInfo(Lfq/b$a;)V

    :cond_6
    return-void
.end method

.method private trigerScanFile(Z)V
    .locals 3

    sget-object v0, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v1, Lc6/r;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lc6/r;-><init>(Ljava/lang/Object;ZI)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method private triggerNextRecordTimeUpdate(Lcom/android/camera/module/video/u;JLjava/lang/String;)V
    .locals 2

    iget-boolean p1, p1, Lcom/android/camera/module/video/u;->a:Z

    if-nez p1, :cond_0

    invoke-virtual {p0, p4}, Lcom/android/camera/module/VideoModule;->getNextUpdateDelay(Ljava/lang/String;)J

    move-result-wide v0

    rem-long/2addr p2, v0

    sub-long/2addr v0, p2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x2a

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private unlockAeAfAfterRecord()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->m3ALocked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->resetEvValue(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lu6/q;->g(Z)V

    :cond_0
    return-void
.end method

.method private updateEvValue()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->supportEvOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/D0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/D0;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lr2/D0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getEvKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/module/video/H;->l()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "0"

    if-eqz v1, :cond_1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

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

.method private updateIsoRange()V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/L0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/L0;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    iget-object v0, v0, Lr2/L0;->f:Landroid/util/Range;

    iget-object v1, p0, Lj9/i0;->s0:Landroid/util/Range;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput-object v0, p0, Lj9/i0;->s0:Landroid/util/Range;

    :cond_1
    return-void
.end method

.method private updateLiteGalleryStatus()V
    .locals 3

    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "updateLiteGalleryStatus: status = 0"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

.method private updateMutexModePreference()V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/z;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/z;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LF1/E3;->e(I)V

    :cond_0
    return-void
.end method

.method private updatePostProcessingStatus()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->h:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/module/video/B;->a:Ljava/util/ArrayList;

    invoke-static {v1, v0}, LQu/u;->p0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-wide v2, v2, Lcom/android/camera/module/video/u;->c:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-wide v4, v4, Lcom/android/camera/module/video/u;->m:J

    sub-long/2addr v2, v4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v5, Lr2/W;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/W;

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lr2/W;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, LJe/c;->k:Z

    sget-object v5, LJe/c$b;->a:LJe/c;

    invoke-virtual {v5}, LJe/c;->c0()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, v5, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->A6()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->y6()I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    add-int/2addr v7, v6

    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->z6()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1e

    div-int/lit8 v5, v5, 0x4

    mul-int/lit16 v5, v5, 0x3e8

    invoke-static {v4}, Lcom/android/camera/module/video/B;->a(Ljava/lang/String;)I

    move-result v4

    div-int/2addr v5, v4

    add-int/2addr v5, v7

    goto :goto_0

    :cond_0
    const/16 v5, 0x7d0

    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updatePostProcessingStatus, videoMaxDuration: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", videoLens: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", superSlowLens: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v4, v5

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x64

    cmp-long v0, v4, v0

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->U(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-wide/16 v0, 0x76c

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->U(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/video/u;->k:Z

    :cond_3
    return-void
.end method

.method private updateVideoThumbnail()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isEnableVideoPreviewThumbnail"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v1, v0, Lcom/android/camera/module/video/E;->B:[B

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    iget-object v0, v0, Lcom/android/camera/module/video/E;->i:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->e()Landroid/net/Uri;

    move-result-object v0

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, v3, v3}, LF1/w4;->c(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)LF1/w4;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, LF1/w4;->h:Z

    iput-boolean v3, v0, LF1/w4;->o:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, LF1/w4;->t(J)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lk7/i;->m(LF1/w4;Z)V

    :cond_0
    return-void
.end method

.method private updateWhiteBalance()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getWhiteBalanceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/module/video/H;->l()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, v0}, Lj6/j;->i0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ur(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$releaseResources$63(Z)V

    return-void
.end method

.method public static synthetic vl(Lcom/android/camera/module/VideoModule;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$runContinuesVideoRecording$84()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic vr(LQ6/s;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$onShutterButtonLongClickCancel$3(LQ6/s;)V

    return-void
.end method

.method public static synthetic wl(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$doStop$40()V

    return-void
.end method

.method public static synthetic wm(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$onCameraAbnormal$67()V

    return-void
.end method

.method public static synthetic wr(Lcom/android/camera/module/VideoModule;LQ6/V0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$updateRecordStateWhenStopRecording$41(LQ6/V0;)V

    return-void
.end method

.method public static synthetic xq(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$performKeyClicked$83(LQ6/d;)V

    return-void
.end method

.method public static synthetic xr()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/VideoModule;->lambda$onNewUriArrived$62()V

    return-void
.end method

.method public static synthetic yj(Lcom/android/camera/module/VideoModule;LQ6/a1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$updateMotionDetectionRect$66(LQ6/a1;)V

    return-void
.end method

.method public static synthetic yq(LQ6/n1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$notifyFirstFrameArrived$70(LQ6/n1;)V

    return-void
.end method

.method public static synthetic yr(Lr2/B0;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$updateExposureTime$59(Lr2/B0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zq(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->lambda$initRecorder$9(I)V

    return-void
.end method

.method public static synthetic zr(Lcom/android/camera/module/VideoModule;Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/camera/module/VideoModule;->lambda$getOnTagsListener$18(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;ZZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public abandonModuleCallback()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mAbandonModuleCallbackCalled:Z

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSaveCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    :cond_0
    return-void
.end method

.method public aiAudioV3State(ZLcom/android/camera/module/video/AiAudioController;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioEffect"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->t0()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    sget p1, LF4/a;->c:I

    sget-object p1, LF4/a$a;->a:LF4/a;

    iput-object p2, p1, LF4/a;->b:Lcom/android/camera/module/video/AiAudioController;

    iget-object p2, p0, Lcom/android/camera/module/r;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, p0}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    return-void

    :cond_2
    sget p1, LF4/a;->c:I

    sget-object p1, LF4/a$a;->a:LF4/a;

    const/4 p2, 0x0

    iput-object p2, p1, LF4/a;->b:Lcom/android/camera/module/video/AiAudioController;

    iget-object p0, p0, Lcom/android/camera/module/r;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "aiAudioV3State:params null,listen is returning."

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/a;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/a;)V

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/w;->C0(I)Z

    move-result v1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    const-class v3, Lu2/I;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu2/I;

    invoke-virtual {v2, v0}, Lu2/I;->n(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    new-instance v0, Lr6/A0;

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LI1/a;->h()Z

    move-result v1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object p0

    :goto_0
    invoke-direct {v0, v1, p0}, Lr6/A0;-><init>(ZLru/c;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    :cond_1
    new-instance p0, Lr6/B0;

    invoke-direct {p0}, Lr6/B0;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance p0, Lr6/p;

    invoke-direct {p0}, Lr6/p;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance p0, Lr6/x;

    sget-object v0, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    invoke-direct {p0, v0}, Lr6/x;-><init>(Lcom/android/camera/c;)V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    return-void
.end method

.method public applyTags(Lcom/android/camera/module/VideoBase$e;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LCs/z;

    invoke-direct {v1, v0, p1}, LCs/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, v1}, Lcom/android/camera/module/VideoBase;->applyTags(Lcom/android/camera/module/VideoBase$e;)V

    return-void
.end method

.method public calculateTouchArea(Landroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->mapTapCoordinate(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v2

    invoke-interface {v2}, Lj6/j;->T()Landroid/graphics/Rect;

    move-result-object v2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    invoke-static {p0}, Lj9/f;->d(Lj9/e;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {v0, v1, p1, v2, p0}, Lu6/q;->p(IILandroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
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

.method public bridge synthetic checkDragBurstEnable(FFZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkRecordTimeValid(Z)Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-wide v2, v2, Lcom/android/camera/module/video/u;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/module/VideoModule;->isMaxFileSizeReached:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "stopVideoRecording fail. Should record less 1s."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    return v1
.end method

.method public checkShutterCondition()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onShutterButtonClick: ignore touch event"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->s0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onShutterButtonClick: camera sensor processed"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->u0()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isSATTargetZooming()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->superSlowMotionDisableRecord()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->slowMotionSuperClickEvent()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object v0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->g2()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-string v2, "pref_cinematic_dolly_zoom_is_recording"

    invoke-virtual {v0, v2, v1}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->g2()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-string v0, "pref_cinematic_intell_dolly_in_anime"

    invoke-virtual {p0, v0, v1}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_7

    :goto_0
    return v1

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onShutterButtonClick: isTargetZooming"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public bridge synthetic checkSnapClickValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public closeCamera()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->closeCamera()V

    return-void
.end method

.method public configAudioMapRecorder(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->J5()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/android/camera/module/video/i$b;->a:Lcom/android/camera/module/video/i;

    invoke-virtual {p0}, Lcom/android/camera/module/video/i;->c()V

    return-void

    :cond_1
    sget-object p0, Lcom/android/camera/module/video/i$b;->a:Lcom/android/camera/module/video/i;

    invoke-virtual {p0}, Lcom/android/camera/module/video/i;->b()V

    return-void
.end method

.method public consumePreference(I)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_d

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_c

    const/16 v1, 0x18

    if-eq p1, v1, :cond_b

    const/16 v1, 0x19

    if-eq p1, v1, :cond_a

    const/16 v1, 0x55

    if-eq p1, v1, :cond_9

    const/16 v1, 0x56

    if-eq p1, v1, :cond_8

    const/16 v1, 0x5f

    if-eq p1, v1, :cond_7

    const/16 v1, 0x60

    if-eq p1, v1, :cond_6

    const/16 v1, 0x6f

    if-eq p1, v1, :cond_5

    const/16 v1, 0x70

    if-eq p1, v1, :cond_5

    const/16 v1, 0x72

    if-eq p1, v1, :cond_4

    const/16 v1, 0x73

    if-eq p1, v1, :cond_3

    const/16 v1, 0x92

    if-eq p1, v1, :cond_2

    const/16 v1, 0x93

    if-eq p1, v1, :cond_1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateCloseFocus()V

    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->idleManuallyFocus()V

    return v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateFocusDistance()V

    return v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->setFocusDistanceByGear()V

    return v0

    :pswitch_4
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->P()V

    return v0

    :pswitch_5
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget p1, p1, Lj9/a;->a:I

    invoke-virtual {v1, p1}, Lcom/android/camera/module/video/E;->g(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->updateASD(Z)V

    :cond_0
    return v0

    :pswitch_6
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->u()V

    return v0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateThermalLevel()V

    return v0

    :pswitch_8
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateIsoRange()V

    return v0

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateEiValue()V

    return v0

    :pswitch_a
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateSmartScene()V

    return v0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateLiteGalleryStatus()V

    return v0

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateSunriseSunsetTimestamp()V

    return v0

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateOpMode()V

    return v0

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateESPDisplay()V

    return v0

    :pswitch_f
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateSoftLightRing()V

    return v0

    :pswitch_10
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateIntellDolly()V

    return v0

    :pswitch_11
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateExposureTime()V

    return v0

    :pswitch_12
    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->updateISO(Ljava/lang/String;)V

    return v0

    :pswitch_13
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateVideoFocusMode()V

    return v0

    :pswitch_14
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateBeauty()V

    return v0

    :pswitch_15
    invoke-virtual {p0}, Lcom/android/camera/module/r;->setEvValue()V

    return v0

    :pswitch_16
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateFlashPreference()V

    return v0

    :pswitch_17
    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    invoke-virtual {p1}, LJe/c;->F()V

    invoke-static {}, Lcom/android/camera/data/data/w;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updateAntiBanding(Ljava/lang/String;)V

    return v0

    :pswitch_18
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->z0()V

    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateSessionParams()V

    return v0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->applyAudio2micStatus()V

    return v0

    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, p1}, Lj6/j;->f1(I)Z

    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/module/r;->consumePreference(I)Z

    move-result p0

    return p0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getApertureManager()LV1/f;

    move-result-object p0

    invoke-interface {p0}, LV1/f;->L()V

    return v0

    :sswitch_4
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateEvValue()V

    return v0

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateModuleRelated()V

    return v0

    :sswitch_6
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-interface {p1, p0}, Lj6/j;->Q(I)V

    return v0

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateUltraWideLDC()V

    return v0

    :sswitch_8
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->f0()V

    return v0

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateDeviceOrientation()V

    return v0

    :sswitch_a
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isEisOn()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->updateVideoStabilization(Z)V

    return v0

    :sswitch_b
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->Q0()V

    return v0

    :sswitch_c
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateFpsRange()V

    return v0

    :sswitch_d
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateWhiteBalance()V

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraPreviewCompression()V

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateFoldState()V

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateAiAudioTrack()V

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getExposureModeManager()LV1/g;

    move-result-object p0

    invoke-interface {p0}, LV1/g;->q()V

    return v0

    :cond_5
    :pswitch_19
    :sswitch_e
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, p1}, Lj6/j;->f1(I)Z

    return v0

    :cond_6
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMotionDetectionArea11: "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateMotionDetectionRect()V

    return v0

    :cond_7
    invoke-virtual {p0, p0}, Lcom/android/camera/module/r;->initializeMetaDataCallback(Lcom/android/camera/module/r;)V

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateTrackFocus()V

    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateAiEnhancedVideo()V

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/module/r;->focusCenter()V

    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->a0()V

    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object p0

    invoke-interface {p0, v2}, Lj6/j;->D0(Z)V

    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateFilter()V

    return v0

    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updatePictureAndPreviewSize()V

    return v0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_d
        0x13 -> :sswitch_c
        0x1d -> :sswitch_b
        0x1f -> :sswitch_a
        0x21 -> :sswitch_e
        0x23 -> :sswitch_9
        0x28 -> :sswitch_8
        0x2f -> :sswitch_7
        0x34 -> :sswitch_6
        0x37 -> :sswitch_5
        0x3c -> :sswitch_e
        0x3f -> :sswitch_4
        0x4b -> :sswitch_e
        0x5d -> :sswitch_e
        0x68 -> :sswitch_3
        0x6d -> :sswitch_e
        0x76 -> :sswitch_2
        0x78 -> :sswitch_1
        0xcafe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x97
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x42
        :pswitch_7
        :pswitch_6
        :pswitch_19
        :pswitch_19
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4f
        :pswitch_4
        :pswitch_19
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x81
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_19
        :pswitch_19
        :pswitch_0
    .end packed-switch
.end method

.method public doVideoInfoTrack()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->trackVideoInfo(Lfq/b$a;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->trackProVideoInfo()V

    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    iget-object p0, p0, Lfq/b$a;->a:Lfq/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfq/b;->k:J

    return-void
.end method

.method public doVideoPostProcess(J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public enterAutoHibernation()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    invoke-super {p0}, Lcom/android/camera/module/r;->enterAutoHibernation()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->g:I

    iget-object v0, v0, Lfq/b$a;->a:Lfq/b;

    iput p0, v0, Lfq/b;->q:I

    return-void
.end method

.method public getAiAudio()Lcom/android/camera/module/video/AiAudioController;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    return-object p0
.end method

.method public getApertureManager()LV1/f;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mApertureManager:LV1/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/module/VideoModule$i;

    invoke-direct {v0, p0}, LV1/c;-><init>(Lcom/android/camera/module/r;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mApertureManager:LV1/f;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mApertureManager:LV1/f;

    return-object p0
.end method

.method public getAppRotation()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getAppStateMgr()Lj6/b;

    move-result-object p0

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->c:I

    return p0
.end method

.method public getCameraZoomRatio()F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    iget p0, p0, Lj9/i0;->c0:F

    return p0
.end method

.method public bridge synthetic getCaptureStartTime()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getColorSpaceDescriptionInner()Lwu/a$k;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getVideoModuleColorSpace()Lwu/a$k;

    move-result-object p0

    return-object p0
.end method

.method public getDismissPureBlurDelayTime()J
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDualVideoCameraChoose"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object p0

    check-cast p0, Lh9/I;

    invoke-virtual {p0}, Lh9/I;->y9()Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x1e

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEIKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_pro_video_log_ei"

    return-object p0
.end method

.method public getEvKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_qc_camera_pro_video_exposure_value_key"

    return-object p0
.end method

.method public getExposureModeManager()LV1/g;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mExposureModeManager:LV1/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/module/VideoModule$k;

    invoke-direct {v0, p0}, LV1/d;-><init>(Lcom/android/camera/module/r;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mExposureModeManager:LV1/g;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mExposureModeManager:LV1/g;

    return-object p0
.end method

.method public getIsoKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_qc_pro_video_camera_iso_key"

    return-object p0
.end method

.method public getModuleDeviceParam()Ly3/v;
    .locals 11

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/k;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, LEs/k;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/module/video/E;->k(Lj9/e;ILj6/j;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->isEnableScreenShot(Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

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

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->isEisOn(Z)Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v7, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v7}, Lj6/j;->getActualCameraId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/module/video/E;->f(I)Z

    move-result v6

    iget-object v7, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v7}, Lcom/android/camera/module/video/E;->i()Z

    move-result v7

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->is60FPSSupported()Z

    move-result v8

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->needDisableEISAndOIS()Z

    move-result v9

    iget-object v10, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v10, v10, Lcom/android/camera/module/video/E;->b:I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result p0

    new-instance v10, Ly3/w;

    invoke-direct {v10}, Ly3/w;-><init>()V

    iput v3, v10, Ly3/v;->c:I

    iput v2, v10, Ly3/v;->b:I

    iput v1, v10, Ly3/v;->a:I

    iput-object v4, v10, Ly3/v;->d:Lj9/e;

    iput-boolean v5, v10, Ly3/w;->e:Z

    iput-boolean v6, v10, Ly3/w;->i:Z

    iput-boolean v7, v10, Ly3/w;->j:Z

    iput-boolean v8, v10, Ly3/w;->g:Z

    iput-boolean v0, v10, Ly3/w;->f:Z

    iput-boolean v9, v10, Ly3/w;->h:Z

    iput-boolean p0, v10, Ly3/w;->k:Z

    return-object v10
.end method

.method public getNextUpdateDelay(Ljava/lang/String;)J
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v0}, Lcom/android/camera/module/video/E;->j()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->e:Ljava/lang/String;

    const-string v3, "fast"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "film_exposuredelay"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v0, v0, Lcom/android/camera/module/video/E;->k:I

    int-to-double v4, v0

    double-to-long v4, v4

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-object v0, v0, Lcom/android/camera/module/video/u;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object p0, p0, Lcom/android/camera/module/video/E;->e:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    cmp-long p0, v4, v1

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    return-wide v4

    :cond_3
    :goto_0
    return-wide v1
.end method

.method public bridge synthetic getSnapCondition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "VideoModule"

    return-object p0
.end method

.method public getVideoFrameRate()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget p0, p0, Lcom/android/camera/module/video/E;->A:I

    return p0
.end method

.method public getVideoQuality()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget p0, p0, Lcom/android/camera/module/video/E;->b:I

    return p0
.end method

.method public getVideoQualityDisplayString(II)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lr2/j1;->c(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "fps"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWhiteBalanceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_camera_video_whitebalance_key_new"

    return-object p0
.end method

.method public getZoomManager()Lf9/a;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    if-nez v0, :cond_0

    new-instance v0, Lh9/I;

    invoke-direct {v0, p0}, Lg9/f;-><init>(Lcom/android/camera/module/W;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    return-object p0
.end method

.method public holdTag([B)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object p0, p0, Lcom/android/camera/module/video/E;->i:Lo7/a;

    new-instance v0, Lcom/android/camera/jcodec/b$a;

    const-string/jumbo v1, "xiaomi.exifInfo.videoinfo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/android/camera/jcodec/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lo7/a;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public initializePreferences()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/r;->initializePreferences()V

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRatioInRecordingState()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    :goto_0
    sget-object v0, Le2/m;->f:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method public isAEAFLockSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object p0, p0, Lcom/android/camera/module/video/E;->h:Ljava/lang/String;

    sget-object v0, Lcom/android/camera/module/video/B;->a:Ljava/util/ArrayList;

    invoke-static {v0, p0}, LQu/u;->p0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

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

.method public isCameraSwitchingDuringZoomingAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActualCameraId()I

    move-result v0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->D()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFrontCameraSwitchingAllowedDuringZooming()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isBackCameraSwitchingAllowedDuringZooming()Z

    move-result p0

    return p0
.end method

.method public isDolbyVisionPreview()Z
    .locals 1

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->I1()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isDownCapturing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEisOn()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedMovieSolid"
        type = 0x0
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 2
    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/module/video/E;->k(Lj9/e;ILj6/j;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->isEisOn(Z)Z

    move-result p0

    return p0
.end method

.method public isEisOn(Z)Z
    .locals 9

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string p1, " camera2Proxy is Null, return default eis"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isEisOn: moduleIndex="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cameraId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lj9/a;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "UserRecordSetting"

    invoke-static {v6, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    sget-boolean v4, LJe/c;->k:Z

    .line 9
    sget-object v4, LJe/c$b;->a:LJe/c;

    .line 10
    iget-object v5, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    .line 11
    invoke-virtual {v5}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S5()Z

    move-result v5

    if-nez v5, :cond_1

    .line 12
    const-string p0, "isEisOn: isSupportedMovieSolid false"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 13
    :cond_1
    invoke-static {p0}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 14
    invoke-static {v0}, Lu6/f;->h0(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 15
    const-string p0, "isEisOn: ultra as macro eis"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 16
    :cond_2
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v5

    invoke-virtual {v5}, Lu6/f;->o()I

    move-result v5

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    if-ne v0, v5, :cond_3

    .line 17
    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K7()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18
    const-string p0, "isEisOn: standalone macro camera"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 19
    :cond_3
    invoke-static {p0}, Lcom/android/camera/data/data/E;->u(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 20
    const-string p0, "isEisOn: ai enhanced video enable EIS"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 21
    :cond_4
    invoke-static {p0}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 22
    const-string p0, "isEisOn:  super eis"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 23
    :cond_5
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v5

    invoke-virtual {v5, v0}, Lu6/f;->O(I)Lj9/e;

    move-result-object v5

    .line 24
    invoke-static {p0, v5}, Lcom/android/camera/data/data/j;->y1(ILj9/e;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 25
    const-string p0, "isEisOn: force video eis"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 26
    :cond_6
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v5

    invoke-virtual {v5, v0}, Lu6/f;->O(I)Lj9/e;

    move-result-object v5

    .line 27
    invoke-static {p0, v5}, Lcom/android/camera/data/data/m;->r0(ILj9/e;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 28
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v7

    invoke-virtual {v7, v0}, Lu6/f;->d0(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 29
    invoke-static {v5}, Lj9/f;->Z3(Lj9/e;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 30
    const-string p0, "isEisOn: vhdr on"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 31
    :cond_7
    invoke-static {}, Lcom/android/camera/data/data/j;->Q0()Z

    move-result v7

    if-nez v7, :cond_9

    const/16 v7, 0xb4

    if-eq p0, v7, :cond_8

    const/16 v7, 0xa9

    if-eq p0, v7, :cond_8

    const/16 v7, 0xa4

    if-ne p0, v7, :cond_9

    .line 32
    :cond_8
    const-string p0, "isEisOn: isMovieSolidOn false"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 33
    :cond_9
    invoke-virtual {v3}, Lcom/android/camera/module/video/E;->j()Z

    move-result v7

    if-nez v7, :cond_a

    .line 34
    iget-object v7, v3, Lcom/android/camera/module/video/E;->e:Ljava/lang/String;

    const-string v8, "fast"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 35
    const-string p0, "isEisOn: isNormalMode false"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_a
    if-eqz p1, :cond_b

    const/16 p1, 0xe3

    if-eq p0, p1, :cond_b

    .line 36
    const-string p1, "isEisOn: needChooseBeauty, moduleIndex="

    .line 37
    invoke-static {p0, p1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 38
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 39
    :cond_b
    invoke-static {v0}, Lcom/android/camera/module/video/H;->i(I)I

    move-result p0

    const-string p1, "isEisOn: "

    if-nez p0, :cond_c

    .line 40
    iget p0, v3, Lcom/android/camera/module/video/E;->b:I

    const/16 v7, 0x1e

    invoke-static {p0, v7, v5}, Lj9/f;->g1(IILj9/e;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v3, Lcom/android/camera/module/video/E;->b:I

    const-string v0, "@30Fps"

    .line 42
    invoke-static {p0, v0, p1}, LP/e;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 43
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 44
    :cond_c
    invoke-static {v0}, Lcom/android/camera/module/video/H;->i(I)I

    move-result p0

    const/16 v7, 0x3c

    if-ne p0, v7, :cond_d

    move p0, v1

    goto :goto_0

    :cond_d
    move p0, v2

    :goto_0
    if-eqz p0, :cond_e

    .line 45
    iget v8, v3, Lcom/android/camera/module/video/E;->b:I

    invoke-static {v8, v7, v5}, Lj9/f;->g1(IILj9/e;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v3, Lcom/android/camera/module/video/E;->b:I

    const-string v0, "@60Fps"

    .line 47
    invoke-static {p0, v0, p1}, LP/e;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 48
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 49
    :cond_e
    invoke-static {v0}, Lcom/android/camera/module/video/H;->i(I)I

    move-result v0

    const/16 v7, 0x78

    if-ne v0, v7, :cond_10

    .line 50
    iget v0, v3, Lcom/android/camera/module/video/E;->b:I

    invoke-static {v0, v7, v5}, Lj9/f;->g1(IILj9/e;)Z

    move-result v0

    const-string v7, "@120Fps"

    if-eqz v0, :cond_f

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v3, Lcom/android/camera/module/video/E;->b:I

    .line 52
    invoke-static {p0, v7, p1}, LP/e;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 53
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 54
    :cond_f
    invoke-virtual {v3}, Lcom/android/camera/module/video/E;->h()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "isEisOn : force off EIS for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v3, Lcom/android/camera/module/video/E;->b:I

    .line 56
    invoke-static {p0, v7, p1}, LP/e;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 57
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 58
    :cond_10
    invoke-virtual {v3}, Lcom/android/camera/module/video/E;->i()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 59
    const-string p0, "3001"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x18

    invoke-static {p0, p1, v5}, Lj9/f;->g1(IILj9/e;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 60
    invoke-static {}, Lcom/android/camera/data/data/j;->Q0()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_1

    :cond_11
    move v1, v2

    .line 61
    :goto_1
    const-string p0, "isEisOn: EIS 8k "

    .line 62
    invoke-static {p0, v1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 63
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_12
    if-eqz p0, :cond_13

    .line 64
    invoke-static {v5}, Lj9/f;->S0(Lj9/e;)Z

    move-result p0

    if-nez p0, :cond_14

    .line 65
    iget p0, v3, Lcom/android/camera/module/video/E;->b:I

    invoke-static {p0, v5}, Lj9/f;->P0(ILj9/e;)Z

    move-result p0

    if-nez p0, :cond_14

    .line 66
    const-string p0, "isEisOn: 60 fps eis not supported."

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 67
    :cond_13
    iget p0, v3, Lcom/android/camera/module/video/E;->b:I

    invoke-static {p0}, Lcom/android/camera/data/data/r;->f(I)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 68
    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->T1()Z

    move-result p0

    if-nez p0, :cond_14

    .line 69
    const-string p0, "isEisOn: 4K higher video quality."

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 70
    :cond_14
    const-string p0, "isEisOn: default eis"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public isEnableScreenShot(Z)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->q4(Lj9/e;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/w;->E0()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/data/data/E;->C()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    return v3

    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->V()Lj9/a;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->V()Lj9/a;

    move-result-object v4

    iget v4, v4, Lj9/a;->a:I

    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/E;->f(I)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lj9/f;->c4(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p1, :cond_8

    :cond_6
    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/data/data/E;->u(I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v0}, Lj9/f;->a5(Lj9/e;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v3

    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string p1, "isEnableScreenShot: "

    invoke-static {p1, v1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public isIgnoreSingleTap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLiveShotStartedInHighSpecRecord()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-virtual {v0}, Lcom/android/camera/module/video/A;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->r:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v0}, Lcom/android/camera/module/video/E;->i()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    iget p0, p0, Lj9/a;->a:I

    invoke-virtual {v0, p0}, Lcom/android/camera/module/video/E;->f(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

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

.method public isNeedAlertAudioZoomIndicator()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioNew"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    invoke-virtual {v0}, Lcom/android/camera/module/video/AiAudioController;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lj7/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->c0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/video/u;->f:Z

    if-nez v1, :cond_2

    iget-boolean p0, p0, Lcom/android/camera/module/video/u;->a:Z

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    iget p0, v0, Lcom/android/camera/module/video/AiAudioController;->t:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedMute()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    invoke-virtual {p0}, Lcom/android/camera/module/video/u;->a()Z

    move-result p0

    return p0
.end method

.method public isOverheatTipAlreadyShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/VideoModule;->mOverheatTipAlreadyShown:Z

    return p0
.end method

.method public bridge synthetic isPendingMultiCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPostProcessing()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean p0, p0, Lcom/android/camera/module/video/u;->k:Z

    return p0
.end method

.method public isPreviewNeedMirror()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSecondScreenVideoMirror"
        type = 0x0
    .end annotation

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public isPurePreview()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPureSurfaceView"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->W4()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v2, 0xa2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isStreamingRequested()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/j;->C0()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/j;->F1()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRecordingPaused()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean p0, p0, Lcom/android/camera/module/video/u;->a:Z

    return p0
.end method

.method public isSessionReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->Z()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDragVideo()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    iget p0, p0, Lv2/D0;->F:I

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public isSupportResetTouchAFWhileRecording()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSunriseSunset()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isTemporary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoCaptureUsePreview()Z
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget-object v2, v0, Lj9/e;->t4:Ljava/lang/Integer;

    if-nez v2, :cond_2

    sget-object v2, Lga/w0;->d3:Lga/D0;

    invoke-virtual {v2}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0xbabe

    iget-object v4, v0, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v4, v2, v3}, Lga/E0;->i(Landroid/hardware/camera2/CameraCharacteristics;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "LIVE_SHOT_USE_PREVIEW\uff1a   LIVE_SHOT_USE_PREVIEW  value =   "

    invoke-static {v3, v2}, LV9/Z1;->c(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "CameraCapabilities"

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lj9/e;->t4:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lj9/e;->t4:Ljava/lang/Integer;

    :cond_2
    :goto_1
    iget-object v0, v0, Lj9/e;->t4:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/m;->q0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "Front Hdr Video Live shot Use Preview"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public isZoomEnabled()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->h:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/module/video/B;->a:Ljava/util/ArrayList;

    invoke-static {v1, v0}, LQu/u;->p0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraCapabilities()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->R4(Lj9/e;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    if-eqz v0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->isZoomEnabled()Z

    move-result p0

    return p0
.end method

.method public isZoomSegmentEnabled()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lj9/f;->l3()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/r;->isZoomSegmentEnabled()Z

    move-result p0

    return p0
.end method

.method public needAIAudioVideoTag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoRecordingSwitch:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public needPinFace()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p0

    invoke-interface {p0}, Lj6/f;->E()Z

    move-result p0

    return p0
.end method

.method public notifyExiting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mIsExiting:Z

    return-void
.end method

.method public notifyFirstFrameArrived(I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->notifyFirstFrameArrived(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object p1

    invoke-virtual {p1}, Lvr/m;->b()V

    :cond_0
    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sASDScheduler:Lio/reactivex/v;

    new-instance v0, LF1/S2;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, LF1/S2;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->shouldCheckSatFallbackState()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v0, Lcom/android/camera/module/A0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_1
    sget-object p1, Lcom/android/camera/module/video/i$b;->a:Lcom/android/camera/module/video/i;

    invoke-virtual {p1}, Lcom/android/camera/module/video/i;->c()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getExcludeScreenRecorderQualityFps()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/VideoModule;->mExcludeScreenRecorderQualityFps:I

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[VideoSwitch] notifyFirstFrameArrived: isTrueRecording = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    invoke-virtual {v1}, Lcom/android/camera/module/video/u;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",paused = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v1, v1, Lcom/android/camera/module/video/u;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mRecordingPausedByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v1, v1, Lcom/android/camera/module/video/u;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isLongPressSwitchVideo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v0, 0xa2

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iput-boolean p1, v3, Lcom/android/camera/module/video/u;->q:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/w;->V()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    iput-boolean v4, v3, Lcom/android/camera/module/video/u;->r:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LF1/K1;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LF1/K1;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, LSs/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, LSs/j;-><init>(Ljava/lang/Object;ZI)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void

    :cond_4
    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    if-ne p1, v0, :cond_c

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->q:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    iput v0, p1, Lv2/D0;->F:I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean p1, p1, Lcom/android/camera/module/video/u;->n:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->d0()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object p1

    check-cast p1, LA2/a$a;

    invoke-virtual {p1}, LA2/a$a;->a()Lr2/f1;

    move-result-object p1

    const-class v0, Lr2/w;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/w;

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p1, v0}, Lr2/w;->u(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p1, Lr2/w;->c:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    iget v3, v3, Lcom/android/camera/c;->c:I

    invoke-static {v3}, Lcom/android/camera/data/data/j;->P1(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    iget-boolean p1, p1, Lr2/w;->b:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez v3, :cond_7

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "[VideoSwitch] notifyFirstFrameArrived: update flash"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v0, Lcom/android/camera/module/B0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_7
    invoke-direct {p0, v2}, Lcom/android/camera/module/VideoModule;->runContinuesVideoRecording(Z)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean p1, p1, Lcom/android/camera/module/video/u;->o:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "[VideoSwitch] :: notifyFirstFrameArrived: need resume recording"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/android/camera/module/VideoModule;->runContinuesVideoRecording(Z)V

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->d0()Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance p1, LEs/c0;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, LEs/c0;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_a
    invoke-static {}, LK2/b;->a0()Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance p1, LF1/R0;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LF1/R0;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void

    :cond_b
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance p1, Lcom/android/camera/module/C0;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/camera/module/C0;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_c
    return-void
.end method

.method public notifyVideoStreamEnd(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isPurePreview()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->c()Lj9/e;

    move-result-object p1

    invoke-static {p1}, Lj9/f;->p1(Lj9/e;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    sget-boolean p1, LJe/d;->j:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->d0()V

    :cond_1
    return-void
.end method

.method public onActionStop()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onActionStop: E"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mStartRecordDisposable:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v2, "onActionStop: dispose record task"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mStartRecordDisposable:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mStartRecordDisposable:Lio/reactivex/disposables/b;

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mAsyncInitRecorder:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderFail()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->doLaterReleaseIfNeed()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onActionStop()V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onActionStop: X"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onActive()V
    .locals 7

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onActive()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v2, v0, Lfq/b$a;->a:Lfq/b;

    iput v1, v2, Lfq/b;->c:I

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->d0()Z

    move-result v1

    iget-object v0, v0, Lfq/b$a;->a:Lfq/b;

    iput-boolean v1, v0, Lfq/b;->a:Z

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    iget v1, v1, Lj9/a;->a:I

    iput v1, v0, Lfq/b;->b:I

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/j;->y0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    iget v1, v1, Lj9/a;->a:I

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->d0()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->Z()Lj9/e;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->S()Lj9/e;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->d0()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lr2/f0;->I(ILj9/e;Z)V

    :cond_1
    sget-object v0, Lcom/android/camera/module/video/i$b;->a:Lcom/android/camera/module/video/i;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "DecibelController"

    const-string v6, "onCreate"

    invoke-static {v5, v6, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v1, v0, Lcom/android/camera/module/video/i;->b:I

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/video/i;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mSensorStateListener:LF1/i4$q;

    invoke-virtual {v1, v2}, LF1/i4;->s(LF1/i4$q;)V

    invoke-virtual {p0, v3}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:I

    new-instance v1, Lcom/android/camera/module/VideoModule$j;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$j;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$j;

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpened()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isSelectingCapturedResult()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    iget-object v2, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LI1/a;->h()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lj7/a;->e()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-object v3, v1, Lcom/android/camera/module/video/AiAudioController;->a:Landroid/media/AudioManager;

    if-nez v3, :cond_4

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, v1, Lcom/android/camera/module/video/AiAudioController;->a:Landroid/media/AudioManager;

    :cond_4
    iget-object v3, v1, Lcom/android/camera/module/video/AiAudioController;->c:Lcom/android/camera/module/video/d;

    if-nez v3, :cond_5

    new-instance v3, Lcom/android/camera/module/video/d;

    invoke-direct {v3}, Lcom/android/camera/module/video/d;-><init>()V

    iput-object v3, v1, Lcom/android/camera/module/video/AiAudioController;->c:Lcom/android/camera/module/video/d;

    :cond_5
    iget-object v3, v1, Lcom/android/camera/module/video/AiAudioController;->v:Lcom/android/camera/module/video/AiAudioController$b;

    if-nez v3, :cond_6

    new-instance v3, Lcom/android/camera/module/video/AiAudioController$b;

    invoke-direct {v3, v1}, Lcom/android/camera/module/video/AiAudioController$b;-><init>(Lcom/android/camera/module/video/AiAudioController;)V

    iput-object v3, v1, Lcom/android/camera/module/video/AiAudioController;->v:Lcom/android/camera/module/video/AiAudioController$b;

    :cond_6
    iget-object v3, v1, Lcom/android/camera/module/video/AiAudioController;->a:Landroid/media/AudioManager;

    iget-object v4, v1, Lcom/android/camera/module/video/AiAudioController;->c:Lcom/android/camera/module/video/d;

    invoke-virtual {v3, v4, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    iget-object v2, v1, Lcom/android/camera/module/video/AiAudioController;->c:Lcom/android/camera/module/video/d;

    iget-object v3, v1, Lcom/android/camera/module/video/AiAudioController;->v:Lcom/android/camera/module/video/AiAudioController$b;

    iput-object v3, v2, Lcom/android/camera/module/video/d;->a:Lcom/android/camera/module/video/d$a;

    iput p0, v1, Lcom/android/camera/module/video/AiAudioController;->g:I

    new-instance p0, Landroid/os/HandlerThread;

    const-string v2, "ai_audio_set"

    invoke-direct {p0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p0, v1, Lcom/android/camera/module/video/AiAudioController;->e:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    new-instance p0, Lcom/android/camera/module/video/a;

    iget-object v2, v1, Lcom/android/camera/module/video/AiAudioController;->e:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/video/a;-><init>(Lcom/android/camera/module/video/AiAudioController;Landroid/os/Looper;)V

    iput-object p0, v1, Lcom/android/camera/module/video/AiAudioController;->f:Lcom/android/camera/module/video/a;

    :cond_7
    sget-object p0, Lio/reactivex/schedulers/a;->a:Lio/reactivex/v;

    new-instance v1, LCc/l;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, LCc/l;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public bridge synthetic onActivityResult(Lcom/android/camera/module/X;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->useBackToStopRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onBackPressed()Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onBluetoothHeadsetConnected()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBluetoothHeadsetMic"
        type = 0x0
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startBluetoothSco()V

    return-void
.end method

.method public onBluetoothHeadsetDisconnected()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBluetoothHeadsetMic"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->w3()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, "support_bluetooth_mic"

    invoke-static {p0, v0}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "BluetoothScoManager"

    const-string v1, "(stopBluetoothSco)not supported bluetooth headset mic!"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lj7/a;->a()Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setMode(I)V

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "AudioManagerProxy"

    const-string/jumbo v1, "stopBluetoothSco"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onBluetoothHeadsetStateChanged(I)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBluetoothHeadsetMic"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "> BluetoothHeadset state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onBluetoothHeadsetConnected()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onBluetoothHeadsetDisconnected()V

    return-void
.end method

.method public onCameraAbnormal(II)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LL5/b;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, LL5/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onCameraAbnormal(II)V

    return-void
.end method

.method public onCameraPickerClicked(Landroid/view/View;)Z
    .locals 4

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_2

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v1, v0, Lcom/android/camera/module/video/u;->n:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/camera/module/video/u;->a:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iput-boolean v2, v0, Lcom/android/camera/module/video/u;->p:Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    new-instance v1, Lcom/android/camera/module/VideoModule$g;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/module/VideoModule$g;-><init>(Lcom/android/camera/module/VideoModule;Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/module/video/A;->q(ZLjava/util/function/IntFunction;)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v1, LC4/t;

    const/4 v3, 0x7

    invoke-direct {v1, p0, v3}, LC4/t;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    iget-boolean v0, v0, Lcom/android/camera/module/video/D;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, LQ6/g1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/G;

    const/16 v3, 0x9

    invoke-direct {v1, v3}, LC4/G;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/H1;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, LF1/H1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v1, v0, Lcom/android/camera/module/video/E;->D:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/camera/module/video/E;->D:I

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[VideoSwitch] onCameraPickerClicked: sensorSwitch = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget p0, p0, Lcom/android/camera/module/video/E;->D:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v2

    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onCameraPickerClicked(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onCapabilityChanged(Lj9/e;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->onCapabilityChanged(Lj9/e;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mUltraWideAELocked:Z

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lu6/q;->z(Lj9/e;)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->w0()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/D;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1}, LEs/D;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportTrackFocus"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onDoubleTap"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->hasCameraException()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->g:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/module/r;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->E()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/data/data/w;->Z(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->onDoubleTapStartTrackFocus(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public bridge synthetic onDrawBlackFrameChanged(Z)V
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

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInactive()V
    .locals 7

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xa2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v4, "onInactive: "

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mFovcEnabled:Z

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isEisOn()Z

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/android/camera/module/VideoModule;->notifyVideoStreamEnd(ZZ)V

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onInactive()V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->a:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v4, Lcom/android/camera/module/x0;

    invoke-direct {v4, p0}, Lcom/android/camera/module/x0;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-static {v0, v4}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    invoke-virtual {v0}, LF1/i4;->k()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->resetScreenOn()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LI1/a;->h()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lj7/a;->e()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/android/camera/module/video/AiAudioController;->a:Landroid/media/AudioManager;

    if-eqz v5, :cond_4

    iget-object v6, v0, Lcom/android/camera/module/video/AiAudioController;->c:Lcom/android/camera/module/video/d;

    if-eqz v6, :cond_4

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    iget-object v5, v0, Lcom/android/camera/module/video/AiAudioController;->c:Lcom/android/camera/module/video/d;

    iput-object v1, v5, Lcom/android/camera/module/video/d;->a:Lcom/android/camera/module/video/d$a;

    iput-object v1, v0, Lcom/android/camera/module/video/AiAudioController;->c:Lcom/android/camera/module/video/d;

    iput-object v1, v0, Lcom/android/camera/module/video/AiAudioController;->d:LF4/l;

    iput-boolean v3, v0, Lcom/android/camera/module/video/AiAudioController;->j:Z

    iget-object v0, v0, Lcom/android/camera/module/video/AiAudioController;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_4
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/camera/module/r;->stopFaceDetection(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0}, Lu6/q;->a()V

    :cond_5
    invoke-static {}, Lj7/a;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/camera/module/d;->a()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    iget-object v0, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->w3()Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "support_bluetooth_mic"

    invoke-static {v0, v3}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "BluetoothScoManager"

    const-string v2, "(stopBluetoothSco)not supported bluetooth headset mic!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lj7/a;->a()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "AudioManagerProxy"

    const-string/jumbo v2, "stopBluetoothSco"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    sget-object v0, Lcom/android/camera/module/video/i$b;->a:Lcom/android/camera/module/video/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lio/reactivex/schedulers/a;->a:Lio/reactivex/v;

    new-instance v2, LG6/b;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, LG6/b;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->exitSavePowerMode()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget-boolean v0, v0, Lj6/a;->e:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/r;->exitAutoHibernation()V

    :cond_8
    return-void
.end method

.method public onLiveShotVideoTakenFinished(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/module/VideoModule;->mLivePhotoSnapshotInFlight:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/camera/module/VideoModule;->mLivePhotoSnapshotInFlight:I

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLiveShotVideoTakenFinished, live shot in flight: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/camera/module/VideoModule;->mLivePhotoSnapshotInFlight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMediaRecorderReleased(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMediaRecorderReleased>> postProcessingSucceed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseAiAudio()V

    iget-object v2, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mDelayStopRecording:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mDelayStopRecording:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v2}, LF1/l4;->a(I)Z

    move-result v2

    invoke-static {v2}, Lcom/android/camera/data/data/w;->a0(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/camera/module/d;->a()V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->captureIntentRelated()V

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->trySaveVidoeFile(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->traceVideoWatermarkRecordInfo()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showPostProcessIfNeed()V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.stop_video_recording"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resetFocusState()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepScreenOnAwhile()V

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onMediaRecorderReleased<<time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->doLaterReleaseIfNeed()V

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/camera/module/video/u;->k:Z

    iput-boolean v0, p1, Lcom/android/camera/module/video/u;->j:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H7()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/camera/module/VideoModule;->mVideoStopBoostHandle:J

    invoke-virtual {p1, v0, v1}, LRh/c;->d(J)V

    :cond_2
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p0

    const-string/jumbo p1, "stop_record_recorder_release"

    invoke-virtual {p0, p1}, LF6/q;->g(Ljava/lang/String;)J

    return-void
.end method

.method public onNewUriArrived(Landroid/net/Uri;ZLjava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/r;->onNewUriArrived(Landroid/net/Uri;ZLjava/lang/String;Z)V

    if-eqz p3, :cond_1

    const-string p1, "VID"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 p2, 0xd0

    if-eq p1, p2, :cond_0

    const/16 p2, 0xcf

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance p1, LR3/a;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, LR3/a;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onPauseButtonClick()V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-wide v2, v2, Lcom/android/camera/module/video/u;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPauseButtonClick: isRecordingPaused="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v4, v4, Lcom/android/camera/module/video/u;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v4, v4, Lcom/android/camera/module/video/u;->f:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " timeValid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v4, v4, Lcom/android/camera/module/video/u;->f:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-wide v5, v4, Lcom/android/camera/module/video/u;->e:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iput-wide v2, v4, Lcom/android/camera/module/video/u;->e:J

    iget-boolean v0, v4, Lcom/android/camera/module/video/u;->a:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v4, Lcom/android/camera/module/video/u;->n:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v4, Lcom/android/camera/module/video/u;->o:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/camera/module/VideoModule;->runContinuesVideoRecording(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->resumeRecording()V

    return-void

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->pauseRecording(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onPreviewPixelsRead([BIILtu/c;Z)V
    .locals 1
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
    const/4 p4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/VideoModule;->genVideoCover([BIIZ)V

    return-void
.end method

.method public onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/camera/module/video/u;->p:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isCreated()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onPreviewSessionSuccess: module is not ready"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPreviewSessionSuccess: session="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iput-boolean v2, p1, Lcom/android/camera/module/video/u;->p:Z

    sget-object p1, Le2/m;->g:[I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p1

    invoke-static {p1}, La2/b;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onPreviewStart()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMutexModePreference()V

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->onShutterButtonFocus(ZI)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecordingIfNeeded()V

    :cond_0
    return-void
.end method

.method public onRenderEngineCreate()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/r;->onRenderEngineCreate()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ltu/d;->f:Ltu/d;

    invoke-interface {v0, v1}, Lru/k;->E(Ltu/d;)LCu/x;

    sget-object v1, Ltu/d;->a0:Ltu/d;

    invoke-interface {v0, v1}, Lru/k;->E(Ltu/d;)LCu/x;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isDolbyVisionPreview()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/m;->d(I)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p0

    sget-object v1, Lo3/d;->d:Lo3/d;

    const/16 v1, 0x67

    invoke-static {v0, v1}, Li3/b;->c(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/effect/EffectController;->a0(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p0

    sget-object v1, Lo3/d;->d:Lo3/d;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Li3/b;->c(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/effect/EffectController;->a0(I)V

    return-void

    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p0

    sget v0, Li3/b;->N:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/effect/EffectController;->a0(I)V

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

    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p0

    sget v0, Li3/b;->N:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/effect/EffectController;->a0(I)V

    return-void
.end method

.method public bridge synthetic onRetryCapture(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScaleEnd()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/r;->onScaleEnd()V

    return-void
.end method

.method public bridge synthetic onSceneRecognizeButtonClick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSharedPreferenceChanged()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->j:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v2, v2, Lcom/android/camera/module/video/E;->j:Landroid/media/CamcorderProfile;

    iget v3, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v3, v1, :cond_1

    iget v4, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-eq v4, v0, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const-string v5, "profile size changed ["

    const-string v6, " "

    const-string v7, "]->["

    invoke-static {v1, v0, v5, v6, v7}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-static {v0, v3, v6, v2, v1}, LS1/h;->c(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onShutterButtonCancel(Z)V
    .locals 0

    return-void
.end method

.method public onShutterButtonClick(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->checkShutterCondition()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/camera/module/video/E;->z:J

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onShutterButtonClick isRecording="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v3, v3, Lcom/android/camera/module/video/u;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " inStartingFocusRecording="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/module/r;->mInStartingFocusRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    if-eqz v0, :cond_1

    sget-object v0, LK7/l;->a:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "stop_videorecord_cost"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, LK7/l;->a:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "start_videorecord_cost"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lj6/a;->a:J

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v2, "onShutterButtonClick: stop"

    invoke-static {v0, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onShutterButtonClick: stop mode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)Z

    goto :goto_1

    :cond_2
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->R0()Z

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->d4()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lc6/x;->J:Ljava/lang/String;

    const-string v3, "pauseAllVideoPlay"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc6/x;->t(Lc6/y;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->onStartRecordButtonClick(I)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onShutterButtonFocus(ZI)V
    .locals 0

    return-void
.end method

.method public onShutterButtonLongClickCancel(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onShutterButtonLongClickCancel(Z)V

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean p1, p1, Lcom/android/camera/module/video/u;->q:Z

    if-eqz p1, :cond_7

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    iget p1, p1, Lv2/D0;->F:I

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "onShutterButtonLongClickCancel  "

    invoke-static {p1, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    if-nez v0, :cond_3

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    iput v2, p1, Lv2/D0;->F:I

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mStartRecordDisposable:Lio/reactivex/disposables/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/b;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onActionStop: dispose record task"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mStartRecordDisposable:Lio/reactivex/disposables/b;

    invoke-interface {p1}, Lio/reactivex/disposables/b;->c()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mStartRecordDisposable:Lio/reactivex/disposables/b;

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mAsyncInitRecorder:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderFail()V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/camera/module/X;->g9()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, LQ6/s;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LB9/c;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, LB9/c;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_3
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LF1/K3;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, LF1/K3;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    iput v2, p1, Lv2/D0;->F:I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)Z

    return-void

    :cond_5
    :goto_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Lv2/D0;->F:I

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LU3/i;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LU3/i;-><init>(I)V

    if-ne p1, v0, :cond_6

    const-wide/16 v2, 0x1e0

    goto :goto_1

    :cond_6
    const-wide/16 v2, 0x64

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public bridge synthetic onShutterDragging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(IIZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/r;->hasCameraException()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "onSingleTapUp: frame not available"

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/r;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isIgnoreSingleTap()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LHs/c;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LHs/c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoBase;->mTouchFocusStartingTime:J

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->mapTapCoordinate(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/data/data/w;->F(I)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroid/graphics/Rect;

    iget p2, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, p2, -0xa

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v2, -0xa

    add-int/lit8 p2, p2, 0xa

    add-int/lit8 v2, v2, 0xa

    invoke-direct {p1, v1, v3, p2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->setTrackRect(Landroid/graphics/Rect;I)V

    :cond_4
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    iget p1, v0, Landroid/graphics/Point;->x:I

    iget p2, v0, Landroid/graphics/Point;->y:I

    invoke-interface {p0, p1, p2, p3}, Lu6/q;->onSingleTapUp(IIZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onStartRecorderFail()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "onStartRecorderFail"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mAsyncInitRecorder:Z

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPrepareRecording:Z

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/A;->s(Lcom/android/camera/module/video/w;)V

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, LF1/l4;->a(I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/w;->a0(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/module/d;->a()V

    :cond_0
    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LC4/q;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, LC4/q;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->notifyRecordingStateChanged(I)V

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->updateZoomButtonForRecording(Z)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/D;->a(I)V

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->lockScreenOrientation(Z)V

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H7()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/camera/module/VideoModule;->mBoostHandle:J

    invoke-virtual {v0, v1, v2}, LRh/c;->d(J)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->reCheckFastMotionConfig()V

    return-void
.end method

.method public onStartRecorderSucceed()V
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0xc

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v4, "onStartRecorderSucceed"

    invoke-static {v3, v4}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v3, v3, Lcom/android/camera/module/video/E;->h:Ljava/lang/String;

    sget-object v4, Lcom/android/camera/module/video/B;->a:Ljava/util/ArrayList;

    invoke-static {v4, v3}, LQu/u;->p0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v3}, Lcom/android/camera/data/data/m;->H(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    const/16 v5, 0xa2

    invoke-static {v5}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v5

    iput-boolean v5, v3, Lcom/android/camera/module/video/E;->C:Z

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[VideoSwitch] onStartRecorderSucceed: isCimenaRatio = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-boolean v6, v6, Lcom/android/camera/module/video/E;->C:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.start_video_recording"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPrepareRecording:Z

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setAiAudioZoomLv()V

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LI1/a;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v3}, Lcom/android/camera/data/data/m;->G(I)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lgq/h;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-string v5, "key_zoom"

    iput-object v5, v3, Lgq/h;->a:Ljava/lang/String;

    new-instance v5, Lgq/f;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v5, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v5, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v5, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v5, v3, Lgq/h;->b:Lgq/f;

    new-instance v5, LX7/c;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v5}, Lgq/h;->b(Lgq/e;)V

    invoke-virtual {v3}, Lgq/h;->d()V

    :cond_2
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v5

    const-class v6, Lv2/f0;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv2/Z;

    invoke-interface {v3}, LQ6/l1;->mm()V

    invoke-interface {v3, v2}, LQ6/l1;->qm(I)V

    const-string/jumbo v5, "super_eis"

    const v6, 0x7f1412ed

    invoke-interface {v3, v2, v6, v5}, LQ6/l1;->L1(IILjava/lang/String;)V

    const v5, 0x7f141463

    const-string/jumbo v6, "video_beautify"

    invoke-interface {v3, v2, v5, v6}, LQ6/l1;->L1(IILjava/lang/String;)V

    const v5, 0x7f141462

    invoke-interface {v3, v2, v5, v6}, LQ6/l1;->L1(IILjava/lang/String;)V

    invoke-interface {v3}, LQ6/l1;->Qh()V

    invoke-static {}, LJe/d;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f1406bd

    goto :goto_0

    :cond_3
    const v5, 0x7f140d8e

    :goto_0
    const-string v6, "esp_display"

    invoke-interface {v3, v2, v5, v6}, LQ6/l1;->L1(IILjava/lang/String;)V

    invoke-static {}, Lcom/android/camera/module/Y;->d()Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f140472

    goto :goto_1

    :cond_4
    const v5, 0x7f140fe8

    :goto_1
    invoke-interface {v3, v2, v5}, LQ6/l1;->xn(II)V

    :cond_5
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    iget-boolean v3, v3, Lcom/android/camera/module/video/D;->a:Z

    if-eqz v3, :cond_6

    invoke-static {}, LQ6/g1;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v5, LC4/C;

    invoke-direct {v5, v1}, LC4/C;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v3}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, LN6/l;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v5, LE3/k;

    invoke-direct {v5, v1}, LE3/k;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LN6/e;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v5, LCs/J;

    invoke-direct {v5, v2}, LCs/J;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LN6/j;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v5, LE3/l;

    invoke-direct {v5, v1}, LE3/l;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/S0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LC4/M;

    const/16 v5, 0xb

    invoke-direct {v3, v5}, LC4/M;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_7
    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LE3/n;

    invoke-direct {v3, v2}, LE3/n;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoBase;->notifyRecordingStateChanged(I)V

    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->updateZoomButtonForRecording(Z)V

    invoke-static {}, LV6/b;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/m0;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/module/m0;-><init>(Lcom/android/camera/module/VideoModule;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iput-boolean v0, v1, Lcom/android/camera/module/video/u;->a:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/camera/module/video/u;->c:J

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/camera/module/video/u;->e:J

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/camera/module/video/u;->d:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/camera/module/r;->listenPhoneState(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepScreenOn()V

    invoke-static {}, LF1/i0;->a()LF1/i0;

    move-result-object v0

    invoke-virtual {v0}, LF1/i0;->c()V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v3, v0, Lcom/android/camera/module/video/E;->x:Lx4/s;

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->m3ALocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/module/r;->trackGeneralInfo(ZLx4/s;ZILjava/lang/Boolean;)V

    iget-object p0, v1, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object p0, p0, Lcom/android/camera/module/video/E;->x:Lx4/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/module/VideoModule;->trackBeautyInfo(Lx4/s;J)V

    invoke-direct {v1}, Lcom/android/camera/module/VideoModule;->reCheckFastMotionConfig()V

    iget p0, v1, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_8

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/C;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, LF1/C;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_8
    invoke-virtual {v1}, Lcom/android/camera/module/VideoBase;->checkSceneToEnterHibernation()V

    invoke-virtual {v1}, Lcom/android/camera/module/VideoBase;->keepPowerSave()V

    invoke-virtual {v1}, Lcom/android/camera/module/r;->keepAutoHibernation()V

    invoke-direct {v1}, Lcom/android/camera/module/VideoModule;->requestVideoCover()V

    invoke-static {}, Lcom/android/camera/data/data/w;->E0()Z

    move-result p0

    if-eqz p0, :cond_9

    iget-object p0, v1, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iget v0, v0, Lj9/a;->a:I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/video/E;->f(I)Z

    move-result p0

    if-nez p0, :cond_9

    iget-object p0, v1, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$j;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, v1, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$j;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method

.method public bridge synthetic onTouchDownEvent()V
    .locals 0

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onUserInteraction()V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->keepPowerSave()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepAutoHibernation()V

    :cond_0
    return-void
.end method

.method public onVideoCaptureEnableChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, " onVideoCaptureEnableChanged "

    invoke-static {v1, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mVideoCaptureEnable:Z

    return-void
.end method

.method public onVideoCoverCreated([BLjava/lang/String;)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isEnableVideoPreviewThumbnail"
        type = 0x0
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoBase;->onVideoCoverCreated([BLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->supportVideoCover()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->n:Landroid/content/ContentValues;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string p1, "onVideoCoverCreated: mCurrentVideoValues == null"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "_data"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "onVideoCoverCreated , videoPath = "

    const-string v4, ", curPath "

    invoke-static {v3, p2, v4, v0}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object p2, p2, Lcom/android/camera/module/video/E;->n:Landroid/content/ContentValues;

    const-string v0, "custom_video_cover"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isEnableVideoPreviewThumbnail()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iput-object p1, p0, Lcom/android/camera/module/video/E;->B:[B

    :cond_2
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
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isInRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, p1}, Lj6/j;->C0(Z)V

    const/16 p1, 0x85

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    :cond_0
    return-void
.end method

.method public openForShotWithWinFocus()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-super {p0}, Lcom/android/camera/module/r;->openForShotWithWinFocus()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecordingIfNeeded()V

    return-void
.end method

.method public pausePreview()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "pausePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->w0()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/g;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, LEs/g;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-interface {p0}, Lu6/q;->k()V

    :cond_0
    return-void
.end method

.method public pauseRecording(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/VideoModule;->pauseRecording(ZLjava/util/function/IntFunction;)V

    return-void
.end method

.method public pauseRecording(ZLjava/util/function/IntFunction;)V
    .locals 3

    .line 2
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string v1, "recording_pause"

    invoke-virtual {v0, v1}, LF6/q;->q(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iput-boolean p1, v0, Lcom/android/camera/module/video/u;->n:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/module/video/A;->q(ZLjava/util/function/IntFunction;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/camera/module/video/D;->a(I)V

    .line 6
    const-string p1, "click"

    const-string v0, "attr_life_state"

    const-string/jumbo v2, "video_pause_recording"

    invoke-static {v2, v0, p1}, Liq/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    .line 8
    iget-boolean p1, p1, Lcom/android/camera/module/video/D;->a:Z

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, LQ6/g1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LC4/G;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, LC4/G;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 10
    :cond_1
    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-static {}, LN6/l;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LE4/v;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, LE4/v;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    invoke-static {}, LN6/e;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LN4/b;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, LN4/b;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 13
    invoke-static {}, LN6/j;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LFs/h;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, LFs/h;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 14
    invoke-static {}, LQ6/S0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LC3/c;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, LC3/c;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onPauseButtonClick onPause"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LC3/d;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, LC3/d;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 17
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.pause_video_recording"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/android/camera/module/VideoBase;->notifyRecordingStateChanged(I)V

    .line 19
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p0

    invoke-virtual {p0, v1}, LF6/q;->g(Ljava/lang/String;)J

    return-void
.end method

.method public performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    if-ne v0, p1, :cond_2

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p2

    invoke-interface {p2}, Lj6/f;->g()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p2

    new-instance p3, LC4/p;

    const/16 p4, 0x8

    invoke-direct {p3, p4}, LC4/p;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Lj6/f;->A(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p0

    invoke-interface {p0, p1}, Lj6/f;->N(I)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p1

    invoke-interface {p1}, Lj6/f;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lj6/f;->A(Z)V

    invoke-virtual {p0, p2}, Lcom/android/camera/module/VideoModule;->onShutterButtonLongClickCancel(Z)V

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LC4/q;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, LC4/q;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/VideoBase;->performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public bridge synthetic performKeyLongPress(IZLandroid/view/KeyEvent;Z)V
    .locals 0

    return-void
.end method

.method public record3AExifInfo([BI)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideo3AExifInfo"
        type = 0x2
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object p0, p0, Lcom/android/camera/module/video/E;->i:Lo7/a;

    if-eqz p0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo7/a;->k:[[B

    if-eqz v0, :cond_0

    iget v0, p0, Lo7/a;->n:I

    if-eq v0, p2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    new-array v0, p2, [[B

    iput-object v0, p0, Lo7/a;->k:[[B

    iput p2, p0, Lo7/a;->n:I

    const/4 p2, 0x0

    iput p2, p0, Lo7/a;->l:I

    iput p2, p0, Lo7/a;->m:I

    :cond_1
    iget p2, p0, Lo7/a;->l:I

    iget v0, p0, Lo7/a;->m:I

    add-int v1, p2, v0

    iget v2, p0, Lo7/a;->n:I

    rem-int/2addr v1, v2

    iget-object v3, p0, Lo7/a;->k:[[B

    aput-object p1, v3, v1

    if-ge v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo7/a;->m:I

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    rem-int/2addr p2, v2

    iput p2, p0, Lo7/a;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public registerProtocol()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/module/r;->registerProtocol()V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/q;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/Z0;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/P0;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/K;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/l0;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/v1;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTopConfigProtocol:LQ6/o1;

    invoke-interface {v0}, LN6/a;->registerProtocol()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object p0

    const-class v0, LQ6/P;

    const-class v1, LQ6/B0;

    const-class v2, LQ6/C;

    const-class v3, LQ6/M0;

    const-class v4, LQ6/V0;

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp6/b;->d([Ljava/lang/Class;)V

    return-void
.end method

.method public releaseResources()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsExiting:Z

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v2, Lcom/android/camera/module/q0;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/module/q0;-><init>(Lcom/android/camera/module/VideoModule;Z)V

    invoke-static {v1, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->P3()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/B0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/B0;

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v2}, Lr2/B0;->t(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/module/video/A;->s(Lcom/android/camera/module/video/w;)V

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget-object v0, p0, Lcom/android/camera/module/video/A;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/module/video/A;->h:Landroid/view/Surface;

    iput-object v2, p0, Lcom/android/camera/module/video/A;->h:Landroid/view/Surface;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    new-instance p0, LAs/v;

    const/4 v0, 0x4

    invoke-direct {p0, v3, v0}, LAs/v;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, p0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public resetFocusState(D)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoBase;->resetFocusState(D)V

    .line 9
    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/data/data/w;->F(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->setTrackRect(Landroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method

.method public restartPreviewSession()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreviewAfterRecord()V

    return-void
.end method

.method public resumePreview()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->w0()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE4/e;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LE4/e;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resumeRecording()V
    .locals 11

    const/16 v0, 0xd

    const/4 v1, 0x4

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v2

    const-string v3, "recording_resume"

    invoke-virtual {v2, v3}, LF6/q;->q(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v4, "onPauseButtonClick resumeVideoRecording"

    invoke-static {v2, v4}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "RecorderController"

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v2, Lcom/android/camera/module/video/A;->a:LSp/p;

    if-nez v7, :cond_0

    const-string/jumbo v0, "resumeVideoRecording: mMediaRecorder is null"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_0
    invoke-interface {v7}, LSp/p;->b()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v4, Lcom/android/camera/module/video/u;->b:J

    sub-long/2addr v7, v9

    iput-wide v7, v4, Lcom/android/camera/module/video/u;->c:J

    const-wide/16 v7, 0x0

    iput-wide v7, v4, Lcom/android/camera/module/video/u;->b:J

    iput-boolean v6, v4, Lcom/android/camera/module/video/u;->a:Z

    const-string v7, ""

    iput-object v7, v4, Lcom/android/camera/module/video/u;->d:Ljava/lang/String;

    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object v7

    new-instance v8, LF1/b1;

    const/16 v9, 0xb

    invoke-direct {v8, v9}, LF1/b1;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-boolean v7, LJe/c;->k:Z

    sget-object v7, LJe/c$b;->a:LJe/c;

    iget-object v7, v7, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v7}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->E5()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, v4, Lcom/android/camera/module/video/u;->n:Z

    if-eqz v7, :cond_1

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v7

    new-instance v8, LKh/f;

    invoke-direct {v8, v4, v1}, LKh/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    iget-boolean v1, v1, Lcom/android/camera/module/video/D;->a:Z

    if-eqz v1, :cond_2

    invoke-static {}, LQ6/g1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LC4/E;

    invoke-direct {v2, v0}, LC4/E;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/D;->a(I)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LEs/d;

    const/4 v4, 0x7

    invoke-direct {v2, v4}, LEs/d;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, LN6/l;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LDn/D;

    const/16 v4, 0x11

    invoke-direct {v2, v4}, LDn/D;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LN6/e;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LEs/e;

    invoke-direct {v2, v0}, LEs/e;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LN6/j;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/f;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, LEs/f;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/S0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LB3/b;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, LB3/b;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.resume_video_recording"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->notifyRecordingStateChanged(I)V

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iput-boolean v6, p0, Lcom/android/camera/module/video/u;->n:Z

    const-string p0, "click"

    const-string v0, "attr_life_state"

    const-string/jumbo v1, "video_resume_recording"

    invoke-static {v1, v0, p0}, Liq/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_0
    const-string v4, "failed to resume media recorder"

    invoke-static {v5, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/camera/module/video/A;->s(Lcom/android/camera/module/video/w;)V

    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LC4/q;

    const/4 v4, 0x6

    invoke-direct {v2, v4}, LC4/q;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/camera/module/VideoBase;->notifyRecordingStateChanged(I)V

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    invoke-virtual {p0, v1}, Lcom/android/camera/module/video/D;->a(I)V

    :goto_2
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p0

    invoke-virtual {p0, v3}, LF6/q;->g(Ljava/lang/String;)J

    return-void
.end method

.method public setAiAudioGain(F)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/video/AiAudioController;->f:Lcom/android/camera/module/video/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/module/video/AiAudioController;->f:Lcom/android/camera/module/video/a;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setAiAudioZoomLv()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {p0}, Lcom/android/camera/module/video/AiAudioController;->h()V

    return-void
.end method

.method public setAiAudioZoomLvManually(F)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/camera/module/video/AiAudioController;->n:D

    invoke-virtual {p0}, Lcom/android/camera/module/video/AiAudioController;->h()V

    return-void
.end method

.method public setCameraPreviewCompression()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportCameraPreviewCompressionModes"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    iget v1, v1, Lj9/a;->a:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/E;->f(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    iput v0, p0, Lj9/i0;->I3:I

    return-void
.end method

.method public bridge synthetic setCaptureTime(Lqh/f;)V
    .locals 0

    return-void
.end method

.method public setNormalHDRTargetState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mNormalHDRTargetState:Z

    return-void
.end method

.method public setOrientationParameter()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->setOrientationParameter()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->c:I

    iput p0, v0, Lcom/android/camera/module/video/AiAudioController;->l:I

    return-void
.end method

.method public setOverheatTipAlreadyShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mOverheatTipAlreadyShown:Z

    return-void
.end method

.method public setParameter(Lk6/a;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->setParameter(Lk6/a;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    iget-object p1, p1, Lu2/Q;->w:Ljava/lang/String;

    const-string v0, "quick_video_handle_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mQuickVideo:Z

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const/4 p1, 0x0

    iput-object p1, p0, Lu2/Q;->w:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTrackRect(Landroid/graphics/Rect;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v5, v5, Lcom/android/camera/module/video/u;->f:Z

    if-nez v5, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v5, v0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    if-eqz v5, :cond_b

    iget-object v0, v0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object v0

    invoke-static {}, Lj7/a;->g()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v6, v5, Lcom/android/camera/module/video/AiAudioController;->r:Landroid/graphics/Rect;

    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v5, Lcom/android/camera/module/video/AiAudioController;->s:I

    if-ne v2, v7, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v2, v5, Lcom/android/camera/module/video/AiAudioController;->s:I

    iget-object v1, v5, Lcom/android/camera/module/video/AiAudioController;->b:LI1/a;

    if-eqz v1, :cond_b

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->w0()Z

    move-result v1

    const/16 v7, 0x10e

    const/16 v8, 0x5a

    const-string v9, "AiAudioController"

    if-eqz v1, :cond_7

    iget v0, v5, Lcom/android/camera/module/video/AiAudioController;->p:F

    const/4 v1, 0x0

    cmpl-float v11, v0, v1

    if-eqz v11, :cond_6

    iget v11, v5, Lcom/android/camera/module/video/AiAudioController;->q:F

    cmpl-float v1, v11, v1

    if-eqz v1, :cond_6

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iget-wide v13, v5, Lcom/android/camera/module/video/AiAudioController;->n:D

    div-double/2addr v0, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    mul-double/2addr v0, v11

    iget v13, v5, Lcom/android/camera/module/video/AiAudioController;->q:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    div-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->tan(D)D

    move-result-wide v13

    move-wide/from16 p0, v11

    iget-wide v11, v5, Lcom/android/camera/module/video/AiAudioController;->n:D

    div-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    mul-double v11, v11, p0

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v13, v5, Lcom/android/camera/module/video/AiAudioController;->p:F

    iget v14, v5, Lcom/android/camera/module/video/AiAudioController;->q:F

    const-string v15, "mBaseHorFOV = "

    const-string v10, ", mBaseVerFOV = "

    invoke-static {v13, v14, v15, v10}, LF1/v2;->c(FFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v13, v4, [Ljava/lang/Object;

    invoke-static {v9, v10, v13}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v13, v5, Lcom/android/camera/module/video/AiAudioController;->n:D

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "mBaseZoomRatio = "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, ", currentRatioHorFov = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, ", currentRatioVerFov = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v13, v4, [Ljava/lang/Object;

    invoke-static {v9, v10, v13}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    div-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double v0, v0, p0

    const-wide/high16 v9, 0x409e000000000000L    # 1920.0

    div-double/2addr v0, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    div-double v9, v9, p0

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    mul-double v9, v9, p0

    const-wide v11, 0x4090e00000000000L    # 1080.0

    div-double/2addr v9, v11

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    add-int/lit16 v11, v11, -0x21c

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    add-int/lit16 v6, v6, -0x3c0

    iget v12, v5, Lcom/android/camera/module/video/AiAudioController;->l:I

    if-eq v12, v8, :cond_5

    const/16 v8, 0xb4

    if-eq v12, v8, :cond_4

    if-eq v12, v7, :cond_3

    int-to-double v0, v11

    mul-double/2addr v0, v9

    neg-double v7, v9

    int-to-double v9, v6

    mul-double/2addr v7, v9

    goto :goto_1

    :cond_3
    :goto_0
    int-to-double v6, v6

    mul-double/2addr v6, v0

    int-to-double v8, v11

    mul-double/2addr v0, v8

    move-wide/from16 v16, v6

    move-wide v7, v0

    move-wide/from16 v0, v16

    goto :goto_1

    :cond_4
    neg-double v0, v9

    int-to-double v7, v11

    mul-double/2addr v0, v7

    int-to-double v6, v6

    mul-double v7, v9, v6

    goto :goto_1

    :cond_5
    neg-double v0, v0

    goto :goto_0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    new-array v8, v3, [D

    aput-wide v0, v8, v4

    const/4 v0, 0x1

    aput-wide v6, v8, v0

    goto :goto_2

    :cond_6
    new-array v8, v3, [D

    :goto_2
    array-length v0, v8

    if-lt v0, v3, :cond_b

    iget-object v0, v5, Lcom/android/camera/module/video/AiAudioController;->f:Lcom/android/camera/module/video/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "tracker"

    invoke-virtual {v1, v3, v8}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, v5, Lcom/android/camera/module/video/AiAudioController;->f:Lcom/android/camera/module/video/a;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_7
    invoke-static {}, LI1/a;->h()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "focusRect: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", recording orientation = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/android/camera/module/video/AiAudioController;->m:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v9, v11, v12}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v11, v0, LF1/q4;->s:I

    iget v0, v0, LF1/q4;->t:I

    const-string v12, "CameraScreenNail: renderWidth = "

    const-string v13, ", renderHeight = "

    invoke-static {v11, v0, v12, v13}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9, v12, v4}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float v4, v0

    const/high16 v9, 0x44f00000    # 1920.0f

    div-float v12, v9, v4

    int-to-float v13, v11

    const/high16 v14, 0x44870000    # 1080.0f

    div-float v15, v14, v13

    if-le v11, v0, :cond_a

    move/from16 p0, v9

    iget v9, v5, Lcom/android/camera/module/video/AiAudioController;->m:I

    if-eq v9, v8, :cond_9

    if-eq v9, v7, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    :goto_3
    div-float v12, p0, v13

    div-float v15, v14, v4

    goto :goto_4

    :cond_9
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v10, v11, v0

    goto :goto_3

    :cond_a
    :goto_4
    int-to-float v0, v3

    mul-float/2addr v0, v15

    float-to-int v0, v0

    int-to-float v3, v10

    mul-float/2addr v3, v12

    float-to-int v3, v3

    add-int/lit8 v4, v0, -0xa

    add-int/lit8 v6, v3, -0xa

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {v1, v4, v6, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v5, Lcom/android/camera/module/video/AiAudioController;->f:Lcom/android/camera/module/video/a;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, v5, Lcom/android/camera/module/video/AiAudioController;->f:Lcom/android/camera/module/video/a;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_b
    :goto_5
    return-void
.end method

.method public shouldCheckSatFallbackState()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lga/C0;->E0:Lga/D0;

    invoke-virtual {v1}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->D()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->h()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActualCameraId()I

    move-result v0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->h()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActualCameraId()I

    move-result v0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->p()I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    iget-boolean p0, p0, Lcom/android/camera/module/r;->mInStartingFocusRecording:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public shouldReleaseLater()Z
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->shouldReleaseLater()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mPrepareRecording:Z

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

.method public slowMotionSuperClickEvent()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionDetectionEnable"
        type = 0x2
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public startCameraSession(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget-object p1, p1, Lcom/android/camera/module/video/A;->h:Landroid/view/Surface;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lvr/Y;->d(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iget v0, v0, Lj9/a;->a:I

    invoke-virtual {p1, v0}, Lcom/android/camera/module/video/E;->f(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startHighSpeedRecordSession()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startRecordSession()V

    :cond_2
    :goto_0
    return-void
.end method

.method public startHighSpeedRecordSession()V
    .locals 11
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->checkDisplayOrientation()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-virtual {v0}, Lcom/android/camera/module/video/A;->m()Landroid/view/Surface;

    move-result-object v4

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startHighSpeedRecordSession: recordSurface = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lvr/Y;->c(Landroid/view/Surface;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lru/k;->v()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lj6/f;->J(J)V

    .line 6
    iget v2, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    .line 7
    invoke-interface {v0}, Lru/k;->D()Landroid/view/Surface;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v5, v0, Lcom/android/camera/module/video/E;->b:I

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 8
    invoke-interface {v0}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v6

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v7, v0, Lcom/android/camera/module/video/E;->g:Landroid/util/Range;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 9
    invoke-interface {v0}, Lj6/j;->y()Z

    move-result v10

    move-object v8, p0

    move-object v9, p0

    move-object v1, p0

    .line 10
    invoke-virtual/range {v1 .. v10}, Lcom/android/camera/module/VideoModule;->startHighSpeedRecordSession(ILandroid/view/Surface;Landroid/view/Surface;ILandroid/util/Size;Landroid/util/Range;Lj9/a$d;Lj9/a$g;Z)V

    .line 11
    iget-object p0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-interface {p0}, Lu6/q;->k()V

    return-void
.end method

.method public startHighSpeedRecordSession(ILandroid/view/Surface;Landroid/view/Surface;ILandroid/util/Size;Landroid/util/Range;Lj9/a$d;Lj9/a$g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "I",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Lj9/a$d;",
            "Lj9/a$g;",
            "Z)V"
        }
    .end annotation

    .line 12
    iget-object p4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p4, p5}, Lj6/j;->e(Landroid/util/Size;)V

    if-eqz p9, :cond_0

    .line 13
    iget-object p4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p4}, Lj6/j;->V()Lj9/a;

    move-result-object p4

    invoke-virtual {p4, p8}, Lj9/a;->E0(Lj9/a$g;)V

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    move p4, p1

    move-object p5, p6

    move-object p6, p7

    move-object p1, p0

    invoke-virtual/range {p1 .. p6}, Lj9/a;->b1(Landroid/view/Surface;Landroid/view/Surface;ILandroid/util/Range;Lj9/a$d;)V

    return-void
.end method

.method public startPreview()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startPreview: previewing="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->checkDisplayOrientation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    return-void
.end method

.method public startPreviewAfterRecord()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->g9()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->unlockAeAfAfterRecord()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    .line 4
    iget v1, v1, Lj9/a;->a:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/E;->f(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->startPreviewAfterRecord(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startPreviewAfterRecord(Z)V
    .locals 2

    .line 6
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->a1()V

    return-void

    .line 8
    :cond_1
    sget p1, Lcom/android/camera/module/Y;->a:I

    const/16 v0, 0xac

    if-ne p1, v0, :cond_2

    .line 9
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->a1()V

    return-void

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->h1()V

    return-void
.end method

.method public startRecordSession()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->checkDisplayOrientation()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lru/k;->v()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lj6/f;->J(J)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v3, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v5, v5, Lcom/android/camera/module/video/E;->e:Ljava/lang/String;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 6
    const-string/jumbo v4, "startRecordSession: operatingMode = 0x%x enableVideoSnapshot = %b mode = %s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-interface {v0}, Lru/k;->D()Landroid/view/Surface;

    move-result-object v6

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-virtual {v0}, Lcom/android/camera/module/video/A;->m()Landroid/view/Surface;

    move-result-object v7

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startRecordSession: previewSurface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lvr/Y;->c(Landroid/view/Surface;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", recordSurface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v7}, Lvr/Y;->c(Landroid/view/Surface;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isPurePreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startRecordSession: previewSurface is null And Activity is paused."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 15
    invoke-interface {v0}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    iget-boolean v11, p0, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 16
    invoke-interface {v0}, Lj6/j;->y()Z

    move-result v12

    move-object v8, p0

    move-object v13, p0

    move-object v5, p0

    .line 17
    invoke-virtual/range {v5 .. v13}, Lcom/android/camera/module/VideoModule;->startRecordSession(Landroid/view/Surface;Landroid/view/Surface;Lj9/a$g;Landroid/util/Size;IZZLj9/a$d;)V

    .line 18
    iget-object p0, v5, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-interface {p0}, Lu6/q;->k()V

    const/4 p0, 0x1

    .line 19
    iput-boolean p0, v5, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    return-void
.end method

.method public startRecordSession(Landroid/view/Surface;Landroid/view/Surface;Lj9/a$g;Landroid/util/Size;IZZLj9/a$d;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    .line 21
    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    .line 22
    iput-object p4, v0, Lj9/i0;->H1:Landroid/util/Size;

    if-eqz p7, :cond_0

    .line 23
    iget-object p4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p4}, Lj6/j;->V()Lj9/a;

    move-result-object p4

    invoke-virtual {p4, p3}, Lj9/a;->E0(Lj9/a$g;)V

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    move-object p3, p2

    move p4, p6

    move-object p6, p8

    move-object p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p6}, Lj9/a;->i1(Landroid/view/Surface;Landroid/view/Surface;ZILj9/a$d;)V

    return-void
.end method

.method public startVideoRecording()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->startVideoRecording()V

    iget-boolean v0, p0, Lcom/android/camera/module/r;->mInStartingFocusRecording:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mWaitingShutterSoundFinish:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPrepareRecording:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v1, v1, Lcom/android/camera/module/video/E;->e:Ljava/lang/String;

    const-string/jumbo v2, "startVideoRecording: mode="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H7()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object v1

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LRh/c;->b(II)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/VideoModule;->mBoostHandle:J

    :cond_2
    invoke-static {}, Lcom/android/camera/data/data/w;->e0()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, LI1/a;->h()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/m;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/camera/module/video/i$b;->a:Lcom/android/camera/module/video/i;

    invoke-virtual {v1}, Lcom/android/camera/module/video/i;->b()V

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->prepareRecordingUI()V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->d0()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    sget-object v2, LF6/a;->Q:LF6/a;

    invoke-virtual {v1, v2}, LF6/q;->r(LF6/a;)V

    goto :goto_0

    :cond_4
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    sget-object v2, LF6/a;->P:LF6/a;

    invoke-virtual {v1, v2}, LF6/q;->r(LF6/a;)V

    :goto_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v2, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v2}, Lu2/Q;->E(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    iget-object v2, v2, Lu6/f;->a:Lu6/b;

    iget v2, v2, Lu6/b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2, v1}, LPh/h;->l(I[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->lockScreenOrientation(Z)V

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->initRecordingSetting(Lj9/a;)V

    return-void

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderFail()V

    :cond_6
    :goto_2
    return-void
.end method

.method public stopVideoRecording(Z)Z
    .locals 9

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v2, v2, Lcom/android/camera/module/video/u;->f:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stopVideoRecording>> recording: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", from release: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v2, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H7()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object v2

    const/16 v3, 0x4b0

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, LRh/c;->b(II)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/VideoModule;->mVideoStopBoostHandle:J

    :cond_0
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v2

    sget-object v3, LF6/a;->q0:LF6/a;

    invoke-virtual {v2, v3}, LF6/q;->r(LF6/a;)V

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->stopVideoRecording(Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->checkStopInvalid(Z)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iput-boolean v5, p0, Lcom/android/camera/module/VideoModule;->isMaxFileSizeReached:Z

    iget-object p1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H7()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/camera/module/VideoModule;->mVideoStopBoostHandle:J

    invoke-virtual {p1, v0, v1}, LRh/c;->d(J)V

    :cond_1
    return v5

    :cond_2
    iget v4, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v6, 0xb4

    if-ne v4, v6, :cond_3

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v6, LCs/l;

    const/16 v7, 0xf

    invoke-direct {v6, v7}, LCs/l;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    iget v6, v4, Lu2/Q;->u:I

    invoke-virtual {v4, v6}, Lu2/Q;->E(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v6

    iget-object v6, v6, Lu6/f;->a:Lu6/b;

    iget v6, v6, Lu6/b;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v4, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v6, v4}, LPh/h;->l(I[Ljava/lang/Object;)V

    const-string v4, "RECORDING_STOP"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    iput-boolean v5, p0, Lcom/android/camera/module/VideoModule;->isMaxFileSizeReached:Z

    iput-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mOverheatTipAlreadyShown:Z

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iput-boolean v5, v4, Lcom/android/camera/module/video/u;->a:Z

    iput-boolean v5, v4, Lcom/android/camera/module/video/u;->n:Z

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    iget-object v6, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v6, v6, Lcom/android/camera/module/video/E;->D:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lfq/b$a;->a(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/camera/module/VideoBase;->mPrepareRecording:Z

    invoke-virtual {p0, v5}, Lcom/android/camera/module/r;->lockScreenOrientation(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkActivityOrientation()V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean p1, p1, Lcom/android/camera/module/video/u;->q:Z

    if-nez p1, :cond_4

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v4, LS8/h;

    const/4 v6, 0x3

    invoke-direct {v4, p0, v6}, LS8/h;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v4}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_0

    :cond_4
    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->doStop(Z)V

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/camera/module/r;->listenPhoneState(Z)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    invoke-virtual {p1}, LWh/a;->g()LWh/a;

    const-string v4, "pref_video_recorder_switch_state"

    invoke-virtual {p1, v5, v4}, LWh/a;->p(ILjava/lang/String;)LWh/a;

    invoke-virtual {p1}, LWh/a;->c()V

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iput-boolean v5, p1, Lcom/android/camera/module/video/u;->p:Z

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->doStopUI()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->checkSceneToExitHibernation()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordStateWhenStopRecording()V

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iput v5, p1, Lcom/android/camera/module/video/E;->D:I

    iget-object p1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->t5()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v1, Lr2/Q;

    invoke-virtual {p1, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/Q;

    iget-boolean v1, p1, Lr2/Q;->c:Z

    if-eqz v1, :cond_5

    iput-boolean v5, p1, Lr2/Q;->c:Z

    :cond_5
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v1, Lr2/f0;

    invoke-virtual {p1, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/f0;

    iget-boolean v1, p1, Lr2/f0;->m:Z

    if-eqz v1, :cond_6

    iput-boolean v5, p1, Lr2/f0;->m:Z

    :cond_6
    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    const-class v1, Lv2/B0;

    invoke-virtual {p1, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/B0;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lv2/B0;->w(F)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p1

    invoke-static {p1, v5}, Lcom/android/camera/data/data/E;->J0(IZ)V

    invoke-static {}, LK2/b;->a0()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LCs/n;

    invoke-direct {v1, v0}, LCs/n;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_8
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LEs/o;

    const/16 v4, 0xa

    invoke-direct {v1, v4}, LEs/o;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p1

    invoke-static {p1, v5}, Lcom/android/camera/data/data/E;->I0(IZ)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LFn/x;

    invoke-direct {v1, v0}, LFn/x;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_9
    invoke-virtual {p0, v5}, Lcom/android/camera/module/VideoBase;->notifyRecordingStateChanged(I)V

    invoke-static {}, Lcom/android/camera/data/data/m;->j0()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, LQ6/L;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LF1/C1;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, LF1/C1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_a
    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object p1, p1, Lcom/android/camera/module/video/E;->i:Lo7/a;

    invoke-virtual {p1}, Lo7/a;->e()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->isThumbnailUpdated(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateVideoThumbnail()V

    :cond_b
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mContinousRecordDisposable:Lio/reactivex/disposables/a;

    if-eqz p1, :cond_c

    iget-boolean p1, p1, Lio/reactivex/disposables/a;->b:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "dispose mContinousRecordDisposable"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mContinousRecordDisposable:Lio/reactivex/disposables/a;

    invoke-virtual {p1}, Lio/reactivex/disposables/a;->c()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mContinousRecordDisposable:Lio/reactivex/disposables/a;

    :cond_c
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget-object p1, p1, Lcom/android/camera/module/video/A;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "stopVideoRecording<<time="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public superSlowMotionDisableRecord()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportEvOverlap()Z
    .locals 0

    invoke-static {}, Lcom/android/camera/data/data/E;->X()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Q6()Z

    move-result p0

    return p0
.end method

.method public takeVideoSnapShoot(Z)Z
    .locals 19
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v2, v0, Lcom/android/camera/module/video/u;->g:Z

    if-nez v2, :cond_14

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->r:Z

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "takeVideoSnapShoot, device or module not alive"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_1
    invoke-static {}, Lk7/K;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "takeVideoSnapShoot, low storage at last point"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)Z

    return v6

    :cond_2
    iget-object v0, v1, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v0

    iget-boolean v2, v0, Lk7/i;->g:Z

    if-eqz v2, :cond_3

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ImageSaver"

    const-string v4, "ImageSaver is full"

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-boolean v0, v0, Lk7/i;->g:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "takeVideoSnapShoot, image saver is busy"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF4/e;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v6}, LF4/e;-><init>(IB)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v6

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-virtual {v0}, Lcom/android/camera/module/video/A;->p()Z

    move-result v0

    const/4 v9, 0x1

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->r:Z

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v6

    goto :goto_1

    :cond_6
    :goto_0
    move v3, v9

    :goto_1
    if-eqz v3, :cond_7

    invoke-direct {v1, v7, v8}, Lcom/android/camera/module/VideoModule;->isBlockVideoLivePhotoSnapshot(J)Z

    move-result v0

    if-eqz v0, :cond_7

    return v6

    :cond_7
    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string v2, "recording_capture"

    invoke-virtual {v0, v2}, LF6/q;->q(Ljava/lang/String;)V

    invoke-direct {v1}, Lcom/android/camera/module/VideoModule;->cameraLabsDumpIspNdd()V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v2, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->E5()Z

    move-result v2

    const-string v10, ""

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/camera/module/video/A;->p()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    iget-object v2, v1, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v2, v2, Lcom/android/camera/module/video/u;->r:Z

    if-eqz v2, :cond_a

    :cond_9
    const-string v2, "MV"

    goto :goto_2

    :cond_a
    move-object v2, v10

    :goto_2
    invoke-static {v2}, LF1/E;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, LF1/o3;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "takeVideoSnapShoot title = "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ".jpg"

    invoke-static {v4, v2}, Lk7/K;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    invoke-virtual {v5, v2, v9, v9, v6}, Lj9/h0;->W(Ljava/lang/String;ZZZ)V

    const-string v2, "DYNAMIC"

    invoke-static {}, Lcom/android/camera/data/data/j;->a0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "livephoto"

    goto :goto_3

    :cond_b
    const-string v2, "photo"

    :goto_3
    const-string v5, "key_video"

    new-instance v11, Lgq/h;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-object v5, v11, Lgq/h;->a:Ljava/lang/String;

    new-instance v5, Lgq/f;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v12, v5, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v12, v5, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v12, v5, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v5, v11, Lgq/h;->b:Lgq/f;

    const-string v5, "attr_liveshot"

    invoke-virtual {v11, v2, v5}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lgq/h;->d()V

    invoke-direct {v1}, Lcom/android/camera/module/VideoModule;->getQuality()I

    move-result v5

    iget-boolean v2, v1, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

    if-nez v2, :cond_c

    invoke-direct {v1, v4, v5, v7, v8}, Lcom/android/camera/module/VideoModule;->takePreviewSnapShoot(Ljava/lang/String;IJ)V

    return v6

    :cond_c
    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->isVideoCaptureUsePreview()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {v1, v4, v5, v7, v8}, Lcom/android/camera/module/VideoModule;->takePreviewSnapShoot(Ljava/lang/String;IJ)V

    return v6

    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/module/VideoModule;->captureAnim(Z)V

    invoke-virtual {v0}, LJe/c;->E1()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/camera/data/data/j;->C1()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v9}, Lr5/a;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    invoke-virtual {v0}, Lcom/android/camera/module/video/A;->l()I

    move-result v0

    iget-object v2, v1, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/A;

    iget-object v11, v2, Lcom/android/camera/module/video/A;->d:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v2, v2, Lcom/android/camera/module/video/A;->a:LSp/p;

    if-eqz v2, :cond_e

    invoke-interface {v2}, LSp/p;->r()I

    move-result v2

    monitor-exit v11

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_e
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v6

    :goto_4
    if-eqz v2, :cond_f

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    :cond_f
    :goto_5
    move v2, v0

    goto :goto_7

    :goto_6
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_10
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->o0()I

    move-result v0

    iget-object v2, v1, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v2, Lj6/a;

    iget v2, v2, Lj6/a;->c:I

    const/16 v11, 0x5a

    invoke-static {v0, v2, v11}, LBw/i;->H(III)I

    move-result v0

    iget-object v2, v1, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v2, Lj6/a;

    iget v2, v2, Lj6/a;->c:I

    invoke-static {v0, v2}, LBw/i;->a(II)I

    move-result v0

    goto :goto_5

    :goto_7
    new-instance v11, Lcom/android/camera/module/video/o;

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v0

    iget-object v0, v0, Lh6/b;->a:Lh6/a;

    invoke-interface {v0}, Lh6/a;->c()Landroid/location/Location;

    move-result-object v12

    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v13

    iget-object v14, v1, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-object v0, v1, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v15

    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-static {}, LK2/b;->a0()Z

    move-result v16

    if-nez v16, :cond_12

    move/from16 v16, v9

    iget-object v9, v1, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v9, v9, Lcom/android/camera/module/video/u;->r:Z

    if-eqz v9, :cond_11

    goto :goto_9

    :cond_11
    move v9, v6

    :goto_8
    move-object/from16 v17, v0

    goto :goto_a

    :cond_12
    move/from16 v16, v9

    :goto_9
    move/from16 v9, v16

    goto :goto_8

    :goto_a
    new-instance v0, Lcom/android/camera/module/VideoModule$f;

    move-object/from16 v18, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/VideoModule$f;-><init>(Lcom/android/camera/module/VideoModule;IZLjava/lang/String;I)V

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, v11, Lcom/android/camera/module/video/o;->i:Z

    iput-object v10, v11, Lcom/android/camera/module/video/o;->j:Ljava/lang/String;

    const-wide/16 v4, -0x1

    iput-wide v4, v11, Lcom/android/camera/module/video/o;->k:J

    const/4 v4, -0x1

    iput v4, v11, Lcom/android/camera/module/video/o;->l:I

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v11, Lcom/android/camera/module/video/o;->a:Ljava/lang/ref/WeakReference;

    iput-object v13, v11, Lcom/android/camera/module/video/o;->c:Landroid/util/Size;

    iput-object v14, v11, Lcom/android/camera/module/video/o;->d:Lcom/android/camera/module/video/u;

    iput-object v12, v11, Lcom/android/camera/module/video/o;->b:Landroid/location/Location;

    iput-object v15, v11, Lcom/android/camera/module/video/o;->e:Lk7/i;

    move-object/from16 v4, v18

    iput-object v4, v11, Lcom/android/camera/module/video/o;->f:Lj9/h0;

    iput-boolean v3, v11, Lcom/android/camera/module/video/o;->i:Z

    iput-boolean v9, v11, Lcom/android/camera/module/video/o;->h:Z

    iput-object v0, v11, Lcom/android/camera/module/video/o;->m:Lcom/android/camera/module/VideoModule$f;

    iput-wide v7, v1, Lcom/android/camera/module/VideoModule;->mLastVideoSnapshotTime:J

    if-eqz v3, :cond_13

    iget v0, v1, Lcom/android/camera/module/VideoModule;->mLivePhotoSnapshotInFlight:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/camera/module/VideoModule;->mLivePhotoSnapshotInFlight:I

    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "takeVideoSnapShoot, live shot in flight: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/camera/module/VideoModule;->mLivePhotoSnapshotInFlight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v0, v1, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, v2, v11}, Lj6/j;->B0(ILcom/android/camera/module/video/o;)V

    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    move/from16 v2, v16

    iput-boolean v2, v0, Lcom/android/camera/module/video/u;->g:Z

    invoke-virtual {v1}, Lcom/android/camera/module/VideoBase;->triggerSnapShotInVideo()V

    return v2

    :cond_14
    :goto_b
    iget-object v0, v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "takeVideoSnapShoot, isPaused: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v3}, Lj6/f;->q()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isActivityPaused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v3}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mSnapshotInProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v3, v3, Lcom/android/camera/module/video/u;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mMediaRecorderRecording: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v3, v3, Lcom/android/camera/module/video/u;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCaptureLongPressToLive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v1, v1, Lcom/android/camera/module/video/u;->r:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method public trackVideoInfo(Lfq/b$a;)V
    .locals 7

    const-string v0, "audio zoom"

    const-string v1, "3d record"

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/D;

    iget-boolean v3, v3, Lcom/android/camera/module/video/D;->a:Z

    iget-object v4, v2, Lfq/b$a;->a:Lfq/b;

    iput-boolean v3, v4, Lfq/b;->l:Z

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LI1/a;->h()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/module/video/AiAudioController;->f()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    const-class v6, Lv2/b;

    invoke-virtual {v4, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/b;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget v5, v3, Lcom/android/camera/module/video/AiAudioController;->g:I

    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "normal"

    goto :goto_0

    :cond_3
    move-object v0, v1

    :cond_4
    :goto_0
    iget-wide v3, v3, Lcom/android/camera/module/video/AiAudioController;->n:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget-object v0, v2, Lfq/b$a;->a:Lfq/b;

    iput-object v5, v0, Lfq/b;->n:[Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->trackVideoInfo(Lfq/b$a;)V

    return-void
.end method

.method public translateRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionDetectionArea"
        type = 0x2
    .end annotation

    const/4 p0, 0x1

    invoke-static {p0}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v0, v0, 0x2d0

    div-int/2addr v0, p0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, p0, v1

    mul-int/lit16 v1, v1, 0x2d0

    div-int/2addr v1, p0

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit16 v2, v2, 0x2d0

    div-int/2addr v2, p0

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int p1, p0, p1

    mul-int/lit16 p1, p1, 0x2d0

    div-int/2addr p1, p0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public trySaveVidoeFile(Z)V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->i:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->e()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "trySaveVideoFile uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", postProcessingSucceed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isCaptureIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v1, v1, Lcom/android/camera/module/video/u;->r:Z

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object p1, p1, Lcom/android/camera/module/video/E;->i:Lo7/a;

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->toSaveLivePhoto(Lo7/a;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->videoFileDurationInvalid()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1, v4, v0}, Lcom/android/camera/module/VideoModule;->saveVideo(ZZLo7/a;)Landroid/net/Uri;

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iput-object v2, p0, Lcom/android/camera/module/video/E;->n:Landroid/content/ContentValues;

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p1}, Lj6/f;->q()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->Kg()V

    const-string p1, "VID"

    invoke-virtual {p0, v2, v4, p1, v4}, Lcom/android/camera/module/VideoModule;->onNewUriArrived(Landroid/net/Uri;ZLjava/lang/String;Z)V

    return-void

    :cond_3
    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 p1, 0xd0

    if-eq p0, p1, :cond_5

    const/16 p1, 0xcf

    if-eq p0, p1, :cond_5

    const/16 p1, 0xd9

    if-ne p0, p1, :cond_4

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_1
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LE3/j;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, LE3/j;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/r;->unRegisterProtocol()V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/q;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/Z0;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/P0;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/K;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/l0;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/v1;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTopConfigProtocol:LQ6/o1;

    invoke-interface {v0}, LN6/a;->unRegisterProtocol()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object p0

    invoke-virtual {p0}, Lp6/b;->c()V

    return-void
.end method

.method public updateASD(Z)V
    .locals 3

    const/16 v0, 0xa2

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "Video ASD = false"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, v1}, Lj6/j;->n0(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateAiAudioTrack()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioTrack"
        type = 0x0
    .end annotation

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->u0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/data/data/w;->F(I)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/camera/data/data/m;->x0(IZ)V

    :cond_2
    return-void
.end method

.method public updateAiEnhancedVideo()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAiEnhancedVideo"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->a5(Lj9/e;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/E;->u(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj9/h0;->l(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lj9/h0;->h(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateAutoHibernation()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->updateAutoHibernation()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lfq/b$a;

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iget-boolean p0, p0, Lj6/a;->e:Z

    iget-object v0, v0, Lfq/b$a;->a:Lfq/b;

    iput-boolean p0, v0, Lfq/b;->p:Z

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

    new-instance v1, LC4/e;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, LC4/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateColorSpace(Lwu/a$k;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    iget-object v0, p1, Lwu/a$k;->a:Lwu/a;

    iget-object p1, p1, Lwu/a$k;->b:Lwu/a;

    invoke-interface {p0, v0, p1}, Lru/k;->z(Lwu/a;Lwu/a;)V

    invoke-interface {p0}, Lru/k;->c()V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/effect/EffectController;->h0(Lru/k;)V

    return-void
.end method

.method public updateEiValue()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/A0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/A0;

    iget-boolean v0, v0, Lr2/A0;->a:Z

    xor-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lj9/a;->B0(Z)V

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getEIKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/module/Y;->k()Z

    move-result v1

    const-string v2, "0"

    if-eqz v1, :cond_2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-static {v1, v0}, LEw/k;->j(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lj9/a;->A0(I)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lj9/a;->A0(I)V

    return-void
.end method

.method public updateExposureTime()V
    .locals 4

    invoke-static {}, Lcom/android/camera/module/video/H;->l()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/B0;

    invoke-virtual {v0, v2}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LEs/C;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, LEs/C;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->w0()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/module/N;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/module/N;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateFilter()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isDolbyVisionPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/m;->d(I)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p0

    sget-object v1, Lo3/d;->d:Lo3/d;

    const/16 v1, 0x67

    invoke-static {v0, v1}, Li3/b;->c(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/effect/EffectController;->a0(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p0

    sget-object v1, Lo3/d;->d:Lo3/d;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Li3/b;->c(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/effect/EffectController;->a0(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p0

    sget v0, Li3/b;->N:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/effect/EffectController;->a0(I)V

    return-void
.end method

.method public updateFpsRange()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    iget v2, v2, Lj9/a;->a:I

    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/E;->f(I)Z

    move-result v1

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object p0, p0, Lcom/android/camera/module/video/E;->g:Landroid/util/Range;

    invoke-interface {v0, p0, v1}, Lj6/j;->b0(Landroid/util/Range;Z)V

    return-void
.end method

.method public updateISO(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportProVideo"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getIsoKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/module/video/H;->l()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->c()Lj9/e;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/data/data/m;->w(Lj9/e;)Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-static {v1, v0}, LEw/k;->j(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lj9/a;->J0(I)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lj9/a;->J0(I)V

    return-void
.end method

.method public updateIntellDolly()V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isCinematicDollySupported"
        type = 0x0
    .end annotation

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xe3

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/E;->F()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setIntellDollyEnable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "CameraConfigManager"

    invoke-static {v5, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-boolean v2, v1, Lj9/i0;->T2:Z

    if-eq v2, v0, :cond_0

    iput-boolean v0, v1, Lj9/i0;->T2:Z

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setIntellDollyFeatureEnable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v1, p0, Lj9/i0;->U2:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lj9/i0;->U2:Z

    :cond_1
    return-void
.end method

.method public updateMotionDetectionRect()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionDetectionArea"
        type = 0x2
    .end annotation

    invoke-static {}, LQ6/a1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH4/t;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, LH4/t;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updatePictureAndPreviewSize()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->j:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v0

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/VideoModule;->updateVideoSize(D)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->c:Landroid/util/Size;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/module/VideoModule;->updatePictureSize(DLandroid/util/Size;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->c:Landroid/util/Size;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/module/VideoModule;->updatePreviewSize(DLandroid/util/Size;)V

    return-void
.end method

.method public updatePictureSize(DLandroid/util/Size;)V
    .locals 4

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    iget v2, v1, Lj9/e;->b:I

    const/16 v3, 0x100

    invoke-virtual {v1, v3, v2}, Lj9/e;->i0(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2, v0, p3}, Ll6/n;->g(Ljava/util/List;DII)Landroid/util/Size;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2, p1}, Lj6/j;->e(Landroid/util/Size;)V

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "pictureSize: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->G()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updatePreviewSize(DLandroid/util/Size;)V
    .locals 3

    invoke-static {p3}, Ll6/n;->d(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget v1, v0, Lj9/e;->b:I

    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v2}, Lj9/e;->j0(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-static {v0, p1, p2, v2, p3}, Ll6/n;->g(Ljava/util/List;DII)Landroid/util/Size;

    move-result-object p1

    invoke-interface {v1, p1}, Lj6/j;->J(Landroid/util/Size;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->a()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->a()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->calculationPreviewSize(II)Landroid/util/Size;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "the preview size width is : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height is : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/camera/module/r;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method public updateRatioInRecordingState()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSwitchCameraInRecording"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[VideoSwitch] updateRatioInRecordingState: isCimenaRatio = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-boolean v2, v2, Lcom/android/camera/module/video/E;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-boolean v0, v0, Lcom/android/camera/module/video/E;->C:Z

    const/16 v1, 0xa2

    invoke-static {v1, v0}, Lcom/android/camera/data/data/E;->t0(IZ)V

    const/16 v0, 0x3c

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    :cond_0
    return-void
.end method

.method public updateRecordStateWhenStopRecording()V
    .locals 3

    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LP9/f;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, LP9/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateRecordingTime()V
    .locals 9

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->updateRecordingTime()V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v0, v0, Lcom/android/camera/module/video/E;->h:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/module/video/B;->a:Ljava/util/ArrayList;

    invoke-static {v1, v0}, LQu/u;->p0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/camera/module/video/u;->c:J

    sub-long/2addr v1, v3

    iget-boolean v3, v0, Lcom/android/camera/module/video/u;->a:Z

    if-eqz v3, :cond_2

    iget-wide v1, v0, Lcom/android/camera/module/video/u;->b:J

    :cond_2
    move-wide v4, v1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/camera/module/video/E;->e(IJ)J

    move-result-wide v0

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/android/camera/module/VideoModule;->getTextOfShowTime(JJ)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    const/16 v3, 0x1c

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, LAg/b;->c(IJZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mRecordingSecondTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {p0, v1, v4, v5, v0}, Lcom/android/camera/module/VideoModule;->updateRecordingTimeUI(Lcom/android/camera/module/video/E;JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iput-object v0, v1, Lcom/android/camera/module/video/u;->d:Ljava/lang/String;

    invoke-direct {p0, v1, v4, v5, v0}, Lcom/android/camera/module/VideoModule;->triggerNextRecordTimeUpdate(Lcom/android/camera/module/video/u;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-boolean v1, v0, Lcom/android/camera/module/video/E;->d:Z

    if-eqz v1, :cond_4

    iget-wide v0, v0, Lcom/android/camera/module/video/E;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->L0()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, LJe/c;->M0()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-wide v0, v0, Lcom/android/camera/module/video/E;->q:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)Z

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateRecordingTime "

    const-string v3, " mTimeLapseDuration "

    invoke-static {v4, v5, v2, v3}, LF1/r0;->h(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-wide v3, p0, Lcom/android/camera/module/video/E;->q:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public updateRecordingTimeUI(Lcom/android/camera/module/video/E;JLjava/lang/String;)V
    .locals 0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LV9/f0;

    const/4 p3, 0x3

    invoke-direct {p2, p3, p0, p4}, LV9/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateSATZooming(I)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportVideoSAT"
        type = 0x0
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/VideoModule;->updateSATZooming(IZ)V

    return-void
.end method

.method public updateSATZooming(IZ)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportVideoSAT"
        type = 0x0
    .end annotation

    const/16 v0, 0x84

    const/16 v1, 0x5d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object v4

    invoke-interface {v4, p1}, Lf9/a;->v(I)B

    move-result v4

    invoke-interface {p2, v4, v3}, Lj6/j;->t0(BZ)V

    .line 3
    filled-new-array {v1}, [I

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isInRecording()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5
    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lf9/a;->v(I)B

    move-result p1

    if-lez p1, :cond_0

    move v2, v3

    :cond_0
    invoke-interface {p2, v2}, Lj6/j;->y0(Z)V

    .line 6
    filled-new-array {v0}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object p2

    check-cast p2, Lh9/I;

    invoke-virtual {p2}, Lh9/I;->y9()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lf9/a;->v(I)B

    move-result p1

    invoke-interface {p2, p1, v2}, Lj6/j;->t0(BZ)V

    .line 9
    filled-new-array {v1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isInRecording()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lf9/a;->v(I)B

    move-result p1

    if-lez p1, :cond_3

    move v2, v3

    :cond_3
    invoke-interface {p2, v2}, Lj6/j;->y0(Z)V

    .line 12
    filled-new-array {v0}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    :cond_4
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

.method public updateSoftLightRing()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    sget-object v1, Lf2/a;->f:Lf2/a;

    iget-boolean v1, v1, Lf2/a;->a:Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/camera/effect/EffectController;->i0(ZLru/k;)V

    return-void
.end method

.method public updateVideoSize(D)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget v1, v0, Lj9/e;->b:I

    const-class v2, Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1, v2}, Lj9/e;->j0(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iget-object v1, v1, Lcom/android/camera/module/video/E;->j:Landroid/media/CamcorderProfile;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v0, p1, p2, v2, v1}, Ll6/n;->g(Ljava/util/List;DII)Landroid/util/Size;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    iput-object p1, p2, Lcom/android/camera/module/video/E;->c:Landroid/util/Size;

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "videoSize: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateVideoStabilization(Z)V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->forceOISOn()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateVideoStabilization: eisOn = "

    const-string v3, ", forceOISOn = "

    invoke-static {v2, v3, p1, v0}, LF1/P;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->needDisableEISAndOIS()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "videoStabilization: disabled EIS and OIS"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    invoke-virtual {p1, v3}, Lj9/h0;->E(Z)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    invoke-virtual {p1, v3}, Lj9/h0;->F(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    invoke-interface {p0, v2, v2}, Lru/k;->K(FF)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "videoStabilization: EIS"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    invoke-virtual {p1, v3}, Lj9/h0;->F(Z)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    invoke-virtual {p1, v1}, Lj9/h0;->E(Z)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->c()Lj9/e;

    move-result-object p1

    invoke-static {p1}, Lj9/f;->p1(Lj9/e;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    const p1, 0x3f4ccccd    # 0.8f

    invoke-interface {p0, p1, p1}, Lru/k;->K(FF)V

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "videoStabilization: OIS"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    invoke-virtual {p1, v3}, Lj9/h0;->E(Z)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    invoke-virtual {p1, v1}, Lj9/h0;->F(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    invoke-interface {p0, v2, v2}, Lru/k;->K(FF)V

    return-void
.end method

.method public updateZoomButtonForRecording(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lf9/a;->h0(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->p0()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object p1

    invoke-interface {p1}, Lf9/a;->u2()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomManager()Lf9/a;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lf9/a;->h0(Z)V

    return-void
.end method

.method public useBackToStopRecording()Z
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/u;

    iget-boolean v0, v0, Lcom/android/camera/module/video/u;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    move-object v4, v0

    check-cast v4, Lj6/a;

    iget-wide v4, v4, Lj6/a;->a:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xbb8

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    check-cast v0, Lj6/a;

    iput-wide v2, v0, Lj6/a;->a:J

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onBackPressed, press again to stop recording"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE4/v;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LE4/v;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)Z

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public videoFileDurationInvalid()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->videoFileDurationInvalid()V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140a89

    invoke-static {v0, v1}, LF1/C4;->e(Landroid/content/Context;I)LPu/A;

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/E;

    invoke-virtual {v0}, Lcom/android/camera/module/video/E;->c()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p0

    sget-object v0, LF6/a;->q0:LF6/a;

    filled-new-array {v0}, [LF6/a;

    move-result-object v0

    invoke-virtual {p0, v0}, LF6/q;->s([LF6/a;)J

    return-void
.end method
