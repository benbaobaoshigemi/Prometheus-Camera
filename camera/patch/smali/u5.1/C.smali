.class public final Lu5/C;
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

    iput p2, p0, Lu5/C;->a:I

    iput-object p1, p0, Lu5/C;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lu5/C;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lu5/C;->b:Ljava/lang/Object;

    check-cast v0, Lyd/l;

    iget-object v0, v0, Lyd/l;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lu5/C;->b:Ljava/lang/Object;

    check-cast p0, Lyd/l;

    iget-object p0, p0, Lyd/l;->c:Lyd/c;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyd/c;->onCanceled()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lu5/C;->b:Ljava/lang/Object;

    check-cast v0, Lu5/B;

    iget-object v1, v0, Lu5/B;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, v0, Lu5/B;->c:LT8/j;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget v3, v0, Lu5/B;->h:I

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v6, v1, LT8/j;->b:LW8/c$b;

    iput v3, v6, LW8/c$b;->h:I

    iget-object v3, v1, LT8/j;->c:LW8/c;

    if-eqz v3, :cond_2

    new-instance v6, LEc/b;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v1, v5, v4}, LEc/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, LW8/c;->b(Ljava/lang/Runnable;)V

    :try_start_1
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WatermarkEffect"

    invoke-static {v3, v1}, LO0/A;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    iget v1, v0, Lu5/B;->h:I

    add-int/2addr v1, v2

    const v2, 0x7fffffff

    rem-int/2addr v1, v2

    iput v1, v0, Lu5/B;->h:I

    iget-object v1, v0, Lu5/B;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lu5/B;->d:Landroid/os/Handler;

    const-wide/16 v2, 0x21

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget p0, v0, Lu5/B;->h:I

    if-ltz p0, :cond_3

    iget-object p0, v0, Lu5/B;->b:Landroid/view/SurfaceView;

    if-eqz p0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_3
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
