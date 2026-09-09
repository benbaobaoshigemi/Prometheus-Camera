.class public Lcom/android/camera/module/WideSelfieModule;
.super Lcom/android/camera/module/r;
.source "SourceFile"

# interfaces
.implements LQ6/q;
.implements Ld9/d$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/WideSelfieModule$b;,
        Lcom/android/camera/module/WideSelfieModule$c;
    }
.end annotation


# static fields
.field private static final MIN_SHOOTING_TIME:I = 0x258

.field public static final STOP_ROTATION_THRESHOLD:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "WideSelfieModule"


# instance fields
.field private MOVE_DISTANCE:I

.field private MOVE_DISTANCE_VERTICAL:I

.field public OFFSET_VERTICAL_X_STOP_CAPTURE_THRESHOLD:I

.field public OFFSET_X_HINT_THRESHOLD:I

.field public OFFSET_X_STOP_CAPTURE_THRESHOLD:I

.field public OFFSET_Y_HINT_THRESHOLD:I

.field public OFFSET_Y_STOP_CAPTURE_THRESHOLD:I

.field private mActivityRotation:I

.field private mBeautyValues:Lx4/s;

.field private mCaptureOrientation:I

.field private mFileNameTemplate:Ljava/lang/String;

.field private mFirstFrameNv21Data:[B

.field private volatile mIsBurstSequenceEnd:Z

.field private mIsContinuousVibratoring:Z

.field private volatile mIsPrepareSaveTask:Z

.field private volatile mIsShooting:Z

.field private mJpegRotation:I

.field private mLastMoveDirection:I

.field private mLastVibratorProgress:I

.field private mMaxMoveWidth:I

.field private volatile mRequestStop:Z

.field private mSaveOutputImageTask:Lcom/android/camera/module/WideSelfieModule$b;

.field private mSensorOrientation:I

.field private mShootingStartTime:J

.field private mShowWarningToast:Z

.field private mStillPreviewWidth:I

.field private mStopCaptureMode:Ljava/lang/String;

.field private mTargetFocusMode:I

.field private mToastOffsetY:I

.field private mWideSelfEngine:Ld9/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/r;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/WideSelfieModule;->mIsBurstSequenceEnd:Z

    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsPrepareSaveTask:Z

    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mRequestStop:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/module/WideSelfieModule;->mTargetFocusMode:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/module/WideSelfieModule;->mCaptureOrientation:I

    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsContinuousVibratoring:Z

    iput v1, p0, Lcom/android/camera/module/WideSelfieModule;->mLastMoveDirection:I

    return-void
.end method

.method public static synthetic Fc(Landroid/view/Window;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/WideSelfieModule;->lambda$handleMessage$8(Landroid/view/Window;)V

    return-void
.end method

.method public static synthetic Mc(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/WideSelfieModule;->lambda$startWideSelfieShooting$3(LQ6/t0;)V

    return-void
.end method

.method public static synthetic Ua(Landroid/view/Window;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/WideSelfieModule;->lambda$keepScreenOn$2(Landroid/view/Window;)V

    return-void
.end method

.method public static synthetic Vb(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/WideSelfieModule;->lambda$onSingleTapUp$1(LQ6/t0;)V

    return-void
.end method

.method public static synthetic Wb(Lcom/android/camera/module/WideSelfieModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->lambda$startSaveTask$4()V

    return-void
.end method

.method private checkData([BII)Z
    .locals 4

    const-string p0, "WideSelfieModule"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "checkData: data is null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x3

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    if-eq v2, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkData: data invalid dataLen: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    const-string v2, " expected size: "

    const-string v3, " x "

    invoke-static {v1, p1, v2, p2, v3}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic dd(Lcom/android/camera/module/WideSelfieModule;)[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule;->mFirstFrameNv21Data:[B

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

.method public static synthetic gc(Lcom/android/camera/module/WideSelfieModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->lambda$notifyFirstFrameArrived$6()V

    return-void
.end method

.method public static bridge synthetic gd(Lcom/android/camera/module/WideSelfieModule;)Ld9/d;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Ld9/d;

    return-object p0
.end method

.method public static synthetic ic(Landroid/view/Window;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/WideSelfieModule;->lambda$handleMessage$7(Landroid/view/Window;)V

    return-void
.end method

.method private initPreviewLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->a()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, LF1/q4;->f(II)V

    invoke-static {}, LQ6/F1;->b()LQ6/F1;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, LQ6/F1;->initPreviewLayout()V

    invoke-interface {p0}, LQ6/F1;->b1()V

    :cond_1
    :goto_0
    return-void
.end method

.method private isProcessingSaveTask()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule;->mSaveOutputImageTask:Lcom/android/camera/module/WideSelfieModule$b;

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
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/WideSelfieModule;->mShootingStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isStitching()Z
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Ld9/d;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Ld9/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v1, 0x2003

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private static synthetic lambda$handleMessage$7(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$8(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private static synthetic lambda$keepScreenOn$2(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private synthetic lambda$notifyFirstFrameArrived$6()V
    .locals 1

    sget-object v0, Le2/m;->w:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method private static synthetic lambda$onPreviewUpdate$0(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    invoke-static {}, LQ6/F1;->b()LQ6/F1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, LQ6/F1;->Ho(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onSingleTapUp$1(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/t0;->Wp(Z)V

    return-void
.end method

.method private lambda$startSaveTask$4()V
    .locals 5

    const-string v0, "WideSelfieModule"

    const-string v1, "onSaveCompleted"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mShowWarningToast:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14150a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->mToastOffsetY:I

    const/4 v3, 0x0

    const/16 v4, 0x40

    invoke-static {v1, v0, v3, v2, v4}, LF1/C4;->f(Landroid/content/Context;Ljava/lang/String;ZII)LPu/A;

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->onSaveFinish()V

    return-void
.end method

.method private static synthetic lambda$startSaveTask$5(LQ6/n1;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, LQ6/n1;->Eo([IZ)V

    return-void
.end method

.method private static synthetic lambda$startWideSelfieShooting$3(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/t0;->lj(I)V

    return-void
.end method

.method public static bridge synthetic nd(Lcom/android/camera/module/WideSelfieModule;[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/WideSelfieModule;->mFirstFrameNv21Data:[B

    return-void
.end method

.method public static synthetic oa(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/camera/module/WideSelfieModule;->lambda$onPreviewUpdate$0(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private onSaveFinish()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onSaveFinish E"

    const-string v3, "WideSelfieModule"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->N()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj9/h0;->e(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->L0()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj9/h0;->j(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->mTargetFocusMode:I

    invoke-virtual {v1, v2}, Lj9/h0;->J(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->startPreview()V

    invoke-static {}, LQ6/V0;->b()LQ6/V0;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, LQ6/V0;->Dl()V

    :cond_3
    const-string p0, "onSaveFinish X"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private setupCaptureParams()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const-string v1, "WideSelfieModule"

    if-nez v0, :cond_0

    const-string p0, "camera device is not ready"

    invoke-static {v1, p0}, Lcom/android/camera/log/LogK;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->mTargetFocusMode:I

    invoke-virtual {v0, v2}, Lj9/h0;->J(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lj9/h0;->f0(F)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lj9/a;->D0(I)V

    invoke-static {}, Lcom/android/camera/data/data/w;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->K0()Lj9/h0;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lj9/h0;->o(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "antiBanding="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->isZslPreferred()Z

    move-result v1

    invoke-virtual {v0, v1}, Lj9/h0;->G(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v2}, Lj9/h0;->F(Z)V

    return-void
.end method

.method private startPreviewSession()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "WideSelfieModule"

    const-string/jumbo v1, "startPreview: camera has been closed"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
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

    const/4 v1, 0x3

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

    sget-boolean v0, LJe/d;->i:Z

    xor-int/lit8 v3, v0, 0x1

    iget v5, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lj9/a;->g1(Landroid/view/Surface;ILandroid/view/Surface;IZLj9/a$d;)V

    return-void
.end method

.method private startSaveTask([BIII)V
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "WideSelfieModule"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startSaveTask stitchResult "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/module/WideSelfieModule;->keepScreenOnAwhile()V

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->A0()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    invoke-virtual {v2}, Lj9/a;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, v0, Lcom/android/camera/module/WideSelfieModule;->mShowWarningToast:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/module/WideSelfieModule;->mFirstFrameNv21Data:[B

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    move-object v9, v1

    move v10, v3

    move v11, v4

    move v13, v5

    goto :goto_1

    :cond_1
    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move v13, v2

    :goto_1
    iget-object v1, v0, Lcom/android/camera/module/WideSelfieModule;->mFileNameTemplate:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v6, Lcom/android/camera/module/WideSelfieModule$b;

    iget-object v7, v0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    iget v12, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget v14, v0, Lcom/android/camera/module/WideSelfieModule;->mJpegRotation:I

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->getActualCameraId()I

    move-result v15

    iget-object v1, v0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->S()I

    move-result v16

    iget-object v1, v0, Lcom/android/camera/module/WideSelfieModule;->mBeautyValues:Lx4/s;

    iget-object v3, v0, Lcom/android/camera/module/WideSelfieModule;->mStopCaptureMode:Ljava/lang/String;

    new-instance v4, LMf/a;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, LMf/a;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v6 .. v19}, Lcom/android/camera/module/WideSelfieModule$b;-><init>(Lcom/android/camera/module/X;Ljava/lang/String;[BIIIZIIILx4/s;Ljava/lang/String;LMf/a;)V

    iput-object v6, v0, Lcom/android/camera/module/WideSelfieModule;->mSaveOutputImageTask:Lcom/android/camera/module/WideSelfieModule$b;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v6, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-boolean v2, v0, Lcom/android/camera/module/WideSelfieModule;->mIsPrepareSaveTask:Z

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH3/p;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LH3/p;-><init>(IB)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startWideSelfieShooting()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/module/WideSelfieModule;->mShowWarningToast:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/camera/module/WideSelfieModule;->mFirstFrameNv21Data:[B

    iget-object v3, v0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v3, Lj6/a;

    iget v3, v3, Lj6/a;->c:I

    iput v3, v0, Lcom/android/camera/module/WideSelfieModule;->mCaptureOrientation:I

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getDisplayRotation()I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/WideSelfieModule;->mActivityRotation:I

    invoke-static {}, LK2/b;->W()Z

    move-result v3

    const/16 v4, 0x5a

    const/16 v5, 0x168

    if-nez v3, :cond_1

    invoke-static {}, LK2/b;->P()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, LK2/b;->R()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->o0()I

    move-result v3

    iget v6, v0, Lcom/android/camera/module/WideSelfieModule;->mCaptureOrientation:I

    invoke-static {v3, v6, v4}, LBw/i;->H(III)I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/WideSelfieModule;->mJpegRotation:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->o0()I

    move-result v3

    iget v6, v0, Lcom/android/camera/module/WideSelfieModule;->mActivityRotation:I

    rsub-int v6, v6, 0x168

    rem-int/2addr v6, v5

    invoke-static {v3, v6, v4}, LBw/i;->H(III)I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/WideSelfieModule;->mJpegRotation:I

    :goto_1
    const-string v3, "WideSelfieModule"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "startWideSelfieShooting mJpegRotation = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/camera/module/WideSelfieModule;->mJpegRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/log/LogK;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, LC4/k;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, LC4/k;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-boolean v1, v0, Lcom/android/camera/module/WideSelfieModule;->mIsBurstSequenceEnd:Z

    const/4 v6, -0x1

    iput v6, v0, Lcom/android/camera/module/WideSelfieModule;->mLastVibratorProgress:I

    iput v6, v0, Lcom/android/camera/module/WideSelfieModule;->mLastMoveDirection:I

    iput v1, v0, Lcom/android/camera/module/WideSelfieModule;->mMaxMoveWidth:I

    invoke-virtual {v0, v3}, Lcom/android/camera/module/r;->lockScreenOrientation(Z)V

    invoke-static {}, LQ6/V0;->b()LQ6/V0;

    move-result-object v7

    invoke-interface {v7, v0}, LQ6/V0;->pe(Lcom/android/camera/module/W;)V

    iget-object v8, v0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Ld9/d;

    iget v9, v0, Lcom/android/camera/module/WideSelfieModule;->mJpegRotation:I

    iput v9, v8, Ld9/d;->c:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "startCapture orientation = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v8, Ld9/d;->c:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    const-string v11, "WideSelfieEngine"

    invoke-static {v11, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v9, v8, Ld9/d;->g:I

    iget v10, v8, Ld9/d;->h:I

    const/16 v12, 0x802

    iget v13, v8, Ld9/d;->c:I

    invoke-static {v9, v10, v12, v13}, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->getDefaultInitParams(IIII)Lcom/arcsoft/camera/wideselfie/AwsInitParameter;

    move-result-object v9

    invoke-static {}, LK2/b;->W()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {}, LK2/b;->P()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {}, LK2/b;->R()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    move v10, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v10, v3

    :goto_3
    iput-boolean v10, v8, Ld9/d;->x:Z

    iget-object v10, v8, Ld9/d;->a:Landroid/content/Context;

    invoke-static {v10}, Ld9/b;->a(Landroid/content/Context;)Ld9/b;

    move-result-object v10

    iget v12, v8, Ld9/d;->c:I

    rem-int/lit16 v12, v12, 0xb4

    if-ne v12, v4, :cond_4

    iget v12, v8, Ld9/d;->h:I

    iget v13, v8, Ld9/d;->n:I

    mul-int/2addr v12, v13

    iget v10, v10, Ld9/b;->a:I

    div-int/2addr v12, v10

    iget v10, v8, Ld9/d;->m:I

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    new-instance v10, Landroid/graphics/Rect;

    iget v14, v8, Ld9/d;->l:I

    iget v15, v8, Ld9/d;->m:I

    add-int/2addr v15, v13

    invoke-direct {v10, v1, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Ld9/d;->o:Landroid/graphics/Rect;

    goto :goto_4

    :cond_4
    iget v12, v8, Ld9/d;->g:I

    iget v13, v10, Ld9/b;->g:I

    add-int/lit8 v14, v13, -0x2

    mul-int/2addr v14, v12

    iget v10, v10, Ld9/b;->b:I

    div-int v12, v14, v10

    iget-boolean v10, v8, Ld9/d;->x:Z

    if-eqz v10, :cond_5

    iget v10, v8, Ld9/d;->l:I

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    new-instance v10, Landroid/graphics/Rect;

    iget v14, v8, Ld9/d;->l:I

    add-int/2addr v14, v13

    iget v15, v8, Ld9/d;->m:I

    invoke-direct {v10, v13, v1, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Ld9/d;->o:Landroid/graphics/Rect;

    goto :goto_4

    :cond_5
    iget v10, v8, Ld9/d;->n:I

    iget v13, v8, Ld9/d;->m:I

    sub-int/2addr v10, v13

    div-int/lit8 v10, v10, 0x2

    new-instance v13, Landroid/graphics/Rect;

    iget v14, v8, Ld9/d;->l:I

    iget v15, v8, Ld9/d;->m:I

    add-int/2addr v15, v10

    invoke-direct {v13, v1, v10, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v13, v8, Ld9/d;->o:Landroid/graphics/Rect;

    :goto_4
    iput v12, v9, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->maxResultWidth:I

    iget v10, v8, Ld9/d;->c:I

    rem-int/lit16 v10, v10, 0xb4

    if-ne v10, v4, :cond_6

    iget v4, v8, Ld9/d;->l:I

    goto :goto_5

    :cond_6
    iget v4, v8, Ld9/d;->m:I

    :goto_5
    iput v4, v9, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->progressBarThumbHeight:I

    const/16 v4, 0x1e0

    iput v4, v9, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailWidth:I

    iput v5, v9, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailHeight:I

    iput v1, v9, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->guideStopBarThumbHeight:I

    iget-object v4, v8, Ld9/d;->k:Landroid/util/SizeF;

    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    iput v4, v9, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->cameraViewAngleForWidth:F

    iget-object v4, v8, Ld9/d;->k:Landroid/util/SizeF;

    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    iput v4, v9, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->cameraViewAngleForHeight:F

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v4, v9, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->progressBarThumbHeight:I

    iget v5, v9, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailWidth:I

    iget v10, v9, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailHeight:I

    iget v13, v9, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->guideStopBarThumbHeight:I

    const-string/jumbo v14, "startCapture maxResultWidth = "

    const-string v15, ", progressBarThumbHeight = "

    const-string v2, ", thumbnailWidth = "

    invoke-static {v12, v4, v14, v15, v2}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", thumbnailHeight = "

    const-string v12, ",  guideStopBarThumbHeight = "

    invoke-static {v2, v5, v4, v10, v12}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v11, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->init(Lcom/arcsoft/camera/wideselfie/AwsInitParameter;)I

    move-result v2

    iput-boolean v3, v8, Ld9/d;->s:Z

    const-string v4, "WideSelfieEngine init, result = "

    invoke-static {v2, v4}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v11, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object v2

    iget-object v4, v8, Ld9/d;->y:Ld9/d$c;

    invoke-virtual {v2, v4}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->setOnCallback(Lcom/arcsoft/camera/wideselfie/WideSelfieCallback;)V

    iget-object v2, v8, Ld9/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v4, 0x2002

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->A0()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v4, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->N()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->K0()Lj9/h0;

    move-result-object v4

    invoke-virtual {v4, v3}, Lj9/h0;->e(Z)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_7
    :goto_6
    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->L0()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->K0()Lj9/h0;

    move-result-object v4

    invoke-virtual {v4, v3}, Lj9/h0;->j(Z)V

    :cond_8
    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v4

    iget-object v4, v4, Lh6/b;->a:Lh6/a;

    invoke-interface {v4}, Lh6/a;->c()Landroid/location/Location;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    iget-object v5, v5, Lj9/h0;->a:Lj9/i0;

    iput-object v4, v5, Lj9/i0;->a:Landroid/location/Location;

    iget-object v4, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->K0()Lj9/h0;

    move-result-object v4

    invoke-virtual {v4, v3}, Lj9/h0;->J(I)V

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->K0()Lj9/h0;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/module/WideSelfieModule;->isZslPreferred()Z

    move-result v4

    invoke-virtual {v3, v4}, Lj9/h0;->G(Z)V

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->K0()Lj9/h0;

    move-result-object v3

    iget-object v3, v3, Lj9/h0;->a:Lj9/i0;

    iget-boolean v4, v3, Lj9/i0;->s1:Z

    if-eqz v4, :cond_9

    iput-boolean v1, v3, Lj9/i0;->s1:Z

    :cond_9
    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lj9/h0;->X(I)V

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    new-instance v3, Lcom/android/camera/module/WideSelfieModule$a;

    invoke-direct {v3, v0}, Lcom/android/camera/module/WideSelfieModule$a;-><init>(Lcom/android/camera/module/WideSelfieModule;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v6, v3, v4}, Lj9/a;->g(ILj9/a$j;Lk7/i;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, LQ6/V0;->onStart()V

    invoke-virtual {v0}, Lcom/android/camera/module/WideSelfieModule;->keepScreenOn()V

    invoke-static {}, LF1/i0;->a()LF1/i0;

    move-result-object v0

    invoke-virtual {v0}, LF1/i0;->c()V

    return-void

    :goto_7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private stopWideSelfieShooting(ZZLjava/lang/String;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    const-string v1, "WideSelfieModule"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "stopWideSelfieShooting return, is not shooting"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string/jumbo v0, "stopWideSelfieShooting"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Ld9/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "WideSelfieEngine"

    const-string/jumbo v4, "stopCapture E"

    invoke-static {v3, v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, v0, Ld9/d;->t:Z

    const/4 v4, 0x1

    if-nez v1, :cond_1

    const-string/jumbo p1, "stopCapture failed, can\'t stop"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ld9/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x2002

    const/16 v5, 0x2003

    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo p1, "stopCapture failed, error state"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iput-boolean v4, p0, Lcom/android/camera/module/WideSelfieModule;->mRequestStop:Z

    return-void

    :cond_2
    const-string/jumbo v0, "stopCapture X"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/android/camera/module/WideSelfieModule;->mIsPrepareSaveTask:Z

    iput-boolean v2, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    iput-boolean v2, p0, Lcom/android/camera/module/WideSelfieModule;->mRequestStop:Z

    iput-boolean p2, p0, Lcom/android/camera/module/WideSelfieModule;->mShowWarningToast:Z

    iput-object p3, p0, Lcom/android/camera/module/WideSelfieModule;->mStopCaptureMode:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Ld9/a;->a(Landroid/content/Context;)Ld9/a;

    move-result-object p1

    iget-object p2, p1, Ld9/a;->a:Landroid/os/Vibrator;

    iget-object p1, p1, Ld9/a;->b:Landroid/os/VibrationEffect;

    invoke-virtual {p2, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_3
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->playCameraSound(I)V

    invoke-virtual {p0, v2}, Lcom/android/camera/module/r;->lockScreenOrientation(Z)V

    return-void
.end method

.method public static synthetic ub(LQ6/n1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/WideSelfieModule;->lambda$startSaveTask$5(LQ6/n1;)V

    return-void
.end method

.method private updateHorizontalHintText(LQ6/F1;I)V
    .locals 4

    iget p0, p0, Lcom/android/camera/module/WideSelfieModule;->mActivityRotation:I

    const/16 v0, 0x10e

    const v1, 0x7f14150e

    const v2, 0x7f14150f

    const/4 v3, 0x1

    if-ne p0, v0, :cond_1

    if-ne p2, v3, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    if-nez p2, :cond_3

    goto :goto_1

    :cond_1
    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, LQ6/F1;->Hb(I)V

    :cond_4
    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 10

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

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Q1()I

    move-result v5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->o0()I

    move-result v7

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v8

    const/4 v4, 0x0

    const/16 v6, 0xb0

    invoke-static/range {v3 .. v8}, LF1/H3;->i(Ljava/util/List;IIIILj9/e;)V

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    sget-object v1, LF1/H3;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, LF1/H3;->d(ILjava/util/List;)Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    iget v2, v1, Lj9/e;->b:I

    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2, v3}, Lj9/e;->j0(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v6

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    iget v4, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-interface {v1}, Lj6/j;->o0()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v7, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v7}, Lj6/j;->c()Lj9/e;

    move-result-object v7

    invoke-static {v2, v3, v7}, Lcom/android/camera/data/data/j;->M(IILj9/e;)F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ll6/n;->f(IILjava/util/List;FLandroid/util/Size;Z)Landroid/util/Size;

    move-result-object v2

    invoke-interface {v1, v2}, Lj6/j;->J(Landroid/util/Size;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1, v0}, Lj6/j;->e(Landroid/util/Size;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pictureSize= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " previewSize="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WideSelfieModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

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

.method private updateThumbBackgroudLayout(LQ6/F1;ZIILandroid/graphics/Point;)V
    .locals 6

    iget v0, p0, Lcom/android/camera/module/WideSelfieModule;->mJpegRotation:I

    rem-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x5a

    const/16 v2, 0x64

    const/16 v3, 0x32

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_4

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    iget p2, p0, Lcom/android/camera/module/WideSelfieModule;->mMaxMoveWidth:I

    iget p5, p5, Landroid/graphics/Point;->x:I

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    invoke-static {p2, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/module/WideSelfieModule;->mMaxMoveWidth:I

    if-eq p4, v3, :cond_2

    if-ne p4, v2, :cond_1

    goto :goto_0

    :cond_1
    move p4, v4

    goto :goto_1

    :cond_2
    :goto_0
    move p4, v5

    :goto_1
    if-nez p4, :cond_3

    iget p5, p0, Lcom/android/camera/module/WideSelfieModule;->mLastMoveDirection:I

    if-ne p5, v5, :cond_3

    if-nez p3, :cond_3

    iget p0, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE_VERTICAL:I

    sub-int/2addr p0, p2

    invoke-interface {p1, p0, v5, v5}, LQ6/F1;->Zf(IZZ)V

    return-void

    :cond_3
    if-nez p4, :cond_8

    iget p4, p0, Lcom/android/camera/module/WideSelfieModule;->mLastMoveDirection:I

    if-nez p4, :cond_8

    if-ne p3, v5, :cond_8

    iget p0, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE_VERTICAL:I

    sub-int/2addr p0, p2

    invoke-interface {p1, p0, v5, v4}, LQ6/F1;->Zf(IZZ)V

    return-void

    :cond_4
    :goto_2
    iget p2, p0, Lcom/android/camera/module/WideSelfieModule;->mMaxMoveWidth:I

    iget p5, p5, Landroid/graphics/Point;->y:I

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    invoke-static {p2, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/module/WideSelfieModule;->mMaxMoveWidth:I

    if-eq p4, v3, :cond_6

    if-ne p4, v2, :cond_5

    goto :goto_3

    :cond_5
    move p4, v4

    goto :goto_4

    :cond_6
    :goto_3
    move p4, v5

    :goto_4
    if-nez p4, :cond_7

    iget p5, p0, Lcom/android/camera/module/WideSelfieModule;->mLastMoveDirection:I

    if-ne p5, v5, :cond_7

    if-nez p3, :cond_7

    iget p0, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE:I

    sub-int/2addr p0, p2

    invoke-interface {p1, p0, v4, v5}, LQ6/F1;->Zf(IZZ)V

    return-void

    :cond_7
    if-nez p4, :cond_8

    iget p4, p0, Lcom/android/camera/module/WideSelfieModule;->mLastMoveDirection:I

    if-nez p4, :cond_8

    if-ne p3, v5, :cond_8

    iget p0, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE:I

    sub-int/2addr p0, p2

    invoke-interface {p1, p0, v4, v4}, LQ6/F1;->Zf(IZZ)V

    :cond_8
    return-void
.end method

.method private updateVerticalHintText(LQ6/F1;I)V
    .locals 2

    if-gez p2, :cond_0

    const p2, 0x7f14150d

    goto :goto_0

    :cond_0
    const p2, 0x7f14150c

    :goto_0
    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsContinuousVibratoring:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld9/a;->a(Landroid/content/Context;)Ld9/a;

    move-result-object v0

    iget-object v1, v0, Ld9/a;->a:Landroid/os/Vibrator;

    iget-object v0, v0, Ld9/a;->b:Landroid/os/VibrationEffect;

    invoke-virtual {v1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsContinuousVibratoring:Z

    :cond_1
    invoke-interface {p1, p2}, LQ6/F1;->Hb(I)V

    :cond_2
    return-void
.end method

.method public static bridge synthetic xd(Lcom/android/camera/module/WideSelfieModule;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsBurstSequenceEnd:Z

    return-void
.end method


# virtual methods
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

.method public bridge synthetic checkSnapClickValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public closeCamera()V
    .locals 5

    const-string v0, "WideSelfieModule"

    const-string v1, "closeCamera: start"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->A0()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1, v2}, Lj6/j;->E(I)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    const/4 v3, 0x0

    iput-object v3, v1, Lj9/a;->b:LF1/V2;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lj9/a;->o1(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, v3}, Lj6/j;->x(Lj9/a;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "WideSelfieModule"

    const-string v0, "closeCamera: end"

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

    if-eq p1, v0, :cond_6

    const/16 v1, 0x20

    if-eq p1, v1, :cond_5

    const/16 v1, 0x37

    if-eq p1, v1, :cond_4

    const/16 v1, 0x42

    if-eq p1, v1, :cond_3

    const/16 v1, 0x5f

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8b

    if-eq p1, v1, :cond_1

    const v1, 0xcafe

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->consumePreference(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateSessionParams()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateOpMode()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p0}, Lcom/android/camera/module/r;->initializeMetaDataCallback(Lcom/android/camera/module/r;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateThermalLevel()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateModuleRelated()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->setupCaptureParams()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->updatePictureAndPreviewSize()V

    :goto_0
    return v0
.end method

.method public genFaceDetectionCallback()Lj9/a$f;
    .locals 1

    new-instance v0, Lcom/android/camera/module/WideSelfieModule$c;

    invoke-direct {v0, p0}, Lr6/I;-><init>(Lcom/android/camera/module/r;)V

    return-object v0
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

.method public bridge synthetic getDismissPureBlurDelayTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bridge synthetic getModuleDeviceParam()Ly3/v;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSnapCondition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handleMessage(ILandroid/os/Message;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    const/16 v2, 0x11

    if-eq p1, v2, :cond_4

    const/16 v1, 0x33

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->handleMessage(ILandroid/os/Message;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->m0()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->onCameraException()V

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->initPreviewLayout()V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->a()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, p2, v1}, LF1/q4;->f(II)V

    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Ld9/d;

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->a()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->G()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "1"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iput p2, p1, Ld9/d;->i:I

    iput v1, p1, Ld9/d;->j:I

    iput v2, p1, Ld9/d;->g:I

    iput p0, p1, Ld9/d;->h:I

    iget-object p0, p1, Ld9/d;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071a69

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    iget v1, p1, Ld9/d;->i:I

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p1, Ld9/d;->l:I

    iget v1, p1, Ld9/d;->j:I

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p1, Ld9/d;->m:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mFullImageWidth = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Ld9/d;->g:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFullImageHeight = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Ld9/d;->h:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WideSelfieEngine"

    invoke-static {v2, p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-string p2, "camera"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    invoke-static {p0}, Ld9/d;->a(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/SizeF;

    move-result-object p0

    iput-object p0, p1, Ld9/d;->k:Landroid/util/SizeF;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->onCameraOpenedFail()V

    return v0

    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getWindowOpt()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LEs/K;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {p2, v2, v3}, LEs/K;-><init>(IB)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getScreenDelay()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getWindowOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/J;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, LEs/J;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v0
.end method

.method public isDoingAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsBurstSequenceEnd:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsPrepareSaveTask:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->isProcessingSaveTask()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->isStitching()Z

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

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsPrepareSaveTask:Z

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
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isZslPreferred()Z
    .locals 0

    sget-boolean p0, LJe/d;->i:Z

    xor-int/lit8 p0, p0, 0x1

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

    new-instance v0, LH3/m;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LH3/m;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public keepScreenOnAwhile()V
    .locals 3

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x11

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public notifyFirstFrameArrived(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->notifyFirstFrameArrived(I)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sASDScheduler:Lio/reactivex/v;

    new-instance v0, LV9/W4;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, LV9/W4;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public onActionStop()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-eqz v0, :cond_1

    invoke-static {}, LQ6/V0;->b()LQ6/V0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, LQ6/V0;->onFinish()V

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->playCameraSound(I)V

    const-string/jumbo v0, "stop_capture_on_home_or_back"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/camera/module/WideSelfieModule;->stopWideSelfieShooting(ZZLjava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->doLaterReleaseIfNeed()V

    return-void
.end method

.method public onActive()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/module/r;->onActive()V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld9/b;->a(Landroid/content/Context;)Ld9/b;

    move-result-object v0

    iget v0, v0, Ld9/b;->a:I

    iput v0, p0, Lcom/android/camera/module/WideSelfieModule;->mStillPreviewWidth:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_X_HINT_THRESHOLD:I

    div-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_Y_HINT_THRESHOLD:I

    div-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_X_STOP_CAPTURE_THRESHOLD:I

    div-int/lit8 v0, v0, 0x5

    const/16 v2, 0x24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_VERTICAL_X_STOP_CAPTURE_THRESHOLD:I

    iget v0, p0, Lcom/android/camera/module/WideSelfieModule;->mStillPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_Y_STOP_CAPTURE_THRESHOLD:I

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071a74

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/WideSelfieModule;->mToastOffsetY:I

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld9/b;->a(Landroid/content/Context;)Ld9/b;

    move-result-object v0

    iget v0, v0, Ld9/b;->c:I

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ld9/b;->a(Landroid/content/Context;)Ld9/b;

    move-result-object v2

    iget v2, v2, Ld9/b;->a:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE:I

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld9/b;->a(Landroid/content/Context;)Ld9/b;

    move-result-object v0

    iget v0, v0, Ld9/b;->g:I

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ld9/b;->a(Landroid/content/Context;)Ld9/b;

    move-result-object v2

    iget v2, v2, Ld9/b;->b:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE_VERTICAL:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MOVE_DISTANCE "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", MOVE_DISTANCE_VERTICAL =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE_VERTICAL:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WideSelfieModule"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->n0(Lj9/e;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/WideSelfieModule;->mSensorOrientation:I

    new-instance v0, Ld9/d;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->mSensorOrientation:I

    invoke-direct {v0, v1, v2, p0}, Ld9/d;-><init>(Landroid/content/Context;ILcom/android/camera/module/WideSelfieModule;)V

    iput-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Ld9/d;

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    sget v1, Li3/b;->N:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/effect/EffectController;->a0(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->onCameraOpened()V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140c09

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mFileNameTemplate:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->keepScreenOnAwhile()V

    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Ld9/d;

    iget-boolean v0, p0, Ld9/d;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld9/d;->A:Ld9/d$b;

    iget-object v1, p0, Ld9/d;->w:Ld9/c;

    iget-object v2, p0, Ld9/d;->q:Landroid/hardware/Sensor;

    const/16 v3, 0x2710

    iget-object v4, p0, Ld9/d;->p:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld9/d;->u:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onActivityResult(Lcom/android/camera/module/X;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->isProcessingSaveTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->playCameraSound(I)V

    const/4 v0, 0x0

    const-string/jumbo v2, "stop_capture_on_home_or_back"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/module/WideSelfieModule;->stopWideSelfieShooting(ZZLjava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/r;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onCameraOpened()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkDisplayOrientation()V

    sget-object v0, Le2/m;->u:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->startPreviewSession()V

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p0, "WideSelfieModule"

    const-string v0, "SetupCameraThread done"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

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

.method public onInactive()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/module/r;->onInactive()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->closeCamera()V

    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->resetScreenOn()V

    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Ld9/d;

    iget-boolean v2, v0, Ld9/d;->u:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Ld9/d;->A:Ld9/d$b;

    iget-object v4, v0, Ld9/d;->p:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v3, v0, Ld9/d;->u:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->abandonModuleCallback()V

    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Ld9/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "WideSelfieEngine"

    const-string v4, "onDestroy"

    invoke-static {v2, v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ld9/d;->z:Ld9/d$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Ld9/d;->v:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Ld9/d;->v:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
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

    if-eq p1, v0, :cond_6

    const/16 v0, 0x42

    if-eq p1, v0, :cond_6

    const/16 v0, 0x57

    const/16 v3, 0x58

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_7

    const/16 p1, 0x32

    invoke-virtual {p0, p1}, Lcom/android/camera/module/WideSelfieModule;->onShutterButtonClick(I)Z

    return v1

    :cond_2
    :pswitch_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    if-ne p1, v3, :cond_3

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

    const v2, 0x7f140f51

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/WideSelfieModule;->performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V

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
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_1
    invoke-static {}, LQ6/h;->b()LQ6/h;

    move-result-object v0

    invoke-interface {v0}, LQ6/h;->Y3()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayoutModeChanged(LZ5/h;LZ5/h;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onLayoutModeChanged(LZ5/h;LZ5/h;)V

    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const-string/jumbo p2, "stop_capture_out_of_range"

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/module/WideSelfieModule;->stopWideSelfieShooting(ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMove(ZIILandroid/graphics/Point;Landroid/graphics/Point;Z)V
    .locals 7

    move-object v0, p4

    move p4, p3

    move p3, p2

    move p2, p1

    invoke-static {}, LQ6/F1;->b()LQ6/F1;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Ld9/a;->a(Landroid/content/Context;)Ld9/a;

    move-result-object p0

    iget-object p0, p0, Ld9/a;->a:Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    return-void

    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->mJpegRotation:I

    rem-int/lit16 v2, v2, 0xb4

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_X_STOP_CAPTURE_THRESHOLD:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_VERTICAL_X_STOP_CAPTURE_THRESHOLD:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_Y_STOP_CAPTURE_THRESHOLD:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v2, :cond_3

    move v1, v5

    goto :goto_2

    :cond_3
    move v1, v6

    :goto_2
    if-nez p6, :cond_a

    if-nez v1, :cond_a

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p6

    iget v1, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_Y_HINT_THRESHOLD:I

    if-lt p6, v1, :cond_5

    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/WideSelfieModule;->updateVerticalHintText(LQ6/F1;I)V

    return-void

    :cond_5
    iget-boolean p6, p0, Lcom/android/camera/module/WideSelfieModule;->mIsContinuousVibratoring:Z

    if-eqz p6, :cond_6

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-static {p6}, Ld9/a;->a(Landroid/content/Context;)Ld9/a;

    move-result-object p6

    iget-object p6, p6, Ld9/a;->a:Landroid/os/Vibrator;

    invoke-virtual {p6}, Landroid/os/Vibrator;->cancel()V

    iput-boolean v6, p0, Lcom/android/camera/module/WideSelfieModule;->mIsContinuousVibratoring:Z

    :cond_6
    const/4 p6, -0x1

    if-ne p3, p6, :cond_7

    const p0, 0x7f14150b

    invoke-interface {p1, p0}, LQ6/F1;->Hb(I)V

    return-void

    :cond_7
    const/16 p6, 0x32

    if-eq p4, p6, :cond_8

    const/16 p6, 0x64

    if-ne p4, p6, :cond_9

    :cond_8
    iget p6, p0, Lcom/android/camera/module/WideSelfieModule;->mLastVibratorProgress:I

    if-eq p6, p4, :cond_9

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-static {p6}, Ld9/a;->a(Landroid/content/Context;)Ld9/a;

    move-result-object p6

    iget-object v0, p6, Ld9/a;->a:Landroid/os/Vibrator;

    iget-object p6, p6, Ld9/a;->b:Landroid/os/VibrationEffect;

    invoke-virtual {v0, p6}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    iput p4, p0, Lcom/android/camera/module/WideSelfieModule;->mLastVibratorProgress:I

    :cond_9
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/module/WideSelfieModule;->updateThumbBackgroudLayout(LQ6/F1;ZIILandroid/graphics/Point;)V

    iput p3, p0, Lcom/android/camera/module/WideSelfieModule;->mLastMoveDirection:I

    invoke-direct {p0, p1, p3}, Lcom/android/camera/module/WideSelfieModule;->updateHorizontalHintText(LQ6/F1;I)V

    return-void

    :cond_a
    :goto_3
    if-eqz v1, :cond_b

    const-string/jumbo p1, "stop_capture_horizontal_out"

    goto :goto_4

    :cond_b
    if-eqz v3, :cond_c

    const-string/jumbo p1, "stop_capture_vertical_out"

    goto :goto_4

    :cond_c
    const-string/jumbo p1, "stop_capture_fill_preview"

    :goto_4
    const-string/jumbo p2, "stop shooting completed = "

    invoke-static {p2, p6}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    new-array p3, v6, [Ljava/lang/Object;

    const-string p4, "WideSelfieModule"

    invoke-static {p4, p2, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v5, v6, p1}, Lcom/android/camera/module/WideSelfieModule;->stopWideSelfieShooting(ZZLjava/lang/String;)V

    return-void
.end method

.method public onNv21Available([BIII)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WideSelfieModule"

    const-string v2, "onNv21Available"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/WideSelfieModule;->startSaveTask([BIII)V

    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/r;->onOrientationChanged(III)V

    iget-boolean p2, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/camera/module/WideSelfieModule;->mRequestStop:Z

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget p2, p0, Lcom/android/camera/module/WideSelfieModule;->mCaptureOrientation:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v1, 0xb4

    if-le p2, v1, :cond_0

    rsub-int p2, p2, 0x168

    :cond_0
    const/16 v1, 0x3c

    if-lt p2, v1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onOrientationChanged stop shooting mCaptureOrientation "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/camera/module/WideSelfieModule;->mCaptureOrientation:I

    const-string v2, ", orientation = "

    const-string v3, ", realTimeOrientation = "

    invoke-static {p2, v1, v2, p1, v3}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "WideSelfieModule"

    invoke-static {p3, p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x1

    const-string/jumbo p2, "stop_capture_rotate_out"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/module/WideSelfieModule;->stopWideSelfieShooting(ZZLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0, p2, p1}, Lcom/android/camera/module/X;->Xk(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public onPreviewSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isTextureExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->T2()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "WideSelfieModule"

    const-string/jumbo v0, "sessionFailed due to surfaceTexture expired, retry"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x33

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/r;->onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lj6/j;->E(I)V

    sget-object p1, Le2/m;->v:[I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreviewUpdate(Z[BIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/module/WideSelfieModule;->checkData([BII)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5a

    invoke-static {p3, p4, v0, p2}, Lcom/xiaomi/gl/texture/Jpeg;->a(III[B)[B

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    invoke-static {p2, p4, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/module/WideSelfieModule;->mActivityRotation:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/module/WideSelfieModule;->mSensorOrientation:I

    rsub-int p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    :goto_0
    const-string p3, "onPreviewUpdate: rotateDegree="

    invoke-static {p1, p3}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array p4, p4, [Ljava/lang/Object;

    const-string v0, "WideSelfieModule"

    invoke-static {v0, p3, p4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lvr/j;->i(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance p2, LA4/f;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1, p5, p6}, LA4/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onRenderRequested()V
    .locals 0

    invoke-static {}, LQ6/F1;->b()LQ6/F1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, LQ6/F1;->requestRender()V

    :cond_0
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

.method public onShineChanged(I)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/16 v0, 0xef

    if-eq p1, v0, :cond_1

    const/16 p0, 0xf6

    if-eq p1, p0, :cond_0

    const-string p0, "onShineChanged configItem error "

    invoke-static {p1, p0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "WideSelfieModule"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/16 p1, 0xd

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

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

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->isDoingAction()Z

    move-result v0

    const-string v2, "WideSelfieModule"

    if-eqz v0, :cond_1

    const-string p0, "onShutterButtonClick return, isDoingAction"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    const-string v0, "onShutterButtonClick"

    invoke-static {v2, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onShutterButtonClick mode = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0, p1}, Lj6/f;->N(I)V

    iget-boolean p1, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->Z0()V

    invoke-static {}, Lk7/K;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, LQ6/V0;->b()LQ6/V0;

    move-result-object p0

    invoke-interface {p0}, LQ6/V0;->on()V

    const-string p0, "onShutterButtonClick return, isLowStorageAtLastPoint"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->playCameraSound(I)V

    const-string p1, "onShutterButtonClick startWideSelfieShooting"

    invoke-static {v2, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->startWideSelfieShooting()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/WideSelfieModule;->mShootingStartTime:J

    return v0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->isShootingTooShort()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p0, "shooting is too short, ignore this click"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    const-string p1, "onShutterButtonClick stopWideSelfieShooting"

    invoke-static {v2, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "stop_capture_on_shutter_button"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/module/WideSelfieModule;->stopWideSelfieShooting(ZZLjava/lang/String;)V

    return v0

    :cond_5
    :goto_0
    return v1
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

.method public onShutterButtonLongClickCancel(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public bridge synthetic onShutterDragging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(IIZ)V
    .locals 0

    iget-object p3, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p3}, Lj6/f;->q()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p3}, Lj6/j;->V()Lj9/a;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->hasCameraException()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p3}, Lj6/j;->V()Lj9/a;

    move-result-object p3

    invoke-virtual {p3}, Lj9/a;->Z()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p3}, Lj6/j;->r()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/r;->handleBackStackFromTapDown(II)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LCs/n;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, LCs/n;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onThermalConstrained()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-super {p0}, Lcom/android/camera/module/r;->onThermalConstrained()V

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->isShootingTooShort()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "shooting is too short, ignore this click"

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "WideSelfieModule"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string/jumbo v2, "stop_capture_on_shutter_button"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/module/WideSelfieModule;->stopWideSelfieShooting(ZZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p1}, Lj6/f;->q()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->isProcessingSaveTask()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->gotoGallery(Z)V

    :cond_1
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

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->keepScreenOnAwhile()V

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

.method public onWideSelfCompleted()V
    .locals 2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "WideSelfieModule"

    const-string v1, "onWideSelfCompleted"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public pausePreview()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string v0, "WideSelfieModule"

    const-string v1, "pausePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

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
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isModeEditing()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_1

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/camera/module/r;->trackKeyShutterEvent(Landroid/view/KeyEvent;ZI)V

    invoke-virtual {p0, p1}, Lcom/android/camera/module/WideSelfieModule;->onShutterButtonClick(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic performKeyLongPress(IZLandroid/view/KeyEvent;Z)V
    .locals 0

    return-void
.end method

.method public registerProtocol()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/module/r;->registerProtocol()V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/q;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/Z0;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object p0

    const-class v0, LQ6/C;

    const-class v1, LQ6/P;

    const-class v2, LQ6/M0;

    const-class v3, LQ6/V0;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp6/b;->d([Ljava/lang/Class;)V

    return-void
.end method

.method public resetScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public resumePreview()V
    .locals 2

    const-string v0, "WideSelfieModule"

    const-string/jumbo v1, "resumePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->p0()I

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lj6/j;->E(I)V

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

.method public bridge synthetic setCaptureTime(Lqh/f;)V
    .locals 0

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->setFrameAvailable(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, LF1/D3;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LF1/D3;->a()LF1/D3;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v0, 0x3

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, LF1/D3;->d([I)V

    :cond_0
    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->isRecording()Z

    move-result p0

    return p0
.end method

.method public startPreview()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->A0()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkDisplayOrientation()V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->N()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v2}, Lj9/h0;->e(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->L0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v2}, Lj9/h0;->j(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->mTargetFocusMode:I

    invoke-virtual {v1, v2}, Lj9/h0;->J(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->resumePreview()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
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

.method public unRegisterProtocol()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/r;->unRegisterProtocol()V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/q;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/Z0;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object p0

    invoke-virtual {p0}, Lp6/b;->c()V

    :cond_0
    return-void
.end method

.method public bridge synthetic updateColorSpace(Lwu/a$k;)V
    .locals 0

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
