.class public final Lc6/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/x$a;
    }
.end annotation


# static fields
.field public static final J:Ljava/lang/String;

.field public static volatile K:Lc6/x;


# instance fields
.field public I:J

.field public final a:Ljava/util/LinkedList;

.field public final b:Ljava/util/LinkedList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lc6/y;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/LinkedList;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lc6/y;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lc6/X;",
            ">;"
        }
    .end annotation
.end field

.field public h:LX1/c;

.field public i:Landroid/os/HandlerThread;

.field public j:Landroid/os/Handler;

.field public k:Lcom/android/camera/fragment/Z;

.field public l:Z

.field public m:Ljava/util/concurrent/ExecutorService;

.field public volatile n:Z

.field public volatile o:Z

.field public volatile p:Z

.field public q:Lc6/J;

.field public r:Lmiuix/appcompat/app/h;

.field public volatile s:Z

.field public t:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lc6/O;->a:Ljava/lang/String;

    const-string v0, "LGal_"

    const-string v1, "GalleryContainerManager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc6/x;->J:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lc6/x;->K:Lc6/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc6/x;->l:Z

    iput-boolean v0, p0, Lc6/x;->n:Z

    iput-boolean v0, p0, Lc6/x;->o:Z

    iput-boolean v0, p0, Lc6/x;->p:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc6/x;->t:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc6/x;->I:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc6/x;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc6/x;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc6/x;->c:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc6/x;->d:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc6/x;->e:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lc6/x;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc6/x;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static g()Lc6/x;
    .locals 2

    sget-object v0, Lc6/x;->K:Lc6/x;

    if-nez v0, :cond_1

    const-class v0, Lc6/x;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc6/x;->K:Lc6/x;

    if-nez v1, :cond_0

    new-instance v1, Lc6/x;

    invoke-direct {v1}, Lc6/x;-><init>()V

    sput-object v1, Lc6/x;->K:Lc6/x;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lc6/x;->K:Lc6/x;

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lc6/x;->h:LX1/c;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX1/c;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    sget-object p1, Lc6/x;->J:Ljava/lang/String;

    const-string/jumbo v0, "runOnMainThread mCamera is null"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/camera/fragment/Z;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addListener: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAllItems.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc6/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lc6/x;->J:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lc6/x;->k:Lcom/android/camera/fragment/Z;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lc6/x;->k:Lcom/android/camera/fragment/Z;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lc6/x;->l:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/fragment/Z;->Xm()V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 4

    invoke-virtual {p0}, Lc6/x;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lc6/x;->J:Ljava/lang/String;

    const-string p1, "close skip"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lc6/x;->J:Ljava/lang/String;

    const-string v2, "close"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lc6/x;->o:Z

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "pauseAllVideoPlay"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lc6/x;->t(Lc6/y;)V

    invoke-virtual {p0}, Lc6/x;->d()V

    return-void
.end method

