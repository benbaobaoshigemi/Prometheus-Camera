.class public abstract Lcom/android/camera/module/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/module/interceptor/base/h;
.implements LQ6/Z0;
.implements Lcom/android/camera/module/W;
.implements Lj6/i;
.implements Lj6/h;
.implements Lu6/p$b;
.implements Lq8/A;
.implements Lj9/a$c;
.implements Lj9/a$d;
.implements Lj9/a$l;
.implements LQ6/K;
.implements Landroidx/lifecycle/x;
.implements LQ6/l0;
.implements Lr6/n0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/r$e;,
        Lcom/android/camera/module/r$d;
    }
.end annotation


# static fields
.field public static final CAPTURE_DURATION_THRESHOLD:J = 0x2ee0L

.field protected static final DEBUG:Z

.field private static final GRIP_RING_SCROLL_DELAY:I = 0xc8

.field protected static final MANUALLY_FOCUS_DISTANCE_GEAR:I = 0xa

.field private static final SCREEN_DELAY:I = 0xea60

.field private static final SCREEN_DELAY_KEYGUARD:I = 0x7530

.field protected static final SCREEN_ORIENTATION_LANDSCAPE:I = 0x0

.field private static final SECOND_SCREEN_SCREEN_DELAY:I = 0x1adb0

.field private static final TAG:Ljava/lang/String; = "BaseModule"

.field private static final TASK_ID_UPDATE_FACE_VIEW:Ljava/lang/String; = "update_face_view"


# instance fields
.field private volatile isNeedResetScreenOn:Z

.field protected mApertureManager:LV1/f;

.field protected mAppStateMgr:Lj6/b;

.field protected mAsdInterceptorChain:Lcom/android/camera/module/interceptor/base/a;

.field protected mAsdInterceptorChainDisabled:Z

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mBroadcastIntent:Landroid/content/Intent;

.field protected mCallback:Lcom/android/camera/module/X;

.field protected mCameraApp:LW1/a;

.field protected mCameraManager:Lj6/j;

.field protected mCameraSetting:LO6/a;

.field private mCurrentLockScene:Ljava/lang/String;

.field private mDialog:Lmiuix/appcompat/app/h;

.field protected mDoubleTapedTime:J

.field protected mExposureModeManager:LV1/g;

.field private mFirstFrameArrived:Z

.field protected mFlashAsdManager:Lj6/g;

.field protected final mHandler:Landroid/os/Handler;

.field public mInStartingFocusRecording:Z

.field private mInitSaliencyCheckerDisposable:Lio/reactivex/disposables/b;

.field protected mIsScreenOrientationLocked:Z

.field private mIsSendFaceViewRect:Z

.field private final mLifecycleRegistry:Landroidx/lifecycle/y;

.field private final mLocationReceivedListener:Lh6/b$a;

.field private mMessageId:I

.field private final mModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

.field protected mModuleDevice:Ly3/t;

.field protected mModuleIndex:I

.field protected mModuleStateMgr:Lj6/f;

.field protected mMutexModePicker:LF1/E3;

.field protected mOperatingMode:I

.field protected final mPendingTasks:Lvr/O;

.field protected mTimerBurst:LQ6/j1;

.field private mTitleId:I

.field protected final mTrackInfo:Lo8/a;

.field private mUpdateWorkThreadDisposable:Lio/reactivex/disposables/b;

.field private mUpdateWorkThreadEmitter:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "[I>;"
        }
    .end annotation
.end field

