.class public final Lk7/P;
.super Lk7/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/P$a;,
        Lk7/P$b;
    }
.end annotation


# instance fields
.field public I:Lk7/P$b;

.field public J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/jcodec/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:Landroid/content/ContentValues;

.field public r:Z

.field public s:Z

.field public t:I


# direct methods
.method public static b(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "VideoSaveRequest"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {p0}, Lvr/z;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo v0, "validatePath: unsecure path - "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    const-string/jumbo p0, "validatePath: path is null!"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method


# virtual methods
.method public final a()V
    .locals 49
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v2

    const-string v3, "recording_save"

    invoke-virtual {v2, v3}, LF6/q;->q(Ljava/lang/String;)V

    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object v0

    const/16 v4, 0x1388

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, LRh/c;->b(II)J

    move-result-wide v6

    iget-object v0, v1, Lk7/P;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lk7/b;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, v1, Lk7/b;->c:Landroid/net/Uri;

    invoke-static {v0, v4}, Lo7/a;->l(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lk7/P;->p:Ljava/lang/String;

    :cond_0
    iget-object v9, v1, Lk7/P;->p:Ljava/lang/String;

    const-string/jumbo v0, "save video: start, path -> "

    const-string v4, ", uri -> "

    invoke-static {v0, v9, v4}, LP/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lk7/b;->c:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    const-string v15, "VideoSaveRequest"

    invoke-static {v15, v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v9}, Lk7/P;->b(Ljava/lang/String;)Z

    move-result v0

    iget-object v8, v1, Lk7/P;->I:Lk7/P$b;

    if-nez v0, :cond_2

    if-eqz v8, :cond_1

    check-cast v8, Lcom/android/camera/module/VideoModule$d;

    invoke-virtual {v8}, Lcom/android/camera/module/VideoModule$d;->b()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, v1, Lk7/b;->b:Lk7/i;

    iget-boolean v10, v1, Lk7/P;->r:Z

    invoke-virtual {v0, v10}, Lk7/i;->d(Z)Z

    move-result v10

    new-array v11, v5, [Landroid/graphics/Bitmap;

    iget-object v12, v1, Lk7/P;->q:Landroid/content/ContentValues;

    const-string/jumbo v13, "save_cover"

    const-string v14, "custom_video_cover"

    const-wide/16 v16, 0x0

    if-eqz v10, :cond_f

    iget-object v0, v1, Lk7/P;->J:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lk7/P;->J:Ljava/util/List;

    :cond_3
    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_4
    move-object/from16 v18, v0

    if-eqz v5, :cond_6

    array-length v0, v5

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    array-length v0, v5

    invoke-static {v5, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v11, v4

    move-object/from16 v21, v2

    move-object v0, v5

    move-wide/from16 v23, v6

    move-object v4, v8

    move v5, v10

    move-object/from16 v22, v11

    move-object v6, v12

    move-object v7, v13

    move-object v2, v14

    move-wide/from16 v10, v16

    goto/16 :goto_10

    :cond_6
    :goto_0
    iget-object v0, v1, Lk7/b;->c:Landroid/net/Uri;

    invoke-static {v0, v9}, Lu7/b;->b(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v19

    invoke-static {v9}, Lcom/android/camera/jcodec/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v11, v4

    if-eqz v0, :cond_7

    const/16 v20, 0x1

    goto :goto_1

    :cond_7
    move/from16 v20, v4

    :goto_1
    if-nez v20, :cond_c

    :try_start_0
    new-instance v21, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v21 .. v21}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v12}, Lvr/Q;->e(Landroid/content/ContentValues;)Landroid/util/Size;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez v0, :cond_8

    move/from16 v28, v4

    move-object/from16 v29, v5

    :goto_2
    move-wide/from16 v23, v6

    move-object v4, v8

    move v5, v10

    move-object/from16 v22, v11

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v8, v21

    move-object/from16 v21, v2

    move-object v2, v14

    goto/16 :goto_4

    :cond_8
    :try_start_2
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v22

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move/from16 v28, v4

    mul-int v4, v23, v22

    move-object/from16 v22, v0

    const v0, 0x1fa400

    if-le v4, v0, :cond_9

    :try_start_3
    new-instance v0, Landroid/util/Size;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v4, 0x780

    move-object/from16 v29, v5

    const/16 v5, 0x438

    :try_start_4
    invoke-direct {v0, v4, v5}, Landroid/util/Size;-><init>(II)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_9
    move-object/from16 v29, v5

    move-object/from16 v0, v22

    :goto_3
    if-eqz v19, :cond_a

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v26

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v27

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v21 .. v27}, LF1/w4;->f(Landroid/media/MediaMetadataRetriever;Ljava/lang/String;Ljava/io/FileDescriptor;Landroid/app/Application;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v11, v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_a
    move-object v4, v13

    :try_start_5
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move v5, v10

    const/4 v10, 0x0

    move-object/from16 v22, v11

    const/4 v11, 0x0

    move-object/from16 v23, v12

    const/4 v12, 0x0

    move-wide/from16 v47, v6

    move-object/from16 v6, v23

    move-wide/from16 v23, v47

    move-object v7, v4

    move-object v4, v8

    move-object/from16 v8, v21

    move-object/from16 v21, v2

    move-object v2, v14

    move v14, v0

    :try_start_6
    invoke-static/range {v8 .. v14}, LF1/w4;->f(Landroid/media/MediaMetadataRetriever;Ljava/lang/String;Ljava/io/FileDescriptor;Landroid/app/Application;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v22, v28

    :goto_4
    const/16 v0, 0x9

    invoke-virtual {v8, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    :goto_5
    move-object v10, v0

    goto :goto_a

    :cond_b
    move-wide/from16 v10, v16

    :goto_6
    :try_start_7
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :catchall_3
    move-exception v0

    move-wide/from16 v23, v6

    move v5, v10

    move-object/from16 v22, v11

    move-object v6, v12

    move-object v7, v4

    move-object v4, v8

    goto :goto_9

    :catchall_4
    move-exception v0

    move/from16 v28, v4

    :goto_7
    move-object/from16 v29, v5

    :goto_8
    move-wide/from16 v23, v6

    move-object v4, v8

    move v5, v10

    move-object/from16 v22, v11

    move-object v6, v12

    move-object v7, v13

    goto :goto_9

    :catchall_5
    move-exception v0

    move/from16 v28, v4

    move-object/from16 v29, v5

    move-wide/from16 v23, v6

    move-object v4, v8

    move v5, v10

    move-object/from16 v22, v11

    move-object v6, v12

    move-object v7, v13

    :goto_9
    move-object/from16 v8, v21

    move-object/from16 v21, v2

    move-object v2, v14

    goto :goto_5

    :goto_a
    :try_start_8
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception v0

    :try_start_9
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v0

    :goto_c
    move-wide/from16 v10, v16

    goto :goto_d

    :catch_2
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v28, v4

    move-object/from16 v29, v5

    move-wide/from16 v23, v6

    move-object v4, v8

    move v5, v10

    move-object/from16 v22, v11

    move-object v6, v12

    move-object v7, v13

    move-object v2, v14

    goto :goto_c

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_c
    move-object/from16 v21, v2

    move/from16 v28, v4

    move-object/from16 v29, v5

    move-wide/from16 v23, v6

    move-object v4, v8

    move v5, v10

    move-object/from16 v22, v11

    move-object v6, v12

    move-object v7, v13

    move-object v2, v14

    move-wide/from16 v10, v16

    :goto_e
    if-nez v20, :cond_d

    aget-object v0, v22, v28

    if-eqz v0, :cond_d

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    aget-object v0, v22, v28

    const-string v8, "green"

    invoke-static {v0, v8}, LQg/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "get video cover form video file."

    move/from16 v8, v28

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v15, v0, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aget-object v0, v22, v8

    const-string v8, "<this>"

    invoke-static {v0, v8}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x64

    invoke-static {v8, v0}, Lvr/j;->g(ILandroid/graphics/Bitmap;)[B

    move-result-object v0

    move-object/from16 v29, v0

    :cond_d
    if-nez v19, :cond_e

    goto :goto_f

    :cond_e
    :try_start_a
    invoke-interface/range {v19 .. v19}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :catch_3
    :goto_f
    move-object/from16 v0, v29

    :goto_10
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_10

    if-eqz v0, :cond_10

    array-length v8, v0

    if-eqz v8, :cond_10

    iget-object v8, v1, Lk7/P;->J:Ljava/util/List;

    new-instance v12, Lcom/android/camera/jcodec/b$a;

    invoke-static {}, Lcom/android/camera/jcodec/MCoverBox;->fourcc()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v14, v13, v0}, Lcom/android/camera/jcodec/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_f
    move-object/from16 v21, v2

    move-wide/from16 v23, v6

    move-object v4, v8

    move v5, v10

    move-object/from16 v22, v11

    move-object v6, v12

    move-object v7, v13

    move-object v2, v14

    move-wide/from16 v10, v16

    :cond_10
    :goto_11
    cmp-long v0, v10, v16

    if-nez v0, :cond_11

    const-string v0, "filePath"

    invoke-static {v9, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LV9/g5;

    const/4 v8, 0x1

    invoke-direct {v0, v9, v8}, LV9/g5;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lvr/Q;->d(Lev/l;)J

    move-result-wide v10

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "save video: mVideoSaveCallback -> "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", duration -> "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v15, v0, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_12

    cmp-long v0, v10, v16

    if-nez v0, :cond_12

    move-object v8, v4

    check-cast v8, Lcom/android/camera/module/VideoModule$d;

    invoke-virtual {v8}, Lcom/android/camera/module/VideoModule$d;->a()V

    move-object/from16 v18, v4

    :goto_12
    move-object/from16 v2, v21

    goto/16 :goto_23

    :cond_12
    iget-object v0, v1, Lk7/P;->J:Ljava/util/List;

    sget-object v8, Lcom/android/camera/jcodec/b;->a:Ljava/lang/String;

    const/4 v8, 0x0

    new-array v12, v8, [Ljava/lang/Object;

    const-string v8, "MP4UtilEx"

    const-string/jumbo v13, "writeTags E"

    invoke-static {v8, v13, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_13

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_13

    cmp-long v14, v10, v16

    if-nez v14, :cond_14

    :cond_13
    move-object/from16 v18, v4

    move-wide/from16 v33, v10

    const/4 v10, 0x0

    goto :goto_14

    :cond_14
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v4

    const-string v4, "mCurrentVideoFilename: "

    invoke-static {v4, v9}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v33, v10

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v8, v4, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_15

    const-string v0, "file is not exists"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_15
    :try_start_b
    new-instance v4, Lcom/android/camera/jcodec/a;

    invoke-direct {v4, v0}, Lcom/android/camera/jcodec/a;-><init>(Ljava/util/List;)V

    invoke-static {v14, v4}, LPz/e;->a(Ljava/io/File;LPz/b;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_13

    :catch_4
    move-exception v0

    invoke-static {v8, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "writeTags X , duration = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13, v0}, LF1/q2;->b(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :goto_14
    const-string v0, " video file is illegal"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_15
    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "duration"

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "is_pending"

    const-string v2, "addVideoToMediaStore: insert video cost: "

    const-string/jumbo v4, "save path != record path, insert it, result uri = "

    const-string v7, "insert before, save path == record path, result uri = "

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "_size"

    const-string v13, "datetaken"

    const-string v14, "failed to add video to media store"

    const-string v10, "ms"

    move/from16 v19, v8

    const-string v8, "Current video URI: "

    if-eqz v19, :cond_16

    const-string v0, "empty videoPath"

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v15, v0, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lk7/b;->c:Landroid/net/Uri;

    move-object/from16 v19, v3

    move/from16 v20, v5

    goto/16 :goto_1a

    :cond_16
    move-object/from16 v19, v3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    const-string v3, "relative_path"
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move/from16 v20, v5

    :try_start_d
    const-string v5, "DCIM/Camera/"

    invoke-virtual {v6, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    const-string v5, "_data"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, v1, Lk7/b;->c:Landroid/net/Uri;

    if-eqz v5, :cond_17

    invoke-virtual {v3, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, v1, Lk7/b;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, v1, Lk7/b;->c:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v3, v1, Lk7/b;->c:Landroid/net/Uri;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v15, v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_17

    :catchall_7
    move-exception v0

    move-object v5, v3

    const/4 v4, 0x0

    goto/16 :goto_24

    :catch_5
    move-exception v0

    goto :goto_19

    :catchall_8
    move-exception v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_24

    :catch_6
    move-exception v0

    :goto_16
    const/4 v3, 0x0

    goto :goto_19

    :cond_17
    :try_start_f
    iget-object v0, v1, Lk7/b;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v1, Lk7/b;->a:Landroid/app/Application;

    const/4 v5, 0x1

    invoke-static {v3, v9, v5}, Lk7/K;->i(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :try_start_10
    iput-object v3, v1, Lk7/b;->c:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v15, v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_17
    iget-object v0, v1, Lk7/b;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v25

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v15, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    invoke-static {v3, v8}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v15, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_18
    move-object v0, v3

    goto :goto_1a

    :catch_7
    move-exception v0

    move/from16 v20, v5

    goto :goto_16

    :goto_19
    :try_start_11
    invoke-static {v15, v14, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    invoke-static {v3, v8}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v15, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    :goto_1a
    iput-object v0, v1, Lk7/b;->c:Landroid/net/Uri;

    iget-object v0, v1, Lk7/b;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, v1, Lk7/b;->c:Landroid/net/Uri;

    invoke-static {v0, v2}, Lo7/a;->l(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk7/P;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string/jumbo v2, "save video: query update, path -> "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v15, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v9, v0

    goto :goto_1b

    :cond_18
    const/4 v4, 0x0

    :goto_1b
    iget-object v0, v1, Lk7/b;->c:Landroid/net/Uri;

    if-nez v0, :cond_19

    const-string v0, "insert MediaProvider failed, attempt to find uri by path, "

    invoke-static {v0, v9}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v15, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lk7/b;->a:Landroid/app/Application;

    invoke-static {v0, v9}, Lk7/p;->a(Landroid/app/Application;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lk7/b;->c:Landroid/net/Uri;

    if-eqz v0, :cond_19

    const-string v0, "insert MediaProvider failed, need update mContentValues by Uri"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v15, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lk7/b;->c:Landroid/net/Uri;

    const-string/jumbo v0, "updateVideoToMediaStore: insert video cost: "

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v1, Lk7/b;->a:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v6, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v5, v1, Lk7/b;->a:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v3

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v15, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    invoke-static {v2, v8}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v15, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    :catchall_9
    move-exception v0

    const/4 v4, 0x0

    goto :goto_1c

    :catch_8
    move-exception v0

    :try_start_13
    invoke-static {v15, v14, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    invoke-static {v2, v8}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v15, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    :goto_1c
    invoke-static {v2, v8}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v15, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_19
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "save video: media has been stored, Uri: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lk7/b;->c:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", has thumbnail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lk7/b;->c:Landroid/net/Uri;

    if-eqz v0, :cond_1f

    invoke-static {v9}, Lk7/K;->u(Ljava/lang/String;)Z

    move-result v0

    sget-object v2, Lk7/K;->a:Ljava/lang/String;

    sget-object v3, Lk7/K;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v0, :cond_1a

    if-eqz v2, :cond_1a

    const-string/jumbo v0, "save video: sd card was ejected"

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v15, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_22

    :cond_1a
    const/4 v4, 0x0

    iget-boolean v0, v1, Lk7/P;->s:Z

    if-nez v0, :cond_1c

    aget-object v2, v22, v4

    if-eqz v2, :cond_1c

    iget-object v3, v1, Lk7/b;->c:Landroid/net/Uri;

    invoke-static {v3, v2, v4, v4}, LF1/w4;->c(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)LF1/w4;

    move-result-object v2

    invoke-virtual {v6, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_1b

    :goto_1e
    move-wide/from16 v3, v16

    goto :goto_1f

    :cond_1b
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_1e

    :goto_1f
    invoke-virtual {v2, v3, v4}, LF1/w4;->t(J)V

    const/4 v5, 0x1

    iput-boolean v5, v2, LF1/w4;->h:Z

    iget-object v3, v1, Lk7/b;->b:Lk7/i;

    invoke-virtual {v3, v2, v5}, Lk7/i;->m(LF1/w4;Z)V

    iget-object v3, v1, Lk7/P;->J:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lk7/O;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v35

    new-instance v29, Lm7/h;

    iget-object v3, v1, Lk7/b;->c:Landroid/net/Uri;

    iget-object v2, v2, LF1/w4;->b:Landroid/graphics/Bitmap;

    move-object/from16 v31, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v9

    invoke-direct/range {v29 .. v35}, Lm7/h;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/String;JZ)V

    move-object/from16 v2, v29

    iget-object v3, v1, Lk7/b;->b:Lk7/i;

    invoke-virtual {v3, v2}, Lk7/i;->n(Lm7/e;)V

    goto :goto_20

    :cond_1c
    move-object/from16 v32, v9

    iget-object v2, v1, Lk7/b;->b:Lk7/i;

    invoke-virtual {v2}, Lk7/i;->k()V

    :goto_20
    if-eqz v0, :cond_1d

    iget-object v0, v1, Lk7/b;->b:Lk7/i;

    iget-object v0, v0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk7/i$a;

    if-eqz v0, :cond_1d

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Lk7/i$a;->d(Z)V

    :cond_1d
    const-string/jumbo v0, "title"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v7, v1, Lk7/b;->b:Lk7/i;

    iget-object v8, v1, Lk7/b;->c:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v7 .. v12}, Lk7/i;->o(Landroid/net/Uri;ZLjava/lang/String;IZ)V

    iget-object v0, v1, Lk7/b;->a:Landroid/app/Application;

    iget v2, v1, Lk7/P;->t:I

    iget-object v3, v1, Lk7/b;->n:Landroid/location/Location;

    const/16 v46, 0x0

    const-wide/16 v36, -0x1

    const/16 v45, 0x0

    const-wide/16 v38, -0x1

    const-wide/16 v40, 0x0

    move-object/from16 v42, v0

    move/from16 v35, v2

    move-object/from16 v43, v3

    move-object/from16 v44, v32

    invoke-static/range {v35 .. v46}, Lk7/K;->A(IJJJLandroid/content/Context;Landroid/location/Location;Ljava/lang/String;ZZ)V

    :cond_1e
    :goto_21
    move-object/from16 v3, v19

    goto/16 :goto_12

    :cond_1f
    :goto_22
    if-eqz v5, :cond_1e

    iget-object v0, v1, Lk7/b;->b:Lk7/i;

    invoke-virtual {v0}, Lk7/i;->k()V

    goto :goto_21

    :goto_23
    invoke-virtual {v2, v3}, LF6/q;->g(Ljava/lang/String;)J

    sget-object v0, LF6/a;->q0:LF6/a;

    filled-new-array {v0}, [LF6/a;

    move-result-object v0

    invoke-virtual {v2, v0}, LF6/q;->s([LF6/a;)J

    iget-object v0, v1, Lk7/b;->b:Lk7/i;

    iget-object v0, v0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk7/i$a;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Lk7/i$a;->e()V

    :cond_20
    if-eqz v18, :cond_21

    move-object/from16 v8, v18

    check-cast v8, Lcom/android/camera/module/VideoModule$d;

    invoke-virtual {v8}, Lcom/android/camera/module/VideoModule$d;->b()V

    :cond_21
    invoke-static {}, LRh/c;->a()LRh/c;

    move-result-object v0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, LRh/c;->d(J)V

    const-string/jumbo v0, "save video: end"

    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v15, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_a
    move-exception v0

    const/4 v4, 0x0

    move-object v5, v3

    :goto_24
    invoke-static {v5, v8}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v15, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final getSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final run()V
    .locals 4

    invoke-virtual {p0}, Lk7/P;->a()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoSaveRequest"

    const-string v3, "onFinish: runnable process finished"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lk7/b;->b:Lk7/i;

    invoke-virtual {p0, v0}, Lk7/i;->p(I)V

    return-void
.end method
