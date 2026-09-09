.class public final synthetic LC4/H;
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

    iput p2, p0, LC4/H;->a:I

    iput-object p1, p0, LC4/H;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, LC4/H;->a:I

    packed-switch v3, :pswitch_data_0

    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, Lzs/l;

    invoke-virtual {p0}, Lzs/l;->d()V

    return-void

    :pswitch_0
    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, Lz3/q;

    iget-object v0, p0, Lz3/q;->c:Landroid/widget/ImageView;

    const v1, 0x7f08033b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lz3/q;->h:I

    iget-object p0, p0, Lz3/q;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :pswitch_1
    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, Ly5/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Ly5/h;->Kq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateWmPreview: error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "FragmentWatermarkPreview"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_2
    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, Lru/h;

    iget-object p0, p0, Lru/h;->M:LCu/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "setFrameCountThreshold:0"

    const-string v1, "PreviewRenderer"

    invoke-static {v1, v0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, LCu/w;->l:I

    return-void

    :pswitch_3
    sget-object v0, Lcom/android/camera/ui/ZoomViewMM;->m0:[F

    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/ui/ZoomViewMM;

    iget v0, p0, Lcom/android/camera/ui/a;->a:I

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/a;->b:Lcom/android/camera/ui/a$a;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/camera/ui/a$a;->L:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/camera/ui/a$a;->T:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/camera/ui/a$a;->L:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomViewMM;->setContentDescriptionAddValue(Ljava/lang/String;)V

    sget-object v0, LF1/D2;->f:LF1/D2;

    iget-boolean v0, v0, LF1/D2;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    return-void

    :pswitch_4
    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, Lpc/g;

    iget-object v0, p0, Lpc/g;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p0, Lpc/g;->l:Z

    if-eqz v1, :cond_3

    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    iget-wide v1, p0, Lpc/g;->k:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lpc/g;->k:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    monitor-exit v0

    goto :goto_3

    :cond_4
    if-gez v1, :cond_5

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    iget-object v2, p0, Lpc/g;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lpc/g;->m:Ljava/lang/IllegalStateException;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    :cond_5
    invoke-virtual {p0}, Lpc/g;->a()V

    monitor-exit v0

    :goto_3
    return-void

    :goto_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :pswitch_5
    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, Lp4/q;

    iget-object v0, p0, Lp4/k;->j:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object p0, p0, Lp4/k;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :pswitch_6
    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, Li9/h;

    iget-object p0, p0, Li9/h;->q:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_7
    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, Lcom/xiaomi/microfilm/vlog/mode/LiveModuleSubVV;

    invoke-static {p0}, Lcom/xiaomi/microfilm/vlog/mode/LiveModuleSubVV;->xd(Lcom/xiaomi/microfilm/vlog/mode/LiveModuleSubVV;)V

    return-void

    :pswitch_8
    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, Lc6/j;

    iget-object v0, p0, Lc6/j;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    sget-object v4, Lc6/j;->e:Ljava/lang/String;

    const/4 v5, -0x1

    if-eq v3, v5, :cond_c

    if-ne v0, v5, :cond_6

    goto/16 :goto_8

    :cond_6
    iget-object v6, p0, Lc6/j;->a:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v3

    iget-object p0, p0, Lc6/j;->a:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    sub-int/2addr p0, v1

    sub-int/2addr p0, v0

    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object v0

    if-ltz v6, :cond_8

    iget-object v3, v0, Lc6/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-lt v6, v7, :cond_7

    goto :goto_5

    :cond_7
    iget-object v0, v0, Lc6/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    move v0, v5

    :goto_6
    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object v3

    if-ltz p0, :cond_a

    iget-object v7, v3, Lc6/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lt p0, v8, :cond_9

    goto :goto_7

    :cond_9
    iget-object v3, v3, Lc6/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v7, p0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    goto :goto_7

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7
    const-string v3, "preloadData firstAdapter: "

    const-string v7, ", lastAdapter: "

    const-string v8, ", firstAll: "

    invoke-static {v6, p0, v3, v7, v8}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ", lastAll: "

    invoke-static {v0, v5, v3, p0}, LO0/o;->c(IILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz v0, :cond_d

    if-gez v5, :cond_b

    goto :goto_9

    :cond_b
    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object p0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v0, v1}, Lc6/x;->u(IIZ)V

    goto :goto_9

    :cond_c
    :goto_8
    const-string p0, "preloadData skip"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_9
    return-void

    :pswitch_9
    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, LT9/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "StyleWorkspace"

    const-string/jumbo v3, "showDeleteDialog onClick positive"

    invoke-static {v1, v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, LT9/m;->sr()V

    invoke-virtual {p0}, LT9/m;->Kr()Z

    iget-object v0, p0, LT9/m;->U:LT9/a;

    invoke-virtual {v0}, LT9/a;->d()LT9/r;

    move-result-object v0

    iget-object v1, p0, LT9/m;->U:LT9/a;

    invoke-virtual {v1, v0}, LT9/a;->u(LT9/r;)V

    iget-object v0, p0, LT9/m;->V:LT9/r;

    invoke-virtual {p0, v0, v2, v2}, LT9/m;->as(LT9/r;ZI)V

    iget-object v0, p0, LT9/m;->U:LT9/a;

    invoke-virtual {v0}, LT9/a;->h()Ljava/lang/String;

    const-string v0, "attr_delete_success"

    invoke-virtual {p0, v0}, LT9/m;->ks(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f140a4f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f070afc

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    invoke-static {v0, v1, v2}, LF1/C4;->a(Landroid/content/Context;Ljava/lang/String;Z)LPu/A;

    return-void

    :pswitch_a
    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, LIj/g;

    iget v3, p0, LIj/g;->l:I

    if-ge v3, v0, :cond_e

    iget-object v0, p0, LIj/g;->j:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, p0, LIj/g;->l:I

    add-int/2addr v3, v1

    iput v3, p0, LIj/g;->l:I

    const-string/jumbo v1, "retrying playLivePhoto, attempt="

    invoke-static {v3, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "IntentDoneFeatureFragment"

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, LIj/g;->Pq(Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    invoke-virtual {p0}, LIj/g;->Qq()V

    :cond_f
    :goto_a
    return-void

    :pswitch_b
    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, LGs/g;

    iget-object v1, p0, LGs/g;->b0:LFs/A;

    iget v1, v1, LFs/A;->f:I

    if-ne v1, v0, :cond_10

    iget-object p0, p0, LGs/g;->t:LU9/e;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, LU9/e;->A()V

    :cond_10
    return-void

    :pswitch_c
    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/Camera;

    sget-object v0, Lcom/android/camera/Camera;->C2:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object v0

    iget-object v0, v0, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {v0}, Lvr/m;->n(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/camera/a;->F7()Lvr/m;

    move-result-object p0

    iget-object p0, p0, Lvr/m;->a:Landroid/content/Intent;

    invoke-static {p0}, Lvr/m;->x(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_13

    invoke-static {}, LF1/D3;->a()LF1/D3;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->H()Z

    move-result v0

    iget-boolean v1, p0, LF1/D3;->h:Z

    if-eq v0, v1, :cond_13

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "release sound E"

    const-string v3, "MiuiCameraSound"

    invoke-static {v3, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, LF1/D3;->l()V

    iget-object v0, p0, LF1/D3;->e:Lio/reactivex/disposables/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, LF1/D3;->e:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->c()V

    iput-object v1, p0, LF1/D3;->e:Lio/reactivex/disposables/b;

    :cond_11
    iget-object v0, p0, LF1/D3;->f:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, LF1/D3;->f:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->c()V

    iput-object v1, p0, LF1/D3;->f:Lio/reactivex/disposables/b;

    :cond_12
    sput-object v1, LF1/D3;->q:LF1/D3;

    const-string p0, "release sound X"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    return-void

    :pswitch_d
    iget-object p0, p0, LC4/H;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/fragment/clone/c;

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/b;->Vq()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
