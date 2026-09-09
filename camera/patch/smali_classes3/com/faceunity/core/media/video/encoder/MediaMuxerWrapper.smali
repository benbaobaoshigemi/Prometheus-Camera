.class public Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

.field private mAudioFileEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

.field private mEncoderCount:I

.field private volatile mHasStopEncoder:Z

.field private mIsStarted:Z

.field private final mMediaMuxer:Landroid/media/MediaMuxer;

.field private mStatredCount:I

.field private mVideoEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Video_MediaMuxerWrapper"

    iput-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mHasStopEncoder:Z

    new-instance v1, Landroid/media/MediaMuxer;

    invoke-direct {v1, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    iput v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mStatredCount:I

    iput v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mEncoderCount:I

    iput-boolean v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mIsStarted:Z

    return-void
.end method


# virtual methods
.method public addEncoder(Lcom/faceunity/core/media/video/encoder/MediaEncoder;)V
    .locals 3

    instance-of v0, p1, Lcom/faceunity/core/media/video/encoder/MediaVideoEncoder;

    const-string v1, "Video encoder already added."

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v0, p1, Lcom/faceunity/core/media/video/encoder/MediaAudioEncoder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    instance-of v0, p1, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    :goto_0
    iget-object p1, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    iget-object v2, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    add-int/2addr p1, v0

    iput p1, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mEncoderCount:I

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unsupported encoder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized addTrack(Landroid/media/MediaFormat;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mIsStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "muxer already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized hasStopEncoder()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mHasStopEncoder:Z
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

.method public declared-synchronized isStarted()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mIsStarted:Z
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

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->prepare()V

    :cond_0
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->prepare()V

    :cond_1
    iget-object p0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->prepare()V

    :cond_2
    return-void
.end method

.method public declared-synchronized start()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mStatredCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mStatredCount:I

    iget v2, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-lez v2, :cond_0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    iput-boolean v1, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mIsStarted:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startRecording()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mHasStopEncoder:Z

    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->startRecording()V

    :cond_0
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->startRecording()V

    :cond_1
    iget-object p0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->startRecording()V

    :cond_2
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mStatredCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mStatredCount:I

    iget v1, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-lez v1, :cond_0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mIsStarted:Z
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

.method public stopRecording()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mHasStopEncoder:Z

    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->stopRecording()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    iget-object v1, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->stopRecording()V

    :cond_1
    iput-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    iget-object v1, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->stopRecording()V

    :cond_2
    iput-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/faceunity/core/media/video/encoder/MediaEncoder;

    return-void
.end method

.method public declared-synchronized writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mStatredCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
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
