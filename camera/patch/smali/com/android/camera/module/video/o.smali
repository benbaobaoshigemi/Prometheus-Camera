.class public final Lcom/android/camera/module/video/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj9/a$j;
.implements Lxm/t;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/VideoModule;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/location/Location;

.field public c:Landroid/util/Size;

.field public d:Lcom/android/camera/module/video/u;

.field public e:Lk7/i;

.field public f:Lj9/h0;

.field public g:LRh/r;

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:J

.field public l:I

.field public m:Lcom/android/camera/module/VideoModule$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSavingCancelled tag = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JpegPictureCallback"

    invoke-static {v0, p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "empty"

    iput-object p1, p0, Lcom/android/camera/module/video/o;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/video/o;->b()V

    iget-object p1, p0, Lcom/android/camera/module/video/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/VideoModule;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/module/video/o;->i:Z

    invoke-virtual {p1, p0}, Lcom/android/camera/module/VideoModule;->onLiveShotVideoTakenFinished(Z)V

    return-void

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "onSavingException video module is null "

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/video/o;->g:LRh/r;

    if-eqz v0, :cond_0

    iget-object v0, v0, LRh/r;->a:LRh/z;

    iget-object v0, v0, LRh/z;->i:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "saveImage mQuality = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/camera/module/video/o;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "JpegPictureCallback"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/video/o;->g:LRh/r;

    iget-object v0, v0, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ExifData;->getLivePhotoData()Lcom/xiaomi/camera/core/LivePhotoData;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/module/video/o;->i:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/LivePhotoData;->setLiveShotTask(Z)V

    iget-object v1, p0, Lcom/android/camera/module/video/o;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/LivePhotoData;->setVideoPath(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/camera/module/video/o;->k:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/core/LivePhotoData;->setCoverFrameTimestamp(J)V

    new-instance v0, Lk7/l;

    iget-object v1, p0, Lcom/android/camera/module/video/o;->g:LRh/r;

    invoke-direct {v0, v1}, Lk7/l;-><init>(LRh/r;)V

    iget-object v1, p0, Lcom/android/camera/module/video/o;->g:LRh/r;

    iget-object v1, v1, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    iget v2, p0, Lcom/android/camera/module/video/o;->l:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ExifData;->setQuality(I)V

    iget-object p0, p0, Lcom/android/camera/module/video/o;->e:Lk7/i;

    invoke-virtual {p0, v0}, Lk7/i;->s(Lk7/z;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "onSavingCancelled tag = "

    invoke-static {p1, v0}, LF1/j3;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "JpegPictureCallback"

    invoke-static {v2, p1, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "empty"

    iput-object p1, p0, Lcom/android/camera/module/video/o;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/video/o;->b()V

    iget-object p1, p0, Lcom/android/camera/module/video/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/VideoModule;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/module/video/o;->i:Z

    invoke-virtual {p1, p0}, Lcom/android/camera/module/VideoModule;->onLiveShotVideoTakenFinished(Z)V

    return-void

    :cond_0
    const-string p0, "onSavingCancelled video module is null "

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/String;JI)V
    .locals 3

    const-string p1, "onSavingCompleted videoPath = "

    const-string v0, ",quality = "

    const-string v1, ",timestamp = "

    invoke-static {p1, p2, p5, v0, v1}, LCs/Q;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "JpegPictureCallback"

    invoke-static {v2, p1, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/camera/module/video/o;->j:Ljava/lang/String;

    const-wide/16 p1, 0x0

    cmp-long v1, p3, p1

    if-gez v1, :cond_0

    move-wide p3, p1

    :cond_0
    iput-wide p3, p0, Lcom/android/camera/module/video/o;->k:J

    iput p5, p0, Lcom/android/camera/module/video/o;->l:I

    invoke-virtual {p0}, Lcom/android/camera/module/video/o;->b()V

    iget-object p1, p0, Lcom/android/camera/module/video/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/VideoModule;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/video/o;->i:Z

    invoke-virtual {p1, p0}, Lcom/android/camera/module/VideoModule;->onLiveShotVideoTakenFinished(Z)V

    return-void

    :cond_1
    const-string p0, "onSavingCompleted video module is null "

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onCaptureStart(LRh/r;Lj9/p0;)LRh/r;
    .locals 4

    iget-boolean p2, p0, Lcom/android/camera/module/video/o;->i:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, LRh/r;->a:LRh/z;

    iget-wide v0, p2, LRh/z;->f:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v2, p0, Lcom/android/camera/module/video/o;->m:Lcom/android/camera/module/VideoModule$f;

    invoke-virtual {v2, p0, p2}, Lcom/android/camera/module/VideoModule$f;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "onCaptureStart timeStamp is "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "JpegPictureCallback"

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/android/camera/module/video/o;->g:LRh/r;

    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/android/camera/module/video/o;->g:LRh/r;

    :cond_1
    return-object p1
.end method

.method public final onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 7

    const-string p2, "JpegPictureCallback"

    const-string v0, "onPictureTaken"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/video/o;->d:Lcom/android/camera/module/video/u;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/module/video/u;->g:Z

    if-eqz p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "storeImage mLivephotoCoverCreateTimestamp = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/camera/module/video/o;->k:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lrf/a;->c([B)Lrf/b;

    move-result-object v0

    sget-object v4, Lk7/d;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Lrf/b;->r()I

    move-result v0

    iget-object v4, p0, Lcom/android/camera/module/video/o;->f:Lj9/h0;

    iget-object v4, v4, Lj9/h0;->a:Lj9/i0;

    invoke-virtual {v4}, Lj9/i0;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/video/o;->g:LRh/r;

    if-nez v5, :cond_0

    new-instance v5, LRh/r;

    invoke-direct {v5}, LRh/r;-><init>()V

    iput-object v5, p0, Lcom/android/camera/module/video/o;->g:LRh/r;

    iget-object v5, v5, LRh/r;->a:LRh/z;

    iput-wide v2, v5, LRh/z;->g:J

    goto :goto_0

    :cond_0
    iget-object v4, v5, LRh/r;->k:LRh/A;

    iget-object v4, v4, LRh/A;->g:Ljava/lang/String;

    :goto_0
    iget-object v5, p0, Lcom/android/camera/module/video/o;->g:LRh/r;

    iget-object v5, v5, LRh/r;->b:LRh/a;

    const/4 v6, 0x4

    iput v6, v5, LRh/a;->f:I

    iget-boolean v5, p0, Lcom/android/camera/module/video/o;->i:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lav/j;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "MV"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, LF1/o3;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {v2, v3}, LF1/o3;->a(J)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/video/o;->g:LRh/r;

    iget-object v4, v3, LRh/r;->k:LRh/A;

    iput-object v2, v4, LRh/A;->j:Ljava/lang/String;

    invoke-virtual {v3, p1}, LRh/r;->r([B)V

    iget-object p1, p0, Lcom/android/camera/module/video/o;->g:LRh/r;

    iget-object v2, p1, LRh/r;->b:LRh/a;

    iget-boolean v3, p0, Lcom/android/camera/module/video/o;->h:Z

    iput-boolean v3, v2, LRh/a;->i:Z

    iget-object v2, p0, Lcom/android/camera/module/video/o;->b:Landroid/location/Location;

    iget-object p1, p1, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ExifData;->setLocation(Landroid/location/Location;)V

    iget-object p1, p0, Lcom/android/camera/module/video/o;->g:LRh/r;

    iget-object p1, p1, LRh/r;->a:LRh/z;

    iget-object v2, p0, Lcom/android/camera/module/video/o;->c:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    iput v3, p1, LRh/z;->a:I

    iget-object p1, p0, Lcom/android/camera/module/video/o;->g:LRh/r;

    iget-object p1, p1, LRh/r;->a:LRh/z;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, p1, LRh/z;->b:I

    iget-object p1, p0, Lcom/android/camera/module/video/o;->g:LRh/r;

    iget-object v2, p1, LRh/r;->a:LRh/z;

    iput v0, v2, LRh/z;->c:I

    const/4 v0, 0x1

    iget-object v2, p1, LRh/r;->k:LRh/A;

    iput-boolean v0, v2, LRh/A;->m:Z

    iget-object p1, p1, LRh/r;->b:LRh/a;

    const/4 v0, -0x1

    iput v0, p1, LRh/a;->k:I

    if-eqz v5, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/video/o;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "isLivephoto true, waiting for the video file to arrive"

    invoke-static {p2, p1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/video/o;->b()V

    :cond_4
    return-void
.end method
