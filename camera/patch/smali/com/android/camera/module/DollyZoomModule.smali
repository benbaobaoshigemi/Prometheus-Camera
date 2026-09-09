.class public Lcom/android/camera/module/DollyZoomModule;
.super Lcom/android/camera/module/r;
.source "SourceFile"

# interfaces
.implements Lj9/a$k;
.implements Lru/a;
.implements Lru/p;
.implements LQ6/q;
.implements LQ6/F;


# static fields
.field private static final DURATION_VIDEO_CANCEL_MS:J = 0x12cL

.field public static final DURATION_VIDEO_RECORDING_MS:I = 0x3a98

.field private static final FIXED_AF_DISTANCE:I = 0x46

.field private static final START_OFFSET_MS:J = 0x1c2L

.field private static final START_RECORDING_OFFSET:J = 0xfaL

.field public static final ZOOM_SCALE_FORCE_SAVE:F = 2.0f

.field public static final ZOOM_SCALE_STOP_RECORD:F = 4.0f


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mAlgorithmPreviewSize:Landroid/util/Size;

.field private mContentValues:Landroid/content/ContentValues;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

.field private mFramePushed:Z

.field private mInitRender:Z

.field private mIsFinishProcessing:Z

.field private mIsFinished:Z

.field private mIsRecording:Z

.field private mIsVideoSaveCancel:Z

.field private mIsVideoSaved:Z

.field private mLastBoxState:I

.field private mLastDollyZoomState:I

.field private mLastRecordingState:I

.field private final mLock:Ljava/lang/Object;

.field private mOnResumeTime:J

.field private mPendingStart:Z

.field private mRecordingStartTime:J

.field private mRecordingTime:J

.field private mRenderRect:Landroid/graphics/Rect;

.field private mVideoFile:Lo7/a;

.field private mVideoFileName:Ljava/lang/String;

