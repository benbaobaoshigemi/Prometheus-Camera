.class public final Lb3/d;
.super LMp/b;
.source "SourceFile"

# interfaces
.implements LQ6/Y0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/d$b;
    }
.end annotation


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field public a:Lcom/xiaomi/microfilm/dualcam/mode/DualVideoModuleBase;

.field public b:Lcom/xiaomi/microfilm/dualcam/mode/DualVideoModuleBase;

.field public final c:Ljava/util/HashMap;

.field public final d:LMp/c;

.field public final e:Lcom/xiaomi/camera/rcs/a;

.field public final f:Landroid/net/ConnectivityManager;

.field public final g:Lb3/d$b;

.field public h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

.field public i:Z

.field public j:Z

.field public k:I

.field public final l:Lc3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RemoteOnlineController"

    invoke-static {v0}, LPp/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb3/d;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb3/d;->i:Z

    iput-boolean v0, p0, Lb3/d;->j:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb3/d;->c:Ljava/util/HashMap;

    new-instance v0, Lc3/a;

    invoke-direct {v0, p1}, Lc3/a;-><init>(Lcom/android/camera/a;)V

    iput-object v0, p0, Lb3/d;->l:Lc3/a;

    new-instance v0, Lcom/xiaomi/camera/rcs/a;

    new-instance v1, Lb3/d$a;

    invoke-direct {v1, p0}, Lb3/d$a;-><init>(Lb3/d;)V

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/camera/rcs/a;-><init>(Landroid/content/ContextWrapper;Lcom/xiaomi/camera/rcs/a$b$a;)V

    iput-object v0, p0, Lb3/d;->e:Lcom/xiaomi/camera/rcs/a;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lb3/d;->f:Landroid/net/ConnectivityManager;

    new-instance v0, Lb3/d$b;

    invoke-direct {v0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput-object v0, p0, Lb3/d;->g:Lb3/d$b;

    const/4 v0, 0x2

    invoke-static {p1, v0}, LMp/c;->u(Landroid/content/ContextWrapper;I)LMp/c;

    move-result-object p1

    iput-object p1, p0, Lb3/d;->d:LMp/c;

    return-void
.end method


# virtual methods
.method public final declared-synchronized L(I)Lb3/c;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb3/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb3/c;

    if-eqz v1, :cond_0

    iget v2, v1, Lb3/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized P0()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lb3/d;->m:Ljava/lang/String;

    const-string/jumbo v1, "stopStreaming"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb3/d;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lb3/d;->m:Ljava/lang/String;

    const-string/jumbo v3, "stopStreaming failed: "

    invoke-static {v2, v1, v3, v0}, LPp/b;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized X(Ljava/util/HashSet;)I
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lvr/Z;->a()V

    sget-object v0, Lb3/d;->m:Ljava/lang/String;

    const-string v1, "available list: E"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lb3/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb3/c;

    if-eqz v3, :cond_0

    iget v4, v3, Lb3/c;->h:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    sget-object v4, Lb3/d;->m:Ljava/lang/String;

    invoke-virtual {v3}, Lb3/c;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    sget-object p1, Lb3/d;->m:Ljava/lang/String;

    const-string v0, "available list: X"

    invoke-static {v2, p1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a0(Lb3/c;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lb3/d;->j:Z

    if-eq v0, p2, :cond_0

    iput-boolean p2, p0, Lb3/d;->j:Z

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lb3/d;->b:Lcom/xiaomi/microfilm/dualcam/mode/DualVideoModuleBase;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lb3/b;->onConnectivityStateChanged(Lb3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized h0()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb3/d;->d:LMp/c;

    if-eqz v0, :cond_0

    sget-object v0, Lb3/d;->m:Ljava/lang/String;

    const-string/jumbo v1, "sending CMD_START_SERVICE"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lb3/d;->d:LMp/c;

    const v1, 0xbabe

    invoke-virtual {v0, v1}, Lur/f;->i(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized isStreaming()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lb3/d;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized l0(Ljava/lang/String;Landroid/view/Surface;)V
    .locals 11

    const-string/jumbo v0, "startStreaming: "

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lb3/d;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Le3/i0;->e:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?h264=2000-30-"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lb3/d;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    iput-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string/jumbo v1, "skip_loop_filter"

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string/jumbo v1, "skip_frame"

    invoke-virtual {v0, v3, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "fflags"

    const-string v3, "nobuffer"

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v1, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "flush_packets"

    const-wide/16 v7, 0x1

    invoke-virtual {v0, v6, v1, v7, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "reorder_queue_size"

    const-wide/32 v9, 0x100000

    invoke-virtual {v0, v6, v1, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "buffer_size"

    const-wide/32 v9, 0x500000

    invoke-virtual {v0, v6, v1, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "max_delay"

    const-wide/32 v9, 0xf4240

    invoke-virtual {v0, v6, v1, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "analyzeduration"

    const-wide/16 v9, 0x1388

    invoke-virtual {v0, v6, v1, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "probesize"

    const-wide/32 v9, 0xc800

    invoke-virtual {v0, v6, v1, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "formatprobesize"

    const-wide/16 v9, 0x400

    invoke-virtual {v0, v6, v1, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "fpsprobesize"

    const-wide/16 v9, 0x5

    invoke-virtual {v0, v6, v1, v9, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "infbuf"

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v7, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "packet-buffering"

    invoke-virtual {v0, v3, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string/jumbo v1, "start-on-prepared"

    invoke-virtual {v0, v3, v1, v7, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "max-fps"

    const-wide/16 v4, 0x1e

    invoke-virtual {v0, v3, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec"

    invoke-virtual {v0, v3, v1, v7, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec-avc"

    invoke-virtual {v0, v3, v1, v7, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec-hevc"

    invoke-virtual {v0, v3, v1, v7, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "max_cached_duration"

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v3, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "low_latency_mode"

    invoke-virtual {v0, v3, v1, v7, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    iget-object v0, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object p2, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p2, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V

    iget-object p1, p0, Lb3/d;->h:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    const/4 p1, 0x0

    iput p1, p0, Lb3/d;->k:I

    iput-boolean v6, p0, Lb3/d;->i:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    sget-object p2, Lb3/d;->m:Ljava/lang/String;

    const-string/jumbo v0, "startStreaming failed: "

    invoke-static {v2, p2, v0, p1}, LPp/b;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onConnectionResult(IILjava/lang/String;I)V
    .locals 5

    const-string p1, "onConnectionResult: id = "

    monitor-enter p0

    :try_start_0
    sget-object v0, Lb3/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", info = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {v1, v0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lb3/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lb3/d;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb3/c;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lb3/d;->L(I)Lb3/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-nez p1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-static {p4}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->fromInt(I)Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    move-result-object p2

    sget-object v2, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->GENERAL_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne p2, v2, :cond_3

    const-string p2, "connection: succeed (ip received)"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p4, "ip"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Failed to extract \'ip\' form \'"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lb3/c;->j:Ljava/lang/String;

    invoke-static {v1, p3, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-object v4, p1, Lb3/c;->e:Ljava/lang/String;

    iput v3, p1, Lb3/c;->f:I

    goto :goto_3

    :cond_3
    invoke-static {p4}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->fromInt(I)Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    move-result-object p2

    sget-object p3, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->REJECTED:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    if-ne p2, p3, :cond_4

    const-string p2, "connection: rejected"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x4

    iput p2, p1, Lb3/c;->i:I

    iput-object v4, p1, Lb3/c;->e:Ljava/lang/String;

    iput v3, p1, Lb3/c;->f:I

    iget-object p2, p0, Lb3/d;->b:Lcom/xiaomi/microfilm/dualcam/mode/DualVideoModuleBase;

    if-eqz p2, :cond_5

    invoke-interface {p2, p1}, Lb3/b;->onConnectivityStateChanged(Lb3/c;)V

    goto :goto_3

    :cond_4
    const-string p2, "connection: failure"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    iput v1, p1, Lb3/c;->i:I

    iput-object v4, p1, Lb3/c;->e:Ljava/lang/String;

    iput v3, p1, Lb3/c;->f:I

    iget-object p2, p0, Lb3/d;->b:Lcom/xiaomi/microfilm/dualcam/mode/DualVideoModuleBase;

    if-eqz p2, :cond_5

    invoke-interface {p2, p1}, Lb3/b;->onConnectivityStateChanged(Lb3/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onDisconnection(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lb3/d;->L(I)Lb3/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x7

    iput p2, p1, Lb3/c;->i:I

    const/4 p2, 0x0

    iput-object p2, p1, Lb3/c;->e:Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p1, Lb3/c;->f:I

    iget-object p2, p0, Lb3/d;->b:Lcom/xiaomi/microfilm/dualcam/mode/DualVideoModuleBase;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lb3/b;->onConnectivityStateChanged(Lb3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onEndpointFound(IILjava/lang/String;[B)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lvr/Z;->a()V

    invoke-static {p3}, Lb3/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lb3/d;->c:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lb3/c;

    if-nez p4, :cond_1

    new-instance p4, Lb3/c;

    invoke-direct {p4, p2, p3}, Lb3/c;-><init>(ILjava/lang/String;)V

    iget-object p2, p0, Lb3/d;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-static {p3}, Lb3/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lb3/c;->d:Ljava/lang/String;

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p4, Lb3/c;->g:J

    const/4 p1, 0x1

    iput p1, p4, Lb3/c;->h:I

    iget-object p1, p0, Lb3/d;->a:Lcom/xiaomi/microfilm/dualcam/mode/DualVideoModuleBase;

    if-eqz p1, :cond_2

    invoke-interface {p1, p4}, Lb3/a;->onAvailabilityStateChanged(Lb3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onEndpointLost(IILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lvr/Z;->a()V

    invoke-static {p3}, Lb3/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lb3/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/c;

    if-nez v0, :cond_1

    new-instance v0, Lb3/c;

    invoke-direct {v0, p2, p3}, Lb3/c;-><init>(ILjava/lang/String;)V

    iget-object p2, p0, Lb3/d;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, v0, Lb3/c;->g:J

    const/4 p1, 0x2

    iput p1, v0, Lb3/c;->h:I

    iget-object p1, p0, Lb3/d;->a:Lcom/xiaomi/microfilm/dualcam/mode/DualVideoModuleBase;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lb3/a;->onAvailabilityStateChanged(Lb3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onPayloadReceived(II[B)V
    .locals 4

    const-string p1, "onPayloadReceived: illegal port: "

    monitor-enter p0

    const/4 v0, 0x3

    if-nez p3, :cond_0

    :try_start_0
    sget-object p1, Lb3/d;->m:Ljava/lang/String;

    const-string p2, "onPayloadReceived: empty payload"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    sget-object p3, Lb3/c;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p3, -0x1

    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "rtsp_port"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to extract \'rtsp_port\' form \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lb3/c;->j:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move v1, p3

    :goto_0
    if-ne v1, p3, :cond_1

    sget-object p2, Lb3/d;->m:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_4
    invoke-virtual {p0, p2}, Lb3/d;->L(I)Lb3/c;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lb3/d;->m:Ljava/lang/String;

    const-string p2, "onPayloadReceived: device not found"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const/4 p2, 0x2

    :try_start_5
    iput p2, p1, Lb3/c;->i:I

    iput v1, p1, Lb3/c;->f:I

    sget-object p2, Lb3/d;->m:Ljava/lang/String;

    const-string p3, "connection: succeed (port received)"

    invoke-static {v0, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lb3/c;->c()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lb3/d;->b:Lcom/xiaomi/microfilm/dualcam/mode/DualVideoModuleBase;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lb3/b;->onConnectivityStateChanged(Lb3/c;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final declared-synchronized p0()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb3/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lb3/d;->d:LMp/c;

    if-eqz v0, :cond_0

    sget-object v0, Lb3/d;->m:Ljava/lang/String;

    const-string/jumbo v1, "sending CMD_STOP_SERVICE"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lb3/d;->d:LMp/c;

    const v1, 0xdead

    invoke-virtual {v0, v1}, Lur/f;->i(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized q(I)V
    .locals 3

    const-string/jumbo v0, "sending CMD_START_CONNECTING: "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lb3/d;->L(I)Lb3/c;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    iput v2, v1, Lb3/c;->i:I

    iget-object v2, p0, Lb3/d;->b:Lcom/xiaomi/microfilm/dualcam/mode/DualVideoModuleBase;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lb3/b;->onConnectivityStateChanged(Lb3/c;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lb3/d;->d:LMp/c;

    if-eqz v1, :cond_1

    sget-object v1, Lb3/d;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lb3/d;->d:LMp/c;

    const/16 v1, 0x104

    invoke-virtual {v0, v1, p1}, Lur/f;->j(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final registerProtocol()V
    .locals 3

    sget-object v0, Lb3/d;->m:Ljava/lang/String;

    const-string v1, "registerProtocol"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/Y0;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb3/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lb3/d;->e:Lcom/xiaomi/camera/rcs/a;

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/a;->a()V

    iget-object v0, p0, Lb3/d;->f:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lb3/d;->g:Lb3/d$b;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lb3/d;->d:LMp/c;

    invoke-virtual {v0, p0}, LMp/c;->s(LMp/b;)V

    iget-object v0, p0, Lb3/d;->d:LMp/c;

    invoke-virtual {v0}, LMp/c;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final unRegisterProtocol()V
    .locals 3

    sget-object v0, Lb3/d;->m:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterProtocol"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/Y0;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    invoke-virtual {p0}, Lb3/d;->P0()V

    invoke-virtual {p0}, Lb3/d;->p0()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb3/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lb3/d;->e:Lcom/xiaomi/camera/rcs/a;

    iget-object v1, v0, Lcom/xiaomi/camera/rcs/a;->c:Lcom/xiaomi/camera/rcs/a$a;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/xiaomi/camera/rcs/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaomi/camera/rcs/a;->c:Lcom/xiaomi/camera/rcs/a$a;

    :cond_0
    iget-object v0, p0, Lb3/d;->f:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lb3/d;->g:Lb3/d$b;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lb3/d;->d:LMp/c;

    if-eqz v0, :cond_2

    iget-object v1, v0, LMp/c;->l:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v0, LMp/c;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lb3/d;->d:LMp/c;

    invoke-virtual {v0}, LMp/c;->y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final declared-synchronized v(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lb3/d;->L(I)Lb3/c;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    iput v1, v0, Lb3/c;->i:I

    iget-object v1, p0, Lb3/d;->b:Lcom/xiaomi/microfilm/dualcam/mode/DualVideoModuleBase;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lb3/b;->onConnectivityStateChanged(Lb3/c;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lb3/d;->d:LMp/c;

    if-eqz v0, :cond_1

    sget-object v0, Lb3/d;->m:Ljava/lang/String;

    const-string/jumbo v1, "sending CMD_START_DISCONNECTING"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lb3/d;->d:LMp/c;

    const/16 v1, 0x105

    invoke-virtual {v0, v1, p1}, Lur/f;->j(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
