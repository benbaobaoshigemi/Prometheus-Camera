.class public Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;
.super Lcom/faceunity/core/media/video/encoder/MediaEncoder;
.source "SourceFile"


# static fields
.field private static final AUDIO:Ljava/lang/String; = "audio/"

.field private static final DEBUG:Z


# instance fields
.field TAG:Ljava/lang/String;

.field private mFilepath:Ljava/lang/String;

.field private mInputBuffer:Ljava/nio/ByteBuffer;

.field private mMediaExtractor:Landroid/media/MediaExtractor;


# direct methods
.method public constructor <init>(Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;Lcom/faceunity/core/media/video/encoder/MediaEncoder$MediaEncoderListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/faceunity/core/media/video/encoder/MediaEncoder;-><init>(Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;Lcom/faceunity/core/media/video/encoder/MediaEncoder$MediaEncoderListener;)V

    const-string p1, "Video_MediaAudioFileEncoder"

    iput-object p1, p0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->TAG:Ljava/lang/String;

    iput-object p3, p0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mFilepath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public drain()V
    .locals 0

    return-void
.end method

.method public prepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iput v0, p0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mTrackIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mIsEOS:Z

    iput-boolean v0, p0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mMuxerStarted:Z

    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, p0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget-object v2, p0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mFilepath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;

    iget-object v2, p0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "max-input-size"

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mInputBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-virtual {v1, v3}, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mTrackIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mListener:Lcom/faceunity/core/media/video/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0, p0}, Lcom/faceunity/core/media/video/encoder/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/faceunity/core/media/video/encoder/MediaEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepare:"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->release()V

    iget-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, v0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;

    invoke-virtual {v1}, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->start()Z

    move-result v2

    if-nez v2, :cond_1

    monitor-enter v1

    :catch_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->isStarted()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    const-wide/16 v2, 0x64

    :try_start_2
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_3
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget v2, v0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mTrackIndex:I

    if-gez v2, :cond_2

    invoke-virtual {v0}, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->release()V

    return-void

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mMuxerStarted:Z

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v3

    move v6, v5

    :goto_3
    iget-boolean v9, v0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mRequestStop:Z

    if-eqz v9, :cond_3

    invoke-virtual {v0}, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->release()V

    goto :goto_4

    :cond_3
    iget-object v9, v0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget-object v10, v0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mInputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v10, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v13

    iget-object v9, v0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    iget-object v11, v0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v16

    iget-object v11, v0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->advance()Z

    move-result v11

    if-eqz v11, :cond_6

    if-lez v13, :cond_6

    if-nez v6, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move v6, v2

    :cond_4
    const-wide/16 v11, 0x3e8

    :try_start_4
    div-long/2addr v9, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    sub-long/2addr v9, v11

    cmp-long v11, v9, v3

    if-lez v11, :cond_5

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_5
    iget-object v11, v0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v12, 0x0

    invoke-virtual {v0}, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->getPTSUs()J

    move-result-wide v14

    invoke-virtual/range {v11 .. v16}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget v9, v0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mTrackIndex:I

    iget-object v10, v0, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->mInputBuffer:Ljava/nio/ByteBuffer;

    iget-object v11, v0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v9, v10, v11}, Lcom/faceunity/core/media/video/encoder/MediaMuxerWrapper;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v9, v0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v9, v0, Lcom/faceunity/core/media/video/encoder/MediaEncoder;->prevOutputPTSUs:J

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/faceunity/core/media/video/encoder/MediaAudioFileEncoder;->release()V

    :goto_4
    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public signalEndOfInputStream()V
    .locals 0

    return-void
.end method
