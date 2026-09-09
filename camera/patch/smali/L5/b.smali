.class public final synthetic LL5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LL5/b;->a:I

    iput-object p1, p0, LL5/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, LL5/b;->b:Ljava/lang/Object;

    iget p0, p0, LL5/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast v1, Lzs/f;

    iget-object p0, v1, Lzs/f;->b0:Lcom/xiaomi/milab/shortvideo/XmsTextureView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_0
    check-cast v1, Lxm/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v2, LFn/x;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, LFn/x;-><init>(I)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, v1, Lxm/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    instance-of v1, p0, Lcom/android/camera/module/r;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/android/camera/module/r;

    const-string v1, "liveshot"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/r;->lockScreenOrientation(ZLjava/lang/String;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast v1, Lcom/xiaomi/renderengine/gl/GlHandlerThread;

    iget-object p0, v1, Lcom/xiaomi/renderengine/gl/GlHandlerThread;->c:Lwu/d;

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lwu/e;->d()Z

    iput-object v2, v1, Lcom/xiaomi/renderengine/gl/GlHandlerThread;->c:Lwu/d;

    :cond_1
    iget-object p0, v1, Lcom/xiaomi/renderengine/gl/GlHandlerThread;->b:Lwu/c;

    iput-boolean v0, p0, Lwu/c;->d:Z

    invoke-virtual {p0}, Lwu/c;->a()V

    iput-object v2, v1, Lcom/xiaomi/renderengine/gl/GlHandlerThread;->b:Lwu/c;

    const-string p0, "GlHandlerThread"

    const-string v0, "mEglOffscreenSurface and mEglCore release done"

    invoke-static {p0, v0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    check-cast v1, Lcom/android/camera/fragment/watermark/wmSettingV2/WmSettingFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/watermark/wmSettingV2/WmSettingFragment;->Xq(Lcom/android/camera/fragment/watermark/wmSettingV2/WmSettingFragment;)V

    return-void

    :pswitch_3
    check-cast v1, Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->wm(Lcom/android/camera/module/VideoModule;)V

    return-void

    :pswitch_4
    check-cast v1, Lcom/android/camera/fragment/v0;

    invoke-virtual {v1}, Lcom/android/camera/fragment/v0;->Yq()V

    return-void

    :pswitch_5
    check-cast v1, Lcom/android/camera/fragment/N;

    invoke-static {v1}, Lcom/android/camera/fragment/N;->Mq(Lcom/android/camera/fragment/N;)V

    return-void

    :pswitch_6
    check-cast v1, LYb/p0;

    invoke-virtual {v1}, LYb/p0;->c()V

    return-void

    :pswitch_7
    check-cast v1, Lcom/xiaomi/idm/util/ResettableTimerTask;

    invoke-static {v1}, Lcom/xiaomi/idm/util/ResettableTimerTask;->a(Lcom/xiaomi/idm/util/ResettableTimerTask;)V

    return-void

    :pswitch_8
    sget-object p0, LU4/i;->K:Ljava/util/LinkedList;

    check-cast v1, Landroid/widget/FrameLayout;

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void

    :pswitch_9
    sget-object p0, Lmicamx/compat/ui/miuix/widget/HyperProgressSeekBar;->c0:Lmiuix/animation/property/IntValueProperty;

    const-string/jumbo p0, "this$0"

    check-cast v1, Lmicamx/compat/ui/miuix/widget/HyperProgressSeekBar;

    invoke-static {v1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lmicamx/compat/ui/miuix/widget/HyperProgressSeekBar;->k()V

    return-void

    :pswitch_a
    check-cast v1, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/typeface/DownloadView;

    iget-object p0, v1, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/typeface/DownloadView;->a:Landroid/widget/ImageView;

    iget v0, v1, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/typeface/DownloadView;->c:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, v1, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/typeface/DownloadView;->b:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_2
    iget-object p0, v1, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/typeface/DownloadView;->a:Landroid/widget/ImageView;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string/jumbo v2, "rotation"

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    iput-object p0, v1, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/typeface/DownloadView;->b:Landroid/animation/ObjectAnimator;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p0, v1, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/typeface/DownloadView;->b:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, v1, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/typeface/DownloadView;->b:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, v1, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/typeface/DownloadView;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
