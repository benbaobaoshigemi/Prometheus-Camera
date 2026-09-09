.class public final Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 /2\u00020\u0001:\u0001/B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J \u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!H\u0002J\u0010\u0010$\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0002J\u000e\u0010\'\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&J\u0010\u0010(\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0002J\u0012\u0010)\u001a\u00020\u001c2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0002J\u0008\u0010,\u001a\u00020\u001cH\u0014J\u0008\u0010-\u001a\u00020\u001cH\u0002J\u0008\u0010.\u001a\u00020\u001cH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;",
        "Lmiuix/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "mHandlerState",
        "",
        "mSignatureHandBack",
        "Landroid/widget/ImageView;",
        "mSignatureHandSave",
        "mSignatureHandView",
        "Lcom/xiaomi/camera/hand/signature/SignatureView;",
        "mClearSignatureButton",
        "Landroid/widget/FrameLayout;",
        "mDisposable",
        "Lio/reactivex/disposables/Disposable;",
        "mLoadingLayout",
        "Lcom/miui/support/cardview/CardView;",
        "mask",
        "Landroid/view/View;",
        "timerHandler",
        "Landroid/os/Handler;",
        "timerRunnable",
        "Ljava/lang/Runnable;",
        "mWmManager",
        "Lcom/xiaomi/cam/watermark/WmBaseManager;",
        "watermarkItem",
        "Lcom/xiaomi/cam/watermark/WatermarkItem;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "adjustSignatureLayout",
        "isPad",
        "",
        "isFoldingPhone",
        "isFolderState",
        "doPicHF",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "startTimer",
        "saveAndFinish",
        "updateSignature",
        "uri",
        "Landroid/net/Uri;",
        "onDestroy",
        "remove",
        "onStart",
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


# static fields
.field public static final synthetic e0:I


# instance fields
.field public S:I

.field public T:Landroid/widget/ImageView;

.field public U:Landroid/widget/ImageView;

.field public V:Lcom/xiaomi/camera/hand/signature/SignatureView;

.field public W:Landroid/widget/FrameLayout;

.field public X:Lio/reactivex/disposables/b;

.field public Y:Lcom/miui/support/cardview/CardView;

.field public Z:Landroid/view/View;

.field public a0:Landroid/os/Handler;

.field public b0:LF1/n;

.field public c0:LGg/P;

