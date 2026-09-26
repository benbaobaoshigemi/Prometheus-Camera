.class public LJ9/g;
.super Lcom/android/camera/fragment/h;
.source "SourceFile"

# interfaces
.implements LN6/d;
.implements LQ6/c0;
.implements LJ9/h$a;


# instance fields
.field public a:LJ9/h;

.field public b:Landroid/view/View;

.field public c:Lmiuix/appcompat/app/h;

.field public d:LN6/i;

.field public e:I

.field public f:LP9/i;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;

.field public final k:LJ9/g$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/h;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LJ9/g;->e:I

    iput-boolean v0, p0, LJ9/g;->h:Z

    iput-boolean v0, p0, LJ9/g;->i:Z

    const-string v0, "jiugongge"

    iput-object v0, p0, LJ9/g;->j:Ljava/lang/String;

    new-instance v0, LJ9/g$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LJ9/g$a;-><init>(LJ9/g;Landroid/os/Looper;)V

    iput-object v0, p0, LJ9/g;->k:LJ9/g$a;

    return-void
.end method

.method public static Mq(LJ9/g;ZLQ6/l1;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshTopTips: isPlaying = "

    const-string v2, ",isVideoPause = "

    invoke-static {v1, v2, p1}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, LJ9/g;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, LPp/b;->a:Z

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f141391

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, LJ9/g;->h:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const p1, 0x7f141392

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move p0, v3

    goto :goto_0

    :cond_1
    if-nez p1, :cond_0

    move p0, v2

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-interface {p2, v2, v0, v3}, LQ6/l1;->Ob(ILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic Nq(LJ9/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic Oq(LJ9/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static Wq(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_multi_link_click"

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

    new-instance v1, Lnq/a;

    const-string/jumbo v2, "remote_control"

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lnq/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    return-void
.end method


# virtual methods
.method public final E5()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final Gj()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LJ9/g;->Tq()V

    :cond_0
    return-void
.end method

.method public final Hm(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, LJ9/g;->f:LP9/i;

    if-nez v2, :cond_1

    new-instance v2, LP9/i;

    sget-object v3, LQ9/a;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, LP9/i;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, LJ9/g;->f:LP9/i;

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    new-instance p1, LP9/i;

    invoke-direct {p1, p2}, LP9/i;-><init>(Ljava/lang/String;)V

    iget-object p2, p1, LP9/i;->b:Ljava/lang/String;

    iget-boolean p1, p1, LP9/i;->g:Z

    const/16 v0, 0xac

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LJ9/g;->Hm(ILjava/lang/String;)V

    const/16 p1, 0xa7

    invoke-virtual {p0, p1, p2}, LJ9/g;->Hm(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_5

    invoke-static {}, LQ6/j1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LJ9/d;

    invoke-direct {v0, p2, v1}, LJ9/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p0, LJ9/g;->f:LP9/i;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, LP9/i;->g:Z

    iget-object p1, p0, LJ9/g;->a:LJ9/h;

    if-eqz p1, :cond_5

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, LJ9/h;->setSupportedRealSquare(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    iget-boolean p1, p1, Lv2/D0;->B:Z

    if-eqz p1, :cond_5

    invoke-static {}, LQ6/j1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LE4/i;

    const/4 v0, 0x7

    invoke-direct {p2, v0}, LE4/i;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "shutter ignore isTransitQueueFull: "

    invoke-static {p1, v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object p1

    const p2, 0x7f1407ba

    invoke-static {p1, p2}, LF1/C4;->g(Landroid/app/Activity;I)V

    const-string/jumbo p1, "tips_picture_transmission"

    invoke-static {p1}, LJ9/g;->Wq(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "onAcceptJpegRotationChanged: "

    invoke-static {v2, p2}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "persist.friend.shot.real.capture"

    invoke-static {p1, v0}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, LJ9/g;->d:LN6/i;

    if-eqz p1, :cond_5

    iget-object p1, p0, LJ9/g;->a:LJ9/h;

    invoke-virtual {p1}, LJ9/h;->getTextureView()Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iget-object p2, p0, LJ9/g;->d:LN6/i;

    check-cast p2, Lcom/android/camera/module/O;

    iget-object p2, p2, Lcom/android/camera/module/O;->a:Ljava/lang/Object;

    check-cast p2, Lcom/android/camera/module/FriendModule;

    const-string v0, ""

    invoke-static {p2, p1, v0, v1}, Lcom/android/camera/module/FriendModule;->oa(Lcom/android/camera/module/FriendModule;[BLjava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_7
    iget-object p1, p0, LJ9/g;->f:LP9/i;

    iput-object p2, p1, LP9/i;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onAcceptRatioChanged: "

    invoke-static {v0, p2}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, LJ9/g;->g:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onAcceptRatioChanged: same ratio:"

    invoke-static {v0, p2}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iput-object p2, p0, LJ9/g;->g:Ljava/lang/String;

    invoke-virtual {p0}, LJ9/g;->Sq()V

    goto/16 :goto_0

    :pswitch_8
    iget-object p1, p0, LJ9/g;->f:LP9/i;

    iput-object p2, p1, LP9/i;->f:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "configCenterMarkSwitch: "

    invoke-static {v0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/camera/data/data/w;->S0(Z)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LC4/k;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, LC4/k;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object p1, p0, LJ9/g;->f:LP9/i;

    iput-object p2, p1, LP9/i;->e:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "configGradientSwitch: "

    invoke-static {v0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/camera/data/data/w;->T0(Z)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LEs/E;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, LEs/E;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object p1, p0, LJ9/g;->f:LP9/i;

    iput-object p2, p1, LP9/i;->d:Ljava/lang/String;

    invoke-virtual {p0, p2}, LJ9/g;->Pq(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object p1, p0, LJ9/g;->f:LP9/i;

    iput-object p2, p1, LP9/i;->c:Ljava/lang/String;

    invoke-virtual {p0, p2}, LJ9/g;->Pq(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object p1, p0, LJ9/g;->f:LP9/i;

    iput-object p2, p1, LP9/i;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "onAcceptCountDownTimeChange: "

    invoke-static {v2, p2}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v2, LJ9/e;

    invoke-direct {v2, p2, v1}, LJ9/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LH3/p;

    invoke-direct {p2, v0, v1}, LH3/p;-><init>(IB)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :pswitch_d
    invoke-static {p2}, LF1/E;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lo9/a;->a:Lo9/b;

    invoke-interface {p2}, Lo9/b;->b()Lp9/K;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p2

    new-instance v1, LEs/A;

    invoke-direct {v1, p1, v0}, LEs/A;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, LQ6/q;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v2, LEs/F;

    invoke-direct {v2, v0}, LEs/F;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    invoke-static {}, LQ6/j1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LJ9/c;

    invoke-direct {v0, p2, v1}, LJ9/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/a;

    invoke-virtual {p1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p1

    iget-object p1, p1, Loh/b;->o:Lcom/android/camera/module/W;

    instance-of p2, p1, Lcom/android/camera/module/FriendModule;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/android/camera/module/FriendModule;

    const/16 p2, 0xbe

    invoke-virtual {p1, p2}, Lcom/android/camera/module/FriendModule;->startNormalCapture(I)Z

    :cond_5
    :goto_0
    iget-object p0, p0, LJ9/g;->f:LP9/i;

    invoke-virtual {p0}, LP9/i;->b()Ljava/lang/String;

    move-result-object p0

    sput-object p0, LQ9/a;->b:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final Kj()V
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onStreamingReConnect"

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final P6()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    sget-boolean v1, LPp/b;->a:Z

    const/4 v1, 0x3

    const-string v2, "onReceiveHeartBeat"

    invoke-static {v1, v0, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, LJ9/g;->k:LJ9/g$a;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final Pq(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, LJ9/g;->j:Ljava/lang/String;

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, LJ9/g;->j:Ljava/lang/String;

    :goto_1
    const-string v1, "configReferenceSwitch: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LDs/g;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LDs/g;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, LJ9/g;->Sq()V

    return-void
.end method

.method public final Qe(Z)V
    .locals 5

    iput-boolean p1, p0, LJ9/g;->h:Z

    iget-boolean v0, p0, LJ9/g;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onClientStreamStream:isPause = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " return"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LJ9/g;->a:LJ9/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LN9/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "onClientStreamStream: isPause = "

    const-string v4, ",isPlaying = "

    invoke-static {v3, v4, p1, v0}, LF1/P;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x3

    iget-object v2, p0, LJ9/g;->k:LJ9/g$a;

    if-eqz p1, :cond_2

    const-wide/16 p0, 0x3e8

    invoke-virtual {v2, v1, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez v0, :cond_3

    iget-object p1, p0, LJ9/g;->a:LJ9/h;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, LN9/d;->g()V

    :cond_3
    invoke-virtual {p0}, LJ9/g;->Tq()V

    :cond_4
    return-void
.end method

.method public final Qq(Z)V
    .locals 4

    iget-object v0, p0, LJ9/g;->k:LJ9/g$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "forceExitFriendMode: EXIT has fire "

    invoke-static {v0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "forceExitFriendMode: EXIT start fire,delay = "

    invoke-static {v2, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_2

    sget-object p0, LKp/z$b;->a:LKp/z;

    invoke-virtual {p0}, LKp/z;->t()V

    const-wide/16 p0, 0x7d0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    sget-object p0, LKp/z$b;->a:LKp/z;

    invoke-virtual {p0}, LKp/z;->t()V

    invoke-static {}, LQ6/G0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LC4/s;

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LC4/s;-><init>(IB)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Rq()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initRemoteUI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LQ9/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, LP9/i;

    sget-object v1, LQ9/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, LP9/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJ9/g;->f:LP9/i;

    iget-object v0, v0, LP9/i;->b:Ljava/lang/String;

    const/16 v1, 0xa7

    invoke-virtual {p0, v1, v0}, LJ9/g;->Hm(ILjava/lang/String;)V

    iget-object v0, p0, LJ9/g;->f:LP9/i;

    iget-object v0, v0, LP9/i;->d:Ljava/lang/String;

    const/16 v1, 0xa4

    invoke-virtual {p0, v1, v0}, LJ9/g;->Hm(ILjava/lang/String;)V

    iget-object v0, p0, LJ9/g;->f:LP9/i;

    iget-object v0, v0, LP9/i;->c:Ljava/lang/String;

    const/16 v1, 0xa3

    invoke-virtual {p0, v1, v0}, LJ9/g;->Hm(ILjava/lang/String;)V

    iget-object v0, p0, LJ9/g;->f:LP9/i;

    iget-object v0, v0, LP9/i;->e:Ljava/lang/String;

    const/16 v1, 0xa5

    invoke-virtual {p0, v1, v0}, LJ9/g;->Hm(ILjava/lang/String;)V

    iget-object v0, p0, LJ9/g;->f:LP9/i;

    iget-object v0, v0, LP9/i;->f:Ljava/lang/String;

    const/16 v1, 0xa6

    invoke-virtual {p0, v1, v0}, LJ9/g;->Hm(ILjava/lang/String;)V

    iget-object v0, p0, LJ9/g;->f:LP9/i;

    iget-boolean v0, v0, LP9/i;->g:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {p0, v1, v0}, LJ9/g;->Hm(ILjava/lang/String;)V

    invoke-static {}, LQ6/W0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/g;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LCs/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/k1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/h;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LCs/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, LJ9/g;->Tq()V

    return-void
.end method

.method public final Si()V
    .locals 5

    invoke-static {}, Lcom/android/camera/data/data/E;->c()I

    move-result p0

    sget-object v0, LKp/z$b;->a:LKp/z;

    const/16 v1, 0xa0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LKp/z;->y(ILjava/lang/String;)V

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_multi_link_click"

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

    new-instance v1, Lnq/a;

    const/4 v2, 0x0

    const-string v3, "capture"

    const-string/jumbo v4, "remote_control"

    invoke-direct {v1, v3, v4, v2}, Lnq/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgq/h;->a(Ljava/lang/Object;)V

    const-string v1, "attr_timer"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    return-void
.end method

.method public final Sq()V
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x1

    iget-object v2, p0, LJ9/g;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "2.39x1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "16x9"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v5, "4x3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_0

    :sswitch_3
    const-string v5, "1x1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    iput v0, p0, LJ9/g;->e:I

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x5

    iput v0, p0, LJ9/g;->e:I

    goto :goto_1

    :pswitch_1
    iput v1, p0, LJ9/g;->e:I

    goto :goto_1

    :pswitch_2
    iput v3, p0, LJ9/g;->e:I

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x4

    iput v0, p0, LJ9/g;->e:I

    :goto_1
    invoke-static {}, LQ6/W0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LJ9/b;

    invoke-direct {v2, p0, v3}, LJ9/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/k1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LEs/D;

    invoke-direct {v2, p0, v1}, LEs/D;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, LJ9/g;->a:LJ9/h;

    if-eqz v0, :cond_4

    iget p0, p0, LJ9/g;->e:I

    iput p0, v0, LJ9/h;->n:I

    invoke-static {p0}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object p0

    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string v4, "change"

    invoke-direct {v2, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    iget v5, p0, Landroid/graphics/Rect;->left:I

    int-to-double v5, v5

    invoke-virtual {v2, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v4, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    iget v5, p0, Landroid/graphics/Rect;->top:I

    int-to-double v5, v5

    invoke-virtual {v2, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v4, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v2, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v4, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-double v5, p0

    invoke-virtual {v2, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    new-array v1, v1, [Landroid/view/View;

    aput-object v0, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v1, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc6aa -> :sswitch_3
        0xd1ef -> :sswitch_2
        0x171fa6 -> :sswitch_1
        0x57f29bdb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Tq()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "refreshTopTips: return"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, LJ9/g;->a:LJ9/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LN9/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LJ9/a;

    invoke-direct {v2, p0, v1}, LJ9/a;-><init>(LJ9/g;Z)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Uq()Z
    .locals 10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f14079f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f14079e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f140a41

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, LC4/d;

    const/4 v0, 0x3

    invoke-direct {v5, p0, v0}, LC4/d;-><init>(Ljava/lang/Object;I)V

    const v0, 0x7f141276

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lvr/w;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/h;

    move-result-object v0

    iput-object v0, p0, LJ9/g;->c:Lmiuix/appcompat/app/h;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final V5(ILjava/lang/String;[B)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "persist.friend.shot.real.capture"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, LJ9/g;->d:LN6/i;

    if-eqz p0, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast p0, Lcom/android/camera/module/O;

    iget-object p0, p0, Lcom/android/camera/module/O;->a:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/FriendModule;

    invoke-static {p0, p3, p2, v1}, Lcom/android/camera/module/FriendModule;->oa(Lcom/android/camera/module/FriendModule;[BLjava/lang/String;Z)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LCs/f;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, LCs/f;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Vq()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LLp/b;->c(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showErrorTips: wifiEnabled = "

    invoke-static {v2, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LJ9/f;

    invoke-direct {v2, p0, v0}, LJ9/f;-><init>(LJ9/g;Z)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final X()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "onVideoRenderStart"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LJ9/g;->i:Z

    iget-boolean v0, p0, LJ9/g;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LJ9/g;->a:LJ9/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LN9/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "handlePlayerPause: pausePlay"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LJ9/g;->a:LJ9/h;

    invoke-virtual {v0}, LN9/d;->f()V

    :cond_0
    invoke-virtual {p0}, LJ9/g;->Tq()V

    :cond_1
    return-void
.end method

.method public final Xc()V
    .locals 2

    sget-object p0, LKp/z$b;->a:LKp/z;

    const/16 v0, 0xab

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, LKp/z;->y(ILjava/lang/String;)V

    return-void
.end method

.method public final getFragmentId()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0e011b

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FragmentFriendDisplay"

    invoke-static {p0}, LPp/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->initView(Landroid/view/View;)V

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v1, 0x7f0b045d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LJ9/g;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, LQ9/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance v1, LJ9/h;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p1}, LN9/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput v2, v1, LJ9/h;->n:I

    iput v2, v1, LJ9/h;->o:I

    iput-object v1, p0, LJ9/g;->a:LJ9/h;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p1, p0, LJ9/g;->a:LJ9/h;

    invoke-virtual {p1, p0}, LJ9/h;->setVideoListener(LJ9/h$a;)V

    sget-object p1, LKp/z$b;->a:LKp/z;

    iget-object v0, p1, LKp/z;->d:LKp/b;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LKp/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, LKp/z;->d:LKp/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-static {v0, v4, v3}, LKp/b;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LKp/b;->e(Ljava/lang/String;)V

    :cond_0
    iput-boolean v2, p0, LJ9/g;->i:Z

    invoke-virtual {p0}, LJ9/g;->Rq()V

    const-string p1, "connect_success"

    invoke-static {p1}, LJ9/g;->Wq(Ljava/lang/String;)V

    iget-object p0, p0, LJ9/g;->k:LJ9/g$a;

    const-wide/16 v2, 0x3a98

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initView: hostIP = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, LPp/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final nh()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LAs/v;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LAs/v;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, LJ9/g;->k:LJ9/g$a;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-string/jumbo p0, "tips_exit_opposite"

    invoke-static {p0}, LJ9/g;->Wq(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyAfterFrameAvailable(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->notifyAfterFrameAvailable(I)V

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyAfterFrameAvailable: init params , ratio : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LJ9/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, LJ9/g;->Rq()V

    return-void
.end method

.method public final o3()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onStreamingError"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, LJ9/g;->Vq()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LJ9/g;->Qq(Z)V

    const-string/jumbo p0, "tips_signal_lost"

    invoke-static {p0}, LJ9/g;->Wq(Ljava/lang/String;)V

    return-void
.end method

.method public final oi()I
    .locals 0

    iget p0, p0, LJ9/g;->e:I

    return p0
.end method

.method public final onBackEvent(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, LJ9/g;->Uq()Z

    const-string p0, "click_exit"

    invoke-static {p0}, LJ9/g;->Wq(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onDestroy()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onDestroy: "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, LKp/z$b;->a:LKp/z;

    invoke-virtual {v0}, LKp/z;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, LJ9/g;->Qq(Z)V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, LJ9/g;->c:Lmiuix/appcompat/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/h;->dismiss()V

    :cond_0
    sget-object v0, LKp/z$b;->a:LKp/z;

    invoke-virtual {v0}, LKp/z;->v()Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, LJ9/g;->k:LJ9/g$a;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    iput-boolean v1, v0, Lv2/D0;->x:Z

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, LJ9/g;->a:LJ9/h;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, LN9/d;->f()V

    :cond_3
    return-void
.end method

.method public final onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/fragment/h;->onResume()V

    sget-object v0, LKp/z$b;->a:LKp/z;

    invoke-virtual {v0}, LKp/z;->v()Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "onResume: serverConnected = "

    const-string v3, ",isVideoPause = "

    invoke-static {v2, v3, v0}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, LJ9/g;->h:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    invoke-static {}, LQ6/k1;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/w0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/w0;

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LCs/i;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, LCs/i;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, LJ9/g;->a:LJ9/h;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, LJ9/g;->h:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, LN9/d;->g()V

    :cond_1
    invoke-virtual {p0}, LJ9/g;->Tq()V

    return-void

    :cond_2
    invoke-virtual {p0}, LJ9/g;->Vq()V

    invoke-virtual {p0, v3}, LJ9/g;->Qq(Z)V

    return-void
.end method

.method public final register(LN6/g;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->register(LN6/g;)V

    invoke-virtual {p0, p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->registerBackStack(LQ6/c0;)V

    const-class v0, LN6/d;

    check-cast p1, LN6/h;

    invoke-virtual {p1, v0, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public final sl(LN6/i;)V
    .locals 0

    iput-object p1, p0, LJ9/g;->d:LN6/i;

    return-void
.end method

.method public final unRegister(LN6/g;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->unRegister(LN6/g;)V

    invoke-virtual {p0, p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->unRegisterBackStack(LQ6/c0;)V

    const-class v0, LN6/d;

    check-cast p1, LN6/h;

    invoke-virtual {p1, v0, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public final up()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "startCaptureAnimation: "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "persist.friend.shot.real.capture"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, LJ9/g;->k:LJ9/g$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v0, p0, LJ9/g;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, LAs/e;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LAs/e;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
