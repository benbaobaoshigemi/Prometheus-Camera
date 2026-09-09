.class public abstract Lcom/android/camera/module/pano/PanoramaModuleBase;
.super Lcom/android/camera/module/r;
.source "SourceFile"

# interfaces
.implements LQ6/q;


# static fields
.field private static final MAX_BURST_BUFFER_SIZE:I = 0x4

.field private static final SENSOR_LIST:I = 0x9a

.field private static final TAG:Ljava/lang/String; = "PanoramaModuleBase"


# instance fields
.field protected mCameraOrientation:I

.field protected mGoalAngle:I

.field protected mGoalAngleVertical:I

.field protected final mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

.field private mIsRegisterSensorListener:Z

.field protected mIsVertical:Z

.field protected mMistatsStopMode:Ljava/lang/String;

.field protected mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

.field protected mPictureHeight:I

.field protected mPictureWidth:I

.field protected mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

.field protected mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

.field protected mSensorInfoManagerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/panorama/SensorInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorStateListener:LF1/i4$q;

.field protected mSmallPreviewHeight:I

.field protected mSmallPreviewHeightVertical:I

.field protected mThumbnailViewSize:Landroid/util/Size;

.field protected mViewAngleH:F

.field protected mViewAngleV:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/r;-><init>()V

    new-instance v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    invoke-direct {v0}, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    new-instance v0, Lcom/android/camera/module/pano/PanoramaModuleBase$a;

    invoke-direct {v0, p0}, Lcom/android/camera/module/pano/PanoramaModuleBase$a;-><init>(Lcom/android/camera/module/pano/PanoramaModuleBase;)V

    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorStateListener:LF1/i4$q;

    return-void
.end method

.method public static synthetic Ua(Landroid/view/Window;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->lambda$handleMessage$6(Landroid/view/Window;)V

    return-void
.end method

.method public static synthetic Vb(Lcom/android/camera/module/X;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->lambda$registerProtocol$0(Lcom/android/camera/module/X;)V

    return-void
.end method

.method public static synthetic Wb(Landroid/view/Window;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->lambda$handleMessage$5(Landroid/view/Window;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/pano/PanoramaModuleBase;)Lj6/f;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/pano/PanoramaModuleBase;)Lj6/j;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    return-object p0
.end method

.method public static synthetic gc(Lcom/android/camera/module/pano/PanoramaModuleBase;Lcom/android/camera/module/X;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/pano/PanoramaModuleBase;->lambda$registerSensorListener$2(Lcom/android/camera/module/X;)V

    return-void
.end method

.method private getBestPanoPictureSize(Ljava/util/List;I)Landroid/util/Size;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;I)",
            "Landroid/util/Size;"
        }
    .end annotation

    iget v3, p0, Lcom/android/camera/module/r;->mModuleIndex:I

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->o0()I

    move-result v4

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object v5

    const/4 v1, 0x0

    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, LF1/H3;->i(Ljava/util/List;IIIILj9/e;)V

    invoke-static {}, LF1/H3;->b()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private getThumbnailViewSize()Landroid/util/Size;
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/O0;

    invoke-virtual {v0, v1}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object v0

    check-cast v0, LQ6/O0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0}, LQ6/O0;->E7()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mIsVertical:Z

    invoke-interface {v0}, LQ6/O0;->Cj()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance p0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mIsVertical:Z

    if-eqz p0, :cond_4

    const p0, 0x7f071293

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v1, 0x7f071294

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/camera/data/data/E;->e()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    const v1, 0x7f071288    # 1.79542E38f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p0, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static synthetic ic(Lcom/android/camera/module/pano/PanoramaModuleBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->lambda$notifyFirstFrameArrived$4()V

    return-void
.end method

