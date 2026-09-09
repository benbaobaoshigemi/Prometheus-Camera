.class public final Lp4/q;
.super Lp4/k;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/milab/videosdk/interfaces/TouchActionCallback;
.implements Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;
.implements Lcom/xiaomi/milab/videosdk/interfaces/EventCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0012\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010#\u001a\u00020\u001eH\u0014J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0014J\u0010\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020\u0008H\u0016J\u0012\u0010*\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016J\u0010\u0010+\u001a\u00020%2\u0006\u0010,\u001a\u00020 H\u0016J\u0008\u0010-\u001a\u00020\u0008H\u0016J\u0008\u0010.\u001a\u00020\rH\u0016J\u0008\u0010/\u001a\u00020%H\u0016J\u0008\u00100\u001a\u00020%H\u0002J\n\u00101\u001a\u0004\u0018\u00010\u001cH\u0016J\u0016\u00102\u001a\u00020\r2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020504H\u0002J\u0008\u00106\u001a\u00020%H\u0016J\u0008\u00107\u001a\u00020%H\u0016J\u0008\u00108\u001a\u00020%H\u0016J\u0008\u00109\u001a\u00020%H\u0002J\u0008\u0010:\u001a\u00020%H\u0002J\u0008\u0010;\u001a\u00020%H\u0002J\u0008\u0010<\u001a\u00020 H\u0016J\u001a\u0010=\u001a\u00020%2\u0006\u0010>\u001a\u00020?2\u0008\u0010@\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u0010A\u001a\u00020%H\u0002J\"\u0010B\u001a\u00020%2\u0008\u0010C\u001a\u0004\u0018\u00010\u001e2\u0006\u0010D\u001a\u00020 2\u0006\u0010E\u001a\u00020FH\u0002J\u0008\u0010G\u001a\u00020%H\u0016J\u0014\u0010H\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020J0I0\u0013H\u0016J*\u0010K\u001a\u00020%2\u0008\u0010L\u001a\u0004\u0018\u00010M2\u0006\u0010N\u001a\u00020\u00082\u0006\u0010O\u001a\u00020\u00082\u0006\u0010P\u001a\u00020\u0008H\u0016J\"\u0010Q\u001a\u00020%2\u0008\u0010L\u001a\u0004\u0018\u00010M2\u0006\u0010N\u001a\u00020R2\u0006\u0010O\u001a\u00020RH\u0016J\u0012\u0010S\u001a\u00020%2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0016J\u0010\u0010T\u001a\u00020%2\u0006\u0010U\u001a\u00020MH\u0016J\u0010\u0010V\u001a\u00020%2\u0006\u0010L\u001a\u00020\u0008H\u0016J\u0008\u0010W\u001a\u00020%H\u0016J\u0008\u0010X\u001a\u00020%H\u0016J\u0008\u0010Y\u001a\u00020%H\u0016J\u0010\u0010Z\u001a\u00020%2\u0006\u0010[\u001a\u00020 H\u0002J\u0010\u0010\\\u001a\u00020%2\u0006\u0010]\u001a\u00020\u0008H\u0016J\u0012\u0010^\u001a\u00020%2\u0008\u0010L\u001a\u0004\u0018\u00010\u001eH\u0016J$\u0010_\u001a\u00020%2\u0008\u0010L\u001a\u0004\u0018\u00010\u001e2\u0008\u0010N\u001a\u0004\u0018\u00010\u001e2\u0006\u0010O\u001a\u00020\u0008H\u0016J8\u0010`\u001a\u00020%2\u0008\u0010L\u001a\u0004\u0018\u00010\u001e2\u0008\u0010N\u001a\u0004\u0018\u00010\u001e2\u0008\u0010O\u001a\u0004\u0018\u00010\u001e2\u0008\u0010P\u001a\u0004\u0018\u00010\u001e2\u0006\u0010a\u001a\u00020\u0008H\u0016J.\u0010b\u001a\u00020%2\u0008\u0010L\u001a\u0004\u0018\u00010\u001e2\u0008\u0010N\u001a\u0004\u0018\u00010\u001e2\u0008\u0010O\u001a\u0004\u0018\u00010\u001e2\u0006\u0010P\u001a\u00020\u0008H\u0016J\"\u0010c\u001a\u00020%2\u0008\u0010L\u001a\u0004\u0018\u00010\u001e2\u0006\u0010N\u001a\u00020\u00082\u0006\u0010O\u001a\u00020\u0008H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\rX\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006d"
    }
    d2 = {
        "Lcom/android/camera/features/mode/sticker/ui/FragmentVideoStickerResult;",
        "Lcom/android/camera/features/mode/sticker/ui/FragmentStickerResult;",
        "Lcom/xiaomi/milab/videosdk/interfaces/TouchActionCallback;",
        "Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;",
        "Lcom/xiaomi/milab/videosdk/interfaces/EventCallback;",
        "<init>",
        "()V",
        "FPS",
        "",
        "fragmentId",
        "getFragmentId",
        "()I",
        "mMaxDuration",
        "",
        "mTextureView",
        "Lcom/xiaomi/milab/videosdk/XmsTextureView;",
        "mTimeline",
        "Lcom/xiaomi/milab/videosdk/XmsTimeline;",
        "mXmsVideoTracks",
        "",
        "Lcom/xiaomi/milab/videosdk/XmsVideoTrack;",
        "mXmsVideoMixers",
        "Lcom/xiaomi/milab/videosdk/XmsVideoMixer;",
        "mFrontMask",
        "DEFAULT_FRAME_DURATION_MILLISECOND",
        "mDisposable",
        "Lio/reactivex/disposables/Disposable;",
        "mResultVideoShowTouchLayout",
        "Landroid/view/ViewGroup;",
        "VIDEO_VIEW_TAG",
        "",
        "mHasSurfaceCreated",
        "",
        "mIsResumedFromOnCreate",
        "mSaveVideoDisposable",
        "getLogTag",
        "initView",
        "",
        "v",
        "Landroid/view/View;",
        "onProcessingSateChanged",
        "newState",
        "onClick",
        "toShowStickerPreview",
        "isAnimator",
        "getReadyState",
        "getAnimatorDuration",
        "toShowStickerFinalAvailable",
        "removeTracks",
        "getTouchLayoutView",
        "getMaxDuration",
        "datas",
        "",
        "Lcom/xiaomi/microfilm/collage/decode/MediaDetailBean;",
        "onResume",
        "onStop",
        "onDestroyView",
        "releaseResource",
        "onSurfaceCreated",
        "addVideoClip",
        "needShowSavingLoading",
        "onSaveFinish",
        "uri",
        "Landroid/net/Uri;",
        "title",
        "toSaveVideo",
        "onVideoTaken",
        "videoPath",
        "success",
        "runable",
        "Ljava/lang/Runnable;",
        "toSaveImageAndVideo",
        "shapeMatrixMapToTrack",
        "",
        "",
        "onMove",
        "p0",
        "Landroid/view/MotionEvent;",
        "p1",
        "p2",
        "p3",
        "onFirstTouchDown",
        "",
        "onLastTouchUp",
        "onLongPress",
        "e",
        "onExportProgress",
        "onExportSuccess",
        "onExportCancel",
        "onExportFail",
        "toSaveVideoResult",
        "result",
        "onClickShape",
        "index",
        "onTimelineStart",
        "onTimelineCaton",
        "onTimelineFirstRender",
        "p4",
        "onTimelineSeekCost",
        "onEventCode",
        "app_cnRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final T:I

.field public U:J

.field public V:Lcom/xiaomi/milab/videosdk/XmsTextureView;

.field public W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

.field public final X:Ljava/util/ArrayList;

.field public final Y:Ljava/util/ArrayList;

.field public Z:Lcom/xiaomi/milab/videosdk/XmsVideoTrack;

.field public final a0:J

.field public b0:Lio/reactivex/disposables/b;

.field public c0:Landroid/widget/FrameLayout;

.field public final d0:Ljava/lang/String;

.field public e0:Z

.field public f0:Z

.field public g0:Lio/reactivex/disposables/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lp4/k;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lp4/q;->T:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp4/q;->X:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp4/q;->Y:Ljava/util/ArrayList;

    const-wide/16 v0, 0x22

    iput-wide v0, p0, Lp4/q;->a0:J

    const-string v0, "ResultVideoShowTAG"

    iput-object v0, p0, Lp4/q;->d0:Ljava/lang/String;

    return-void
.end method

.method public static ir(Lp4/q;Lfv/B;Landroid/graphics/Bitmap;Ljava/util/List;)LPu/A;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Lp4/k;->f:Lp4/a;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lp4/a;->getCurrentState()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x3

    if-lt v3, v5, :cond_1

    sget-object v0, LPu/A;->a:LPu/A;

    return-object v0

    :cond_1
    iget-object v3, v0, Lp4/k;->c:Ljava/util/ArrayList;

    invoke-static {v3}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v0, Lp4/q;->Y:Ljava/util/ArrayList;

    iget-object v9, v0, Lp4/q;->X:Ljava/util/ArrayList;

    const-string v10, "movit.transition.blending"

    const-string v11, ""

    const-wide/16 v12, 0x0

    if-ge v7, v6, :cond_e

    iget-object v14, v0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    invoke-static {v14}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/xiaomi/milab/videosdk/XmsTimeline;->appendVideoTrack()Lcom/xiaomi/milab/videosdk/XmsVideoTrack;

    move-result-object v14

    invoke-static {v14}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lms/b;

    invoke-static {v9}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v9, v9, Lms/b;->m:Ljava/lang/String;

    if-eqz v9, :cond_3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lms/b;

    invoke-static {v9}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v9, v9, Lms/b;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v9}, Lcom/xiaomi/milab/videosdk/XmsVideoTrack;->appendVideoClip(Landroid/graphics/Bitmap;)Lcom/xiaomi/milab/videosdk/XmsVideoClip;

    move-result-object v9

    iput-object v9, v1, Lfv/B;->a:Ljava/lang/Object;

    move/from16 v16, v6

    iget-wide v5, v0, Lp4/q;->a0:J

    if-eqz v9, :cond_2

    invoke-virtual {v9, v12, v13, v5, v6}, Lcom/xiaomi/milab/videosdk/XmsVideoClip;->setInAndOut(JJ)I

    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lms/b;

    invoke-static {v9}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v9, v9, Lms/b;->m:Ljava/lang/String;

    invoke-virtual {v14, v9}, Lcom/xiaomi/milab/videosdk/XmsVideoTrack;->appendVideoClip(Ljava/lang/String;)Lcom/xiaomi/milab/videosdk/XmsVideoClip;

    move-result-object v9

    iput-object v9, v1, Lfv/B;->a:Ljava/lang/Object;

    if-eqz v9, :cond_4

    move-wide/from16 v17, v5

    iget-wide v4, v0, Lp4/q;->U:J

    sub-long v4, v4, v17

    invoke-virtual {v9, v12, v13, v4, v5}, Lcom/xiaomi/milab/videosdk/XmsVideoClip;->setInAndOutIgnoreLength(JJ)I

    goto :goto_2

    :cond_3
    move/from16 v16, v6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lms/b;

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v4, v4, Lms/b;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v4}, Lcom/xiaomi/milab/videosdk/XmsVideoTrack;->appendVideoClip(Landroid/graphics/Bitmap;)Lcom/xiaomi/milab/videosdk/XmsVideoClip;

    move-result-object v4

    iput-object v4, v1, Lfv/B;->a:Ljava/lang/Object;

    if-eqz v4, :cond_4

    iget-wide v5, v0, Lp4/q;->U:J

    invoke-virtual {v4, v12, v13, v5, v6}, Lcom/xiaomi/milab/videosdk/XmsVideoClip;->setInAndOut(JJ)I

    :cond_4
    :goto_2
    iget-object v4, v1, Lfv/B;->a:Ljava/lang/Object;

    check-cast v4, Lcom/xiaomi/milab/videosdk/XmsVideoClip;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/xiaomi/milab/videosdk/XmsVideoClip;->setMute()I

    :cond_5
    const-string v4, "candy.filter.simple.matrix"

    invoke-virtual {v14, v4, v11}, Lcom/xiaomi/milab/videosdk/XmsVideoTrack;->addVideoEffect(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/milab/videosdk/XmsVideoFilter;

    move-result-object v4

    const/16 v5, 0x8

    if-eqz v4, :cond_6

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Double;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-string/jumbo v6, "transX"

    invoke-virtual {v4, v6, v11, v12}, Lcom/xiaomi/milab/videosdk/XmsVideoFilter;->setDoubleParam(Ljava/lang/String;D)V

    :cond_6
    if-eqz v4, :cond_7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Double;

    const/16 v9, 0x9

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-string/jumbo v6, "transY"

    invoke-virtual {v4, v6, v11, v12}, Lcom/xiaomi/milab/videosdk/XmsVideoFilter;->setDoubleParam(Ljava/lang/String;D)V

    :cond_7
    if-eqz v4, :cond_8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Double;

    const/16 v9, 0xa

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-string/jumbo v6, "scaleX"

    invoke-virtual {v4, v6, v11, v12}, Lcom/xiaomi/milab/videosdk/XmsVideoFilter;->setDoubleParam(Ljava/lang/String;D)V

    :cond_8
    if-eqz v4, :cond_9

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Double;

    const/16 v9, 0xb

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-string/jumbo v6, "scaleY"

    invoke-virtual {v4, v6, v11, v12}, Lcom/xiaomi/milab/videosdk/XmsVideoFilter;->setDoubleParam(Ljava/lang/String;D)V

    :cond_9
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v6, v5}, Llv/g;->k(II)Llv/f;

    move-result-object v5

    const-string v6, "<this>"

    invoke-static {v4, v6}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "indices"

    invoke-static {v5, v6}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Llv/f;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v4, LQu/w;->a:LQu/w;

    goto :goto_3

    :cond_a
    iget v6, v5, Llv/d;->b:I

    add-int/lit8 v6, v6, 0x1

    iget v5, v5, Llv/d;->a:I

    invoke-static {v5, v6, v4}, Lud/h5;->t(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lud/h5;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, LQu/n;->V(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v22, 0x3f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v22}, LQu/l;->T([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lev/l;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    iget-wide v11, v0, Lp4/q;->U:J

    const-string/jumbo v6, "stringArray is "

    const-string v9, "   "

    invoke-static {v6, v4, v9, v11, v12}, LB/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "candy.filter.layout"

    invoke-virtual {v14, v5, v4}, Lcom/xiaomi/milab/videosdk/XmsVideoTrack;->addVideoEffect(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/milab/videosdk/XmsVideoFilter;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v5, "filter.border.width"

    const-wide/16 v11, 0x0

    invoke-virtual {v4, v5, v11, v12}, Lcom/xiaomi/milab/videosdk/XmsVideoFilter;->setDoubleParam(Ljava/lang/String;D)V

    :cond_c
    invoke-virtual {v14}, Lcom/xiaomi/milab/videosdk/XmsTrack;->getTrackIndex()I

    move-result v4

    if-nez v4, :cond_d

    goto :goto_5

    :cond_d
    iget-object v4, v0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/xiaomi/milab/videosdk/XmsTrack;->getTrackIndex()I

    move-result v5

    const-string/jumbo v6, "screen_black"

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v5, v10, v6}, Lcom/xiaomi/milab/videosdk/XmsTimeline;->mixVideoTrack(IILjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/milab/videosdk/XmsVideoMixer;

    move-result-object v4

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v16

    const/4 v5, 0x3

    goto/16 :goto_1

    :cond_e
    iget-object v1, v0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/xiaomi/milab/videosdk/XmsTimeline;->appendVideoTrack()Lcom/xiaomi/milab/videosdk/XmsVideoTrack;

    move-result-object v1

    iput-object v1, v0, Lp4/q;->Z:Lcom/xiaomi/milab/videosdk/XmsVideoTrack;

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lp4/q;->Z:Lcom/xiaomi/milab/videosdk/XmsVideoTrack;

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lcom/xiaomi/milab/videosdk/XmsVideoTrack;->appendVideoClip(Landroid/graphics/Bitmap;)Lcom/xiaomi/milab/videosdk/XmsVideoClip;

    move-result-object v1

    iget-object v2, v0, Lp4/q;->Z:Lcom/xiaomi/milab/videosdk/XmsVideoTrack;

    invoke-static {v2}, Lfv/l;->e(Ljava/lang/Object;)V

    const-string v3, "movit.filter.common"

    invoke-virtual {v2, v3, v11}, Lcom/xiaomi/milab/videosdk/XmsVideoTrack;->addVideoEffect(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/milab/videosdk/XmsVideoFilter;

    iget-wide v2, v0, Lp4/q;->U:J

    invoke-virtual {v1, v12, v13, v2, v3}, Lcom/xiaomi/milab/videosdk/XmsVideoClip;->setInAndOut(JJ)I

    iget-object v1, v0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v2, v0, Lp4/q;->Z:Lcom/xiaomi/milab/videosdk/XmsVideoTrack;

    invoke-static {v2}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/xiaomi/milab/videosdk/XmsTrack;->getTrackIndex()I

    move-result v2

    const-string v3, "alphablend"

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v2, v10, v3}, Lcom/xiaomi/milab/videosdk/XmsTimeline;->mixVideoTrack(IILjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/milab/videosdk/XmsVideoMixer;

    move-result-object v1

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object v1

    iget-object v2, v0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    invoke-virtual {v1, v2, v6}, Lcom/xiaomi/milab/videosdk/XmsContext;->prepareTimeline(Lcom/xiaomi/milab/videosdk/XmsTimeline;I)V

    iget-object v1, v0, Lp4/k;->R:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lp4/k;->f:Lp4/a;

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    const/4 v15, 0x3

    invoke-virtual {v1, v15}, Lp4/a;->i(I)V

    iget-object v0, v0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "addVideoClip X"

    const/4 v6, 0x0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, LPu/A;->a:LPu/A;

    return-object v0
.end method

.method public static jr(Lp4/q;ZLjava/lang/String;LGs/c;)V
    .locals 12

    iget-object v0, p0, Lp4/k;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lms/b;

    iget-object v2, p0, Lp4/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lms/b;

    iget-boolean v6, v6, Lms/b;->j:Z

    if-ne v6, v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    check-cast v3, Lms/b;

    if-eqz v3, :cond_2

    iget-object v2, v3, Lms/b;->k:LRh/r;

    move-object v7, v2

    goto :goto_1

    :cond_2
    move-object v7, v4

    :goto_1
    if-eqz v7, :cond_3

    invoke-virtual {v7, v5}, LRh/r;->B(Z)V

    :cond_3
    if-eqz v7, :cond_4

    iget-object v2, v7, LRh/r;->a:LRh/z;

    iput-object v4, v2, LRh/z;->i:[B

    iget-object v2, v7, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ExifData;->getLivePhotoData()Lcom/xiaomi/camera/core/LivePhotoData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/camera/core/LivePhotoData;->setPictureFilled(Z)V

    :cond_4
    if-eqz v7, :cond_5

    iget-object v2, v7, LRh/r;->b:LRh/a;

    iput-boolean v1, v2, LRh/a;->l:Z

    :cond_5
    if-eqz v7, :cond_6

    iget-object v1, v7, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v5}, Lcom/xiaomi/camera/core/ExifData;->setNeedUpdate(Z)V

    :cond_6
    if-eqz v7, :cond_7

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    iget-object v2, v7, LRh/r;->b:LRh/a;

    iput v1, v2, LRh/a;->g:I

    :cond_7
    const-string v1, "null cannot be cast to non-null type com.android.camera.Camera"

    if-eqz p1, :cond_a

    if-eqz v0, :cond_8

    sget-object p1, Lms/b$a;->b:Lms/b$a;

    iput-object p1, v0, Lms/b;->r:Lms/b$a;

    :cond_8
    if-eqz v7, :cond_9

    const-wide/16 v2, 0x0

    const/4 p1, -0x1

    invoke-virtual {v7, p1, p2, v2, v3}, LRh/r;->b(ILjava/lang/String;J)V

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object p1

    invoke-static {p1, v1}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/camera/Camera;

    iget-object v6, p1, Lcom/android/camera/Camera;->C1:Lk7/i;

    const-wide/16 v9, 0x0

    const/4 v11, -0x1

    move-object v8, p2

    invoke-virtual/range {v6 .. v11}, Lk7/i;->i(Ljava/lang/Object;Ljava/lang/String;JI)V

    goto :goto_2

    :cond_a
    if-eqz v0, :cond_b

    sget-object p1, Lms/b$a;->c:Lms/b$a;

    iput-object p1, v0, Lms/b;->r:Lms/b$a;

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object p1

    invoke-static {p1, v1}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/camera/Camera;

    iget-object p1, p1, Lcom/android/camera/Camera;->C1:Lk7/i;

    invoke-virtual {p1, v7}, Lk7/i;->j(Ljava/lang/Object;)V

    :goto_2
    iget-object p0, p0, Lp4/k;->R:Landroid/os/Handler;

    new-instance p1, LAc/f;

    const/16 p2, 0x8

    invoke-direct {p1, p3, p2}, LAc/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static kr(Lp4/q;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onSurfaceCreated"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp4/q;->e0:Z

    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object v0

    iget-object v1, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    iget-object v2, p0, Lp4/q;->V:Lcom/xiaomi/milab/videosdk/XmsTextureView;

    iget v3, p0, Lp4/q;->T:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/milab/videosdk/XmsContext;->attachTexture(Lcom/xiaomi/milab/videosdk/XmsTimeline;Lcom/xiaomi/milab/videosdk/XmsTextureView;I)V

    invoke-virtual {p0}, Lp4/q;->lr()V

    return-void
.end method


# virtual methods
.method public final Rq()J
    .locals 2

    const-wide/16 v0, 0x4b0

    return-wide v0
.end method

.method public final Sq()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final Uq()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lp4/q;->c0:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final Xq(I)V
    .locals 3

    iget-object v0, p0, Lp4/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lms/b;

    const/4 v2, 0x0

    iput-object v2, v1, Lms/b;->b:Landroid/net/Uri;

    sget-object v2, Lms/b$a;->a:Lms/b$a;

    iput-object v2, v1, Lms/b;->r:Lms/b$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lp4/k;->br(Z)V

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LV9/v5;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LV9/v5;-><init>(II)V

    new-instance p1, LF1/W2;

    const/16 v1, 0x9

    invoke-direct {p1, v0, v1}, LF1/W2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Zq(I)V
    .locals 3

    const-string v0, "onProcessingSateChanged: "

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1}, Lp4/k;->Zq(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lp4/k;->hr()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lp4/k;->br(Z)V

    invoke-virtual {p0}, Lp4/q;->nr()V

    return-void
.end method

.method public final dr()V
    .locals 8

    iget-object v0, p0, Lp4/k;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lms/b;

    iget-object v2, v2, Lms/b;->b:Landroid/net/Uri;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lms/b;

    iget-object v2, v2, Lms/b;->b:Landroid/net/Uri;

    invoke-static {v2}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "getContentResolver(...)"

    invoke-static {v3, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lvr/Q;->f(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "toSaveImageAndVideo  "

    invoke-static {v2, v4}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lp4/k;->ar()Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lms/b;

    iget-object v2, v2, Lms/b;->b:Landroid/net/Uri;

    invoke-static {v2}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lms/b;

    iget-object v0, v0, Lms/b;->e:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lp4/q;->wc(Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lp4/k;->ar()Z

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lms/b;

    iget-object v2, v0, Lms/b;->r:Lms/b$a;

    sget-object v3, Lms/b$a;->b:Lms/b$a;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lms/b;->n:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lms/b;->n:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lp4/q;->or(Z)V

    return-void

    :cond_1
    iget-object v2, v0, Lms/b;->r:Lms/b$a;

    sget-object v3, Lms/b$a;->c:Lms/b$a;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v1}, Lp4/q;->or(Z)V

    return-void

    :cond_2
    sget-object v2, Le2/g;->b:Ljava/lang/String;

    const-string v3, "result.mp4"

    invoke-static {v2, v3}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lms/b;->n:Ljava/lang/String;

    const/16 v3, 0x510

    int-to-float v3, v3

    iget-object v4, p0, Lp4/k;->P:Lcom/xiaomi/microfilm/collage/CollageItem;

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    iget v4, v4, Lcom/xiaomi/microfilm/collage/CollageItem;->f:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    iget v5, v0, Lms/b;->q:I

    const-string/jumbo v6, "toSaveVideo E   1296   "

    const-string v7, "  "

    invoke-static {v3, v5, v6, v7}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object v4

    iget-object v5, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    invoke-virtual {v4, v5}, Lcom/xiaomi/milab/videosdk/XmsContext;->stop(Lcom/xiaomi/milab/videosdk/XmsTimeline;)V

    sget-object v4, Lcom/xiaomi/camera/rx/CameraSchedulers;->sSDKScheduler:Lio/reactivex/v;

    const-string/jumbo v5, "sSDKScheduler"

    invoke-static {v4, v5}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lp4/m;

    invoke-direct {v5, p0, v2, v3, v0}, Lp4/m;-><init>(Lp4/q;Ljava/lang/String;ILms/b;)V

    invoke-static {v4, v5}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    move-result-object v0

    iput-object v0, p0, Lp4/q;->g0:Lio/reactivex/disposables/b;

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "toSaveVideo X"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final er()V
    .locals 6

    invoke-super {p0}, Lp4/k;->er()V

    iget-object v0, p0, Lp4/k;->R:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lp4/k;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lms/b;

    iget-wide v3, v3, Lms/b;->o:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lp4/q;->a0:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lp4/q;->U:J

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "mMaxDuration is "

    invoke-static {v1, v2, v3}, LHs/a;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    const/4 v1, -0x1

    if-nez v0, :cond_3

    new-instance v0, Lcom/xiaomi/milab/videosdk/XmsTextureView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/milab/videosdk/XmsTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lp4/q;->V:Lcom/xiaomi/milab/videosdk/XmsTextureView;

    new-instance v2, LJ4/k;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, LJ4/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/milab/videosdk/XmsTextureView;->setCreatedLister(Lcom/xiaomi/milab/videosdk/interfaces/SurfaceCreatedCallback;)V

    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/milab/videosdk/XmsContext;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/milab/videosdk/XmsContext;->initLister()V

    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/milab/videosdk/XmsContext;->setExportCallback(Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;)V

    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/milab/videosdk/XmsContext;->createTimeline()Lcom/xiaomi/milab/videosdk/XmsTimeline;

    move-result-object v0

    iput-object v0, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/xiaomi/milab/videosdk/XmsTimeline;->setEventCallBack(Lcom/xiaomi/milab/videosdk/interfaces/EventCallback;)I

    iget-object v0, p0, Lp4/q;->V:Lcom/xiaomi/milab/videosdk/XmsTextureView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/xiaomi/milab/videosdk/XmsTextureView;->setTouchActionCallback(Lcom/xiaomi/milab/videosdk/interfaces/TouchActionCallback;)V

    :cond_2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lp4/q;->c0:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v3, p0, Lp4/q;->V:Lcom/xiaomi/milab/videosdk/XmsTextureView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lp4/q;->e0:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "mHasSurfaceCreated is true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lp4/q;->nr()V

    invoke-virtual {p0}, Lp4/q;->lr()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lp4/q;->c0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ge v1, v2, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(...)"

    invoke-static {v3, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, v3, Los/b;

    if-eqz v4, :cond_5

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lp4/q;->c0:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lp4/k;->P:Lcom/xiaomi/microfilm/collage/CollageItem;

    invoke-static {v0, v1, p0}, Lks/b;->b(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/xiaomi/microfilm/collage/CollageItem;)V

    :cond_7
    return-void
.end method

.method public final fr(Z)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "toShowStickerPreview E"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v2, p0, Lp4/q;->d0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lp4/q;->c0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lp4/q;->c0:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lp4/q;->c0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1}, Lp4/k;->fr(Z)V

    iget-object p1, p0, Lp4/q;->c0:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lp4/q;->c0:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "toShowStickerPreview X"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final getFragmentId()I
    .locals 0

    const/16 p0, 0xbd

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FragmentVideoStickerResult"

    return-object p0
.end method

.method public final initView(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lp4/k;->initView(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp4/q;->f0:Z

    return-void
.end method

.method public final lr()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "addVideoClip E"

    invoke-static {v1, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lp4/k;->j:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v3, "getLayoutParams(...)"

    invoke-static {v1, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    if-eqz v4, :cond_0

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v5

    move v10, v6

    invoke-virtual/range {v4 .. v10}, Lcom/xiaomi/milab/videosdk/XmsTimeline;->updateViewport(IIIIII)I

    :cond_0
    iget-object v3, v0, Lp4/q;->V:Lcom/xiaomi/milab/videosdk/XmsTextureView;

    if-eqz v3, :cond_1

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v2, v2, v4, v1}, Lcom/xiaomi/milab/videosdk/XmsTextureView;->setViewport(IIII)V

    :cond_1
    iget-object v1, v0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/xiaomi/milab/videosdk/XmsTimeline;->stop()I

    :cond_2
    new-instance v1, Lfv/B;

    invoke-direct {v1}, Lfv/B;-><init>()V

    iget-object v3, v0, Lp4/k;->P:Lcom/xiaomi/microfilm/collage/CollageItem;

    invoke-static {v3}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/xiaomi/microfilm/collage/CollageItem;->Z()Lcom/xiaomi/microfilm/collage/CollageItem;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    move v5, v2

    :goto_0
    iget-object v6, v3, Lcom/xiaomi/microfilm/collage/CollageItem;->j:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, v3, Lcom/xiaomi/microfilm/collage/CollageItem;->j:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Los/a;

    const/4 v7, 0x1

    iput-boolean v7, v6, Los/a;->o:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget v5, v3, Lcom/xiaomi/microfilm/collage/CollageItem;->f:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v5, v6

    iget v8, v0, Lp4/k;->a:I

    if-gez v7, :cond_4

    int-to-float v6, v8

    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    goto :goto_1

    :cond_4
    cmpl-float v6, v5, v6

    if-lez v6, :cond_5

    int-to-float v6, v8

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move/from16 v17, v8

    move v8, v5

    move/from16 v5, v17

    goto :goto_1

    :cond_5
    move v5, v8

    :goto_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    invoke-static {v7, v4, v8, v5, v3}, Lks/c;->a(Landroid/graphics/Canvas;Landroid/content/Context;IILcom/xiaomi/microfilm/collage/CollageItem;)V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    iget-object v9, v3, Lcom/xiaomi/microfilm/collage/CollageItem;->j:Ljava/util/ArrayList;

    move v10, v2

    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Los/a;

    iget v12, v3, Lcom/xiaomi/microfilm/collage/CollageItem;->f:F

    invoke-virtual {v11, v8, v12, v5}, Los/a;->a(IFI)V

    int-to-float v12, v8

    iget v13, v11, Los/a;->m:F

    mul-float/2addr v13, v12

    iget v14, v11, Los/a;->b:F

    div-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    int-to-float v14, v5

    iget v15, v11, Los/a;->n:F

    mul-float/2addr v15, v14

    iget v2, v11, Los/a;->c:F

    div-float/2addr v15, v2

    move-object v2, v9

    move/from16 v16, v10

    float-to-double v9, v15

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    iget v10, v11, Los/a;->k:F

    mul-float/2addr v12, v10

    iget v10, v11, Los/a;->b:F

    div-float/2addr v12, v10

    move v10, v14

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v12, v14

    iget v14, v11, Los/a;->l:F

    mul-float/2addr v14, v10

    iget v10, v11, Los/a;->c:F

    div-float/2addr v14, v10

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v10, v14

    new-instance v14, Los/b;

    invoke-direct {v14, v4}, Los/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v12, v10, v11}, Los/b;->d(IILos/a;)V

    iget-boolean v11, v11, Los/a;->o:Z

    if-eqz v11, :cond_6

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v14, v10}, Los/b;->setBaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_6
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    int-to-float v10, v13

    int-to-float v9, v9

    invoke-virtual {v7, v10, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v14, v7}, Los/b;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v10, v16, 0x1

    move-object v9, v2

    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    invoke-static {v7, v4, v8, v5, v3}, Lks/c;->b(Landroid/graphics/Canvas;Landroid/content/Context;IILcom/xiaomi/microfilm/collage/CollageItem;)V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    const/4 v2, 0x0

    :goto_3
    iget-object v4, v3, Lcom/xiaomi/microfilm/collage/CollageItem;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    iget-object v4, v3, Lcom/xiaomi/microfilm/collage/CollageItem;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Los/a;

    const/4 v5, 0x0

    iput-boolean v5, v4, Los/a;->o:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    iget-object v2, v0, Lp4/q;->b0:Lio/reactivex/disposables/b;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Lio/reactivex/disposables/b;->a()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lp4/q;->b0:Lio/reactivex/disposables/b;

    invoke-static {v2}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Lio/reactivex/disposables/b;->c()V

    :cond_9
    new-instance v2, Lp4/o;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lp4/o;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lio/reactivex/internal/operators/single/i;

    invoke-direct {v3, v2}, Lio/reactivex/internal/operators/single/i;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sSDKScheduler:Lio/reactivex/v;

    invoke-virtual {v3, v2}, Lio/reactivex/w;->e(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/m;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-virtual {v2, v3}, Lio/reactivex/w;->c(Lio/reactivex/v;)Lio/reactivex/internal/operators/single/l;

    move-result-object v2

    new-instance v3, Lp4/p;

    invoke-direct {v3, v0, v1, v6}, Lp4/p;-><init>(Lp4/q;Lfv/B;Landroid/graphics/Bitmap;)V

    new-instance v1, LEs/T;

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, LEs/T;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v1}, Lio/reactivex/w;->subscribe(Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object v1

    iput-object v1, v0, Lp4/q;->b0:Lio/reactivex/disposables/b;

    return-void
.end method

.method public final mr()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "releaseResource"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lp4/q;->b0:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp4/q;->b0:Lio/reactivex/disposables/b;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-interface {v0}, Lio/reactivex/disposables/b;->c()V

    :cond_0
    iget-object v0, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/milab/videosdk/XmsTimeline;->stop()I

    :cond_1
    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object v0

    iget-object v1, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    invoke-virtual {v0, v1}, Lcom/xiaomi/milab/videosdk/XmsContext;->removeTimeline(Lcom/xiaomi/milab/videosdk/XmsTimeline;)I

    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/milab/videosdk/XmsContext;->unRegisterMessageHandler()V

    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/milab/videosdk/XmsContext;->release()V

    iget-object v0, p0, Lp4/q;->V:Lcom/xiaomi/milab/videosdk/XmsTextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/xiaomi/milab/videosdk/XmsTextureView;->setCreatedLister(Lcom/xiaomi/milab/videosdk/interfaces/SurfaceCreatedCallback;)V

    :cond_2
    iget-object v0, p0, Lp4/q;->V:Lcom/xiaomi/milab/videosdk/XmsTextureView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/xiaomi/milab/videosdk/XmsTextureView;->setTouchActionCallback(Lcom/xiaomi/milab/videosdk/interfaces/TouchActionCallback;)V

    :cond_3
    iput-object v1, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    :cond_4
    iget-object p0, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_5
    return-void
.end method

.method public final nr()V
    .locals 5

    iget-boolean v0, p0, Lp4/q;->e0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "removeTracks"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/milab/videosdk/XmsTimeline;->stop()I

    :cond_1
    iget-object v0, p0, Lp4/q;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/milab/videosdk/XmsVideoTrack;

    invoke-virtual {v2}, Lcom/xiaomi/milab/videosdk/XmsVideoTrack;->removeAllClips()I

    invoke-virtual {v2}, Lcom/xiaomi/milab/videosdk/XmsVideoTrack;->removeAllVideoEffect()I

    iget-object v3, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Lcom/xiaomi/milab/videosdk/XmsTimeline;->removeVideoTrack(Lcom/xiaomi/milab/videosdk/XmsVideoTrack;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lp4/q;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/milab/videosdk/XmsVideoMixer;

    iget-object v4, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Lcom/xiaomi/milab/videosdk/XmsTimeline;->removeVideoMixer(Lcom/xiaomi/milab/videosdk/XmsVideoMixer;)I

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0b015f

    if-ne v4, v5, :cond_3

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick bt_waiting_print_back"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lp4/k;->Pq(Z)V

    iget-object p0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lp4/a;->a:Lcom/android/camera/data/observeable/b;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/observeable/b;->c(Ljava/lang/Integer;)V

    return-void

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0b0a37

    if-ne v4, v5, :cond_6

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick sticker_result_operate_print"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lp4/a;->getCurrentState()I

    move-result p1

    if-eq p1, v1, :cond_5

    invoke-virtual {p0, v2, v2}, Lp4/k;->cr(ZZ)V

    return-void

    :cond_5
    iget-object p0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lp4/a;->i(I)V

    return-void

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v4, 0x7f0b0a35

    if-ne v0, v4, :cond_9

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick sticker_result_operate_done"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lp4/a;->getCurrentState()I

    move-result p1

    if-eq p1, v1, :cond_8

    invoke-virtual {p0, v2, v3}, Lp4/k;->cr(ZZ)V

    return-void

    :cond_8
    iget-object p0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lp4/a;->i(I)V

    return-void

    :cond_9
    :goto_3
    invoke-super {p0, p1}, Lp4/k;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    iget-object v0, p0, Lp4/q;->g0:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp4/q;->g0:Lio/reactivex/disposables/b;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-interface {v0}, Lio/reactivex/disposables/b;->c()V

    :cond_0
    invoke-virtual {p0}, Lp4/q;->mr()V

    invoke-super {p0}, Lp4/k;->onDestroyView()V

    return-void
.end method

.method public final onEventCode(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public final onExportCancel()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onExportCancel "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lp4/q;->or(Z)V

    return-void
.end method

.method public final onExportFail()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onExportFail "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lp4/q;->or(Z)V

    return-void
.end method

.method public final onExportProgress(I)V
    .locals 0

    return-void
.end method

.method public final onExportSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onExportSuccess "

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lp4/q;->or(Z)V

    return-void
.end method

.method public final onFirstTouchDown(Landroid/view/MotionEvent;FF)V
    .locals 0

    iget-object p2, p0, Lp4/k;->l:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lp4/k;->Q:Landroid/view/GestureDetector;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onLastTouchUp(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lp4/k;->l:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lp4/k;->Q:Landroid/view/GestureDetector;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    iget-object p1, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/xiaomi/milab/videosdk/XmsTimeline;->getStatus()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object p1

    iget-object v0, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    invoke-virtual {p1, v0}, Lcom/xiaomi/milab/videosdk/XmsContext;->pause(Lcom/xiaomi/milab/videosdk/XmsTimeline;)V

    :cond_2
    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object p1

    iget-object p0, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/xiaomi/milab/videosdk/XmsContext;->seekTimeline(Lcom/xiaomi/milab/videosdk/XmsTimeline;JI)V

    return-void
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lp4/k;->l:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lp4/q;->c0:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ge v0, p1, :cond_2

    iget-object v0, p0, Lp4/q;->c0:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "getChildAt(...)"

    invoke-static {v0, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v0, Los/b;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Los/b;

    invoke-virtual {v2}, Los/b;->getShapeInfo()Los/a;

    move-result-object v2

    iput-boolean v1, v2, Los/a;->i:Z

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/xiaomi/milab/videosdk/XmsTimeline;->getStatus()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object p1

    iget-object v0, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/xiaomi/milab/videosdk/XmsContext;->seekTimeline(Lcom/xiaomi/milab/videosdk/XmsTimeline;JI)V

    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object p1

    iget-object p0, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    invoke-virtual {p1, p0}, Lcom/xiaomi/milab/videosdk/XmsContext;->resume(Lcom/xiaomi/milab/videosdk/XmsTimeline;)V

    return-void

    :cond_3
    iget-object p1, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/xiaomi/milab/videosdk/XmsTimeline;->getStatus()I

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/xiaomi/milab/videosdk/XmsContext;->getInstance()Lcom/xiaomi/milab/videosdk/XmsContext;

    move-result-object p1

    iget-object p0, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    invoke-virtual {p1, p0, v1}, Lcom/xiaomi/milab/videosdk/XmsContext;->playTimeline(Lcom/xiaomi/milab/videosdk/XmsTimeline;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onMove(Landroid/view/MotionEvent;III)V
    .locals 0

    iget-object p2, p0, Lp4/k;->l:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lp4/k;->Q:Landroid/view/GestureDetector;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onResume"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/fragment/h;->onResume()V

    iget-object v0, p0, Lp4/k;->f:Lp4/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp4/a;->getCurrentState()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lp4/q;->f0:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lp4/q;->W:Lcom/xiaomi/milab/videosdk/XmsTimeline;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lp4/k;->f:Lp4/a;

    if-eqz v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Lp4/a;->a:Lcom/android/camera/data/observeable/b;

    invoke-virtual {v0, v2}, Lcom/android/camera/data/observeable/b;->c(Ljava/lang/Integer;)V

    :cond_1
    invoke-virtual {p0}, Lp4/q;->er()V

    :cond_2
    iput-boolean v1, p0, Lp4/q;->f0:Z

    return-void
.end method

.method public final onStop()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onStop"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Lp4/k;->q:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lp4/q;->mr()V

    return-void
.end method

.method public final onTimelineCaton(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final onTimelineFirstRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "onTimelineFirstRender "

    invoke-static {p1, p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    new-instance p2, LC4/H;

    const/16 p3, 0x8

    invoke-direct {p2, p0, p3}, LC4/H;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTimelineSeekCost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final onTimelineStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final or(Z)V
    .locals 4

    iget-object v0, p0, Lp4/k;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lms/b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lms/b;->n:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, LGs/c;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, LGs/c;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "onVideoTaken"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sSDKScheduler:Lio/reactivex/v;

    const-string/jumbo v3, "sSDKScheduler"

    invoke-static {v2, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lp4/n;

    invoke-direct {v3, p0, p1, v0, v1}, Lp4/n;-><init>(Lp4/q;ZLjava/lang/String;LGs/c;)V

    invoke-static {v2, v3}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    move-result-object p1

    iput-object p1, p0, Lp4/q;->g0:Lio/reactivex/disposables/b;

    return-void
.end method

.method public final wc(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lp4/k;->wc(Landroid/net/Uri;Ljava/lang/String;)V

    iget-object p1, p0, Lp4/k;->R:Landroid/os/Handler;

    new-instance p2, LF1/S2;

    const/16 v0, 0xa

    invoke-direct {p2, p0, v0}, LF1/S2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
