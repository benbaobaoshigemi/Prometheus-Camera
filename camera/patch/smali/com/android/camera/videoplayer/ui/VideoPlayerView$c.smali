.class public final Lcom/android/camera/videoplayer/ui/VideoPlayerView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/videoplayer/ui/VideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/camera/videoplayer/ui/VideoPlayerView;


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$c;->a:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "onVideoSizeAvailable, mReadyForPlaybackIndicator "

    sget-boolean v1, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->K:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$c;->a:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iget-object v2, v2, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->m:Ljava/lang/String;

    const-string v3, ">> run, onVideoSizeAvailable"

    invoke-static {v2, v3}, LW0/S;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$c;->a:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iget-object v2, v2, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->t:LN8/b;

    monitor-enter v2

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$c;->a:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iget-object v3, v3, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$c;->a:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iget-object v0, v0, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->t:LN8/b;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, LW0/S;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$c;->a:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iget-object v3, v0, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->t:LN8/b;

    invoke-virtual {v0}, Lcom/android/camera/videoplayer/ui/b;->getContentHeight()Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$c;->a:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {v4}, Lcom/android/camera/videoplayer/ui/b;->getContentWidth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, v3, LN8/b;->a:Landroid/util/Pair;

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$c;->a:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iget-object v0, v0, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->t:LN8/b;

    invoke-virtual {v0}, LN8/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$c;->a:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iget-object v0, v0, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->m:Ljava/lang/String;

    const-string/jumbo v3, "run, onVideoSizeAvailable, notifyAll"

    invoke-static {v0, v3}, LW0/S;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$c;->a:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iget-object v0, v0, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->t:LN8/b;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$c;->a:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iget-object p0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->m:Ljava/lang/String;

    const-string v0, "<< run, onVideoSizeAvailable"

    invoke-static {p0, v0}, LW0/S;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