.field protected mZoomManager:Lf9/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/camera/log/LogUtil;->isDebugOsBuild()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/r;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/r$e;

    invoke-direct {v2, p0}, Lcom/android/camera/module/r$e;-><init>(Lcom/android/camera/module/r;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v0, Lo8/a;

    invoke-direct {v0}, Lo8/a;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/r;->mTrackInfo:Lo8/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/r;->mAsdInterceptorChainDisabled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/r;->mCurrentLockScene:Ljava/lang/String;

    new-instance v1, Landroidx/lifecycle/y;

    invoke-direct {v1, p0}, Landroidx/lifecycle/y;-><init>(Landroidx/lifecycle/x;)V

    iput-object v1, p0, Lcom/android/camera/module/r;->mLifecycleRegistry:Landroidx/lifecycle/y;

    new-instance v1, Lvr/O;

    invoke-direct {v1}, Lvr/O;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/r;->mPendingTasks:Lvr/O;

    iput-boolean v0, p0, Lcom/android/camera/module/r;->isNeedResetScreenOn:Z

    iput-boolean v0, p0, Lcom/android/camera/module/r;->mIsScreenOrientationLocked:Z

    new-instance v0, Lcom/android/camera/module/r$d;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/android/camera/module/r$d;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    new-instance v0, Lcom/android/camera/module/r$c;

    invoke-direct {v0, p0}, Lcom/android/camera/module/r$c;-><init>(Lcom/android/camera/module/r;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mLocationReceivedListener:Lh6/b$a;

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LW1/a;

    invoke-virtual {v0, v1}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object v1

    check-cast v1, LW1/a;

    iput-object v1, p0, Lcom/android/camera/module/r;->mCameraApp:LW1/a;

    const-class v1, LO6/a;

    invoke-virtual {v0, v1}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object v0

    check-cast v0, LO6/a;

    iput-object v0, p0, Lcom/android/camera/module/r;->mCameraSetting:LO6/a;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->createTimeBurst()LQ6/j1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->createModuleStateManager()Lj6/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->createCameraManager()Lj6/j;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    new-instance v0, Lj6/a;

    invoke-direct {v0}, Lj6/a;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->createFlashAsdManager()Lj6/g;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/r;->mFlashAsdManager:Lj6/g;

    return-void
.end method

.method public static synthetic D6(Lcom/android/camera/module/X;)Landroid/app/Activity;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$getDisplayRotation$14(Lcom/android/camera/module/X;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E9(Lcom/android/camera/module/r;LQ6/t0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/r;->lambda$configFaceDetection$38(LQ6/t0;)V

    return-void
.end method

.method public static synthetic F3(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$onKeyDown$8(LQ6/t0;)V

    return-void
.end method

.method public static synthetic F5(Lcom/android/camera/module/r;LQ6/t0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/r;->lambda$notifyFirstFrameArrived$24(LQ6/t0;)V

    return-void
.end method

.method public static synthetic F7([Landroid/graphics/Rect;LQ6/t0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/r;->lambda$onDoubleTapStartTrackFocus$15([Landroid/graphics/Rect;LQ6/t0;)V

    return-void
.end method

.method public static synthetic G1(Lcom/android/camera/module/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/r;->lambda$release$6()V

    return-void
.end method

.method public static synthetic G2(Lcom/android/camera/module/r;Lj9/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/r;->lambda$updateFocusDistance$37(Lj9/a;)V

    return-void
.end method

.method public static synthetic I7()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/r;->lambda$init$4()V

    return-void
.end method

.method public static synthetic L(Lcom/android/camera/module/r;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/r;->updateParameters([I)V

    return-void
.end method

.method public static synthetic L4(ILQ6/r1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/r;->lambda$onSATMasterIdChanged$45(ILQ6/r1;)V

    return-void
.end method

.method public static synthetic P0(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$stopFaceDetection$41(LQ6/t0;)V

    return-void
.end method

.method public static synthetic Q5(LQ6/E0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$setFrameAvailable$2(LQ6/E0;)V

    return-void
.end method

.method public static synthetic R1(Landroidx/fragment/app/l;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$exitAutoHibernation$27(Landroidx/fragment/app/l;)Z

    move-result p0

    return p0
.end method

.method public static synthetic R4(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$startFaceDetection$39(LQ6/t0;)V

    return-void
.end method

.method public static synthetic S0(ZLcom/android/camera/module/X;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/r;->lambda$gotoGallery$34(ZLcom/android/camera/module/X;)V

    return-void
.end method

.method public static synthetic T2(Lcom/android/camera/module/r;[Landroid/graphics/Rect;Lj9/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/r;->lambda$onDoubleTapStartTrackFocus$16([Landroid/graphics/Rect;Lj9/a;)V

    return-void
.end method

.method public static synthetic T8(Lcom/android/camera/module/r;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/r;->lambda$stopFaceDetection$42(Z)V

    return-void
.end method

.method public static synthetic V3(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$onPreviewMetaDataUpdate$18(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static synthetic X(Lcom/android/camera/module/X;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$onCameraOpenedFail$17(Lcom/android/camera/module/X;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X1(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$onActive$7(LQ6/t0;)V

    return-void
.end method

.method public static synthetic a0(Lcom/android/camera/module/r;LQ6/t0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/r;->lambda$setFrameAvailable$0(LQ6/t0;)V

    return-void
.end method

.method public static synthetic aa()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/r;->lambda$exitAutoHibernation$30()V

    return-void
.end method

.method public static synthetic b5(Lcom/android/camera/module/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/r;->lambda$setFrameAvailable$1()V

    return-void
.end method

.method private checkScreenOrientation(I)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    invoke-static {}, LK2/e;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/camera/module/X;->qg()LY2/o;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->supportScreenOrientation(I)I

    move-result p0

    invoke-virtual {v0, p0}, LY2/o;->b(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private configFaceDetection()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->needFaceDetection()Z

    move-result v0

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LE3/g;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, LE3/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->O()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/r;->startFaceDetection()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->stopFaceDetection(Z)V

    :cond_1
    return-void
.end method

.method private createUpdateEmitter(Lio/reactivex/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "[I>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lio/reactivex/r;->serialize()Lio/reactivex/internal/operators/observable/d$b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/r;->mUpdateWorkThreadEmitter:Lio/reactivex/r;

    return-void
.end method

.method public static synthetic d7(ILandroid/view/KeyEvent;LQ6/E0;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/camera/module/r;->lambda$onKeyDown$9(ILandroid/view/KeyEvent;LQ6/E0;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private dumpSaliencyBitmap([BII)V
    .locals 5

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {}, LQg/f;->i()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseModule"

    if-nez p1, :cond_0

    const-string p0, "onPreviewPixelsRead dump skipped: dump dir unavailable"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/SaliencyCheck_"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    const-string v2, ".jpg"

    invoke-static {v4, p2, p1, p3, v2}, LS1/h;->c(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lvr/j;->k(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const-string p0, "onPreviewPixelsRead dump: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f8(Lcom/android/camera/module/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/r;->lambda$enterAutoHibernation$26()V

    return-void
.end method

.method public static synthetic g5(Lcom/android/camera/module/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/r;->lambda$init$5()V

    return-void
.end method

.method public static synthetic g7()V
    .locals 0

    invoke-static {}, Lcom/android/camera/module/r;->lambda$setFrameAvailable$3()V

    return-void
.end method

.method public static synthetic g9(Lcom/android/camera/module/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/r;->lambda$exitAutoHibernation$29()V

    return-void
.end method

.method private genFaceDetectionParams()Lr6/J$a;
    .locals 3

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/v;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/v;

    iget-boolean v0, v0, Lv2/v;->b:Z

    new-instance v1, Lr6/J$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->O()Z

    move-result v2

    iput-boolean v2, v1, Lr6/J$a;->a:Z

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget-object v2, v2, Lu2/Q;->j:Lu2/H;

    invoke-virtual {v2}, Lu2/H;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActualCameraId()I

    move-result p0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->k()I

    move-result v2

    if-eq p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v1, Lr6/J$a;->b:Z

    iput-boolean v0, v1, Lr6/J$a;->c:Z

    return-object v1
.end method

.method private getInitOrientation()I
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    invoke-static {}, LK2/e;->E()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, LK2/e;->h(I)I

    move-result p0

    invoke-static {p0}, LK2/e;->l(I)I

    move-result p0

    return p0
.end method

.method public static synthetic h0(Landroid/view/KeyEvent;LQ6/L;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/r;->lambda$parseKeyCameraTriggerMode$10(Landroid/view/KeyEvent;LQ6/L;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h5(LQ6/C;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$updateSmartScene$36(LQ6/C;)V

    return-void
.end method

.method private handleSatFallback(I[I)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSatFallbackEnable"
        type = 0x2
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p2, v2

    const/16 v4, 0x18

    if-ne v4, v3, :cond_1

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->u0()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->I0()F

    move-result p2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget v0, v0, Lj9/i0;->c0:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v0, 0x3a83126f    # 0.001f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->I0()F

    move-result p2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget v0, v0, Lj9/i0;->c0:F

    invoke-virtual {p0, p2, v0}, Lcom/android/camera/module/r;->maySwitchCameraLens(FF)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    iget v0, v0, Lj9/i0;->c0:F

    invoke-interface {p2, v0}, Lj6/j;->h(F)V

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lj6/j;->N0(I)V

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2, v1}, Lj6/j;->v0(Z)V

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2, p1}, Lj6/j;->n(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x3c

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "updateParameters: lastFallbackRequestId = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->J0()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "BaseModule"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private handleZoomingIn(FF)Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSatFallbackEnable"
        type = 0x2
    .end annotation

    invoke-static {}, Lur/i;->h()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, p0

    if-gez v0, :cond_1

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, LJe/c;->o:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_2

    const p0, 0x406ccccd    # 3.7f

    cmpg-float p1, p1, p0

    if-gez p1, :cond_2

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private handleZoomingOut(FF)Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSatFallbackEnable"
        type = 0x2
    .end annotation

    invoke-static {}, Lur/i;->h()F

    move-result p0

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, LJe/c;->o:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x406ccccd    # 3.7f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    cmpl-float v0, p1, p0

    if-ltz v0, :cond_2

    cmpg-float p0, p2, p0

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p0

    if-ltz p1, :cond_3

    cmpg-float p0, p2, p0

    if-gez p0, :cond_3

    :goto_1
    return v3

    :cond_3
    return v2
.end method

.method public static synthetic i8(Lcom/android/camera/module/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/r;->lambda$startFaceDetection$40()V

    return-void
.end method

.method private isInTapableBackRect(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->l()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->judgeTapableRectByUiStyle()Z

    move-result p0

    invoke-static {v0, p0}, Lwz/d;->u(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private isManualFocusDisabled()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/module/Y;->n(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe5

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    const-class v0, Lr2/I0;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/I0;

    invoke-virtual {p0}, Lr2/I0;->b()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/Z;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/Z;

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, p0}, Lr2/Z;->isSwitchOn(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isSupportTrackFromZoom()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->a1()F

    move-result p0

    sget-boolean v0, LJe/d;->i:Z

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, p0, v1

    if-gtz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    const/high16 v0, 0x420c0000    # 35.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isTrackFocusOn()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportTrackFocus"
        type = 0x2
    .end annotation

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/w;->A0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic k5(Landroidx/fragment/app/l;)Lx3/a;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$exitAutoHibernation$28(Landroidx/fragment/app/l;)Lx3/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k8(Lcom/android/camera/module/r;IILandroidx/fragment/app/l;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/r;->lambda$showConfirmMessage$22(IILandroidx/fragment/app/l;)V

    return-void
.end method

.method public static synthetic l0(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$onKeyUp$11(LQ6/t0;)V

    return-void
.end method

.method private static synthetic lambda$beforeGotoGallery$35(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/t0;->lj(I)V

    return-void
.end method

.method private static synthetic lambda$checkDisplayOrientation$13(LQ6/t0;)V
    .locals 0

    invoke-interface {p0}, LQ6/t0;->x6()V

    return-void
.end method

.method private synthetic lambda$clearFaceView$43()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/r;->updateFaceView(ZZ)V

    return-void
.end method

.method private synthetic lambda$configFaceDetection$38(LQ6/t0;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->needSkipDrawFace()Z

    move-result v0

    invoke-interface {p1, v0}, LQ6/t0;->zf(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->needPinFace()Z

    move-result p0

    invoke-interface {p1, p0}, LQ6/t0;->Wg(Z)V

    return-void
.end method

.method private lambda$enterAutoHibernation$26()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    const-string v2, "enterAutoHibernation"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj6/a;->f:Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0, v1}, Lcom/android/camera/module/X;->P0(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$exitAutoHibernation$27(Landroidx/fragment/app/l;)Z
    .locals 0

    instance-of p0, p0, Lx3/a;

    return p0
.end method

.method private static synthetic lambda$exitAutoHibernation$28(Landroidx/fragment/app/l;)Lx3/a;
    .locals 0

    check-cast p0, Lx3/a;

    return-object p0
.end method

.method private synthetic lambda$exitAutoHibernation$29()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/module/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/module/g;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LU6/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LU6/a;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/r1;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, LF1/r1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static lambda$exitAutoHibernation$30()V
    .locals 5

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, LQg/n;->auto_hibernation_enter_tip_v2:I

    const/16 v2, 0x8

    const-wide/16 v3, 0x1388

    invoke-interface {v0, v3, v4, v2, v1}, LQ6/l1;->fm(JII)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getDisplayRotation$14(Lcom/android/camera/module/X;)Landroid/app/Activity;
    .locals 0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method private static synthetic lambda$gotoGallery$33(ZZLcom/android/camera/module/X;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/android/camera/module/X;->b5(ZZ)V

    return-void
.end method

.method private static synthetic lambda$gotoGallery$34(ZLcom/android/camera/module/X;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/camera/module/X;->b5(ZZ)V

    return-void
.end method

.method private static lambda$init$4()V
    .locals 1

    sget-boolean v0, Lcom/android/camera/b;->k:Z

    sget-object v0, Lcom/android/camera/b$a;->a:Lcom/android/camera/b;

    invoke-virtual {v0}, Lcom/android/camera/b;->c()V

    return-void
.end method

.method private synthetic lambda$init$5()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mLifecycleRegistry:Landroidx/lifecycle/y;

    sget-object v0, Landroidx/lifecycle/n$a;->ON_CREATE:Landroidx/lifecycle/n$a;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/y;->g(Landroidx/lifecycle/n$a;)V

    return-void
.end method

.method private static synthetic lambda$keepScreenOn$20(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private synthetic lambda$notifyFirstFrameArrived$23()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/camera/module/r;->updateFaceView(ZZ)V

    return-void
.end method

.method private synthetic lambda$notifyFirstFrameArrived$24(LQ6/t0;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getFocusMode()I

    move-result v0

    invoke-interface {p1, v0}, LQ6/t0;->X2(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, LQ6/t0;->B1()V

    iget-object p1, p0, Lcom/android/camera/module/r;->mPendingTasks:Lvr/O;

    new-instance v0, Lcom/android/camera/module/E0;

    invoke-direct {v0, p0}, Lcom/android/camera/module/E0;-><init>(Ljava/lang/Object;)V

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {p1, v0, p0}, Lvr/O;->c(Lio/reactivex/functions/a;Lio/reactivex/v;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$notifyFirstFrameArrived$25(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lu6/q;->h(II)V

    return-void
.end method

.method private static synthetic lambda$onActive$7(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/t0;->Y0(Z)V

    return-void
.end method

.method private static synthetic lambda$onCameraOpenedFail$17(Lcom/android/camera/module/X;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onCoverViewShown$19(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x7

    invoke-interface {p0, v0}, LQ6/t0;->ug(I)V

    return-void
.end method

.method private static synthetic lambda$onDeviceKeepMoving$32(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/t0;->Wp(Z)V

    return-void
.end method

.method private static lambda$onDoubleTapStartTrackFocus$15([Landroid/graphics/Rect;LQ6/t0;)V
    .locals 6

    new-instance v0, Lo8/e;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lo8/e;-><init>(Landroid/graphics/Rect;IIF[I)V

    invoke-interface {p1, v0}, LQ6/t0;->Ik(Lo8/e;)V

    return-void
.end method

.method private synthetic lambda$onDoubleTapStartTrackFocus$16([Landroid/graphics/Rect;Lj9/a;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p2, v0, p1}, Lj9/a;->k1(ILandroid/graphics/Rect;)I

    move-result p1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lu6/q;->R(IZ)V

    return-void
.end method

.method private static synthetic lambda$onKeyDown$8(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/t0;->Y0(Z)V

    return-void
.end method

.method private static synthetic lambda$onKeyDown$9(ILandroid/view/KeyEvent;LQ6/E0;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p2, p0, p1}, LQ6/E0;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onKeyUp$11(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/t0;->Y0(Z)V

    return-void
.end method

.method private static synthetic lambda$onPreviewMetaDataUpdate$18(Ljava/lang/ref/WeakReference;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/X;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "BaseModule"

    const-string v1, "onFrameAvailable first frame arrived."

    invoke-static {v0, v1}, LF6/k;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/module/X;->a0(I)V

    invoke-interface {p0}, Lcom/android/camera/module/X;->q()V

    return-void
.end method

.method private synthetic lambda$onPreviewPixelsRead$12([BIILtu/c;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/module/r;->processAFSaliency([BIILtu/c;Z)V

    return-void
.end method

.method private static lambda$onSATMasterIdChanged$45(ILQ6/r1;)V
    .locals 2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/h;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/h;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lv2/h;->U:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, LS6/a;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lv2/h;->r:I

    if-eq p0, v1, :cond_0

    invoke-virtual {v0, p0}, Lv2/h;->s(I)V

    invoke-interface {p1}, LQ6/r1;->W8()V

    const/4 p0, 0x2

    const/4 v0, 0x7

    invoke-interface {p1, p0, v0}, LS6/a;->Lo(II)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$parseKeyCameraTriggerMode$10(Landroid/view/KeyEvent;LQ6/L;)Ljava/lang/Integer;
    .locals 0

    invoke-interface {p1, p0}, LQ6/L;->Ag(Landroid/view/KeyEvent;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private lambda$release$6()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/r;->mLifecycleRegistry:Landroidx/lifecycle/y;

    iget-object v0, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/n$b;

    sget-object v1, Landroidx/lifecycle/n$b;->b:Landroidx/lifecycle/n$b;

    if-eq v0, v1, :cond_0

    sget-object v0, Landroidx/lifecycle/n$a;->ON_DESTROY:Landroidx/lifecycle/n$a;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/y;->g(Landroidx/lifecycle/n$a;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setFrameAvailable$0(LQ6/t0;)V
    .locals 0

    invoke-interface {p1, p0}, LQ6/t0;->Qk(Lcom/android/camera/module/r;)V

    return-void
.end method

.method private synthetic lambda$setFrameAvailable$1()V
    .locals 3

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/h;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, LCs/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$setFrameAvailable$2(LQ6/E0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/E0;->Kc(Z)V

    return-void
.end method

.method private static lambda$setFrameAvailable$3()V
    .locals 3

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/E0;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF4/f;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, LF4/f;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$showAutoHibernationTip$31(ILQ6/l1;)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x1388

    invoke-interface {p1, v1, v2, v0, p0}, LQ6/l1;->fm(JII)V

    return-void
.end method

.method private static synthetic lambda$showConfirmMessage$21(Landroidx/fragment/app/l;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showConfirmMessage$22(IILandroidx/fragment/app/l;)V
    .locals 10

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p1

    const p2, 0x104000a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p3

    invoke-static/range {v1 .. v9}, Lvr/w;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/h;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/r;->mDialog:Lmiuix/appcompat/app/h;

    return-void
.end method

.method private static synthetic lambda$startFaceDetection$39(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/t0;->am(I)V

    return-void
.end method

.method private synthetic lambda$startFaceDetection$40()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/camera/module/r;->updateFaceView(ZZ)V

    return-void
.end method

.method private static synthetic lambda$stopFaceDetection$41(LQ6/t0;)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, LQ6/t0;->am(I)V

    return-void
.end method

.method private synthetic lambda$stopFaceDetection$42(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/r;->updateFaceView(ZZ)V

    return-void
.end method

.method private lambda$updateFaceView$44(ZZZLQ6/t0;)V
    .locals 12

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p1

    invoke-interface {p1}, Lj6/f;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    iget-object p1, p1, Lj9/h0;->a:Lj9/i0;

    iget p1, p1, Lj9/i0;->l0:I

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->I()I

    move-result v1

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x1

    move v4, p2

    move-object/from16 v0, p4

    invoke-interface/range {v0 .. v5}, LQ6/t0;->vc(IZZZZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    move v10, p2

    move v9, p3

    move-object/from16 v6, p4

    invoke-interface/range {v6 .. v11}, LQ6/t0;->vc(IZZZZ)V

    return-void
.end method

.method private synthetic lambda$updateFocusDistance$37(Lj9/a;)V
    .locals 0

    invoke-virtual {p1}, Lj9/a;->u()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lj6/j;->j(F)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateSmartScene$36(LQ6/C;)V
    .locals 1

    const/4 v0, 0x5

    invoke-interface {p0, v0}, LQ6/C;->j2(I)V

    return-void
.end method

.method public static synthetic o3(Lcom/android/camera/module/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/r;->lambda$clearFaceView$43()V

    return-void
.end method

.method public static synthetic o7(Lcom/android/camera/module/r;ZZZLQ6/t0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/r;->lambda$updateFaceView$44(ZZZLQ6/t0;)V

    return-void
.end method

.method public static synthetic p0(ILQ6/l1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/module/r;->lambda$showAutoHibernationTip$31(ILQ6/l1;)V

    return-void
.end method

.method public static synthetic p5(Lcom/android/camera/module/r;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/r;->lambda$notifyFirstFrameArrived$25(II)V

    return-void
.end method

.method private processAFSaliency([BIILtu/c;Z)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isEnableVideoPreviewThumbnail"
        type = 0x0
    .end annotation

    iget-object p5, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const-string v0, "BaseModule"

    const/4 v1, 0x0

    if-eqz p5, :cond_7

    invoke-interface {p5}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result p5

    if-nez p5, :cond_7

    iget-object p5, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p5}, Lj6/f;->b()Z

    move-result p5

    if-nez p5, :cond_0

    goto :goto_1

    :cond_0
    iget-object p5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p5}, Lj6/j;->q0()Lu6/q;

    move-result-object p5

    if-nez p5, :cond_1

    const-string p0, "onPreviewPixelsRead: null focusManager"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {p5, p2, p3}, Lu6/q;->h(II)V

    invoke-interface {p5}, Lu6/q;->q()[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Lu6/q;->q()[B

    move-result-object v0

    array-length v0, v0

    array-length v2, p1

    if-eq v0, v2, :cond_3

    :cond_2
    array-length v0, p1

    new-array v0, v0, [B

    invoke-interface {p5, v0}, Lu6/q;->O([B)V

    :cond_3
    invoke-interface {p5}, Lu6/q;->q()[B

    move-result-object p5

    array-length v0, p1

    invoke-static {p1, v1, p5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object p5, Ltu/c;->c:Ltu/c;

    if-ne p4, p5, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object p4

    const/4 p5, 0x1

    invoke-interface {p4, p5}, Lj6/j;->D0(Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, LQ6/t0;->b()LQ6/t0;

    move-result-object p4

    if-eqz p4, :cond_5

    invoke-interface {p4}, LQ6/t0;->ya()I

    move-result p5

    invoke-interface {p4}, LQ6/t0;->N8()I

    move-result p4

    invoke-virtual {p0, p5, p4}, Lcom/android/camera/module/r;->updateFocusAreaForAF(II)V

    :cond_5
    :goto_0
    sget-boolean p4, LQg/f;->f:Z

    if-eqz p4, :cond_6

    invoke-static {}, LQg/f;->m()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/r;->dumpSaliencyBitmap([BII)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    const-string p0, "onPreviewPixelsRead: isAlive false"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic q(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$beforeGotoGallery$35(LQ6/t0;)V

    return-void
.end method

.method private setCameraDevice(Lj9/a;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, p1}, Lj6/j;->x(Lj9/a;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lj9/e;->D()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lj6/j;->E0(Z)V

    invoke-virtual {p1}, Lj9/a;->R()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    iget-object v0, v0, Lt2/j;->u:Landroid/util/SparseArray;

    iget p1, p1, Lj9/a;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private setIgnoreTouchEvent(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0, p1}, Lj6/f;->k(Z)V

    return-void
.end method

.method private setModuleCallback(Lcom/android/camera/module/X;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setModuleCallback, callback: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1, p0}, LF1/r0;->g(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BaseModule"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private shouldApplyUltraWideLDC()Z
    .locals 7

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->x2()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_b

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v4, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->x2()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    move v4, v3

    goto/16 :goto_5

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    invoke-virtual {v4}, Lu2/Q;->M()Z

    move-result v4

    const/16 v5, 0xad

    const/16 v6, 0xa3

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/camera/data/data/r;->a:Ljava/util/HashSet;

    iget-object v4, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->B5()Z

    move-result v4

    if-eq v1, v6, :cond_a

    const/16 v6, 0xa7

    if-eq v1, v6, :cond_a

    if-eq v1, v5, :cond_3

    const/16 v5, 0xaf

    if-eq v1, v5, :cond_2

    const/16 v5, 0xb4

    if-eq v1, v5, :cond_a

    const/16 v5, 0xba

    if-eq v1, v5, :cond_a

    const/16 v5, 0xe6

    if-eq v1, v5, :cond_a

    const/16 v5, 0xe7

    if-eq v1, v5, :cond_a

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_0

    invoke-static {}, Lj9/q0;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/android/camera/data/data/r;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    :goto_1
    move v4, v2

    goto :goto_5

    :cond_4
    sget-object v4, Lcom/android/camera/data/data/r;->a:Ljava/util/HashSet;

    iget-object v4, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Z3()Z

    move-result v4

    if-eq v1, v6, :cond_a

    const/16 v6, 0xab

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_6

    const/16 v4, 0xcd

    if-eq v1, v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_6
    invoke-static {v1}, Lcom/android/camera/data/data/r;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    goto :goto_3

    :cond_7
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lu6/f;->P()Lj9/e;

    move-result-object v5

    if-eqz v5, :cond_8

    iget v5, v5, Lj9/e;->e:I

    invoke-virtual {v1}, Lu6/f;->G()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v6, :cond_8

    move v5, v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_8
    move v5, v3

    :goto_2
    monitor-exit v1

    if-nez v5, :cond_9

    iget-object v1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_0

    :cond_9
    if-eqz v4, :cond_0

    :goto_3
    goto :goto_1

    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_a
    :goto_5
    if-nez v4, :cond_b

    goto :goto_6

    :cond_b
    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K7()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, LJe/c;->z2()Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->d0()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a4()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/camera/data/data/w;->D0()Z

    move-result p0

    return p0

    :cond_d
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_e

    iget v0, v0, Lj9/a;->a:I

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->k()I

    move-result v1

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/android/camera/data/data/w;->D0()Z

    move-result p0

    return p0

    :cond_e
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->m()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {}, Lcom/android/camera/data/data/w;->D0()Z

    move-result p0

    return p0

    :cond_f
    :goto_6
    return v3
.end method

.method private showAutoHibernationFragment()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraApp:LW1/a;

    invoke-interface {v0, p0}, LW1/a;->we(Lcom/android/camera/module/r;)V

    return-void
.end method

.method private startFaceDetection()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lj6/f;->z(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->g()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-virtual {v0}, Lj9/h0;->g0()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lj6/f;->B(Z)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LE3/k;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, LE3/k;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mPendingTasks:Lvr/O;

    new-instance v1, LV9/v;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LV9/v;-><init>(Ljava/lang/Object;I)V

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {v0, v1, p0}, Lvr/O;->c(Lio/reactivex/functions/a;Lio/reactivex/v;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private surfaceTextureValid()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    invoke-interface {p0}, Lru/k;->getSurfaceTexture()LEu/a;

    move-result-object p0

    invoke-virtual {p0}, LEu/a;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic u2(Lcom/android/camera/module/r;[BIILtu/c;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/module/r;->lambda$onPreviewPixelsRead$12([BIILtu/c;Z)V

    return-void
.end method

.method public static synthetic u5(ZZLcom/android/camera/module/X;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/camera/module/r;->lambda$gotoGallery$33(ZZLcom/android/camera/module/X;)V

    return-void
.end method

.method private updateFaceView(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/q;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/camera/module/q;-><init>(Lcom/android/camera/module/r;ZZZ)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateFrontSoftLightStyle(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFrontSoftLightAdjust"
        type = 0x2
    .end annotation

    invoke-static {}, Lj9/f;->M2()Z

    move-result v0

    const-string v1, "107"

    if-eqz v0, :cond_1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v2, Lv2/o0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/o0;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "-1"

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->V()Lj9/a;

    move-result-object p0

    invoke-virtual {v0}, Lv2/o0;->n()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lj9/a;->I0(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_1
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v0, Lr2/Y;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/c;

    invoke-virtual {p1}, Lcom/android/camera/data/data/c;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/data/data/c;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lj9/a;->G0(Ljava/lang/Integer;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateParameters([I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateParameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BaseModule"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "updateParameters: begin to consumePreference.."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    iget-object v2, v0, LF6/q;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v0, LF6/q;->d:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "5.2:applyPreviewSettings"

    if-eqz v0, :cond_2

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v4

    invoke-virtual {v4, v2}, LF6/q;->q(Ljava/lang/String;)V

    :cond_2
    array-length v4, p1

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget v6, p1, v5

    invoke-virtual {p0, v6}, Lcom/android/camera/module/r;->consumePreference(I)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v4

    invoke-virtual {v4, v2}, LF6/q;->g(Ljava/lang/String;)J

    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v2}, Lj6/f;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/camera/module/r;->surfaceTextureValid()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isRepeatingRequestInProgress()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v0, :cond_5

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string v1, "5:captureSessionReady2startPreview"

    invoke-virtual {v0, v1}, LF6/q;->g(Ljava/lang/String;)J

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string v1, "6:[HAL]startPreview2firstFrame"

    invoke-virtual {v0, v1}, LF6/q;->q(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0}, Lj9/a;->p0()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->shouldCheckSatFallbackState()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/r;->handleSatFallback(I[I)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateParameters: skip resumePreview on accept. isAlive = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isRequestInProgress = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isRepeatingRequestInProgress()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateParameters: mUpdateWorkThreadDisposable isDisposed. "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic v(Landroid/view/Window;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$keepScreenOn$20(Landroid/view/Window;)V

    return-void
.end method

.method public static synthetic v8(Landroidx/fragment/app/l;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$showConfirmMessage$21(Landroidx/fragment/app/l;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x4(Lcom/android/camera/module/r;Lio/reactivex/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/r;->createUpdateEmitter(Lio/reactivex/r;)V

    return-void
.end method

.method public static synthetic x5(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$onCoverViewShown$19(LQ6/t0;)V

    return-void
.end method

.method public static synthetic y2(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$checkDisplayOrientation$13(LQ6/t0;)V

    return-void
.end method

.method public static synthetic y9(LQ6/t0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/r;->lambda$onDeviceKeepMoving$32(LQ6/t0;)V

    return-void
.end method

.method public static synthetic z3(Lcom/android/camera/module/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/r;->lambda$notifyFirstFrameArrived$23()V

    return-void
.end method


# virtual methods
.method public abandonModuleCallback()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/r;->setModuleCallback(Lcom/android/camera/module/X;)V

    return-void
.end method

.method public analyzeFrame()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    const-string v2, "analyzeFrame"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    sget-object v1, Ltu/c;->h:Ltu/c;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->d0()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ltu/b;->c:Ltu/b;

    goto :goto_0

    :cond_0
    sget-object p0, Ltu/b;->a:Ltu/b;

    :goto_0
    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lru/k;->k(Ltu/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/a;)V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lr6/J;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->genFaceDetectionCallback()Lj9/a$f;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/module/r;->genFaceDetectionParams()Lr6/J$a;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lr6/J;-><init>(Lj9/a$f;Lr6/J$a;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v1, Lr6/g0;

    invoke-direct {v1}, Lcom/android/camera/module/interceptor/base/i;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v1, Lr6/v;

    invoke-direct {v1}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v1, Lr6/m0;

    invoke-direct {v1}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Lr6/m0;->c:I

    iput-boolean v0, v1, Lr6/m0;->d:Z

    invoke-virtual {p1, v1}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    invoke-static {}, Lj9/f;->l3()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lr6/t;

    invoke-direct {v1}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraCapabilities()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->w4(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lr6/r;

    invoke-direct {v1}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    :cond_1
    new-instance v1, Lr6/n0;

    invoke-direct {v1, p0}, Lr6/n0;-><init>(Lcom/android/camera/module/r;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v1, Lr6/u;

    invoke-direct {v1}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    new-instance v1, Lr6/y;

    sget-object v2, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    invoke-direct {v1, v2}, Lr6/y;-><init>(Lcom/android/camera/c;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v2, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->B4()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lr6/o;

    invoke-direct {v2}, Lcom/android/camera/module/interceptor/base/i;-><init>()V

    invoke-virtual {p1, v2}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    :cond_2
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->S()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/h;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/h;

    iget-boolean v2, v2, Lv2/h;->V:Z

    if-eqz v2, :cond_6

    new-instance v2, Lr6/n;

    iget-object v4, p0, Lcom/android/camera/module/r;->mApertureManager:LV1/f;

    check-cast v4, Lr6/n$a;

    invoke-direct {v2}, Lcom/android/camera/module/interceptor/base/i;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v2, Lr6/n;->c:Ljava/lang/Float;

    iput-boolean v0, v2, Lr6/n;->d:Z

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v2, Lr6/n;->f:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v5, Lr2/m0;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/m0;

    iget-boolean v5, v4, Lv2/h;->W:Z

    if-eqz v5, :cond_3

    iput-object v4, v2, Lr6/n;->g:Lv2/h;

    goto :goto_0

    :cond_3
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    invoke-virtual {v4, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/h;

    iput-object v3, v2, Lr6/n;->g:Lv2/h;

    :goto_0
    sget-object v3, Le2/a;->e:Ljava/lang/String;

    iput-object v3, v2, Lr6/n;->h:Ljava/lang/String;

    sget-boolean v3, LJe/c;->k:Z

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->A()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lr6/n;->g:Lv2/h;

    iget v3, v3, Lv2/h;->j:F

    const-string v4, ""

    invoke-static {v1, v3, v4}, LCs/Q;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lr6/n;->h:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    const-string v1, "4.0"

    iput-object v1, v2, Lr6/n;->h:Ljava/lang/String;

    :cond_5
    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraCapabilities()Lj9/e;

    move-result-object p0

    if-eqz p0, :cond_7

    sget-object v1, Lga/C0;->x2:Lga/D0;

    invoke-virtual {v1}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lr6/q;

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/base/k;-><init>()V

    sget-boolean v1, Lcom/android/camera/b;->k:Z

    sget-object v1, Lcom/android/camera/b$a;->a:Lcom/android/camera/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "BatteryDetector"

    const-string/jumbo v4, "setBatteryEmergencySate = 0"

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v0, v1, Lcom/android/camera/b;->i:I

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    :cond_7
    invoke-static {}, LF6/b;->c()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, LF6/q;->l()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_8

    new-instance p0, Lr6/s;

    invoke-direct {p0}, Lr6/s;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/module/interceptor/base/a;->a(Lcom/android/camera/module/interceptor/base/i;)V

    :cond_8
    return-void
.end method

.method public beforeGotoGallery()V
    .locals 3

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LH3/p;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LH3/p;-><init>(IB)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public calculateScrollFocusDistance(Lj9/e;FI)F
    .locals 3

    invoke-static {p1}, Lj9/f;->N(Lj9/e;)F

    move-result p0

    sget-boolean v0, LJe/d;->i:Z

    const/high16 v1, 0x447a0000    # 1000.0f

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    invoke-static {p1}, Lj9/f;->I(Lj9/e;)F

    move-result p1

    sub-float v0, p0, p1

    int-to-float p3, p3

    mul-float/2addr v0, p3

    div-float/2addr v0, v1

    int-to-float p3, v2

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-static {v0, p1, p0}, LPq/b;->o(FFF)F

    move-result p0

    return p0

    :cond_0
    int-to-float p1, p3

    mul-float/2addr p1, p0

    div-float/2addr p1, v1

    int-to-float p3, v2

    mul-float/2addr p1, p3

    add-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p1, p2, p0}, LPq/b;->o(FFF)F

    move-result p0

    return p0
.end method

.method public canStartCount()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public cancelFocus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "BaseModule"

    const-string v1, "cancelFocus resetFocusMode="

    invoke-static {v1, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->A0()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getFocusMode()I

    move-result v1

    invoke-virtual {p1, v1}, Lj9/h0;->J(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->V()Lj9/a;

    move-result-object p1

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p1, v1}, Lj9/a;->e(I)V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->x0()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lj6/j;->E(I)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public checkActivityOrientation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget v0, v0, Lj6/a;->h:I

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkDisplayOrientation()V

    :cond_0
    return-void
.end method

.method public checkCallingState()Z
    .locals 3

    invoke-static {}, Lk7/K;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Z0()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-ne v2, v0, :cond_1

    sget v0, LQg/n;->confirm_recording_fail_title:I

    sget v2, LQg/n;->confirm_recording_fail_calling_alert:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/module/r;->showConfirmMessage(II)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public checkDisplayOrientation()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getDisplayRotation()I

    move-result v1

    check-cast v0, Lj6/a;

    iput v1, v0, Lj6/a;->h:I

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget v0, v0, Lj6/a;->h:I

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->o0()I

    move-result v1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lu6/f;->O(I)Lj9/e;

    move-result-object v1

    invoke-static {v0, v1}, LBw/i;->G(ILj9/e;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1, v0}, Lj6/j;->F(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[OrientationTrace] checkDisplayOrientation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    iget p0, p0, Lj6/a;->h:I

    const-string v2, " | "

    invoke-static {p0, v0, v2, v1}, LO0/o;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE3/i;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LE3/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public checkMultiCaptureAllReceived()V
    .locals 0

    return-void
.end method

.method public final checkSatFallback(ZIJ)V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSatFallbackEnable"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->H()I

    move-result v1

    const-string v2, "BaseModule"

    const/4 v3, 0x2

    const/16 v4, 0x3c

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c0()Z

    move-result v1

    if-nez v1, :cond_1

    iget p2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, p2}, Lj9/a;->s0(I)I

    move-result p2

    const-string p3, "checkSatFallback: lastFallbackRequestId = "

    const-string p4, ",fallbackDetected = "

    invoke-static {p2, p3, p4, p1}, LF1/p2;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {v2, p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz p2, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1, v3}, Lj6/j;->N0(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1, v5}, Lj6/j;->v0(Z)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1, p2}, Lj6/j;->n(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x9c4

    invoke-virtual {p0, v4, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->J0()I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->J0()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, p2, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, v1}, Lj6/j;->v0(Z)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    const-string/jumbo v3, "sat_switch"

    invoke-virtual {v0, v3}, LF6/q;->g(Ljava/lang/String;)J

    :cond_2
    const-string v0, "checkSatFallback: fallbackDetected = "

    const-string v3, " mFallbackProcessed = "

    invoke-static {v0, v3, p1}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->t()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " requestId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "|"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {v2, p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->t()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1, v5}, Lj6/j;->N0(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1, v5}, Lj6/j;->v0(Z)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lj6/j;->n(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->c0()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->x0()I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1, v5}, Lj6/j;->V0(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public checkShutterCondition()Z
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isBlockSnap()Z

    move-result v0

    const-string v1, "BaseModule"

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

.method public clearFaceView()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mPendingTasks:Lvr/O;

    new-instance v1, LAk/j;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LAk/j;-><init>(Ljava/lang/Object;I)V

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {v0, v1, p0}, Lvr/O;->c(Lio/reactivex/functions/a;Lio/reactivex/v;)V

    return-void
.end method

.method public abstract closeCamera()V
.end method

.method public consumePreference(I)Z
    .locals 2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p0, "consumePreference: no consumer for this updateType -> "

    invoke-static {p1, p0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/r;->configFaceDetection()V

    const/4 p0, 0x1

    return p0
.end method

.method public createCameraManager()Lj6/j;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraApp:LW1/a;

    invoke-interface {v0, p0}, LW1/a;->y6(Lcom/android/camera/module/r;)Lj6/d;

    move-result-object p0

    return-object p0
.end method

.method public createFlashAsdManager()Lj6/g;
    .locals 1

    new-instance v0, Lm6/a;

    invoke-direct {v0, p0}, Lm6/a;-><init>(Lcom/android/camera/module/r;)V

    return-object v0
.end method

.method public createModuleStateManager()Lj6/e;
    .locals 0

    new-instance p0, Lj6/e;

    invoke-direct {p0}, Lj6/e;-><init>()V

    return-object p0
.end method

.method public createTimeBurst()LQ6/j1;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraApp:LW1/a;

    invoke-interface {v0, p0}, LW1/a;->sd(Lcom/android/camera/module/r;)Lw7/j;

    move-result-object p0

    return-object p0
.end method

.method public enableCameraControls(Z)V
    .locals 2

    const-string v0, "enableCameraControls: enable = "

    const-string v1, ", caller: "

    invoke-static {v0, v1, p1}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/camera/log/DumpTrace;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/module/r;->setIgnoreTouchEvent(Z)V

    return-void
.end method

.method public enterAutoHibernation()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not enter AutoHibernation cause module is paused, module: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseModule"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget v1, v0, Lj6/a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lj6/a;->g:I

    invoke-direct {p0}, Lcom/android/camera/module/r;->showAutoHibernationFragment()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateAutoHibernationFirstRecordingTime()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LR3/h;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LR3/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public exitAutoHibernation()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget-boolean v1, v0, Lj6/a;->f:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj6/a;->f:Z

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0, v1}, Lcom/android/camera/module/X;->P0(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    const-string v2, "exitAutoHibernation"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LF1/q0;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, LF1/q0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v0, LH3/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LH3/l;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public externalMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public focusCenter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_1

    const-string v0, "BaseModule"

    const-string v1, "restore continuous center focus when switching lens focus in SAT"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-interface {p0, v1}, Lu6/q;->g(Z)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->cancelFocus(Z)V

    :cond_1
    return-void
.end method

.method public genFaceDetectionCallback()Lj9/a$f;
    .locals 1

    new-instance v0, Lr6/I;

    invoke-direct {v0, p0}, Lr6/I;-><init>(Lcom/android/camera/module/r;)V

    return-object v0
.end method

.method public getActionProcess()Ljava/util/Optional;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDualVideo"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "LQ6/d;",
            ">;"
        }
    .end annotation

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getActivity()Landroidx/fragment/app/l;
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    instance-of v0, p0, Landroidx/fragment/app/l;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/fragment/app/l;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivityOpt()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroidx/fragment/app/l;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getActualCameraId()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->getActualCameraId()I

    move-result p0

    return p0
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

.method public getAppStateMgr()Lj6/b;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    return-object p0
.end method

.method public getBroadcastIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mBroadcastIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getCameraCapabilities()Lj9/e;
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/L1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/L1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LI4/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LI4/h;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj9/e;

    return-object p0
.end method

.method public getCameraDisplayOrientation()I
    .locals 3

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    const-string v2, "mCameraManager is null"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    invoke-interface {p0}, Lj6/j;->I()I

    move-result p0

    return p0
.end method

.method public getCameraManager()Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public getCameraRotation()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getCaptureExposureTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getColorSpaceDescription()Lwu/a$k;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getColorSpaceDescriptionInner()Lwu/a$k;

    move-result-object p0

    return-object p0
.end method

.method public abstract getColorSpaceDescriptionInner()Lwu/a$k;
.end method

.method public getCookieStore()Lhi/a$b;
    .locals 0

    invoke-static {}, Lu6/i;->c()Lu6/i;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lhi/d;->d()Lhi/a$b;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentLockScene()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCurrentLockScene:Ljava/lang/String;

    return-object p0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayRotation()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/K1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LF1/K1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Le3/j0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le3/j0;-><init>(I)V

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

.method public getExposureModeManager()LV1/g;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mExposureModeManager:LV1/g;

    if-nez v0, :cond_0

    new-instance v0, LV1/d;

    invoke-direct {v0, p0}, LV1/d;-><init>(Lcom/android/camera/module/r;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mExposureModeManager:LV1/g;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mExposureModeManager:LV1/g;

    return-object p0
.end method

.method public getFlashAsdManager()Lj6/g;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mFlashAsdManager:Lj6/g;

    return-object p0
.end method

.method public getFocusMode()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getLifecycle()Landroidx/lifecycle/n;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mLifecycleRegistry:Landroidx/lifecycle/y;

    return-object p0
.end method

.method public getModuleCallback()Lcom/android/camera/module/X;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    return-object p0
.end method

.method public getModuleCallbackOpt()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/module/X;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getModuleIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    return p0
.end method

.method public getModuleState()Lj6/f;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    return-object p0
.end method

.method public getMutexCallback()LF1/E3$a;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    new-instance p0, Lcom/android/camera/module/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public getMutexModePicker()LF1/E3;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    return-object p0
.end method

.method public getOperatingMode()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleDevice:Ly3/t;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleDeviceParam()Ly3/v;

    move-result-object v1

    invoke-interface {v0, v1}, Ly3/t;->i(Ly3/v;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    return v0
.end method

.method public getScreenDelay()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object p0

    iget-object p0, p0, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {p0}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LK2/b;->a0()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x1adb0

    return p0

    :cond_1
    const p0, 0xea60

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0x7530

    return p0
.end method

.method public getShootOrientation(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getDisplayRotation()I

    move-result p0

    sub-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    return p1
.end method

.method public getShootRotation(F)F
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getDisplayRotation()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    :goto_0
    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    const/high16 v0, 0x43b40000    # 360.0f

    if-gez p0, :cond_0

    add-float/2addr p1, v0

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float p0, p1, v0

    if-lez p0, :cond_1

    sub-float/2addr p1, v0

    goto :goto_1

    :cond_1
    return p1
.end method

.method public getSurfaceTextureMgr()Lj6/h;
    .locals 0

    return-object p0
.end method

.method public getTexBt2020DpyBt2020ColorSpaceDescription()Lwu/a$k;
    .locals 2

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->e()Lwu/a$k;

    move-result-object p0

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwu/a$k;->a:Lwu/a;

    sget-object v1, Lwu/a;->b:Lwu/a$d;

    if-ne v0, v1, :cond_0

    sget-object v0, Lwu/a;->c:Lwu/a$f;

    iget-object p0, p0, Lwu/a$k;->b:Lwu/a;

    if-ne p0, v0, :cond_0

    new-instance p0, Lwu/a$k;

    sget-object v0, Lwu/a;->d:Lwu/a$g;

    sget-object v1, Lwu/a;->h:Lwu/a$a;

    invoke-direct {p0, v0, v1}, Lwu/a$k;-><init>(Lwu/a;Lwu/a;)V

    return-object p0

    :cond_0
    sget-object p0, Lwu/a$k;->c:Lwu/a$k;

    return-object p0
.end method

.method public getTexP3DpyP3ColorSpaceDescription()Lwu/a$k;
    .locals 2

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->e()Lwu/a$k;

    move-result-object p0

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwu/a$k;->a:Lwu/a;

    sget-object v1, Lwu/a;->b:Lwu/a$d;

    if-ne v0, v1, :cond_0

    sget-object v0, Lwu/a;->c:Lwu/a$f;

    iget-object v1, p0, Lwu/a$k;->b:Lwu/a;

    if-ne v1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lwu/a$k;->c:Lwu/a$k;

    return-object p0
.end method

.method public getTexSrgbDpyP3ColorSpaceDescription()Lwu/a$k;
    .locals 2

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->g6()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lwu/a$k;

    sget-object v0, Lwu/a;->a:Lwu/a$b;

    sget-object v1, Lwu/a;->c:Lwu/a$f;

    invoke-direct {p0, v0, v1}, Lwu/a$k;-><init>(Lwu/a;Lwu/a;)V

    return-object p0

    :cond_0
    sget-object p0, Lwu/a$k;->c:Lwu/a$k;

    return-object p0
.end method

.method public getTrackInfo()Lo8/a;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mTrackInfo:Lo8/a;

    return-object p0
.end method

.method public getUserEventMgr()Lj6/i;
    .locals 0

    return-object p0
.end method

.method public getVideoModuleColorSpace()Lwu/a$k;
    .locals 6

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->e()Lwu/a$k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/y0;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/y0;

    invoke-virtual {v3, v2}, Lv2/y0;->isSwitchOn(I)Z

    move-result v3

    sget-object v4, Lwu/a;->d:Lwu/a$g;

    sget-object v5, Lwu/a;->c:Lwu/a$f;

    if-eqz v3, :cond_0

    new-instance p0, Lwu/a$k;

    invoke-direct {p0, v4, v5}, Lwu/a$k;-><init>(Lwu/a;Lwu/a;)V

    return-object p0

    :cond_0
    invoke-static {v2}, Lcom/android/camera/data/data/w;->j0(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    invoke-static {p0}, Lj9/f;->O4(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lwu/a$k;

    sget-object v0, Lwu/a;->g:Lwu/a$j;

    invoke-direct {p0, v4, v0}, Lwu/a$k;-><init>(Lwu/a;Lwu/a;)V

    return-object p0

    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result p0

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    if-eqz p0, :cond_2

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->g6()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/j;->E0()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/j;->C0()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/j;->D0()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v2}, Lcom/android/camera/data/data/w;->j0(I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/m;->N()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lwu/a$k;

    sget-object v0, Lwu/a;->a:Lwu/a$b;

    invoke-direct {p0, v0, v5}, Lwu/a$k;-><init>(Lwu/a;Lwu/a;)V

    return-object p0

    :cond_2
    invoke-static {}, Lcom/android/camera/data/data/m;->N()Z

    move-result p0

    sget-object v2, Lwu/a;->e:Lwu/a$h;

    if-eqz p0, :cond_3

    new-instance p0, Lwu/a$k;

    invoke-direct {p0, v2, v2}, Lwu/a$k;-><init>(Lwu/a;Lwu/a;)V

    return-object p0

    :cond_3
    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->I1()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    new-instance p0, Lwu/a$k;

    invoke-direct {p0, v2, v5}, Lwu/a$k;-><init>(Lwu/a;Lwu/a;)V

    return-object p0

    :cond_4
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    const-class v0, Ls2/a;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls2/a;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ls2/a;->t(I)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/android/camera/data/data/j;->C0()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v1, Lwu/a$k;->a:Lwu/a;

    sget-object v0, Lwu/a;->f:Lwu/a$i;

    if-ne p0, v0, :cond_5

    iget-object p0, v1, Lwu/a$k;->b:Lwu/a;

    if-ne p0, v0, :cond_5

    return-object v1

    :cond_5
    sget-object p0, Lwu/a$k;->c:Lwu/a$k;

    return-object p0
.end method

.method public getWindowOpt()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LT9/E;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LT9/E;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getZoomManager()Lf9/a;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    if-nez v0, :cond_0

    new-instance v0, Lg9/f;

    invoke-direct {v0, p0}, Lg9/f;-><init>(Lcom/android/camera/module/W;)V

    iput-object v0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mZoomManager:Lf9/a;

    return-object p0
.end method

.method public final gotoGallery(Z)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->beforeGotoGallery()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallbackOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/module/e;

    invoke-direct {v0, p1}, Lcom/android/camera/module/e;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final gotoGallery(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->beforeGotoGallery()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallbackOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/module/k;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/module/k;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public handleBackStackFromTapDown(II)Z
    .locals 3

    invoke-static {}, LQ6/h;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-static {}, LK2/b;->N()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {}, LK2/b;->R()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, LK2/b;->W()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/r;->isInTapableBackRect(II)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6/h;

    invoke-interface {v0, p1, p2}, LQ6/h;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/r;->isInTapableRect(II)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public handleCountDownSnapClickVibrator()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->S()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0}, Lj6/f;->S()I

    move-result p0

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object p0

    invoke-virtual {p0}, LBr/e;->l()V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VibratorContext"

    const-string v2, "postDelayPerformSnapClick"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, LBr/e;->d:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, LBr/e;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, LBr/e$b;->b:LBr/e$b;

    invoke-virtual {p0, v0}, LBr/e;->t(LBr/e$b;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public handleLockFocus()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "BaseModule"

    const-string v2, "handleLockFocus"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lj9/a;->L()V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lj6/j;->X0(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleMessage(ILandroid/os/Message;)Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string p0, "handleMessage: no consumer for this message -> "

    invoke-static {p1, p0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "BaseModule"

    invoke-static {v0, p0, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public handlePreviewTouchEvent(ZLandroid/graphics/Point;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, p2, p1}, Lu6/q;->onSingleTapUp(IIZ)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isShowCaptureButton()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isSupportTapShoot()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lu6/q;->s(I)V

    :cond_0
    return-void
.end method

.method public handleVolumeKeyEvent(ZZLandroid/view/KeyEvent;Z)Z
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isModeEditing()Z

    move-result v1

    const-string v3, "BaseModule"

    if-eqz v1, :cond_1

    const-string p0, "handleVolumeKeyEvent: isModeEditing, ignore volume key event"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    invoke-static {}, LIp/a;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LH4/c0;

    invoke-direct {v4, v0}, LH4/c0;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "handleVolumeKeyEvent: OCR content displaying, ignore volume key event"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_2
    invoke-static {p4}, Lcom/android/camera/data/data/w;->B(Z)Ljava/lang/String;

    move-result-object p4

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1, p4}, Lj6/f;->L(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, LQg/n;->pref_camera_volumekey_function_entryvalue_shutter:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, LQg/n;->pref_camera_volumekey_function_entryvalue_timer:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, LQg/n;->pref_camera_volumekey_function_entryvalue_zoom:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, LDf/d;->o(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object p4, v8

    :cond_3
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x14

    if-eqz v4, :cond_6

    iget p4, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p4}, Lcom/android/camera/data/data/j;->H0(I)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0xb0

    if-eq p4, v4, :cond_5

    const/16 v4, 0xa6

    if-eq p4, v4, :cond_5

    const/16 v4, 0xbb

    if-ne p4, v4, :cond_4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v6, Lr2/f;

    invoke-virtual {v4, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/f;

    invoke-virtual {v4, p4}, Lr2/f;->o(I)I

    move-result p4

    if-eqz p4, :cond_4

    const/4 v4, 0x4

    if-ne p4, v4, :cond_5

    :cond_4
    invoke-virtual {p0, v5, v1, p3, p2}, Lcom/android/camera/module/r;->performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V

    return v2

    :cond_5
    move-object p4, v8

    :cond_6
    invoke-virtual {p4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xfd

    if-eq p1, v1, :cond_e

    const/16 v1, 0xfe

    if-eq p1, v1, :cond_e

    const/16 v1, 0xff

    if-eq p1, v1, :cond_e

    const/16 v1, 0xd2

    if-eq p1, v1, :cond_e

    const/16 v1, 0xd3

    if-eq p1, v1, :cond_e

    const/16 v1, 0xdc

    if-eq p1, v1, :cond_e

    const/16 v1, 0xbe

    if-eq p1, v1, :cond_e

    const/16 v1, 0xd1

    if-eq p1, v1, :cond_e

    const/16 v1, 0xa2

    if-ne p1, v1, :cond_7

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    invoke-virtual {p1}, Lu2/Q;->X()Z

    move-result p1

    if-nez p1, :cond_e

    :cond_7
    invoke-virtual {p0, v5, p4, p3, p2}, Lcom/android/camera/module/r;->performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V

    return v2

    :cond_8
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    sget-object v1, Lcom/android/camera/data/data/r;->a:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/android/camera/data/data/j;->D1(I)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/camera/data/data/r;->a:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_9

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_b

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->b2()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_9
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v0}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/j;->I0(F)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_0
    move v6, p2

    move-object v7, p3

    goto :goto_1

    :cond_b
    const/16 v1, 0xaf

    if-ne v0, v1, :cond_c

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->R4()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v0}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/j;->I0(F)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    const/16 v1, 0xcc

    if-ne v0, v1, :cond_d

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->I0()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getZoomManager()Lf9/a;

    move-result-object v4

    const v9, 0x3dcccccd    # 0.1f

    const/4 v10, 0x0

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v4 .. v10}, Lf9/a;->X(ZZLandroid/view/KeyEvent;Ljava/lang/String;FI)V

    return v2

    :goto_1
    invoke-virtual {p0, v5, p4, v7, v6}, Lcom/android/camera/module/r;->performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V

    return v2

    :cond_e
    return v0
.end method

.method public hasCameraException()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->l0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->Z()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->wl()Z

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

.method public idleManuallyFocus()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-interface {p0, v0}, Lj6/j;->j(F)V

    return-void
.end method

.method public ignoreFocusKeyEvent(Z)Z
    .locals 3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->O()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v2, 0xa6

    if-eq v0, v2, :cond_5

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_5

    const/16 v2, 0xac

    if-eq v0, v2, :cond_5

    const/16 v2, 0xa9

    if-eq v0, v2, :cond_5

    const/16 v2, 0xce

    if-eq v0, v2, :cond_5

    const/16 v2, 0xbf

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->ignoreKeyEvent()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v0, 0xe3

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/E;->F()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/r;->isManualFocusDisabled()Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method public ignoreKeyEvent()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isModeEditing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIgnoreTouchEvent()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, LIp/a;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LH4/c0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LH4/c0;-><init>(I)V

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

.method public final init()V
    .locals 5

    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->assertCameraSetupThread()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const-string v1, "BaseModule"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->o0()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4, p0}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "onCreate: moduleIndex->%d, cameraId->%d@%s"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-interface {v0, v3}, Lj6/j;->i(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->externalMode()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lji/a;

    const-string v0, "Module onCreate: camera device must not be null!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    new-instance v3, LF1/V2;

    iget-object v4, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-direct {v3, v4}, LF1/V2;-><init>(Lcom/android/camera/module/X;)V

    iput-object v3, v0, Lj9/a;->b:LF1/V2;

    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/module/r;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, LF1/E3;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getMutexCallback()LF1/E3$a;

    move-result-object v3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v2, v0, LF1/E3;->b:I

    iput-object v3, v0, LF1/E3;->a:LF1/E3$a;

    iput-object v0, p0, Lcom/android/camera/module/r;->mMutexModePicker:LF1/E3;

    new-instance v0, LSs/b;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v3}, LSs/b;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lio/reactivex/internal/operators/observable/d;

    invoke-direct {v3, v0}, Lio/reactivex/internal/operators/observable/d;-><init>(Lio/reactivex/s;)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/v;

    invoke-virtual {v3, v0}, Lio/reactivex/q;->m(Lio/reactivex/v;)Lio/reactivex/internal/operators/observable/C;

    move-result-object v0

    new-instance v3, Lcom/android/camera/fragment/r0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/camera/fragment/r0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Lio/reactivex/q;->subscribe(Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/r;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "create disposable "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/r;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lj6/f;->r(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0, v2}, Lj6/f;->d(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-static {}, Lcom/android/camera/data/data/w;->R()Z

    move-result v1

    invoke-interface {v0, v1}, Lj6/f;->w(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0, v2}, Lj6/f;->o(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v1, LR3/g;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LR3/g;-><init>(I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/camera/module/r;->registerProtocol()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->onRenderEngineCreate()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v0, v0, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isWCGOn()Z

    move-result v1

    iput-boolean v1, v0, Lj9/i0;->J3:Z

    invoke-virtual {p0}, Lcom/android/camera/module/r;->onActive()V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, LC4/v;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LC4/v;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void

    :cond_3
    const-string p0, "init: mCameraManager is null! Module initialization failed."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CameraManager cannot be null. Module initialization failed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initializeCapabilities()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-virtual {v0}, Lj9/e;->e0()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getFocusMode()I

    move-result v2

    invoke-static {v2, v1}, Lvr/e;->l(I[I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2, v1}, Lj6/j;->O0(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, v0}, Lj6/j;->f(Lj9/e;)V

    return-void
.end method

.method public initializeFocusManager()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    new-instance v1, Lu6/p;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->d0()Z

    move-result v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isSupportAFSaliency()Z

    move-result v6

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lu6/p;-><init>(Lj9/e;Lcom/android/camera/module/r;ZLandroid/os/Looper;Z)V

    invoke-interface {v0, v1}, Lj6/j;->p(Lu6/p;)V

    iget-object p0, v3, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, v3, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object p0

    iget-object p0, p0, LF1/q4;->j:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v3, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    iget-object v1, v3, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object v1

    iget v1, v1, LF1/q4;->s:I

    iget-object v2, v3, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v2}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object v2

    iget v2, v2, LF1/q4;->t:I

    invoke-interface {v0, v1, v2}, Lu6/q;->N(II)V

    iget-object v0, v3, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lu6/q;->p0(II)V

    return-void

    :cond_1
    iget-object p0, v3, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    sget v0, LK2/e;->g:I

    sget v1, LK2/e;->f:I

    invoke-interface {p0, v0, v1}, Lu6/q;->N(II)V

    iget-object p0, v3, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    sget v0, LK2/e;->g:I

    sget v1, LK2/e;->f:I

    invoke-interface {p0, v0, v1}, Lu6/q;->p0(II)V

    return-void
.end method

.method public final initializeMetaDataCallback(Lcom/android/camera/module/r;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/camera/module/r;",
            ">(TM;)V"
        }
    .end annotation

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lj9/a;->K0(Lj9/a$c;)V

    new-instance v2, Lcom/android/camera/module/interceptor/base/a;

    invoke-direct {v2}, Lcom/android/camera/module/interceptor/base/a;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/r;->mAsdInterceptorChain:Lcom/android/camera/module/interceptor/base/a;

    invoke-virtual {p0, v2}, Lcom/android/camera/module/r;->appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/a;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mAsdInterceptorChain:Lcom/android/camera/module/interceptor/base/a;

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Lj9/a;->q()Lj9/e;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/interceptor/base/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/interceptor/base/c;

    invoke-virtual {v4, p1, v1, p0}, Lcom/android/camera/module/interceptor/base/c;->create(Lcom/android/camera/module/interceptor/base/h;Lj9/e;Lcom/android/camera/module/interceptor/base/a;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/module/interceptor/base/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance p1, LSs/a;

    invoke-direct {p1, p0}, LSs/a;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lio/reactivex/a;->c:Lio/reactivex/a;

    sget v2, Lio/reactivex/h;->a:I

    new-instance v2, Lio/reactivex/internal/operators/flowable/b;

    invoke-direct {v2, p1, v1}, Lio/reactivex/internal/operators/flowable/b;-><init>(Lio/reactivex/j;Lio/reactivex/a;)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sASDScheduler:Lio/reactivex/v;

    sget v1, Lio/reactivex/h;->a:I

    invoke-virtual {v2, p1, v1}, Lio/reactivex/h;->a(Lio/reactivex/v;I)Lio/reactivex/internal/operators/flowable/k;

    move-result-object p1

    new-instance v2, LSs/b;

    invoke-direct {v2, p0, v0}, LSs/b;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lio/reactivex/internal/operators/flowable/j;

    invoke-direct {v3, p1, v2}, Lio/reactivex/internal/operators/flowable/j;-><init>(Lio/reactivex/h;Lio/reactivex/functions/e;)V

    new-instance p1, LEh/a;

    const/16 v2, 0x8

    invoke-direct {p1, v2}, LEh/a;-><init>(I)V

    new-instance v2, Lio/reactivex/internal/operators/flowable/l;

    invoke-direct {v2, v3, p1}, Lio/reactivex/internal/operators/flowable/l;-><init>(Lio/reactivex/h;Lio/reactivex/functions/d;)V

    new-instance p1, LS0/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lio/reactivex/internal/operators/flowable/f;

    invoke-direct {v3, v2, p1}, Lio/reactivex/internal/operators/flowable/f;-><init>(Lio/reactivex/h;Lio/reactivex/functions/f;)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {v3, p1, v1}, Lio/reactivex/h;->a(Lio/reactivex/v;I)Lio/reactivex/internal/operators/flowable/k;

    move-result-object p1

    new-instance v1, Lio/reactivex/internal/operators/flowable/c;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/h;)V

    new-instance p1, LO/e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lio/reactivex/internal/operators/flowable/n;

    invoke-direct {v2, v1, p1}, Lio/reactivex/internal/operators/flowable/n;-><init>(Lio/reactivex/internal/operators/flowable/c;LO/e;)V

    new-instance p1, LEs/Q;

    invoke-direct {p1, p0, v0}, LEs/Q;-><init>(Ljava/lang/Object;I)V

    new-instance v0, LEm/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LEm/c;-><init>(I)V

    invoke-virtual {v2, p1, v0}, Lio/reactivex/h;->subscribe(Lio/reactivex/functions/d;Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/interceptor/base/a;->d:Lio/reactivex/disposables/b;

    :cond_2
    return-void
.end method

.method public initializePreferences()V
    .locals 0

    return-void
.end method

.method public isActivityPauseOrStop()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->g9()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isActivityPaused()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBlockSnap()Z
    .locals 0

    invoke-interface {p0}, LQ6/Z0;->isDoingAction()Z

    move-result p0

    return p0
.end method

.method public isCameraSwitchingDuringZoomingAllowed()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/r;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->D()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->d0()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->d0()Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Q4()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lj9/q0;->g()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lj9/q0;->f()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_1
    invoke-static {}, Lj9/q0;->g()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lj9/q0;->e()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_2
    invoke-static {}, Lj9/q0;->g()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lj9/q0;->h()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    invoke-static {}, Lj9/q0;->h()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lj9/q0;->e()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public isCaptureIntent()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isCineNeedStartStream()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCreated()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0}, Lj6/f;->y()Z

    move-result p0

    return p0
.end method

.method public isDeparted()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0}, Lj6/f;->isDeparted()Z

    move-result p0

    return p0
.end method

.method public isDeviceAndModuleAlive()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p0

    invoke-static {v1, p0}, LOh/a;->b(Lj6/j;Lj6/f;)V

    :cond_1
    return v0
.end method

.method public isHeicPreferred()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIgnoreTouchEvent()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0}, Lj6/f;->isIgnoreTouchEvent()Z

    move-result p0

    return p0
.end method

.method public isIn3OrMoreSatMode()Z
    .locals 1

    const v0, 0x9002

    iget p0, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    if-ne v0, p0, :cond_0

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->D()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInCountDown()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {p0}, LQ6/j1;->isInCountDown()Z

    move-result p0

    return p0
.end method

.method public isInTapableRect(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->R()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->judgeTapableRectByUiStyle()Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0}, Lj6/f;->R()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0, v0}, Lwz/d;->u(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLiveShotStartedInHighSpecRecord()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMeteringAreaOnly()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isModeEditing()Z
    .locals 1

    invoke-static {}, LQ6/K0;->a()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ6/K0;

    invoke-interface {p0}, LQ6/K0;->im()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedMute()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isParallelSessionEnable()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isPostProcessing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPreviewNeedMirror()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReceiveDoubleTap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRecorderStoped()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRecorderStopping()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRepeatingRequestInProgress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSatCamera()Z
    .locals 1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActualCameraId()I

    move-result p0

    iget-object v0, v0, Lu6/f;->a:Lu6/b;

    invoke-interface {v0, p0}, Lu6/a;->B(I)Z

    move-result p0

    return p0
.end method

.method public isSaving()Z
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

.method public isSendFaceViewRect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/r;->mIsSendFaceViewRect:Z

    return p0
.end method

.method public isShot2GalleryOrEnableParallel()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isShowAeAfLockIndicator()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isShowCaptureButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStartCountCapture()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mTimerBurst:LQ6/j1;

    invoke-interface {p0}, LQ6/j1;->X3()Z

    move-result p0

    return p0
.end method

.method public isSupportAFSaliency()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAFSaliencyCheck"
        type = 0x0
    .end annotation

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->d1(I)Z

    move-result v0

    const-string v1, "BaseModule"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v3, 0xa7

    if-eq v0, v3, :cond_1

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "isSupportAFSaliency mSatMasterCameraId=2"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "wide"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "isSupportAFSaliency pro mode, lensType="

    invoke-static {v3, p0}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    const-string p0, "isSupportAFSaliency="

    invoke-static {p0, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public isSupportSunriseSunset()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportTapShoot()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final isTextureExpired()Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/module/X;->v()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0}, Lj6/f;->v()J

    move-result-wide v2

    cmp-long p0, v0, v2

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

.method public isVideoCastIntent()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isRemoteOnlineSupported"
        type = 0x0
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isWCGOn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getColorSpaceDescription()Lwu/a$k;

    move-result-object p0

    iget-object p0, p0, Lwu/a$k;->a:Lwu/a;

    sget-object v0, Lwu/a;->b:Lwu/a$d;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWaitingDoubleTapResult()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/r;->mDoubleTapedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isZoomEnabled()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public isZoomSegmentEnabled()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isZoomEnabled()Z

    move-result p0

    return p0
.end method

.method public isZslPreferred()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public judgeTapableRectByUiStyle()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v0, 0xe0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public keepAutoHibernation()V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget-boolean v0, v0, Lj6/a;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LQ6/g;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/D0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LF1/D0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->exitAutoHibernation()V

    const-string v0, "hibernation_time"

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lur/g;->f(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/32 v0, 0x2ab98

    :cond_1
    const-string v2, "keepAutoHibernation, delay millis: "

    invoke-static {v0, v1, v2}, LHs/a;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "BaseModule"

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x41

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public keepScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getWindowOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/S;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LCs/S;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public keepScreenOnAwhile()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->F7()Lvr/m;

    move-result-object v0

    iget-object v0, v0, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v0}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/r;->isNeedResetScreenOn:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/r;->isNeedResetScreenOn:Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public listenPhoneState(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/4 v1, 0x0

    const-string v2, "BaseModule"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/r;->mModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-static {v0, p1, p0}, LZb/t;->a(Landroid/media/AudioManager;Ljava/util/concurrent/ExecutorService;Landroid/media/AudioManager$OnModeChangedListener;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/r;->mModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-static {v0, p0}, LG8/i;->b(Landroid/media/AudioManager;Landroid/media/AudioManager$OnModeChangedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "It should not be here. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_1
    const-string p0, "listenPhoneState:params null,listen is returning."

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final lockScreenOrientation(Z)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/r;->lockScreenOrientation(ZLjava/lang/String;)V

    return-void
.end method

.method public final lockScreenOrientation(ZLjava/lang/String;)V
    .locals 10
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    .line 2
    const-string v0, "lockScreenOrientation E lock="

    const-string v1, ", scene="

    const-string v2, ", mCurrentLockScene="

    .line 3
    invoke-static {v0, v1, p2, v2, p1}, LB3/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/r;->mCurrentLockScene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fold state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v1

    invoke-virtual {v1}, Ls4/e;->b()Ls4/f$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BaseModule"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_9

    .line 6
    invoke-interface {v0}, Lcom/android/camera/module/X;->getModeUI()Ly3/s;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {}, LK2/e;->E()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/X;->qg()LY2/o;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 8
    iget-object v4, p0, Lcom/android/camera/module/r;->mCurrentLockScene:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "lockScreenOrientation skip, scene mismatch. current="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCurrentLockScene:Ljava/lang/String;

    const-string v0, ", request="

    .line 10
    invoke-static {p1, p0, v0, p2}, LF1/T2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v4, 0x0

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object p2, v4

    .line 12
    :goto_0
    iput-object p2, p0, Lcom/android/camera/module/r;->mCurrentLockScene:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 13
    sget-boolean p2, LJe/c;->k:Z

    .line 14
    sget-object p2, LJe/c$b;->a:LJe/c;

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, LJe/d;->d()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object p2

    invoke-virtual {p2}, Ls4/e;->b()Ls4/f$a;

    move-result-object p2

    sget-object v5, Ls4/f$a;->d:Ls4/f$a;

    if-ne p2, v5, :cond_4

    .line 18
    const-string p0, "lockScreenOrientation skip, phone folded!"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 19
    iget-boolean p2, p0, Lcom/android/camera/module/r;->mIsScreenOrientationLocked:Z

    if-eqz p2, :cond_5

    .line 20
    const-string p0, "lockScreenOrientation skip, locked."

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    const/4 p2, 0x3

    .line 21
    const-string v5, "ScreenOrientationManageExt"

    iget-object v6, v2, LY2/o;->c:LY2/o$a;

    if-eqz p1, :cond_6

    .line 22
    new-array v0, v1, [Ljava/lang/Object;

    const-string v7, "requestLock()"

    invoke-static {v5, v7, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    new-instance v0, LY2/q;

    invoke-direct {v0, v2, v4}, LY2/q;-><init>(LY2/o;LTu/e;)V

    invoke-static {v6, v4, v4, v0, p2}, Lyw/f;->b(Lyw/D;LTu/h;Lyw/F;Lev/p;I)Lyw/B0;

    goto :goto_2

    .line 24
    :cond_6
    invoke-static {}, LK2/b;->O()Z

    move-result v7

    if-eqz v7, :cond_7

    sget-boolean v7, LJe/c;->k:Z

    .line 25
    sget-object v7, LJe/c$b;->a:LJe/c;

    .line 26
    invoke-virtual {v7}, LJe/c;->i0()Z

    .line 27
    :cond_7
    invoke-interface {v0}, Lcom/android/camera/module/X;->getModeUI()Ly3/s;

    move-result-object v0

    invoke-interface {v0}, Ly3/s;->m()Ly3/q;

    move-result-object v0

    invoke-interface {v0}, Ly3/q;->f()I

    move-result v0

    .line 28
    iget v7, v2, LY2/o;->g:I

    const/4 v8, -0x1

    if-gt v8, v0, :cond_8

    const/16 v8, 0xe

    if-ge v0, v8, :cond_8

    goto :goto_1

    :cond_8
    move v0, v7

    .line 29
    :goto_1
    invoke-static {v0}, LY2/m;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "requestUnlock(): policy = "

    const-string v9, ", delayDuration = 0"

    .line 30
    invoke-static {v8, v7, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 31
    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    new-instance v5, LY2/t;

    invoke-direct {v5, v0, v4, v2}, LY2/t;-><init>(ILTu/e;LY2/o;)V

    invoke-static {v6, v4, v4, v5, p2}, Lyw/f;->b(Lyw/D;LTu/h;Lyw/F;Lev/p;I)Lyw/B0;

    .line 33
    :goto_2
    iput-boolean p1, p0, Lcom/android/camera/module/r;->mIsScreenOrientationLocked:Z

    .line 34
    const-string p0, "lockScreenOrientation X type="

    .line 35
    invoke-static {p0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 36
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public mapTapCoordinate(Ljava/lang/Object;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    instance-of v0, p1, Landroid/graphics/Point;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->t()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0}, Lj6/f;->t()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void

    :cond_0
    instance-of v0, p1, Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->t()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->t()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->t()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0}, Lj6/f;->t()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method public maySwitchCameraLens(FF)Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSatFallbackEnable"
        type = 0x2
    .end annotation

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/r;->handleZoomingIn(FF)Z

    move-result p0

    return p0

    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/r;->handleZoomingOut(FF)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public multiCapture()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public needDrawFace()Z
    .locals 0

    invoke-static {}, Lcom/android/camera/data/data/E;->j0()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public needFaceDetection()Z
    .locals 0

    invoke-static {}, LEv/G;->d()Z

    move-result p0

    return p0
.end method

.method public needKeepCoverView()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isEnableVideoPreviewThumbnail"
        type = 0x0
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public needPinFace()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p0

    invoke-interface {p0}, Lj6/f;->f()Z

    move-result p0

    return p0
.end method

.method public needShowAfGridView(Z)Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAfGridResults"
        type = 0x2
    .end annotation

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraApp:LW1/a;

    invoke-interface {p1, p0}, LW1/a;->Za(Lcom/android/camera/module/r;)Z

    move-result p0

    return p0
.end method

.method public needSkipDrawFace()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->needFaceDetection()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->needDrawFace()Z

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

.method public notifyExiting(Z)V
    .locals 0

    return-void
.end method

.method public notifyFirstFrameArrived(I)V
    .locals 5

    const-string v0, "notifyFirstFrameArrived "

    invoke-static {p1, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BaseModule"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LC4/j;

    const/4 v4, 0x4

    invoke-direct {v2, p0, v4}, LC4/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->d1(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, LF1/q4;->q:I

    iget p1, p1, LF1/q4;->r:I

    const-string/jumbo v2, "setFrameAvailable, initSaliencyChecker"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v2, Lcom/android/camera/module/l;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3, p0}, Lcom/android/camera/module/l;-><init>(IIILjava/lang/Object;)V

    const-wide/16 v3, 0x7d0

    invoke-static {v1, v2, v3, v4}, LAr/d;->g(Lio/reactivex/v;Ljava/lang/Runnable;J)Lio/reactivex/disposables/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/r;->mInitSaliencyCheckerDisposable:Lio/reactivex/disposables/b;

    :cond_1
    return-void
.end method

.method public notifyFocusAreaUpdate(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p0

    sget-object p1, Ltu/c;->c:Ltu/c;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lru/k;->k(Ltu/c;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BaseModule"

    const-string v1, "notifyFocusAreaUpdate not isAFSaliencyCheck"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->q0()Lu6/q;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lu6/q;->O([B)V

    const/4 p1, 0x3

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method public notifyUICreated(Lf6/A;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "notifyModuleUICreated "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BaseModule"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onActionPause()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onActionStop()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onActive()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->externalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->initializeCapabilities()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getZoomManager()Lf9/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lf9/a;->q(Lj9/e;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getApertureManager()LV1/f;

    move-result-object v0

    check-cast v0, LV1/c;

    invoke-virtual {v0}, LV1/c;->a0()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getExposureModeManager()LV1/g;

    move-result-object v0

    check-cast v0, LV1/d;

    invoke-virtual {v0}, LV1/d;->v()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->initializePreferences()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj9/a;->K0(Lj9/a$c;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iput-object p0, v0, Lj9/a;->g:Lcom/android/camera/module/r;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lj6/f;->Y0(Z)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/l;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, LCs/l;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/camera/module/W;->isPurePreview()Z

    move-result p0

    iput-boolean p0, v0, Lv2/D0;->R:Z

    return-void
.end method

.method public onActivityStop()V
    .locals 0

    return-void
.end method

.method public onAsdChanged(Lcom/android/camera/module/interceptor/base/d;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraApp:LW1/a;

    invoke-interface {v0, p0}, LW1/a;->n5(Lcom/android/camera/module/r;)Z

    move-result p0

    return p0
.end method

.method public onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onCameraAbnormal(II)V
    .locals 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCameraAbnormal: cameraId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModule"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogK;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object v2

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string p2, "camera.debug.skip_recover_from_provider_error"

    const/4 v3, 0x0

    invoke-static {p2, v3}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string/jumbo p0, "skip recovering from provider error"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, v3}, Lj6/j;->E(I)V

    invoke-interface {v0, p1}, Lcom/android/camera/module/X;->i8(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCameraError(I)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, p1}, Lj6/j;->s(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lj6/j;->E(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivity()Landroidx/fragment/app/l;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->onCameraException()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/camera/module/X;->Af(Lcom/android/camera/module/W;Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCameraException()V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCameraException: mid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BaseModule"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lvr/Z;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/X;->X1()Lcom/android/camera/module/W;

    move-result-object v2

    if-eq v2, p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onCameraException: module changed: prev = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "onCameraException: module changed: curr = "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/camera/module/X;->X1()Lcom/android/camera/module/W;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->l0()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->Z()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/module/X;->wl()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraApp:LW1/a;

    invoke-interface {v2, p0}, LW1/a;->Ie(Lcom/android/camera/module/r;)V

    invoke-interface {v0}, Lcom/android/camera/module/X;->Rh()V

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/module/X;->wl()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, LQg/n;->camera_disabled:I

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->j0()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/android/camera/module/X;->F3(IZ)V

    invoke-interface {v0}, Lcom/android/camera/module/X;->Rh()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->sendOpenFailMessage()V

    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LF6/c;->d()LF6/c;

    move-result-object p0

    invoke-virtual {p0}, Lbi/b;->clear()V

    return-void
.end method

.method public onCameraOpenedFail()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallbackOpt()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/x;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LF1/x;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->m0()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->onCameraException()V

    :cond_0
    return-void
.end method

.method public onCapabilityChanged(Lj9/e;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, p1}, Lj6/j;->f(Lj9/e;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCapabilityChanged: mFocusAreaSupported = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mAELockOnlySupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->y()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BaseModule"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    if-eqz v0, :cond_0

    check-cast v0, Lj6/a;

    iget v0, v0, Lj6/a;->d:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->getShootRotation(F)F

    move-result p0

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/camera/effect/EffectController;->Z(FZ)V

    :cond_0
    return-void
.end method

.method public onCoverViewShown()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0}, Lu6/q;->a()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->pausePreview()V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/e;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LEs/e;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/b0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/f;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LEs/f;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDeviceKeepMoving(D)Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-interface {p0}, Lu6/q;->Q()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LDn/D;

    const/16 v0, 0xe

    invoke-direct {p2, v0}, LDn/D;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return p0
.end method

.method public onDoublePointDown()Z
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/camera/module/W;->updateSATZooming(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDoublePointUp()Z
    .locals 1

    const/4 v0, -0x3

    invoke-interface {p0, v0}, Lcom/android/camera/module/W;->updateSATZooming(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onDoubleTapStartTrackFocus(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/r;->isSupportTrackFromZoom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/r;->mDoubleTapedTime:J

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LF1/D0;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LF1/D0;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->q0()Lu6/q;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lu6/q;->g(Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->mapTapCoordinate(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->q0()Lu6/q;

    move-result-object p1

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v2

    invoke-interface {v2}, Lj6/j;->T()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->c()Lj9/e;

    move-result-object v3

    invoke-static {v3}, Lj9/f;->d(Lj9/e;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {p1, v1, v0, v2, v3}, Lu6/q;->p(IILandroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDoubleTap rect "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BaseModule"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LGn/f;

    const/4 v2, 0x7

    invoke-direct {v1, p1, v2}, LGn/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->w0()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/o;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/module/o;-><init>(Lcom/android/camera/module/r;[Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onEarlyImageAvailable(Ljava/lang/String;[BIII)V
    .locals 0

    return-void
.end method

.method public onEvChanged(II)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/android/camera/module/W;->supportEvOverlap()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_7

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v3, Lr2/D0;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/D0;

    iget-object v3, v0, Lr2/D0;->b:Landroid/util/Range;

    if-nez v3, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "BaseModule"

    const-string p2, " exposureRange is null"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p2, v2, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->g0()I

    move-result v0

    add-int/2addr v0, p1

    if-le v0, v3, :cond_2

    goto :goto_0

    :cond_2
    if-ge v0, v4, :cond_3

    goto :goto_1

    :cond_3
    move p1, v0

    goto :goto_2

    :cond_4
    if-ne p2, v1, :cond_5

    iget-object v5, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v5, p1}, Lj6/j;->l(I)V

    :cond_5
    iget v5, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v5}, Lr2/D0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iget v0, v0, Lr2/D0;->c:F

    div-float/2addr v5, v0

    float-to-int v0, v5

    add-int/2addr p1, v0

    if-le p1, v3, :cond_6

    :goto_0
    move p1, v3

    goto :goto_2

    :cond_6
    if-ge p1, v4, :cond_7

    :goto_1
    move p1, v4

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, p1}, Lj6/j;->q(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, p2}, Lj6/j;->Y(I)V

    if-eq p2, v1, :cond_8

    if-ne p2, v2, :cond_9

    :cond_8
    iget-object p2, p0, Lcom/android/camera/module/r;->mTrackInfo:Lo8/a;

    iput p1, p2, Lo8/a;->a:I

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p2

    invoke-virtual {p2}, LWh/a;->g()LWh/a;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_camera_exposure_key"

    invoke-virtual {p2, v0, p1}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    invoke-virtual {p2}, LWh/a;->c()V

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object p1

    invoke-virtual {p1}, LBr/e;->k()V

    :cond_9
    const/16 p1, 0xc

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public onFinalImageAvailable(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onFlatSelfieOnFolded()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->onActionStop()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/camera/module/X;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    :cond_0
    return-void
.end method

.method public onFocusAreaChanged(II)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onFocusPositionChange(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2, p1}, Lj6/j;->S(I)V

    const/16 p1, 0x81

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void

    :cond_1
    const/4 p1, 0x4

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lj6/j;->S(I)V

    const/16 p1, 0x83

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onGradienterSwitched(Z)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportGradienter"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0, p1}, Lj6/f;->w(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    invoke-virtual {v0, p1}, LF1/i4;->m(Z)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object p1

    invoke-virtual {p1}, LF1/i4;->g()V

    const/4 p1, 0x2

    const/4 v0, 0x5

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method public onHdrSceneChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInactive()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInactive: E. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BaseModule"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/r;->mLocationReceivedListener:Lh6/b$a;

    invoke-virtual {v0, v2}, Lh6/b;->d(Lh6/b$a;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lj6/f;->o(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/b;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->c()V

    iput-object v2, p0, Lcom/android/camera/module/r;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/b;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    iput-object v2, v0, Lj9/a;->g:Lcom/android/camera/module/r;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, v1}, Lj6/j;->V0(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0, v1}, Lj6/j;->l(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    invoke-virtual {v0, v2}, LF1/i4;->s(LF1/i4$q;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0, v1}, Lj6/f;->r(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraApp:LW1/a;

    invoke-interface {v0}, LW1/a;->clear()V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->release()V

    const-string p0, "onInactive: X"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onInterceptEarlyImage(LRh/r;LRh/e;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRh/r<",
            "*>;",
            "LRh/e;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onInterceptThumbnailUpdate(LRh/r;LF1/w4;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRh/r<",
            "*>;",
            "LF1/w4;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/16 v0, 0x50

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->ignoreFocusKeyEvent(Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p1, v0}, Lj6/f;->Y0(Z)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LC3/c;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, LC3/c;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->handleLockFocus()V

    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->isExternal()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lgq/h;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-string p2, "key_external"

    iput-object p2, p1, Lgq/h;->a:Ljava/lang/String;

    new-instance p2, Lgq/f;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p2, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p2, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p2, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object p2, p1, Lgq/h;->b:Lgq/f;

    const-string p2, "attr_peer_device_name"

    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "attr_operate_state"

    const-string p2, "half_press_focus"

    invoke-virtual {p1, p2, p0}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lgq/h;->d()V

    :cond_0
    return v0

    :cond_1
    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class v0, LQ6/E0;

    invoke-virtual {p0, v0}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/module/f;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/module/f;-><init>(ILandroid/view/KeyEvent;)V

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

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/16 v0, 0x58

    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2

    const/16 v4, 0x19

    if-eq p1, v4, :cond_2

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_1

    const/16 v4, 0x42

    if-eq p1, v4, :cond_1

    const/16 v4, 0x50

    if-eq p1, v4, :cond_0

    const/16 v4, 0xc1

    if-eq p1, v4, :cond_2

    const/16 v4, 0x57

    if-eq p1, v4, :cond_2

    if-eq p1, v0, :cond_2

    goto :goto_3

    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/camera/module/r;->ignoreFocusKeyEvent(Z)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/camera/module/r;->cancelFocus(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0, v3}, Lj6/f;->Y0(Z)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LC4/E;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, LC4/E;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/camera/module/r;->parseKeyCameraTriggerMode(Landroid/view/KeyEvent;)I

    move-result p1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, LQg/n;->pref_camera_volumekey_function_entryvalue_shutter:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/android/camera/module/r;->performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V

    return v2

    :cond_2
    if-eq p1, v1, :cond_4

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    invoke-virtual {p0, v0, v3, p2, v1}, Lcom/android/camera/module/r;->handleVolumeKeyEvent(ZZLandroid/view/KeyEvent;Z)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    return v2

    :cond_7
    :goto_3
    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class v0, LQ6/E0;

    invoke-virtual {p0, v0}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object p0

    check-cast p0, LQ6/E0;

    if-eqz p0, :cond_8

    invoke-interface {p0, p1, p2}, LQ6/E0;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_8
    return v3
.end method

.method public onLayoutModeChanged(LZ5/h;LZ5/h;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onLayoutModeChanged "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "BaseModule"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLongPress(FF)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onMeteringAreaChanged(II)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onModuleReuse(Lcom/android/camera/module/X;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    const-string v2, "onModuleReuse: "

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/camera/module/r;->setModuleCallback(Lcom/android/camera/module/X;)V

    return-void
.end method

.method public onNewUriArrived(Landroid/net/Uri;ZLjava/lang/String;Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 0

    const/4 p3, -0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p3, Lj6/a;

    iput p1, p3, Lj6/a;->c:I

    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkActivityOrientation()V

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    move-object p1, p0

    check-cast p1, Lj6/a;

    iget p1, p1, Lj6/a;->b:I

    if-eq p1, p2, :cond_1

    check-cast p0, Lj6/a;

    iput p2, p0, Lj6/a;->b:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPreviewLayoutChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseModule"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p2, p1}, Lcom/android/camera/module/X;->Xk(ILandroid/graphics/Rect;)V

    invoke-interface {v0}, Lcom/android/camera/module/X;->l0()LF1/Y2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/w;->t0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p2, LF1/q4;->s:I

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    goto :goto_1

    :cond_1
    iget p2, p2, LF1/q4;->t:I

    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0, v1, p2}, Lu6/q;->N(II)V

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->q0()Lu6/q;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lu6/q;->p0(II)V

    :cond_2
    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->a()Landroid/util/Size;

    move-result-object p2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    if-eqz p2, :cond_3

    if-eqz p0, :cond_3

    iget-object p0, p0, Lj9/h0;->a:Lj9/i0;

    if-eqz p0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layoutPreviewSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | cameraPreviewSize: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | frameRatio:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lj9/i0;->b3:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LH8/q;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, LH8/q;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "BaseModule"

    const-string v0, "onCaptureResult: wait ui init."

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lru/k;->C()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/r;->mAsdInterceptorChain:Lcom/android/camera/module/interceptor/base/a;

    if-eqz v1, :cond_4

    iget-boolean v3, p0, Lcom/android/camera/module/r;->mAsdInterceptorChainDisabled:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    iget-object v1, v1, Lcom/android/camera/module/interceptor/base/a;->c:Lio/reactivex/i;

    if-nez v1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "ASDInterceptorChain"

    const-string v2, "onCaptureResult: emitter is null, returning."

    invoke-static {v1, v2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-interface {v1, p1}, Lio/reactivex/g;->onNext(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    invoke-interface {p0}, Lcom/android/camera/module/W;->isPurePreview()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/camera/module/r;->mFirstFrameArrived:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/module/r;->mFirstFrameArrived:Z

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v0, LC4/L;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, LC4/L;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onPreviewPixelsRead([BIILtu/c;Z)V
    .locals 10
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isEnableVideoPreviewThumbnail"
        type = 0x0
    .end annotation

    const-string v0, "onPreviewPixelsRead E: width="

    const-string v1, ", height="

    const-string v2, ", readPixelsType="

    invoke-static {p2, p3, v0, v1, v2}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pixels.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v8, "BaseModule"

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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
    const-string v0, "onPreviewPixelsRead isAFSaliencyCheck"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v9, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v0, Lcom/android/camera/module/n;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/n;-><init>(Lcom/android/camera/module/r;[BIILtu/c;Z)V

    invoke-static {v9, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_1
    const-string v0, "onPreviewPixelsRead X"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lru/k;->q()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreviewSessionSuccess mCallback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", renderEngine: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BaseModule"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onProcessorJpegFinish(LRh/r;)V
    .locals 0

    return-void
.end method

.method public onRemoteControlRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onRenderEngineCreate()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getColorSpaceDescription()Lwu/a$k;

    move-result-object v1

    iget-object v2, v1, Lwu/a$k;->a:Lwu/a;

    iget-object v3, v1, Lwu/a$k;->b:Lwu/a;

    invoke-interface {v0, v2, v3}, Lru/k;->z(Lwu/a;Lwu/a;)V

    new-instance v2, Lcom/android/camera/module/r$b;

    invoke-direct {v2, p0}, Lcom/android/camera/module/r$b;-><init>(Lcom/android/camera/module/r;)V

    invoke-interface {v0, v2}, Lru/k;->w(Ljava/util/function/Function;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraApp:LW1/a;

    invoke-interface {p0, v0}, LW1/a;->ei(Lru/k;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "onRenderEngineCreate, engine = "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRenderEngineDestroy()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraApp:LW1/a;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LW1/a;->ei(Lru/k;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "BaseModule"

    const-string v1, "onRenderEngineDestroy"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRenderRequested()V
    .locals 0

    return-void
.end method

.method public onSATMasterIdChanged(I)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSatFallbackEnable"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isSupportAFSaliency()Z

    move-result v1

    invoke-interface {v0, v1}, Lu6/q;->m(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0}, Lu6/q;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->q0()Lu6/q;

    move-result-object v0

    invoke-interface {v0}, Lu6/q;->S()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    const-string v2, "onPreviewMetaDataUpdate: restore continuous center focus by SatMasterCameraId changed."

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x19

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    :cond_0
    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/module/m;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/camera/module/m;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onScale(LH8/i;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0, p1}, Lf9/a;->onScale(LH8/i;)Z

    move-result p0

    return p0
.end method

.method public onScaleBegin(FF)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getZoomManager()Lf9/a;

    move-result-object p0

    invoke-interface {p0}, Lf9/a;->H0()Z

    move-result p0

    return p0
.end method

.method public onScaleEnd()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    const-string v2, "onScaleEnd()"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LV6/c;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LO5/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, LO5/a;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x3

    invoke-interface {p0, v0}, Lcom/android/camera/module/W;->updateSATZooming(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getZoomManager()Lf9/a;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lf9/a;->k0(I)V

    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onShineChanged(I)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureReleased()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public onSurfaceTextureUpdated(Lj3/b;)V
    .locals 0

    return-void
.end method

.method public onThermalConstrained()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

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

    invoke-virtual {p0}, Lcom/android/camera/module/r;->tryRemoveCountDownMessage()V

    :cond_2
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    return-void
.end method

.method public onWaitingFocusFinished()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p1}, Lj6/f;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/module/r;->isNeedResetScreenOn:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/r;->isNeedResetScreenOn:Z

    return-void
.end method

.method public openForShotWithWinFocus()V
    .locals 2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "BaseModule"

    const-string v1, "openForShotWithWinFocus"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public openSettingActivity()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p0}, Lcom/android/camera/module/X;->Vg()V

    return-void
.end method

.method public parseKeyCameraTriggerMode(Landroid/view/KeyEvent;)I
    .locals 2

    invoke-static {}, LQ6/L;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LV9/r5;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LV9/r5;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/H1;

    const/16 v0, 0x19

    invoke-direct {p1, v0}, LF1/H1;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/16 p0, 0xaa

    return p0

    :cond_0
    const/16 p0, 0x28

    return p0
.end method

.method public abstract pausePreview()V
.end method

.method public performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public playCameraSound(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/4 v1, 0x0

    const-string v2, "BaseModule"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->isNeedMute()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LF1/D3;->c()Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    return-void

    :cond_2
    const-string p0, "playCameraSound: play "

    invoke-static {p1, p0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF1/D3;->a()LF1/D3;

    move-result-object p0

    invoke-virtual {p0, p1}, LF1/D3;->i(I)V

    return-void

    :cond_3
    :goto_1
    const-string p0, "playCameraSound: return"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public preTransferOrientation(II)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/r;->getInitOrientation()I

    move-result p1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    move-object v0, p0

    check-cast v0, Lj6/a;

    iput p1, v0, Lj6/a;->c:I

    check-cast p0, Lj6/a;

    iput p2, p0, Lj6/a;->b:I

    return-void
.end method

.method public quickEnterAutoHibernation()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v0, Lj6/a;

    iget-boolean v0, v0, Lj6/a;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    const-string v2, "quickEnterAutoHibernation"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x42

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public recheckAndKeepAutoHibernation()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateAutoHibernation()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepAutoHibernation()V

    return-void
.end method

.method public registerProtocol()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    const-string v2, "registerProtocol"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getZoomManager()Lf9/a;

    move-result-object v0

    invoke-interface {v0}, Lf9/a;->registerProtocol()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getApertureManager()LV1/f;

    move-result-object v0

    check-cast v0, LV1/c;

    invoke-virtual {v0}, LV1/c;->registerProtocol()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getExposureModeManager()LV1/g;

    move-result-object p0

    check-cast p0, LV1/d;

    invoke-virtual {p0}, LV1/d;->registerProtocol()V

    return-void
.end method

.method public final release(Z)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "release: E"

    const-string v3, "BaseModule"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sget-object v2, LN6/h;->d:LN6/h;

    if-eqz v2, :cond_0

    iget v2, v2, LN6/h;->a:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->unRegisterProtocol()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->unRegisterModulePersistProtocol()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->onRenderEngineDestroy()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->notifyExiting(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->onInactive()V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, LC4/d;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LC4/d;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    const-string p0, "release: X"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public reportAccSensorError(FFFLjava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "X:%.4f, Y:%.4f, Z:%.4f"

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "AppMoudle"

    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "SensorName"

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "SensorData"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActualCameraId()I

    move-result p0

    invoke-virtual {p1, p0}, Lu6/f;->Q(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "RoleId"

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x36d63d1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p0, p3, p4, p2}, Lki/c;->a(IJLjava/util/HashMap;)V

    return-void
.end method

.method public resetEvValue(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/android/camera/module/W;->supportEvOverlap()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v1, Lr2/D0;

    invoke-virtual {p1, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/D0;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p1, v1}, Lr2/D0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget p1, p1, Lr2/D0;->c:F

    div-float/2addr v1, p1

    float-to-int p1, v1

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lj9/h0;->H(I)V

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updateEvValueForHdrColorReproduction(I)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj9/h0;->j(Z)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    invoke-virtual {v1}, LWh/a;->g()LWh/a;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "pref_camera_exposure_key"

    invoke-virtual {v1, v2, p1}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    invoke-virtual {v1}, LWh/a;->c()V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1, v0}, Lj6/j;->l(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    const-class v1, Lv2/D;

    invoke-virtual {p1, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/D;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/c;->reset(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lj9/h0;->H(I)V

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updateEvValueForHdrColorReproduction(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lj9/h0;->j(Z)V

    invoke-static {}, Lcom/android/camera/data/data/m;->v0()V

    :goto_0
    new-array p1, v0, [I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public resetFocusDistance()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-interface {v0, v1}, Lj6/j;->j(F)V

    const/16 v0, 0x82

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method public resetOrientation()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast p0, Lj6/a;

    const/4 v0, -0x1

    iput v0, p0, Lj6/a;->b:I

    return-void
.end method

.method public resetScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public restoreBottom()V
    .locals 2

    invoke-static {}, LQ6/h;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE3/i;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LE3/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract resumePreview()V
.end method

.method public resumePreviewInWorkThread()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public sendOpenFailMessage()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public sendZoomQuickEvent(Ljava/lang/String;F)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x7

    invoke-static {p1, p0}, LPh/h;->l(I[Ljava/lang/Object;)V

    return-void
.end method

.method public setActualCameraId(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, p1}, Lj6/j;->setActualCameraId(I)V

    return-void
.end method

.method public setAiAudioZoomLvManually(F)V
    .locals 0

    return-void
.end method

.method public setCameraCookie(Lhi/a$b;)V
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lhi/a$b;->b()Ljava/util/Set;

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

    check-cast v0, Lhi/a$a;

    iget-object v0, v0, Lhi/a$a;->g:Lj9/D0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enumerating: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BaseModule"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->getActualCameraId()I

    move-result v1

    iget v3, v0, Lj9/a;->a:I

    if-ne v3, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Module onCreate setCameraDevice="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", cameraId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/camera/module/r;->setCameraDevice(Lj9/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setDeparted()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BaseModule"

    const-string/jumbo v3, "setDeparted"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/reactivex/disposables/b;->c()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/r;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/b;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mInitSaliencyCheckerDisposable:Lio/reactivex/disposables/b;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/reactivex/disposables/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/r;->mInitSaliencyCheckerDisposable:Lio/reactivex/disposables/b;

    invoke-interface {v1}, Lio/reactivex/disposables/b;->c()V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/r;->mAsdInterceptorChain:Lcom/android/camera/module/interceptor/base/a;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sASDScheduler:Lio/reactivex/v;

    new-instance v3, LCs/q;

    const/16 v4, 0x9

    invoke-direct {v3, v1, v4}, LCs/q;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v3}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lj6/f;->d(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, v0}, Lj6/j;->setFrameAvailable(Z)V

    return-void
.end method

.method public setDisEnableAsdChain(Z)V
    .locals 3

    const-string/jumbo v0, "setDisEnableAsdChain: "

    invoke-static {v0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BaseModule"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/android/camera/module/r;->mAsdInterceptorChainDisabled:Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mAsdInterceptorChain:Lcom/android/camera/module/interceptor/base/a;

    if-eqz p0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/module/interceptor/base/a;->e:Z

    :cond_0
    return-void
.end method

.method public setEvValue()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->T0()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v2}, Lj9/h0;->j(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->T0()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->T0()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[VideoSwitch] setEvValue: mCameraManager.getEvValue() = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->S0()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BaseModule"

    invoke-static {v4, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->S0()I

    move-result v3

    invoke-virtual {v0, v3}, Lj9/h0;->H(I)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->T0()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->S0()I

    move-result v3

    if-eqz v3, :cond_4

    move v2, v1

    :cond_4
    invoke-virtual {v0, v2}, Lj9/h0;->j(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->S0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updateEvValueForHdrColorReproduction(I)V

    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "flashMode: "

    invoke-static {v0, p1}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BaseModule"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1, p1}, LEw/k;->j(ILjava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    iget v2, v2, Lcom/android/camera/c;->c:I

    invoke-static {v2}, Lcom/android/camera/data/data/j;->P1(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/w;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/w;

    iget-boolean v2, v2, Lr2/w;->c:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->u2()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lj9/a;->D0(I)V

    invoke-direct {p0, p1}, Lcom/android/camera/module/r;->updateFrontSoftLightStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setFocusDistance(Ljava/lang/Float;)V
    .locals 0

    return-void
.end method

.method public setFocusDistanceByGear()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->B()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->O()F

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/module/r;->calculateScrollFocusDistance(Lj9/e;FI)F

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lj9/h0;->J(I)V

    invoke-virtual {p0, v0}, Lj9/h0;->I(F)V

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 4

    const-string/jumbo v0, "setFrameAvailable "

    invoke-static {v0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BaseModule"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lj6/j;->setFrameAvailable(Z)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "setFrameAvailable: mCameraManager is null, module may be released or not initialized"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isRecording()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    const-class v0, Lv2/B0;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/B0;

    iget-object p1, p1, Lv2/B0;->s:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/B0;

    invoke-virtual {p1, v1}, Lv2/B0;->w(F)V

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/module/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/j;-><init>(Lcom/android/camera/module/r;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    new-instance p1, LDs/j;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LDs/j;-><init>(I)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public setNormalHDRTargetState(Z)V
    .locals 0

    return-void
.end method

.method public setParameter(Lk6/a;)V
    .locals 2

    iget-object v0, p1, Lk6/a;->a:Lcom/android/camera/module/X;

    invoke-direct {p0, v0}, Lcom/android/camera/module/r;->setModuleCallback(Lcom/android/camera/module/X;)V

    iget v0, p1, Lk6/a;->b:I

    iput v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget v0, p1, Lk6/a;->c:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/r;->checkScreenOrientation(I)V

    iget v0, p1, Lk6/a;->d:I

    iget v1, p1, Lk6/a;->e:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/r;->preTransferOrientation(II)V

    iget-object v0, p1, Lk6/a;->f:Ly3/t;

    iput-object v0, p0, Lcom/android/camera/module/r;->mModuleDevice:Ly3/t;

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    iget p1, p1, Lk6/a;->g:I

    invoke-interface {p0, p1}, Lj6/j;->H0(I)V

    return-void
.end method

.method public setRectAndUIStyle(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    iget-object p3, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p3, p1}, Lj6/f;->e(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p1, p2}, Lj6/f;->F(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0, p2}, Lj6/f;->i(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSendFaceViewRect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/r;->mIsSendFaceViewRect:Z

    return-void
.end method

.method public setSunriseSunsetTimestampByCurrentLocation(Landroid/location/Location;Z)V
    .locals 11

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v0

    iget-object v0, v0, Lh6/b;->a:Lh6/a;

    invoke-interface {v0, p1}, Lh6/a;->a(Landroid/location/Location;)Lh6/b$b;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-wide v1, p1, Lh6/b$b;->a:J

    iget-wide v3, p1, Lh6/b$b;->b:J

    iget-object p1, v0, Lj9/h0;->a:Lj9/i0;

    iget-wide v5, p1, Lj9/i0;->M2:J

    cmp-long v5, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    iput-wide v1, p1, Lj9/i0;->M2:J

    move p1, v7

    goto :goto_0

    :cond_0
    move p1, v6

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setSunriseTimestamp "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " changed="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v6, [Ljava/lang/Object;

    const-string v8, "CameraConfigManager"

    invoke-static {v8, v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lj9/U;

    const/4 v5, 0x1

    invoke-direct {v2, v0, v5}, Lj9/U;-><init>(Lj9/h0;I)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p1, v0, Lj9/h0;->a:Lj9/i0;

    iget-wide v9, p1, Lj9/i0;->N2:J

    cmp-long v2, v9, v3

    if-eqz v2, :cond_2

    iput-wide v3, p1, Lj9/i0;->N2:J

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSunsetTimestamp "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lj9/V;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lj9/V;-><init>(Lj9/h0;I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->resumePreviewInWorkThread()V

    :cond_4
    return-void
.end method

.method public setTrackRect(Landroid/graphics/Rect;I)V
    .locals 0

    return-void
.end method

.method public setupCameraConfigForSessionIfNeed(Lj6/j;)V
    .locals 1

    invoke-interface {p1}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Lga/y0;->V:Lga/D0;

    invoke-virtual {p0, v0}, Lj9/e;->w0(Lga/D0;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/E;->a0()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/j;->Z()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/j;->P()I

    move-result p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    iget-object p1, p1, Lj9/h0;->a:Lj9/i0;

    iput p0, p1, Lj9/i0;->V1:I

    :cond_2
    return-void
.end method

.method public shareFrame()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    const-string/jumbo v2, "shareFrame"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/X;->Xg()Lru/k;

    move-result-object v0

    sget-object v1, Ltu/c;->g:Ltu/c;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->d0()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ltu/b;->c:Ltu/b;

    goto :goto_0

    :cond_0
    sget-object p0, Ltu/b;->a:Ltu/b;

    :goto_0
    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lru/k;->k(Ltu/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public shouldCaptureDirectly()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public shouldCheckSatFallbackState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldReleaseLater()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public showAutoHibernationTip()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, LQg/n;->auto_hibernation_enter_tip_v2:I

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mode/capture/G;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/camera/features/mode/capture/G;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public showConfirmMessage(II)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mDialog:Lmiuix/appcompat/app/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/r;->mTitleId:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/camera/module/r;->mMessageId:I

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mDialog:Lmiuix/appcompat/app/h;

    invoke-virtual {v0}, Lmiuix/appcompat/app/h;->dismiss()V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/camera/module/r;->mTitleId:I

    iput p2, p0, Lcom/android/camera/module/r;->mMessageId:I

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActivityOpt()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/camera/module/h;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/module/i;-><init>(Lcom/android/camera/module/r;II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public showFocusViewWhenCaf()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p0}, Lj6/f;->E()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public startFocus()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "BaseModule"

    const-string/jumbo v2, "startFocus"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->Z0()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/camera/module/loader/camera2/FocusTask;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/camera/module/loader/camera2/FocusTask;-><init>(I)V

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v0, v1, v2}, Lj9/a;->Z0(Lcom/android/camera/module/loader/camera2/FocusTask;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lj9/a;->p0()I

    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->q0()Lu6/q;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-virtual {v0}, Lj9/a;->W()Z

    move-result v0

    invoke-interface {p0, v0}, Lu6/q;->f(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public startTimerCapture(I)V
    .locals 0

    return-void
.end method

.method public stopCameraSound()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isNeedMute()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LF1/D3;->c()Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "BaseModule"

    const-string/jumbo v1, "stop CameraSound: play "

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF1/D3;->a()LF1/D3;

    move-result-object p0

    invoke-virtual {p0}, LF1/D3;->o()V

    return-void
.end method

.method public stopFaceDetection(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->O()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, LJe/d;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "CameraConfigManager"

    const-string/jumbo v3, "stopFaceDetection"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v3, v2, Lj9/i0;->N0:Z

    if-eqz v3, :cond_2

    iput-boolean v1, v2, Lj9/i0;->N0:Z

    :cond_2
    invoke-virtual {v0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lj9/G;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lj9/G;-><init>(Lj9/h0;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lj6/f;->B(Z)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/G1;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, LF1/G1;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mPendingTasks:Lvr/O;

    new-instance v2, Lcom/android/camera/module/p;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/module/p;-><init>(Lcom/android/camera/module/r;Z)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {v0, v2, p1}, Lvr/O;->c(Lio/reactivex/functions/a;Lio/reactivex/v;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p0

    invoke-interface {p0, v1}, Lj6/f;->z(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public supportScreenOrientation(I)I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    return p1
.end method

.method public final thermalConstrained()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/camera/module/H0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/H0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClassSimpleName"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->getActualCameraId()I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": mid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const-string v3, ", cid = "

    const-string v4, ", created = "

    invoke-static {v1, v2, v3, v0, v4}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isCreated()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", departed = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeparted()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trackGeneralInfo(ZLx4/s;ZILjava/lang/Boolean;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/module/r;->trackGeneralInfo(ZLx4/s;ZILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-void
.end method

.method public trackGeneralInfo(ZLx4/s;ZILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallbackOpt()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/Q1;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LF1/Q1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LEs/a;-><init>(I)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallbackOpt()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LU4/g;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, LU4/g;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LU4/h;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, LU4/h;-><init>(I)V

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v2, LL7/a$a;

    invoke-direct {v2}, LL7/a$a;-><init>()V

    .line 7
    invoke-static {}, Lcom/android/camera/data/data/E;->I()Z

    move-result v3

    .line 8
    iput-boolean v3, v2, LL7/a$a;->x:Z

    .line 9
    iput-boolean p1, v2, LL7/a$a;->a:Z

    .line 10
    iput-boolean p3, v2, LL7/a$a;->b:Z

    .line 11
    iget p1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    .line 12
    iput p1, v2, LL7/a$a;->c:I

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p1

    invoke-interface {p1}, Lj6/f;->S()I

    move-result p1

    .line 14
    iput p1, v2, LL7/a$a;->d:I

    .line 15
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lu2/Q;->O()Z

    move-result p1

    .line 17
    iput-boolean p1, v2, LL7/a$a;->e:Z

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getActualCameraId()I

    move-result p1

    .line 19
    iput p1, v2, LL7/a$a;->f:I

    .line 20
    iput-object p2, v2, LL7/a$a;->g:Lx4/s;

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getMutexModePicker()LF1/E3;

    move-result-object p1

    invoke-virtual {p1}, LF1/E3;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 22
    iput-object p1, v2, LL7/a$a;->h:Ljava/lang/Boolean;

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object p1

    invoke-interface {p1}, Lj6/f;->C()Ljava/lang/String;

    move-result-object p1

    .line 24
    iput-object p1, v2, LL7/a$a;->i:Ljava/lang/String;

    .line 25
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraSetting:LO6/a;

    .line 26
    invoke-interface {p1}, LO6/a;->Mh()I

    move-result p1

    .line 27
    iput p1, v2, LL7/a$a;->j:I

    .line 28
    iget-object p1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 29
    invoke-interface {p1}, Lj6/j;->K0()Lj9/h0;

    move-result-object p1

    .line 30
    iget-object p1, p1, Lj9/h0;->a:Lj9/i0;

    .line 31
    iget p1, p1, Lj9/i0;->m3:I

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 33
    iput-object p1, v2, LL7/a$a;->k:Ljava/lang/Integer;

    .line 34
    iput-object p5, v2, LL7/a$a;->l:Ljava/lang/Boolean;

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getTrackInfo()Lo8/a;

    move-result-object p1

    .line 36
    iget p1, p1, Lo8/a;->a:I

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 38
    iput-object p1, v2, LL7/a$a;->m:Ljava/lang/Integer;

    .line 39
    iput-object v0, v2, LL7/a$a;->n:Ljava/lang/String;

    .line 40
    iput-object v1, v2, LL7/a$a;->o:Ljava/lang/Integer;

    .line 41
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 42
    iput-object p1, v2, LL7/a$a;->p:Ljava/lang/Integer;

    .line 43
    invoke-static {}, Lcom/android/camera/data/data/w;->u0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 44
    iput-object p1, v2, LL7/a$a;->q:Ljava/lang/Boolean;

    .line 45
    iput-object p6, v2, LL7/a$a;->r:Ljava/lang/String;

    .line 46
    iput-object p7, v2, LL7/a$a;->s:Ljava/lang/Boolean;

    .line 47
    iput-object p8, v2, LL7/a$a;->t:Ljava/lang/Long;

    .line 48
    iput-object p9, v2, LL7/a$a;->u:Ljava/lang/Integer;

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getTrackInfo()Lo8/a;

    move-result-object p1

    .line 50
    iget-object p1, p1, Lo8/a;->d:Ljava/lang/Float;

    .line 51
    iput-object p1, v2, LL7/a$a;->v:Ljava/lang/Float;

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getTrackInfo()Lo8/a;

    move-result-object p1

    .line 53
    iget-object p1, p1, Lo8/a;->c:Ljava/lang/String;

    .line 54
    iput-object p1, v2, LL7/a$a;->w:Ljava/lang/String;

    .line 55
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    .line 56
    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    invoke-static {p0}, Lj9/f;->Q3(Lj9/e;)Z

    move-result p0

    .line 57
    iput-boolean p0, v2, LL7/a$a;->y:Z

    .line 58
    invoke-virtual {v2}, LL7/a$a;->a()LL7/a;

    move-result-object p0

    .line 59
    new-instance p1, Lgq/h;

    .line 60
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-string p2, "key_capture"

    iput-object p2, p1, Lgq/h;->a:Ljava/lang/String;

    .line 61
    new-instance p2, Lgq/f;

    .line 62
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p2, Lgq/f;->a:Ljava/util/LinkedHashMap;

    .line 64
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p2, Lgq/f;->b:Ljava/util/LinkedHashMap;

    .line 65
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p2, Lgq/f;->e:Ljava/util/LinkedHashMap;

    .line 66
    iput-object p2, p1, Lgq/h;->b:Lgq/f;

    .line 67
    invoke-virtual {p1, p0}, Lgq/h;->a(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1}, Lgq/h;->d()V

    return-void
.end method

.method public trackKeyShutterEvent(Landroid/view/KeyEvent;ZI)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, LQ6/Z0;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/j;->H0(I)Z

    move-result v6

    new-instance p0, Lgq/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_external"

    iput-object v0, p0, Lgq/h;->a:Ljava/lang/String;

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

    iput-object v0, p0, Lgq/h;->b:Lgq/f;

    new-instance v1, Llq/a;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Llq/a;-><init>(ZLandroid/view/KeyEvent;ZIZ)V

    invoke-virtual {p0, v1}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgq/h;->d()V

    return-void
.end method

.method public trackModeCustomInfo(Lqh/g;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public trackPictureTaken(Lqh/g;)V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p1, Lqh/g;->j:LN1/n;

    if-eqz v0, :cond_1

    iget v0, v0, LN1/n;->b:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "ai_watermark"

    invoke-static {v1}, Lgq/h$a;->a(Ljava/lang/String;)Lgq/h;

    move-result-object v2

    new-instance v3, Leq/a;

    iget-object v4, p1, Lqh/g;->j:LN1/n;

    iget-object v5, v4, LN1/n;->a:Ljava/lang/String;

    iget-boolean v4, v4, LN1/n;->l:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    iget v6, p1, Lqh/g;->k:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v5, v4, v6}, Leq/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lgq/h;->d()V

    invoke-static {v1}, Lgq/h$a;->a(Ljava/lang/String;)Lgq/h;

    move-result-object v1

    sget-object v2, Ldq/e;->a:Landroid/util/SparseArray;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const-string v0, "ai_watermark_ai"

    goto :goto_0

    :pswitch_1
    const-string v0, "ai_watermark_manual"

    :goto_0
    const-string v2, "ai_watermark_category"

    invoke-virtual {v1, v0, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lgq/h;->d()V

    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->trackModeCustomInfo(Lqh/g;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public tryRemoveCountDownMessage()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public unRegisterModulePersistProtocol()V
    .locals 2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "BaseModule"

    const-string/jumbo v1, "unRegisterModulePersist"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    const-string/jumbo v2, "unRegisterProtocol"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getZoomManager()Lf9/a;

    move-result-object v0

    invoke-interface {v0}, Lf9/a;->unRegisterProtocol()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getApertureManager()LV1/f;

    move-result-object v0

    check-cast v0, LV1/c;

    invoke-virtual {v0}, LV1/c;->unRegisterProtocol()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getExposureModeManager()LV1/g;

    move-result-object p0

    check-cast p0, LV1/d;

    invoke-virtual {p0}, LV1/d;->unRegisterProtocol()V

    return-void
.end method

.method public updateAntiBanding(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0, p1}, LEw/k;->j(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    iget-object v2, v1, Lj9/e;->v0:[I

    if-nez v2, :cond_1

    iget-object v2, v1, Lj9/e;->d:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Lj9/e;->v0:[I

    :cond_1
    iget-object v1, v1, Lj9/e;->v0:[I

    invoke-static {v0, v1}, Lvr/e;->l(I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "antiBanding: "

    invoke-static {v1, p1}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BaseModule"

    invoke-static {v2, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lj9/h0;->o(I)V

    :cond_2
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

    iget-object v0, p0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/data/data/j;->m0(I)Z

    move-result p0

    check-cast v0, Lj6/a;

    iput-boolean p0, v0, Lj6/a;->e:Z

    return-void
.end method

.method public updateAutoHibernationFirstRecordingTime()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    return-void
.end method

.method public updateCamSensorResult(ZIJ)V
    .locals 0

    iget-object p2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p2}, Lj6/j;->V()Lj9/a;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, p1}, Lj6/j;->A(Z)V

    return-void
.end method

.method public updateCameraScreenNailSize(II)V
    .locals 3

    const-string/jumbo v0, "updateCameraScreenNailSize: "

    const-string/jumbo v1, "x"

    invoke-static {p1, p2, v0, v1}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BaseModule"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/camera/module/X;->p0(II)V

    :cond_0
    return-void
.end method

.method public updateCloseFocus()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isCloseFocusSupport"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lj6/f;->T(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->P()Z

    move-result v1

    invoke-virtual {v0, v1}, Lj9/h0;->t(Z)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lj9/h0;->t(Z)V

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    invoke-static {v0}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/data/data/E;->v0(IZ)V

    :cond_0
    return-void
.end method

.method public updateESPDisplay()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPresentationDisplay"
        type = 0x0
    .end annotation

    invoke-static {}, Lcom/android/camera/data/data/m;->V0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/data/data/m;->P()Z

    move-result v0

    invoke-virtual {p0, v0}, Lj9/h0;->D(Z)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lj9/h0;->D(Z)V

    return-void
.end method

.method public updateEvValueForHdrColorReproduction(I)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportHighDynamicColorRepFromFilter"
        type = 0x2
    .end annotation

    return-void
.end method

.method public updateFlashPreference()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public updateFocusAreaForAF(II)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/r;->isSupportAFSaliency()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->q0()Lu6/q;

    move-result-object v1

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->q0()Lu6/q;

    move-result-object v3

    invoke-interface {v3}, Lu6/q;->q()[B

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v4}, Lj6/j;->o0()I

    move-result v4

    iget-object v5, v0, Lcom/android/camera/module/r;->mAppStateMgr:Lj6/b;

    check-cast v5, Lj6/a;

    iget v5, v5, Lj6/a;->c:I

    const/16 v6, 0x5a

    invoke-static {v4, v5, v6}, LBw/i;->H(III)I

    move-result v4

    invoke-interface {v1, v4, v3}, Lu6/q;->F(I[B)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v1

    invoke-interface {v1}, Lj6/j;->T()Landroid/graphics/Rect;

    move-result-object v13

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->d(Lj9/e;)Landroid/graphics/Rect;

    move-result-object v14

    iget-object v1, v0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {v1}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v1

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->q0()Lu6/q;

    move-result-object v3

    invoke-interface {v3, v13, v14}, Lu6/q;->G(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v2, v4

    :cond_2
    invoke-virtual {v1, v2}, LF1/i4;->l(Z)V

    if-eqz v9, :cond_3

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->q0()Lu6/q;

    move-result-object v10

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-interface/range {v10 .. v16}, Lu6/q;->e(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "CameraConfigManager"

    const-string/jumbo v5, "setSaliencyOriginAFRegions"

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lj9/h0;->a:Lj9/i0;

    iget-object v5, v3, Lj9/i0;->d:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iput-object v2, v3, Lj9/i0;->d:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {v1}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lj9/G;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v5}, Lj9/G;-><init>(Lj9/h0;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->q0()Lu6/q;

    move-result-object v3

    const/4 v8, 0x1

    move/from16 v5, p2

    move v2, v4

    move-object v6, v13

    move-object v7, v14

    move/from16 v4, p1

    invoke-interface/range {v3 .. v9}, Lu6/q;->e(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lj9/h0;->g([Landroid/hardware/camera2/params/MeteringRectangle;)V

    if-eqz v9, :cond_4

    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v3, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->q0()Lu6/q;

    move-result-object v3

    invoke-interface {v3}, Lu6/q;->I()Z

    move-result v3

    invoke-virtual {v1, v3}, Lj9/h0;->S(Z)V

    :cond_4
    iget-object v1, v0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    new-instance v3, Lcom/android/camera/module/loader/camera2/FocusTask;

    invoke-direct {v3, v2}, Lcom/android/camera/module/loader/camera2/FocusTask;-><init>(I)V

    iget v0, v0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v1, v3, v0}, Lj9/a;->Z0(Lcom/android/camera/module/loader/camera2/FocusTask;I)V

    return-void

    :cond_5
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "BaseModule"

    const-string/jumbo v2, "updateFocusAreaForAF: isAlive false"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateFocusDistance()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->w0()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/z;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, LC4/z;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateFoldState()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFoldState"
        type = 0x2
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v0

    invoke-virtual {v0}, Ls4/e;->a()I

    move-result v0

    invoke-virtual {p0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lj9/j;

    invoke-direct {v1, v0}, Lj9/j;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateModuleRelated()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "BaseModule"

    const-string/jumbo v1, "updateModuleRelated, camera device is null "

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->o0()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lj9/a;->L0(II)V

    return-void
.end method

.method public updateOpMode()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getOperatingMode()I

    move-result p0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    iget-object v0, v0, Lu6/f;->a:Lu6/b;

    invoke-interface {v0}, Lu6/a;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    iget-object v0, v0, Lu6/f;->a:Lu6/b;

    invoke-virtual {v0}, Lu6/b;->P()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj9/e;

    invoke-static {p0, v2}, Lj9/f;->Y4(ILj9/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lj9/e;->I7:Lj9/e$a;

    const-string/jumbo v0, "setsOperatingMode mode = "

    const-string v2, ", sOperatingMode = "

    invoke-static {p0, v0, v2}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lj9/e;->J7:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CameraCapabilities"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput p0, Lj9/e;->J7:I

    return-void
.end method

.method public final varargs updatePreferenceInWorkThread([I)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/b;

    const/4 v1, 0x0

    const-string v2, "BaseModule"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "types:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mUpdateWorkThreadEmitter:Lio/reactivex/r;

    invoke-interface {p0, p1}, Lio/reactivex/g;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "the mUpdateWorkThreadDisposable is not available."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mUpdateWorkThreadDisposable:Lio/reactivex/disposables/b;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs updatePreferenceTrampoline([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/r;->consumePreference(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updatePreviewSurface()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkDisplayOrientation()V

    return-void
.end method

.method public updateSessionParams()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updateSessionParams(Lj6/j;)V

    return-void
.end method

.method public updateSessionParams(Lj6/j;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->setupCameraConfigForSessionIfNeed(Lj6/j;)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleDevice:Ly3/t;

    invoke-interface {p0, p1}, Ly3/t;->d(Lj6/j;)V

    return-void
.end method

.method public updateSmartScene()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BaseModule"

    const-string/jumbo v3, "updateSmartScene: "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/n0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/n0;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget v2, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v1, v2}, Lv2/n0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v1, v3}, Lv2/n0;->isSupportMode(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v3}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v1, v3, v0}, Lv2/n0;->p(II)Z

    move-result v3

    iget v4, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {v4, v3}, Lcom/android/camera/data/data/E;->y0(IZ)V

    :cond_2
    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v1, v3}, Lv2/n0;->isSupportMode(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3}, Lu2/Q;->O()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/data/data/w;->J()Z

    move-result v3

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v4, Le2/k;

    invoke-direct {v4, v3, v0, v2}, Le2/k;-><init>(III)V

    iput-object v4, v1, Lv2/n0;->b:Le2/k;

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-virtual {v1, p0}, Lv2/n0;->r(I)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LHs/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LHs/c;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public updateSunriseSunsetTimestamp()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSunriseTime"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isSupportSunriseSunset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lga/A0;->k3:Lga/D0;

    invoke-virtual {v2}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lga/A0;->l3:Lga/D0;

    invoke-virtual {v2}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v0

    iget-object v0, v0, Lh6/b;->a:Lh6/a;

    invoke-interface {v0}, Lh6/a;->c()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/r;->setSunriseSunsetTimestampByCurrentLocation(Landroid/location/Location;Z)V

    if-nez v0, :cond_1

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/r;->mLocationReceivedListener:Lh6/b$a;

    invoke-virtual {v0, p0}, Lh6/b;->e(Lh6/b$a;)V

    :cond_1
    return-void

    :cond_2
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "BaseModule"

    const-string v1, "current module does not support SunriseSunsetTimestamp"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateThermalLevel()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->P0()V

    return-void
.end method

.method public updateTrackFocus()V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportTrackFocus"
        type = 0x2
    .end annotation

    iget v0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    const/16 v1, 0xa3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v4, Lr2/G;

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/G;

    invoke-virtual {v1, v0}, Lr2/G;->isSwitchOn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->L1(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/r;->isTrackFocusOn()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    const-string/jumbo v4, "updateTrackFocus, traceFocusOn: "

    const-string v5, "BaseModule"

    invoke-static {v4, v5, v1}, LF1/t2;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v4, v1}, Lj6/f;->I(Z)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v4}, Lj6/f;->E()Z

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setTrackFocusEnable "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "CameraConfigManager"

    invoke-static {v7, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v1, Lj9/h0;->a:Lj9/i0;

    iget-boolean v6, v5, Lj9/i0;->P2:Z

    if-eq v6, v4, :cond_4

    iput-boolean v4, v5, Lj9/i0;->P2:Z

    invoke-virtual {v1}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LA3/l;

    const/16 v6, 0x9

    invoke-direct {v5, v1, v6}, LA3/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    if-nez v0, :cond_6

    iget p0, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/data/data/w;->C0(I)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :cond_6
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setTrackFocusFeatureEnable "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v7, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, v1, Lj9/h0;->a:Lj9/i0;

    iget-boolean v0, p0, Lj9/i0;->S2:Z

    if-eq v0, v2, :cond_7

    iput-boolean v2, p0, Lj9/i0;->S2:Z

    :cond_7
    return-void
.end method

.method public updateUltraWideLDC()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/module/r;->shouldApplyUltraWideLDC()Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setUltraWideLDC: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraConfigManager"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lj9/h0;->a:Lj9/i0;

    iget-boolean v4, v2, Lj9/i0;->G0:Z

    if-eq v4, v1, :cond_0

    iput-boolean v1, v2, Lj9/i0;->G0:Z

    invoke-virtual {v0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lj9/N;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lj9/N;-><init>(Lj9/h0;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lga/A0;->j1:Lga/D0;

    invoke-virtual {v1}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/data/data/w;->D0()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSATUltraWideLDC: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lj9/p;

    invoke-direct {v2, p0, v0}, Lj9/p;-><init>(Lj9/h0;Z)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method
