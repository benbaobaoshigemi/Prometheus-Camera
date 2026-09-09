.class public Lp4/k;
.super Lcom/android/camera/fragment/h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lp4/s;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements LQ6/c0;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00fc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 \u00a2\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0002\u00a2\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010J\u001a\u00020K2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0014J\u0012\u0010N\u001a\u00020K2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0014J\u0008\u0010O\u001a\u00020PH\u0014J(\u0010Q\u001a\u00020K2\u0006\u0010R\u001a\u00020\t2\u000e\u0010S\u001a\n\u0012\u0004\u0012\u00020T\u0018\u00010\u000f2\u0006\u0010U\u001a\u00020\tH\u0016J\u0008\u0010V\u001a\u00020\tH\u0014J\u0010\u0010W\u001a\u00020K2\u0006\u0010X\u001a\u00020?H\u0014J\u0010\u0010Y\u001a\u00020K2\u0006\u0010Z\u001a\u00020[H\u0002J\u0010\u0010\\\u001a\u00020K2\u0006\u0010Z\u001a\u00020[H\u0002J\u0010\u0010]\u001a\u00020\u00142\u0006\u0010^\u001a\u00020_H\u0016J\u0010\u0010`\u001a\u00020K2\u0006\u0010^\u001a\u00020_H\u0016J*\u0010a\u001a\u00020\u00142\u0008\u0010b\u001a\u0004\u0018\u00010_2\u0006\u0010c\u001a\u00020_2\u0006\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020eH\u0016J*\u0010g\u001a\u00020\u00142\u0008\u0010b\u001a\u0004\u0018\u00010_2\u0006\u0010c\u001a\u00020_2\u0006\u0010h\u001a\u00020e2\u0006\u0010i\u001a\u00020eH\u0016J\n\u0010j\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010k\u001a\u00020\u00142\u0006\u0010^\u001a\u00020_H\u0016J\u0008\u0010l\u001a\u00020\u0014H\u0016J\u0010\u0010m\u001a\u00020K2\u0006\u0010^\u001a\u00020_H\u0016J\u0008\u0010n\u001a\u00020oH\u0014J\u0008\u0010p\u001a\u00020KH\u0016J\u0016\u0010q\u001a\u00020K2\u0006\u0010r\u001a\u00020\u00142\u0006\u0010s\u001a\u00020\u0014J\u0008\u0010t\u001a\u00020KH\u0016J\u0008\u0010u\u001a\u00020KH\u0016J\u0010\u0010v\u001a\u00020\u00142\u0006\u0010w\u001a\u00020oH\u0002J\u0010\u0010x\u001a\u00020K2\u0006\u0010y\u001a\u00020\u0014H\u0016J\u0008\u0010z\u001a\u00020KH\u0002J\u001c\u0010{\u001a\u00020K2\u0008\u0010X\u001a\u0004\u0018\u00010?2\u0008\u0010|\u001a\u0004\u0018\u00010}H\u0014J\u0011\u0010~\u001a\u00020\u007f2\u0007\u0010\u0080\u0001\u001a\u00020\tH\u0016J\t\u0010\u0081\u0001\u001a\u00020KH\u0017J\u0011\u0010\u0082\u0001\u001a\u00020K2\u0006\u0010r\u001a\u00020\u0014H\u0017J\u001a\u0010\u0084\u0001\u001a\u00020\u00142\u0007\u0010\u0085\u0001\u001a\u00020_2\u0006\u0010r\u001a\u00020\u0014H\u0002J\u0012\u0010\u0086\u0001\u001a\u00020K2\u0007\u0010\u0087\u0001\u001a\u00020\u0014H\u0016J\t\u0010\u0088\u0001\u001a\u00020KH\u0016J\u0011\u0010\u0089\u0001\u001a\u00020K2\u0006\u0010r\u001a\u00020\u0014H\u0002J\t\u0010\u008a\u0001\u001a\u00020\u0014H\u0016J\u0012\u0010\u008b\u0001\u001a\u00020K2\u0007\u0010\u008c\u0001\u001a\u00020\tH\u0016J\t\u0010\u008d\u0001\u001a\u00020\tH\u0016J\n\u0010\u008e\u0001\u001a\u00030\u008f\u0001H\u0016J\u0012\u0010\u0090\u0001\u001a\u00020K2\u0007\u0010\u0091\u0001\u001a\u00020\u0014H\u0017J\t\u0010\u0092\u0001\u001a\u00020KH\u0016J\t\u0010\u0093\u0001\u001a\u00020\u0014H\u0016J\t\u0010\u0094\u0001\u001a\u00020KH\u0016J\u001c\u0010\u0095\u0001\u001a\u00020K2\u0006\u0010Z\u001a\u00020[2\t\u0010\u0096\u0001\u001a\u0004\u0018\u00010oH\u0016J\u0013\u0010\u0097\u0001\u001a\u00020K2\u0008\u0010X\u001a\u0004\u0018\u00010?H\u0016J\u001d\u0010\u0098\u0001\u001a\u00020K2\t\u0010\u0099\u0001\u001a\u0004\u0018\u00010#2\t\u0010\u009a\u0001\u001a\u0004\u0018\u00010#J\u0014\u0010\u009b\u0001\u001a\u00030\u009c\u00012\n\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009c\u0001J\u0012\u0010\u009e\u0001\u001a\u00020K2\u0007\u0010\u009f\u0001\u001a\u00020\tH\u0016J\u0012\u0010\u00a0\u0001\u001a\u00020\u00142\u0007\u0010\u00a1\u0001\u001a\u00020\tH\u0016R\u0014\u0010\u0008\u001a\u00020\tX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u0004\u0018\u00010+8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010,\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010.\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00101\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00102\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00103\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00105\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00106\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00107\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00108\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00109\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010:\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010;\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010=\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010>\u001a\u0004\u0018\u00010?8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010@\u001a\u0004\u0018\u00010A8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010B\u001a\u0004\u0018\u00010C8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010D\u001a\u00020E\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010GR\u0014\u0010H\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010\u000bR\u000f\u0010\u0083\u0001\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00a3\u0001"
    }
    d2 = {
        "Lcom/android/camera/features/mode/sticker/ui/FragmentStickerResult;",
        "Lcom/android/camera/fragment/BaseFragment;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/camera/features/mode/sticker/ui/IStickerResult;",
        "Landroid/view/GestureDetector$OnGestureListener;",
        "Lcom/android/camera/protocol/protocols/HandleBackTrace;",
        "<init>",
        "()V",
        "RESULT_WIDTH",
        "",
        "getRESULT_WIDTH",
        "()I",
        "mRootView",
        "Landroid/view/ViewGroup;",
        "mDatas",
        "",
        "Lcom/xiaomi/microfilm/collage/decode/MediaDetailBean;",
        "mAnimator",
        "Landroid/animation/ValueAnimator;",
        "mNeedAnimator",
        "",
        "getMNeedAnimator",
        "()Z",
        "setMNeedAnimator",
        "(Z)V",
        "mCgTemplateViewModel",
        "Lcom/android/camera/features/mode/sticker/ui/CgTemplateViewModel;",
        "getMCgTemplateViewModel",
        "()Lcom/android/camera/features/mode/sticker/ui/CgTemplateViewModel;",
        "setMCgTemplateViewModel",
        "(Lcom/android/camera/features/mode/sticker/ui/CgTemplateViewModel;)V",
        "mResultRootLayout",
        "Landroid/widget/FrameLayout;",
        "mLastState",
        "mJpg",
        "",
        "mThumb",
        "mResultShowLayout",
        "mResultAnimatorShowLayout",
        "mResultShowTouchLayout",
        "mOperateLayout",
        "Landroid/widget/LinearLayout;",
        "mSaveImageDisposable",
        "Lio/reactivex/disposables/Disposable;",
        "mBtPrintProgressBar",
        "Landroid/widget/ProgressBar;",
        "mBtDoneProgressBar",
        "mBlurPrintBt",
        "Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;",
        "mExitLayout",
        "mBlurDoneBt",
        "mImBlurPrintBt",
        "Landroid/widget/ImageView;",
        "mImBlurDoneBt",
        "mPrintRootLayout",
        "mFlipIcon",
        "mPrintIngRootLayout",
        "mInstallRootLayout",
        "mBackBt",
        "mRetryBt",
        "Landroid/widget/TextView;",
        "mRetryProgressBar",
        "mInstallResultView",
        "Landroid/view/View;",
        "mCollageItem",
        "Lcom/xiaomi/microfilm/collage/CollageItem;",
        "mGestureDetector",
        "Landroid/view/GestureDetector;",
        "mHandler",
        "Landroid/os/Handler;",
        "getMHandler",
        "()Landroid/os/Handler;",
        "fragmentId",
        "getFragmentId",
        "register",
        "",
        "modeCoordinator",
        "Lcom/android/camera/protocol/ModeCoordinator;",
        "unRegister",
        "constructConfigItem",
        "Lcom/android/camera/bean/BaseConfigItem;",
        "provideAnimateElement",
        "newMode",
        "animateInElements",
        "Lio/reactivex/Completable;",
        "resetType",
        "getLayoutResourceId",
        "initView",
        "v",
        "toPrint",
        "uri",
        "Landroid/net/Uri;",
        "gotoMijia",
        "onDown",
        "e",
        "Landroid/view/MotionEvent;",
        "onShowPress",
        "onFling",
        "e1",
        "e2",
        "velocityX",
        "",
        "velocityY",
        "onScroll",
        "distanceX",
        "distanceY",
        "getTouchLayoutView",
        "onSingleTapUp",
        "resetSelectView",
        "onLongPress",
        "getLogTag",
        "",
        "updateLoadingToSave",
        "showSavingUi",
        "show",
        "isPrint",
        "toSaveImageAndVideo",
        "onDestroyView",
        "isAppInstalled",
        "packageName",
        "changePrintOrResult",
        "showResult",
        "checkMijiaAndShow",
        "updateView",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "getSaveJpgValues",
        "Landroid/graphics/Bitmap;",
        "minWidth",
        "setFragmentWaitingPreview",
        "setFragmentVisibility",
        "mIsOutRect",
        "touchOutsideResetSelectView",
        "event",
        "changeButtonStatus",
        "enable",
        "onAnimationEnd",
        "toUpLayerTopAlert",
        "needShowSavingLoading",
        "onProcessingSateChanged",
        "newState",
        "getReadyState",
        "getAnimatorDuration",
        "",
        "toShowStickerPreview",
        "isAnimator",
        "toShowStickerFinalAvailable",
        "startToSave",
        "onRetryCaptureCancel",
        "onSaveFinish",
        "title",
        "onClick",
        "onPictureTaken",
        "jpegData",
        "thumbnail",
        "getPictureInfo",
        "Lcom/xiaomi/camera/bean/PictureInfo;",
        "pictureInfo",
        "onClickShape",
        "index",
        "onBackEvent",
        "callingFrom",
        "Companion",
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
.field public I:Landroid/widget/FrameLayout;

.field public J:Landroid/widget/FrameLayout;

.field public K:Landroid/widget/FrameLayout;

.field public L:Landroid/widget/ImageView;

.field public M:Landroid/widget/TextView;

.field public N:Landroid/widget/ProgressBar;

.field public O:Landroid/view/View;

.field public P:Lcom/xiaomi/microfilm/collage/CollageItem;

.field public Q:Landroid/view/GestureDetector;

.field public final R:Landroid/os/Handler;

.field public S:Z

.field public final a:I

.field public b:Landroid/view/ViewGroup;

.field public final c:Ljava/util/ArrayList;

.field public d:Landroid/animation/ValueAnimator;

.field public e:Z

.field public f:Lp4/a;

.field public g:Landroid/widget/FrameLayout;

.field public h:I

.field public i:[B

.field public j:Landroid/widget/FrameLayout;

.field public k:Landroid/widget/FrameLayout;

.field public l:Landroid/widget/FrameLayout;

.field public m:Lio/reactivex/disposables/b;

.field public n:Landroid/widget/ProgressBar;

.field public o:Landroid/widget/ProgressBar;

.field public p:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

.field public q:Landroid/widget/FrameLayout;

.field public r:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

.field public s:Landroid/widget/ImageView;

.field public t:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/fragment/h;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lp4/k;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp4/k;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp4/k;->e:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lmf/e;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lmf/e;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lp4/k;->R:Landroid/os/Handler;

    return-void
.end method

.method public static Mq(Lp4/k;[B[B)V
    .locals 9

    iget-object v0, p0, Lp4/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lms/b;

    iget-boolean v3, v3, Lms/b;->j:Z

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_0
    check-cast v1, Lms/b;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken mediaDetailBean not find,use last"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lp4/k;->c:Ljava/util/ArrayList;

    invoke-static {v0}, LQu/n;->X(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lms/b;

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, v1, Lms/b;->k:LRh/r;

    move-object v4, v0

    goto :goto_1

    :cond_3
    move-object v4, v5

    :goto_1
    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v0, v1, Lms/b;->d:Landroid/net/Uri;

    if-nez v0, :cond_4

    iget-object v0, v1, Lms/b;->c:Landroid/net/Uri;

    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    const-string v6, "r"

    invoke-virtual {v1, v0, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const-string v6, "getFileDescriptor(...)"

    invoke-static {v0, v6}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lrf/a;->a:Ljava/nio/charset/Charset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Lrf/b;

    invoke-direct {v6, v0}, Lrf/b;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v6, 0x0

    :goto_2
    sget-object v0, LPu/A;->a:LPu/A;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    if-eqz p1, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v6, p1}, Lrf/b;->U([B)V

    :cond_5
    invoke-static {v6, p2}, Lk7/d;->h(Lrf/b;[B)Lk7/d$a;

    move-result-object p1

    iget p2, p0, Lp4/k;->a:I

    int-to-float v0, p2

    iget-object v1, p0, Lp4/k;->P:Lcom/xiaomi/microfilm/collage/CollageItem;

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    iget v1, v1, Lcom/xiaomi/microfilm/collage/CollageItem;->f:F

    div-float v1, v0, v1

    float-to-int v1, v1

    invoke-virtual {p1, v3, p2, v1}, Lk7/d$a;->b(III)V

    invoke-virtual {p1}, Lk7/d$a;->e()[B

    move-result-object p1

    if-eqz v4, :cond_6

    iget-object v1, v4, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ExifData;->setNeedUpdate(Z)V

    :cond_6
    if-eqz v4, :cond_7

    iget-object v1, v4, LRh/r;->b:LRh/a;

    iput-boolean v3, v1, LRh/a;->l:Z

    :cond_7
    if-eqz v4, :cond_8

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    iget-object v6, v4, LRh/r;->b:LRh/a;

    iput v1, v6, LRh/a;->g:I

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4, p1}, LRh/r;->r([B)V

    :cond_9
    if-eqz v4, :cond_a

    iget-object p1, v4, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ExifData;->resetExif()V

    :cond_a
    if-eqz v4, :cond_b

    new-instance p1, Landroid/util/Size;

    iget-object v1, p0, Lp4/k;->P:Lcom/xiaomi/microfilm/collage/CollageItem;

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    iget v1, v1, Lcom/xiaomi/microfilm/collage/CollageItem;->f:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p1, p2, v0}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v4, p1}, LRh/r;->C(Landroid/util/Size;)V

    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4, v3}, LRh/r;->x(I)V

    :cond_c
    if-eqz v4, :cond_d

    const-string p1, ""

    invoke-virtual {v4, p1}, LRh/r;->y(Ljava/lang/String;)V

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4, v3}, LRh/r;->w(I)V

    :cond_e
    if-eqz v4, :cond_10

    iget-object p1, v4, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ExifData;->getPictureInfo()Lqh/f;

    move-result-object p2

    if-nez p2, :cond_f

    move-object p2, v5

    :cond_f
    new-instance v0, Lqh/f;

    invoke-direct {v0, p2}, Lqh/f;-><init>(Lqh/f;)V

    invoke-virtual {v0, v3}, Lqh/f;->e(Z)V

    invoke-virtual {v0}, Lqh/f;->a()V

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/ExifData;->setPictureInfo(Lqh/f;)V

    :cond_10
    if-eqz v4, :cond_11

    iget-object p1, v4, LRh/r;->b:LRh/a;

    iput-boolean v2, p1, LRh/a;->i:Z

    :cond_11
    if-eqz v4, :cond_12

    iget-object p1, v4, LRh/r;->b:LRh/a;

    const/16 p2, 0xe6

    iput p2, p1, LRh/a;->g:I

    :cond_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.android.camera.Camera"

    invoke-static {p0, p1}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera;->C1:Lk7/i;

    const/4 v8, 0x0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v3 .. v8}, Lk7/i;->G(LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/util/function/IntFunction;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-static {v1, p0}, LJv/f;->b(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static Nq(Lp4/k;Landroid/net/Uri;Ljava/lang/Boolean;)LPu/A;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lp4/k;->R:Landroid/os/Handler;

    new-instance v0, LWc/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, LWc/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "dismissLockScreenTask fail"

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method


# virtual methods
.method public final Oq(Z)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, LY/g;->a:Ljava/lang/ThreadLocal;

    const v2, 0x7f080715

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, LY/g$a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lf2/a;->f(IZ)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v4, p0, Lp4/k;->s:Landroid/widget/ImageView;

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080714

    invoke-static {v1, v4, v3}, LY/g$a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lf2/a;->f(IZ)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lp4/k;->t:Landroid/widget/ImageView;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lp4/k;->p:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object p0, p0, Lp4/k;->r:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public final Pq(Z)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lp4/k;->R:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lp4/k;->b:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lp4/k;->f:Lp4/a;

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-static {}, Lp4/a;->c()I

    move-result v4

    sget-object v5, LY/g;->a:Ljava/lang/ThreadLocal;

    invoke-static {v3, v4, v2}, LY/g$a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lp4/k;->g:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lp4/k;->I:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lp4/k;->ar()Z

    iget-object p1, p0, Lp4/k;->b:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object p1, p0, Lp4/k;->b:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060be1

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    iget-object p1, p0, Lp4/k;->g:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p0, p0, Lp4/k;->I:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public final Qq()V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lp4/k;->Pq(Z)V

    iget-object v1, p0, Lp4/k;->N:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lp4/k;->M:Landroid/widget/TextView;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lp4/k;->M:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060037

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const-string v1, "com.xiaomi.smarthome"

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    :try_start_0
    invoke-virtual {v5, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lp4/k;->K:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p0, p0, Lp4/k;->J:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    move v0, v3

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lp4/k;->K:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lp4/k;->O:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object p0, p0, Lp4/k;->J:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_0
    new-instance p0, Lgq/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_common"

    iput-object v1, p0, Lgq/h;->a:Ljava/lang/String;

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

    iput-object v1, p0, Lgq/h;->b:Lgq/f;

    new-instance v1, Liq/a;

    if-eqz v0, :cond_8

    const-string v0, "print_success"

    goto :goto_1

    :cond_8
    const-string v0, "print_fail"

    :goto_1
    const-string v2, "click"

    const-string v3, "headshot_print"

    invoke-direct {v1, v3, v0, v2, v4}, Liq/a;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgq/h;->d()V

    return-void
.end method

.method public Rq()J
    .locals 2

    const-wide/16 v0, 0x320

    return-wide v0
.end method

.method public Sq()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final Tq(I)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lp4/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lms/b;

    iget-boolean v5, v5, Lms/b;->j:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    check-cast v4, Lms/b;

    if-eqz v4, :cond_2

    iget-object v3, v0, Lp4/k;->P:Lcom/xiaomi/microfilm/collage/CollageItem;

    invoke-static {v3}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v4, v4, Lms/b;->i:Lms/a;

    iput-object v4, v3, Lcom/xiaomi/microfilm/collage/CollageItem;->l:Lms/a;

    :cond_2
    iget-object v3, v0, Lp4/k;->P:Lcom/xiaomi/microfilm/collage/CollageItem;

    invoke-static {v3}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/xiaomi/microfilm/collage/CollageItem;->Z()Lcom/xiaomi/microfilm/collage/CollageItem;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v4, v3, Lcom/xiaomi/microfilm/collage/CollageItem;->f:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_3

    int-to-float v5, v1

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_1

    :cond_3
    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    int-to-float v5, v1

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move/from16 v16, v4

    move v4, v1

    move/from16 v1, v16

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    invoke-static {v6, v0, v1, v4, v3}, Lks/c;->a(Landroid/graphics/Canvas;Landroid/content/Context;IILcom/xiaomi/microfilm/collage/CollageItem;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    iget-object v7, v3, Lcom/xiaomi/microfilm/collage/CollageItem;->j:Ljava/util/ArrayList;

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Los/a;

    iget v10, v3, Lcom/xiaomi/microfilm/collage/CollageItem;->f:F

    invoke-virtual {v9, v1, v10, v4}, Los/a;->a(IFI)V

    int-to-float v10, v1

    iget v11, v9, Los/a;->m:F

    mul-float/2addr v11, v10

    iget v12, v9, Los/a;->b:F

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    int-to-float v12, v4

    iget v13, v9, Los/a;->n:F

    mul-float/2addr v13, v12

    iget v14, v9, Los/a;->c:F

    div-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget v14, v9, Los/a;->k:F

    mul-float/2addr v10, v14

    iget v14, v9, Los/a;->b:F

    div-float/2addr v10, v14

    float-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v10, v14

    iget v14, v9, Los/a;->l:F

    mul-float/2addr v12, v14

    iget v14, v9, Los/a;->c:F

    div-float/2addr v12, v14

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v12, v14

    new-instance v14, Los/b;

    invoke-direct {v14, v0}, Los/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v10, v12, v9}, Los/b;->d(IILos/a;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lms/b;

    iget-object v9, v9, Lms/b;->d:Landroid/net/Uri;

    if-eqz v9, :cond_5

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lms/b;

    iget-object v9, v9, Lms/b;->d:Landroid/net/Uri;

    new-instance v15, Landroid/util/Size;

    invoke-direct {v15, v10, v12}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, v9, v15}, Lg4/m;->c(Landroid/content/Context;Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lms/b;

    iget-object v9, v9, Lms/b;->h:Landroid/graphics/Bitmap;

    :goto_3
    invoke-virtual {v14, v9}, Los/b;->setBaseBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    int-to-float v9, v11

    int-to-float v10, v13

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v14, v6}, Los/b;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    invoke-static {v6, v0, v1, v4, v3}, Lks/c;->b(Landroid/graphics/Canvas;Landroid/content/Context;IILcom/xiaomi/microfilm/collage/CollageItem;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    const-string/jumbo v0, "startSaveByBitmap(...)"

    invoke-static {v5, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v5
.end method

.method public Uq()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lp4/k;->l:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final Vq(Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lp4/a;->i(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lvr/d;->b(ZLandroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.smarthome"

    const-string v3, "com.xiaomi.smarthome.printer.SendPrintActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x30000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public final Wq()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lp4/k;->Oq(Z)V

    iget-object p0, p0, Lp4/k;->k:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const-string v2, "pref_camera_first_sticker_retry_capture_key"

    invoke-virtual {p0, v2, v1}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LX1/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LX1/b;-><init>(I)V

    new-instance v1, LCs/o;

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2}, LCs/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Xq(I)V
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

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lp4/k;->br(Z)V

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lp4/i;

    invoke-direct {v0, p1}, Lp4/i;-><init>(I)V

    new-instance p1, LFn/D;

    const/16 v1, 0xc

    invoke-direct {p1, v0, v1}, LFn/D;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Yq([B[B)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sSDKScheduler:Lio/reactivex/v;

    const-string/jumbo v1, "sSDKScheduler"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LW0/N;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p2, p1}, LW0/N;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    move-result-object p1

    iput-object p1, p0, Lp4/k;->m:Lio/reactivex/disposables/b;

    return-void
.end method

.method public Zq(I)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "onProcessingSateChanged: "

    invoke-static {p1, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lp4/q;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v0}, Lp4/k;->cr(ZZ)V

    :cond_1
    invoke-virtual {p0}, Lp4/k;->dr()V

    goto :goto_0

    :cond_2
    instance-of v1, p0, Lp4/q;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0, v2}, Lp4/k;->cr(ZZ)V

    :cond_3
    invoke-virtual {p0}, Lp4/k;->dr()V

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_common"

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

    new-instance v1, Liq/a;

    const-string v2, "click"

    const/4 v3, 0x0

    const-string v4, "headshot_confirm"

    invoke-direct {v1, v4, v3, v2, v3}, Liq/a;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lp4/k;->er()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lp4/k;->fr(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Lp4/k;->br(Z)V

    :goto_0
    iget v0, p0, Lp4/k;->h:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    if-ne p1, v1, :cond_8

    :cond_7
    if-eq v0, v1, :cond_9

    if-ne p1, v1, :cond_9

    :cond_8
    iput p1, p0, Lp4/k;->h:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lp4/l;->i:Lp4/l;

    new-instance p1, LEs/F;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, LEs/F;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_9
    return-void
.end method

.method public final ar()Z
    .locals 9

    invoke-virtual {p0}, Lp4/k;->Uq()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lp4/k;->Uq()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v3, v1

    :goto_0
    const/4 v4, -0x1

    if-ge v4, v0, :cond_2

    invoke-virtual {p0}, Lp4/k;->Uq()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "getChildAt(...)"

    invoke-static {v4, v5}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v5, v4, Los/b;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Los/b;

    invoke-virtual {v5}, Los/b;->getShapeInfo()Los/a;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1412be

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(...)"

    invoke-static {v7, v8}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v8, v6, Los/a;->a:I

    add-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v5, v6, Los/a;->i:Z

    if-eqz v5, :cond_1

    iput-boolean v1, v6, Los/a;->i:Z

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    move v3, v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final br(Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v2

    instance-of v3, v2, Lcom/android/camera/Camera;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/camera/Camera;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/camera/Camera;->Kr()V

    :cond_1
    iget-object v2, p0, Lp4/k;->R:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lp4/k;->b:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lp4/k;->b:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lp4/k;->f:Lp4/a;

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-static {}, Lp4/a;->c()I

    move-result v4

    sget-object v5, LY/g;->a:Ljava/lang/ThreadLocal;

    invoke-static {v3, v4, v1}, LY/g$a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v2

    instance-of v3, v2, Lcom/android/camera/Camera;

    if-eqz v3, :cond_4

    move-object v1, v2

    check-cast v1, Lcom/android/camera/Camera;

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/camera/Camera;->Sr()V

    :cond_5
    iget-object v1, p0, Lp4/k;->b:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lp4/e;

    invoke-direct {v2, p1, v0}, Lp4/e;-><init>(ZI)V

    new-instance v0, LKh/f;

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, LKh/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lp4/k;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    new-instance v1, Lp4/j;

    invoke-direct {v1, p0, p1}, Lp4/j;-><init>(Lp4/k;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    return-void
.end method

.method public final constructConfigItem()LZ1/a;
    .locals 7

    new-instance v0, LZ1/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, LZ1/a;-><init>(ZZZIII)V

    return-object v0
.end method

.method public final cr(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showSavingUi "

    const-string v2, "  "

    invoke-static {v1, v2, p1, p2}, LF1/P;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lp4/k;->Oq(Z)V

    iget-object v0, p0, Lp4/k;->q:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lp4/k;->q:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lp4/k;->q:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public dr()V
    .locals 5

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

    invoke-virtual {p0, v2, v0}, Lp4/k;->wc(Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lp4/k;->ar()Z

    iget v0, p0, Lp4/k;->a:I

    invoke-virtual {p0, v0}, Lp4/k;->Tq(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v2, 0x64

    invoke-static {v2, v0}, LQg/f;->g(ILandroid/graphics/Bitmap;)[B

    move-result-object v2

    iput-object v2, p0, Lp4/k;->i:[B

    iget-object v2, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createScaledBitmap(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x46

    invoke-static {v1, v0}, LQg/f;->g(ILandroid/graphics/Bitmap;)[B

    move-result-object v0

    iget-object v1, p0, Lp4/k;->i:[B

    invoke-virtual {p0, v1, v0}, Lp4/k;->Yq([B[B)V

    return-void
.end method

.method public er()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "toShowStickerFinalAvailable"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lp4/k;->P:Lcom/xiaomi/microfilm/collage/CollageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lp4/k;->e:Z

    invoke-virtual {p0, v0}, Lp4/k;->fr(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp4/k;->e:Z

    :cond_1
    invoke-virtual {p0}, Lp4/k;->hr()V

    return-void
.end method

.method public final f7()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lp4/k;->br(Z)V

    iget-object v0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lp4/k;->Sq()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object v0, v0, Lp4/a;->a:Lcom/android/camera/data/observeable/b;

    invoke-virtual {v0, p0}, Lcom/android/camera/data/observeable/b;->c(Ljava/lang/Integer;)V

    return-void
.end method

.method public fr(Z)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "toShowStickerPreview"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lp4/a;->a()Lcom/xiaomi/microfilm/collage/CollageItem;

    move-result-object v0

    iput-object v0, p0, Lp4/k;->P:Lcom/xiaomi/microfilm/collage/CollageItem;

    const/4 v0, 0x0

    iput-object v0, p0, Lp4/k;->i:[B

    iget-object v2, p0, Lp4/k;->Q:Landroid/view/GestureDetector;

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lp4/k;->Q:Landroid/view/GestureDetector;

    :cond_0
    iget-object v2, p0, Lp4/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lp4/k;->f:Lp4/a;

    invoke-static {v3}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v3, v3, Lp4/a;->e:Ljava/util/List;

    const-string v4, "getMediaDetailBeanList(...)"

    invoke-static {v3, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lp4/k;->b:Landroid/view/ViewGroup;

    invoke-static {v3}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lp4/k;->gj()V

    :cond_1
    iget-object v3, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    const v4, 0x7f07160a

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lp4/k;->P:Lcom/xiaomi/microfilm/collage/CollageItem;

    invoke-static {v5}, Lfv/l;->e(Ljava/lang/Object;)V

    iget v5, v5, Lcom/xiaomi/microfilm/collage/CollageItem;->f:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_5
    iget-object v3, p0, Lp4/k;->P:Lcom/xiaomi/microfilm/collage/CollageItem;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/xiaomi/microfilm/collage/CollageItem;->i:Lls/a;

    if-eqz v3, :cond_6

    iget-boolean v3, v3, Lls/a;->c:Z

    goto :goto_2

    :cond_6
    move v3, v1

    :goto_2
    if-eqz v3, :cond_7

    iget-object v3, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_8

    const v4, 0x7f080184

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lms/b;

    iget-boolean v5, v5, Lms/b;->j:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    goto :goto_4

    :cond_a
    move v6, v1

    :goto_4
    if-eqz v6, :cond_9

    move-object v0, v4

    :cond_b
    check-cast v0, Lms/b;

    if-eqz v0, :cond_c

    iget-object v3, p0, Lp4/k;->P:Lcom/xiaomi/microfilm/collage/CollageItem;

    invoke-static {v3}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v0, v0, Lms/b;->i:Lms/a;

    iput-object v0, v3, Lcom/xiaomi/microfilm/collage/CollageItem;->l:Lms/a;

    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    iget-object v3, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lp4/k;->P:Lcom/xiaomi/microfilm/collage/CollageItem;

    const-string/jumbo v5, "testTest"

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v8, v7

    int-to-float v9, v6

    div-float v10, v8, v9

    iget v11, v4, Lcom/xiaomi/microfilm/collage/CollageItem;->f:F

    cmpg-float v10, v11, v10

    if-gez v10, :cond_e

    mul-float/2addr v9, v11

    float-to-double v8, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    move v9, v6

    goto :goto_5

    :cond_e
    div-float/2addr v8, v11

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    move v9, v8

    move v8, v7

    :goto_5
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x2

    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, -0x10000

    invoke-virtual {v10, v6}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v10, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v6, Lls/b;

    invoke-direct {v6, v0}, Lls/b;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v8, v4, Lcom/xiaomi/microfilm/collage/CollageItem;->i:Lls/a;

    iput v5, v6, Lls/b;->a:I

    iput v3, v6, Lls/b;->b:I

    iput-object v8, v6, Lls/b;->c:Lls/a;

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v7, v4, Lcom/xiaomi/microfilm/collage/CollageItem;->i:Lls/a;

    iget-object v7, v7, Lls/a;->a:Ljava/lang/String;

    if-eqz v7, :cond_f

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v5, v3}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, v7, v8}, Lg4/m;->b(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v6, v3}, Lls/b;->setBaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_f
    invoke-static {v0, v10, v4}, Lks/b;->b(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/xiaomi/microfilm/collage/CollageItem;)V

    iget-object v3, v4, Lcom/xiaomi/microfilm/collage/CollageItem;->k:Ljava/util/ArrayList;

    if-nez v3, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v6, Lns/d;

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v8, v4, Lcom/xiaomi/microfilm/collage/CollageItem;->k:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Lns/d;->setDecorationItemList(Ljava/util/List;)V

    iget-object v8, v4, Lcom/xiaomi/microfilm/collage/CollageItem;->k:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lns/a;

    iget v11, v4, Lcom/xiaomi/microfilm/collage/CollageItem;->f:F

    invoke-virtual {v9, v5, v11, v3}, Lns/a;->a(IFI)V

    instance-of v11, v9, Lns/b;

    if-eqz v11, :cond_12

    check-cast v9, Lns/b;

    iget-object v11, v9, Lns/b;->p:Ljava/lang/String;

    invoke-virtual {v9, v0, v11}, Lns/b;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    instance-of v11, v9, Lns/c;

    if-eqz v11, :cond_11

    check-cast v9, Lns/c;

    iget-object v11, v4, Lcom/xiaomi/microfilm/collage/CollageItem;->l:Lms/a;

    invoke-virtual {v9, v11}, Lns/c;->e(Lms/a;)V

    goto :goto_6

    :cond_13
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_7
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_8
    if-ge v3, v0, :cond_15

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Los/b;

    if-eqz v5, :cond_14

    check-cast v4, Los/b;

    invoke-virtual {v4}, Los/b;->getShapeInfo()Los/a;

    move-result-object v5

    iget v5, v5, Los/a;->a:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lms/b;

    iget-object v5, v5, Lms/b;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Los/b;->setBaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_15
    iput-object v10, p0, Lp4/k;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lp4/k;->Uq()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v2, Lp4/f;

    invoke-direct {v2, p0}, Lp4/f;-><init>(Lp4/k;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_16
    iget-object v0, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    if-eqz p1, :cond_18

    iget-object p1, p0, Lp4/k;->k:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p1, v0}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    neg-int v0, v0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lp4/k;->d:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    new-instance v1, LLy/g;

    invoke-direct {v1}, LLy/g;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lp4/k;->d:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lp4/k;->Rq()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lp4/k;->d:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    new-instance v1, Lp4/k$b;

    invoke-direct {v1, p0}, Lp4/k$b;-><init>(Lp4/k;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lp4/k;->d:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    new-instance v1, Lp4/g;

    invoke-direct {v1, p0, p1}, Lp4/g;-><init>(Lp4/k;Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lp4/k;->d:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_18
    invoke-virtual {p0}, Lp4/k;->Wq()V

    return-void
.end method

.method public getFragmentId()I
    .locals 0

    const/16 p0, 0xbc

    return p0
.end method

.method public final getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0e01a6

    return p0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FragmentStickerResult"

    return-object p0
.end method

.method public final gj()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    instance-of v1, v0, Lcom/android/camera/Camera;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/camera/Camera;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/Camera;->Kr()V

    :cond_1
    iget-object v0, p0, Lp4/k;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lp4/e;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lp4/e;-><init>(ZI)V

    new-instance v3, LKh/f;

    const/4 v4, 0x6

    invoke-direct {v3, v2, v4}, LKh/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lp4/k;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    new-instance v2, LKi/f;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LKi/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    iget-object v0, p0, Lp4/k;->I:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lp4/k;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lp4/k;->k:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0, v1}, Lp4/k;->Oq(Z)V

    return-void
.end method

.method public final gp()Z
    .locals 5

    iget-object v0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lp4/a;->getCurrentState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lp4/a;->getCurrentState()I

    move-result v0

    invoke-virtual {p0}, Lp4/k;->Sq()I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startToSave wait final"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v1}, Lp4/k;->cr(ZZ)V

    return v2

    :cond_0
    iget-object v0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lp4/a;->getCurrentState()I

    move-result v0

    invoke-virtual {p0}, Lp4/k;->Sq()I

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startToSave now"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lp4/a;->i(I)V

    return v2

    :cond_1
    return v1
.end method

.method public final gr(Landroid/view/MotionEvent;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lp4/k;->ar()Z

    return v0

    :cond_0
    invoke-virtual {p0}, Lp4/k;->Uq()Landroid/view/ViewGroup;

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lp4/k;->Uq()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-static {p2}, Lfv/l;->e(Ljava/lang/Object;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v2, p2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    iget-boolean p2, p0, Lp4/k;->S:Z

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lp4/k;->ar()Z

    :cond_3
    iput-boolean v0, p0, Lp4/k;->S:Z

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v2, p2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lp4/k;->S:Z

    return v1
.end method

.method public final hr()V
    .locals 2

    iget-object v0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lp4/a;->getCurrentState()I

    move-result v0

    invoke-virtual {p0}, Lp4/k;->Sq()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lp4/k;->q:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object p0, p0, Lp4/k;->q:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    goto :goto_1

    :cond_2
    const/4 p0, 0x5

    :goto_1
    invoke-virtual {v0, p0}, Lp4/a;->i(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x3

    const-string/jumbo v1, "v"

    invoke-static {p1, v1}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->initView(Landroid/view/View;)V

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lp4/k;->b:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0b0a34

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lp4/k;->g:Landroid/widget/FrameLayout;

    const v1, 0x7f0b050e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060091

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    const v1, 0x7f0b0a38

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0a3a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lp4/k;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0a36

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v1, 0x7f0b0524

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lp4/k;->n:Landroid/widget/ProgressBar;

    const v1, 0x7f0b0522

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lp4/k;->o:Landroid/widget/ProgressBar;

    const v1, 0x7f0b0a33

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lp4/k;->q:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, LY/g;->a:Ljava/lang/ThreadLocal;

    const v3, 0x7f081024

    invoke-static {v1, v3, v2}, LY/g$a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060171

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4, v3}, Lf2/a;->f(IZ)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v4, p0, Lp4/k;->n:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v4, p0, Lp4/k;->o:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const v1, 0x7f0b0a37

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    iput-object v1, p0, Lp4/k;->p:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    const v1, 0x7f0b0a35

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    iput-object v1, p0, Lp4/k;->r:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    const v1, 0x7f0b0523

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lp4/k;->s:Landroid/widget/ImageView;

    const v1, 0x7f0b0521

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lp4/k;->t:Landroid/widget/ImageView;

    const v1, 0x7f0b0896

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lp4/k;->I:Landroid/widget/FrameLayout;

    const v1, 0x7f0b089b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lp4/k;->J:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0c8f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lp4/k;->K:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0c90

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lp4/k;->N:Landroid/widget/ProgressBar;

    const v1, 0x7f0b015f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lp4/k;->L:Landroid/widget/ImageView;

    const v1, 0x7f0b0160

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lp4/k;->M:Landroid/widget/TextView;

    const v1, 0x7f0b055b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lp4/k;->O:Landroid/view/View;

    iget-object p1, p0, Lp4/k;->p:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p1, p0, Lp4/k;->r:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object p1, p0, Lp4/k;->L:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object p1, p0, Lp4/k;->M:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object p1, p0, Lp4/k;->p:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    const v1, 0x7f080183

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    iget-object p1, p0, Lp4/k;->r:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_8
    iget-object p1, p0, Lp4/k;->p:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    const/high16 v1, 0x40000000    # 2.0f

    const v4, 0x7f071606

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    invoke-virtual {p1, v5}, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;->setCornerRadius(F)V

    :cond_9
    iget-object p1, p0, Lp4/k;->r:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {p1, v4}, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;->setCornerRadius(F)V

    :cond_a
    iget-object p1, p0, Lp4/k;->p:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    const/16 v1, 0x1e

    if-eqz p1, :cond_b

    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;->setBlurRadius(I)V

    :cond_b
    iget-object p1, p0, Lp4/k;->r:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;->setBlurRadius(I)V

    :cond_c
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object p1

    const-class v1, Lp4/a;

    invoke-virtual {p1, v1}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object p1

    check-cast p1, Lp4/a;

    iput-object p1, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lp4/a;->getCurrentState()I

    move-result p1

    const/4 v1, 0x7

    const/4 v4, 0x2

    if-eq p1, v1, :cond_d

    iget-object p1, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lp4/a;->getCurrentState()I

    move-result p1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_d

    iget-object p1, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lp4/a;->getCurrentState()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_d

    iget-object p1, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lp4/a;->getCurrentState()I

    move-result p1

    if-ne p1, v0, :cond_e

    :cond_d
    iget-object p1, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Lp4/a;->i(I)V

    :cond_e
    iget-object p1, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lp4/a;->getCurrentState()I

    move-result p1

    if-ne p1, v4, :cond_f

    iput-boolean v3, p0, Lp4/k;->e:Z

    :cond_f
    iget-object p1, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/camera/fragment/r0;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/fragment/r0;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p1, Lp4/a;->a:Lcom/android/camera/data/observeable/b;

    invoke-virtual {p1, p0}, Lcom/android/camera/data/observeable/b;->a(Landroidx/lifecycle/x;)Lcom/android/camera/data/observeable/b$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/reactivex/q;->subscribe(Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    iget-object p1, p0, Lp4/k;->b:Landroid/view/ViewGroup;

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-static {}, Lp4/a;->c()I

    move-result p0

    invoke-static {v0, p0, v2}, LY/g$a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    return-void
.end method

.method public final onBackEvent(I)Z
    .locals 3

    iget-object v0, p0, Lp4/k;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lp4/k;->ar()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lp4/a;->getCurrentState()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object p0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lp4/a;->g(Z)V

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x7f0b0160

    if-ne v3, v4, :cond_7

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "onClick bt_waiting_print_retry"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lp4/k;->M:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060028

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object p1, p0, Lp4/k;->M:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    iget-object p1, p0, Lp4/k;->O:Landroid/view/View;

    if-eqz p1, :cond_5

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lp4/k;->N:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object p0, p0, Lp4/k;->R:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_7
    :goto_1
    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0x7f0b015f

    if-ne v0, v3, :cond_9

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick bt_waiting_print_back"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lp4/k;->Pq(Z)V

    iget-object p1, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Lp4/a;->a:Lcom/android/camera/data/observeable/b;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/b;->c(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lp4/k$a;->i:Lp4/k$a;

    new-instance p1, LG3/h;

    const/16 v0, 0x11

    invoke-direct {p1, v0}, LG3/h;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_9
    :goto_2
    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0x7f0b0a37

    if-ne v0, v3, :cond_c

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick sticker_result_operate_print"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lp4/a;->getCurrentState()I

    move-result p1

    invoke-virtual {p0}, Lp4/k;->Sq()I

    move-result v0

    if-eq p1, v0, :cond_b

    invoke-virtual {p0, v1, v1}, Lp4/k;->cr(ZZ)V

    return-void

    :cond_b
    iget-object p0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lp4/a;->i(I)V

    return-void

    :cond_c
    :goto_3
    if-nez p1, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f0b0a35

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick sticker_result_operate_done"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lp4/k;->gp()Z

    :cond_e
    :goto_4
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onDestroyView"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lp4/k;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp4/k;->d:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lp4/k;->m:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lp4/k;->m:Lio/reactivex/disposables/b;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-interface {v0}, Lio/reactivex/disposables/b;->c()V

    :cond_1
    iget-object v0, p0, Lp4/k;->R:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/fragment/b;->onDestroyView()V

    return-void
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p0, "e"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const-string p0, "e2"

    invoke-static {p2, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    const-string p0, "e"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const-string p0, "e2"

    invoke-static {p2, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    const-string p0, "e"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 9

    const-string v0, "e"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lp4/k;->f:Lp4/a;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lp4/a;->getCurrentState()I

    move-result v0

    invoke-virtual {p0}, Lp4/k;->Sq()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lp4/k;->Uq()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lp4/k;->Uq()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1
    const/4 v3, -0x1

    if-ge v3, v0, :cond_6

    invoke-virtual {p0}, Lp4/k;->Uq()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v3}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(...)"

    invoke-static {v3, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, v3, Los/b;

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Los/b;

    invoke-virtual {v4}, Los/b;->getShapeInfo()Los/a;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, v4, Los/b;->h:Los/a;

    iget-object v8, v8, Los/a;->h:Landroid/graphics/Region;

    float-to-int v6, v6

    float-to-int v7, v7

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Region;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v5, Los/a;->i:Z

    if-eqz v6, :cond_2

    iput-boolean v2, v5, Los/a;->i:Z

    iget p1, v5, Los/a;->a:I

    invoke-virtual {p0, p1}, Lp4/k;->Xq(I)V

    return v1

    :cond_2
    iput-boolean v1, v5, Los/a;->i:Z

    goto :goto_2

    :cond_3
    iput-boolean v2, v5, Los/a;->i:Z

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-boolean v7, v5, Los/a;->i:Z

    if-eqz v7, :cond_4

    const v7, 0x7f1412bf

    goto :goto_3

    :cond_4
    const v7, 0x7f1412be

    :goto_3
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(...)"

    invoke-static {v6, v7}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v5, Los/a;->a:I

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    return v1
.end method

.method public final provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/b;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/h;->provideAnimateElement(ILjava/util/List;I)V

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 p2, 0xe6

    if-eq p1, p2, :cond_0

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LMq/j;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, LMq/j;-><init>(Ljava/lang/Object;I)V

    new-instance p0, LCs/t;

    const/16 p3, 0x9

    invoke-direct {p0, p2, p3}, LCs/t;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final register(LN6/g;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->register(LN6/g;)V

    if-eqz p1, :cond_0

    const-class v0, Lp4/s;

    check-cast p1, LN6/h;

    invoke-virtual {p1, v0, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    :cond_0
    invoke-virtual {p0, p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->registerBackStack(LQ6/c0;)V

    return-void
.end method

.method public final unRegister(LN6/g;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->unRegister(LN6/g;)V

    if-eqz p1, :cond_0

    const-class v0, Lp4/s;

    check-cast p1, LN6/h;

    invoke-virtual {p1, v0, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    :cond_0
    invoke-virtual {p0, p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->unRegisterBackStack(LQ6/c0;)V

    return-void
.end method

.method public final updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/b;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, LK2/b;->x()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lp4/k;->g:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    instance-of v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    iget-object v1, p0, Lp4/k;->I:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071609

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-nez p1, :cond_6

    const p1, 0x7f0714b9

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_5
    if-eqz v0, :cond_9

    sget v1, LK2/e;->g:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    iget p0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v1

    iput p0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_7
    if-eqz v0, :cond_8

    iget p0, p1, Landroid/graphics/Rect;->right:I

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_8
    if-eqz v0, :cond_9

    sget p0, LK2/e;->g:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_9
    :goto_3
    if-eqz p2, :cond_a

    sget p0, LK2/e;->g:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p0, p1

    iput p0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_a
    return-void
.end method

.method public wc(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onSaveFinish"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lp4/k;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lp4/k;->f:Lp4/a;

    invoke-static {v2}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lp4/a;->getCurrentState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lp4/k;->f:Lp4/a;

    invoke-static {v2}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lp4/a;->getCurrentState()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lms/b;

    iget-object v5, v5, Lms/b;->e:Ljava/lang/String;

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    invoke-static {v5, p2, v6}, Lww/p;->w(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lms/b;

    iput-object p1, p2, Lms/b;->b:Landroid/net/Uri;

    iget-object p2, p0, Lp4/k;->R:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/fragment/M;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/fragment/M;-><init>(Lcom/android/camera/fragment/h;Landroid/os/Parcelable;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onSaveFinish fail cause title is "

    invoke-static {p1, p2}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method