.method private static synthetic lambda$handleMessage$5(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$6(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private synthetic lambda$notifyFirstFrameArrived$4()V
    .locals 1

    sget-object v0, Le2/m;->t:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method private static synthetic lambda$registerProtocol$0(Lcom/android/camera/module/X;)V
    .locals 4

    invoke-interface {p0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object p0

    const-class v0, LQ6/C;

    const-class v1, LQ6/P;

    const-class v2, LQ6/V0;

    const-class v3, LQ6/B0;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp6/b;->d([Ljava/lang/Class;)V

    return-void
.end method

.method private lambda$registerSensorListener$2(Lcom/android/camera/module/X;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorStateListener:LF1/i4$q;

    invoke-virtual {v0, p0}, LF1/i4;->s(LF1/i4$q;)V

    invoke-interface {p1}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object p0

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->I2()Z

    move-result p1

    const/16 v0, 0x9a

    invoke-virtual {p0, v0, p1}, LF1/i4;->j(IZ)V

    return-void
.end method

.method private static synthetic lambda$unRegisterProtocol$1(Lcom/android/camera/module/X;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/camera/module/X;->ic()Lp6/b;

    move-result-object p0

    invoke-virtual {p0}, Lp6/b;->c()V

    return-void
.end method

.method private static synthetic lambda$unRegisterSensorListener$3(Lcom/android/camera/module/X;)V
    .locals 2

    invoke-interface {p0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LF1/i4;->s(LF1/i4$q;)V

    invoke-interface {p0}, Lcom/android/camera/module/X;->Wj()LF1/i4;

    move-result-object p0

    const/16 v0, 0x9a

    invoke-virtual {p0, v0}, LF1/i4;->t(I)V

    return-void
.end method

.method public static synthetic oa(Lcom/android/camera/module/X;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->lambda$unRegisterSensorListener$3(Lcom/android/camera/module/X;)V

    return-void
.end method

.method private registerSensorListener()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mIsRegisterSensorListener:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mIsRegisterSensorListener:Z

    new-instance v0, Lcom/android/camera/panorama/GyroscopeRoundDetector;

    invoke-direct {v0}, Lcom/android/camera/panorama/GyroscopeRoundDetector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

    iget-object v0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LE4/f;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, LE4/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private setupCaptureParams()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->V()Lj9/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lj9/h0;->J(I)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lj9/h0;->f0(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj9/a;->D0(I)V

    invoke-static {}, Lcom/android/camera/data/data/w;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->K0()Lj9/h0;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lj9/h0;->o(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "antiBanding="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PanoramaModuleBase"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->isZslPreferred()Z

    move-result v2

    invoke-virtual {v0, v2}, Lj9/h0;->G(Z)V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    invoke-virtual {p0, v1}, Lj9/h0;->F(Z)V

    :cond_0
    return-void
.end method

.method private startSession()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->K0()Lj9/h0;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v3}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v3}, Lj9/h0;->R(Landroid/util/Size;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->a()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v2, v1}, Lj9/a;->u0(Landroid/util/Size;)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v2, v1}, Lj9/a;->P0(Landroid/util/Size;)V

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lj9/a;->O0(I)V

    const/16 v1, 0x23

    invoke-virtual {v2, v1}, Lj9/a;->N0(I)V

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lcom/android/camera/module/X;->v()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lj6/f;->J(J)V

    invoke-interface {v0}, Lcom/android/camera/module/X;->getSurfaceTexture()LEu/a;

    move-result-object v0

    invoke-virtual {v0}, LEu/a;->a()Landroid/view/Surface;

    move-result-object v3

    sget-boolean v0, LJe/d;->i:Z

    xor-int/lit8 v4, v0, 0x1

    iget v6, p0, Lcom/android/camera/module/r;->mOperatingMode:I

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lj9/a;->g1(Landroid/view/Surface;ILandroid/view/Surface;IZLj9/a$d;)V

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "PanoramaModuleBase"

    const-string/jumbo v1, "startSession: camera has been closed"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic ub(Lcom/android/camera/module/X;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->lambda$unRegisterProtocol$1(Lcom/android/camera/module/X;)V

    return-void
.end method

.method private unRegisterSensorListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mIsRegisterSensorListener:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mIsRegisterSensorListener:Z

    iget-object p0, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE4/e;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, LE4/e;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    iget v1, v0, Lj9/e;->b:I

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lj9/e;->i0(II)Ljava/util/List;

    move-result-object v0

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H0()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/pano/PanoramaModuleBase;->getBestPanoPictureSize(Ljava/util/List;I)Landroid/util/Size;

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

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureWidth:I

    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->G()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPictureHeight:I

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

    const-string v1, "PanoramaModuleBase"

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

.method private updatePreviewFps()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0}, Lj6/j;->K0()Lj9/h0;

    move-result-object p0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lj9/h0;->K(Landroid/util/Range;)V

    :cond_0
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

.method public checkShutterCondition()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0}, Lj6/f;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->x0()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "PanoramaModuleBase"

    const-string v2, "onShutterButtonClick: isDoingAction"

    invoke-static {v0, v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public bridge synthetic checkSnapClickValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public closeCamera()V
    .locals 5

    const-string v0, "PanoramaModuleBase"

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

    const-string p0, "PanoramaModuleBase"

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

    if-eq p1, v0, :cond_a

    const/16 v1, 0x13

    if-eq p1, v1, :cond_9

    const/16 v1, 0x20

    if-eq p1, v1, :cond_8

    const/16 v1, 0x37

    if-eq p1, v1, :cond_7

    const/16 v1, 0x42

    if-eq p1, v1, :cond_6

    const/16 v1, 0x5f

    if-eq p1, v1, :cond_5

    const/16 v1, 0x68

    if-eq p1, v1, :cond_4

    const/16 v1, 0x72

    if-eq p1, v1, :cond_3

    const v1, 0xcafe

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8a

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8b

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->consumePreference(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateOpMode()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateESPDisplay()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateSessionParams()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getExposureModeManager()LV1/g;

    move-result-object p0

    invoke-interface {p0}, LV1/g;->q()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getApertureManager()LV1/f;

    move-result-object p0

    invoke-interface {p0}, LV1/f;->L()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p0}, Lcom/android/camera/module/r;->initializeMetaDataCallback(Lcom/android/camera/module/r;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateThermalLevel()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/r;->updateModuleRelated()V

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->setupCaptureParams()V

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->updatePreviewFps()V

    goto :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->updatePictureAndPreviewSize()V

    :goto_0
    return v0
.end method

.method public bridge synthetic getCaptureStartTime()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
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
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/16 v2, 0x11

    if-eq p1, v2, :cond_3

    const/16 v1, 0x33

    if-eq p1, v1, :cond_2

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
    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->initPreviewLayout()V

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/r;->onCameraOpenedFail()V

    return v0

    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getWindowOpt()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LE4/d;

    const/16 v2, 0x9

    invoke-direct {p2, v2}, LE4/d;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getScreenDelay()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/r;->getWindowOpt()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LE4/c;

    const/16 p2, 0xb

    invoke-direct {p1, p2}, LE4/c;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v0
.end method

.method public initPreviewLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v1}, Lj6/f;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
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

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract synthetic isDoingAction()Z
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
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->isShooting()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isRecordingPaused()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isShooting()Z
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

.method public notifyFirstFrameArrived(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/module/r;->notifyFirstFrameArrived(I)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sASDScheduler:Lio/reactivex/v;

    new-instance v0, LF1/W1;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, LF1/W1;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public onActionStop()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "stop_capture_press_back"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/pano/PanoramaModuleBase;->stopShooting(ZZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/X;->o3()V

    invoke-interface {v0, p0, v1}, Lcom/android/camera/module/X;->Af(Lcom/android/camera/module/W;Z)V

    :cond_0
    return-void
.end method

.method public onActive()V
    .locals 6

    invoke-super {p0}, Lcom/android/camera/module/r;->onActive()V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->G0()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mGoalAngle:I

    const/16 v0, 0x118

    iput v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mGoalAngleVertical:I

    const/16 v0, 0x438

    iput v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSmallPreviewHeight:I

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071288    # 1.79542E38f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSmallPreviewHeight:I

    iput v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSmallPreviewHeightVertical:I

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    sget v1, Li3/b;->N:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/effect/EffectController;->X(IZ)V

    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->onCameraOpened()V

    new-instance v0, Lcom/android/camera/panorama/RoundDetector;

    invoke-direct {v0}, Lcom/android/camera/panorama/RoundDetector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

    new-instance v0, Lcom/android/camera/panorama/PanoramaSetting;

    invoke-direct {v0}, Lcom/android/camera/panorama/PanoramaSetting;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    new-instance v0, Lcom/android/camera/panorama/SensorFusion;

    invoke-direct {v0, v2}, Lcom/android/camera/panorama/SensorFusion;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {v0, v2}, Lcom/android/camera/panorama/SensorFusion;->setMode(I)I

    move-result v0

    const-string v1, "PanoramaModuleBase"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "SensorFusion.setMode error ret:0x%08X"

    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {v0, v3}, Lcom/android/camera/panorama/SensorFusion;->setOffsetMode(I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "SensorFusion.setOffsetMode error ret:0x%08X"

    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {v0, v2}, Lcom/android/camera/panorama/SensorFusion;->setAppState(I)I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "SensorFusion.setAppState error ret:0x%08X"

    invoke-static {v2, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorInfoManagerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepScreenOnAwhile()V

    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->registerSensorListener()V

    return-void
.end method

.method public bridge synthetic onActivityResult(Lcom/android/camera/module/X;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string/jumbo v1, "stop_capture_press_back"

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/camera/module/pano/PanoramaModuleBase;->stopShooting(ZZLjava/lang/String;)V

    return v2

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/r;->onBackPressed()Z

    move-result p0

    return p0
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

    const-string v2, "PanoramaModuleBase"

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

    invoke-virtual {p0, v0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->onShutterButtonClick(I)Z

    iput-object v3, p0, Lcom/android/camera/module/r;->mBroadcastIntent:Landroid/content/Intent;

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

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isBlockSnap()Z

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

    invoke-virtual {p0, v0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->onShutterButtonClick(I)Z

    :cond_6
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onCameraOpened()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkDisplayOrientation()V

    sget-object v0, Le2/m;->r:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->startSession()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "PanoramaModuleBase"

    const-string v1, "SetupCameraThread done"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj9/f;->M0(Lj9/e;Z)F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mViewAngleH:F

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lj9/f;->M0(Lj9/e;Z)F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mViewAngleV:F

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->n0(Lj9/e;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mCameraOrientation:I

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
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/r;->onInactive()V

    iget-object v0, p0, Lcom/android/camera/module/r;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->closeCamera()V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->resetScreenOn()V

    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->unRegisterSensorListener()V

    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/panorama/SensorFusion;->release()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/r;->abandonModuleCallback()V

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

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/camera/module/pano/PanoramaModuleBase;->performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V

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

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v1

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

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/pano/PanoramaModuleBase;->performKeyClicked(ILjava/lang/String;Landroid/view/KeyEvent;Z)V

    return v1

    :cond_7
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

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
    invoke-static {}, LQ6/h;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6/h;

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
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSplitInner"
        type = 0x0
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/r;->onLayoutModeChanged(LZ5/h;LZ5/h;)V

    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->isShooting()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "stop_capture_out_of_range"

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2, p1}, Lcom/android/camera/module/pano/PanoramaModuleBase;->stopShooting(ZZLjava/lang/String;)V

    :cond_0
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

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isTextureExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/module/X;->T2()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "PanoramaModuleBase"

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

    sget-object p1, Le2/m;->s:[I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->updatePreferenceInWorkThread([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRenderRequested()V
    .locals 2

    invoke-static {}, LQ6/O0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LB3/b;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LB3/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

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
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->checkShutterCondition()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "onShutterButtonClick"

    const-string v2, "PanoramaModuleBase"

    invoke-static {v2, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onShutterButtonClick mode = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {v0, p1}, Lj6/f;->N(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->isShooting()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/r;->mCallback:Lcom/android/camera/module/X;

    invoke-interface {p1}, Lcom/android/camera/module/X;->Z0()V

    invoke-static {}, Lk7/K;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, LQ6/V0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LC4/q;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, LC4/q;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->getThumbnailViewSize()Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mThumbnailViewSize:Landroid/util/Size;

    if-nez p1, :cond_2

    const-string p0, "onShutterButtonClick return, thumbnailViewSize is null"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const-string p1, "onShutterButtonClick startShooting"

    invoke-static {v2, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->startShooting()V

    goto :goto_0

    :cond_3
    const-string p1, "onShutterButtonClick stopShooting"

    invoke-static {v2, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "stop_capture_press_stop"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/module/pano/PanoramaModuleBase;->stopShooting(ZZLjava/lang/String;)V

    :goto_0
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

.method public onSingleTapUp(IIZ)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

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

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p3}, Lj6/j;->r()Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "PanoramaModuleBase"

    const-string p2, "onSingleTapUp: frame not available"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/r;->handleBackStackFromTapDown(II)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onThermalConstrained()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-super {p0}, Lcom/android/camera/module/r;->onThermalConstrained()V

    const/4 v0, 0x0

    const-string/jumbo v1, "stop_capture_thermal"

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/camera/module/pano/PanoramaModuleBase;->stopShooting(ZZLjava/lang/String;)V

    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/r;->mModuleStateMgr:Lj6/f;

    invoke-interface {p1}, Lj6/f;->q()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->isIgnoreTouchEvent()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/module/r;->gotoGallery(Z)V

    :cond_0
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

    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->isShooting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/r;->keepScreenOnAwhile()V

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

.method public pausePreview()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string v0, "PanoramaModuleBase"

    const-string v1, "pausePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->A0()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "PanoramaModuleBase"

    const-string v1, "pausePreview: camera has been closed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    invoke-virtual {v1}, Lj9/a;->j0()V

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {p0, v2}, Lj6/j;->E(I)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/pano/PanoramaModuleBase;->onShutterButtonClick(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic performKeyLongPress(IZLandroid/view/KeyEvent;Z)V
    .locals 0

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/r;->registerProtocol()V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/q;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    const-class v1, LQ6/Z0;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/b1;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LF1/b1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resumePreview()V
    .locals 4

    const-string v0, "PanoramaModuleBase"

    const-string/jumbo v1, "resumePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v0}, Lj6/j;->A0()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkDisplayOrientation()V

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->N()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->K0()Lj9/h0;

    move-result-object v2

    invoke-virtual {v2, v3}, Lj9/h0;->e(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->L0()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->K0()Lj9/h0;

    move-result-object v2

    invoke-virtual {v2, v3}, Lj9/h0;->j(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    invoke-interface {v2}, Lj6/j;->K0()Lj9/h0;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lj9/h0;->J(I)V

    invoke-virtual {v1}, Lj9/a;->p0()I

    iget-object p0, p0, Lcom/android/camera/module/r;->mCameraManager:Lj6/j;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lj6/j;->E(I)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
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

    invoke-virtual {p0}, Lcom/android/camera/module/pano/PanoramaModuleBase;->isRecording()Z

    move-result p0

    return p0
.end method

.method public abstract startShooting()V
.end method

.method public abstract stopShooting(ZZ)V
.end method

.method public stopShooting(ZZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/android/camera/module/pano/PanoramaModuleBase;->mMistatsStopMode:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/pano/PanoramaModuleBase;->stopShooting(ZZ)V

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

.method public trackModeCustomInfo(Lqh/g;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/data/data/E;->k(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ln8/a;->j(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "M_panorama_"

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

    const-string p1, "attr_panorama_direction"

    invoke-virtual {v0, p0, p1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgq/h;->d()V

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

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/g;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LEs/g;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

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
