.class public Lcom/xiaomi/ai/android/vad/Vad2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxg/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ai/android/vad/Vad2$a;
    }
.end annotation


# static fields
.field public static o:Z


# instance fields
.field public a:J

.field public b:J

.field public c:[I

.field public d:[B

.field public e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z


# direct methods
.method private native createTask(J)J
.end method

.method private native endDelay(JJ)I
.end method

.method private native hasVoice(JJ[BI[I)Z
.end method

.method private native newVad(IIII)J
.end method

.method private native releaseVad(J)Z
.end method

.method private native startDelay(JJ)I
.end method

.method private native stopTask(JJ[I)Z
.end method


# virtual methods
.method public final declared-synchronized a([B)Z
    .locals 7

    const-string v0, "checkVad: mAvailable="

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/ai/android/vad/Vad2;->n:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "Vad2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->n:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LDg/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    array-length v0, p1

    iget v1, p0, Lcom/xiaomi/ai/android/vad/Vad2;->e:I

    add-int v3, v0, v1

    new-array v4, v3, [B

    iget-object v5, p0, Lcom/xiaomi/ai/android/vad/Vad2;->d:[B

    invoke-static {v5, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/xiaomi/ai/android/vad/Vad2;->e:I

    invoke-static {p1, v2, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rem-int/lit16 p1, v3, 0x280

    iput p1, p0, Lcom/xiaomi/ai/android/vad/Vad2;->e:I

    const/16 p1, 0x280

    div-int/2addr v3, p1

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_3

    mul-int/lit16 v1, v0, 0x280

    iget-object v5, p0, Lcom/xiaomi/ai/android/vad/Vad2;->d:[B

    invoke-static {v4, v1, v5, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/xiaomi/ai/android/vad/Vad2;->d:[B

    invoke-virtual {p0, v1}, Lcom/xiaomi/ai/android/vad/Vad2;->b([B)Z

    move-result v1

    iget-boolean v5, p0, Lcom/xiaomi/ai/android/vad/Vad2;->f:Z

    const/4 v6, 0x1

    if-nez v5, :cond_1

    if-eqz v1, :cond_1

    iput-boolean v6, p0, Lcom/xiaomi/ai/android/vad/Vad2;->f:Z

    :cond_1
    iget-boolean v5, p0, Lcom/xiaomi/ai/android/vad/Vad2;->f:Z

    if-eqz v5, :cond_2

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lcom/xiaomi/ai/android/vad/Vad2;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v6

    :cond_2
    :try_start_2
    iput-boolean v1, p0, Lcom/xiaomi/ai/android/vad/Vad2;->f:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    mul-int/2addr v3, p1

    iget-object p1, p0, Lcom/xiaomi/ai/android/vad/Vad2;->d:[B

    iget v0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->e:I

    invoke-static {v4, v3, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b([B)Z
    .locals 3

    const-string v0, "hasVoice: mAvailable="

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/ai/android/vad/Vad2;->n:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "Vad2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->n:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LDg/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/ai/android/vad/Vad2;->c([B)Lcom/xiaomi/ai/android/vad/Vad2$a;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    iget-boolean v0, p1, Lcom/xiaomi/ai/android/vad/Vad2$a;->a:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->g:I

    iget v1, p1, Lcom/xiaomi/ai/android/vad/Vad2$a;->b:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->i:Z

    :cond_2
    iget p1, p1, Lcom/xiaomi/ai/android/vad/Vad2$a;->c:I

    iget v0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->h:I

    if-le p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->i:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/xiaomi/ai/android/vad/Vad2;->i:Z

    :cond_3
    iput v1, p0, Lcom/xiaomi/ai/android/vad/Vad2;->g:I

    iput p1, p0, Lcom/xiaomi/ai/android/vad/Vad2;->h:I

    iget-boolean p1, p0, Lcom/xiaomi/ai/android/vad/Vad2;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :cond_4
    monitor-exit p0

    return v2

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final c([B)Lcom/xiaomi/ai/android/vad/Vad2$a;
    .locals 12

    iget-boolean v0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "processTask: mAvailable="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->n:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Vad2"

    invoke-static {p1, p0}, LDg/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    if-eqz p1, :cond_2

    new-instance v0, Lcom/xiaomi/ai/android/vad/Vad2$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/ai/android/vad/Vad2$a;-><init>(Lcom/xiaomi/ai/android/vad/Vad2;)V

    iget-object v2, p0, Lcom/xiaomi/ai/android/vad/Vad2;->c:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    iget-wide v5, p0, Lcom/xiaomi/ai/android/vad/Vad2;->a:J

    iget-wide v7, p0, Lcom/xiaomi/ai/android/vad/Vad2;->b:J

    iget-object v11, p0, Lcom/xiaomi/ai/android/vad/Vad2;->c:[I

    const/16 v10, 0x280

    move-object v4, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v11}, Lcom/xiaomi/ai/android/vad/Vad2;->hasVoice(JJ[BI[I)Z

    move-result p0

    if-eqz p0, :cond_2

    aget p0, v2, v3

    const/4 p0, 0x1

    aget p1, v2, p0

    if-ne p1, p0, :cond_1

    move v3, p0

    :cond_1
    iput-boolean v3, v0, Lcom/xiaomi/ai/android/vad/Vad2$a;->a:Z

    const/4 p0, 0x2

    aget p0, v2, p0

    const/4 p0, 0x3

    aget p0, v2, p0

    iput p0, v0, Lcom/xiaomi/ai/android/vad/Vad2$a;->b:I

    const/4 p0, 0x4

    aget p0, v2, p0

    iput p0, v0, Lcom/xiaomi/ai/android/vad/Vad2$a;->c:I

    const/4 p0, 0x5

    aget p0, v2, p0

    const/4 p0, 0x6

    aget p0, v2, p0

    const/4 p0, 0x7

    aget p0, v2, p0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final d()V
    .locals 8

    iget-wide v1, p0, Lcom/xiaomi/ai/android/vad/Vad2;->a:J

    const-wide/16 v6, 0x0

    cmp-long v0, v1, v6

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/xiaomi/ai/android/vad/Vad2;->b:J

    cmp-long v0, v3, v6

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/xiaomi/ai/android/vad/Vad2;->c:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/ai/android/vad/Vad2;->stopTask(JJ[I)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/xiaomi/ai/android/vad/Vad2;->c:[I

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v1, 0x2

    aget v1, p0, v1

    const/4 v1, 0x3

    aget v1, p0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    const/4 v1, 0x5

    aget v1, p0, v1

    const/4 v1, 0x6

    aget v1, p0, v1

    const/4 v1, 0x7

    aget p0, p0, v1

    iput-wide v6, v0, Lcom/xiaomi/ai/android/vad/Vad2;->b:J

    return-void

    :cond_0
    move-object v0, p0

    :cond_1
    iput-wide v6, v0, Lcom/xiaomi/ai/android/vad/Vad2;->b:J

    return-void
.end method

.method public final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/ai/android/vad/Vad2;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final init()Z
    .locals 5

    sget-boolean v0, Lcom/xiaomi/ai/android/vad/Vad2;->o:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string/jumbo v0, "vad2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sput-boolean v1, Lcom/xiaomi/ai/android/vad/Vad2;->o:Z

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/ai/android/vad/Vad2;->release()V

    iget v0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->l:I

    iget v2, p0, Lcom/xiaomi/ai/android/vad/Vad2;->m:I

    iget v3, p0, Lcom/xiaomi/ai/android/vad/Vad2;->j:I

    iget v4, p0, Lcom/xiaomi/ai/android/vad/Vad2;->k:I

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/xiaomi/ai/android/vad/Vad2;->newVad(IIII)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/ai/android/vad/Vad2;->a:J

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/ai/android/vad/Vad2;->createTask(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/ai/android/vad/Vad2;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->f:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/xiaomi/ai/android/vad/Vad2;->g:I

    iput v1, p0, Lcom/xiaomi/ai/android/vad/Vad2;->h:I

    iput v0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->e:I

    iput-boolean v1, p0, Lcom/xiaomi/ai/android/vad/Vad2;->n:Z

    return v1
.end method

.method public final declared-synchronized release()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/ai/android/vad/Vad2;->d()V

    iget-wide v0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/ai/android/vad/Vad2;->releaseVad(J)Z

    iput-boolean v5, p0, Lcom/xiaomi/ai/android/vad/Vad2;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->g:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/ai/android/vad/Vad2;->h:I

    iput-wide v2, p0, Lcom/xiaomi/ai/android/vad/Vad2;->a:J

    iput v5, p0, Lcom/xiaomi/ai/android/vad/Vad2;->e:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/xiaomi/ai/android/vad/Vad2;->n:Z
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
