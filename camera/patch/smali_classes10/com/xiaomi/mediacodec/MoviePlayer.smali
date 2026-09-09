.class public Lcom/xiaomi/mediacodec/MoviePlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mediacodec/MoviePlayer$SpeedControlCallback;,
        Lcom/xiaomi/mediacodec/MoviePlayer$PlayTask;,
        Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;,
        Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;,
        Lcom/xiaomi/mediacodec/MoviePlayer$PlayerFeedback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MoviePlayer"

.field private static final VERBOSE:Z


# instance fields
.field private mAudioFromate:Landroid/media/MediaFormat;

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mDurationUs:J

.field private mEndOfDecoder:Z

.field mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

.field private volatile mIsPause:Z

.field private volatile mIsStopRequested:Z

.field private volatile mLoop:Z

.field private mMaxAudioSize:I

.field private mMaxSize:I

.field private mOutputFrames:J

.field private mOutputSurface:Landroid/view/Surface;

.field private volatile mSeekMode:I

.field private volatile mSeekPosMS:J

.field private volatile mSeeking:Z

.field private mSourceFile:Ljava/io/File;

.field private mStartTime:J

.field private mVideoFromate:Landroid/media/MediaFormat;

.field private mVideoHeight:I

.field private volatile mVideoOnly:Z

.field private mVideoWidth:I

.field private final mWaitEvent:Ljava/lang/Object;

.field private mWrittenPresentationTimeUs:J

.field maudioTrack:I