.field public d0:Lcom/xiaomi/cam/watermark/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0029

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_video_watermark"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, LS8/d;->b(Z)LGg/P;

    move-result-object p1

    const-string v0, "getWmManager(...)"

    invoke-static {p1, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->c0:LGg/P;

    invoke-virtual {p1}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->d0:Lcom/xiaomi/cam/watermark/a;

    const p1, 0x7f0b063c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/support/cardview/CardView;

    iput-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->Y:Lcom/miui/support/cardview/CardView;

    const p1, 0x7f0b06a4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->Z:Landroid/view/View;

    iget-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->Y:Lcom/miui/support/cardview/CardView;

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->Z:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const p1, 0x7f0b09be

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "findViewById(...)"

    invoke-static {p1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->T:Landroid/widget/ImageView;

    const p1, 0x7f0b09c0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->U:Landroid/widget/ImageView;

    const p1, 0x7f0b09bf

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->W:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->U:Landroid/widget/ImageView;

    const/4 v0, 0x0

    const-string v3, "mSignatureHandSave"

    if-eqz p1, :cond_b

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {}, LK2/b;->W()Z

    move-result p1

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v4

    invoke-static {}, LK2/j;->a()Z

    move-result v5

    const v6, 0x7f071a47

    const v7, 0x7f071a46

    const v8, 0x7f0b09c2

    if-eqz p1, :cond_2

    if-nez v4, :cond_2

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    if-nez v5, :cond_3

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v6, -0x2

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/16 v7, 0x14

    invoke-static {p0, v7}, LGt/a;->z(Landroid/content/Context;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    const p1, 0x7f0b0aff

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v9, v10}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->U:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    new-instance v1, Lz5/b;

    invoke-direct {v1, p0, v4, v5}, Lz5/b;-><init>(Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;ZZ)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b09c1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/xiaomi/camera/hand/signature/SignatureView;

    iput-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->V:Lcom/xiaomi/camera/hand/signature/SignatureView;

    const/16 v1, 0xc

    invoke-static {p0, v1}, LGt/a;->z(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/hand/signature/SignatureView;->setPenSize(F)V

    const-string p1, "mSignatureHandView"

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    iget-object v1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->V:Lcom/xiaomi/camera/hand/signature/SignatureView;

    if-eqz v1, :cond_5

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/hand/signature/SignatureView;->setHintTextRotate(I)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lfv/l;->o(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->V:Lcom/xiaomi/camera/hand/signature/SignatureView;

    if-eqz v1, :cond_9

    new-instance p1, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity$a;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity$a;-><init>(Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;)V

    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/hand/signature/SignatureView;->setSignatureStateListener(Lkm/e;)V

    iget-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->T:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    new-instance v1, LG3/b;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, LG3/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->W:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    new-instance v0, LG3/c;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LG3/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Le/i;->re()Le/v;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity$b;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity$b;-><init>(Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;)V

    invoke-virtual {p1, p0, v0}, Le/v;->a(Landroidx/lifecycle/x;Le/o;)V

    return-void

    :cond_7
    const-string p0, "mClearSignatureButton"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string p0, "mSignatureHandBack"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {p1}, Lfv/l;->o(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v0
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->xq()V

    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/l;->onStart()V

    iget-object v0, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->d0:Lcom/xiaomi/cam/watermark/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/cam/watermark/a;->U()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->c0:LGg/P;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/xiaomi/cam/watermark/a;->U()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v0, v1}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_2
    return-void

    :cond_3
    const-string p0, "mWmManager"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    throw v1
.end method

.method public final oq(Landroid/graphics/Bitmap;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->a0:Landroid/os/Handler;

    new-instance v1, LF1/n;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, LF1/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->b0:LF1/n;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lz5/c;

    invoke-direct {v0, p1}, Lz5/c;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Lio/reactivex/internal/operators/observable/r;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/r;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    invoke-virtual {v1, v0}, Lio/reactivex/q;->p(Lio/reactivex/v;)Lio/reactivex/internal/operators/observable/M;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/a;->b()Lio/reactivex/android/schedulers/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/q;->m(Lio/reactivex/v;)Lio/reactivex/internal/operators/observable/C;

    move-result-object v0

    new-instance v1, Lz5/d;

    invoke-direct {v1, p0, p1}, Lz5/d;-><init>(Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;Landroid/graphics/Bitmap;)V

    new-instance v2, Lcom/android/camera/fragment/r0;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Lcom/android/camera/fragment/r0;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lz5/e;

    invoke-direct {v1, p0, p1}, Lz5/e;-><init>(Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;Landroid/graphics/Bitmap;)V

    new-instance p1, LA9/f;

    const/4 v3, 0x6

    invoke-direct {p1, v1, v3}, LA9/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2, p1}, Lio/reactivex/q;->subscribe(Lio/reactivex/functions/d;Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->X:Lio/reactivex/disposables/b;

    return-void
.end method

.method public final xq()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->X:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->X:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->c()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->b0:LF1/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->a0:Landroid/os/Handler;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object v1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->b0:LF1/n;

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->V:Lcom/xiaomi/camera/hand/signature/SignatureView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/hand/signature/SignatureView;->setSignatureStateListener(Lkm/e;)V

    return-void

    :cond_3
    const-string p0, "mSignatureHandView"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    throw v1
.end method

.method public final yq(Landroid/graphics/Bitmap;)V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->c0:LGg/P;

    const-string v1, "mWmManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "userData/resource/signature"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, LN5/d;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v6, p1

    :cond_2
    const/high16 v7, -0x1000000

    invoke-static {p1, v7, v5}, LN5/d;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v8

    :goto_1
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyyMMdd_HHmmss"

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Lfv/l;->e(Ljava/lang/Object;)V

    const-string/jumbo v9, "white"

    invoke-static {v6, v3, v8, v9, v5}, LN5/d;->b(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v6

    const-string v9, "black"

    invoke-static {p1, v3, v8, v9, v5}, LN5/d;->b(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "saveHandSignature->uriWhite:"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", uriBlack "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v8, v5, [Ljava/lang/Object;

    const-string v9, "WmFileUtil"

    invoke-static {v9, v3, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/xiaomi/cam/watermark/a;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v7, v0, :cond_6

    move-object v6, p1

    :cond_6
    :goto_3
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    const/4 v3, 0x6

    const/16 v7, 0x2f

    invoke-static {p1, v7, v5, v3}, Lww/p;->H(Ljava/lang/String;CII)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "substring(...)"

    invoke-static {p1, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move-object p1, v2

    :goto_4
    iget-object v3, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->c0:LGg/P;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3, v0}, Lcom/xiaomi/cam/watermark/a;->h(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->c0:LGg/P;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "userData/current/signature/"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/cam/watermark/a;->s0(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/SignatureByHandActivity;->c0:LGg/P;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/xiaomi/cam/watermark/a;->m0()V

    goto :goto_5

    :cond_a
    invoke-static {v1}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {v1}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-static {v1}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2

    :cond_d
    :goto_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v4, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_e
    invoke-static {v1}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2
.end method