.method public final c(Lc6/F;)Lc6/y;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lc6/x;->J:Ljava/lang/String;

    const-string p1, "dealData outerItemPara == null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    iget v2, p1, Lc6/F;->j:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lc6/x;->s:Z

    if-eqz v2, :cond_1

    iget-object p0, p0, Lc6/x;->e:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    iget-wide v2, p0, Lc6/x;->t:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc6/x;->t:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    sget-object p0, Lc6/x;->J:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealData: drop late TIME_BURST during drain, uri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lc6/F;->a:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    iget-object v0, p1, Lc6/F;->a:Landroid/net/Uri;

    sget-object v2, Lc6/x;->J:Ljava/lang/String;

    const-string v3, "outer2Inner: "

    invoke-static {v0, v3}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v3, p1, Lc6/F;->d:Z

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez v3, :cond_4

    iget v3, p1, Lc6/F;->j:I

    if-ne v3, v5, :cond_3

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->d4()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v4

    :goto_1
    new-instance v6, Lc6/y;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput v4, v6, Lc6/y;->a:I

    iput-boolean v1, v6, Lc6/y;->m:Z

    iput v1, v6, Lc6/y;->q:I

    iput-object v0, v6, Lc6/y;->c:Landroid/net/Uri;

    iget-object v7, p1, Lc6/F;->c:Ljava/lang/String;

    iput-object v7, v6, Lc6/y;->e:Ljava/lang/String;

    iget-boolean v7, p1, Lc6/F;->e:Z

    iput-boolean v7, v6, Lc6/y;->i:Z

    iget v7, p1, Lc6/F;->j:I

    iput v7, v6, Lc6/y;->b:I

    iget-object v7, p1, Lc6/F;->g:Landroid/util/Size;

    iput-object v7, v6, Lc6/y;->k:Landroid/util/Size;

    iget-wide v7, p1, Lc6/F;->h:J

    iput-wide v7, v6, Lc6/y;->l:J

    iput-boolean v3, v6, Lc6/y;->f:Z

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v7, "/images/media"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v6, Lc6/y;->a:I

    or-int/2addr v3, v5

    iput v3, v6, Lc6/y;->a:I

    :cond_5
    sget-object v3, Lc6/O;->b:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v6}, Lc6/y;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, v6, Lc6/y;->i:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, v6}, Lc6/x;->y(Lc6/y;)V

    goto :goto_3

    :cond_7
    iget-object v0, p1, Lc6/F;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    const-string v0, "outer2Inner: outerItemPara.getThumb() == null"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lc6/x;->n(Lc6/y;)V

    move v0, v4

    goto :goto_2

    :cond_8
    monitor-enter v6

    :try_start_0
    iput-object v0, v6, Lc6/y;->d:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    move v0, v1

    :goto_2
    iget-boolean p1, p1, Lc6/F;->i:Z

    invoke-virtual {v6, p1}, Lc6/y;->i(Z)V

    goto :goto_4

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_9
    iget-boolean p1, p0, Lc6/x;->o:Z

    iput-boolean p1, v6, Lc6/y;->m:Z

    iget-object p1, p0, Lc6/x;->h:LX1/c;

    invoke-static {p1, v6}, Lc6/O;->b(Landroid/content/Context;Lc6/y;)Ljava/util/concurrent/CompletableFuture;

    :goto_3
    move v0, v1

    :goto_4
    invoke-virtual {v6}, Lc6/y;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, v6, Lc6/y;->f:Z

    goto :goto_5

    :cond_a
    move p1, v1

    :goto_5
    if-eqz p1, :cond_b

    if-nez v0, :cond_b

    invoke-virtual {p0, v6}, Lc6/x;->n(Lc6/y;)V

    :cond_b
    :goto_6
    iget-object p1, p0, Lc6/x;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget-object v0, p0, Lc6/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v0, v6, Lc6/y;->a:I

    const/16 v5, 0x20

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_c

    move v0, v4

    goto :goto_7

    :cond_c
    move v0, v1

    :goto_7
    if-nez v0, :cond_d

    iget-object v0, p0, Lc6/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string v0, "dealData position: "

    const-string v7, ", mAdapterItems.size: "

    invoke-static {p1, v0, v7}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lc6/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", needDelay: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v6, Lc6/y;->a:I

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_e

    move v7, v4

    goto :goto_8

    :cond_e
    move v7, v1

    :goto_8
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lc6/x;->k:Lcom/android/camera/fragment/Z;

    if-nez v0, :cond_f

    invoke-virtual {p0, p1, p1, v1}, Lc6/x;->u(IIZ)V

    return-object v6

    :cond_f
    iget p1, v6, Lc6/y;->a:I

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_10

    move v1, v4

    :cond_10
    if-nez v1, :cond_11

    iget-object p1, p0, Lc6/x;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    iget-object p0, p0, Lc6/x;->k:Lcom/android/camera/fragment/Z;

    iget-object v0, v6, Lc6/y;->c:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/Z;->Rq(IZ)V

    :cond_11
    return-object v6
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lc6/x;->r:Lmiuix/appcompat/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lc6/x;->J:Ljava/lang/String;

    const-string v2, "dismissDeleteDialog"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lc6/x;->r:Lmiuix/appcompat/app/h;

    invoke-virtual {v0}, Lmiuix/appcompat/app/h;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc6/x;->r:Lmiuix/appcompat/app/h;

    :cond_0
    return-void
.end method