.field private mVideoFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/r;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DollyZoomModule@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaveCancel:Z

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinishProcessing:Z

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mFramePushed:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/module/DollyZoomModule;->mLastDollyZoomState:I

    iput v1, p0, Lcom/android/camera/module/DollyZoomModule;->mLastRecordingState:I

    iput v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLastBoxState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic De(Lcom/android/camera/module/DollyZoomModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->cancelVideoCountDown()V

    return-void
.end method

.method public static synthetic Fc(Lcom/android/camera/module/DollyZoomModule;Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/DollyZoomModule;->lambda$onInactive$8(Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;)V

    return-void
.end method

.method public static synthetic Mc(Landroid/view/Window;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/DollyZoomModule;->lambda$handleMessage$16(Landroid/view/Window;)V

    return-void
.end method

.method public static bridge synthetic Te(Lcom/android/camera/module/DollyZoomModule;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/DollyZoomModule;->updateRecordingTime(J)V

    return-void
.end method

.method public static synthetic Ua(Lcom/android/camera/module/DollyZoomModule;IFII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/DollyZoomModule;->lambda$onDollyZoomState$1(IFII)V

    return-void
.end method

.method public static synthetic Vb(Lcom/android/camera/module/DollyZoomModule;LQ6/G;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/DollyZoomModule;->lambda$onInactive$7(LQ6/G;)V

    return-void
.end method

.method public static synthetic Wb(Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/DollyZoomModule;->lambda$onNewUriArrived$6(Landroid/net/Uri;)V

    return-void
.end method

.method private cancelVideoCountDown()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cancelVideoCountDown"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->hiddenTopRecordingTime()V

    :cond_0
    return-void
.end method

.method public static synthetic ce(Landroid/view/Window;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/DollyZoomModule;->lambda$handleMessage$15(Landroid/view/Window;)V

    return-void
.end method

.method private checkLastVideoValid()V
    .locals 7

    invoke-static {}, LQ6/G;->b()LQ6/G;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, LQ6/G;->yb()Lo7/a;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lo7/a;->f()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v3

    :try_start_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v5, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v5, "checkLastVideoValid lastTempVideo size = "

    invoke-static {v3, v4, v5}, LHs/a;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-wide/16 v5, 0xa

    cmp-long v2, v3, v5

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v4, " checkLastVideoValid lastTempVideo Valid "

    invoke-static {v4, v2}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/K;

    invoke-direct {v1, v2, v0}, Lcom/android/camera/module/K;-><init>(ZLQ6/G;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, " checkLastVideoValid dollyZoomProcess is null "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic dd(Lcom/android/camera/module/DollyZoomModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->lambda$notifyFirstFrameArrived$14()V

    return-void
.end method

.method private doLaterReleaseIfNeed()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->o3()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/camera/module/X;->Af(Lcom/android/camera/module/W;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic gc(LQ6/n1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/DollyZoomModule;->lambda$startVideoRecording$9(LQ6/n1;)V

    return-void
.end method

.method public static synthetic gd(Lcom/android/camera/module/DollyZoomModule;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/DollyZoomModule;->lambda$setOrientation$11(II)V

    return-void
.end method

.method public static synthetic ge(Lcom/android/camera/module/DollyZoomModule;IIILo7/a;I)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/DollyZoomModule;->lambda$initDollyZoomMode$3(IIIILo7/a;I)V

    return-void
.end method

.method private getContentValue()Landroid/content/ContentValues;
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f141494

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-static {v1, v2}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFileName:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Lk7/K;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFilePath:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    iget-object v2, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_data"

    iget-object v2, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->a()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "resolution"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object p0

    iget-object p0, p0, Lh6/b;->a:Lh6/a;

    invoke-interface {p0}, Lh6/a;->c()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string v1, "longitude"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_1
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "is_pending"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private hiddenTopRecordingTime()V
    .locals 1

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, LQ6/l1;->Vf(I)V

    :cond_0
    return-void
.end method

.method public static synthetic ic(LQ6/l1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/DollyZoomModule;->lambda$onBackPressed$13(LQ6/l1;)V

    return-void
.end method

.method private initDollyZoomMode()V
    .locals 12

    const-string v0, " initDollyZoomMode "

    invoke-static {}, LQ6/G;->b()LQ6/G;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "initDollyZoomMode failed, dollyZoomProcess is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v3}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v7

    invoke-static {}, Lcom/android/camera/data/data/j;->X()I

    move-result v3

    const/4 v4, 0x5

    const/4 v11, 0x1

    if-ne v3, v4, :cond_1

    move v8, v11

    goto :goto_0

    :cond_1
    move v8, v2

    :goto_0
    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v4, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->I3()Z

    move-result v6

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v3}, Lcom/android/camera/module/X;->k8()I

    move-result v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v4, "initDollyZoomMode orientation not ready yet"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    :cond_2
    add-int/lit8 v3, v3, 0x5a

    rem-int/lit16 v10, v3, 0x168

    :try_start_0
    invoke-interface {v1}, LQ6/G;->sb()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, LQ6/G;->yb()Lo7/a;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, LQ6/G;->yb()Lo7/a;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFile:Lo7/a;

    iget-object v1, v1, Lo7/a;->d:Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mContentValues:Landroid/content/ContentValues;

    goto :goto_1

    :catch_0
    move-object v5, p0

    goto :goto_2

    :cond_3
    new-instance v1, Lo7/a;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lo7/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFile:Lo7/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lo7/a;->h(ZLandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->getContentValue()Landroid/content/ContentValues;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mContentValues:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFile:Lo7/a;

    iput-object v1, v3, Lo7/a;->d:Landroid/content/ContentValues;

    invoke-virtual {v3}, Lo7/a;->i()Landroid/net/Uri;

    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFile:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFile:Lo7/a;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    new-instance v4, Lcom/android/camera/module/J;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, p0

    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/camera/module/J;-><init>(Lcom/android/camera/module/DollyZoomModule;IIILo7/a;I)V

    invoke-interface {v0, v4}, Lru/k;->s(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    :goto_2
    iget-object p0, v5, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "initDollyZoomMode set path failed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    iget-object p0, v5, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "initDollyZoomMode filmSizeState:"

    const-string v1, " rotation:"

    invoke-static {v7, v10, v0, v1}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v11, v5, Lcom/android/camera/module/DollyZoomModule;->mPendingStart:Z

    iget-object p0, v5, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    invoke-interface {p0, v5}, Lru/k;->H(Lru/p;)V

    iget-object p0, v5, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    invoke-interface {p0, v5}, Lru/k;->y(Lru/a;)V

    return-void
.end method

.method public static synthetic ke(LQ6/C;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/DollyZoomModule;->lambda$onReviewDoneClicked$10(LQ6/C;)V

    return-void
.end method

.method private static synthetic lambda$checkLastVideoValid$4(ZLQ6/G;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p1}, LQ6/G;->xg()V

    invoke-interface {p1}, LQ6/G;->Jj()V

    return-void

    :cond_0
    const/4 p0, 0x1

    invoke-interface {p1, p0}, LQ6/G;->t0(Z)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$15(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$16(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private synthetic lambda$initDollyZoomMode$3(IIIILo7/a;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-direct {v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    iget-object v2, p0, Lcom/android/camera/module/DollyZoomModule;->mAlgorithmPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/DollyZoomModule;->mAlgorithmPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->a(IIII)V

    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {p1, p3}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->n(I)V

    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {p1, p4}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m(I)V

    invoke-virtual {p5}, Lo7/a;->c()Ljava/io/FileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {p5}, Lo7/a;->c()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->p(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string p2, "initDollyZoomMode fd is null"

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {p0, p6}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->o(I)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$notifyFirstFrameArrived$14()V
    .locals 1

    const/16 v0, 0x5f

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method private static synthetic lambda$onBackPressed$13(LQ6/l1;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f1411f3

    const-string/jumbo v2, "unknow"

    invoke-interface {p0, v0, v1, v2}, LQ6/l1;->Ue(IILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onDollyZoomState$0(LQ6/G;)V
    .locals 1

    iget-boolean p0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-nez p0, :cond_0

    const p0, 0x7f14063f

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, LQ6/G;->c1(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDollyZoomState$1(IFII)V
    .locals 10

    invoke-static {}, LQ6/G;->b()LQ6/G;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, LQ6/G;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v1, p0, Lcom/android/camera/module/DollyZoomModule;->mLastDollyZoomState:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    if-ne p1, v3, :cond_b

    iput-boolean v4, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    iput-boolean v4, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinishProcessing:Z

    iget-object p4, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "onDollyZoomState record video failed"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p4, v1, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    const/4 v6, 0x4

    if-eq v1, v6, :cond_8

    const/4 v6, 0x5

    if-eq v1, v6, :cond_8

    const/4 v6, 0x6

    if-eq v1, v6, :cond_8

    const/4 v6, 0x7

    if-ne v1, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x3

    if-eq v1, v6, :cond_3

    if-ne v1, v3, :cond_b

    :cond_3
    if-ne v1, v6, :cond_4

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->cancelVideoCountDown()V

    :cond_4
    iget v1, p0, Lcom/android/camera/module/DollyZoomModule;->mLastDollyZoomState:I

    if-eq v1, v6, :cond_5

    move v1, v4

    goto :goto_0

    :cond_5
    move v1, v5

    :goto_0
    iget v6, p0, Lcom/android/camera/module/DollyZoomModule;->mLastBoxState:I

    if-eq v6, p4, :cond_7

    if-ne p4, v4, :cond_6

    const v1, 0x7f140644

    invoke-interface {v0, v1, v5}, LQ6/G;->c1(IZ)V

    move v1, v5

    goto :goto_1

    :cond_6
    const v6, 0x7f140640

    invoke-interface {v0, v6, v5}, LQ6/G;->c1(IZ)V

    :goto_1
    iput p4, p0, Lcom/android/camera/module/DollyZoomModule;->mLastBoxState:I

    iget-object p4, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onDollyZoomState mLastBoxState:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/camera/module/DollyZoomModule;->mLastBoxState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p4, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move p4, v4

    move v6, v5

    goto :goto_4

    :cond_8
    :goto_2
    const/high16 p4, 0x40000000    # 2.0f

    cmpl-float p4, p2, p4

    if-lez p4, :cond_9

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->cancelVideoCountDown()V

    move p4, v4

    move v1, v5

    move v6, v1

    goto :goto_4

    :cond_9
    iget-boolean p4, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-eqz p4, :cond_a

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object p4

    invoke-virtual {p4}, LBr/e;->l()V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->cancelVideoCountDown()V

    invoke-interface {v0, v4}, LQ6/G;->t0(Z)V

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->resetAndUnlock3A()V

    iput-boolean v4, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    iput-boolean v4, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinishProcessing:Z

    if-eq p3, v2, :cond_b

    iget-object p4, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LD8/j;

    const/4 v6, 0x3

    invoke-direct {v1, v6, p0, v0}, LD8/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {p4, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v1, v4

    move v6, v1

    move p4, v5

    goto :goto_4

    :cond_b
    :goto_3
    move v1, v4

    move p4, v5

    move v6, p4

    :goto_4
    if-eqz p4, :cond_11

    iget p4, p0, Lcom/android/camera/module/DollyZoomModule;->mLastRecordingState:I

    if-eq p4, p1, :cond_11

    iget-object p4, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onDollyZoomState mLastRecordingState:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/camera/module/DollyZoomModule;->mLastRecordingState:I

    const-string v9, " GetEncoderState:"

    invoke-static {v8, p1, v9, v7}, LO0/o;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {p4, v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p4, p0, Lcom/android/camera/module/DollyZoomModule;->mLastRecordingState:I

    if-nez p4, :cond_10

    if-eq p1, v4, :cond_c

    if-ne p1, v3, :cond_f

    :cond_c
    iget-boolean p2, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaveCancel:Z

    if-nez p2, :cond_e

    if-ne p1, v3, :cond_d

    goto :goto_5

    :cond_d
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->cancelVideoCountDown()V

    invoke-interface {v0, v5}, LQ6/G;->Q(Z)V

    move v1, v5

    goto :goto_6

    :cond_e
    :goto_5
    invoke-interface {v0, v4}, LQ6/G;->t0(Z)V

    iput-boolean v4, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinishProcessing:Z

    :goto_6
    iget-object p2, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v3, "onDollyZoomState mIsVideoSaveCancel:"

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaveCancel:Z

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2, p4, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->resetAndUnlock3A()V

    iput-boolean v4, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    goto :goto_7

    :cond_10
    if-ne p1, v3, :cond_11

    invoke-direct {p0, p2, v0}, Lcom/android/camera/module/DollyZoomModule;->onRecordFailed(FLQ6/G;)V

    move v1, v5

    :cond_11
    :goto_7
    iput p1, p0, Lcom/android/camera/module/DollyZoomModule;->mLastRecordingState:I

    if-eq p3, v2, :cond_12

    if-eqz v1, :cond_12

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string p1, "onDollyZoomState updateCaptureMessage messageId:"

    invoke-static {p3, p1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, p3, v6}, LQ6/G;->c1(IZ)V

    :cond_12
    :goto_8
    return-void
.end method

.method private synthetic lambda$onInactive$7(LQ6/G;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFile:Lo7/a;

    invoke-interface {p1, p0}, LQ6/G;->zi(Lo7/a;)V

    return-void
.end method

.method private synthetic lambda$onInactive$8(Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy DestructRender & DestructMediaEffectCamera start"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->d()V

    invoke-virtual {p1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->c()V

    iput-boolean v3, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy DestructRender & DestructMediaEffectCamera end"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static synthetic lambda$onNewUriArrived$5(Landroid/net/Uri;LQ6/G;)V
    .locals 0

    invoke-interface {p1, p0}, LQ6/G;->b0(Landroid/net/Uri;)V

    return-void
.end method

.method private static lambda$onNewUriArrived$6(Landroid/net/Uri;)V
    .locals 3

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/G;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/x;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, LEs/x;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onRecordFailed$2(LQ6/G;)V
    .locals 1

    iget-boolean p0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-nez p0, :cond_0

    const p0, 0x7f14063f

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, LQ6/G;->c1(IZ)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onReviewDoneClicked$10(LQ6/C;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, LQ6/C;->s3(Lcom/android/camera/fragment/film/FilmItem;Z)V

    return-void
.end method

.method private synthetic lambda$setOrientation$11(II)V
    .locals 3

    const-string v0, "DollyZoomCamera SetRotation orientation:"

    iget-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->o(I)V

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " rotation:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

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

.method private static synthetic lambda$startVideoRecording$9(LQ6/n1;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, LQ6/n1;->Cp([IZ)V

    return-void
.end method

.method public static synthetic nd(Lcom/android/camera/module/DollyZoomModule;LQ6/G;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/DollyZoomModule;->lambda$onDollyZoomState$0(LQ6/G;)V

    return-void
.end method

.method public static synthetic oa(ZLQ6/G;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/DollyZoomModule;->lambda$checkLastVideoValid$4(ZLQ6/G;)V

    return-void
.end method

.method private onDollyZoomState()V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "mDollyZoomCamera is null, onDollyZoomState fail"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->h()I

    move-result v2

    invoke-virtual {v0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->g()D

    move-result-wide v3

    double-to-float v8, v3

    invoke-virtual {v0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->f()I

    move-result v7

    invoke-virtual {v0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->e()I

    move-result v10

    iget v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLastDollyZoomState:I

    const-string v3, " recordingState:"

    const/4 v4, -0x1

    if-eq v0, v2, :cond_1

    const v0, 0x7f14063f

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v5, "onDollyZoomState unknown state:"

    invoke-static {v2, v7, v5, v3}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onDollyZoomState RUN_STATE_EARLY_STOP_BY_ALGO zoomScale:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v4, 0x7f1404ad

    goto/16 :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDollyZoomState RUN_STATE_MOVE_OUT_ZOOM zoomScale:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move v4, v0

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onDollyZoomState RUN_STATE_MOVE_OUT_FRAME zoomScale:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v4, 0x7f140642

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onDollyZoomState RUN_STATE_BAD_ALGO_RESULT zoomScale:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v4, 0x7f140641

    goto/16 :goto_1

    :pswitch_5
    iget-object v4, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDollyZoomState RUN_STATE_NORMAL_END zoomScale:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onDollyZoomState RUN_STATE_RUNNING zoomScale:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v4, 0x7f140640

    goto :goto_1

    :pswitch_7
    iget-object v4, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDollyZoomState RUN_STATE_INITIALIZED zoomScale:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v4, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDollyZoomState RUN_STATE_WAITING zoomScale:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDollyZoomState RUN_STATE_FAILED zoomScale:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iput v2, p0, Lcom/android/camera/module/DollyZoomModule;->mLastDollyZoomState:I

    :goto_2
    move v9, v4

    goto :goto_3

    :cond_1
    iget v2, p0, Lcom/android/camera/module/DollyZoomModule;->mLastRecordingState:I

    if-ne v2, v7, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLastBoxState:I

    if-ne v0, v10, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "onDollyZoomState mLastDollyZoomState"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/camera/module/DollyZoomModule;->mLastDollyZoomState:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLastRecordingState:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera/module/DollyZoomModule;->mLastRecordingState:I

    const-string v6, " mLastBoxState\uff1a"

    invoke-static {v2, v5, v3, v7, v6}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v3, p0, Lcom/android/camera/module/DollyZoomModule;->mLastBoxState:I

    const-string v5, " boxState:"

    invoke-static {v3, v10, v5, v2}, LO0/o;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/camera/module/M;

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/module/M;-><init>(Lcom/android/camera/module/DollyZoomModule;IFII)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onRecordFailed(FLQ6/G;)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p1, 0x0

    invoke-interface {p2, p1}, LQ6/G;->t0(Z)V

    const p1, 0x7f140643

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, LQ6/G;->c1(IZ)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LB9/g;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p2}, LB9/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->resetAndUnlock3A()V

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinishProcessing:Z

    return-void
.end method

.method private onVideoSaveFinish()V
    .locals 6

    invoke-static {}, LQ6/G;->b()LQ6/G;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {v0, v1}, LQ6/G;->d1(Landroid/content/ContentValues;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/camera/jcodec/b$a;

    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/android/camera/jcodec/b;->a(I)[B

    move-result-object v2

    const-string v3, "com.xiaomi.mode_dollyzoom"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/android/camera/jcodec/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v1

    iget-object v1, v1, Lh6/b;->a:Lh6/a;

    invoke-interface {v1}, Lh6/a;->c()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v1

    iget-object v1, v1, Lh6/b;->a:Lh6/a;

    invoke-interface {v1}, Lh6/a;->f()Landroid/location/Location;

    move-result-object v1

    :goto_0
    invoke-static {}, LQg/e;->b()I

    move-result v2

    new-instance v3, Lk7/P$a;

    invoke-direct {v3}, Lk7/P$a;-><init>()V

    iget-object v5, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFile:Lo7/a;

    invoke-virtual {v5}, Lo7/a;->e()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v3, Lk7/b$a;->a:Landroid/net/Uri;

    iput-object v4, v3, Lk7/P$a;->l:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/module/DollyZoomModule;->mContentValues:Landroid/content/ContentValues;

    iput-object v5, v3, Lk7/P$a;->n:Landroid/content/ContentValues;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lk7/P$a;->o:Z

    const/4 v5, 0x0

    iput-boolean v5, v3, Lk7/P$a;->p:Z

    iput-object v1, v3, Lk7/b$a;->j:Landroid/location/Location;

    iput v2, v3, Lk7/P$a;->q:I

    iput-object v4, v3, Lk7/P$a;->m:Ljava/lang/String;

    iput-object v0, v3, Lk7/P$a;->r:Ljava/util/List;

    invoke-virtual {v3}, Lk7/P$a;->a()Lk7/P;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object p0

    invoke-virtual {p0, v0, v5}, Lk7/i;->u(Lk7/P;Z)Landroid/net/Uri;

    return-void
.end method

.method private previewWhenSessionSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lj6/j;->E(I)V

    sget-object v0, Le2/m;->m:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method private resetAndUnlock3A()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "resetAndUnlock3A"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lj9/h0;->e(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->L0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lj9/h0;->j(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->updateFocusMode()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->p0()I

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepScreenOnAwhile()V

    return-void
.end method

.method private resumePreviewIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "resumePreviewIfNeeded"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinished:Z

    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->resumePreview()V

    return-void
.end method

.method private saveVideo()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->onVideoSaveFinish()V

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "prepare save video"

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic se(Landroid/net/Uri;LQ6/G;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/DollyZoomModule;->lambda$onNewUriArrived$5(Landroid/net/Uri;LQ6/G;)V

    return-void
.end method

.method private setOrientation(II)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget v0, v0, Lj6/a;->c:I

    if-eq v0, p1, :cond_1

    add-int/lit8 v0, p1, 0x5a

    rem-int/lit16 v0, v0, 0x168

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/L;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/module/L;-><init>(Lcom/android/camera/module/DollyZoomModule;II)V

    invoke-interface {v1, v2}, Lru/k;->s(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iput p1, v0, Lj6/a;->c:I

    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkActivityOrientation()V

    iget-object p1, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p1, Lj6/a;

    iget v0, p1, Lj6/a;->b:I

    if-eq v0, p2, :cond_2

    iput p2, p1, Lj6/a;->b:I

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->setOrientationParameter()V

    :cond_2
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

    new-instance v1, LDr/b;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, LDr/b;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_2
    :goto_0
    return-void
.end method

.method private startCountDown()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "startCountDown"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->cancelVideoCountDown()V

    new-instance v0, Lcom/android/camera/module/DollyZoomModule$a;

    invoke-direct {v0, p0}, Lcom/android/camera/module/DollyZoomModule$a;-><init>(Lcom/android/camera/module/DollyZoomModule;)V

    iput-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/DollyZoomModule;->mRecordingStartTime:J

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private startPreviewSession()V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startPreview: camera has been closed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj9/h0;->R(Landroid/util/Size;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/DollyZoomModule;->mAlgorithmPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v2}, Lj9/a;->u0(Landroid/util/Size;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-virtual {v0}, Lj9/h0;->g0()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    iget-object v2, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v2}, Lcom/android/camera/module/X;->v()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lj6/f;->J(J)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->getSurfaceTexture()LEu/a;

    move-result-object v0

    invoke-virtual {v0}, LEu/a;->a()Landroid/view/Surface;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lj9/a;->g1(Landroid/view/Surface;ILandroid/view/Surface;IZLj9/a$d;)V

    iput-boolean v1, v8, Lcom/android/camera/module/DollyZoomModule;->mFramePushed:Z

    return-void
.end method

.method private startVideoRecording()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startVideoRecording start"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    invoke-static {}, LQ6/G;->b()LQ6/G;

    move-result-object v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepScreenOn()V

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object v3

    invoke-virtual {v3}, LBr/e;->l()V

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, LAg/b;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, LQ6/l1;->z(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-interface {v0, v3}, LQ6/l1;->Vf(I)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LKh/c;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, LKh/c;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {v1}, LQ6/G;->f()V

    invoke-interface {v1}, LQ6/G;->d()V

    iget-object v3, p0, Lcom/android/camera/module/DollyZoomModule;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->q()V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->startCountDown()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v2, p0, Lcom/android/camera/module/DollyZoomModule;->mLastBoxState:I

    iput-boolean v2, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaveCancel:Z

    iput-boolean v2, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    iput-boolean v2, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinishProcessing:Z

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVideoRecording end"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startVideoRecording fail, topAlert="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " dollyZoomProcess="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private stopVideoRecording()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopVideoRecording start"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->cancelVideoCountDown()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "skip stopVideoRecording & remove startVideoRecording"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, LQ6/G;->b()LQ6/G;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, LQ6/G;->e()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepScreenOnAwhile()V

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->r()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->playCameraSound(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/camera/module/DollyZoomModule;->mRecordingStartTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x12c

    cmp-long v0, v0, v3

    if-gez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaveCancel:Z

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stopVideoRecording start, mIsVideoSaveCancel:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaveCancel:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic ub(Lcom/android/camera/module/DollyZoomModule;LQ6/G;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/DollyZoomModule;->lambda$onRecordFailed$2(LQ6/G;)V

    return-void
.end method

.method private updateDeviceOrientation()V
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

.method private updateFpsRange()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v0}, Lj9/h0;->K(Landroid/util/Range;)V

    return-void
.end method

.method private updateLiveRelated()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lj9/a;->e1(Lj9/a$k;LGs/j;)V

    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget v1, v0, Lj9/e;->b:I

    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v2}, Lj9/e;->j0(ILjava/lang/Class;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Lj6/j;->J(Landroid/util/Size;)V

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updatePictureAndPreviewSize previewSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xf00

    const/16 v3, 0x870

    invoke-direct {v0, v1, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mAlgorithmPreviewSize:Landroid/util/Size;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lj6/j;->e(Landroid/util/Size;)V

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updatePictureAndPreviewSize mAlgorithmPreviewSize "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/module/DollyZoomModule;->mAlgorithmPreviewSize:Landroid/util/Size;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

.method private updateRecordingTime(J)V
    .locals 2

    const-wide/16 v0, 0x1f4

    add-long/2addr p1, v0

    invoke-static {p1, p2}, LAg/b;->b(J)Ljava/lang/String;

    move-result-object v0

    iput-wide p1, p0, Lcom/android/camera/module/DollyZoomModule;->mRecordingTime:J

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, LQ6/l1;->z(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateVideoStabilization()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj9/h0;->F(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lj9/h0;->E(Z)V

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateVideoStabilization EIS enable: true"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic xd(Lcom/android/camera/module/DollyZoomModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->lambda$setOrientationParameter$12()V

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
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/16 v2, 0x47

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "checkShutterCondition: isFrameAvailable = false"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    if-nez v2, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "checkShutterCondition: The video has not been saved"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/DollyZoomModule;->mRecordingStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "checkShutterCondition: Stop recording too quickly"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkShutterCondition: ignoreTouchEvent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIgnoreTouchEvent()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_5
    invoke-static {}, Lk7/K;->p()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "checkShutterCondition: low storage"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_6
    invoke-static {}, LQ6/G;->b()LQ6/G;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, LQ6/G;->C()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {}, LQ6/h;->b()LQ6/h;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-interface {p0}, LQ6/h;->a5()V

    :cond_8
    const/4 p0, 0x1

    return p0

    :cond_9
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "checkShutterCondition: can\'t snap"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkShutterCondition: mInitRender:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mDollyZoomCamera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_b
    :goto_2
    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "checkShutterCondition: MSG_WAIT_SHUTTER_SOUND_FINISH"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public bridge synthetic checkSnapClickValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public closeCamera()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "closeCamera E"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    invoke-interface {v0, v2}, Lru/k;->y(Lru/a;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    invoke-interface {v0}, Lru/k;->requestRender()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lj9/a;->E0(Lj9/a$g;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iput-object v2, v0, Lj9/a;->b:LF1/V2;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lj9/a;->o1(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, v2}, Lj6/j;->x(Lj9/a;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0, v1}, Lu6/q;->E(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0}, Lu6/q;->D()V

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "closeCamera X"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public consumePreference(I)Z
    .locals 0

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
    invoke-virtual {p0, p0}, Lcom/android/camera/module/r;->initializeMetaDataCallback(Lcom/android/camera/module/r;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateThermalLevel()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateModuleRelated()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->updateLiveRelated()V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->updateDeviceOrientation()V

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->updateVideoStabilization()V

    goto :goto_0

    :sswitch_8
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->Q0()V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/r;->focusCenter()V

    goto :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->updateFpsRange()V

    goto :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->updateFocusMode()V

    goto :goto_0

    :sswitch_c
    invoke-static {}, Lcom/android/camera/data/data/w;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updateAntiBanding(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_d
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lj6/j;->D0(Z)V

    goto :goto_0

    :sswitch_e
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->updatePictureAndPreviewSize()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_e
        0x3 -> :sswitch_d
        0x9 -> :sswitch_c
        0xe -> :sswitch_b
        0x13 -> :sswitch_a
        0x19 -> :sswitch_9
        0x1d -> :sswitch_8
        0x1f -> :sswitch_7
        0x23 -> :sswitch_6
        0x36 -> :sswitch_5
        0x37 -> :sswitch_4
        0x42 -> :sswitch_3
        0x5f -> :sswitch_2
        0x8b -> :sswitch_1
        0xcafe -> :sswitch_0
    .end sparse-switch
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

.method public bridge synthetic getModuleDeviceParam()Ly3/v;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProcessorType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSavePath = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFile:Lo7/a;

    invoke-virtual {p0}, Lo7/a;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSnapCondition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handleMessage(ILandroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/16 v1, 0x9

    if-eq p1, v1, :cond_6

    const/16 v1, 0x11

    if-eq p1, v1, :cond_3

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x33

    if-eq p1, v0, :cond_1

    const/16 v0, 0x47

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->handleMessage(ILandroid/os/Message;)Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->startVideoRecording()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->onCameraOpenedFail()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->setOrientationParameter()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getWindowOpt()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LF1/r1;

    const/16 v1, 0xd

    invoke-direct {p2, v1}, LF1/r1;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getScreenDelay()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkActivityOrientation()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/android/camera/module/DollyZoomModule;->mOnResumeTime:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x1388

    cmp-long p1, p1, v2

    if-gez p1, :cond_6

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getWindowOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LC3/f;

    const/16 p2, 0xb

    invoke-direct {p1, p2}, LC3/f;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isDoingAction()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->x0()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

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

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->r()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPurePreview()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRecording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    return p0
.end method

.method public bridge synthetic isRecordingPaused()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSelectingCapturedResult()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

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

    const/4 p0, 0x0

    return p0
.end method

.method public judgeTapableRectByUiStyle()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
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

    new-instance v0, LAs/h;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, LAs/h;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public onActionStop()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/module/r;->onActionStop()V

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHostStopAndNotifyActionStop "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->stopVideoRecording()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->resumePreviewIfNeeded()V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->doLaterReleaseIfNeed()V

    return-void
.end method

.method public onActive()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/r;->onActive()V

    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->onCameraOpened()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LF1/i4;->r(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepScreenOnAwhile()V

    return-void
.end method

.method public bridge synthetic onActivityResult(Lcom/android/camera/module/X;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    const/4 v1, 0x1

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

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "onBackPressed, press again to stop recording"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LB9/c;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, LB9/c;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->stopVideoRecording()V

    :goto_0
    return v1

    :cond_1
    invoke-static {}, LQ6/G;->b()LQ6/G;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, LQ6/G;->onBackPressed()V

    return v1

    :cond_2
    invoke-super {p0}, Lcom/android/camera/module/r;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onCameraOpened()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->initializeFocusManager()V

    sget-object v0, Le2/m;->j:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->startPreviewSession()V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->checkLastVideoValid()V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->initDollyZoomMode()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/DollyZoomModule;->mOnResumeTime:J

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

.method public onCancelClicked()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->resetAndUnlock3A()V

    return-void
.end method

.method public bridge synthetic onDrawBlackFrameChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZ)Z
    .locals 6

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/android/camera/module/DollyZoomModule;->mRenderRect:Landroid/graphics/Rect;

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean p3, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    const/4 p4, 0x1

    if-nez p3, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string p3, "onDrawFrame InitRender start"

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {p1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->b()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->mRenderRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, LK2/j;->f()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->i(IIIIZ)V

    .line 7
    iput-boolean p4, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onDrawFrame InitRender end mInitRender = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p3, p2, [Ljava/lang/Object;

    invoke-static {p1, p0, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    .line 9
    :cond_1
    iget-boolean p3, p0, Lcom/android/camera/module/DollyZoomModule;->mFramePushed:Z

    if-nez p3, :cond_2

    .line 10
    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string p1, "onDrawFrame failed! preview frame not pushed"

    new-array p3, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->l()V

    return p4

    .line 12
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "mDollyZoomCamera or mRenderRect is null: mDollyZoomCamera="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", mRenderRect="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->mRenderRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p3, p2, [Ljava/lang/Object;

    invoke-static {p1, p0, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2
.end method

.method public bridge synthetic onDrawFrame(Lia/g;[FLandroid/graphics/Rect;Lia/f;Landroid/util/Size;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public onExitClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onExitClicked"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->cancelVideoCountDown()V

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFile:Lo7/a;

    invoke-virtual {p0}, Lo7/a;->a()V

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
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFragmentResume, cameraState = "

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

    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mPendingStart:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/camera/module/DollyZoomModule;->mPendingStart:Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->resumePreview()V

    :cond_1
    return-void
.end method

.method public onGuideClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onGuideClicked"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mPendingStart:Z

    return-void
.end method

.method public onInactive()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onInactive"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/module/r;->onInactive()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0}, Lu6/q;->a()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    invoke-virtual {v0}, LF1/i4;->k()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->resetScreenOn()V

    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->closeCamera()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v2, LQ6/G;

    invoke-virtual {v0, v2}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/android/camera/module/N;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/N;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/android/camera/module/j;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/j;-><init>(Lcom/android/camera/module/r;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    invoke-virtual {v0, v1}, LF1/i4;->r(Z)V

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy mDollyZoomCamera will be destructed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v1

    new-instance v2, LV9/O;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0, v0}, LV9/O;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lru/k;->s(Ljava/lang/Runnable;)V

    :cond_3
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
    invoke-static {}, LQ6/G;->b()LQ6/G;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, LQ6/G;->C()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
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

    const/16 v4, 0x57

    if-eq p1, v4, :cond_4

    if-eq p1, v0, :cond_4

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

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/android/camera/module/DollyZoomModule;->performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V

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

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->isExternal()Z

    move-result v1

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

    :cond_9
    :goto_3
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LQ6/h;->b()LQ6/h;

    move-result-object v0

    invoke-interface {v0}, LQ6/h;->Y3()Z

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

.method public onNewUriArrived(Landroid/net/Uri;ZLjava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNewUriArrived isAlive:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v2}, Lj6/f;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mHandler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/r;->onNewUriArrived(Landroid/net/Uri;ZLjava/lang/String;Z)V

    iget-object p2, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p2}, Lj6/f;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, LDr/e;

    const/4 p3, 0x5

    invoke-direct {p2, p1, p3}, LDr/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/DollyZoomModule;->setOrientation(II)V

    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lj9/a;I)Z
    .locals 2

    const/4 p2, 0x0

    const/4 p3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "mDollyZoomCamera is null, PushExtraYAndUVFrame fail"

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {v1, p1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->j(Landroid/media/Image;)V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->onDollyZoomState()V

    iput-boolean p3, p0, Lcom/android/camera/module/DollyZoomModule;->mFramePushed:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lru/k;->requestRender()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    return p3

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addPreviewFrame fail, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return p3
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

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "sessionFailed due to surfaceTexture expired, retry"

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->previewWhenSessionSuccess()V

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
    .locals 2

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE4/v;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LE4/v;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSaveClicked()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->saveVideo()V

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
    .locals 7

    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->checkShutterCondition()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0, p1}, Lj6/f;->N(I)V

    iget-boolean p1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v0, 0x47

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, LF1/D3;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->playCameraSound(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "onShutterButtonClick startVideoRecording"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->startVideoRecording()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "onShutterButtonClick stopVideoRecording"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->stopVideoRecording()V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->N()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    xor-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lj9/h0;->e(Z)V

    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->L0()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    xor-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lj9/h0;->j(Z)V

    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, LF1/L1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LF1/L1;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, LC3/k;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, LC3/k;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onShutterButtonClick mIsRecording:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    const-string v6, " isCAF:"

    invoke-static {v4, v5, v6, v2}, LF1/B2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-nez v1, :cond_5

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lj9/h0;->J(I)V

    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    invoke-virtual {p1}, Lj9/a;->p0()I

    :cond_6
    iget-boolean p1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    return v0
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

.method public onStopClicked()V
    .locals 2

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object v0

    invoke-virtual {v0}, LBr/e;->l()V

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onStopClicked"

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getDisplayRotation()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, LK2/e;->k()Landroid/util/Size;

    move-result-object v1

    invoke-static {p1, v0, v1}, LK2/e;->G(ILandroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mRenderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mRenderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mRenderRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Rect;->top:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string p2, "onSurfaceChanged"

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

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

.method public onThermalConstrained()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-super {p0}, Lcom/android/camera/module/r;->onThermalConstrained()V

    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->onReviewCancelClicked()V

    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->gotoGallery(Z)V

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
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isBlockSnap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0}, Lj6/f;->b()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onWaitingFocusFinishedFailed()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public pausePreview()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "pausePreview"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->j0()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinished:Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, v1}, Lj6/j;->E(I)V

    return-void
.end method

.method public performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V
    .locals 0

    iget-object p2, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p2}, Lj6/f;->q()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->x0()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/camera/module/r;->trackKeyShutterEvent(Landroid/view/KeyEvent;ZI)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p2}, Lcom/android/camera/module/DollyZoomModule;->onShutterButtonFocus(ZI)V

    invoke-virtual {p0, p1}, Lcom/android/camera/module/DollyZoomModule;->onShutterButtonClick(I)Z

    return-void

    :cond_1
    invoke-virtual {p0, p2, p2}, Lcom/android/camera/module/DollyZoomModule;->onShutterButtonFocus(ZI)V

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
    .locals 3

    invoke-super {p0}, Lcom/android/camera/module/r;->registerProtocol()V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/q;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/Z0;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/K;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/F;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object p0

    const-class v0, LQ6/V0;

    const-class v1, LQ6/C;

    const-class v2, LQ6/P;

    filled-new-array {v1, v2, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp6/b;->d([Ljava/lang/Class;)V

    return-void
.end method

.method public releaseRender()V
    .locals 0

    return-void
.end method

.method public resumePreview()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "resumePreview"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj9/a;->p0()I

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lj6/j;->E(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setCaptureTime(Lqh/f;)V
    .locals 0

    return-void
.end method

.method public setFinishProcessingState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinishProcessing:Z

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->setFrameAvailable(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->resumePreviewIfNeeded()V

    :cond_0
    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinished:Z

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

.method public unRegisterModulePersistProtocol()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/module/r;->unRegisterModulePersistProtocol()V

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "unRegisterModulePersistProtocol"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallbackOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE4/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LE4/a;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/g;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LEs/g;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

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

    const-class v1, LQ6/K;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/F;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object p0

    invoke-virtual {p0}, Lp6/b;->c()V

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
