.class public final LF1/w4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LF1/w4$a;
    }
.end annotation


# static fields
.field public static final p:Ljava/util/concurrent/locks/ReentrantLock;

.field public static final q:I

.field public static final r:I

.field public static final s:I


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Landroid/graphics/Bitmap;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:I

.field public j:I

.field public k:J

.field public l:Z

.field public m:I

.field public n:Z

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, LF1/w4;->p:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    sput v0, LF1/w4;->q:I

    const/4 v0, 0x2

    sput v0, LF1/w4;->r:I

    const/4 v0, 0x3

    sput v0, LF1/w4;->s:I

    return-void
.end method

.method public static a(II[B)Landroid/graphics/Bitmap;
    .locals 10

    const-string v1, "Thumbnail"

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    array-length p1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    rem-int/lit16 p0, p0, 0x168

    if-eqz v3, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p0, :cond_1

    int-to-float p0, p0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {v8, p0, p1, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_1
    :try_start_0
    const-string p0, "createBitmap:createBitmap start "

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createBitmap: createBitmap end"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq p0, v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_2
    return-object p0

    :goto_0
    const-string p1, "Failed to rotate thumbnail"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-object v3
.end method

.method public static b(Landroid/database/Cursor;)LF1/w4$a;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v2, "createMediaFromCursor data: "

    invoke-static {v2, v8}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Thumbnail"

    invoke-static {v5, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v8}, Lvr/z;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v8}, Lvr/z;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/16 v5, 0x2e

    invoke-static {v5, v8, v8}, Lww/p;->T(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".gif"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    move v6, v2

    new-instance v2, LF1/w4$a;

    const/4 v5, 0x1

    move v7, v5

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v12, 0x4

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x5

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x6

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move v15, v12

    if-ne v14, v1, :cond_0

    move v12, v7

    :goto_0
    move-wide v6, v9

    move v9, v15

    goto :goto_1

    :cond_0
    move v12, v6

    goto :goto_0

    :goto_1
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move v10, v13

    move-wide v13, v0

    invoke-direct/range {v2 .. v14}, LF1/w4$a;-><init>(JIJLjava/lang/String;IIZZJ)V

    return-object v2

    :cond_1
    move v6, v3

    const-string v0, "createMediaFromCursor file maybe deleted, data "

    invoke-static {v0, v8}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static c(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)LF1/w4;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "Thumbnail"

    if-nez p1, :cond_0

    const-string p0, "Failed to create thumbnail from null bitmap"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v3, LF1/w4;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v3, LF1/w4;->c:Z

    iput-boolean v1, v3, LF1/w4;->d:Z

    iput-boolean v1, v3, LF1/w4;->e:Z

    iput-boolean v1, v3, LF1/w4;->h:Z

    const/4 v4, -0x1

    iput v4, v3, LF1/w4;->i:I

    iput v4, v3, LF1/w4;->j:I

    const-wide/16 v4, -0x1

    iput-wide v4, v3, LF1/w4;->k:J

    iput-boolean v1, v3, LF1/w4;->l:Z

    const/4 v4, 0x1

    iput-boolean v4, v3, LF1/w4;->n:Z

    iput-boolean v4, v3, LF1/w4;->o:Z

    iput-object p0, v3, LF1/w4;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float p0, p0

    int-to-float v5, v5

    invoke-static {p0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x44870000    # 1080.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    cmpl-float v8, v6, v7

    if-nez v8, :cond_1

    goto/16 :goto_2

    :cond_1
    cmpg-float v8, v6, v7

    if-gez v8, :cond_2

    move v6, v7

    :cond_2
    div-float/2addr p0, v6

    float-to-int p0, p0

    div-float/2addr v5, v6

    float-to-int v5, v5

    rem-int/lit16 v8, p2, 0xb4

    if-eqz v8, :cond_3

    move v9, p0

    move v8, v5

    goto :goto_0

    :cond_3
    move v8, p0

    move v9, v5

    :goto_0
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    div-float v6, v7, v6

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    neg-int p0, p0

    int-to-float p0, p0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr p0, v6

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v10, p0, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float p0, p2

    invoke-virtual {v10, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float p0, v8

    div-float/2addr p0, v6

    int-to-float p2, v9

    div-float/2addr p2, v6

    invoke-virtual {v10, p0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz p3, :cond_4

    const/high16 p3, -0x40800000    # -1.0f

    goto :goto_1

    :cond_4
    move p3, v7

    :goto_1
    invoke-virtual {v10, p3, v7, p0, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :try_start_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-static {v8, v9, p0, v4, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v5, 0x3

    invoke-direct {p3, v1, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p2, p1, v10, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "Failed to rotate thumbnail"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_2
    iput-object p1, v3, LF1/w4;->b:Landroid/graphics/Bitmap;

    return-object v3
.end method

.method public static d([BIILandroid/net/Uri;Z)LF1/w4;
    .locals 4

    const/16 v0, 0xb

    const/4 v1, 0x0

    if-le v0, p2, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lrf/a;->c([B)Lrf/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lrf/b;->u()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "failed to extract thumbnail from exif"

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Thumbnail"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x1

    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    array-length p2, p0

    invoke-static {p0, v1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    invoke-static {p3, v0, p1, p4}, LF1/w4;->c(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)LF1/w4;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Landroid/net/Uri;)LF1/w4;
    .locals 26
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const-string v1, "createThumbnailFromUri() , uri = "

    invoke-static {v2, v1}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    new-array v3, v7, [Ljava/lang/Object;

    const-string v8, "Thumbnail"

    invoke-static {v8, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/images/media"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x7

    const-string v4, "is_trashed"

    const-string v5, "_size"

    const-string v6, "height"

    const-string/jumbo v11, "width"

    const-string v12, "_data"

    const-string v13, "_id"

    const/16 v14, 0x8

    const-string v15, "is_favorite"

    const/16 v16, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/4 v9, 0x1

    if-eqz v10, :cond_0

    new-array v14, v14, [Ljava/lang/String;

    aput-object v13, v14, v7

    aput-object v12, v14, v9

    const-string v12, "orientation"

    aput-object v12, v14, v21

    aput-object v11, v14, v20

    aput-object v6, v14, v19

    aput-object v5, v14, v18

    aput-object v4, v14, v17

    aput-object v15, v14, v3

    :goto_0
    move-object v3, v14

    goto :goto_1

    :cond_0
    new-array v14, v14, [Ljava/lang/String;

    aput-object v13, v14, v7

    aput-object v12, v14, v9

    aput-object v11, v14, v21

    aput-object v6, v14, v20

    aput-object v5, v14, v19

    const-string v5, "resolution"

    aput-object v5, v14, v18

    aput-object v4, v14, v17

    aput-object v15, v14, v3

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_a

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move/from16 v5, v17

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "media item "

    if-ne v5, v9, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " has already been trashed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v16

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_8

    :cond_1
    :try_start_2
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v11, -0x1

    if-ne v5, v11, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is_favorite = -1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v16

    :cond_2
    :try_start_3
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v10, :cond_3

    move/from16 v6, v21

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    goto :goto_2

    :cond_3
    move v11, v7

    :goto_2
    if-eqz v10, :cond_4

    move/from16 v6, v20

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    goto :goto_3

    :cond_4
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    :goto_3
    if-eqz v10, :cond_5

    move/from16 v6, v19

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    goto :goto_4

    :cond_5
    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    :goto_4
    if-eqz v10, :cond_6

    move/from16 v6, v18

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    int-to-long v14, v14

    goto :goto_5

    :cond_6
    const/4 v6, 0x4

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v14, v6

    :goto_5
    if-eqz v12, :cond_8

    if-nez v13, :cond_7

    goto :goto_6

    :cond_7
    move/from16 v17, v7

    move/from16 v18, v9

    goto :goto_7

    :cond_8
    :goto_6
    if-nez v10, :cond_7

    const/4 v6, 0x5

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    move/from16 v17, v7

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move/from16 v18, v9

    const/4 v9, 0x2

    if-ne v7, v9, :cond_9

    aget-object v7, v6, v17

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aget-object v6, v6, v18

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :goto_7
    move/from16 v6, v18

    goto :goto_b

    :cond_a
    move/from16 v17, v7

    move/from16 v18, v9

    goto :goto_a

    :goto_8
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v2

    :goto_a
    const-wide/16 v3, -0x1

    move-wide v14, v3

    move-object/from16 v5, v16

    move/from16 v6, v17

    move v11, v6

    move v12, v11

    move v13, v12

    :goto_b
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v6, :cond_12

    if-eqz v10, :cond_10

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lav/j;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "PANO_"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v0, v3, v4, v11, v5}, LF1/w4;->n(Landroid/content/Context;JILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move/from16 v7, v18

    goto :goto_c

    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v6, v16

    move/from16 v7, v18

    invoke-static {v1, v3, v4, v7, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_d

    sget-boolean v6, LJe/d;->k:Z

    if-eqz v6, :cond_d

    invoke-static {v0, v3, v4, v11, v5}, LF1/w4;->n(Landroid/content/Context;JILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_c

    :cond_d
    move-object v0, v1

    :goto_c
    if-nez v0, :cond_e

    invoke-static {v5, v7}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_f

    if-eqz v5, :cond_f

    const-string v1, ".HEIC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v12, v13, v11, v5}, LF1/w4;->p(IIILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_f
    :goto_d
    move/from16 v1, v17

    goto :goto_e

    :cond_10
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v5

    move/from16 v24, v12

    move/from16 v25, v13

    invoke-static/range {v19 .. v25}, LF1/w4;->f(Landroid/media/MediaMetadataRetriever;Ljava/lang/String;Ljava/io/FileDescriptor;Landroid/app/Application;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_d

    :goto_e
    invoke-static {v2, v0, v1, v1}, LF1/w4;->c(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)LF1/w4;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, v14, v15}, LF1/w4;->s(J)V

    if-eqz v10, :cond_11

    if-eqz v5, :cond_11

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0x2e

    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, LF1/w4;->e:Z

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createThumbnailFromUri() returned: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_12
    move/from16 v2, v17

    goto :goto_f

    :cond_13
    move v2, v7

    :goto_f
    const-string v0, "createThumbnailFromUri() returned: null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v16, 0x0

    return-object v16
.end method

.method public static f(Landroid/media/MediaMetadataRetriever;Ljava/lang/String;Ljava/io/FileDescriptor;Landroid/app/Application;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 5

    if-eqz p0, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    const-string v3, "createVideoThumbnailBitmap: "

    const-string v4, "Thumbnail"

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object p2, p1

    move-object p1, v1

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object p2, p1

    move-object p1, v1

    goto/16 :goto_6

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    :try_start_1
    invoke-virtual {v1, p3, p4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_1
    const/16 p1, 0x18

    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_4

    const/16 p2, 0x10e

    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    move p2, p5

    move p3, p6

    goto :goto_3

    :cond_4
    :goto_2
    move p3, p5

    move p2, p6

    :goto_3
    const/16 p1, 0x12

    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    const/16 p1, 0x13

    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    new-instance p6, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {p6}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p6, p1}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object p1, v1

    :try_start_2
    invoke-static/range {p1 .. p6}, LF1/w4;->h(Landroid/media/MediaMetadataRetriever;IIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p0, :cond_5

    :try_start_3
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p2

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-object p2

    :catchall_1
    move-exception v0

    :goto_4
    move-object p2, v0

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_5
    move-object p2, v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object p1, v1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object p1, v1

    goto :goto_5

    :cond_6
    move-object p1, v1

    :try_start_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "both fp, fd, and uri are null"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p0, :cond_7

    :try_start_6
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_7
    const/4 p0, 0x0

    return-object p0

    :goto_8
    if-nez p0, :cond_8

    :try_start_7
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_9
    throw p2
.end method

.method public static g(Landroid/app/Application;Landroid/net/Uri;)V
    .locals 11

    sget-object v0, LF1/w4;->p:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v1, "Thumbnail"

    const-string v2, "deleteLastThumbnailFile, fail for cache file uri: "

    const-string v3, "deleteLastThumbnailFile, delRes: "

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v5, "last_thumb"

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v7, 0x1000

    invoke-direct {v6, v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v8, 0x0

    if-nez p0, :cond_1

    const-string p0, "deleteLastThumbnailFile, read cache file uri is null."

    new-array p1, v8, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-static {v5}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v6}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v7}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :try_start_4
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_2

    if-eqz v10, :cond_2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v8, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", uri: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v8, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v7, p0

    :goto_1
    move-object p0, p1

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v7, p0

    :goto_2
    move-object p0, p1

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v6, p0

    :goto_3
    move-object v7, v6

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v6, p0

    :goto_4
    move-object v7, v6

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object v5, p0

    move-object v6, v5

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v5, p0

    move-object v6, v5

    goto :goto_4

    :goto_5
    :try_start_5
    const-string p1, "deleteLastThumbnailFile, e: "

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v5}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v6}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v7}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_7

    :goto_6
    invoke-static {v5}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v6}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v7}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_3
    :goto_7
    return-void
.end method

.method public static h(Landroid/media/MediaMetadataRetriever;IIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Thumbnail"

    const-string v2, "getFrameAtTime"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-le p1, p3, :cond_0

    if-le p2, p4, :cond_0

    invoke-static {p0, p5}, LF1/B0;->b(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p5}, LF1/v4;->a(Landroid/media/MediaMetadataRetriever;IILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static i(Landroid/content/ContentResolver;)LF1/w4$a;
    .locals 10

    const-string v0, "android:query-arg-limit"

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v8, "media_type"

    const-string v9, "_size"

    const-string v2, "_id"

    const-string v3, "orientation"

    const-string v4, "datetaken"

    const-string v5, "_data"

    const-string/jumbo v6, "width"

    const-string v7, "height"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    const-string v3, "is_favorite != -1 AND "

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    const-string v4, "((("

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mime_type=\'image/jpeg\'"

    invoke-static {v3, v4}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " OR "

    invoke-static {v3, v4}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "mime_type=\'image/heic\'"

    invoke-static {v3, v5}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "mime_type=\'image/gif\'"

    invoke-static {v3, v5}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mime_type=\'image/heif\'"

    invoke-static {v3, v4}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ") AND media_type = 1)"

    invoke-static {v3, v4}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " OR media_type = 3)"

    invoke-static {v3, v4}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " AND relative_path COLLATE NOCASE =\'"

    invoke-static {v3, v4}, LB/c;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lk7/K;->c:Ljava/lang/String;

    const-string v5, "\'"

    invoke-static {v3, v4, v5}, LS1/h;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " AND title NOT LIKE ?"

    invoke-static {v3, v4}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " AND _size > 0"

    invoke-static {v3, v4}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DOCUMENT_PICTURE%"

    const-string v5, "ID_CARD_PICTURE%"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "android:query-arg-sql-sort-order"

    const-string v7, "datetaken DESC,_id DESC"

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "android:query-arg-sql-selection"

    invoke-virtual {v5, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "android:query-arg-sql-selection-args"

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "getLastMedia baseUri: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", selection: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", order: datetaken DESC,_id DESC"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Thumbnail"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v5, v0, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v2, v5, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_1
    const/4 v7, 0x0

    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v6}, LF1/w4;->b(Landroid/database/Cursor;)LF1/w4$a;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLastMedia, media: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v8

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v1, v3

    :goto_1
    move-object v3, v6

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v1, v3

    goto :goto_3

    :cond_2
    const/4 v8, 0x5

    :try_start_2
    invoke-virtual {v5, v0, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v2, v5, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz p0, :cond_5

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, LF1/w4;->b(Landroid/database/Cursor;)LF1/w4$a;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastMedia, further query 5 rows, media: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_2
    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    move-object v1, v3

    goto :goto_5

    :catch_2
    move-exception v0

    move-object p0, v0

    move-object v1, v3

    move-object v6, v1

    :goto_3
    :try_start_4
    const-string v0, "getLastMedia error"

    invoke-static {v4, v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_4
    return-object v3

    :catchall_3
    move-exception v0

    goto :goto_2

    :goto_5
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw p0
.end method

.method public static j(Landroid/content/Context;[LF1/w4;Landroid/net/Uri;LF1/w4$a;)I
    .locals 12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez p3, :cond_0

    invoke-static {v0}, LF1/w4;->i(Landroid/content/ContentResolver;)LF1/w4$a;

    move-result-object p3

    :cond_0
    const/4 v1, -0x2

    const/4 v2, 0x3

    const-string v3, "Thumbnail"

    const/4 v4, 0x0

    if-nez p3, :cond_2

    invoke-static {}, LQg/e;->b()I

    move-result p0

    if-lt p0, v2, :cond_1

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, LF1/w4;->m(J)LF1/w4;

    move-result-object p0

    if-eqz p0, :cond_1

    aput-object p0, p1, v4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getLastThumbnailFromContentResolver(0): imageUri = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LF1/w4;->a:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    const-string p0, "getLastThumbnailFromContentResolver: lastUri = null"

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_2
    const/4 v5, 0x0

    iget-boolean v6, p3, LF1/w4$a;->i:Z

    if-eqz v6, :cond_3

    move-object v7, v5

    goto :goto_0

    :cond_3
    move-object v7, p3

    :goto_0
    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move-object p3, v5

    :goto_1
    const/4 v6, -0x1

    const/4 v8, 0x1

    if-eqz v7, :cond_a

    invoke-static {}, LQg/e;->b()I

    move-result v9

    if-lt v9, v2, :cond_5

    iget-wide v9, v7, LF1/w4$a;->c:J

    invoke-static {v9, v10}, LF1/w4;->m(J)LF1/w4;

    move-result-object v9

    if-eqz v9, :cond_5

    aput-object v9, p1, v4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getLastThumbnailFromContentResolver(1): imageUri = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v9, LF1/w4;->a:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_5
    if-eqz p2, :cond_6

    iget-object v1, v7, LF1/w4$a;->d:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p0, "getLastThumbnailFromContentResolver: imageUri = "

    invoke-static {v1, p0}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_6
    new-instance p2, Ljava/io/File;

    iget-object v1, v7, LF1/w4$a;->e:Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lav/j;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    iget-wide v9, v7, LF1/w4$a;->a:J

    iget v11, v7, LF1/w4$a;->b:I

    if-nez v6, :cond_7

    const-string v6, "PANO_"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {p0, v9, v10, v11, v1}, LF1/w4;->o(Landroid/content/Context;JILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    :cond_7
    invoke-static {v0, v9, v10, v8, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_8

    sget-boolean v5, LJe/d;->k:Z

    if-eqz v5, :cond_8

    invoke-static {p0, v9, v10, v11, v1}, LF1/w4;->n(Landroid/content/Context;JILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    :cond_8
    move-object p0, p2

    :goto_2
    if-nez p0, :cond_9

    :try_start_0
    invoke-static {v1, v8}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    const-string v5, "exception in createImageThumbnail"

    invoke-static {v3, v5, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    if-nez p0, :cond_e

    if-eqz v1, :cond_e

    const-string p2, ".HEIC"

    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    iget p0, v7, LF1/w4$a;->g:I

    iget p2, v7, LF1/w4$a;->f:I

    invoke-static {p2, p0, v11, v1}, LF1/w4;->p(IIILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_5

    :cond_a
    if-eqz p2, :cond_b

    iget-object v1, p3, LF1/w4$a;->d:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getLastThumbnailFromContentResolver: videoUri = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p3, LF1/w4$a;->d:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_b
    iget-object p2, p3, LF1/w4$a;->e:Ljava/lang/String;

    if-eqz p2, :cond_c

    invoke-static {p2}, Lcom/android/camera/jcodec/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "readCover: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    if-nez v5, :cond_d

    iget-object p2, p3, LF1/w4$a;->d:Landroid/net/Uri;

    invoke-static {p0, p2}, LF1/w4;->e(Landroid/content/Context;Landroid/net/Uri;)LF1/w4;

    move-result-object p0

    if-eqz p0, :cond_d

    iget-object p0, p0, LF1/w4;->b:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_d
    move-object p0, v5

    :goto_4
    move-object v7, p3

    :cond_e
    :goto_5
    iget-object p2, v7, LF1/w4$a;->d:Landroid/net/Uri;

    invoke-static {v0, p2}, Lvr/Q;->f(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "getLastThumbnailFromContentResolver: lastMedia = "

    invoke-static {p2, v0}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_11

    invoke-static {p2, p0, v4, v4}, LF1/w4;->c(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)LF1/w4;

    move-result-object p0

    aput-object p0, p1, v4

    if-eqz p0, :cond_10

    if-eq v7, p3, :cond_f

    iget-boolean p2, v7, LF1/w4$a;->h:Z

    if-eqz p2, :cond_f

    iput-boolean v8, p0, LF1/w4;->e:Z

    iget p2, v7, LF1/w4$a;->f:I

    iput p2, p0, LF1/w4;->i:I

    iget p2, v7, LF1/w4$a;->g:I

    iput p2, p0, LF1/w4;->j:I

    :cond_f
    iget-wide p2, v7, LF1/w4$a;->j:J

    invoke-virtual {p0, p2, p3}, LF1/w4;->s(J)V

    aget-object p0, p1, v4

    sget p1, LF1/w4;->q:I

    iput p1, p0, LF1/w4;->m:I

    :cond_10
    return v8

    :cond_11
    return v2

    :cond_12
    const/4 p0, 0x2

    return p0
.end method

.method public static k(Landroid/content/Context;Landroid/content/ContentResolver;)LF1/w4;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, LF1/w4;->p:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v3, "Thumbnail"

    const-string v4, "Fail to load bitmap. "

    const-string v5, "Stop try to get bitmap, Thread is interrupted. path="

    const-string v6, "getLastThumbnailFromFile: isVideo:"

    const-string v7, "getLastThumbnailFromFile: fileSize:"

    const-string v8, "getLastThumbnailFromFile: gifHeight:"

    const-string v9, "getLastThumbnailFromFile: gifWidth:"

    const-string v10, "getLastThumbnailFromFile: isGif:"

    const-string v11, "getLastThumbnailFromFile: version: "

    const/4 v12, 0x0

    if-nez v0, :cond_0

    return-object v12

    :cond_0
    new-instance v13, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    const-string v15, "last_thumb"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    move-object/from16 v16, v12

    :try_start_1
    new-instance v12, Ljava/io/BufferedInputStream;

    const/16 v14, 0x1000

    invoke-direct {v12, v15, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    new-instance v14, Ljava/io/DataInputStream;

    invoke-direct {v14, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object/from16 v18, v2

    :try_start_4
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v2, :cond_2

    :try_start_5
    const-string v0, "getLastThumbnailFromFile() returned null "

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v15}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v12}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v14}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return-object v16

    :catchall_0
    move-exception v0

    move-object/from16 v17, v12

    :goto_0
    move-object v12, v15

    goto/16 :goto_14

    :catch_0
    move-exception v0

    move-object/from16 v20, v13

    goto/16 :goto_12

    :catch_1
    move-exception v0

    goto/16 :goto_13

    :cond_2
    move-object/from16 v17, v12

    :try_start_6
    const-string/jumbo v12, "version"

    invoke-virtual {v2, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    const-string v12, "0"

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    move-object/from16 v19, v2

    goto :goto_3

    :catch_2
    const/4 v12, 0x0

    goto :goto_2

    :goto_3
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v20, v13

    const/4 v11, 0x0

    :try_start_8
    new-array v13, v11, [Ljava/lang/Object;

    invoke-static {v3, v2, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v2, 0x1

    if-lt v12, v2, :cond_4

    :try_start_9
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v3, v10, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v3, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v3, v8, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_4
    move-object/from16 v12, v17

    goto/16 :goto_12

    :catch_4
    move-exception v0

    :goto_5
    move-object/from16 v12, v17

    goto/16 :goto_13

    :cond_4
    const/4 v2, -0x1

    move v9, v2

    const/4 v11, 0x0

    :goto_6
    const/4 v8, 0x2

    if-lt v12, v8, :cond_5

    move-object v8, v14

    :try_start_a
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v21, v8

    const/4 v10, 0x0

    :try_start_b
    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :catchall_2
    move-exception v0

    :goto_7
    move-object v12, v15

    move-object/from16 v14, v21

    goto/16 :goto_14

    :catch_5
    move-exception v0

    :goto_8
    move-object/from16 v12, v17

    move-object/from16 v14, v21

    goto/16 :goto_12

    :catch_6
    move-exception v0

    :goto_9
    move-object/from16 v12, v17

    move-object/from16 v14, v21

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    move-object/from16 v21, v8

    goto :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v21, v8

    goto :goto_8

    :catch_8
    move-exception v0

    move-object/from16 v21, v8

    goto :goto_9

    :cond_5
    move-object/from16 v21, v14

    const-wide/16 v13, -0x1

    :goto_a
    const/4 v7, 0x3

    if-lt v12, v7, :cond_6

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v3, v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_6
    const/4 v7, 0x0

    :goto_b
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    if-eqz v1, :cond_9

    invoke-static {v1, v6}, Lvr/Q;->f(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0, v6}, Lk7/p;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    const-string v0, "getLastThumbnailFromFile: invalid uri or trashed file"

    const/4 v13, 0x0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    invoke-static {v15}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static/range {v17 .. v17}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static/range {v21 .. v21}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_8
    return-object v16

    :cond_9
    :try_start_c
    invoke-static/range {v21 .. v21}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    invoke-static {v15}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static/range {v17 .. v17}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static/range {v21 .. v21}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_a
    const/4 v10, 0x0

    invoke-static {v6, v0, v10, v10}, LF1/w4;->c(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)LF1/w4;

    move-result-object v0

    if-eqz v0, :cond_b

    iput-boolean v11, v0, LF1/w4;->e:Z

    iput v2, v0, LF1/w4;->i:I

    iput v9, v0, LF1/w4;->j:I

    const/4 v1, 0x1

    iput-boolean v1, v0, LF1/w4;->c:Z

    iput-boolean v7, v0, LF1/w4;->h:Z

    invoke-virtual {v0, v13, v14}, LF1/w4;->s(J)V

    sget v1, LF1/w4;->r:I

    iput v1, v0, LF1/w4;->m:I

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getLastThumbnailFromFile() returned: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :catchall_4
    move-exception v0

    :goto_c
    move-object/from16 v21, v14

    goto/16 :goto_0

    :catch_9
    move-exception v0

    :goto_d
    move-object/from16 v21, v14

    goto/16 :goto_4

    :catch_a
    move-exception v0

    move-object/from16 v21, v14

    goto/16 :goto_5

    :catch_b
    move-exception v0

    move-object/from16 v20, v13

    goto :goto_d

    :catchall_5
    move-exception v0

    :goto_e
    move-object/from16 v17, v12

    goto :goto_c

    :catch_c
    move-exception v0

    :goto_f
    move-object/from16 v17, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    goto/16 :goto_12

    :catch_d
    move-exception v0

    :goto_10
    move-object/from16 v17, v12

    move-object/from16 v21, v14

    goto/16 :goto_13

    :catchall_6
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_e

    :catch_e
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_f

    :catch_f
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_10

    :catchall_7
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v17, v12

    move-object v12, v15

    move-object/from16 v14, v16

    goto/16 :goto_14

    :catch_10
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v17, v12

    move-object/from16 v20, v13

    move-object/from16 v14, v16

    goto :goto_12

    :catch_11
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v17, v12

    move-object/from16 v14, v16

    goto/16 :goto_13

    :catchall_8
    move-exception v0

    move-object/from16 v18, v2

    move-object v12, v15

    move-object/from16 v14, v16

    :goto_11
    move-object/from16 v17, v14

    goto/16 :goto_14

    :catch_12
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v20, v13

    move-object/from16 v12, v16

    move-object v14, v12

    goto :goto_12

    :catch_13
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v12, v16

    move-object v14, v12

    goto :goto_13

    :catchall_9
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v16, v12

    move-object v14, v12

    goto :goto_11

    :catch_14
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v16, v12

    move-object/from16 v20, v13

    move-object v14, v12

    move-object v15, v14

    goto :goto_12

    :catch_15
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v16, v12

    move-object v14, v12

    move-object v15, v14

    goto :goto_13

    :goto_12
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-static {v15}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v12}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v14}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_c
    return-object v16

    :goto_13
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    invoke-static {v15}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v12}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v14}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_d
    return-object v16

    :goto_14
    invoke-static {v12}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static/range {v17 .. v17}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v14}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_e
    throw v0
.end method

.method public static l(Landroid/content/Context;[LF1/w4;Ljava/util/ArrayList;Landroid/net/Uri;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "LF1/w4;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/net/Uri;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Lvr/Q;->f(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p3, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-static {p0, v3}, LF1/w4;->e(Landroid/content/Context;Landroid/net/Uri;)LF1/w4;

    move-result-object v3

    aput-object v3, p1, v0

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static m(J)LF1/w4;
    .locals 17

    move-wide/from16 v0, p0

    const-string v2, "getLatestThumbnailFromPPP: saveTask.path = "

    const-string v3, "getLatestThumbnailFromPPP: saveTask.mediaId = "

    const-string v4, "getLatestThumbnailFromPPP: saveTask.dataTaken = "

    const-string v5, "getLatestThumbnailFromPPP: dateTaken = "

    invoke-static {v0, v1, v5}, LHs/a;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "Thumbnail"

    invoke-static {v8, v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LBw/i;->u()LF2/d;

    move-result-object v5

    invoke-virtual {v5}, LF2/d;->n()LE2/a;

    move-result-object v9

    const/4 v5, 0x0

    if-eqz v9, :cond_3

    invoke-virtual {v9}, LE2/a;->b()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-wide v10, v9, LE2/a;->l:J

    cmp-long v0, v10, v0

    if-lez v0, :cond_3

    iget-object v0, v9, LE2/a;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, v9, LE2/a;->l:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, LE2/a;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, LE2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->h2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplicationId()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v16}, LE2/a;->a(Ljava/lang/String;IZZZJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getLatestThumbnailFromPPP: ignore stale record"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, v9, LE2/a;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0, v6}, Lk7/K;->x(Landroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "getLatestThumbnailFromPPP: record not found"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_1
    iget-object v1, v9, LE2/a;->j:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, v9, LE2/a;->g:I

    invoke-static {v0, v1, v2, v6}, LF1/w4;->c(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)LF1/w4;

    move-result-object v0

    if-eqz v0, :cond_2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, LF1/w4;->s(J)V

    sget v1, LF1/w4;->s:I

    iput v1, v0, LF1/w4;->m:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :goto_0
    const-string v1, "getLatestThumbnailFromPPP failed"

    invoke-static {v8, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v5
.end method

.method public static n(Landroid/content/Context;JILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 22

    move-object/from16 v1, p4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-ge v0, v2, :cond_5

    const-string v2, "munmap file error "

    const-string v3, "close file error "

    const-string v4, "Thumbnail"

    const-string v5, "getMiniKindThumbnail error "

    new-instance v6, Ljava/io/FileDescriptor;

    invoke-direct {v6}, Ljava/io/FileDescriptor;-><init>()V

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, 0x0

    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v12, 0x0

    invoke-static {v1, v0, v12}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v19
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static/range {v19 .. v19}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v12, v0, Landroid/system/StructStat;->st_size:J
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    sget v17, Landroid/system/OsConstants;->PROT_READ:I

    sget v18, Landroid/system/OsConstants;->MAP_SHARED:I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v20, 0x0

    move-wide v15, v12

    const-wide/16 v13, 0x0

    :try_start_3
    invoke-static/range {v13 .. v21}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v8
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide v12, v15

    :try_start_4
    invoke-static {v8, v9, v12, v13}, Landroid/system/Os;->mlock(JJ)V

    invoke-static/range {p0 .. p4}, LF1/w4;->o(Landroid/content/Context;JILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v8, v9, v12, v13}, Landroid/system/Os;->munlock(JJ)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_5
    invoke-static/range {v19 .. v19}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    cmp-long v0, v8, v10

    if-ltz v0, :cond_2

    :try_start_6
    invoke-static {v8, v9, v12, v13}, Landroid/system/Os;->munmap(JJ)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    :goto_2
    move-object v5, v0

    :goto_3
    move-object/from16 v6, v19

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_4
    move-object/from16 v6, v19

    goto :goto_5

    :catchall_1
    move-exception v0

    move-wide v12, v15

    goto :goto_2

    :catch_3
    move-exception v0

    move-wide v12, v15

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v5, v0

    move-wide v12, v10

    goto :goto_3

    :catch_4
    move-exception v0

    move-wide v12, v10

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v5, v0

    move-wide v12, v10

    goto :goto_8

    :catch_5
    move-exception v0

    move-wide v12, v10

    :goto_5
    :try_start_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_8
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_6
    cmp-long v0, v8, v10

    if-ltz v0, :cond_2

    :try_start_9
    invoke-static {v8, v9, v12, v13}, Landroid/system/Os;->munmap(JJ)V
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_7
    return-object v7

    :catchall_4
    move-exception v0

    move-object v5, v0

    :goto_8
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_a
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_9
    cmp-long v0, v8, v10

    if-ltz v0, :cond_4

    :try_start_b
    invoke-static {v8, v9, v12, v13}, Landroid/system/Os;->munmap(JJ)V
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_a
    throw v5

    :cond_5
    invoke-static/range {p0 .. p4}, LF1/w4;->o(Landroid/content/Context;JILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static o(Landroid/content/Context;JILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    const-string v1, "failed to getMiniKindThumbnailByP: "

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v8, 0x0

    invoke-static {p0, p4, v8}, Lk7/K;->i(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p0

    const/4 p4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "blocking"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "group_id"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p4

    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "r"

    invoke-virtual {v2, p0, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1, p4, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object p4, v3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object p1, p4

    move-object p4, v3

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v1, p4

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p0, v0

    move-object p1, p4

    :goto_1
    :try_start_2
    const-string p2, "Thumbnail"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {p2, p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p4, :cond_3

    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v1, p1

    :goto_2
    if-eqz p3, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p3

    div-int/lit8 p1, v4, 0x2

    int-to-float p1, p1

    div-int/lit8 p2, v5, 0x2

    int-to-float p2, p2

    invoke-virtual {v6, p0, p1, p2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    return-object v1

    :goto_3
    if-eqz p4, :cond_5

    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0
.end method

.method public static p(IIILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-double p0, p0

    const-wide/high16 v2, 0x4080000000000000L    # 512.0

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p2

    div-int/lit8 p1, v5, 0x2

    int-to-float p1, p1

    div-int/lit8 p2, v6, 0x2

    int-to-float p2, p2

    invoke-virtual {v7, p0, p1, p2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v1, v2

    goto :goto_0

    :cond_0
    return-object v2

    :catch_1
    move-exception v0

    move-object p0, v0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "decode fail from "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Thumbnail"

    invoke-static {p2, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public final q(Ljava/io/File;)V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, LF1/w4;->p:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v2, "Fail to store bitmap. path="

    const-string/jumbo v3, "saveLastThumbnailToFile: isVideo:"

    const-string/jumbo v4, "saveLastThumbnailToFile: fileSize:"

    const-string/jumbo v5, "saveLastThumbnailToFile: gifHeight:"

    const-string/jumbo v6, "saveLastThumbnailToFile: gifWidth:"

    const-string/jumbo v7, "saveLastThumbnailToFile: isGif:"

    iget-object v8, v0, LF1/w4;->a:Landroid/net/Uri;

    const/4 v9, 0x0

    const-string v10, "Thumbnail"

    if-nez v8, :cond_0

    const-string v0, "Fail to store bitmap. uri is null"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v8, Ljava/io/File;

    const-string v11, "last_thumb"

    move-object/from16 v12, p1

    invoke-direct {v8, v12, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v13, Ljava/io/BufferedOutputStream;

    const/16 v14, 0x1000

    invoke-direct {v13, v12, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v11, v0, LF1/w4;->a:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    const-string/jumbo v15, "version"

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v15, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string/jumbo v9, "saveLastThumbnailToFile: version: 3"

    const/4 v11, 0x0

    new-array v15, v11, [Ljava/lang/Object;

    invoke-static {v10, v9, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v9, v0, LF1/w4;->e:Z

    invoke-virtual {v14, v9}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v0, LF1/w4;->e:Z

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v10, v7, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v7, v0, LF1/w4;->i:I

    invoke-virtual {v14, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, LF1/w4;->i:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v6, v0, LF1/w4;->j:I

    invoke-virtual {v14, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, LF1/w4;->j:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v10, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v5, v0, LF1/w4;->k:J

    invoke-virtual {v14, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, LF1/w4;->k:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v10, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v4, v0, LF1/w4;->h:Z

    invoke-virtual {v14, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, LF1/w4;->h:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v10, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, LF1/w4;->b:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {v0, v3, v4, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v12}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v13}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v14}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object v11, v12

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_1
    move-object v11, v12

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v14, v11

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v14, v11

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v13, v11

    move-object v14, v13

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v13, v11

    move-object v14, v13

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v13, v11

    move-object v14, v13

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v13, v11

    move-object v14, v13

    :goto_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-static {v11}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v13}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v14}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_4
    move-exception v0

    :goto_3
    invoke-static {v11}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v13}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-static {v14}, Lvr/Q;->a(Ljava/io/Closeable;)V

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final r()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LF1/w4;->l:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBitmapApplied("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LF1/w4;->a:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "): true"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Thumbnail"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final s(J)V
    .locals 2

    iput-wide p1, p0, LF1/w4;->k:J

    const-string/jumbo v0, "setFileSize: "

    const-string v1, ", mUri: "

    invoke-static {p1, p2, v0, v1}, LF1/r0;->h(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, LF1/w4;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Thumbnail"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final t(J)V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy/MM/dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LF1/w4;->f:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LF1/w4;->g:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thumbnail{mUri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LF1/w4;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LF1/w4;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFromFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LF1/w4;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWaitingForUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LF1/w4;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGif="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LF1/w4;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gifWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LF1/w4;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gifHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LF1/w4;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", applied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, LF1/w4;->l:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, LB3/e;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, LF1/w4;->a:Landroid/net/Uri;

    const-string v1, "Thumbnail"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setUri: ignore. oldUri = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LF1/w4;->a:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", newUri = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string/jumbo v0, "setUri: "

    invoke-static {p1, v0}, LQ4/D;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, LF1/w4;->a:Landroid/net/Uri;

    iput-boolean v2, p0, LF1/w4;->d:Z

    return-void
.end method