.method public final e(Landroidx/lifecycle/x;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onCreate owner: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    sget-object v0, Lc6/x;->J:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Lc6/y;)I
    .locals 1

    iget-object p0, p0, Lc6/x;->a:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final j(I)I
    .locals 2

    iget-object p0, p0, Lc6/x;->b:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    const-string v0, "getItemPositionInAdapter adapterIndex: "

    const-string v1, ", positionInRecycler: "

    invoke-static {p1, p0, v0, v1}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lc6/x;->J:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public final k()V
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x1

    sget-object v4, Lc6/x;->J:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "init"

    invoke-static {v4, v7, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v6, p0, Lc6/x;->p:Z

    if-eqz v6, :cond_0

    const-string p0, "already init"

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lc6/x;->m()Z

    move-result v6

    if-nez v6, :cond_1

    const-string p0, "init: not open"

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iput-boolean v3, p0, Lc6/x;->p:Z

    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "REAL_JPEG_LISTENER"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lc6/x;->i:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    new-instance v6, Landroid/os/Handler;

    iget-object v7, p0, Lc6/x;->i:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lc6/x;->j:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v6

    const/4 v7, 0x7

    if-ge v6, v7, :cond_2

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    const-string v8, "availableProcessors: "

    invoke-static {v6, v8}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, LF1/x3;

    const-string v6, "LiteGalleryLoader"

    invoke-direct {v4, v6, v2}, LF1/x3;-><init>(Ljava/lang/String;I)V

    invoke-static {v7, v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iput-object v4, p0, Lc6/x;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lc6/x;->h:LX1/c;

    sget-object v6, Lc6/C;->a:Ljava/lang/String;

    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object v6

    iget-object v6, v6, Lc6/x;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v7, LAs/h;

    invoke-direct {v7, v4, v1}, LAs/h;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v4, Lc6/J;

    iget-object v6, p0, Lc6/x;->h:LX1/c;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v6, v4, Lc6/J;->f:Landroid/content/Context;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, v4, Lc6/J;->g:Ljava/util/LinkedList;

    new-instance v6, LF1/x3;

    const-string v7, "GalleryThumbnailLoader"

    invoke-direct {v6, v7, v2}, LF1/x3;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lio/reactivex/internal/schedulers/n;

    invoke-direct {v7, v6}, Lio/reactivex/internal/schedulers/n;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    iput-object v7, v4, Lc6/J;->c:Lio/reactivex/internal/schedulers/n;

    new-instance v6, LT9/P;

    invoke-direct {v6, v4}, LT9/P;-><init>(Ljava/lang/Object;)V

    sget-object v7, Lio/reactivex/a;->d:Lio/reactivex/a;

    sget v8, Lio/reactivex/h;->a:I

    new-instance v8, Lio/reactivex/internal/operators/flowable/b;

    invoke-direct {v8, v6, v7}, Lio/reactivex/internal/operators/flowable/b;-><init>(Lio/reactivex/j;Lio/reactivex/a;)V

    sget-object v6, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    sget v7, Lio/reactivex/h;->a:I

    invoke-virtual {v8, v6, v7}, Lio/reactivex/h;->a(Lio/reactivex/v;I)Lio/reactivex/internal/operators/flowable/k;

    move-result-object v8

    new-instance v9, Lc6/I;

    invoke-direct {v9, v4, v5}, Lc6/I;-><init>(Ljava/lang/Object;I)V

    new-instance v10, Lio/reactivex/internal/operators/flowable/e;

    invoke-direct {v10, v8, v9}, Lio/reactivex/internal/operators/flowable/e;-><init>(Lio/reactivex/h;Lio/reactivex/functions/d;)V

    new-instance v8, Lio/reactivex/internal/operators/flowable/m;

    invoke-direct {v8, v10}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/h;)V

    iget-object v9, v4, Lc6/J;->c:Lio/reactivex/internal/schedulers/n;

    invoke-virtual {v8, v9, v3}, Lio/reactivex/h;->a(Lio/reactivex/v;I)Lio/reactivex/internal/operators/flowable/k;

    move-result-object v8

    new-instance v9, LF1/a;

    invoke-direct {v9, v4, v2}, LF1/a;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lio/reactivex/internal/operators/flowable/e;

    invoke-direct {v2, v8, v9}, Lio/reactivex/internal/operators/flowable/e;-><init>(Lio/reactivex/h;Lio/reactivex/functions/d;)V

    invoke-virtual {v2, v6, v7}, Lio/reactivex/h;->a(Lio/reactivex/v;I)Lio/reactivex/internal/operators/flowable/k;

    move-result-object v2

    new-instance v8, LL9/C;

    invoke-direct {v8, v4, v0}, LL9/C;-><init>(Ljava/lang/Object;I)V

    new-instance v9, Lio/reactivex/internal/operators/flowable/e;

    invoke-direct {v9, v2, v8}, Lio/reactivex/internal/operators/flowable/e;-><init>(Lio/reactivex/h;Lio/reactivex/functions/d;)V

    new-instance v2, LF1/c;

    invoke-direct {v2, v4, v0}, LF1/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v2}, Lio/reactivex/h;->subscribe(Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object v0

    iput-object v0, v4, Lc6/J;->b:Lio/reactivex/disposables/b;

    new-instance v0, LT9/G;

    invoke-direct {v0, v4, v3}, LT9/G;-><init>(Ljava/lang/Object;I)V

    sget-object v2, Lio/reactivex/a;->a:Lio/reactivex/a;

    new-instance v3, Lio/reactivex/internal/operators/flowable/b;

    invoke-direct {v3, v0, v2}, Lio/reactivex/internal/operators/flowable/b;-><init>(Lio/reactivex/j;Lio/reactivex/a;)V

    invoke-virtual {v3, v6, v7}, Lio/reactivex/h;->a(Lio/reactivex/v;I)Lio/reactivex/internal/operators/flowable/k;

    move-result-object v0

    iget-object v2, v4, Lc6/J;->c:Lio/reactivex/internal/schedulers/n;

    invoke-virtual {v0, v2, v7}, Lio/reactivex/h;->a(Lio/reactivex/v;I)Lio/reactivex/internal/operators/flowable/k;

    move-result-object v0

    new-instance v2, LRm/a;

    const/4 v3, 0x4

    invoke-direct {v2, v4, v3}, LRm/a;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lio/reactivex/internal/operators/flowable/e;

    invoke-direct {v3, v0, v2}, Lio/reactivex/internal/operators/flowable/e;-><init>(Lio/reactivex/h;Lio/reactivex/functions/d;)V

    invoke-virtual {v3, v6, v7}, Lio/reactivex/h;->a(Lio/reactivex/v;I)Lio/reactivex/internal/operators/flowable/k;

    move-result-object v0

    new-instance v2, Lc6/H;

    invoke-direct {v2, v4, v5}, Lc6/H;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lio/reactivex/internal/operators/flowable/e;

    invoke-direct {v3, v0, v2}, Lio/reactivex/internal/operators/flowable/e;-><init>(Lio/reactivex/h;Lio/reactivex/functions/d;)V

    new-instance v0, LT9/O;

    invoke-direct {v0, v4, v1}, LT9/O;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v0}, Lio/reactivex/h;->subscribe(Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object v0

    iput-object v0, v4, Lc6/J;->e:Lio/reactivex/disposables/b;

    iput-object v4, p0, Lc6/x;->q:Lc6/J;

    return-void
.end method

.method public final l()Z
    .locals 3

    iget-object p0, p0, Lc6/x;->c:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LE3/t;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LE3/t;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lc6/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc6/s;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lc6/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    const-string v0, "isAnyVideoPlaying: "

    invoke-static {v0, p0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lc6/x;->J:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public final m()Z
    .locals 3

    sget-object v0, Lc6/x;->J:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mIsOpen "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lc6/x;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p0, p0, Lc6/x;->n:Z

    return p0
.end method

.method public final n(Lc6/y;)V
    .locals 3

    iget-boolean v0, p0, Lc6/x;->p:Z

    if-nez v0, :cond_0

    sget-object p0, Lc6/x;->J:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "loadRealJpeg mIsInit = false"

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lc6/x;->j:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/G;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, LV9/G;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final o(Landroidx/lifecycle/x;)V
    .locals 5

    instance-of v0, p1, LX1/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LX1/c;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    sget-object v0, Lc6/x;->J:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStop mCamera: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lc6/x;->h:LX1/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lc6/x;->h:LX1/c;

    if-ne p1, v2, :cond_a

    invoke-virtual {p0, v3}, Lc6/x;->b(Z)V

    new-array p1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "unInit"

    invoke-static {v0, v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lc6/x;->p:Z

    if-nez p1, :cond_1

    const-string p0, "already unInit"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iput-boolean v3, p0, Lc6/x;->p:Z

    iget-object p1, p0, Lc6/x;->m:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_2
    iput-object v1, p0, Lc6/x;->m:Ljava/util/concurrent/ExecutorService;

    iget-object p1, p0, Lc6/x;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lc6/x;->j:Landroid/os/Handler;

    new-instance v0, LEq/b;

    const/16 v2, 0x9

    invoke-direct {v0, p0, v2}, LEq/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lc6/x;->i:Landroid/os/HandlerThread;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lc6/x;->i:Landroid/os/HandlerThread;

    :cond_3
    iput-object v1, p0, Lc6/x;->j:Landroid/os/Handler;

    iget-object p1, p0, Lc6/x;->q:Lc6/J;

    if-eqz p1, :cond_9

    iget-object v0, p1, Lc6/J;->a:Lio/reactivex/i;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/reactivex/g;->onComplete()V

    :cond_4
    iput-object v1, p1, Lc6/J;->a:Lio/reactivex/i;

    iget-object v0, p1, Lc6/J;->b:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lc6/J;->b:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->c()V

    :cond_5
    iput-object v1, p1, Lc6/J;->b:Lio/reactivex/disposables/b;

    iget-object v0, p1, Lc6/J;->d:Lio/reactivex/i;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lio/reactivex/g;->onComplete()V

    :cond_6
    iput-object v1, p1, Lc6/J;->d:Lio/reactivex/i;

    iget-object v0, p1, Lc6/J;->e:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/reactivex/disposables/b;->a()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lc6/J;->e:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->c()V

    :cond_7
    iput-object v1, p1, Lc6/J;->e:Lio/reactivex/disposables/b;

    iget-object v0, p1, Lc6/J;->c:Lio/reactivex/internal/schedulers/n;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lio/reactivex/internal/schedulers/n;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Lio/reactivex/internal/schedulers/n;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eq v2, v3, :cond_8

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eq v0, v3, :cond_8

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_8
    iput-object v1, p1, Lc6/J;->c:Lio/reactivex/internal/schedulers/n;

    iget-object v0, p1, Lc6/J;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object v1, p1, Lc6/J;->f:Landroid/content/Context;

    :cond_9
    iput-object v1, p0, Lc6/x;->q:Lc6/J;

    :cond_a
    return-void
.end method

.method public final p()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "notifyCheckValidDone"

    sget-object v3, Lc6/x;->J:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lc6/x;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lc6/x;->l:Z

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "checkNotCompleteRealJpegLoad"

    invoke-static {v3, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lc6/x;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LV4/o;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LV4/o;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LB4/j;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, LB4/j;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lc6/x;->k:Lcom/android/camera/fragment/Z;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/J;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LCs/J;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final q(Landroidx/lifecycle/x;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onDestroy owner: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    sget-object v0, Lc6/x;->J:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Lc6/y;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyDataReleased positionInList: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lc6/x;->f(Lc6/y;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lc6/x;->J:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lc6/y;->o:Lc6/Y;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc6/y$a;->a()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "notifyDataReleased item.getListener() == null, positionInList: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lc6/x;->f(Lc6/y;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Lc6/F;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lc6/x;->J:Ljava/lang/String;

    const-string v2, "onNewGalleryOuterItemArrived"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, LAs/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, LAs/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc6/x;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final t(Lc6/y;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pauseOtherVideoPlay currentItemPara: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lc6/x;->J:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lc6/x;->c:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lc6/v;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc6/v;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, LF1/R3;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, LF1/R3;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lc6/w;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lc6/w;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, LE4/K;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, LE4/K;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final u(IIZ)V
    .locals 8

    sget-object v0, Lc6/x;->J:Ljava/lang/String;

    const/4 v1, 0x0

    if-ltz p1, :cond_b

    iget-object v2, p0, Lc6/x;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge p1, v3, :cond_b

    if-ltz p2, :cond_b

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lt p2, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lc6/x;->c:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v5, p1

    :goto_0
    if-gt v5, p2, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc6/y;

    invoke-virtual {v6}, Lc6/y;->d()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v1}, Lc6/y;->h(Z)V

    invoke-virtual {p0, v6, p3}, Lc6/x;->x(Lc6/y;Z)V

    :cond_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p2, 0x1

    :goto_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge p3, v5, :cond_6

    invoke-virtual {v2, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc6/y;

    add-int/lit8 v7, p2, 0x7

    if-gt p3, v7, :cond_4

    invoke-virtual {v5}, Lc6/y;->d()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1}, Lc6/y;->h(Z)V

    invoke-virtual {p0, v5, v1}, Lc6/x;->x(Lc6/y;Z)V

    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lc6/y;->c()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v5, v6}, Lc6/y;->h(Z)V

    invoke-virtual {p0, v5, v1}, Lc6/x;->v(Lc6/y;Z)V

    invoke-virtual {p0, v5}, Lc6/x;->r(Lc6/y;)V

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 p3, p1, -0x1

    :goto_4
    if-ltz p3, :cond_a

    invoke-virtual {v2, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc6/y;

    add-int/lit8 v7, p1, -0x7

    if-lt p3, v7, :cond_8

    invoke-virtual {v5}, Lc6/y;->d()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5, v1}, Lc6/y;->h(Z)V

    invoke-virtual {p0, v5, v1}, Lc6/x;->x(Lc6/y;Z)V

    :cond_7
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-virtual {v5}, Lc6/y;->c()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v5, v6}, Lc6/y;->h(Z)V

    invoke-virtual {p0, v5, v1}, Lc6/x;->v(Lc6/y;Z)V

    invoke-virtual {p0, v5}, Lc6/x;->r(Lc6/y;)V

    :goto_5
    add-int/lit8 p3, p3, -0x1

    goto :goto_4

    :cond_a
    :goto_6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "preloadData visible: ("

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "~"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), old size: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, LV4/h;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, LV4/h;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, LF1/I;

    const/4 p3, 0x6

    invoke-direct {p2, p0, p3}, LF1/I;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :cond_b
    :goto_7
    const-string p0, "preloadData first: "

    const-string p3, ", last: "

    invoke-static {p1, p2, p0, p3}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final v(Lc6/y;Z)V
    .locals 1

    iget-object p0, p0, Lc6/x;->j:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lc6/p;

    invoke-direct {v0, p1, p2}, Lc6/p;-><init>(Lc6/y;Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final w(Landroidx/lifecycle/x;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart owner: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc6/x;->h:LX1/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lc6/x;->J:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lc6/x;->h:LX1/c;

    if-nez v0, :cond_0

    instance-of v0, p1, LX1/c;

    if-eqz v0, :cond_0

    check-cast p1, LX1/c;

    iput-object p1, p0, Lc6/x;->h:LX1/c;

    :cond_0
    invoke-virtual {p0}, Lc6/x;->k()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "checkValid mFirstOpenDate : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lc6/x;->I:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lc6/x;->l:Z

    iget-wide v4, p0, Lc6/x;->I:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_4

    iget-object p1, p0, Lc6/x;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lc6/x;->h:LX1/c;

    iget-wide v4, p0, Lc6/x;->I:J

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v2, Lc6/O;->a:Ljava/lang/String;

    const-string v6, "getAllMatchIdAsync"

    invoke-static {v2, v6, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object v0

    iget-object v0, v0, Lc6/x;->m:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lc6/L;

    invoke-direct {v2, p1, v4, v5}, Lc6/L;-><init>(Landroid/content/Context;J)V

    invoke-static {v2, v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance v0, LF1/s4;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, LF1/s4;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "getAllMatchIdAsync executor == null || executor.isShutdown()"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CompletableFuture;

    new-instance v0, LL9/h;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, LL9/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :cond_3
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "checkValid future is null"

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lc6/x;->p()V

    return-void
.end method

.method public final x(Lc6/y;Z)V
    .locals 2

    iget v0, p1, Lc6/y;->a:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lc6/x;->y(Lc6/y;)V

    return-void

    :cond_1
    iget-object p0, p0, Lc6/x;->h:LX1/c;

    invoke-static {p0, p1}, Lc6/O;->b(Landroid/content/Context;Lc6/y;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public final y(Lc6/y;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lc6/x;->J:Ljava/lang/String;

    const-string v2, "reloadItemWithConsumer"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lc6/x;->h:LX1/c;

    invoke-static {v0, p1}, Lc6/O;->b(Landroid/content/Context;Lc6/y;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LK9/g;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, LK9/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final z()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lc6/x;->J:Ljava/lang/String;

    const-string v3, "reset"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lc6/x;->a:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, LA3/d;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, LA3/d;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iget-object v1, p0, Lc6/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iget-object v1, p0, Lc6/x;->k:Lcom/android/camera/fragment/Z;

    if-eqz v1, :cond_0

    if-lez v2, :cond_0

    iget-object v1, v1, Lcom/android/camera/fragment/Z;->d:Lc6/j;

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeRemoved(II)V

    :cond_0
    iget-object v0, p0, Lc6/x;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object p0, p0, Lc6/x;->d:Landroid/util/ArrayMap;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    :cond_2
    return-void
.end method
