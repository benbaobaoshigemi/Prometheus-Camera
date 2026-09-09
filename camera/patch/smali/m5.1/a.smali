.class public final Lm5/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/a$a;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:Landroid/media/AudioRecord;

.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lm5/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lm5/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile e:Z

.field public f:D

.field public g:D

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# virtual methods
.method public final a(II)V
    .locals 10

    iget-object v0, p0, Lm5/a;->b:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    const-string v2, "PcmRecorder"

    if-eqz v0, :cond_0

    const-string v0, "[initRecord] recoder release first"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm5/a;->c()V

    :cond_0
    mul-int/2addr p2, p1

    div-int/lit16 p2, p2, 0x3e8

    mul-int/lit8 v0, p2, 0x40

    div-int/lit8 v0, v0, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-static {p1, v6, v7}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    if-ge v0, v9, :cond_1

    move v8, v9

    goto :goto_0

    :cond_1
    move v8, v0

    :goto_0
    new-instance v3, Landroid/media/AudioRecord;

    iget v4, p0, Lm5/a;->k:I

    move v5, p1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v3, p0, Lm5/a;->b:Landroid/media/AudioRecord;

    mul-int/lit8 p1, p2, 0x10

    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lm5/a;->a:[B

    const-string p1, "\nSampleRate:"

    const-string v0, "\nChannel:"

    const-string v3, "\nFormat:2\nFramePeriod:"

    invoke-static {v5, v6, p1, v0, v3}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\nBufferSize:"

    const-string v3, "\nMinBufferSize:"

    invoke-static {p1, p2, v0, v8, v3}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nActualBufferSize:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lm5/a;->a:[B

    array-length p2, p2

    const-string v0, "\n"

    invoke-static {p1, v0, p2}, LP/e;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lm5/a;->b:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const-string p0, "create AudioRecord error"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final b()I
    .locals 14

    iget-object v0, p0, Lm5/a;->b:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lm5/a;->c:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lm5/a;->a:[B

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v2, p0, Lm5/a;->a:[B

    if-eqz v2, :cond_19

    const/4 v3, 0x2

    if-gt v0, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    div-int/lit8 v3, v0, 0x2

    const-wide/16 v4, 0x0

    move v6, v1

    move-wide v7, v4

    :goto_0
    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_1

    aget-byte v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v2, v10

    mul-int/lit16 v10, v10, 0x100

    add-int/2addr v10, v9

    int-to-long v9, v10

    add-long/2addr v7, v9

    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_1
    int-to-long v10, v3

    div-long/2addr v7, v10

    :goto_1
    if-ge v1, v9, :cond_2

    aget-byte v3, v2, v1

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v2, v6

    mul-int/lit16 v6, v6, 0x100

    add-int/2addr v6, v3

    int-to-long v12, v6

    sub-long/2addr v12, v7

    long-to-int v3, v12

    int-to-long v12, v3

    mul-long/2addr v12, v12

    const/16 v3, 0x9

    shr-long/2addr v12, v3

    add-long/2addr v4, v12

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    div-long/2addr v4, v10

    const-wide/16 v1, 0x149

    cmp-long v1, v4, v1

    if-gez v1, :cond_3

    goto/16 :goto_2

    :cond_3
    const-wide/16 v1, 0x1a5

    cmp-long v1, v4, v1

    if-gez v1, :cond_4

    goto/16 :goto_2

    :cond_4
    const-wide/16 v1, 0x21f

    cmp-long v1, v4, v1

    if-gez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    const-wide/16 v1, 0x2b6

    cmp-long v1, v4, v1

    if-gez v1, :cond_6

    goto/16 :goto_2

    :cond_6
    const-wide/16 v1, 0x37f

    cmp-long v1, v4, v1

    if-gez v1, :cond_7

    goto/16 :goto_2

    :cond_7
    const-wide/16 v1, 0x47a

    cmp-long v1, v4, v1

    if-gez v1, :cond_8

    goto/16 :goto_2

    :cond_8
    const-wide/16 v1, 0x5c4

    cmp-long v1, v4, v1

    if-gez v1, :cond_9

    goto/16 :goto_2

    :cond_9
    const-wide/16 v1, 0x762

    cmp-long v1, v4, v1

    if-gez v1, :cond_a

    goto/16 :goto_2

    :cond_a
    const-wide/16 v1, 0x981

    cmp-long v1, v4, v1

    if-gez v1, :cond_b

    goto/16 :goto_2

    :cond_b
    const-wide/16 v1, 0xc2e

    cmp-long v1, v4, v1

    if-gez v1, :cond_c

    goto/16 :goto_2

    :cond_c
    const-wide/16 v1, 0xfab

    cmp-long v1, v4, v1

    if-gez v1, :cond_d

    goto :goto_2

    :cond_d
    const-wide/16 v1, 0x1416

    cmp-long v1, v4, v1

    if-gez v1, :cond_e

    goto :goto_2

    :cond_e
    const-wide/16 v1, 0x19d4

    cmp-long v1, v4, v1

    if-gez v1, :cond_f

    goto :goto_2

    :cond_f
    const-wide/16 v1, 0x211e

    cmp-long v1, v4, v1

    if-gez v1, :cond_10

    goto :goto_2

    :cond_10
    const-wide/16 v1, 0x2a94

    cmp-long v1, v4, v1

    if-gez v1, :cond_11

    goto :goto_2

    :cond_11
    const-wide/16 v1, 0x369e

    cmp-long v1, v4, v1

    if-gez v1, :cond_12

    goto :goto_2

    :cond_12
    const-wide/16 v1, 0x4630

    cmp-long v1, v4, v1

    if-gez v1, :cond_13

    goto :goto_2

    :cond_13
    const-wide/16 v1, 0x5a0e

    cmp-long v1, v4, v1

    if-gez v1, :cond_14

    goto :goto_2

    :cond_14
    const-wide/16 v1, 0x73b4

    cmp-long v1, v4, v1

    if-gez v1, :cond_15

    goto :goto_2

    :cond_15
    const-wide/32 v1, 0x947e

    cmp-long v1, v4, v1

    if-gez v1, :cond_16

    goto :goto_2

    :cond_16
    const-wide/32 v1, 0xbebc

    cmp-long v1, v4, v1

    if-gez v1, :cond_17

    goto :goto_2

    :cond_17
    const-wide/32 v1, 0xf4be

    cmp-long v1, v4, v1

    if-gez v1, :cond_18

    goto :goto_2

    :cond_18
    const-wide/32 v1, 0x13a6b

    cmp-long v1, v4, v1

    :cond_19
    :goto_2
    iget-object v1, p0, Lm5/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/a$a;

    if-eqz v1, :cond_1b

    iget-object p0, p0, Lm5/a;->a:[B

    invoke-interface {v1, v0, p0}, Lm5/a$a;->b(I[B)V

    return v0

    :cond_1a
    if-gez v0, :cond_1b

    const-string p0, "Record read data error: "

    invoke-static {v0, p0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PcmRecorder"

    invoke-static {v2, p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    return v0

    :cond_1c
    return v1
.end method

.method public final declared-synchronized c()V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm5/a;->b:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "PcmRecorder"

    const-string v3, "release: "

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lm5/a;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iput-object v1, p0, Lm5/a;->b:Landroid/media/AudioRecord;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lm5/a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm5/a$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lm5/a$a;->a()V

    :cond_1
    iput-object v1, p0, Lm5/a;->d:Ljava/lang/ref/WeakReference;

    :cond_2
    const-string v0, "PcmRecorder"

    const-string v1, "release record over"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
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

.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PcmRecorder"

    const-string v2, "[finalize] release recoder"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm5/a;->c()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final run()V
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "PcmRecorder"

    const/4 v3, 0x0

    move v0, v3

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v4, v1, Lm5/a;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    const-wide/16 v6, 0x28

    const/16 v8, 0xa

    if-nez v4, :cond_1

    :try_start_1
    iget v4, v1, Lm5/a;->h:I

    iget v9, v1, Lm5/a;->i:I

    invoke-virtual {v1, v4, v9}, Lm5/a;->a(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    add-int/2addr v0, v5

    if-ge v0, v8, :cond_0

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :cond_1
    :goto_1
    move v0, v3

    :goto_2
    iget-boolean v4, v1, Lm5/a;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v4, :cond_3

    :try_start_3
    iget-object v4, v1, Lm5/a;->b:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v4, v1, Lm5/a;->b:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v4

    const/4 v9, 0x3

    if-eq v4, v9, :cond_3

    const-string v4, "recorder state is not recoding"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v9}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    add-int/2addr v0, v5

    if-ge v0, v8, :cond_2

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    :cond_2
    const-string v0, "recoder start failed"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_3
    const-string v0, "recoder start success "

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lm5/a;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm5/a$a;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-interface {v0}, Lm5/a$a;->c()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v0, v5

    :goto_5
    iget-boolean v4, v1, Lm5/a;->e:Z

    if-nez v4, :cond_e

    invoke-virtual {v1}, Lm5/a;->b()I

    move-result v4

    if-eqz v0, :cond_b

    iget-wide v8, v1, Lm5/a;->f:D

    int-to-double v10, v4

    add-double/2addr v8, v10

    iput-wide v8, v1, Lm5/a;->f:D

    iget-wide v8, v1, Lm5/a;->g:D

    iget-object v10, v1, Lm5/a;->a:[B

    array-length v11, v10

    if-lez v11, :cond_8

    array-length v11, v10

    move v14, v3

    const-wide/16 v15, 0x0

    :goto_6
    if-ge v14, v11, :cond_6

    move/from16 v17, v5

    aget-byte v5, v10, v14

    const-wide/16 v18, 0x0

    int-to-double v12, v5

    add-double/2addr v15, v12

    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v17

    goto :goto_6

    :cond_6
    move/from16 v17, v5

    const-wide/16 v18, 0x0

    array-length v5, v10

    int-to-double v11, v5

    div-double/2addr v15, v11

    array-length v5, v10

    move v11, v3

    move-wide/from16 v12, v18

    :goto_7
    if-ge v11, v5, :cond_7

    aget-byte v14, v10, v11

    move/from16 v20, v4

    int-to-double v3, v14

    sub-double/2addr v3, v15

    move-wide/from16 v21, v6

    move v7, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v12, v3

    add-int/lit8 v11, v11, 0x1

    move v5, v7

    move/from16 v4, v20

    move-wide/from16 v6, v21

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    move/from16 v20, v4

    move-wide/from16 v21, v6

    array-length v3, v10

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    div-double/2addr v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    goto :goto_8

    :cond_8
    move/from16 v20, v4

    move/from16 v17, v5

    move-wide/from16 v21, v6

    const-wide/16 v18, 0x0

    move-wide/from16 v3, v18

    :goto_8
    add-double/2addr v8, v3

    iput-wide v8, v1, Lm5/a;->g:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v21

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_c

    iget-wide v3, v1, Lm5/a;->f:D

    cmpl-double v0, v3, v18

    if-eqz v0, :cond_a

    iget-wide v3, v1, Lm5/a;->g:D

    cmpl-double v0, v3, v18

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const-string v0, "cannot get record permission, get invalid audio data."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_b
    move/from16 v20, v4

    move/from16 v17, v5

    move-wide/from16 v21, v6

    :cond_c
    :goto_a
    iget-object v3, v1, Lm5/a;->a:[B

    array-length v3, v3

    move/from16 v4, v20

    if-le v3, v4, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current record read size is less than buffer size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, v1, Lm5/a;->j:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_d
    move/from16 v5, v17

    move-wide/from16 v6, v21

    const/4 v3, 0x0

    goto/16 :goto_5

    :goto_b
    const-string/jumbo v3, "run: "

    invoke-static {v3, v0}, LF1/o2;->c(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lm5/a;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm5/a$a;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lm5/a$a;->onError()V

    :cond_e
    :goto_c
    invoke-virtual {v1}, Lm5/a;->c()V

    return-void
.end method
