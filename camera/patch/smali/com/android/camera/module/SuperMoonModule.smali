.class public Lcom/android/camera/module/SuperMoonModule;
.super Lcom/android/camera/module/r;
.source "SourceFile"

# interfaces
.implements LQ6/q;
.implements LQ6/o1;
.implements Lj9/a$g;
.implements Lj9/a$j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/SuperMoonModule$b;
    }
.end annotation


# static fields
.field private static final CAPTURE_DURATION_THRESHOLD:J = 0x2ee0L

.field private static final TAG:Ljava/lang/String; = "SuperMoonModule"


# instance fields
.field private m3ALocked:Z

.field private mAFEndLogTimes:I

.field private mAlgorithmName:Ljava/lang/String;

.field private mApertures:[F

.field private mBlockQuickShot:Z

.field private mBroadcastIntent:Landroid/content/Intent;

.field private final mCameraDeviceLock:Ljava/lang/Object;

.field private mCaptureStartTime:J

.field private mCurrentAiScene:I

.field private mEnableParallelSession:Z

.field private mEnabledPreviewThumbnail:Z

.field protected mFakeSatTeleOutputSize:Landroid/util/Size;

.field protected mFakeSatTelePictureSize:Landroid/util/Size;

.field protected mFakeSatUltraTeleOutputSize:Landroid/util/Size;

.field protected mFakeSatUltraTelePictureSize:Landroid/util/Size;

.field protected mFakeSatUltraWideOutputSize:Landroid/util/Size;

.field protected mFakeSatUltraWidePictureSize:Landroid/util/Size;

.field protected mFakeSatWideOutputSize:Landroid/util/Size;

.field protected mFakeSatWidePictureSize:Landroid/util/Size;

.field private mFocalLengths:[F

.field private mIsShowLyingDirectHintStatus:I

.field private mJpegRotation:I

.field private mLocation:Landroid/location/Location;

.field private mLongPressedAutoFocus:Z

.field private mMajorItem:LN1/n;

.field private mMinorItem:LN1/n;

.field private mMultiSnapStatus:Z

.field private mOnResumeTime:J

.field protected mOutputPictureFormat:I

.field protected mOutputPictureSize:Landroid/util/Size;

.field private mParallelSessionConfigured:Z

.field private final mParallelSessionLock:Ljava/lang/Object;

.field protected mSensorRawImageSize:Landroid/util/Size;

.field private final mSensorStateListener:LF1/i4$q;

.field private mServiceStatusListener:LRh/x;

.field private mShootOrientation:I

.field private mShootRotation:F

.field protected mTelePictureSize:Landroid/util/Size;

.field protected mUltraTelePictureSize:Landroid/util/Size;

.field protected mUltraWidePictureSize:Landroid/util/Size;

.field private mVolumeLongPress:Z

.field private volatile mWaitSaveFinish:Z

.field protected mWidePictureSize:Landroid/util/Size;

.field public mZoomMapController:Li9/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/r;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mCameraDeviceLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mVolumeLongPress:Z

    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    invoke-static {}, LEv/G;->b()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mBlockQuickShot:Z

    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mParallelSessionConfigured:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mParallelSessionLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/SuperMoonModule;->mIsShowLyingDirectHintStatus:I

    iput v0, p0, Lcom/android/camera/module/SuperMoonModule;->mCurrentAiScene:I

    new-instance v0, Lcom/android/camera/module/SuperMoonModule$a;

    invoke-direct {v0, p0}, Lcom/android/camera/module/SuperMoonModule$a;-><init>(Lcom/android/camera/module/SuperMoonModule;)V

    iput-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mSensorStateListener:LF1/i4$q;

    return-void
.end method

.method public static bridge synthetic Af(Lcom/android/camera/module/SuperMoonModule;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/SuperMoonModule;->setOrientation(II)V

    return-void
.end method

.method public static synthetic De(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/SuperMoonModule;->lambda$tryRemoveCountDownMessage$2(LQ6/l1;)V

    return-void
.end method

.method public static synthetic Fc(Lj9/a;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/SuperMoonModule;->lambda$onFocusStateChanged$1(Lj9/a;)V

    return-void
.end method

.method public static synthetic Mc(Landroidx/fragment/app/l;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/SuperMoonModule;->lambda$getCountDownTimes$3(Landroidx/fragment/app/l;)V

    return-void
.end method

.method public static bridge synthetic Te(Lcom/android/camera/module/SuperMoonModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/SuperMoonModule;->mIsShowLyingDirectHintStatus:I

    return p0
.end method

.method public static synthetic Ua(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/SuperMoonModule;->lambda$onShutterButtonClick$5(LQ6/l1;)V

    return-void
.end method

.method public static synthetic Vb(Landroid/view/Window;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/SuperMoonModule;->lambda$handleMessage$15(Landroid/view/Window;)V

    return-void
.end method

.method public static synthetic Wb(Lcom/android/camera/module/SuperMoonModule;Lqh/f;LQ6/t0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/SuperMoonModule;->lambda$getPictureInfo$0(Lqh/f;LQ6/t0;)V

    return-void
.end method

.method public static synthetic access$001(Lcom/android/camera/module/SuperMoonModule;D)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onDeviceKeepMoving(D)Z

    move-result p0

    return p0
.end method

.method private beginParallelProcess(LRh/r;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "algo begin: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, LRh/r;->k:LRh/A;

    iget-object p1, p1, LRh/A;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SuperMoonModule"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/SuperMoonModule;->mServiceStatusListener:LRh/x;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/camera/module/SuperMoonModule$b;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/camera/module/SuperMoonModule$b;-><init>(Lj9/a;Lcom/android/camera/module/SuperMoonModule;)V

    iput-object p1, p0, Lcom/android/camera/module/SuperMoonModule;->mServiceStatusListener:LRh/x;

    sget-object p1, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {p1}, Lwp/g;->a()Lwp/g$b;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LL9/l;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, LL9/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private blockSnapClickUntilSaveFinish()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SuperMoonModule"

    const-string v2, "blockSnapClickUntilFinish"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mWaitSaveFinish:Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3d

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static synthetic ce(Lcom/android/camera/module/SuperMoonModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->configParallelSession()V

    return-void
.end method

.method private configParallelSession()V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iget v0, v0, Lj9/a;->a:I

    invoke-static {v0}, LQg/c;->a(I)I

    move-result v0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->U()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v4, 0x800a

    invoke-direct {v1, v4, v3, v3, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/16 v0, 0x201

    :cond_1
    new-instance v1, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v1, v2, v3, v3, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    :goto_0
    const-string v0, "SuperMoonModule"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "configParallelSession: pictureSize = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", outputSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureSize:Landroid/util/Size;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", outputFormat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureFormat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/xiaomi/engine/BufferFormat;

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/16 v5, 0x23

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    sget-object v1, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v1}, Lwp/g;->a()Lwp/g$b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lwp/g$b;->b(Lcom/xiaomi/engine/BufferFormat;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lwp/g$b;->q(Lk7/i;)V

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureFormat:I

    invoke-static {}, Lwp/g;->b()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v5

    invoke-interface {v5, v0, v2, v4}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->setOutputPictureSpec(III)V

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->n0()V

    invoke-virtual {v1}, Lwp/g$b;->r()V

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mParallelSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/camera/module/SuperMoonModule;->mParallelSessionConfigured:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public static synthetic dd(Lcom/android/camera/module/SuperMoonModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->lambda$notifyFirstFrameArrived$13()V

    return-void
.end method

.method private enablePreviewAsThumbnail()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    return p0
.end method

.method public static synthetic gc(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/SuperMoonModule;->lambda$onSingleTapUp$4(LQ6/t0;)V

    return-void
.end method

.method public static synthetic gd(Lcom/android/camera/module/SuperMoonModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->lambda$setFrameAvailable$7()V

    return-void
.end method

.method public static synthetic ge(Lqh/g;LQ6/l1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/SuperMoonModule;->lambda$onShutterButtonClick$6(Lqh/g;LQ6/l1;)V

    return-void
.end method

.method private getCountDownTimes()I
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mBroadcastIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TIMER_DURATION_SECONDS"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    sget-object v3, Lvr/m;->e:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object v0

    iget-object v0, v0, Lvr/m;->a:Landroid/content/Intent;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eq v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/SuperMoonModule;->mBroadcastIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LEs/r;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LEs/r;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_2
    if-eqz v0, :cond_5

    const/4 p0, 0x5

    if-eq v0, p0, :cond_4

    const/4 p0, 0x3

    :cond_4
    return p0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {}, Lcom/android/camera/data/data/E;->c()I

    move-result p0

    return p0
.end method

.method private getDeviceWaterMarkParam()LFr/a;
    .locals 5

    invoke-static {}, Lcom/android/camera/data/data/j;->u0()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/data/data/j;->z0()Z

    move-result v1

    invoke-static {}, Lcom/android/camera/data/data/j;->t0()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/j;->r1()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/android/camera/data/data/w;->j(Z)LFr/c;

    move-result-object v3

    invoke-static {v2}, Lcom/android/camera/data/data/w;->y(Z)LFr/c;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lvr/b0;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LFr/c;->b:LFr/c$a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, LFr/c$a;->a(LFr/c;)LFr/c;

    invoke-static {v2}, LFr/c$a;->a(LFr/c;)LFr/c;

    :cond_1
    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result p0

    new-instance v2, LFr/a;

    invoke-direct {v2, v1}, LFr/a;-><init>(Z)V

    iput-boolean p0, v2, LFr/a;->b:Z

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lvr/b0;->b(Landroid/content/Context;)Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/w;->i()Ljava/lang/String;

    :cond_2
    return-object v2
.end method

.method private getPictureInfo()Lqh/f;
    .locals 8

    const-string v0, "PictureInfo"

    new-instance v1, Lqh/f;

    invoke-direct {v1}, Lqh/f;-><init>()V

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isFrontMirror()Z

    move-result v2

    invoke-virtual {v1, v2}, Lqh/f;->c(Z)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->d0()Z

    move-result v2

    invoke-virtual {v1, v2}, Lqh/f;->h(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isPictureUseDualFrontCamera()Z

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

    const/4 v2, 0x0

    iput-boolean v2, v1, Lqh/f;->e:Z

    iput v2, v1, Lqh/f;->d:I

    :try_start_0
    iget-object v3, v1, Lqh/f;->b:Lorg/json/JSONObject;

    const-string v4, "AIScene"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v4, "setAIScene JSONException occurs "

    invoke-static {v0, v4, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-boolean v3, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    iput-boolean v3, v1, Lqh/f;->k:Z

    invoke-static {}, Lcom/android/camera/data/data/j;->P()I

    move-result v3

    invoke-virtual {v1, v3}, Lqh/f;->b(I)V

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v3}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActualCameraId()I

    move-result v3

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-virtual {v4}, Lu6/f;->k()I

    move-result v4

    if-ne v3, v4, :cond_0

    const-string v4, "_RearUltra"

    invoke-static {v3, v4}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lqh/f;->t:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-virtual {v4}, Lu6/f;->o()I

    move-result v4

    if-ne v3, v4, :cond_1

    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K7()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "_RearMacro"

    invoke-static {v3, v4}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lqh/f;->t:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-virtual {v4}, Lu6/f;->r()I

    move-result v4

    if-ne v3, v4, :cond_2

    const-string v4, "_RearTele"

    invoke-static {v3, v4}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lqh/f;->t:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-virtual {v4}, Lu6/f;->M()I

    move-result v4

    if-ne v3, v4, :cond_3

    const-string v4, "_RearTele4x"

    invoke-static {v3, v4}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lqh/f;->t:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-virtual {v4}, Lu6/f;->f()I

    move-result v4

    if-ne v3, v4, :cond_4

    const-string v4, "_RearWide"

    invoke-static {v3, v4}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lqh/f;->t:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-virtual {v4}, Lu6/f;->v()I

    move-result v4

    if-ne v3, v4, :cond_5

    const-string v4, "_rear"

    invoke-static {v3, v4}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lqh/f;->t:Ljava/lang/String;

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/SuperMoonModule;->mFocalLengths:[F

    if-eqz v3, :cond_6

    array-length v4, v3

    if-lez v4, :cond_6

    aget v3, v3, v2

    iput v3, v1, Lqh/f;->u:F

    :cond_6
    iget-object v3, p0, Lcom/android/camera/module/SuperMoonModule;->mApertures:[F

    if-eqz v3, :cond_7

    array-length v4, v3

    if-lez v4, :cond_7

    aget v3, v3, v2

    iput v3, v1, Lqh/f;->v:F

    :cond_7
    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/camera/module/b0;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/module/b0;-><init>(Lcom/android/camera/module/SuperMoonModule;Lqh/f;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget v3, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    iput v3, v1, Lqh/f;->M:I

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->getZoomManager()Lg9/f;

    move-result-object v3

    iget v3, v3, Lg9/f;->l:F

    iput v3, v1, Lqh/f;->n:F

    :try_start_1
    iget-object v4, v1, Lqh/f;->b:Lorg/json/JSONObject;

    const-string/jumbo v5, "zoomMultiple"

    float-to-double v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    const-string/jumbo v4, "setZoomMulti JSONException occurs "

    invoke-static {v0, v4, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->t()Lj9/i0;

    move-result-object v0

    iget v0, v0, Lj9/i0;->h0:I

    iput v0, v1, Lqh/f;->m:I

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->t()Lj9/i0;

    move-result-object p0

    iget-object p0, p0, Lj9/i0;->c:[Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz p0, :cond_9

    array-length v0, p0

    if-lez v0, :cond_9

    aget-object p0, p0, v2

    if-nez p0, :cond_8

    const-string p0, "0"

    iput-object p0, v1, Lqh/f;->o:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iput-object p0, v1, Lqh/f;->r:Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/MeteringRectangle;->getX()I

    move-result v0

    iput v0, v1, Lqh/f;->p:I

    invoke-virtual {p0}, Landroid/hardware/camera2/params/MeteringRectangle;->getY()I

    move-result p0

    iput p0, v1, Lqh/f;->q:I

    :cond_9
    :goto_3
    invoke-virtual {v1}, Lqh/f;->a()V

    return-object v1
.end method

.method private getSatPictureSize()Landroid/util/Size;
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->H()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v1, "getSatPictureSize: invalid satMasterCameraId "

    invoke-static {v0, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SuperMoonModule"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule;->mWidePictureSize:Landroid/util/Size;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule;->mUltraTelePictureSize:Landroid/util/Size;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule;->mTelePictureSize:Landroid/util/Size;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule;->mWidePictureSize:Landroid/util/Size;

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule;->mUltraWidePictureSize:Landroid/util/Size;

    return-object p0
.end method

.method private static getTiltShiftMode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private handleSaveFinishIfNeed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mWaitSaveFinish:Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public static bridge synthetic hf(Lcom/android/camera/module/SuperMoonModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    return p0
.end method

.method public static synthetic ic(Landroid/view/Window;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/SuperMoonModule;->lambda$handleMessage$14(Landroid/view/Window;)V

    return-void
.end method

.method private initZoomMapControllerIfNeeded()V
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

    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Li9/h;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->d0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lj9/f;->U1(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj9/e;->q0()Ljava/util/List;

    move-result-object v1

    new-instance v2, Li9/h;

    iget-object v3, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1, v0}, Li9/h;-><init>(Lcom/android/camera/module/X;ZLjava/util/List;Lj9/e;)V

    iput-object v2, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Li9/h;

    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->b()Lp9/K;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Li9/h;

    invoke-interface {v0, p0}, Lp9/K;->i(Li9/h;)V

    :cond_0
    return-void
.end method

.method private is3ALocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    return p0
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

    invoke-virtual {p0}, Lcom/android/camera/module/r;->needKeepCoverView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isQueueFull()Z

    move-result v0

    if-nez v0, :cond_1

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

.method private isFrontMirror()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isImageSaverFull()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object p0

    const-string v0, "SuperMoonModule"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "isParallelQueueFull: ImageSaver is null"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-static {}, Lk7/i;->B()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "isParallelQueueFull: ImageSaver queue is full"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private isInMultiSurfaceSatMode()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->U()Z

    move-result p0

    return p0
.end method

.method private isParallelQueueFull()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isImageSaverFull()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    sget-object p0, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {p0}, Lwp/g;->a()Lwp/g$b;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lwp/g$b;->k()Z

    move-result p0

    return p0

    :cond_3
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "SuperMoonModule"

    const-string v2, "isParallelQueueFull: NOTICE: CHECK WHY BINDER IS NULL!"

    invoke-static {v0, v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private isParallelSessionConfigured()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mParallelSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/camera/module/SuperMoonModule;->mParallelSessionConfigured:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isQueueFull()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isParallelQueueFull()Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isImageSaverFull()Z

    move-result p0

    return p0
.end method

.method public static synthetic ke(Landroidx/fragment/app/l;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/SuperMoonModule;->lambda$onPreviewSessionSuccess$8(Landroidx/fragment/app/l;)V

    return-void
.end method

.method private lambda$beginParallelProcess$10(Lwp/g$b;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule;->mServiceStatusListener:LRh/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p1, Lwp/g$b;->f:Lwp/g;

    iput-object v0, p0, Lwp/g;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static synthetic lambda$getCountDownTimes$3(Landroidx/fragment/app/l;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method private lambda$getPictureInfo$0(Lqh/f;LQ6/t0;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v0

    invoke-interface {p2, v0}, LQ6/t0;->Sm(Landroid/util/Size;)[Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->G()Landroid/util/Size;

    move-result-object p0

    invoke-interface {p2, p0}, LQ6/t0;->xo(Landroid/util/Size;)[Landroid/graphics/RectF;

    move-result-object v0

    :cond_1
    invoke-static {v0}, LCc/h;->l([Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iput-object p0, p1, Lqh/f;->s:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private static synthetic lambda$handleMessage$14(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$15(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private lambda$handleMessage$16(Landroid/os/Message;LQ6/C;)V
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

.method private synthetic lambda$notifyFirstFrameArrived$13()V
    .locals 1

    sget-object v0, Le2/m;->A:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method private static synthetic lambda$onFocusStateChanged$1(Lj9/a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lj9/a;->b0(Z)V

    return-void
.end method

.method private static synthetic lambda$onPictureTakenFinished$11(LQ6/d;)V
    .locals 1

    const v0, 0x7f140046

    invoke-interface {p0, v0}, LQ6/c;->da(I)V

    return-void
.end method

.method private static synthetic lambda$onPreviewSessionSuccess$8(Landroidx/fragment/app/l;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onPreviewSessionSuccess$9(Landroidx/fragment/app/l;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onShutterButtonClick$5(LQ6/l1;)V
    .locals 1

    const-string/jumbo v0, "speech_shutter_desc"

    invoke-interface {p0, v0}, LQ6/l1;->Uo(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onShutterButtonClick$6(Lqh/g;LQ6/l1;)V
    .locals 0

    invoke-interface {p1}, LQ6/l1;->u7()Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private static synthetic lambda$onSingleTapUp$4(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/t0;->Wp(Z)V

    return-void
.end method

.method private synthetic lambda$setFrameAvailable$7()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LF1/i4;->n(Z)V

    return-void
.end method

.method private lambda$setOrientationParameter$12()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->c:I

    invoke-virtual {v0, p0}, Lj9/h0;->B(I)V

    return-void
.end method

.method private static synthetic lambda$tryRemoveCountDownMessage$2(LQ6/l1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/l1;->Fi(Z)V

    return-void
.end method

.method private lockAEAF()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SuperMoonModule"

    const-string v2, "lockAEAF"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0, v1}, Lu6/q;->E(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    return-void
.end method

.method public static synthetic nd(Lcom/android/camera/module/SuperMoonModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->lambda$setOrientationParameter$12()V

    return-void
.end method

.method public static synthetic oa(LQ6/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/SuperMoonModule;->lambda$onPictureTakenFinished$11(LQ6/d;)V

    return-void
.end method

.method public static bridge synthetic of(Lcom/android/camera/module/SuperMoonModule;I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/SuperMoonModule;->mIsShowLyingDirectHintStatus:I

    return-void
.end method

.method private onShutter()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SuperMoonModule"

    if-nez v0, :cond_0

    const-string p0, "onShutter: preview stopped"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/module/SuperMoonModule;->mCaptureStartTime:J

    sub-long/2addr v3, v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "mShutterLag = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateEnablePreviewThumbnail()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onShutter mEnabledPreviewThumbnail:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/camera/module/SuperMoonModule;->mEnabledPreviewThumbnail:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnabledPreviewThumbnail:Z

    if-eqz v0, :cond_1

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->b1()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    sget-object v1, Ltu/c;->a:Ltu/c;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lru/k;->k(Ltu/c;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->playCameraSound(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    sget-object v1, Ltu/a;->c:Ltu/a;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraRotation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lru/k;->O(Ltu/a;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->needKeepCoverView()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mBlockQuickShot:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->resetStatusToIdle()V

    :cond_2
    return-void
.end method

.method public static bridge synthetic pf(Lcom/android/camera/module/SuperMoonModule;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->is3ALocked()Z

    move-result p0

    return p0
.end method

.method private prepareNormalCapture()V
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "prepareNormalCapture E"

    const-string v3, "SuperMoonModule"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnabledPreviewThumbnail:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/SuperMoonModule;->mCaptureStartTime:J

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/camera/module/SuperMoonModule;->mCaptureStartTime:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setCaptureTime: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "CameraConfigManager"

    invoke-static {v7, v2, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iput-wide v4, v1, Lj9/i0;->d1:J

    iget-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-nez v1, :cond_0

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    new-instance v2, LF6/e$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->d0()Z

    move-result v4

    iput-boolean v4, v2, LF6/e$a;->a:Z

    iget v4, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iput v4, v2, LF6/e$a;->b:I

    new-instance v4, LF6/e;

    invoke-direct {v4, v2}, LF6/e;-><init>(LF6/e$a;)V

    invoke-static {v4}, LF6/r;->a(LF6/e;)LF6/a;

    move-result-object v2

    invoke-virtual {v1, v2}, LF6/q;->r(LF6/a;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lj6/j;->E(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:LN1/n;

    iput-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:LN1/n;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v4, Lv2/a;

    invoke-virtual {v2, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/a;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lv2/a;->p()LN1/n;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:LN1/n;

    const-string/jumbo v5, "super_moon_reset"

    if-eqz v4, :cond_1

    iget-object v4, v4, LN1/n;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:LN1/n;

    :goto_0
    iput-object v4, p0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:LN1/n;

    invoke-virtual {v2}, Lv2/a;->q()LN1/n;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:LN1/n;

    if-eqz v2, :cond_2

    iget-object v2, v2, LN1/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:LN1/n;

    :goto_1
    iput-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:LN1/n;

    :cond_3
    new-instance v1, Lgq/h;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, "M_superMoon_"

    iput-object v2, v1, Lgq/h;->a:Ljava/lang/String;

    new-instance v2, Lgq/f;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v2, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v2, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v2, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v2, v1, Lgq/h;->b:Lgq/f;

    new-instance v2, Lk8/a;

    iget-object v4, p0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:LN1/n;

    iget-object v5, p0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:LN1/n;

    invoke-direct {v2, v4, v5}, Lk8/a;-><init>(LN1/n;LN1/n;)V

    invoke-virtual {v1, v2}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lgq/h;->d()V

    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:LN1/n;

    const/16 v2, 0x5a

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:LN1/n;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->o0()I

    move-result v1

    iget-object v4, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v4, Lj6/a;

    iget v4, v4, Lj6/a;->c:I

    invoke-static {v1, v4, v2}, LBw/i;->H(III)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/SuperMoonModule;->mJpegRotation:I

    goto :goto_3

    :cond_5
    :goto_2
    iput v2, p0, Lcom/android/camera/module/SuperMoonModule;->mJpegRotation:I

    const-string v1, "prepareNormalCapture: watermark switch on, force change jpeg rotation to 90"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prepareNormalCapture: mOrientation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v2, Lj6/a;

    iget v2, v2, Lj6/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mJpegRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/SuperMoonModule;->mJpegRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/SuperMoonModule;->mJpegRotation:I

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v1, v2}, Lj9/i0;->u(I)V

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v1

    iget-object v1, v1, Lh6/b;->a:Lh6/a;

    invoke-interface {v1}, Lh6/a;->c()Landroid/location/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->K0()Lj9/h0;

    move-result-object v2

    iget-object v2, v2, Lj9/h0;->a:Lj9/i0;

    iput-object v1, v2, Lj9/i0;->a:Landroid/location/Location;

    iput-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mLocation:Landroid/location/Location;

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateMfnr()V

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateSuperResolution()V

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateShotDetermine()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, LF1/o3;->a(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "prepareNormalCapture title = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureFormat:I

    invoke-static {v2}, LQa/a;->c(I)Z

    move-result v2

    invoke-static {v1, v2}, Lk7/K;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lav/j;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lk7/K;->t(Ljava/lang/String;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->K0()Lj9/h0;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5, v0, v2}, Lj9/h0;->W(Ljava/lang/String;ZZZ)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    iget v1, v1, LF1/E3;->b:I

    if-eq v1, v5, :cond_6

    const-string v1, ""

    goto :goto_4

    :cond_6
    const-string v1, "HDR"

    :goto_4
    iput-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mAlgorithmName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->setPictureOrientation()V

    const-string p0, "prepareNormalCapture X"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private previewWhenSessionSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lj6/j;->E(I)V

    sget-object v0, Le2/m;->z:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public static synthetic se(Landroidx/fragment/app/l;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/SuperMoonModule;->lambda$onPreviewSessionSuccess$9(Landroidx/fragment/app/l;)V

    return-void
.end method

.method private setOrientation(II)V
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

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->setOrientationParameter()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setOrientationParameter()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_2

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
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    new-instance v1, LG6/b;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LG6/b;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_2
    :goto_0
    return-void
.end method

.method private setPictureOrientation()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    iget-boolean v0, v0, LF1/i4;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget v0, v0, Lj6/a;->c:I

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget v0, v0, Lj6/a;->d:F

    :goto_0
    iput v0, p0, Lcom/android/camera/module/SuperMoonModule;->mShootRotation:F

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget v0, v0, Lj6/a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iput v0, p0, Lcom/android/camera/module/SuperMoonModule;->mShootOrientation:I

    return-void
.end method

.method private startNormalCapture(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startNormalCapture mode -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SuperMoonModule"

    invoke-static {v0, p1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->Z0()V

    invoke-static {}, Lk7/K;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Not enough space or storage not ready. remaining="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lk7/K;->h()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->blockSnapClickUntilSaveFinish()V

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->prepareNormalCapture()V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    const-wide/16 v2, 0x2ee0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string/jumbo p0, "startNormalCapture exception: cameraDevice is null!"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v2, Lj9/H1$a;

    invoke-direct {v2}, Lj9/H1$a;-><init>()V

    move-object v3, p1

    check-cast v3, Lj9/D0;

    invoke-virtual {v3}, Lj9/D0;->F()Lqh/d;

    move-result-object v3

    iput-object v3, v2, Lj9/H1$a;->f:Lqh/d;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/data/data/m;->T(I)Z

    move-result v3

    iput-boolean v3, v2, Lj9/H1$a;->k:Z

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v3

    invoke-virtual {p1}, Lj9/a;->B()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-static {v3, v2, p1, v1}, Lj9/J1;->a(ILj9/H1$a;Landroid/hardware/camera2/CaptureResult;Z)Lj9/H1;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create snapParamV1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lj9/a;->S0(Lj9/H1;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v2}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v2, v3}, Lj9/a;->r1(Lj9/a$j;Lk7/i;Lqh/a;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mBlockQuickShot:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "isParallelSessionEnable:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isParallelSessionEnable()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", and block quick shot"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic ub(Lcom/android/camera/module/SuperMoonModule;Landroid/os/Message;LQ6/C;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/SuperMoonModule;->lambda$handleMessage$16(Landroid/os/Message;LQ6/C;)V

    return-void
.end method

.method private unlockAEAF()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SuperMoonModule"

    const-string/jumbo v3, "unlockAEAF"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->N()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v1}, Lj9/a;->u1()V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->q0()Lu6/q;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-interface {p0, v0}, Lu6/q;->E(Z)V

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

.method private updateAiScene()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lj9/h0;->l(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lj9/h0;->i(I)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "SuperMoonModule"

    const-string/jumbo v1, "updateAiScene call setASDScene with AI_SCENE_MODE_MOON"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateEnablePreviewThumbnail()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->enablePreviewAsThumbnail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnabledPreviewThumbnail:Z

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1, v0}, Lcom/android/camera/module/X;->Xi(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateEnablePreviewThumbnail mEnabledPreviewThumbnail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnabledPreviewThumbnail:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SuperMoonModule"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateFilter()V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/data/j;->P()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateFilter: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuperMoonModule"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/effect/EffectController;->a0(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->p0()I

    :cond_0
    return-void
.end method

.method private updateFocusMode()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "updateFocusMode E"

    const-string v3, "SuperMoonModule"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->q0()Lu6/q;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getFocusMode()I

    move-result v2

    invoke-interface {v1, v2}, Lu6/q;->d(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2, v1}, Lj6/j;->d(I)V

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/m;->m()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->N(Lj9/e;)F

    move-result v2

    int-to-float v1, v1

    mul-float/2addr v2, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v2, v1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v2}, Lj9/h0;->I(F)V

    :cond_0
    const-string/jumbo p0, "updateFocusMode X"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateMfnr()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMfnr"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SuperMoonModule"

    const-string v3, "closeMfnr"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lj9/h0;->O(IZ)V

    :cond_0
    return-void
.end method

.method private updateOIS()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lj9/h0;->F(Z)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "SuperMoonModule"

    const-string/jumbo v1, "updateOIS call setEnableOIS with true"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateOutputSize(Landroid/util/Size;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/d;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    invoke-virtual {p1}, Lj9/a;->G()Lj9/e;

    move-result-object p1

    iget v0, p1, Lj9/e;->b:I

    const/16 v1, 0x100

    invoke-virtual {p1, v1, v0}, Lj9/e;->i0(II)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0, p1}, LF1/H3;->d(ILjava/util/List;)Landroid/util/Size;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureSize:Landroid/util/Size;

    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    const/16 v4, 0x100

    const/16 v5, 0x23

    if-nez v3, :cond_1

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, LJe/c;->b1()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    iget-object v6, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v6}, Lj6/j;->V()Lj9/a;

    move-result-object v6

    invoke-virtual {v6}, Lj9/a;->E()[I

    move-result-object v6

    const-string v7, "SuperMoonModule"

    const/4 v8, 0x0

    if-eqz v6, :cond_21

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[SAT] camera list: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9}, LF1/Q;->b([ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    array-length v9, v6

    move v10, v8

    move v11, v10

    :goto_2
    const-string v12, " -> "

    if-ge v10, v9, :cond_13

    aget v13, v6, v10

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v14

    invoke-virtual {v14}, Lu6/f;->k()I

    move-result v14

    if-ne v13, v14, :cond_6

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v13

    invoke-virtual {v13}, Lu6/f;->X()Lj9/e;

    move-result-object v13

    if-eqz v13, :cond_5

    iget v14, v0, Lcom/android/camera/module/r;->mOperatingMode:I

    invoke-static {v14, v13}, Lj9/f;->Y4(ILj9/e;)V

    iget v14, v13, Lj9/e;->b:I

    invoke-virtual {v13, v3, v14}, Lj9/e;->i0(II)Ljava/util/List;

    move-result-object v15

    sget-object v14, LJe/c$b;->a:LJe/c;

    invoke-virtual {v14}, LJe/c;->D1()Z

    move-result v16

    if-eqz v16, :cond_2

    iget-object v12, v14, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v12}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->L1()I

    move-result v17

    iget v12, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v13, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v13}, Lj6/j;->o0()I

    move-result v19

    iget-object v13, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v13}, Lj6/j;->c()Lj9/e;

    move-result-object v20

    const/16 v16, 0x1

    move/from16 v18, v12

    invoke-static/range {v15 .. v20}, LF1/H3;->i(Ljava/util/List;IIIILj9/e;)V

    iget v12, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    sget-object v13, LF1/H3;->a:Ljava/util/ArrayList;

    invoke-static {v12, v13}, LF1/H3;->d(ILjava/util/List;)Landroid/util/Size;

    move-result-object v12

    iput-object v12, v0, Lcom/android/camera/module/SuperMoonModule;->mUltraWidePictureSize:Landroid/util/Size;

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v0, v15}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v14

    iput-object v14, v0, Lcom/android/camera/module/SuperMoonModule;->mUltraWidePictureSize:Landroid/util/Size;

    invoke-static {v13}, Lj9/f;->t1(Lj9/e;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {v13}, Lj9/f;->x0(Lj9/e;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v11

    iput-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatUltraWidePictureSize:Landroid/util/Size;

    iget-object v11, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v11}, Lj6/j;->K0()Lj9/h0;

    move-result-object v11

    iget-object v14, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatUltraWidePictureSize:Landroid/util/Size;

    iget-object v15, v11, Lj9/h0;->a:Lj9/i0;

    iget-object v15, v15, Lj9/i0;->B:Landroid/util/Size;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    iget-object v11, v11, Lj9/h0;->a:Lj9/i0;

    iget-object v15, v11, Lj9/i0;->B:Landroid/util/Size;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    iput-object v14, v11, Lj9/i0;->B:Landroid/util/Size;

    :cond_3
    invoke-static {v13}, Lj9/f;->w0(Lj9/e;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v11

    iput-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatUltraWideOutputSize:Landroid/util/Size;

    iget-object v11, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v11}, Lj6/j;->K0()Lj9/h0;

    move-result-object v11

    iget-object v13, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatUltraWideOutputSize:Landroid/util/Size;

    iget-object v14, v11, Lj9/h0;->a:Lj9/i0;

    iget-object v14, v14, Lj9/i0;->C:Landroid/util/Size;

    invoke-static {v14, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    iget-object v11, v11, Lj9/h0;->a:Lj9/i0;

    iget-object v14, v11, Lj9/i0;->C:Landroid/util/Size;

    invoke-static {v14, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    iput-object v13, v11, Lj9/i0;->C:Landroid/util/Size;

    :cond_4
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatUltraWidePictureSize:Landroid/util/Size;

    iget-object v13, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatUltraWideOutputSize:Landroid/util/Size;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "FAKE_SAT_UW: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v7, v11, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v11, 0x1

    :cond_5
    :goto_3
    const/16 v21, 0x1

    goto/16 :goto_7

    :cond_6
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v14

    invoke-virtual {v14}, Lu6/f;->f()I

    move-result v14

    if-ne v13, v14, :cond_a

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v13

    invoke-virtual {v13}, Lu6/f;->Z()Lj9/e;

    move-result-object v13

    if-eqz v13, :cond_5

    iget v14, v0, Lcom/android/camera/module/r;->mOperatingMode:I

    invoke-static {v14, v13}, Lj9/f;->Y4(ILj9/e;)V

    iget v14, v13, Lj9/e;->b:I

    invoke-virtual {v13, v3, v14}, Lj9/e;->i0(II)Ljava/util/List;

    move-result-object v15

    sget-object v14, LJe/c$b;->a:LJe/c;

    invoke-virtual {v14}, LJe/c;->H1()Z

    move-result v16

    if-eqz v16, :cond_7

    iget-object v14, v14, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v14}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->R1()I

    move-result v17

    iget v14, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v21, 0x1

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->o0()I

    move-result v19

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v20

    const/16 v16, 0x1

    move/from16 v18, v14

    invoke-static/range {v15 .. v20}, LF1/H3;->i(Ljava/util/List;IIIILj9/e;)V

    iget v1, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    sget-object v14, LF1/H3;->a:Ljava/util/ArrayList;

    invoke-static {v1, v14}, LF1/H3;->d(ILjava/util/List;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/SuperMoonModule;->mWidePictureSize:Landroid/util/Size;

    goto :goto_4

    :cond_7
    const/16 v21, 0x1

    invoke-virtual {v0, v15}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/SuperMoonModule;->mWidePictureSize:Landroid/util/Size;

    :goto_4
    invoke-static {v13}, Lj9/f;->t1(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v13}, Lj9/f;->x0(Lj9/e;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatWidePictureSize:Landroid/util/Size;

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatWidePictureSize:Landroid/util/Size;

    iget-object v14, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v14, v14, Lj9/i0;->D:Landroid/util/Size;

    invoke-static {v14, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v1, v11}, Lj9/i0;->p(Landroid/util/Size;)V

    :cond_8
    invoke-static {v13}, Lj9/f;->w0(Lj9/e;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatWideOutputSize:Landroid/util/Size;

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatWideOutputSize:Landroid/util/Size;

    iget-object v13, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v13, v13, Lj9/i0;->E:Landroid/util/Size;

    invoke-static {v13, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v1, v11}, Lj9/i0;->o(Landroid/util/Size;)V

    :cond_9
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatWidePictureSize:Landroid/util/Size;

    iget-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatWideOutputSize:Landroid/util/Size;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "FAKE_SAT_W: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v7, v1, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    move/from16 v11, v21

    goto/16 :goto_7

    :cond_a
    const/16 v21, 0x1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->r()I

    move-result v1

    if-ne v13, v1, :cond_d

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->W()Lj9/e;

    move-result-object v1

    if-eqz v1, :cond_12

    iget v13, v0, Lcom/android/camera/module/r;->mOperatingMode:I

    invoke-static {v13, v1}, Lj9/f;->Y4(ILj9/e;)V

    iget v13, v1, Lj9/e;->b:I

    invoke-virtual {v1, v3, v13}, Lj9/e;->i0(II)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v13

    iput-object v13, v0, Lcom/android/camera/module/SuperMoonModule;->mTelePictureSize:Landroid/util/Size;

    invoke-static {v1}, Lj9/f;->t1(Lj9/e;)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-static {v1}, Lj9/f;->x0(Lj9/e;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v11

    iput-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatTelePictureSize:Landroid/util/Size;

    iget-object v11, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v11}, Lj6/j;->K0()Lj9/h0;

    move-result-object v11

    iget-object v13, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatWidePictureSize:Landroid/util/Size;

    iget-object v14, v11, Lj9/h0;->a:Lj9/i0;

    iget-object v14, v14, Lj9/i0;->F:Landroid/util/Size;

    invoke-static {v14, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    iget-object v11, v11, Lj9/h0;->a:Lj9/i0;

    iget-object v14, v11, Lj9/i0;->F:Landroid/util/Size;

    invoke-static {v14, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    iput-object v13, v11, Lj9/i0;->F:Landroid/util/Size;

    :cond_b
    invoke-static {v1}, Lj9/f;->w0(Lj9/e;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatTeleOutputSize:Landroid/util/Size;

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatWideOutputSize:Landroid/util/Size;

    iget-object v13, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v13, v13, Lj9/i0;->G:Landroid/util/Size;

    invoke-static {v13, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v13, v1, Lj9/i0;->G:Landroid/util/Size;

    invoke-static {v13, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    iput-object v11, v1, Lj9/i0;->G:Landroid/util/Size;

    :cond_c
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatTelePictureSize:Landroid/util/Size;

    iget-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatTeleOutputSize:Landroid/util/Size;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "FAKE_SAT_T: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v7, v1, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_d
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->M()I

    move-result v1

    if-ne v13, v1, :cond_12

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->Y()Lj9/e;

    move-result-object v1

    if-eqz v1, :cond_11

    iget v13, v0, Lcom/android/camera/module/r;->mOperatingMode:I

    invoke-static {v13, v1}, Lj9/f;->Y4(ILj9/e;)V

    iget v13, v1, Lj9/e;->b:I

    invoke-virtual {v1, v3, v13}, Lj9/e;->i0(II)Ljava/util/List;

    move-result-object v14

    sget-object v13, LJe/c$b;->a:LJe/c;

    iget-object v15, v13, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v15}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K1()I

    move-result v15

    if-lez v15, :cond_e

    iget-object v13, v13, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v13}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K1()I

    move-result v16

    iget v13, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v15, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v15}, Lj6/j;->o0()I

    move-result v18

    iget-object v15, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v15}, Lj6/j;->c()Lj9/e;

    move-result-object v19

    const/4 v15, 0x1

    move/from16 v17, v13

    invoke-static/range {v14 .. v19}, LF1/H3;->i(Ljava/util/List;IIIILj9/e;)V

    iget v13, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    sget-object v14, LF1/H3;->a:Ljava/util/ArrayList;

    invoke-static {v13, v14}, LF1/H3;->d(ILjava/util/List;)Landroid/util/Size;

    move-result-object v13

    iput-object v13, v0, Lcom/android/camera/module/SuperMoonModule;->mUltraTelePictureSize:Landroid/util/Size;

    goto :goto_6

    :cond_e
    invoke-virtual {v0, v14}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v13

    iput-object v13, v0, Lcom/android/camera/module/SuperMoonModule;->mUltraTelePictureSize:Landroid/util/Size;

    :goto_6
    invoke-static {v1}, Lj9/f;->t1(Lj9/e;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-static {v1}, Lj9/f;->x0(Lj9/e;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v11

    iput-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatUltraTelePictureSize:Landroid/util/Size;

    iget-object v11, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v11}, Lj6/j;->K0()Lj9/h0;

    move-result-object v11

    iget-object v13, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatUltraTelePictureSize:Landroid/util/Size;

    iget-object v14, v11, Lj9/h0;->a:Lj9/i0;

    iget-object v14, v14, Lj9/i0;->H:Landroid/util/Size;

    invoke-static {v14, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    iget-object v11, v11, Lj9/h0;->a:Lj9/i0;

    iget-object v14, v11, Lj9/i0;->H:Landroid/util/Size;

    invoke-static {v14, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    iput-object v13, v11, Lj9/i0;->H:Landroid/util/Size;

    :cond_f
    invoke-static {v1}, Lj9/f;->w0(Lj9/e;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatUltraTeleOutputSize:Landroid/util/Size;

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatUltraTeleOutputSize:Landroid/util/Size;

    iget-object v13, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v13, v13, Lj9/i0;->I:Landroid/util/Size;

    invoke-static {v13, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v13, v1, Lj9/i0;->I:Landroid/util/Size;

    invoke-static {v13, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    iput-object v11, v1, Lj9/i0;->I:Landroid/util/Size;

    :cond_10
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatUltraTelePictureSize:Landroid/util/Size;

    iget-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatUltraTeleOutputSize:Landroid/util/Size;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "FAKE_SAT_UT: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v7, v1, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v11, v21

    :cond_11
    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v12, v0, Lcom/android/camera/module/SuperMoonModule;->mUltraTelePictureSize:Landroid/util/Size;

    iget-object v13, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v13, v13, Lj9/i0;->s:Landroid/util/Size;

    invoke-static {v13, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v13, v1, Lj9/i0;->s:Landroid/util/Size;

    invoke-static {v13, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    iput-object v12, v1, Lj9/i0;->s:Landroid/util/Size;

    :cond_12
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_13
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lj9/e;->u0()Z

    move-result v1

    if-eqz v1, :cond_16

    if-nez v11, :cond_16

    invoke-static {v2}, Lj9/f;->x0(Lj9/e;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatWidePictureSize:Landroid/util/Size;

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v3, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatWidePictureSize:Landroid/util/Size;

    iget-object v6, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v6, v6, Lj9/i0;->D:Landroid/util/Size;

    invoke-static {v6, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v1, v3}, Lj9/i0;->p(Landroid/util/Size;)V

    :cond_14
    invoke-static {v2}, Lj9/f;->w0(Lj9/e;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatWideOutputSize:Landroid/util/Size;

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v3, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatWideOutputSize:Landroid/util/Size;

    iget-object v6, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v6, v6, Lj9/i0;->E:Landroid/util/Size;

    invoke-static {v6, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v1, v1, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v1, v3}, Lj9/i0;->o(Landroid/util/Size;)V

    :cond_15
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatWidePictureSize:Landroid/util/Size;

    iget-object v3, v0, Lcom/android/camera/module/SuperMoonModule;->mFakeSatWideOutputSize:Landroid/util/Size;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "FAKE_SAT_V1: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v7, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v3, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->y5()Z

    move-result v3

    const-string v6, ", teleSize: "

    const-string v9, ", wideSize: "

    const-string/jumbo v10, "ultraWideSize: "

    if-eqz v3, :cond_17

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v3, v0, Lcom/android/camera/module/SuperMoonModule;->mUltraWidePictureSize:Landroid/util/Size;

    iget-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mWidePictureSize:Landroid/util/Size;

    iget-object v12, v0, Lcom/android/camera/module/SuperMoonModule;->mTelePictureSize:Landroid/util/Size;

    iget-object v13, v0, Lcom/android/camera/module/SuperMoonModule;->mUltraTelePictureSize:Landroid/util/Size;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", ultraTeleSize:"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v7, v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_17
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v3, v0, Lcom/android/camera/module/SuperMoonModule;->mUltraWidePictureSize:Landroid/util/Size;

    iget-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mWidePictureSize:Landroid/util/Size;

    iget-object v12, v0, Lcom/android/camera/module/SuperMoonModule;->mTelePictureSize:Landroid/util/Size;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v7, v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->K0()Lj9/h0;

    move-result-object v3

    iget-object v6, v0, Lcom/android/camera/module/SuperMoonModule;->mUltraWidePictureSize:Landroid/util/Size;

    iget-object v9, v3, Lj9/h0;->a:Lj9/i0;

    iget-object v9, v9, Lj9/i0;->p:Landroid/util/Size;

    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v3, v6}, Lj9/i0;->I(Landroid/util/Size;)V

    :cond_18
    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->K0()Lj9/h0;

    move-result-object v3

    iget-object v6, v0, Lcom/android/camera/module/SuperMoonModule;->mWidePictureSize:Landroid/util/Size;

    iget-object v9, v3, Lj9/h0;->a:Lj9/i0;

    iget-object v9, v9, Lj9/i0;->q:Landroid/util/Size;

    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v3, v6}, Lj9/i0;->K(Landroid/util/Size;)V

    :cond_19
    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->K0()Lj9/h0;

    move-result-object v3

    iget-object v6, v0, Lcom/android/camera/module/SuperMoonModule;->mTelePictureSize:Landroid/util/Size;

    iget-object v9, v3, Lj9/h0;->a:Lj9/i0;

    iget-object v9, v9, Lj9/i0;->r:Landroid/util/Size;

    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    iget-object v9, v3, Lj9/i0;->r:Landroid/util/Size;

    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    iput-object v6, v3, Lj9/i0;->r:Landroid/util/Size;

    :cond_1a
    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-direct {v0}, Lcom/android/camera/module/SuperMoonModule;->getSatPictureSize()Landroid/util/Size;

    move-result-object v6

    invoke-interface {v3, v6}, Lj6/j;->e(Landroid/util/Size;)V

    iget v3, v2, Lj9/e;->b:I

    const-class v6, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3, v6}, Lj9/e;->j0(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v11

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v6, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v6}, Lj6/j;->c()Lj9/e;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/android/camera/data/data/j;->M(IILj9/e;)F

    move-result v12

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    iget v9, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-interface {v2}, Lj6/j;->o0()I

    move-result v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Ll6/n;->f(IILjava/util/List;FLandroid/util/Size;Z)Landroid/util/Size;

    move-result-object v3

    invoke-interface {v2, v3}, Lj6/j;->J(Landroid/util/Size;)V

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->K0()Lj9/h0;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/h0;->R(Landroid/util/Size;)V

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj9/a;->u0(Landroid/util/Size;)V

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lj9/a;->t0(I)V

    invoke-virtual {v1}, LJe/c;->b1()Z

    move-result v1

    if-eqz v1, :cond_1b

    iput v5, v0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureFormat:I

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v2

    invoke-interface {v1, v2}, Lj6/j;->e(Landroid/util/Size;)V

    goto :goto_9

    :cond_1b
    iput v4, v0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureFormat:I

    :goto_9
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v1, v0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureFormat:I

    invoke-static {v1}, LQa/a;->c(I)Z

    move-result v1

    const-string v2, "JPEG"

    const-string v3, "HEIC"

    if-eqz v1, :cond_1c

    move-object v1, v3

    goto :goto_a

    :cond_1c
    move-object v1, v2

    :goto_a
    const-string/jumbo v4, "updateSize: use "

    const-string v5, " as preferred output image format"

    invoke-static {v4, v1, v5}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v7, v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    const-string v4, "): "

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureSize:Landroid/util/Size;

    iget v1, v0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureFormat:I

    invoke-static {v1}, LQa/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    move-object v1, v3

    goto :goto_b

    :cond_1d
    move-object v1, v2

    :goto_b
    iget-object v5, v0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureSize:Landroid/util/Size;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateSize: algoUp picture size ("

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v7, v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    iget-boolean v1, v0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-eqz v1, :cond_1f

    const-string v2, "YUV"

    goto :goto_c

    :cond_1f
    iget v1, v0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureFormat:I

    invoke-static {v1}, LQa/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_20

    move-object v2, v3

    :cond_20
    :goto_c
    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v1

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v3

    iget-object v5, v0, Lcom/android/camera/module/SuperMoonModule;->mSensorRawImageSize:Landroid/util/Size;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateSize: picture size ("

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preview size: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sensor raw image size: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

    invoke-virtual {v0}, Lcom/android/camera/module/SuperMoonModule;->checkDisplayOrientation()V

    return-void

    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updatePictureAndPreviewSize: opMode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/camera/module/r;->mOperatingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", opMode of cc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    invoke-virtual {v2}, Lj9/e;->G()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", SAT cc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->U()Lj9/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", PhysicalIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-virtual {v0}, Lj9/e;->J()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SuperMoon Mode must with SAT!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateShotDetermine()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isParallelSessionEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableParallel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " shotType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuperMoonModule"

    invoke-static {v2, v1}, Lcom/android/camera/log/LogK;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lj9/h0;->X(I)V

    return-void
.end method

.method private updateSuperResolution()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSuperResolution"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lj9/h0;->Z(Z)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "SuperMoonModule"

    const-string v1, "call SuperResolution"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateZsl()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SuperMoonModule"

    const-string/jumbo v2, "updateZsl setEnableZsl to true"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lj9/h0;->G(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic xd(Lcom/android/camera/module/SuperMoonModule;Lwp/g$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/SuperMoonModule;->lambda$beginParallelProcess$10(Lwp/g$b;)V

    return-void
.end method


# virtual methods
.method public appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/a;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/a;)V

    new-instance v0, Lr6/f;

    invoke-direct {v0}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lr6/f;->a:I

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Li9/h;

    if-eqz p0, :cond_0

    new-instance p0, Lr6/D0;

    invoke-direct {p0}, Lr6/D0;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    :cond_0
    return-void
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

.method public checkDisplayOrientation()V
    .locals 2

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

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->I()I

    move-result v1

    invoke-interface {v0, v1}, Lu6/q;->r(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Li9/h;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Li9/h;->e()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic checkDragBurstEnable(FFZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkShutterCondition()Z
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isBlockSnap()Z

    move-result v0

    const-string v1, "SuperMoonModule"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lk7/K;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "checkShutterCondition: low storage"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIn3OrMoreSatMode()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, LV6/c;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LO5/a;

    const/4 v3, 0x6

    invoke-direct {v0, v3}, LO5/a;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, LV6/c;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v3, LI4/n;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, LI4/n;-><init>(I)V

    invoke-virtual {p0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "checkShutterCondition: 3SAT zooming"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    invoke-static {}, LQ6/h;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE3/i;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LE3/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "checkShutterCondition: blockSnap="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isBlockSnap()Z

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
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string v0, "SuperMoonModule"

    const-string v1, "closeCamera: E"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, v2}, Lj6/j;->E(I)V

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v1}, Lj9/a;->f()V

    iput-boolean v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lj9/a;->Q0(Lj9/a$n;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lj9/a;->K0(Lj9/a$c;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    iput-object v3, v1, Lj9/a;->b:LF1/V2;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lj9/a;->E0(Lj9/a$g;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v2}, Lj9/h0;->l(Z)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->Z1(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v2}, Lj9/h0;->h(Z)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1, v2}, Lj6/j;->n0(Z)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v4, v1, Lj9/h0;->a:Lj9/i0;

    iget-boolean v5, v4, Lj9/i0;->n1:Z

    if-eqz v5, :cond_2

    iput-boolean v2, v4, Lj9/i0;->n1:Z

    invoke-virtual {v1}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lj9/H;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v6}, Lj9/H;-><init>(Lj9/h0;I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v4, v1, Lj9/h0;->a:Lj9/i0;

    iget-boolean v5, v4, Lj9/i0;->o1:Z

    if-eqz v5, :cond_3

    iput-boolean v2, v4, Lj9/i0;->o1:Z

    invoke-virtual {v1}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lj9/D;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v6}, Lj9/D;-><init>(Lj9/h0;I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v2}, Lj9/h0;->F(Z)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v2}, Lj9/h0;->Z(Z)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v2}, Lj9/h0;->O(IZ)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v2}, Lj9/h0;->u(Z)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1, v3}, Lj6/j;->x(Lj9/a;)V

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0, v2}, Lu6/q;->E(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-interface {p0}, Lu6/q;->D()V

    :cond_5
    const-string p0, "SuperMoonModule"

    const-string v0, "closeCamera: X"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public consumePreference(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/16 v1, 0x18

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->consumePreference(I)Z

    move-result p0

    return p0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateSessionParams()V

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateOpMode()V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getExposureModeManager()LV1/g;

    move-result-object p0

    invoke-interface {p0}, LV1/g;->q()V

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->getApertureManager()LV1/f;

    move-result-object p0

    invoke-interface {p0}, LV1/f;->L()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, p0}, Lcom/android/camera/module/r;->initializeMetaDataCallback(Lcom/android/camera/module/r;)V

    goto :goto_0

    :sswitch_5
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->P()V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateASD()V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateModuleRelated()V

    goto :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateShotDetermine()V

    goto :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateAiScene()V

    goto :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateMfnr()V

    goto :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateSuperResolution()V

    goto :goto_0

    :sswitch_c
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateZsl()V

    goto :goto_0

    :sswitch_d
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateOIS()V

    goto :goto_0

    :sswitch_e
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateFocusMode()V

    goto :goto_0

    :sswitch_f
    invoke-virtual {p0}, Lcom/android/camera/module/r;->setEvValue()V

    goto :goto_0

    :sswitch_10
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->updateJpegQuality()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->focusCenter()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->getZoomManager()Lg9/f;

    move-result-object p0

    invoke-virtual {p0}, Lg9/f;->a0()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lj6/j;->D0(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateFilter()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updatePictureAndPreviewSize()V

    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_10
        0xc -> :sswitch_f
        0xe -> :sswitch_e
        0x14 -> :sswitch_d
        0x16 -> :sswitch_c
        0x1e -> :sswitch_b
        0x22 -> :sswitch_a
        0x24 -> :sswitch_9
        0x2c -> :sswitch_8
        0x37 -> :sswitch_7
        0x46 -> :sswitch_6
        0x4f -> :sswitch_5
        0x5f -> :sswitch_4
        0x68 -> :sswitch_3
        0x72 -> :sswitch_2
        0x8b -> :sswitch_1
        0xcafe -> :sswitch_0
    .end sparse-switch
.end method

.method public getApertureManager()LV1/f;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mApertureManager:LV1/f;

    if-nez v0, :cond_0

    new-instance v0, LV1/c;

    invoke-direct {v0, p0}, LV1/c;-><init>(Lcom/android/camera/module/r;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mApertureManager:LV1/f;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mApertureManager:LV1/f;

    return-object p0
.end method

.method public bridge synthetic getAutoHDRTargetState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBestPictureSize(Ljava/util/List;)Landroid/util/Size;
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFakeSatV2Supported"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->getMaxPictureSize()I

    move-result v2

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->o0()I

    move-result v4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v5

    const/4 v1, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, LF1/H3;->i(Ljava/util/List;IIIILj9/e;)V

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    sget-object p1, LF1/H3;->a:Ljava/util/ArrayList;

    invoke-static {p0, p1}, LF1/H3;->d(ILjava/util/List;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/SuperMoonModule;->mCaptureStartTime:J

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

.method public getMaxPictureSize()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getModuleDeviceParam()Ly3/v;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getNormalHDRTargetState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getSnapCondition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getZoomManager()Lf9/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->getZoomManager()Lg9/f;

    move-result-object p0

    return-object p0
.end method

.method public getZoomManager()Lg9/f;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lh9/C;

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

.method public getZoomMapController()Li9/h;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Li9/h;

    return-object p0
.end method

.method public handleMessage(ILandroid/os/Message;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_b

    const/4 v2, 0x4

    if-eq p1, v2, :cond_9

    const/16 v2, 0x9

    if-eq p1, v2, :cond_a

    const/16 v2, 0xa

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    if-eq p1, v2, :cond_7

    const/16 v1, 0x1f

    if-eq p1, v1, :cond_6

    const/16 v1, 0x35

    if-eq p1, v1, :cond_5

    const/16 v1, 0x3a

    if-eq p1, v1, :cond_4

    const/16 v1, 0x40

    if-eq p1, v1, :cond_3

    const/16 v2, 0x32

    const-string v3, "SuperMoonModule"

    const/4 v4, 0x0

    if-eq p1, v2, :cond_2

    const/16 v2, 0x33

    if-eq p1, v2, :cond_8

    const/16 v2, 0x3c

    if-eq p1, v2, :cond_1

    const/16 v1, 0x3d

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->handleMessage(ILandroid/os/Message;)Z

    move-result p0

    return p0

    :cond_0
    const-string/jumbo p1, "wait save finish timeout"

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/android/camera/module/SuperMoonModule;->mWaitSaveFinish:Z

    return v0

    :cond_1
    const-string p1, "fallback timeout"

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1, v4}, Lj6/j;->N0(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1, v4}, Lj6/j;->v0(Z)V

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

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1, v4}, Lj6/j;->V0(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v0

    :cond_2
    const-string p1, "Oops, capture timeout later release timeout!"

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 p1, 0x0

    invoke-virtual {p0, v4, p1, p2, v4}, Lcom/android/camera/module/SuperMoonModule;->onPictureTakenFinished(ZJI)V

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->onWaitingFocusFinished()Z

    return v0

    :cond_4
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/android/camera/module/c0;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/module/c0;-><init>(Lcom/android/camera/module/SuperMoonModule;Landroid/os/Message;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v0

    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p1}, Lj6/f;->S()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonClick(I)Z

    return v0

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->setOrientationParameter()V

    return v0

    :cond_7
    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getWindowOpt()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LEs/p;

    const/16 v2, 0xa

    invoke-direct {p2, v2}, LEs/p;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getScreenDelay()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/r;->onCameraOpenedFail()V

    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkActivityOrientation()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v3, p0, Lcom/android/camera/module/SuperMoonModule;->mOnResumeTime:J

    sub-long/2addr p1, v3

    const-wide/16 v3, 0x1388

    cmp-long p1, p1, v3

    if-gez p1, :cond_a

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getWindowOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LE4/d;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, LE4/d;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v0
.end method

.method public bridge synthetic handledSuperNightResult(Z)V
    .locals 0

    return-void
.end method

.method public isBlockSnap()Z
    .locals 4

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->U()Z

    move-result v0

    const-string v1, "SuperMoonModule"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->x2()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v0}, Lwp/g;->a()Lwp/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lwp/g$b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "is shoting super night and discard snap"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->b1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->isSnapshotAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "isBlockSnap: mivi queue is full"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-nez v0, :cond_4

    sget-object v0, Lwp/g$c;->a:Lwp/g;

    invoke-virtual {v0}, Lwp/g;->a()Lwp/g$b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lwp/g$b;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->q()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->H()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/r;->needKeepCoverView()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->x0()I

    move-result v1

    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    invoke-virtual {v1}, LF1/E3;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lj9/a;->N(Z)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isQueueFull()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mWaitSaveFinish:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isParallelSessionConfigured()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    return v3

    :cond_7
    :goto_2
    return v2
.end method

.method public isDoingAction()Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lj9/a;->N(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v3}, Lj6/f;->q()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v3}, Lj6/f;->H()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->needKeepCoverView()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->x0()I

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isQueueFull()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mWaitSaveFinish:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
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

.method public isNeedMute()Z
    .locals 0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    iget-boolean p0, p0, Lv2/D0;->N:Z

    return p0
.end method

.method public isParallelSessionEnable()Z
    .locals 0

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->b1()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic isPendingMultiCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isPictureUseDualFrontCamera()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    iget p0, p0, Lj9/a;->a:I

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->m()I

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->s2()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
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

.method public isShowAeAfLockIndicator()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    return p0
.end method

.method public isShowCaptureButton()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isSupportTapShoot()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSupportDragVideo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportTapShoot()Z
    .locals 0

    invoke-static {}, Lcom/android/camera/data/data/w;->z0()Z

    move-result p0

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
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lj9/a;->N(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->r()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string p0, "isZoomEnabled: "

    invoke-static {p0, v1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "SuperMoonModule"

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public needFaceDetection()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyFirstFrameArrived(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->notifyFirstFrameArrived(I)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sASDScheduler:Lio/reactivex/v;

    new-instance v0, LDr/c;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, LDr/c;-><init>(Ljava/lang/Object;I)V

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

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->tryRemoveCountDownMessage()V

    :cond_2
    return-void
.end method

.method public onActionStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {v0}, LQ6/j1;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {p0}, LQ6/j1;->m7()V

    :cond_0
    return-void
.end method

.method public onActive()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/r;->onActive()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mSensorStateListener:LF1/i4$q;

    invoke-virtual {v0, v1}, LF1/i4;->s(LF1/i4$q;)V

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->onCameraOpened()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepScreenOnAwhile()V

    return-void
.end method

.method public bridge synthetic onActivityResult(Lcom/android/camera/module/X;IILandroid/content/Intent;)V
    .locals 0

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

.method public onAllHalFrameReceived()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->getCountDownTimes()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->S()I

    move-result v0

    const/16 v2, 0xa0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140f54

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object v0

    invoke-virtual {v0}, LBr/e;->l()V

    :cond_1
    const-wide/16 v2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/camera/module/SuperMoonModule;->onPictureTakenFinished(ZJI)V

    return-void
.end method

.method public onAsdChanged(Lcom/android/camera/module/interceptor/base/d;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->onAsdChanged(Lcom/android/camera/module/interceptor/base/d;)V

    instance-of v0, p1, Ls6/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Li9/h;

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

.method public onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-eqz p2, :cond_7

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

    const-string v2, "SuperMoonModule"

    if-eqz v0, :cond_3

    const-string v0, "on Receive voice control broadcast action intent"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lvr/m;->j(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object p2, p0, Lcom/android/camera/module/SuperMoonModule;->mBroadcastIntent:Landroid/content/Intent;

    const-string v3, "CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isBlockSnap()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-string p1, "on voice control: block snap"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/camera/module/SuperMoonModule;->mBroadcastIntent:Landroid/content/Intent;

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

    invoke-virtual {p0, v0}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonClick(I)Z

    iput-object v3, p0, Lcom/android/camera/module/SuperMoonModule;->mBroadcastIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v0, "com.android.camera.action.SPEECH_SHUTTER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "on Receive speech shutter broadcast action intent"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isBlockSnap()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "on Speech shutter: block snap"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
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

    if-eqz v0, :cond_5

    const-string p0, "on Speech shutter: ingore caz mode changing"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonClick(I)Z

    :cond_6
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public bridge synthetic onButtonStatusFocused(Lqh/a;)V
    .locals 0

    return-void
.end method

.method public onCameraOpened()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->initZoomMapControllerIfNeeded()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->initializeFocusManager()V

    sget-object v0, Le2/m;->y:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->startPreview()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/SuperMoonModule;->mOnResumeTime:J

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public bridge synthetic onCameraPickerClicked(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCapabilityChanged(Lj9/e;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->onCapabilityChanged(Lj9/e;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lu6/q;->z(Lj9/e;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lj9/a;->f0(Lj9/e;)V

    :cond_1
    return-void
.end method

.method public onCaptureCompleted(Z)V
    .locals 1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCaptureCompleted success="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperMoonModule"

    invoke-static {p1, p0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCaptureProgress(Lj9/E1;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public onCaptureShutter(Lj9/E1;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFastShutterCallbackSupported"
        type = 0x0
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCaptureShutter: cameraState = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isParallel = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SuperMoonModule"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->onShutter()V

    return-void
.end method

.method public onCaptureStart(LRh/r;Lj9/p0;)LRh/r;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    invoke-virtual {v3}, Lj9/a;->w1()V

    invoke-virtual {v0}, Lcom/android/camera/module/r;->isDeparted()Z

    move-result v3

    const-string v4, "SuperMoonModule"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    const-string v0, "onCaptureStart: departed"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->p2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, LRh/r;->g:LRh/s;

    iput-boolean v5, v0, LRh/s;->h:Z

    :cond_0
    iget-object v0, v1, LRh/r;->j:LRh/y;

    iput-boolean v5, v0, LRh/y;->q:Z

    return-object v1

    :cond_1
    iget-object v3, v0, Lcom/android/camera/module/SuperMoonModule;->mServiceStatusListener:LRh/x;

    iget-object v7, v1, LRh/r;->g:LRh/s;

    iput-object v3, v7, LRh/s;->d:LRh/x;

    iget-object v3, v1, LRh/r;->b:LRh/a;

    iget v8, v3, LRh/a;->f:I

    iget-object v9, v2, Lj9/p0;->a:Lj9/E1;

    if-eqz v9, :cond_2

    iget-boolean v9, v9, Lj9/E1;->a:Z

    if-eqz v9, :cond_2

    move v9, v5

    goto :goto_0

    :cond_2
    move v9, v6

    :goto_0
    iget-boolean v10, v0, Lcom/android/camera/module/SuperMoonModule;->mEnabledPreviewThumbnail:Z

    if-nez v10, :cond_4

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v10

    invoke-virtual {v10}, Lv2/D0;->G()Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, v7, LRh/s;->a:I

    if-gt v10, v5, :cond_4

    :cond_3
    invoke-direct {v0}, Lcom/android/camera/module/SuperMoonModule;->onShutter()V

    invoke-static {v5}, Lcom/android/camera/data/data/m;->O0(Z)V

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "onCaptureStart: inputSize = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lj9/p0;->b:Landroid/util/Size;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v10, LJe/c;->k:Z

    sget-object v10, LJe/c$b;->a:LJe/c;

    invoke-virtual {v10}, LJe/c;->b1()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v0}, Lcom/android/camera/module/r;->isIn3OrMoreSatMode()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-direct {v0}, Lcom/android/camera/module/SuperMoonModule;->isInMultiSurfaceSatMode()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_5
    iget-object v11, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v11}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    sget-boolean v11, LJe/d;->i:Z

    if-eqz v11, :cond_7

    :cond_6
    iget-object v11, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v11, v2}, Lj6/j;->e(Landroid/util/Size;)V

    invoke-direct {v0, v2}, Lcom/android/camera/module/SuperMoonModule;->updateOutputSize(Landroid/util/Size;)V

    :cond_7
    iget-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureSize:Landroid/util/Size;

    if-nez v11, :cond_8

    move-object v11, v2

    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "onCaptureStart: outputSize = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v12, v0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureFormat:I

    invoke-static {v12}, LQa/a;->c(I)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v14, "HEIC"

    goto :goto_1

    :cond_9
    const-string v14, "JPEG"

    :goto_1
    const-string v15, "onCaptureStart: outputFormat = "

    invoke-virtual {v15, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/data/j;->t()LF1/g3;

    move-result-object v14

    if-eqz v13, :cond_a

    iget v13, v14, LF1/g3;->b:I

    goto :goto_2

    :cond_a
    iget v13, v14, LF1/g3;->a:I

    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "onCaptureStart: outputQuality = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v14}, Lj6/j;->c()Lj9/e;

    move-result-object v14

    if-nez v14, :cond_b

    const/4 v14, 0x0

    goto :goto_3

    :cond_b
    iget-object v14, v14, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    :goto_3
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v14, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [F

    iput-object v15, v0, Lcom/android/camera/module/SuperMoonModule;->mFocalLengths:[F

    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v14, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    iput-object v14, v0, Lcom/android/camera/module/SuperMoonModule;->mApertures:[F

    iget-object v14, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v14}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v14

    iput-object v14, v3, LRh/a;->b:Landroid/util/Size;

    iput-object v2, v7, LRh/s;->s:Landroid/util/Size;

    invoke-virtual {v1, v11}, LRh/r;->C(Landroid/util/Size;)V

    iget-object v2, v1, LRh/r;->a:LRh/z;

    iput v12, v2, LRh/z;->j:I

    if-eq v8, v5, :cond_c

    const/16 v11, 0xe

    if-eq v8, v11, :cond_c

    const/16 v11, 0x14

    if-ne v8, v11, :cond_d

    :cond_c
    iget-object v8, v0, Lcom/android/camera/module/SuperMoonModule;->mSensorRawImageSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mSensorRawImageSize:Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    new-instance v14, Landroid/util/Size;

    invoke-direct {v14, v8, v11}, Landroid/util/Size;-><init>(II)V

    iget-object v8, v1, LRh/r;->h:LRh/t;

    iput-object v14, v8, LRh/t;->f:Landroid/util/Size;

    :cond_d
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/camera/effect/EffectController;->m()I

    move-result v11

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v14

    invoke-virtual {v8, v14, v11}, Lcom/xiaomi/camera/effect/EffectController;->q(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    iget-object v14, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v14}, Lj6/j;->c()Lj9/e;

    move-result-object v14

    invoke-static {v14}, Lj9/f;->s4(Lj9/e;)Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-static {v12}, LQa/a;->c(I)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v12}, Lj6/j;->c()Lj9/e;

    move-result-object v12

    invoke-static {v12}, Lj9/f;->i1(Lj9/e;)Z

    move-result v12

    if-nez v12, :cond_f

    :cond_e
    move v12, v5

    goto :goto_4

    :cond_f
    move v12, v6

    :goto_4
    iput-boolean v12, v3, LRh/a;->c:Z

    iget-object v12, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v12}, Lj6/j;->c()Lj9/e;

    move-result-object v12

    invoke-static {v12}, Lj9/f;->V2(Lj9/e;)Z

    move-result v12

    iput-boolean v12, v7, LRh/s;->u:Z

    invoke-static {v6}, LNh/d;->a(Z)Z

    move-result v12

    sget-object v14, LS8/b;->g:LS8/b;

    if-eqz v12, :cond_10

    sget-object v14, LN5/c;->a:LN5/c;

    iget-object v15, v0, Lcom/android/camera/module/SuperMoonModule;->mLocation:Landroid/location/Location;

    invoke-virtual {v14, v15}, LN5/c;->h(Landroid/location/Location;)LN5/c$a;

    move-result-object v14

    invoke-static {}, LS8/b;->b()LS8/b;

    move-result-object v15

    invoke-virtual {v15}, LS8/b;->a()Lcom/xiaomi/camera/bean/CloudWmAttribute;

    move-result-object v16

    move-object v6, v15

    move-object v15, v14

    move-object v14, v6

    move-object/from16 v6, v16

    goto :goto_5

    :cond_10
    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_5
    invoke-static {}, Lcom/android/camera/data/data/j;->u0()Z

    move-result v5

    invoke-virtual {v1, v5}, LRh/r;->z(Z)V

    invoke-static {}, Lcom/android/camera/data/data/w;->M0()Z

    move-result v5

    move/from16 v18, v9

    iget-object v9, v1, LRh/r;->l:LRh/C;

    iput-boolean v5, v9, LRh/C;->i:Z

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v5

    move-object/from16 v19, v10

    const-string v10, "pref_westcoast_watermark_figure"

    move-object/from16 v20, v4

    const/4 v4, 0x1

    invoke-virtual {v5, v10, v4}, LWh/a;->j(Ljava/lang/String;I)I

    move-result v5

    iput v5, v9, LRh/C;->j:I

    iput-boolean v12, v9, LRh/C;->e:Z

    iget-object v4, v14, LS8/b;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v9, LRh/C;->f:Ljava/lang/String;

    iget-boolean v4, v14, LS8/b;->b:Z

    iput-boolean v4, v9, LRh/C;->g:Z

    iget-boolean v4, v14, LS8/b;->c:Z

    iput-boolean v4, v9, LRh/C;->h:Z

    iput-object v6, v9, LRh/C;->u:Lcom/xiaomi/camera/bean/CloudWmAttribute;

    invoke-static {}, LS8/d;->a()LS8/d;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LS8/d;->c()Z

    move-result v4

    iput-boolean v4, v9, LRh/C;->n:Z

    invoke-static {}, Lcom/android/camera/data/data/w;->O()Z

    move-result v4

    iput-boolean v4, v9, LRh/C;->o:Z

    invoke-static {}, Lcom/android/camera/data/data/E;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v9, LRh/C;->p:I

    invoke-direct {v0}, Lcom/android/camera/module/SuperMoonModule;->isFrontMirror()Z

    move-result v4

    iput-boolean v4, v3, LRh/a;->h:Z

    invoke-static {}, LK2/e;->E()Z

    move-result v4

    iput-boolean v4, v9, LRh/C;->k:Z

    sget v4, Li3/b;->P:I

    invoke-virtual {v1, v4}, LRh/r;->t(I)V

    sget v4, Li3/b;->Q:I

    invoke-virtual {v1, v4}, LRh/r;->K(I)V

    sget v4, Li3/b;->R:I

    invoke-virtual {v1, v4}, LRh/r;->M(I)V

    sget v4, Li3/b;->S:I

    invoke-virtual {v1, v4}, LRh/r;->E(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, LRh/r;->J(I)V

    invoke-virtual {v1, v4}, LRh/r;->L(I)V

    invoke-virtual {v1, v4}, LRh/r;->D(I)V

    invoke-virtual {v1, v11}, LRh/r;->x(I)V

    invoke-virtual {v1, v8}, LRh/r;->y(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/camera/effect/EffectController;->o()I

    move-result v4

    invoke-virtual {v1, v4}, LRh/r;->w(I)V

    iget-object v4, v0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v4, Lj6/a;

    iget v4, v4, Lj6/a;->c:I

    const/4 v5, -0x1

    if-ne v5, v4, :cond_11

    const/4 v4, 0x0

    :cond_11
    iput v4, v2, LRh/z;->c:I

    iget v4, v0, Lcom/android/camera/module/SuperMoonModule;->mJpegRotation:I

    iput v4, v2, LRh/z;->d:I

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lvr/b0;->b(Landroid/content/Context;)Z

    move-result v4

    const/16 v17, 0x1

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v9, LRh/C;->v:Z

    iget v4, v0, Lcom/android/camera/module/SuperMoonModule;->mShootOrientation:I

    iget-object v5, v1, LRh/r;->d:LRh/f;

    iput v4, v5, LRh/f;->f:I

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, LS8/d;->b(Z)LGg/P;

    move-result-object v4

    invoke-virtual {v4}, LGg/P;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v9, LRh/C;->w:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/camera/module/SuperMoonModule;->mLocation:Landroid/location/Location;

    iget-object v5, v1, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v5, v4}, Lcom/xiaomi/camera/core/ExifData;->setLocation(Landroid/location/Location;)V

    const-string v4, ""

    if-eqz v15, :cond_12

    iget-object v6, v15, LN5/c$a;->b:Ljava/lang/String;

    goto :goto_6

    :cond_12
    move-object v6, v4

    :goto_6
    invoke-virtual {v5, v6}, Lcom/xiaomi/camera/core/ExifData;->setLocationAddress(Ljava/lang/String;)V

    if-eqz v15, :cond_13

    iget-object v4, v15, LN5/c$a;->c:Ljava/lang/String;

    :cond_13
    invoke-virtual {v5, v4}, Lcom/xiaomi/camera/core/ExifData;->setLatlngStringCache(Ljava/lang/String;)V

    if-eqz v15, :cond_14

    iget-boolean v4, v15, LN5/c$a;->a:Z

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    goto :goto_7

    :cond_14
    const/4 v4, 0x0

    :goto_7
    iput-boolean v4, v9, LRh/C;->m:Z

    invoke-static {}, Lcom/android/camera/data/data/j;->r1()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {}, LFr/d;->c()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_15
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v1, v4}, LRh/r;->I(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->d0()Z

    move-result v4

    iput-boolean v4, v3, LRh/a;->d:Z

    invoke-virtual {v0}, Lcom/android/camera/module/SuperMoonModule;->isPictureUseDualFrontCamera()Z

    move-result v4

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ExifData;->getDepthData()Lcom/xiaomi/camera/core/DepthData;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/xiaomi/camera/core/DepthData;->setBokehFrontCamera(Z)V

    iget-object v4, v0, Lcom/android/camera/module/SuperMoonModule;->mAlgorithmName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/xiaomi/camera/core/ExifData;->setAlgorithmName(Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/android/camera/module/SuperMoonModule;->getPictureInfo()Lqh/f;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/xiaomi/camera/core/ExifData;->setPictureInfo(Lqh/f;)V

    invoke-virtual {v1}, LRh/r;->H()V

    invoke-static {}, Lcom/android/camera/module/SuperMoonModule;->getTiltShiftMode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, LRh/r;->d:LRh/f;

    iget-object v5, v5, LRh/f;->k:Ln3/b$a;

    iput-object v4, v5, Ln3/b$a;->a:Ljava/lang/String;

    invoke-direct {v0}, Lcom/android/camera/module/SuperMoonModule;->getDeviceWaterMarkParam()LFr/a;

    move-result-object v4

    invoke-virtual {v1, v4}, LRh/r;->v(LFr/a;)V

    iget-object v4, v1, LRh/r;->d:LRh/f;

    iput v13, v4, LRh/f;->g:I

    const/4 v5, 0x1

    iput-boolean v5, v7, LRh/s;->t:Z

    iget-object v5, v0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:LN1/n;

    iget-object v4, v4, LRh/f;->l:Ln3/e;

    iput-object v5, v4, Ln3/e;->f:LN1/n;

    iget-object v5, v0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:LN1/n;

    iput-object v5, v4, Ln3/e;->g:LN1/n;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, v1, LRh/r;->d:LRh/f;

    iput-object v4, v5, LRh/f;->i:Landroid/graphics/Rect;

    iget-wide v4, v0, Lcom/android/camera/module/SuperMoonModule;->mCaptureStartTime:J

    iput-wide v4, v2, LRh/z;->h:J

    invoke-static {}, LQg/e;->b()I

    move-result v2

    iget-object v4, v1, LRh/r;->k:LRh/A;

    iput v2, v4, LRh/A;->f:I

    if-nez v18, :cond_16

    iget-boolean v2, v0, Lcom/android/camera/module/SuperMoonModule;->mEnabledPreviewThumbnail:Z

    if-nez v2, :cond_16

    const/4 v4, 0x1

    goto :goto_9

    :cond_16
    const/4 v4, 0x0

    :goto_9
    iput-boolean v4, v3, LRh/a;->i:Z

    iget v2, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    iput v2, v3, LRh/a;->g:I

    invoke-static {}, Lcom/android/camera/data/data/w;->K()Z

    move-result v2

    iput-boolean v2, v9, LRh/C;->d:Z

    invoke-virtual {v0}, Lcom/android/camera/module/r;->isWCGOn()Z

    move-result v2

    iput-boolean v2, v9, LRh/C;->c:Z

    invoke-virtual {v0}, Lcom/android/camera/module/r;->isWCGOn()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {}, LMb/d;->c()[B

    move-result-object v15

    goto :goto_a

    :cond_17
    const/4 v15, 0x0

    :goto_a
    invoke-virtual {v1, v15}, LRh/r;->A([B)V

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->Z0(Lj9/e;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->k(Lj9/e;)I

    move-result v2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-virtual {v4}, Lu6/f;->v()I

    move-result v4

    if-ne v2, v4, :cond_18

    const/4 v4, 0x1

    goto :goto_b

    :cond_18
    const/4 v4, 0x0

    :goto_b
    iget-object v2, v1, LRh/r;->d:LRh/f;

    iput-boolean v4, v2, LRh/f;->d:Z

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, LRh/r;->B(Z)V

    invoke-virtual/range {v19 .. v19}, LJe/c;->p2()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v4, 0x1

    iput-boolean v4, v7, LRh/s;->h:Z

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onCaptureStart: isParallel = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", shotType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, LRh/a;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-static {v3, v2}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-eqz v2, :cond_1a

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/module/SuperMoonModule;->beginParallelProcess(LRh/r;)V

    :cond_1a
    return-object v1
.end method

.method public bridge synthetic onDrawBlackFrameChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onExtraMenuVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onFlashReady(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public onFocusAreaChanged(II)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/r;->updateFocusAreaForAF(II)V

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

.method public onFocusStateChanged(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v0, p1, Lcom/android/camera/module/loader/camera2/FocusTask;->a:I

    const-string v1, "SuperMoonModule"

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v2, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/SuperMoonModule;->mAFEndLogTimes:I

    const-string v0, "onAutoFocusMoving start"

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/camera/module/SuperMoonModule;->mAFEndLogTimes:I

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "onAutoFocusMoving end. result="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p1, Lcom/android/camera/module/loader/camera2/FocusTask;->d:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/android/camera/module/SuperMoonModule;->mAFEndLogTimes:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/camera/module/SuperMoonModule;->mAFEndLogTimes:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    sget-boolean v2, LQa/b;->b:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-ne v0, v3, :cond_7

    iget v0, p1, Lcom/android/camera/module/loader/camera2/FocusTask;->a:I

    if-ne v0, v3, :cond_6

    goto :goto_1

    :cond_6
    iget-boolean v0, p1, Lcom/android/camera/module/loader/camera2/FocusTask;->d:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-interface {p0, p1}, Lu6/q;->M(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    return-void

    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-interface {p0, p1}, Lu6/q;->M(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    return-void

    :cond_8
    iget-boolean p0, p1, Lcom/android/camera/module/loader/camera2/FocusTask;->d:Z

    if-eqz p0, :cond_b

    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-boolean p1, p1, Lcom/android/camera/module/loader/camera2/FocusTask;->d:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "AutoFocusTime=%1$dms focused=%2$b"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/camera/module/loader/camera2/FocusTask;->d:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "FocusTime=%1$dms focused=%2$b"

    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0}, Lu6/q;->v()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-eq v0, v3, :cond_a

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, v2}, Lj6/j;->E(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lu6/q;->M(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    invoke-virtual {v0}, LF1/i4;->k()V

    iget-boolean p1, p1, Lcom/android/camera/module/loader/camera2/FocusTask;->d:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->w0()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/n;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, LEs/n;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public onInactive()V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, LCs/g0;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, LCs/g0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    invoke-super {p0}, Lcom/android/camera/module/r;->onInactive()V

    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Li9/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li9/h;->d()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
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

    if-eq p1, v4, :cond_2

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

    if-nez v0, :cond_8

    invoke-virtual {p0, v3}, Lcom/android/camera/module/r;->ignoreFocusKeyEvent(Z)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v3, v3}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonFocus(ZI)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/camera/module/r;->parseKeyCameraTriggerMode(Landroid/view/KeyEvent;)I

    move-result p1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140f51

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/android/camera/module/SuperMoonModule;->performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V

    :cond_3
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

    if-eqz v0, :cond_8

    return v3

    :cond_8
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LQ6/h;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LE4/o;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LE4/o;-><init>(I)V

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
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayoutModeChanged(LZ5/h;LZ5/h;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onLayoutModeChanged(LZ5/h;LZ5/h;)V

    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Li9/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li9/h;->c()V

    :cond_0
    return-void
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

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/module/SuperMoonModule;->onSingleTapUp(IIZ)V

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

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->lockAEAF()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeteringAreaChanged(II)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->T()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->d(Lj9/e;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v2}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->q0()Lu6/q;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lu6/q;->G(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, LF1/i4;->l(Z)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->K0()Lj9/h0;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->q0()Lu6/q;

    move-result-object v3

    invoke-interface {v3, p1, p2, v0, v1}, Lu6/q;->T(IILandroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    invoke-virtual {v2, p1}, Lj9/h0;->f([Landroid/hardware/camera2/params/MeteringRectangle;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->p0()I

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onMtkNotifyNextCaptureReady()V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 0

    iget-object p3, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p3}, Lj6/f;->s()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object p3

    iget-boolean p3, p3, LF1/i4;->d:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/SuperMoonModule;->setOrientation(II)V

    return-void
.end method

.method public bridge synthetic onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public onPictureTakenFinished(ZJI)V
    .locals 15

    move/from16 v1, p1

    const-string v2, "SuperMoonModule"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPictureTakenFinished: succeed = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, v4, LF6/q;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v4, LF6/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v10, 0x0

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LF6/a;

    if-eqz v5, :cond_0

    iget-object v7, v4, LF6/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LF6/q$b;

    if-eqz v7, :cond_0

    iget-boolean v11, v7, LF6/q$b;->e:Z

    if-eqz v11, :cond_0

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v6}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iput-wide v8, v7, LF6/q$b;->d:J

    iput-boolean v10, v7, LF6/q$b;->e:Z

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v6, v7, LF6/q$b;->c:J

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    move-wide v13, v6

    move-object v7, v5

    move-wide v5, v13

    invoke-virtual/range {v4 .. v9}, LF6/q;->a(JLjava/lang/String;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF6/q$b;

    iget-object v3, v2, LF6/q$b;->a:LF6/a;

    invoke-virtual {v2}, LF6/q$b;->a()J

    move-result-wide v7

    new-array v2, v10, [Ljava/lang/String;

    invoke-virtual {v4, v3, v7, v8, v2}, LF6/q;->c(LF6/a;J[Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "PerformanceManager"

    const-string v2, "Ignore this stop event, there is no event in start status."

    invoke-static {v1, v2}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LEs/l;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, LEs/l;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/module/SuperMoonModule;->mCaptureStartTime:J

    sub-long v11, v1, v3

    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_3

    move v3, v6

    goto :goto_2

    :cond_3
    move v3, v10

    :goto_2
    iget v4, p0, Lcom/android/camera/module/SuperMoonModule;->mCurrentAiScene:I

    iget-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/module/r;->trackGeneralInfo(ZLx4/s;ZILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;)V

    sget-object v1, LF6/r;->a:LF6/a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LK7/l;->a:Ljava/util/LinkedHashMap;

    const-string v2, "captureType"

    invoke-static {v1, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LK7/j;

    invoke-direct {v2, v1, v11, v12}, LK7/j;-><init>(Ljava/lang/String;J)V

    invoke-static {v2}, LK7/l;->b(Lev/a;)V

    const-string v1, "SuperMoonModule"

    const-string v2, "mCaptureStartTime(from onShutterButtonClick start to jpegCallback finished) = "

    const-string v3, "ms"

    invoke-static {v11, v12, v2, v3}, LF1/r2;->b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mLongPressedAutoFocus:Z

    if-eqz v1, :cond_4

    iput-boolean v10, p0, Lcom/android/camera/module/SuperMoonModule;->mLongPressedAutoFocus:Z

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->q0()Lu6/q;

    move-result-object v1

    invoke-interface {v1}, Lu6/q;->L()V

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->handleSaveFinishIfNeed()V

    goto :goto_4

    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/module/r;->needKeepCoverView()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mBlockQuickShot:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->resetStatusToIdle()V

    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public bridge synthetic onPictureTakenImageConsumed(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreviewPixelsRead([BIILtu/c;Z)V
    .locals 17
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMIVI2"
        type = 0x0
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "onPreviewPixelsRead: isParallel = "

    const-string v4, "SuperMoonModule"

    const-string v5, "onPreviewPixelsRead E"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v4}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v4

    sget-object v5, Ltu/a;->c:Ltu/a;

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getCameraRotation()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Lru/k;->O(Ltu/a;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lcom/android/camera/module/r;->playCameraSound(I)V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object v4, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->d0()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-direct {v0}, Lcom/android/camera/module/SuperMoonModule;->isFrontMirror()Z

    move-result v4

    if-nez v4, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    iget-object v4, v0, Lcom/android/camera/module/SuperMoonModule;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v9, v0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v9}, Lj6/f;->b()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v9, v0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v9, Lj6/a;

    iget v9, v9, Lj6/a;->c:I

    int-to-float v9, v9

    invoke-static {}, Lcom/android/camera/data/data/m;->f0()Z

    move-result v10

    iget v11, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v11}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v11

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, LQg/f;->b(Landroid/graphics/Bitmap;ZFZZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v0, "SuperMoonModule"

    const-string v1, "onPreviewPixelsRead: bitmap is null!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    sget-object v8, LF1/g3;->c:LF1/g3;

    const/16 v8, 0x57

    invoke-static {v8, v7}, Lvr/j;->g(ILandroid/graphics/Bitmap;)[B

    move-result-object v7

    array-length v8, v7

    if-lez v8, :cond_3

    const-string v0, "SuperMoonModule"

    const-string v1, "onPreviewPixelsRead: jpegData is null!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v4

    return-void

    :cond_3
    iget v8, v0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureFormat:I

    const-string v9, "SuperMoonModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", format = "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, LQa/a;->c(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "HEIC"

    goto :goto_1

    :cond_4
    const-string v3, "JPEG"

    :goto_1
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", data = "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v9, v3, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->K0()Lj9/h0;

    move-result-object v3

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v3}, Lj9/i0;->b()Ljava/lang/String;

    move-result-object v10

    new-instance v9, LRh/r;

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    iget v15, v3, Lj9/a;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v0, Lcom/android/camera/module/SuperMoonModule;->mCaptureStartTime:J

    const/16 v16, -0x1

    invoke-direct/range {v9 .. v16}, LRh/r;-><init>(Ljava/lang/String;JJII)V

    invoke-static {v6}, LNh/d;->a(Z)Z

    move-result v3

    sget-object v10, LS8/b;->g:LS8/b;

    if-eqz v3, :cond_5

    sget-object v10, LN5/c;->a:LN5/c;

    iget-object v11, v0, Lcom/android/camera/module/SuperMoonModule;->mLocation:Landroid/location/Location;

    invoke-virtual {v10, v11}, LN5/c;->h(Landroid/location/Location;)LN5/c$a;

    invoke-static {}, LS8/b;->b()LS8/b;

    move-result-object v10

    invoke-virtual {v10}, LS8/b;->a()Lcom/xiaomi/camera/bean/CloudWmAttribute;

    move-result-object v11

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    :goto_2
    iget-boolean v12, v0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    iget-object v13, v9, LRh/r;->b:LRh/a;

    iput-boolean v12, v13, LRh/a;->i:Z

    invoke-virtual {v9, v6, v7}, LRh/r;->a(I[B)V

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v9, v7}, LRh/r;->C(Landroid/util/Size;)V

    iget-object v7, v9, LRh/r;->a:LRh/z;

    iput v8, v7, LRh/z;->j:I

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v1, v2}, Landroid/util/Size;-><init>(II)V

    iget-object v8, v9, LRh/r;->g:LRh/s;

    iput-object v7, v8, LRh/s;->s:Landroid/util/Size;

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v1, v2}, Landroid/util/Size;-><init>(II)V

    iget-object v1, v9, LRh/r;->b:LRh/a;

    iput-object v7, v1, LRh/a;->b:Landroid/util/Size;

    iget-object v1, v0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v1, Lj6/a;

    iget v1, v1, Lj6/a;->c:I

    iget-object v2, v9, LRh/r;->a:LRh/z;

    iput v1, v2, LRh/z;->c:I

    iget-object v1, v9, LRh/r;->l:LRh/C;

    iput-boolean v3, v1, LRh/C;->e:Z

    iget-object v2, v10, LS8/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, LRh/C;->f:Ljava/lang/String;

    iget-boolean v1, v10, LS8/b;->b:Z

    iget-object v2, v9, LRh/r;->l:LRh/C;

    iput-boolean v1, v2, LRh/C;->g:Z

    iget-boolean v1, v10, LS8/b;->c:Z

    iput-boolean v1, v2, LRh/C;->h:Z

    iput-object v11, v2, LRh/C;->u:Lcom/xiaomi/camera/bean/CloudWmAttribute;

    iget-object v1, v0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v1, Lj6/a;

    iget v1, v1, Lj6/a;->c:I

    iput v1, v2, LRh/C;->l:I

    invoke-static {}, LQg/e;->b()I

    move-result v1

    iget-object v2, v9, LRh/r;->k:LRh/A;

    iput v1, v2, LRh/A;->f:I

    invoke-static {v6}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v9, LRh/r;->d:LRh/f;

    iput-object v1, v2, LRh/f;->i:Landroid/graphics/Rect;

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/effect/EffectController;->d()Li3/a;

    move-result-object v1

    iget-object v2, v9, LRh/r;->d:LRh/f;

    iput-object v1, v2, LRh/f;->b:Li3/a;

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->p2()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v9, LRh/r;->g:LRh/s;

    iput-boolean v5, v1, LRh/s;->h:Z

    :cond_6
    iget-object v0, v0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p2, v5

    move-object/from16 p1, v9

    invoke-virtual/range {p0 .. p5}, Lk7/i;->G(LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/util/function/IntFunction;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "SuperMoonModule"

    const-string v1, "onPreviewPixelsRead X"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_3
    :try_start_1
    const-string v0, "SuperMoonModule"

    const-string v1, "onPreviewPixelsRead: module is dead"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v4

    return-void

    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPreviewSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreviewSessionSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SuperMoonModule"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/r;->onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->needKeepCoverView()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-eqz p1, :cond_2

    sget-object p1, LRh/p$d;->a:LRh/p;

    iget-object p1, p1, LRh/p;->a:Lvr/U;

    invoke-virtual {p1}, Lvr/U;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, LDr/d;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, LDr/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->previewWhenSessionSuccess()V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object p1

    invoke-virtual {p1}, Lvr/m;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvr/m;->r(Landroidx/fragment/app/l;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LN4/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LN4/b;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->z3()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x35

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Q5()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LFs/h;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, LFs/h;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onPreviewSessionSuccess null session or module not alive."

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1, p0}, LF1/r0;->g(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

.method public bridge synthetic onSceneRecognizeButtonClick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onShutterButtonCancel(Z)V
    .locals 0

    return-void
.end method

.method public onShutterButtonClick(I)Z
    .locals 5

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/p;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, LEs/p;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/k;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LEs/k;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    invoke-static {}, LQ6/j1;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6/j1;

    invoke-interface {v0, p1}, LQ6/j1;->q2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lqh/g;

    invoke-direct {v0}, Lqh/g;-><init>()V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LL9/o;

    const/16 v4, 0x8

    invoke-direct {v3, v0, v4}, LL9/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->checkShutterCondition()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iput-boolean v2, v0, Lj9/a;->n:Z

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0, p1}, Lj6/f;->N(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onShutterButtonClick "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SuperMoonModule"

    invoke-static {v0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->q0()Lu6/q;

    move-result-object p1

    invoke-interface {p1}, Lu6/q;->H()V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->q0()Lu6/q;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lu6/q;->s(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->q0()Lu6/q;

    move-result-object p1

    invoke-interface {p1}, Lu6/q;->v()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onShutterButtonFocus(ZI)V
    .locals 0

    return-void
.end method

.method public onShutterButtonLongClick()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isDoingAction()Z

    move-result v0

    const-string v1, "SuperMoonModule"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "onShutterButtonLongClick: doing action"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->H()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->shouldCheckSatFallbackState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "onShutterButtonLongClick: sat fallback"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Z0()V

    return v2
.end method

.method public onShutterButtonLongClickCancel(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonClick(I)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onShutterDragging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(IIZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSingleTapUp mPaused: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mCamera2Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; isInCountDown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; getCameraState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->x0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mMultiSnapStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; SuperMoonModule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperMoonModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->hasCameraException()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->Z()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->X()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_3

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
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->tryRemoveCountDownMessage()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->k()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/K3;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, LF1/K3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->mapTapCoordinate(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->unlockAEAF()V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lj6/j;->E(I)V

    invoke-virtual {p0, p3, v0}, Lcom/android/camera/module/r;->handlePreviewTouchEvent(ZLandroid/graphics/Point;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->b()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object p0

    invoke-virtual {p0}, LF1/i4;->k()V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onSprdNotifyNextCaptureReady()V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Lj3/b;)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {p0}, Lj9/a;->h0()V

    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 2
    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mWaitSaveFinish:Z

    const-string v0, "SuperMoonModule"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    const-string p0, "onThumbnailClicked: CannotGotoGallery...mWaitSaveFinish"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-nez p1, :cond_2

    sget-boolean p1, LJe/c;->k:Z

    .line 5
    sget-object p1, LJe/c$b;->a:LJe/c;

    .line 6
    invoke-virtual {p1}, LJe/c;->b1()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    const-string p0, "onThumbnailClicked: DoingAction.."

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isCannotGotoGallery()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    const-string p0, "onThumbnailClicked: CannotGotoGallery..."

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->gotoGallery(Z)V

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

.method public onWaitingFocusFinished()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isBlockSnap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->H()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->shouldCheckSatFallbackState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, v2}, Lj6/j;->V0(Z)V

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "SuperMoonModule"

    const-string v1, "capture check: sat fallback"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, v1}, Lj6/j;->V0(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->S()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/SuperMoonModule;->startNormalCapture(I)V

    return v2
.end method

.method public bridge synthetic onWaitingFocusFinishedFailed()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public pausePreview()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string v0, "SuperMoonModule"

    const-string v1, "pausePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->j0()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lj6/j;->E(I)V

    return-void
.end method

.method public performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isModeEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->restoreBottom()V

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonFocus(ZI)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p4

    const v1, 0x7f140f54

    invoke-virtual {p4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    const/4 p1, 0x2

    const/16 p2, 0xa0

    invoke-interface {p0, p1, p2}, LQ6/j1;->ec(II)V

    return-void

    :cond_3
    invoke-virtual {p0, p3, v0, p1}, Lcom/android/camera/module/r;->trackKeyShutterEvent(Landroid/view/KeyEvent;ZI)V

    invoke-virtual {p0, p1}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonClick(I)Z

    return-void

    :cond_4
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonFocus(ZI)V

    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mVolumeLongPress:Z

    if-eqz p1, :cond_6

    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mVolumeLongPress:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonLongClickCancel(Z)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isInCountDown()Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz p4, :cond_6

    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mVolumeLongPress:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonLongClick()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mVolumeLongPress:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mLongPressedAutoFocus:Z

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mVolumeLongPress:Z

    :cond_6
    :goto_0
    return-void
.end method

.method public bridge synthetic performKeyLongPress(IZLandroid/view/KeyEvent;Z)V
    .locals 0

    return-void
.end method

.method public registerProtocol()V
    .locals 7

    invoke-super {p0}, Lcom/android/camera/module/r;->registerProtocol()V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/q;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/Z0;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/K;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/o1;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object v0

    const-class v3, LQ6/B0;

    const-class v4, LQ6/M0;

    const-class v1, LQ6/C;

    const-class v2, LQ6/P;

    const-class v5, LQ6/V0;

    const-class v6, LQ6/b;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp6/b;->d([Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {p0}, LN6/a;->registerProtocol()V

    return-void
.end method

.method public resetStatusToIdle()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SuperMoonModule"

    const-string v3, "reset Status to Idle"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lj6/j;->E(I)V

    invoke-virtual {p0, v2}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mBlockQuickShot:Z

    return-void
.end method

.method public resumePreview()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string v0, "SuperMoonModule"

    const-string/jumbo v1, "resumePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->previewWhenSessionSuccess()V

    invoke-static {}, LEv/G;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mBlockQuickShot:Z

    return-void
.end method

.method public bridge synthetic setCaptureTime(Lqh/f;)V
    .locals 0

    return-void
.end method

.method public setCurrentAiScene(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/SuperMoonModule;->mCurrentAiScene:I

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 2

    const/4 v0, 0x7

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->setFrameAvailable(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, LF1/D3;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, LF1/D3;->a()LF1/D3;

    move-result-object v1

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {v1, v0}, LF1/D3;->d([I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->m0()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/w;->L()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v0, LF1/N;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, LF1/N;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x4
        0x7
        0x9
        0x2
        0x3
    .end array-data
.end method

.method public startPreview()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj9/a;->E0(Lj9/a$g;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj9/a;->K0(Lj9/a$c;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startPreview: set PictureSize with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SuperMoonModule"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj9/a;->P0(Landroid/util/Size;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureFormat:I

    invoke-virtual {v0, v2}, Lj9/a;->N0(I)V

    iget v0, p0, Lcom/android/camera/module/SuperMoonModule;->mOutputPictureFormat:I

    invoke-static {v0}, LQa/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HEIC"

    goto :goto_0

    :cond_0
    const-string v0, "JPEG"

    :goto_0
    const-string/jumbo v2, "startPreview: set PictureFormat to "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "startPreview: surfaceTexture = "

    invoke-static {v3, v0, v2, v4}, LF1/Q;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v2}, Lcom/android/camera/module/X;->getSurfaceTexture()LEu/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->getSurfaceTexture()LEu/a;

    move-result-object v0

    invoke-virtual {v0}, LEu/a;->a()Landroid/view/Surface;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1}, Lcom/android/camera/module/X;->v()J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lj6/f;->J(J)V

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Li9/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li9/h;->a()Landroid/view/Surface;

    move-result-object v0

    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    iget v5, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    iget-boolean v6, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    const/4 v3, 0x0

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lj9/a;->g1(Landroid/view/Surface;ILandroid/view/Surface;IZLj9/a$d;)V

    iget-object p0, v7, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object v0, p0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v1, v0, Lj9/i0;->o1:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iput-boolean v2, v0, Lj9/i0;->o1:Z

    invoke-virtual {p0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lj9/D;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lj9/D;-><init>(Lj9/h0;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method public startTimerCapture(I)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p1}, Lj6/f;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonFocus(ZI)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p1}, Lj6/f;->S()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/module/SuperMoonModule;->startNormalCapture(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonFocus(ZI)V

    :cond_0
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

    const/4 p0, 0x0

    return p0
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

    new-instance v0, LEs/j;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LEs/j;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/module/r;->unRegisterProtocol()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SuperMoonModule"

    const-string/jumbo v2, "unRegisterProtocol"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/q;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/Z0;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/K;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/o1;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object v0

    invoke-virtual {v0}, Lp6/b;->c()V

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {p0}, LN6/a;->unRegisterProtocol()V

    return-void
.end method

.method public bridge synthetic updateColorSpace(Lwu/a$k;)V
    .locals 0

    return-void
.end method

.method public updateJpegQuality()V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/data/j;->t()LF1/g3;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    iget v0, v0, LF1/g3;->a:I

    invoke-virtual {p0, v0}, Lj9/i0;->t(I)V

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
