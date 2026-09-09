.class public final Lr6/g0;
.super Lcom/android/camera/module/interceptor/base/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/base/i<",
        "Lcom/android/camera/module/r;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lru/c;

.field public b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:Landroid/graphics/Rect;

.field public g:Ljava/util/ArrayList;

.field public h:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public i:Ljava/lang/String;

.field public j:[F


# direct methods
.method public static synthetic a(Lr6/g0;LQ6/t0;)V
    .locals 4

    iget-object v0, p0, Lr6/g0;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v1, p0, Lr6/g0;->f:Landroid/graphics/Rect;

    iget-boolean v2, p0, Lr6/g0;->c:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/interceptor/base/c;->module:Lcom/android/camera/module/interceptor/base/h;

    check-cast v2, Lcom/android/camera/module/r;

    invoke-virtual {v2}, Lcom/android/camera/module/r;->getZoomManager()Lf9/a;

    move-result-object v2

    invoke-interface {v2}, Lf9/a;->L()F

    move-result v2

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/interceptor/base/c;->module:Lcom/android/camera/module/interceptor/base/h;

    check-cast p0, Lcom/android/camera/module/r;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object p0

    invoke-interface {p0}, Lj6/j;->o0()I

    move-result p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1, v0, v1, v2, v3}, LQ6/t0;->Z2([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;FZ)V

    return-void
.end method


# virtual methods
.method public final acceptResult()V
    .locals 0

    return-void
.end method

.method public final consumeResultOnMainThreadIfDataChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/interceptor/base/c;->module:Lcom/android/camera/module/interceptor/base/h;

    check-cast v0, Lcom/android/camera/module/r;

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/interceptor/base/c;->module:Lcom/android/camera/module/interceptor/base/h;

    check-cast v1, Lcom/android/camera/module/r;

    invoke-interface {v1}, LQ6/Z0;->isDoingAction()Z

    move-result v1

    const-string v2, "1"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/interceptor/base/c;->module:Lcom/android/camera/module/interceptor/base/h;

    check-cast v1, Lcom/android/camera/module/r;

    invoke-virtual {v1}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v1

    const/16 v3, 0xa2

    if-ne v1, v3, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/interceptor/base/c;->module:Lcom/android/camera/module/interceptor/base/h;

    check-cast v1, Lcom/android/camera/module/r;

    invoke-virtual {v1}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v1

    const/16 v3, 0xa6

    if-eq v1, v3, :cond_2

    const-string v1, "camera.preview.debug.afRegion_view"

    invoke-static {v1}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LH4/f;

    const/16 v4, 0xa

    invoke-direct {v3, p0, v4}, LH4/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    const-string v1, "camera.preview.debug.debugInfo_view"

    invoke-static {v1}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lr6/g0;->i:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/camera/module/X;->D6(Ljava/lang/String;)V

    const-string v1, "camera.preview.debug.ois.info"

    invoke-static {v1}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lr6/g0;->j:[F

    invoke-interface {v0, p0}, Lcom/android/camera/module/X;->x4([F)V

    return-void

    :cond_4
    iget-boolean p0, p0, Lr6/g0;->b:Z

    if-eqz p0, :cond_5

    const-string p0, "camera.preview.debug.groupPreview.info"

    invoke-static {p0}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    invoke-interface {v0, p0}, Lcom/android/camera/module/X;->Yi(Z)V

    return-void
.end method

.method public final declareTags()V
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/base/i;->addTag(Landroid/hardware/camera2/CaptureResult$Key;)Lcom/android/camera/module/interceptor/base/i;

    return-void
.end method

.method public final getInTimeCondition()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getSampleTime()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string p0, "PreviewDebugInfo"

    return-object p0
.end method

.method public final initAndGetPriorCondition()Z
    .locals 4

    const-string v0, "camera.preview.enable.log"

    invoke-static {v0}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr6/g0;->g:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/module/interceptor/base/g;

    const-string v3, "camera.preview.debug.xp_content"

    invoke-direct {v2, v3}, Lcom/android/camera/module/interceptor/base/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr6/g0;->g:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/module/interceptor/base/g;

    const-string v3, "camera.feature.trackFocus.debug"

    invoke-direct {v2, v3}, Lcom/android/camera/module/interceptor/base/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr6/g0;->g:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/module/interceptor/base/g;

    const-string v3, "camera.feature.cinematicFocus.debug"

    invoke-direct {v2, v3}, Lcom/android/camera/module/interceptor/base/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/module/interceptor/base/c;->module:Lcom/android/camera/module/interceptor/base/h;

    check-cast v0, Lcom/android/camera/module/r;

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LI4/f;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, LI4/f;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/c;

    iput-object v0, p0, Lr6/g0;->a:Lru/c;

    iget-object v0, p0, Lcom/android/camera/module/interceptor/base/c;->capabilities:Lj9/e;

    invoke-static {v0}, Lj9/f;->T4(Lj9/e;)Z

    move-result v0

    iput-boolean v0, p0, Lr6/g0;->c:Z

    iget-object v0, p0, Lcom/android/camera/module/interceptor/base/c;->capabilities:Lj9/e;

    invoke-static {v0}, Lj9/f;->m(Lj9/e;)I

    move-result v0

    iput v0, p0, Lr6/g0;->d:I

    iget-object v0, p0, Lcom/android/camera/module/interceptor/base/c;->capabilities:Lj9/e;

    invoke-static {v0}, Lj9/f;->n(Lj9/e;)I

    move-result v0

    iput v0, p0, Lr6/g0;->e:I

    iget-object v0, p0, Lcom/android/camera/module/interceptor/base/c;->capabilities:Lj9/e;

    invoke-static {v0}, Lj9/f;->d(Lj9/e;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lr6/g0;->f:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/module/interceptor/base/c;->capabilities:Lj9/e;

    invoke-static {v0}, Lj9/f;->h2(Lj9/e;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/interceptor/base/c;->module:Lcom/android/camera/module/interceptor/base/h;

    check-cast v0, Lcom/android/camera/module/r;

    invoke-virtual {v0}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v0

    const/16 v3, 0xa3

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lr6/g0;->b:Z

    return v2
.end method

.method public final moveOnMainThread()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iget-object v5, v0, Lcom/android/camera/module/interceptor/base/c;->module:Lcom/android/camera/module/interceptor/base/h;

    check-cast v5, Lcom/android/camera/module/r;

    iget-object v6, v0, Lr6/g0;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/module/interceptor/base/g;

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getDebugInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, ""

    if-nez v7, :cond_0

    move-object v7, v8

    :cond_0
    iput-object v7, v6, Lcom/android/camera/module/interceptor/base/g;->b:Ljava/lang/String;

    iget-object v6, v0, Lr6/g0;->a:Lru/c;

    const v7, 0xbabe

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v6

    invoke-interface {v6}, Lj6/j;->I()I

    move-result v13

    iget-object v6, v0, Lr6/g0;->f:Landroid/graphics/Rect;

    iget-object v12, v0, Lr6/g0;->a:Lru/c;

    invoke-interface {v12}, Lru/c;->c()I

    move-result v14

    iget-object v12, v0, Lr6/g0;->a:Lru/c;

    invoke-interface {v12}, Lru/c;->a()I

    move-result v15

    sget-boolean v12, Lj9/n0;->a:Z

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    const/16 v20, 0x3

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v21, v2

    sget-object v2, Lo8/d;->a:Lga/D0;

    invoke-static {v1, v2, v7}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    const/16 v22, 0x2

    sget-object v3, Lo8/d;->k:Lga/D0;

    invoke-static {v1, v3, v7}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/16 v23, 0x1

    sget-object v4, Lo8/d;->e:Lga/D0;

    invoke-static {v1, v4, v7}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v12, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    aget v2, v3, v21

    aget v7, v3, v23

    aget v17, v3, v22

    add-int v10, v2, v17

    aget v3, v3, v20

    add-int/2addr v3, v7

    invoke-virtual {v12, v2, v7, v10, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    :goto_0
    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lo8/d;->b:Lga/D0;

    const v3, 0xdead

    invoke-static {v1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v3, v23

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-static {v6, v2}, LAv/e;->A(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v2

    goto :goto_1

    :cond_3
    invoke-static {v6, v1}, Lur/i;->l(Landroid/graphics/Rect;Landroid/hardware/camera2/CaptureResult;)F

    move-result v2

    :goto_1
    invoke-static {v9, v6, v2}, LMt/b;->I(Landroid/graphics/Matrix;Landroid/graphics/Rect;F)V

    move-object v2, v12

    move-object/from16 v12, v16

    div-int/lit8 v16, v14, 0x2

    div-int/lit8 v17, v15, 0x2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v19

    invoke-static/range {v12 .. v19}, LMt/b;->G(Landroid/graphics/Matrix;IIIIIII)V

    invoke-virtual {v11, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v9, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v3, v11, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v6, v11, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, v11, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v9, v11, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    invoke-virtual {v2, v3, v6, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_4
    move-object v2, v12

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "type: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " | size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n\t | rect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    move/from16 v21, v2

    const/16 v20, 0x3

    const/16 v22, 0x2

    const/4 v2, 0x0

    :goto_3
    iget-object v3, v0, Lr6/g0;->g:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/interceptor/base/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_6

    move-object v2, v8

    :cond_6
    iput-object v2, v3, Lcom/android/camera/module/interceptor/base/g;->b:Ljava/lang/String;

    iget-object v2, v0, Lr6/g0;->a:Lru/c;

    if-eqz v2, :cond_b

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v2

    invoke-interface {v2}, Lj6/j;->I()I

    move-result v10

    iget-object v2, v0, Lr6/g0;->f:Landroid/graphics/Rect;

    iget-object v3, v0, Lr6/g0;->a:Lru/c;

    invoke-interface {v3}, Lru/c;->c()I

    move-result v11

    iget-object v3, v0, Lr6/g0;->a:Lru/c;

    invoke-interface {v3}, Lru/c;->a()I

    move-result v12

    sget-boolean v3, Lj9/n0;->a:Z

    sget-object v3, Lo8/d;->g:Lga/D0;

    const v4, 0xbabe

    invoke-static {v1, v3, v4}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Float;

    if-nez v3, :cond_7

    const-string v2, "null"

    goto/16 :goto_7

    :cond_7
    new-instance v4, Landroid/graphics/Rect;

    aget-object v5, v3, v21

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/16 v23, 0x1

    aget-object v6, v3, v23

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    aget-object v7, v3, v21

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aget-object v9, v3, v22

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    aget-object v9, v3, v23

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aget-object v13, v3, v20

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    add-float/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-direct {v4, v5, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    sget-object v7, Lo8/d;->b:Lga/D0;

    const v13, 0xdead

    invoke-static {v1, v7, v13}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v13, 0x1

    if-ne v7, v13, :cond_8

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    sget-object v13, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v13}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-static {v2, v7}, LAv/e;->A(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v7

    goto :goto_4

    :cond_8
    invoke-static {v2, v1}, Lur/i;->l(Landroid/graphics/Rect;Landroid/hardware/camera2/CaptureResult;)F

    move-result v7

    :goto_4
    invoke-static {v6, v2, v7}, LMt/b;->I(Landroid/graphics/Matrix;Landroid/graphics/Rect;F)V

    div-int/lit8 v13, v11, 0x2

    div-int/lit8 v14, v12, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v16

    invoke-static/range {v9 .. v16}, LMt/b;->G(Landroid/graphics/Matrix;IIIIIII)V

    invoke-virtual {v5, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v2, v5, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v6, v5, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, v5, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v4, v2, v6, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    if-lez v2, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v2, v21

    :goto_5
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v5, v4

    if-lez v4, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v4, v21

    :goto_6
    const-string v5, " rect: width = "

    const-string v6, "  height = "

    const-string v7, "\n   type: "

    invoke-static {v4, v2, v5, v6, v7}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    :goto_7
    iget-object v3, v0, Lr6/g0;->g:Ljava/util/ArrayList;

    move/from16 v4, v22

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/interceptor/base/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_c

    move-object v2, v8

    :cond_c
    iput-object v2, v3, Lcom/android/camera/module/interceptor/base/g;->b:Ljava/lang/String;

    iget-object v2, v0, Lr6/g0;->g:Ljava/util/ArrayList;

    iget v3, v0, Lr6/g0;->d:I

    iget v4, v0, Lr6/g0;->e:I

    iget-object v5, v0, Lcom/android/camera/module/interceptor/base/c;->module:Lcom/android/camera/module/interceptor/base/h;

    check-cast v5, Lcom/android/camera/module/r;

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v5

    invoke-interface {v5}, Lj6/j;->K0()Lj9/h0;

    move-result-object v5

    iget-object v5, v5, Lj9/h0;->a:Lj9/i0;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3, v4}, Lj9/o0;->a(Landroid/hardware/camera2/CaptureResult;II)Lha/a;

    move-result-object v3

    sget-object v4, Lga/C0;->W:Lga/D0;

    const v7, 0xbabe

    invoke-static {v1, v4, v7}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    sget-boolean v7, LJe/d;->k:Z

    const/4 v9, 0x4

    if-eqz v7, :cond_e

    if-nez v4, :cond_d

    :goto_8
    const/4 v11, 0x0

    goto/16 :goto_12

    :cond_d
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v7, Lha/b$a;

    invoke-direct {v7}, Lha/b$a;-><init>()V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    new-instance v11, Lha/b;

    invoke-direct {v11, v10, v4, v7}, Lha/b;-><init>(IILha/b$a;)V

    goto/16 :goto_12

    :cond_e
    if-eqz v4, :cond_17

    array-length v7, v4

    const/16 v10, 0x398

    if-ge v7, v10, :cond_f

    goto/16 :goto_10

    :cond_f
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v7, Lha/b$a;

    invoke-direct {v7}, Lha/b$a;-><init>()V

    move/from16 v10, v21

    :goto_9
    if-ge v10, v9, :cond_10

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    const/16 v23, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_10
    const/16 v23, 0x1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    move/from16 v12, v21

    :goto_a
    const/16 v13, 0x2f

    if-ge v12, v13, :cond_11

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_11
    move/from16 v12, v21

    :goto_b
    const/16 v13, 0x18

    if-ge v12, v13, :cond_12

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    add-int/lit8 v12, v12, 0x1

    const/16 v23, 0x1

    goto :goto_b

    :cond_12
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getFloat()F

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    iput v12, v7, Lha/b$a;->a:I

    move/from16 v12, v21

    :goto_c
    const/16 v13, 0x20

    if-ge v12, v13, :cond_13

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v13

    iget-object v14, v7, Lha/b$a;->b:[F

    aput v13, v14, v12

    const/16 v23, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_13
    const/16 v23, 0x1

    move/from16 v12, v21

    :goto_d
    if-ge v12, v13, :cond_14

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v14

    iget-object v15, v7, Lha/b$a;->c:[F

    aput v14, v15, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_14
    move/from16 v12, v21

    :goto_e
    if-ge v12, v13, :cond_15

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v14

    iget-object v15, v7, Lha/b$a;->d:[F

    aput v14, v15, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_15
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    move/from16 v12, v21

    :goto_f
    if-ge v12, v13, :cond_16

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    iget-object v13, v7, Lha/b$a;->e:[J

    aput-wide v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x20

    const/16 v23, 0x1

    goto :goto_f

    :cond_16
    new-instance v4, Lha/b;

    invoke-direct {v4, v10, v11, v7}, Lha/b;-><init>(IILha/b$a;)V

    move-object v11, v4

    goto :goto_12

    :cond_17
    :goto_10
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-nez v4, :cond_18

    move/from16 v4, v21

    goto :goto_11

    :cond_18
    array-length v4, v4

    :goto_11
    const-string v7, "Expected size should be 920, but got: "

    invoke-static {v4, v7}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v7, v21

    new-array v10, v7, [Ljava/lang/Object;

    const-string v7, "AFFrameControl"

    invoke-static {v7, v4, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :goto_12
    const-string v4, "camera.preview.debug.show_SFE"

    invoke-static {v4}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "sfe : "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lj9/o0;->a:Ljava/util/List;

    sget-object v10, Lga/C0;->e2:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v10, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    if-eqz v10, :cond_19

    array-length v12, v10

    const/16 v13, 0x24

    if-ge v12, v13, :cond_1a

    :cond_19
    move-object/from16 v24, v2

    goto :goto_13

    :cond_1a
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v14

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v15

    move/from16 v16, v15

    const/4 v9, 0x2

    new-array v15, v9, [F

    const/16 v21, 0x0

    aput v12, v15, v21

    const/16 v23, 0x1

    aput v16, v15, v23

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v16

    move-object/from16 v24, v2

    new-array v2, v9, [F

    aput v12, v2, v21

    aput v16, v2, v23

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v17

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v19

    new-instance v12, Lha/q;

    move-object/from16 v16, v2

    invoke-direct/range {v12 .. v19}, Lha/q;-><init>(IF[F[FJF)V

    goto :goto_15

    :goto_13
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-nez v10, :cond_1b

    const/4 v2, 0x0

    goto :goto_14

    :cond_1b
    array-length v2, v10

    :goto_14
    const-string v9, "Expected size should be 36, but got: "

    invoke-static {v2, v9}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    const-string v9, "SFEParameter"

    invoke-static {v9, v2, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v12, 0x0

    :goto_15
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_16

    :cond_1c
    move-object/from16 v24, v2

    :goto_16
    const-string v2, "camera.preview.debug.show_shortGain"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz v3, :cond_1d

    iget-object v2, v3, Lha/a;->a:[Lha/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "short gain : "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x0

    aget-object v2, v2, v21

    iget v2, v2, Lha/a$a;->b:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_1d
    const-string v2, "camera.preview.debug.show_adrcGain"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_20

    if-eqz v3, :cond_1f

    iget-object v2, v3, Lha/a;->a:[Lha/a$a;

    iget v9, v3, Lha/a;->b:F

    cmpl-float v10, v9, v4

    const-string v12, "adrc gain : "

    if-eqz v10, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_17

    :cond_1e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x2

    aget-object v10, v2, v22

    iget v10, v10, Lha/a$a;->c:F

    const/16 v21, 0x0

    aget-object v2, v2, v21

    iget v2, v2, Lha/a$a;->c:F

    div-float/2addr v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_1f
    :goto_17
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "framenumber : "

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_20
    const-string v2, "camera.preview.debug.show_afRegion"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v2, :cond_21

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "af region : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x0

    aget-object v2, v2, v21

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_21
    const-string v2, "camera.preview.debug.show_exposureTime"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    if-eqz v3, :cond_22

    iget-object v2, v3, Lha/a;->a:[Lha/a$a;

    const/16 v21, 0x0

    aget-object v2, v2, v21

    iget-wide v2, v2, Lha/a$a;->a:J

    long-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "exposure time : "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_22
    const-string v2, "camera.preview.debug.show_frameLuma"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object v2, Lj9/o0;->a:Ljava/util/List;

    sget-object v2, Lga/C0;->V1:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v2, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-nez v2, :cond_23

    move v2, v4

    goto :goto_18

    :cond_23
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_18
    sget-object v3, Lga/C0;->X1:Lga/D0;

    invoke-static {v1, v3, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-nez v3, :cond_24

    move v3, v4

    goto :goto_19

    :cond_24
    array-length v9, v3

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 v10, 0x4

    const/4 v12, 0x0

    invoke-virtual {v9, v3, v12, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    :goto_19
    sget-object v9, Lga/C0;->Z1:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v9, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    if-nez v9, :cond_25

    move v9, v4

    goto :goto_1a

    :cond_25
    array-length v10, v9

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-virtual {v10, v9, v13, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v9

    :goto_1a
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "frameLuma value : "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "faceConfidence value : "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "faceLuma value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_26
    const-string v2, "camera.preview.debug.show_iso"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v2, :cond_27

    if-eqz v3, :cond_27

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    mul-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "iso : "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_27
    const-string v2, "camera.preview.debug.show_ISO"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v2, :cond_28

    if-eqz v3, :cond_28

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "ISO : "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_28
    const-string v2, "camera.preview.debug.show_afMode"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "af mode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_29
    const-string v2, "camera.preview.debug.show_afStatus"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "af state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2a
    const-string v2, "camera.preview.debug.show_afLensPosition"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-eqz v11, :cond_2c

    iget v2, v11, Lha/b;->b:I

    if-nez v2, :cond_2b

    iget v2, v11, Lha/b;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "af lens position : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2c
    const-string v2, "camera.preview.debug.show_distance"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-eqz v2, :cond_2d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "distance : "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "distance(m) : "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v8, v2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2d
    const-string v2, "camera.preview.debug.show_gyro"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    if-eqz v11, :cond_2e

    const/4 v2, 0x0

    :goto_1b
    iget-object v3, v11, Lha/b;->c:Lha/b$a;

    iget v8, v3, Lha/b$a;->a:I

    if-ge v2, v8, :cond_2e

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "gyro : x: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lha/b$a;->b:[F

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", y: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lha/b$a;->c:[F

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", z: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lha/b$a;->d:[F

    aget v3, v3, v2

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/16 v23, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2e
    const-string v2, "camera.preview.debug.asd_info"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    sget-object v2, Lj9/o0;->a:Ljava/util/List;

    sget-object v2, Lga/C0;->K0:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v2, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_2f

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2f
    const-string v2, "camera.preview.debug.sunset_info"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "yyyy/MM/dd HH:mm:ss.SSS"

    if-eqz v2, :cond_30

    iget-wide v8, v5, Lj9/i0;->M2:J

    iget-wide v10, v5, Lj9/i0;->N2:J

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    const-wide/16 v12, 0x3e8

    mul-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v5, v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sunrise:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nsunset:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_30
    const-string v2, "camera.preview.debug.sat_info"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    sget-object v2, Lj9/o0;->a:Ljava/util/List;

    sget-object v2, Lga/C0;->J0:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v2, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_31

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_31
    const-string v2, "camera.preview.debug.af_info"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    sget-object v2, Lj9/o0;->a:Ljava/util/List;

    sget-object v2, Lga/C0;->L0:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v2, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_32

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_32
    const-string v2, "camera.preview.debug.motionVelocity"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "PreviewDebugInfoUtils"

    if-eqz v2, :cond_33

    invoke-static {v1}, Lj9/o0;->l(Landroid/hardware/camera2/CaptureResult;)Lha/p;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Lha/p;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v5, v8, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "velocity: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "exp: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_33
    const-string v2, "camera.preview.debug.awb_cct"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-static {v1}, Lj9/o0;->b(Landroid/hardware/camera2/CaptureResult;)Lha/c;

    move-result-object v2

    if-eqz v2, :cond_34

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "awb_cct:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lha/c;->d:I

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v5, v8, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "awb cct : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_34
    const-string v2, "camera.preview.debug.awb_gain"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-static {v1}, Lj9/o0;->b(Landroid/hardware/camera2/CaptureResult;)Lha/c;

    move-result-object v2

    if-eqz v2, :cond_35

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "awb RGain: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v2, Lha/c;->a:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " GGain: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lha/c;->b:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " BGain: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lha/c;->c:F

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_35
    const-string v2, "camera.preview.debug.awb_flicker"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {v1}, Lj9/o0;->b(Landroid/hardware/camera2/CaptureResult;)Lha/c;

    move-result-object v2

    if-eqz v2, :cond_36

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "awb_flicker:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lha/c;->e:F

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v5, v8, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "awb flicker: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_36
    const-string v2, "camera.preview.debug.aec_lux"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    sget-object v2, Lj9/o0;->a:Ljava/util/List;

    sget-object v2, Lga/C0;->L:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v2, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-nez v2, :cond_37

    move v2, v4

    goto :goto_1c

    :cond_37
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1c
    const-string v8, "aec lux:"

    invoke-static {v8, v2}, LP0/g;->d(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v5, v8, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "aec lux : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_38
    const-string v2, "camera.preview.debug.bv"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-object v2, Lj9/o0;->a:Ljava/util/List;

    sget-object v2, Lga/C0;->M:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v2, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_39

    goto :goto_1d

    :cond_39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v4, v2

    :goto_1d
    const-string v2, "bv:"

    invoke-static {v2, v4}, LP0/g;->d(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v5, v2, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "bv : "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_3a
    const-string v2, "camera.preview.debug.aperture"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-eqz v2, :cond_3b

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "aperture apertureFnum:"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v5, v4, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "aperture apertureFnum : "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_3b
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v4, Lv2/h;

    invoke-virtual {v2, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/h;

    iget-boolean v2, v2, Lv2/h;->U:Z

    if-eqz v2, :cond_3f

    sget-object v2, Lj9/o0;->a:Ljava/util/List;

    sget-object v2, Lga/C0;->j2:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v2, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    if-nez v2, :cond_3c

    const/4 v2, 0x0

    goto :goto_1e

    :cond_3c
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    :goto_1e
    const-string v4, "aperture mode:"

    invoke-static {v2, v4}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v5, v4, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "aperture mode : "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v2, Lga/C0;->k2:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v2, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    if-nez v2, :cond_3d

    const/4 v2, 0x0

    goto :goto_1f

    :cond_3d
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    :goto_1f
    const-string v4, "aperture apertureLock:"

    invoke-static {v2, v4}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v5, v4, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "aperture apertureLock : "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v2, Lga/C0;->m2:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v2, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    if-nez v2, :cond_3e

    const/4 v2, 0x0

    goto :goto_20

    :cond_3e
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    :goto_20
    const-string v4, "continual ApertureMode:"

    invoke-static {v2, v4}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v5, v4, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "continualApertureMode : "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_3f
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v4, Lr2/G0;

    invoke-virtual {v2, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/G0;

    iget-boolean v2, v2, Lr2/G0;->h:Z

    if-eqz v2, :cond_41

    sget-object v2, Lj9/o0;->a:Ljava/util/List;

    sget-object v2, Lga/C0;->l2:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v2, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    if-nez v2, :cond_40

    const/4 v2, 0x0

    goto :goto_21

    :cond_40
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    :goto_21
    const-string v4, "exposure mode:"

    invoke-static {v2, v4}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v5, v4, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "exposure mode : "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_41
    const-string v2, "camera.preview.debug.laser_dist"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "getLaserDist, capture result is null"

    const-string v8, "CaptureResultUtil"

    if-eqz v2, :cond_43

    sget-object v2, Lj9/o0;->a:Ljava/util/List;

    if-nez v1, :cond_42

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v8, v4, v2}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_22

    :cond_42
    sget-object v2, Lga/C0;->D1:Lga/D0;

    const v13, 0xdead

    invoke-static {v1, v2, v13}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    :goto_22
    if-eqz v2, :cond_43

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "laser dist:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v5, v9, v11, v10}, LF1/Q;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_43
    const-string v2, "camera.preview.debug.show_miAiTof"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    sget-object v2, Lj9/o0;->a:Ljava/util/List;

    if-nez v1, :cond_44

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v8, v4, v2}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_23

    :cond_44
    sget-object v2, Lga/C0;->E1:Lga/D0;

    const v13, 0xdead

    invoke-static {v1, v2, v13}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    :goto_23
    if-eqz v2, :cond_45

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "miAiTof :"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v5, v4, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_45
    const-string v2, "camera.preview.debug.show_timestamp"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timeStamp :"

    invoke-static {v3, v2}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v5, v4, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_46
    const-string v2, "camera.preview.debug.show_hdrTrigger"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-static {v1}, Lj9/o0;->i(Landroid/hardware/camera2/CaptureResult;)I

    move-result v2

    invoke-static {v1}, Lj9/o0;->h(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    invoke-virtual {v4}, Lu2/Q;->O()Z

    move-result v4

    if-eqz v4, :cond_47

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, LJe/c;->P0()Z

    move-result v8

    if-eqz v8, :cond_47

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->b0()[I

    move-result-object v4

    goto :goto_24

    :cond_47
    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->L()[I

    move-result-object v4

    :goto_24
    new-instance v8, Lha/j;

    invoke-direct {v8, v4, v3}, Lha/j;-><init>([I[B)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HDR:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", EV:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_48
    const-string v2, "camera.preview.debug.show_nightTrigger"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-static {v1}, Lha/l;->a(Landroid/hardware/camera2/CaptureResult;)[Lha/l$a;

    move-result-object v2

    const-string v3, "off"

    if-eqz v2, :cond_4b

    array-length v4, v2

    const/4 v8, 0x0

    :goto_25
    if-ge v8, v4, :cond_4b

    aget-object v9, v2, v8

    iget v10, v9, Lha/l$a;->a:I

    move/from16 v11, v20

    if-ne v10, v11, :cond_4a

    iget v2, v9, Lha/l$a;->b:I

    shr-int/lit8 v2, v2, 0x8

    const/4 v13, 0x1

    if-ne v2, v13, :cond_49

    const-string v2, "SE"

    const/4 v9, 0x2

    goto :goto_26

    :cond_49
    const/4 v9, 0x2

    if-ne v2, v9, :cond_4c

    const-string v2, "ELL"

    goto :goto_26

    :cond_4a
    const/4 v9, 0x2

    const/4 v13, 0x1

    add-int/2addr v8, v13

    move/from16 v20, v11

    goto :goto_25

    :cond_4b
    const/4 v9, 0x2

    :cond_4c
    move-object v2, v3

    :goto_26
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    sget-object v3, Lj9/o0;->a:Ljava/util/List;

    sget-object v3, Lga/C0;->Q0:Lga/D0;

    const v13, 0xdead

    invoke-static {v1, v3, v13}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4d

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v13, 0x1

    if-ne v3, v13, :cond_4e

    const-string v2, "LLS"

    goto :goto_27

    :cond_4d
    const/4 v13, 0x1

    :cond_4e
    :goto_27
    const-string v3, "night-mode:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_28

    :cond_4f
    const/4 v9, 0x2

    const/4 v13, 0x1

    :goto_28
    const-string v2, "camera.preview.debug.AsdAFResult"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    sget-object v2, Lga/C0;->y0:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v2, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lha/n;->a([B)Lha/n$a;

    move-result-object v2

    if-eqz v2, :cond_50

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AsdAFResult:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_50
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/interceptor/base/g;

    iget-object v4, v3, Lcom/android/camera/module/interceptor/base/g;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/camera/module/interceptor/base/g;->b:Ljava/lang/String;

    invoke-static {v4}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    const/4 v8, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_2a

    :sswitch_0
    const-string v10, "camera.preview.debug.xp_content"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    goto :goto_2a

    :cond_51
    move v8, v9

    goto :goto_2a

    :sswitch_1
    const-string v10, "camera.feature.cinematicFocus.debug"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    goto :goto_2a

    :cond_52
    move v8, v13

    goto :goto_2a

    :sswitch_2
    const-string v10, "camera.feature.trackFocus.debug"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    goto :goto_2a

    :cond_53
    const/4 v8, 0x0

    :goto_2a
    packed-switch v8, :pswitch_data_0

    :cond_54
    const v8, 0xdead

    goto :goto_29

    :pswitch_0
    sget-object v4, Lj9/o0;->a:Ljava/util/List;

    sget-object v4, Lga/C0;->i0:Lga/D0;

    const v8, 0xdead

    invoke-static {v1, v4, v8}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_55

    goto :goto_2b

    :cond_55
    sget-object v4, Lga/C0;->h0:Lga/D0;

    invoke-static {v1, v4, v8}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    :goto_2b
    if-eqz v4, :cond_56

    array-length v10, v4

    if-lez v10, :cond_56

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "exifString:"

    invoke-virtual {v4, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v5, v4, v11}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v10, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_2c

    :cond_56
    const/4 v12, 0x0

    :goto_2c
    const-string v4, "exifInfoString:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v5, v4, v10}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_29

    :pswitch_1
    const v8, 0xdead

    const-string v4, "cinematic focus info: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_29

    :pswitch_2
    const v8, 0xdead

    const-string/jumbo v4, "track focus info: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_29

    :cond_57
    const-string v2, "persist.vendor.camera.EnableShowCatchlogInfo"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    sget-object v2, Lj9/o0;->a:Ljava/util/List;

    sget-object v2, Lga/C0;->G2:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v2, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_58

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_58
    const-string v2, "camera.preview.debug.screen.info"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    sget-object v2, Lj9/o0;->a:Ljava/util/List;

    sget-object v2, Lga/C0;->H2:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v2, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "debug info: "

    invoke-static {v3, v2}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "debug info : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_59
    const-string v2, "camera.preview.debug.show_ainrStatus"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    sget-object v2, Lj9/o0;->a:Ljava/util/List;

    sget-object v2, Lga/C0;->K2:Lga/D0;

    const v12, 0xbabe

    invoke-static {v1, v2, v12}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2d

    :cond_5a
    const/4 v2, 0x0

    :goto_2d
    const-string v3, "ainr state = "

    invoke-static {v2, v3}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ainrState: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LF1/L3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_5b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lr6/g0;->i:Ljava/lang/String;

    const-string v2, "camera.preview.debug.ois.info"

    invoke-static {v2}, Lur/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ois info: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v1}, LN/i;->d([FLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2e

    :cond_5c
    const/4 v11, 0x0

    :goto_2e
    iput-object v11, v0, Lr6/g0;->j:[F

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6cbb35ed -> :sswitch_2
        -0xd8bdc5f -> :sswitch_1
        0x239158bc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final tagValueAutomaticParsed()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/interceptor/base/i;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lr6/g0;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method
