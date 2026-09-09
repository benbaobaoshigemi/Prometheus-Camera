.class public final Lk7/f;
.super Lk7/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/f$a;
    }
.end annotation


# instance fields
.field public p:Landroid/hardware/camera2/TotalCaptureResult;

.field public q:Landroid/media/ImageWriter;


# direct methods
.method public static a(Landroid/media/Image;Landroid/util/Size;)[B
    .locals 18

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    array-length v4, v2

    if-ge v4, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v7

    const/4 v8, 0x2

    if-ne v6, v7, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int/2addr v4, v2

    div-int/2addr v4, v8

    and-int/lit8 v2, v4, -0x4

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int/2addr v5, v4

    div-int/2addr v5, v8

    and-int/lit8 v4, v5, -0x4

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v6

    filled-new-array {v2, v4, v5, v6}, [I

    move-result-object v2

    sget-boolean v4, LQg/f;->a:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSubYuvImage: range = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, LF1/Q;->b([ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "ImageUtil"

    invoke-static {v6, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aget v7, v2, v8

    aget v9, v2, v0

    mul-int/2addr v7, v9

    mul-int/2addr v7, v0

    div-int/2addr v7, v8

    new-array v7, v7, [B

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    aget-object v10, v9, v3

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    aget-object v11, v9, v8

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    aget v12, v2, v1

    mul-int/2addr v12, v10

    aget v13, v2, v3

    add-int/2addr v12, v13

    aget-object v13, v9, v3

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    move/from16 v16, v0

    move v14, v3

    move v15, v14

    :goto_0
    aget v0, v2, v16

    if-ge v14, v0, :cond_1

    invoke-virtual {v13, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    aget v0, v2, v8

    invoke-virtual {v13, v7, v15, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v12, v10

    aget v0, v2, v8

    add-int/2addr v15, v0

    add-int/2addr v14, v1

    goto :goto_0

    :cond_1
    aget v0, v2, v1

    div-int/2addr v0, v8

    mul-int/2addr v0, v11

    aget v10, v2, v3

    add-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v10, v12}, [Ljava/lang/Object;

    move-result-object v10

    const-string v12, "getSubYuvImage: srcCursor = %d, dstCursor = %d"

    invoke-static {v6, v12, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    aget v10, v2, v16

    div-int/2addr v10, v8

    move v12, v3

    :goto_1
    if-ge v12, v10, :cond_3

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v13, v10, -0x1

    if-ne v12, v13, :cond_2

    aget v13, v2, v8

    invoke-virtual {v9}, Ljava/nio/Buffer;->remaining()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    const-string v14, "getSubYuvImage: length = "

    move/from16 v17, v1

    const-string/jumbo v1, "|"

    invoke-static {v13, v14, v1}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/nio/Buffer;->remaining()I

    move-result v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v6, v1, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9, v7, v15, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_2
    move/from16 v17, v1

    aget v1, v2, v8

    invoke-virtual {v9, v7, v15, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_2
    add-int/2addr v0, v11

    aget v1, v2, v8

    add-int/2addr v15, v1

    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v17

    goto :goto_1

    :cond_3
    invoke-static {v4, v5}, LI4/c;->b(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getSubYuvImage: cost %dms"

    invoke-static {v6, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7

    :cond_4
    move/from16 v16, v0

    mul-int v0, v4, v5

    mul-int/lit8 v1, v0, 0x3

    div-int/2addr v1, v8

    sub-int v6, v1, v0

    new-array v1, v1, [B

    aget-object v7, v2, v3

    invoke-static {v7, v4, v5}, Lk7/h;->a(Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    aget-object v2, v2, v8

    div-int/2addr v4, v8

    div-int/2addr v5, v8

    invoke-static {v2, v4, v5}, Lk7/h;->a(Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v1

    :cond_5
    :goto_3
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "HeifSaveRequest"

    const-string v2, "imageToBuffer: require 3 planes yuv image"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/media/Image;[BZLjava/lang/String;JILjava/lang/String;IILandroid/location/Location;I)Landroid/net/Uri;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v4, p4

    const-string/jumbo v3, "writeHeifFile: E.  "

    invoke-static {v3, v4}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "HeifSaveRequest"

    invoke-static {v7, v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    move-object v6, v3

    iget-object v3, v1, Lk7/b;->a:Landroid/app/Application;

    const-string v8, ".HEIC"

    invoke-static {v4, v8}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    move-object/from16 v10, p8

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    move v9, v5

    move-object v5, v8

    const-string v8, "image/heic"

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v16, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v22, v7

    move v2, v9

    move-wide/from16 v6, p5

    move/from16 v9, p7

    invoke-static/range {v3 .. v21}, Lk7/K;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JIILandroid/location/Location;ZZJIZ)Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "rw"

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v3

    move-object v3, v5

    move-object/from16 v11, v22

    goto :goto_0

    :catch_0
    const-string v5, "insert heif image uri failed on R"

    new-array v6, v2, [Ljava/lang/Object;

    move-object/from16 v11, v22

    invoke-static {v11, v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v12, v3

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v2, v5

    move-object v11, v7

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v6, p8

    move-object v7, v5

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    const-string/jumbo v13, "saveHeif: cost %dms"

    const-string/jumbo v14, "saveHeif exception: "

    const-string/jumbo v15, "saveHeif: no exif data"

    const-string v5, "HeifWriter.start cost "

    const-string v8, "HeifWriter.addExifData cost "

    const-string v9, "HeifWriter.stop cost "

    const-string v10, "HeifWriter.close cost "

    move/from16 v2, p9

    move-object/from16 v17, v9

    move/from16 v9, p10

    if-eq v2, v9, :cond_7

    move-object/from16 p7, v6

    iget-object v6, v1, Lk7/b;->m:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    :try_start_1
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v20, v5

    new-instance v5, Lom/g$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v21, v6

    const/4 v6, 0x0

    move-object/from16 v22, v10

    const/4 v10, 0x1

    move-object/from16 p8, v17

    move-object/from16 v17, v12

    move-object/from16 v12, p8

    move-object/from16 p11, v3

    move-object v3, v8

    move-object/from16 p8, v13

    move-object/from16 v13, v21

    move-object/from16 v4, v22

    move v8, v2

    move-object/from16 v2, v20

    :try_start_2
    invoke-direct/range {v5 .. v10}, Lom/g$a;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;III)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 p11, v3

    move-object/from16 v17, v12

    move-object/from16 p8, v13

    goto/16 :goto_4

    :cond_2
    move-object/from16 p8, v17

    move-object/from16 v17, v12

    move-object/from16 v12, p8

    move-object/from16 p11, v3

    move-object v2, v5

    move-object v3, v8

    move-object v4, v10

    move-object/from16 p8, v13

    move-object v13, v6

    new-instance v5, Lom/g$a;

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v5 .. v10}, Lom/g$a;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;III)V

    :goto_2
    iget-object v6, v1, Lk7/b;->d:LRh/r;

    iget-object v6, v6, LRh/r;->a:LRh/z;

    iget v6, v6, LRh/z;->d:I

    iput-object v13, v5, Lom/g$a;->j:Landroid/os/Handler;

    move/from16 v7, p12

    invoke-virtual {v5, v7}, Lom/g$a;->b(I)V

    invoke-virtual {v5, v6}, Lom/g$a;->c(I)V

    invoke-virtual {v5}, Lom/g$a;->a()Lom/g;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lom/i;->e(Z)V

    iget v6, v5, Lom/i;->a:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    iget-object v6, v5, Lom/i;->h:Lom/f;

    iget v8, v6, Lom/d;->j:I

    if-ne v8, v7, :cond_4

    iget-object v6, v6, Lom/d;->R:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v6, v8, v7}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object v6

    iput-object v6, v1, Lk7/f;->q:Landroid/media/ImageWriter;

    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lom/i;->o()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v18

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v11, v2, v6}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lk7/f;->q:Landroid/media/ImageWriter;

    invoke-virtual {v2, v0}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    if-eqz p2, :cond_3

    move-object/from16 v13, p2

    array-length v0, v13

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    array-length v0, v13

    invoke-virtual {v5, v0, v13}, Lom/i;->a(I[B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v11, v0, v2}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v11, v15, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v5}, Lom/i;->q()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v11, v0, v2}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v5}, Lom/i;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v11, v0, v2}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    goto :goto_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "getInputSurface is only allowed in surface input mode"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not valid in input mode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    :goto_5
    iget-object v0, v1, Lk7/f;->q:Landroid/media/ImageWriter;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    const/4 v6, 0x0

    iput-object v6, v1, Lk7/f;->q:Landroid/media/ImageWriter;

    :cond_6
    invoke-static/range {v18 .. v19}, LI4/c;->b(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v6, p8

    invoke-static {v11, v6, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto/16 :goto_d

    :cond_7
    move-object/from16 p11, v17

    move-object/from16 v17, v12

    move-object/from16 v12, p11

    move-object/from16 p11, v3

    move-object v2, v5

    move-object v3, v8

    move-object v4, v10

    move-object v5, v13

    move-object/from16 v13, p2

    iget-object v8, v1, Lk7/b;->d:LRh/r;

    invoke-virtual {v8}, LRh/r;->j()Landroid/util/Size;

    move-result-object v8

    iget-object v9, v1, Lk7/b;->m:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    :try_start_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v10, :cond_8

    move-object v10, v5

    :try_start_4
    new-instance v5, Lom/g$a;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v6, 0x0

    move-object/from16 v20, v10

    const/4 v10, 0x0

    move-object/from16 v22, v4

    move-object v4, v8

    move-object/from16 p7, v14

    move-object/from16 v23, v20

    move/from16 v8, p9

    move/from16 v14, p12

    move-object/from16 v20, v12

    move-object v12, v9

    move/from16 v9, p10

    :try_start_5
    invoke-direct/range {v5 .. v10}, Lom/g$a;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;III)V

    goto :goto_8

    :goto_6
    const/4 v6, 0x0

    goto/16 :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v23, v10

    :goto_7
    move-object/from16 p7, v14

    goto :goto_6

    :cond_8
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v4, v8

    move-object/from16 v20, v12

    move-object/from16 p7, v14

    move/from16 v14, p12

    move-object v12, v9

    new-instance v5, Lom/g$a;

    const/4 v7, 0x0

    const/4 v10, 0x0

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v5 .. v10}, Lom/g$a;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;III)V

    :goto_8
    iget-object v1, v1, Lk7/b;->d:LRh/r;

    iget-object v1, v1, LRh/r;->a:LRh/z;

    iget v1, v1, LRh/z;->d:I

    iput-object v12, v5, Lom/g$a;->j:Landroid/os/Handler;

    invoke-virtual {v5, v14}, Lom/g$a;->b(I)V

    invoke-virtual {v5, v1}, Lom/g$a;->c(I)V

    invoke-virtual {v5}, Lom/g$a;->a()Lom/g;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const/4 v6, 0x0

    :try_start_6
    invoke-virtual {v12, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lom/i;->o()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v18

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v11, v2, v5}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v0, v4}, Lk7/f;->a(Landroid/media/Image;Landroid/util/Size;)[B

    move-result-object v0

    const-string v2, "prepare buffer cost %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lom/i;->e(Z)V

    iget v2, v1, Lom/i;->a:I

    if-nez v2, :cond_d

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    iget-object v2, v1, Lom/i;->h:Lom/f;

    if-eqz v2, :cond_b

    iget v8, v2, Lom/d;->j:I

    if-nez v8, :cond_a

    if-eqz v0, :cond_9

    array-length v8, v0

    iget v9, v2, Lom/d;->k:I

    iget v10, v2, Lom/d;->l:I

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x3

    const/4 v10, 0x2

    div-int/2addr v9, v10

    if-ne v8, v9, :cond_9

    invoke-virtual {v2, v0}, Lom/d;->e([B)V

    goto :goto_9

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "addYuvBuffer is only allowed in buffer input mode"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_9
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    const-string v0, "HeifWriter.addYuvBuffer cost %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v13, :cond_c

    array-length v0, v13

    if-lez v0, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    array-length v0, v13

    invoke-virtual {v1, v0, v13}, Lom/i;->a(I[B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v11, v0, v2}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_b

    :cond_c
    const/4 v9, 0x0

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v11, v15, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lom/i;->q()V

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v12, v20

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v11, v0, v2}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lom/i;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v4, v22

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move v5, v7

    goto :goto_c

    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Not valid in input mode "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :catch_5
    move-exception v0

    goto/16 :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v23, v5

    goto/16 :goto_7

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, p7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    :goto_c
    invoke-static/range {v18 .. v19}, LI4/c;->b(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v10, v23

    invoke-static {v11, v10, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_d
    invoke-static/range {p11 .. p11}, Lxx/e;->a(Ljava/io/Closeable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "writeHeifFile: X.  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_e

    goto :goto_e

    :cond_e
    move-object v3, v6

    :goto_e
    return-object v3
.end method

.method public final getSize()I
    .locals 0

    iget p0, p0, Lk7/b;->h:I

    return p0
.end method

.method public final run()V
    .locals 36

    move-object/from16 v1, p0

    const-string v2, "HeifSaveRequest"

    iget-object v0, v1, Lk7/b;->d:LRh/r;

    iget-object v0, v0, LRh/r;->k:LRh/A;

    iget-object v3, v0, LRh/A;->g:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lav/j;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lk7/b;->d:LRh/r;

    iget-object v5, v0, LRh/r;->a:LRh/z;

    iget-wide v6, v5, LRh/z;->g:J

    iget-object v8, v0, LRh/r;->d:LRh/f;

    iget v13, v8, LRh/f;->g:I

    iget v8, v5, LRh/z;->d:I

    iget-object v0, v0, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ExifData;->getLocation()Landroid/location/Location;

    move-result-object v12

    iget-object v0, v1, Lk7/b;->d:LRh/r;

    iget-object v0, v0, LRh/r;->k:LRh/A;

    iget v5, v0, LRh/A;->f:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v3, v0, v9}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v9, "save: E. path=%s quality=%d jpegRotation=%d"

    invoke-static {v2, v9, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v0, v1, Lk7/f;->p:Landroid/hardware/camera2/TotalCaptureResult;

    iget v11, v1, Lk7/b;->i:I

    iget v14, v1, Lk7/b;->j:I

    sget-object v15, Lrf/a;->a:Ljava/nio/charset/Charset;

    new-instance v15, Lrf/b;

    invoke-direct {v15}, Lrf/b;-><init>()V

    move/from16 v16, v5

    const/16 v5, 0xc

    iput v5, v15, Lrf/b;->d:I

    if-eqz v0, :cond_0

    invoke-static {v15}, Lk7/d;->g(Lrf/b;)Lk7/d$a;

    move-result-object v5

    invoke-virtual {v5, v8, v11, v14}, Lk7/d$a;->b(III)V

    iput-wide v6, v5, Lk7/d$a;->c:J

    iput-object v12, v5, Lk7/d$a;->j:Landroid/location/Location;

    move-wide/from16 v17, v6

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lk7/d$a;->d:J

    invoke-virtual {v5, v0}, Lk7/d$a;->a(Landroid/hardware/camera2/CaptureResult;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v5, Lk7/d$a;->o:Ljava/lang/Boolean;

    iput-object v6, v5, Lk7/d$a;->p:Ljava/lang/Boolean;

    invoke-virtual {v5}, Lk7/d$a;->c()Lrf/b;

    goto :goto_0

    :cond_0
    move-wide/from16 v17, v6

    :goto_0
    invoke-static {v15}, Lrf/a;->f(Lrf/b;)[B

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "prepare exif cost "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10, v5}, LF1/q2;->b(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    new-array v6, v14, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LBw/i;->u()LF2/d;

    move-result-object v5

    iget-object v5, v5, LF2/d;->a:LF2/b;

    invoke-virtual {v5, v3}, LF2/b;->f(Ljava/lang/String;)LE2/a;

    move-result-object v15

    const-string/jumbo v5, "saveHeifInfo: E. update "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v14, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v5, "|"

    if-eqz v15, :cond_1

    invoke-virtual {v15}, LE2/a;->b()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move-object v6, v15

    move-object v15, v2

    move-object v2, v6

    move-object v9, v3

    move-object v11, v4

    move-object v14, v5

    move-wide/from16 v6, v17

    move-object v3, v0

    goto/16 :goto_7

    :cond_2
    sget-object v6, Lk7/K;->a:Ljava/lang/String;

    const-string v6, ".tmp"

    const-string v7, ".HEIC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lk7/K;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v10, v15, LE2/a;->c:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v19, v0

    iget-object v0, v1, Lk7/b;->a:Landroid/app/Application;

    invoke-static {v0, v3, v14}, Lk7/K;->i(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    move-object v11, v4

    invoke-static {v3}, Lk7/K;->G(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v20, v2

    iget-object v2, v1, Lk7/b;->g:Landroid/media/Image;

    move-object/from16 v21, v10

    iget v10, v1, Lk7/b;->i:I

    move-object/from16 v22, v11

    iget v11, v1, Lk7/b;->j:I

    move-object/from16 v32, v5

    move-object v5, v6

    move-object/from16 v33, v7

    move/from16 v30, v14

    move-object/from16 v31, v15

    move-wide/from16 v6, v17

    move-object/from16 v15, v20

    move-object/from16 v34, v21

    move-object/from16 v35, v22

    move-object v14, v3

    move-object/from16 v3, v19

    invoke-virtual/range {v1 .. v13}, Lk7/f;->b(Landroid/media/Image;[BZLjava/lang/String;JILjava/lang/String;IILandroid/location/Location;I)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_8

    :try_start_0
    invoke-static {v9, v14}, Lu7/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "renameFile failed"

    invoke-static {v15, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, v1, Lk7/b;->a:Landroid/app/Application;

    iget v3, v1, Lk7/b;->i:I

    iget v4, v1, Lk7/b;->j:I

    const-string/jumbo v5, "updateHeifInfo create new uri "

    const-string/jumbo v6, "updateHeifInfo update uri "

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v17

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v14}, Lk7/K;->G(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "is_pending"

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_3
    const-string v9, "_data"

    invoke-virtual {v7, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v9, "title"

    move-object/from16 v11, v35

    invoke-virtual {v7, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v33

    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_display_name"

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "mime_type"

    const-string v10, "image/heic"

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "orientation"

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "_size"

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v9, "width"

    invoke-virtual {v7, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "height"

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "relative_path"

    const-string v4, "DCIM/Camera/"

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "latitude"

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {v12}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "longitude"

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_4
    sget-object v3, Lk7/o;->c:Lk7/o;

    const-string v4, "datetaken"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    move-object/from16 v9, v34

    invoke-virtual {v3, v0, v9, v4}, Lk7/o;->c(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const-string v10, "Storage"

    if-eqz v4, :cond_5

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-lez v19, :cond_5

    invoke-virtual {v3, v0, v9, v7}, Lk7/o;->f(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", ret->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v5, v30

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v10, v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    invoke-static {v0, v14, v6}, Lk7/K;->i(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v0, v9, v7}, Lk7/o;->b(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v10, v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    const/16 v27, 0x0

    const-wide/16 v21, 0x0

    const/16 v26, 0x0

    const-wide/16 v19, -0x1

    move-object/from16 v23, v0

    move-object/from16 v24, v12

    move-object/from16 v25, v14

    invoke-static/range {v16 .. v27}, Lk7/K;->A(IJJJLandroid/content/Context;Landroid/location/Location;Ljava/lang/String;ZZ)V

    move-object/from16 v9, v25

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveHeifInfo: X. update "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v15, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :goto_4
    if-eqz v4, :cond_7

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    throw v1

    :cond_8
    move-object v9, v14

    const-string v2, "failed to save heif: "

    invoke-static {v2, v9}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v15, v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_6
    iget-object v0, v1, Lk7/b;->a:Landroid/app/Application;

    move-object/from16 v2, v31

    invoke-static {v0, v2}, LH2/a;->c(Landroid/content/Context;LE2/a;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v9, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "save: X. path=%s quality=%d jpegRotation=%d"

    invoke-static {v15, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :goto_7
    invoke-static {v9}, Lk7/K;->G(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v31, v2

    iget-object v2, v1, Lk7/b;->g:Landroid/media/Image;

    iget v10, v1, Lk7/b;->i:I

    move-object/from16 v35, v11

    iget v11, v1, Lk7/b;->j:I

    move-object/from16 v32, v14

    move-object/from16 v14, v31

    move-object/from16 v5, v35

    invoke-virtual/range {v1 .. v13}, Lk7/f;->b(Landroid/media/Image;[BZLjava/lang/String;JILjava/lang/String;IILandroid/location/Location;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v2, v1, Lk7/b;->d:LRh/r;

    iget-object v2, v2, LRh/r;->b:LRh/a;

    iget-boolean v2, v2, LRh/a;->i:Z

    if-eqz v2, :cond_a

    iget-object v2, v1, Lk7/b;->a:Landroid/app/Application;

    invoke-static {v2, v0}, LF1/w4;->e(Landroid/content/Context;Landroid/net/Uri;)LF1/w4;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v3, v1, Lk7/b;->b:Lk7/i;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lk7/i;->m(LF1/w4;Z)V

    goto :goto_8

    :cond_9
    iget-object v2, v1, Lk7/b;->b:Lk7/i;

    invoke-virtual {v2}, Lk7/i;->k()V

    :cond_a
    :goto_8
    iget-object v4, v1, Lk7/b;->b:Lk7/i;

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    move-object v5, v0

    move-object/from16 v7, v35

    invoke-virtual/range {v4 .. v9}, Lk7/i;->o(Landroid/net/Uri;ZLjava/lang/String;IZ)V

    move-object v11, v7

    if-eqz v14, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "algo mark: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v15, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v14, LE2/a;->c:Ljava/lang/Long;

    iget-object v0, v1, Lk7/b;->a:Landroid/app/Application;

    invoke-static {v0, v14}, LH2/a;->c(Landroid/content/Context;LE2/a;)V

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveHeifInfo: X. added "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v15, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_9
    iget-object v0, v1, Lk7/b;->o:LO4/h;

    iget-object v2, v1, Lk7/b;->g:Landroid/media/Image;

    iget-object v3, v1, Lk7/b;->d:LRh/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    iget-object v0, v0, LO4/h;->a:Ljava/lang/Object;

    check-cast v0, Lwp/l;

    iget-object v4, v0, Lwp/l;->A:Lwp/l$c;

    invoke-virtual {v4, v2}, Lwp/l$c;->b(Landroid/media/Image;)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    iget-object v2, v3, LRh/r;->g:LRh/s;

    iget-object v2, v2, LRh/s;->i:Landroid/media/Image;

    invoke-static {v0, v2}, Lwp/l;->b(Lwp/l;Landroid/media/Image;)V

    invoke-virtual {v3}, LRh/r;->s()V

    invoke-static {v0, v3}, Lwp/l;->d(Lwp/l;LRh/r;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lwp/l;->g:Lwp/g$a;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v3}, Lwp/g$a;->a(LRh/r;)V

    :cond_d
    iget-object v2, v3, LRh/r;->a:LRh/z;

    iget-wide v2, v2, LRh/z;->f:J

    invoke-virtual {v0, v2, v3}, Lwp/l;->y(J)LRh/r;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "[HEIF] onSaveFinish: parallelTaskHashMap remove "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PostProcessor"

    invoke-static {v2, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lk7/b;->d:LRh/r;

    iget-object v0, v0, LRh/r;->a:LRh/z;

    iget-wide v2, v0, LRh/z;->f:J

    const-string v0, "image save onFinish"

    invoke-static {v15, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "algo_capture_total_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lk7/b;->d:LRh/r;

    iget-object v5, v5, LRh/r;->a:LRh/z;

    iget-wide v5, v5, LRh/z;->h:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, LF6/q;->g(Ljava/lang/String;)J

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "algo_image_save_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LF6/q;->g(Ljava/lang/String;)J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "shot_2_view_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lk7/b;->d:LRh/r;

    iget-object v3, v3, LRh/r;->a:LRh/z;

    iget-wide v3, v3, LRh/z;->h:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v1, Lk7/b;->d:LRh/r;

    iget-object v5, v5, LRh/r;->a:LRh/z;

    iget-wide v5, v5, LRh/z;->h:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4, v2}, LF6/q;->f(JLjava/lang/String;)J

    move-result-wide v3

    invoke-static {}, LF6/q;->d()Z

    move-result v5

    if-eqz v5, :cond_e

    const-wide/16 v28, 0x0

    cmp-long v5, v3, v28

    if-lez v5, :cond_e

    invoke-virtual {v0, v3, v4, v2}, LF6/q;->p(JLjava/lang/String;)V

    :cond_e
    const/4 v0, 0x0

    iput-object v0, v1, Lk7/b;->g:Landroid/media/Image;

    iput-object v0, v1, Lk7/b;->d:LRh/r;

    iput-object v0, v1, Lk7/b;->o:LO4/h;

    iput-object v0, v1, Lk7/f;->p:Landroid/hardware/camera2/TotalCaptureResult;

    iput-object v0, v1, Lk7/b;->m:Landroid/os/Handler;

    iget-object v0, v1, Lk7/b;->b:Lk7/i;

    iget v1, v1, Lk7/b;->h:I

    invoke-virtual {v0, v1}, Lk7/i;->p(I)V

    return-void
.end method