.field private final semp:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputFrames:J

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mEndOfDecoder:Z

    .line 5
    iput-wide v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mStartTime:J

    .line 6
    iput-boolean v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mLoop:Z

    .line 7
    iput-boolean v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsPause:Z

    .line 8
    iput-wide v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekPosMS:J

    .line 9
    iput-boolean v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeeking:Z

    .line 10
    iput-boolean v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoOnly:Z

    const/4 v3, 0x2

    .line 11
    iput v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekMode:I

    .line 12
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    .line 13
    new-instance v3, Ljava/util/concurrent/Semaphore;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->semp:Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    .line 14
    iput-object v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mAudioFromate:Landroid/media/MediaFormat;

    .line 15
    iput-object v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoFromate:Landroid/media/MediaFormat;

    .line 16
    iput v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxSize:I

    .line 17
    iput v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxAudioSize:I

    .line 18
    iput-wide v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->maudioTrack:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/view/Surface;Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;JZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    const-string v0, "rotation-degrees"

    const-string v1, " MoviePlayer play url "

    const-string v2, "No video track found in "

    const-string v3, "Need audio format when mVideoOnly "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    .line 22
    iput-wide v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputFrames:J

    const/4 v6, 0x0

    .line 23
    iput-boolean v6, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mEndOfDecoder:Z

    .line 24
    iput-wide v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mStartTime:J

    .line 25
    iput-boolean v6, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mLoop:Z

    .line 26
    iput-boolean v6, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsPause:Z

    .line 27
    iput-wide v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekPosMS:J

    .line 28
    iput-boolean v6, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeeking:Z

    .line 29
    iput-boolean v6, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoOnly:Z

    const/4 v7, 0x2

    .line 30
    iput v7, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekMode:I

    .line 31
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    .line 32
    new-instance v7, Ljava/util/concurrent/Semaphore;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v7, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->semp:Ljava/util/concurrent/Semaphore;

    const/4 v7, 0x0

    .line 33
    iput-object v7, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mAudioFromate:Landroid/media/MediaFormat;

    .line 34
    iput-object v7, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoFromate:Landroid/media/MediaFormat;

    .line 35
    iput v6, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxSize:I

    .line 36
    iput v6, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxAudioSize:I

    .line 37
    iput-wide v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    const/4 v4, -0x1

    .line 38
    iput v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->maudioTrack:I

    .line 39
    iput-object p1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSourceFile:Ljava/io/File;

    .line 40
    iput-wide p4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekPosMS:J

    .line 41
    iput-boolean p6, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoOnly:Z

    if-nez p3, :cond_0

    .line 42
    new-instance p3, Lcom/xiaomi/mediacodec/MoviePlayer$SpeedControlCallback;

    invoke-direct {p3, p0}, Lcom/xiaomi/mediacodec/MoviePlayer$SpeedControlCallback;-><init>(Lcom/xiaomi/mediacodec/MoviePlayer;)V

    .line 43
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "  == "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputSurface:Landroid/view/Surface;

    .line 45
    iput-object p3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    .line 46
    :try_start_0
    new-instance p2, Landroid/media/MediaExtractor;

    invoke-direct {p2}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 48
    iget-boolean p3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoOnly:Z

    if-nez p3, :cond_1

    .line 49
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoOnly:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 50
    const-string p3, "audio"

    invoke-static {p2, p3}, Lcom/xiaomi/mediacodec/MoviePlayer;->selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result p3

    if-eq p3, v4, :cond_1

    .line 51
    invoke-virtual {p2, p3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mAudioFromate:Landroid/media/MediaFormat;

    .line 52
    iget-object p4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    invoke-interface {p4, p3}, Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;->onAudioFormat(Landroid/media/MediaFormat;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v7, p2

    goto/16 :goto_1

    .line 53
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/xiaomi/mediacodec/MoviePlayer;->selectTrack(Landroid/media/MediaExtractor;)I

    move-result p3

    if-ltz p3, :cond_3

    .line 54
    invoke-virtual {p2, p3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 55
    invoke-virtual {p2, p3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p3

    .line 56
    iput-object p3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoFromate:Landroid/media/MediaFormat;

    .line 57
    sput v6, Lcom/xiaomi/mediacodec/GlUtil;->mPictureRotation:I

    .line 58
    invoke-virtual {p3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 59
    invoke-virtual {p3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p4

    sput p4, Lcom/xiaomi/mediacodec/GlUtil;->mPictureRotation:I

    .line 60
    :cond_2
    const-string p4, "width"

    invoke-virtual {p3, p4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoWidth:I

    .line 61
    const-string p4, "height"

    invoke-virtual {p3, p4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoHeight:I

    .line 62
    iget p4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoWidth:I

    sput p4, Lcom/xiaomi/mediacodec/GlUtil;->mWidht:I

    .line 63
    sput p3, Lcom/xiaomi/mediacodec/GlUtil;->mHeight:I

    .line 64
    invoke-direct {p0}, Lcom/xiaomi/mediacodec/MoviePlayer;->getMetadata()V

    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " width "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoWidth:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoHeight:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " rotation "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/xiaomi/mediacodec/GlUtil;->mPictureRotation:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-virtual {p2}, Landroid/media/MediaExtractor;->release()V

    return-void

    .line 67
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSourceFile:Ljava/io/File;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v7, :cond_4

    .line 68
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    :cond_4
    throw p0
.end method

.method private doExtract(Landroid/media/MediaExtractor;ILandroid/media/MediaCodec;Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    iget-wide v5, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekPosMS:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v5, v12

    const/4 v14, 0x0

    invoke-virtual {v2, v5, v6, v14}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const-wide/16 v15, -0x1

    move/from16 v17, v14

    move/from16 v18, v17

    move-wide v5, v15

    :goto_0
    const/4 v0, 0x1

    if-nez v17, :cond_1c

    iget-boolean v7, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsStopRequested:Z

    if-eqz v7, :cond_0

    const-string v2, "Stop requested"

    invoke-static {v2}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_0
    iget-boolean v7, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsPause:Z

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    const-wide/16 v8, 0xa

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " found InterruptedException exception at doExtract "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    :goto_1
    monitor-exit v7

    goto :goto_0

    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-boolean v7, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeeking:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "doExtract seekTo: mSeekPos: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekPosMS:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " seekMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-wide v7, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekPosMS:J

    mul-long/2addr v7, v12

    iget v9, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekMode:I

    invoke-virtual {v2, v7, v8, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iput-boolean v14, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeeking:Z

    :cond_2
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v7

    iget v8, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->maudioTrack:I

    if-ne v7, v8, :cond_4

    new-instance v7, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;

    invoke-direct {v7, v1}, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;-><init>(Lcom/xiaomi/mediacodec/MoviePlayer;)V

    iget v8, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxAudioSize:I

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v7, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v8, v14}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v21

    if-lez v21, :cond_4

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v8

    iget v9, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->maudioTrack:I

    if-ne v8, v9, :cond_4

    iget-boolean v0, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoOnly:Z

    if-nez v0, :cond_3

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, v7, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v22

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v24

    const/16 v20, 0x0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v24}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget-object v0, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    invoke-interface {v0, v7}, Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;->onAudioFrame(Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;)V

    :cond_3
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_0

    :cond_4
    const-wide/16 v7, 0x2710

    move-wide/from16 v19, v5

    if-nez v18, :cond_a

    invoke-virtual {v4, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_a

    cmp-long v6, v19, v15

    if-nez v6, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    :cond_5
    aget-object v6, v11, v5

    invoke-virtual {v2, v6, v14}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-ltz v6, :cond_9

    iget-boolean v7, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsStopRequested:Z

    if-eqz v7, :cond_6

    const-wide/16 v14, 0x2710

    :goto_3
    const-wide/16 v12, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v7

    if-eq v7, v3, :cond_7

    const-string v7, "MoviePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-wide/16 v23, 0x0

    const-string v9, "WEIRD: got sample from track "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const-wide/16 v23, 0x0

    :goto_4
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-wide v12, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mStartTime:J

    cmp-long v7, v12, v23

    if-nez v7, :cond_8

    iput-wide v8, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mStartTime:J

    :cond_8
    move v7, v6

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-wide/from16 v12, v23

    const-wide/16 v14, 0x2710

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-object/from16 v4, p3

    :goto_5
    move-wide/from16 v5, v19

    goto :goto_7

    :cond_9
    move-wide v14, v7

    goto :goto_3

    :goto_6
    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const-string v5, "sent input EOS"

    invoke-static {v5}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    move/from16 v18, v0

    goto :goto_5

    :cond_a
    move-wide v14, v7

    const-wide/16 v12, 0x0

    goto :goto_5

    :goto_7
    if-nez v17, :cond_1b

    iget-object v7, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v7, v14, v15}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_b

    const-string v0, "no output from decoder available"

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_b
    const/4 v8, -0x3

    if-ne v7, v8, :cond_c

    goto/16 :goto_10

    :cond_c
    const/4 v8, -0x2

    if-ne v7, v8, :cond_12

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "== AMEDIACODEC_INFO_OUTPUT_FORMAT_CHANGED "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "decoder output format changed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    const-string v7, "crop-top"

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "crop-top"

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Crop-top:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    move/from16 v28, v7

    goto :goto_8

    :cond_d
    const/16 v28, 0x0

    :goto_8
    const-string v7, "crop-bottom"

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "crop-bottom"

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Crop-bottom:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    move/from16 v30, v7

    goto :goto_9

    :cond_e
    const/16 v30, 0x0

    :goto_9
    const-string v7, "crop-left"

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "crop-left"

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Crop-left:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    move/from16 v29, v7

    goto :goto_a

    :cond_f
    const/16 v29, 0x0

    :goto_a
    const-string v7, "crop-right"

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "crop-right"

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Crop-right:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    move/from16 v31, v7

    goto :goto_b

    :cond_10
    const/16 v31, 0x0

    :goto_b
    const-string v7, "width"

    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    const-string v8, "height"

    invoke-virtual {v0, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "width :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " height:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    const-string v9, "color-format"

    invoke-virtual {v0, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v9, "color-format"

    invoke-virtual {v0, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Color format:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "color-format"

    invoke-virtual {v0, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    :cond_11
    const-string v9, "stride"

    invoke-virtual {v0, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    const-string v10, "slice-height"

    invoke-virtual {v0, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iget-object v10, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v25, v10

    invoke-interface/range {v25 .. v31}, Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;->onVideoCrop(IIIIII)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " stride:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " height stride:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_12
    if-ltz v7, :cond_1a

    cmp-long v8, v5, v12

    if-eqz v8, :cond_13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "startup lag "

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v8, v5

    long-to-double v5, v8

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v8

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " ms"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    move-wide v9, v12

    goto :goto_c

    :cond_13
    move-wide v9, v5

    :goto_c
    iget-object v5, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_15

    const-string v5, "output EOS"

    invoke-static {v5}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mLoop:Z

    if-nez v5, :cond_14

    iget-object v5, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    invoke-interface {v5}, Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;->onDecoderFinished()V

    const-string v5, "output EOS onDecoderFinished!"

    invoke-static {v5}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    :cond_14
    move/from16 v17, v0

    :cond_15
    iget-object v5, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v14, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v14, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mWrittenPresentationTimeUs:J

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_16

    goto :goto_d

    :cond_16
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v4, v7, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-wide v5, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputFrames:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputFrames:J

    iget-object v0, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    iget-wide v5, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    cmp-long v7, v5, v12

    if-nez v7, :cond_17

    move-wide v5, v12

    goto :goto_e

    :cond_17
    iget-wide v7, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mWrittenPresentationTimeUs:J

    const-wide/16 v14, 0x64

    mul-long/2addr v7, v14

    div-long v5, v7, v5

    :goto_e
    long-to-int v5, v5

    invoke-interface {v0, v5}, Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;->onVideoFrame(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "onVideoFrame mDurationUs: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " mWrittenPresentationTimeUs: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mWrittenPresentationTimeUs:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " stop:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsStopRequested:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    if-nez v17, :cond_18

    :try_start_2
    iget-object v0, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->semp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_f

    :catch_1
    const-string v0, "semp faild!"

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    :cond_18
    :goto_f
    iget-boolean v0, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mLoop:Z

    if-eqz v0, :cond_19

    const-string v0, "Reached EOS, looping"

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v2, v12, v13, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    invoke-virtual {v4}, Landroid/media/MediaCodec;->flush()V

    invoke-interface/range {p4 .. p4}, Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;->loopReset()V

    move-wide v5, v9

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_10

    :cond_19
    move-wide v5, v9

    goto :goto_10

    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-static {v7, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_10
    const-wide/16 v12, 0x3e8

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    goto/16 :goto_0

    :cond_1c
    :goto_11
    iput-boolean v0, v1, Lcom/xiaomi/mediacodec/MoviePlayer;->mEndOfDecoder:Z

    const-string v0, " end of decoder "

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method private getMetadata()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSourceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/mediacodec/GlUtil;->locationString:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get location: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/mediacodec/GlUtil;->locationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/mediacodec/GlUtil;->locationString:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/xiaomi/mediacodec/MoviePlayer;->ISO6709LocationParser(Ljava/lang/String;)[F

    move-result-object v1

    sput-object v1, Lcom/xiaomi/mediacodec/GlUtil;->location:[F

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse the location metadata: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/mediacodec/GlUtil;->locationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x9

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    iget-wide v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;->onStreamDuration(J)V

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duration (us): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method private static selectTrack(Landroid/media/MediaExtractor;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 3
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I
    .locals 5

    .line 5
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 7
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public ISO6709LocationParser(Ljava/lang/String;)[F
    .locals 4

    const/4 p0, 0x1

    const/4 v0, 0x2

    const-string v1, "([+\\-][0-9.]+)([+\\-][0-9.]+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput v1, v0, v3

    aput p1, v0, p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    return-object v2
.end method

.method public frameReceived()V
    .locals 1

    const-string v0, "MoviePlayer frameReceived: semp.release() "

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->semp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public getAudioFromate()Landroid/media/MediaFormat;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mAudioFromate:Landroid/media/MediaFormat;

    return-object p0
.end method

.method public getOneFrame()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mEndOfDecoder:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getVideoDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mDurationUs:J

    return-wide v0
.end method

.method public getVideoFromate()Landroid/media/MediaFormat;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoFromate:Landroid/media/MediaFormat;

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoHeight:I

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mVideoWidth:I

    return p0
.end method

.method public play()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "find exception at mPlayer stop:"

    const-string v1, "find exception at mPlayer play:"

    const-string v2, " get audio input size  "

    const-string v3, "No video track found in "

    iget-object v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSourceFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Landroid/media/MediaExtractor;

    invoke-direct {v5}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v6, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSourceFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/xiaomi/mediacodec/MoviePlayer;->selectTrack(Landroid/media/MediaExtractor;)I

    move-result v6

    if-ltz v6, :cond_1

    const-string v3, "audio"

    invoke-static {v5, v3}, Lcom/xiaomi/mediacodec/MoviePlayer;->selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->maudioTrack:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, -0x1

    const-string v8, "max-input-size"

    if-eq v3, v7, :cond_0

    :try_start_2
    invoke-virtual {v5, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxAudioSize:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxAudioSize:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->maudioTrack:I

    invoke-virtual {v5, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v4

    goto/16 :goto_2

    :catch_0
    move-exception v2

    move-object v3, v4

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v5, v6}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-virtual {v5, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mMaxSize:I

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v7, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputSurface:Landroid/view/Surface;

    const/4 v8, 0x0

    invoke-virtual {v3, v2, v7, v4, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    iget-object v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mFrameCallback:Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;

    invoke-direct {p0, v5, v6, v3, v2}, Lcom/xiaomi/mediacodec/MoviePlayer;->doExtract(Landroid/media/MediaExtractor;ILandroid/media/MediaCodec;Lcom/xiaomi/mediacodec/MoviePlayer$FrameCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaCodec;->flush()V

    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    iget-object v1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_1

    :cond_1
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSourceFile:Ljava/io/File;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v1

    move-object v3, v4

    move-object v5, v3

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v3, v4

    move-object v5, v3

    :goto_1
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Landroid/media/MediaCodec;->flush()V

    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    iget-object v2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-object v4, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mOutputSurface:Landroid/view/Surface;

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_5
    throw v1

    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSourceFile:Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPause()V
    .locals 1

    const-string v0, "MoviePlayer requestPause! "

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsPause:Z

    return-void
.end method

.method public requestResume()V
    .locals 1

    const-string v0, "MoviePlayer requestResume! "

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsPause:Z

    iget-object v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mWaitEvent:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestStop()V
    .locals 1

    const-string v0, "MoviePlayer requestStop! "

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mIsStopRequested:Z

    iget-object p0, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->semp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    const-string p0, "MoviePlayer requestStop: semp.release() "

    invoke-static {p0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public seekTo(JI)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MoviePlayer seekTo: msec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seekMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekPosMS:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeeking:Z

    const/4 p2, 0x2

    if-nez p3, :cond_0

    iput p2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekMode:I

    goto :goto_0

    :cond_0
    if-ne p3, p2, :cond_1

    const/4 p2, 0x0

    iput p2, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mSeekMode:I

    :cond_1
    :goto_0
    return p1
.end method

.method public setLoopMode(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MoviePlayer setLoopMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/xiaomi/mediacodec/MoviePlayer;->mLoop:Z

    return-void
.end method
