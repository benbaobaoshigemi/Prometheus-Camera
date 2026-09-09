.class public final La3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/a$c;,
        La3/a$a;,
        La3/a$b;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:LSp/p;

.field public final c:Landroid/view/Surface;

.field public final d:Landroid/media/CamcorderProfile;

.field public e:Ljava/lang/String;

.field public final f:Landroid/content/ContentValues;

.field public final g:Landroid/location/Location;

.field public final h:La3/a$c;

.field public i:Z

.field public j:Z

.field public k:J

.field public l:J

.field public final m:Lo7/a;


# direct methods
.method public constructor <init>(ILandroid/location/Location;JILa3/a$c;Landroid/util/Size;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v0, v1, La3/a;->a:I

    iput-object v2, v1, La3/a;->g:Landroid/location/Location;

    move-object/from16 v6, p6

    iput-object v6, v1, La3/a;->h:La3/a$c;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MiRecorder ctor: id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", orientation="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    const-string v10, "MiRecorder"

    invoke-static {v10, v6, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v6, LJe/c;->k:Z

    sget-object v6, LJe/c$b;->a:LJe/c;

    iget-object v9, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v9}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->z4()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, LSp/v;

    invoke-direct {v9}, LSp/v;-><init>()V

    iput-object v9, v1, La3/a;->b:LSp/p;

    goto :goto_0

    :cond_0
    new-instance v9, LSp/y;

    invoke-direct {v9}, LSp/y;-><init>()V

    iput-object v9, v1, La3/a;->b:LSp/p;

    :goto_0
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v9

    iput-object v9, v1, La3/a;->c:Landroid/view/Surface;

    invoke-virtual {v6}, LJe/c;->H0()V

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v9

    invoke-virtual {v9, v8}, Lu6/f;->d0(I)Z

    move-result v9

    invoke-virtual {v6}, LJe/c;->H0()V

    iget-object v6, v6, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x6

    invoke-static {v9, v6}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v6

    iput-object v6, v1, La3/a;->d:Landroid/media/CamcorderProfile;

    invoke-static {}, Lcom/android/camera/data/data/j;->X()I

    move-result v9

    iput v9, v6, Landroid/media/CamcorderProfile;->videoCodec:I

    iget-object v6, v1, La3/a;->d:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v11, v12}, Ljava/util/Date;-><init>(J)V

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "\'VID\'_yyyyMMdd_HHmmss"

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v11, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v11, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "_"

    invoke-static {v0, v11}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LF1/E;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lcom/android/camera/module/video/H;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6}, Lcom/android/camera/module/video/H;->b(I)Ljava/lang/String;

    move-result-object v6

    const-string v11, ""

    invoke-static {v9, v11}, Lk7/K;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "genContentValues: path="

    invoke-static {v12, v11}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-array v13, v8, [Ljava/lang/Object;

    invoke-static {v10, v12, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v12, Landroid/content/ContentValues;

    const/16 v13, 0x8

    invoke-direct {v12, v13}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v13, "title"

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_display_name"

    invoke-virtual {v12, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    invoke-virtual {v12, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_data"

    invoke-virtual {v12, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "x"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "resolution"

    invoke-virtual {v12, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v6

    iget-object v6, v6, Lh6/b;->a:Lh6/a;

    invoke-interface {v6}, Lh6/a;->c()Landroid/location/Location;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmpl-double v7, v13, v15

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    cmpl-double v7, v13, v15

    if-eqz v7, :cond_2

    :cond_1
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v9, "latitude"

    invoke-virtual {v12, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "longitude"

    invoke-virtual {v12, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_2
    const-string v6, "relative_path"

    const-string v7, "DCIM/Camera/"

    invoke-virtual {v12, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "is_pending"

    invoke-virtual {v12, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v9, "save_cover"

    invoke-virtual {v12, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v12, v1, La3/a;->f:Landroid/content/ContentValues;

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, La3/a;->e:Ljava/lang/String;

    new-instance v0, Lo7/a;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-direct {v0, v7}, Lo7/a;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, La3/a;->m:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->a()V

    iget-object v0, v1, La3/a;->m:Lo7/a;

    iget-object v7, v1, La3/a;->f:Landroid/content/ContentValues;

    iput-object v7, v0, Lo7/a;->d:Landroid/content/ContentValues;

    const-string/jumbo v0, "setupRecorder: setOrientationHint="

    const-string v7, "maxFileSize="

    const-string v9, "H264 bitrate: "

    const-string v11, "H265 bitrate: "

    const-string/jumbo v12, "setVideoFrameRate: "

    :try_start_0
    new-instance v13, LSp/q;

    invoke-direct {v13}, LSp/q;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-boolean v6, v13, LSp/q;->a:Z

    iput v6, v13, LSp/q;->f:I

    iget-object v15, v1, La3/a;->d:Landroid/media/CamcorderProfile;

    iget v6, v15, Landroid/media/CamcorderProfile;->fileFormat:I

    iput v6, v13, LSp/q;->l:I

    iget v6, v15, Landroid/media/CamcorderProfile;->videoCodec:I

    iput v6, v13, LSp/q;->g:I

    invoke-static {}, Le3/i0;->i()V

    iget-object v6, v1, La3/a;->d:Landroid/media/CamcorderProfile;

    iget v15, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v15, v6}, Landroid/util/Size;-><init>(II)V

    iput-object v8, v13, LSp/q;->k:Landroid/util/Size;

    iget-object v6, v1, La3/a;->d:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v6, v13, LSp/q;->j:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, La3/a;->d:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v10, v6, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v1, La3/a;->d:Landroid/media/CamcorderProfile;

    iget v8, v6, Landroid/media/CamcorderProfile;->videoCodec:I

    const/4 v12, 0x5

    if-ne v12, v8, :cond_3

    sget-object v8, Lcom/android/camera/module/video/G;->b:Landroid/util/Size;

    iget v8, v6, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v6, v8}, Lcom/android/camera/module/video/G;->a(Landroid/media/CamcorderProfile;I)I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v8, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_3
    iget v6, v6, Landroid/media/CamcorderProfile;->videoBitRate:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v8, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iput v6, v13, LSp/q;->h:I

    const v6, 0x4e200

    iput v6, v13, LSp/q;->d:I

    iget-object v6, v1, La3/a;->d:Landroid/media/CamcorderProfile;

    iget v8, v6, Landroid/media/CamcorderProfile;->audioChannels:I

    iput v8, v13, LSp/q;->b:I

    iget v8, v6, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput v8, v13, LSp/q;->e:I

    iget v6, v6, Landroid/media/CamcorderProfile;->audioCodec:I

    iput v6, v13, LSp/q;->c:I

    const/4 v9, 0x0

    iput v9, v13, LSp/q;->o:I

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v6, v8

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    double-to-float v2, v8

    new-instance v8, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v8, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v8, v13, LSp/q;->n:Landroid/util/Pair;

    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v2, v3, v8

    if-lez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, La3/a;->b:LSp/p;

    invoke-interface {v2, v3, v4}, LSp/p;->o(J)V

    const-wide v6, 0xdac00000L

    cmp-long v2, v3, v6

    if-lez v2, :cond_5

    const-string v2, "param-use-64bit-offset=1"

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iput v5, v13, LSp/q;->q:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v10, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v14, v13, LSp/q;->r:Ljava/util/ArrayList;

    iget-object v0, v1, La3/a;->m:Lo7/a;

    iget-object v2, v1, La3/a;->b:LSp/p;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lo7/a;->n(LSp/p;Z)V

    iget-object v0, v1, La3/a;->b:LSp/p;

    iget-object v2, v1, La3/a;->c:Landroid/view/Surface;

    invoke-interface {v0, v2}, LSp/p;->k(Landroid/view/Surface;)V

    iget-object v0, v1, La3/a;->b:LSp/p;

    invoke-interface {v0, v13}, LSp/p;->f(LSp/q;)V

    iget-object v0, v1, La3/a;->b:LSp/p;

    invoke-interface {v0}, LSp/p;->prepare()V

    iget-object v0, v1, La3/a;->b:LSp/p;

    new-instance v2, La3/a$a;

    invoke-direct {v2, v1}, La3/a$a;-><init>(La3/a;)V

    invoke-interface {v0, v2}, LSp/p;->d(LSp/p$a;)V

    iget-object v0, v1, La3/a;->b:LSp/p;

    new-instance v2, La3/a$b;

    invoke-direct {v2, v1}, La3/a$b;-><init>(La3/a;)V

    invoke-interface {v0, v2}, LSp/p;->n(LSp/p$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepare failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, La3/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, La3/a;->b()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mRecorder err"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, La3/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, La3/a;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "MiRecorder"

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no video file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La3/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v2, p0, La3/a;->e:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete empty video file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La3/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v2, p0, La3/a;->e:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 9

    const-string v0, "release: t2="

    const-string v1, "reset: t1="

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "MiRecorder"

    const-string v5, "release: "

    invoke-static {v4, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v3, p0, La3/a;->b:LSp/p;

    invoke-interface {v3}, LSp/p;->reset()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, p0, La3/a;->b:LSp/p;

    invoke-interface {v1}, LSp/p;->release()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La3/a;->c:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-boolean v2, p0, La3/a;->i:Z

    iput-boolean v2, p0, La3/a;->j:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, La3/a;->a()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "release err"

    invoke-static {v4, v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, La3/a;->a()V

    return-void

    :goto_0
    invoke-virtual {p0}, La3/a;->a()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiRecorder{mId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, La3/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentVideoFilename=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, La3/a;->e:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, LS1/h;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
