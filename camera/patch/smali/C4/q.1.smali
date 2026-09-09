.class public final synthetic LC4/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LC4/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget p0, p0, LC4/q;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LQ5/M;

    sget p0, Lz4/C;->r0:I

    const/4 p0, 0x6

    invoke-interface {p1, p0}, LQ5/M;->onBackEvent(I)Z

    return-void

    :pswitch_0
    check-cast p1, LQ6/e;

    invoke-interface {p1}, LQ6/e;->cancelCapture()Z

    return-void

    :pswitch_1
    check-cast p1, LDs/l;

    invoke-interface {p1, v1}, LDs/l;->t0(Z)V

    return-void

    :pswitch_2
    check-cast p1, LQ6/k;

    invoke-interface {p1}, LQ6/k;->tn()V

    return-void

    :pswitch_3
    check-cast p1, LQ6/B1;

    invoke-interface {p1}, LQ6/B1;->s()V

    return-void

    :pswitch_4
    check-cast p1, LQ6/N;

    invoke-interface {p1, v1}, LQ6/N;->Io(Z)Z

    return-void

    :pswitch_5
    check-cast p1, Lcom/android/camera/module/W;

    instance-of p0, p1, Lcom/xiaomi/microfilm/dualcam/mode/DualVideoRecordModule;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/xiaomi/microfilm/dualcam/mode/DualVideoRecordModule;

    invoke-virtual {p1}, Lcom/xiaomi/microfilm/dualcam/mode/DualVideoRecordModule;->reselectCamera()V

    :cond_0
    return-void

    :pswitch_6
    check-cast p1, LQ6/n1;

    const/16 p0, 0xdf

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-interface {p1, p0}, LQ6/n1;->T0([I)V

    return-void

    :pswitch_7
    check-cast p1, LQ6/i0;

    const/16 p0, 0x14

    invoke-interface {p1, v0, v2, p0}, LQ6/i0;->c(III)V

    return-void

    :pswitch_8
    sget-object p0, Lo4/c$a;->i:Lo4/c$a;

    invoke-virtual {p0, p1}, Lo4/c$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_9
    check-cast p1, LQ6/l1;

    invoke-interface {p1, v1}, LQ6/l1;->Yd(I)V

    return-void

    :pswitch_a
    check-cast p1, LN6/l;

    const/4 p0, 0x2

    invoke-interface {p1, p0}, LN6/l;->Zj(I)V

    return-void

    :pswitch_b
    check-cast p1, Le3/e0;

    invoke-interface {p1}, Le3/e0;->j()V

    return-void

    :pswitch_c
    check-cast p1, LQ6/d;

    invoke-static {p1}, Lcom/android/camera/module/video/SlowMotionModule;->Sr(LQ6/d;)V

    return-void

    :pswitch_d
    check-cast p1, LQ6/d;

    invoke-static {p1}, Lcom/android/camera/module/VideoModule;->xq(LQ6/d;)V

    return-void

    :pswitch_e
    check-cast p1, LQ6/v;

    invoke-static {p1}, Lcom/android/camera/features/mode/pro/rec/ProRecModule;->as(LQ6/v;)V

    return-void

    :pswitch_f
    check-cast p1, LQ6/C;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lv2/k0;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/k0;

    invoke-virtual {p0}, Lcom/android/camera/data/data/c;->getCurrentMode()I

    move-result v3

    const/16 v4, 0xa2

    if-ne v3, v4, :ordinary_filter_item

    invoke-virtual {p0}, Lv2/k0;->I()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :video_filter_cond_1

    goto :video_filter_goto_0

    :video_filter_cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/d;

    iget-object v1, v1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :video_filter_cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/d;

    iget-object v1, v1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    :video_filter_cond_2
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lv2/k0;->F(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :video_filter_cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :video_filter_cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/data/d;

    iget-object v4, v4, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :video_filter_cond_3

    move-object v1, p0

    :video_filter_cond_4
    invoke-interface {p1, v2, v0, v1}, LQ6/C;->ja(ILjava/util/List;Ljava/lang/String;)V

    :video_filter_goto_0
    return-void

    :ordinary_filter_item
    invoke-static {}, Lv2/k0;->s()Lcom/android/camera/data/data/d;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    move-object v0, v4

    invoke-interface {p1, v2, v0, v1}, LQ6/C;->ja(ILjava/util/List;Ljava/lang/String;)V

    return-void

    :pswitch_10
    check-cast p1, LQ6/C;

    invoke-interface {p1, v2, v2}, LQ6/C;->jh(ZZ)V

    return-void

    :pswitch_11
    check-cast p1, LQ6/V0;

    invoke-interface {p1}, LQ6/V0;->on()V

    return-void

    :pswitch_12
    check-cast p1, LQ6/l1;

    const p0, 0x7f140ea0

    invoke-interface {p1, p0}, LQ6/l1;->d9(I)V

    return-void

    :pswitch_13
    check-cast p1, LV6/c;

    invoke-interface {p1, v2}, LV6/c;->wi(Z)V

    return-void

    :pswitch_14
    check-cast p1, LQ6/C;

    sget-object p0, LU4/i;->K:Ljava/util/LinkedList;

    invoke-interface {p1, v2}, LQ6/C;->j2(I)V

    return-void

    :pswitch_15
    check-cast p1, Lcom/android/camera/module/r;

    invoke-virtual {p1}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object p0

    invoke-interface {p0}, Lj6/j;->q0()Lu6/q;

    move-result-object p0

    invoke-interface {p0, v2}, Lu6/q;->cancelFocus(Z)V

    return-void

    :pswitch_16
    check-cast p1, LQ6/i0;

    sget-object p0, LEs/N;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 p0, 0xffd

    invoke-interface {p1, v0, p0}, LQ6/i0;->d(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-interface {p1, v0, p0, v1}, LQ6/i0;->g(III)V

    :cond_1
    return-void

    :pswitch_17
    check-cast p1, LQ6/z;

    invoke-interface {p1}, LQ6/z;->onGiveUpClicked()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
.end method
