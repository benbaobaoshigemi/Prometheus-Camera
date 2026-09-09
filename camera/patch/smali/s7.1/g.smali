.class public final Ls7/g;
.super Ls7/a;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/Object;


# instance fields
.field public final b:I

.field public final c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ls7/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lp7/d;-><init>()V

    iput p1, p0, Ls7/g;->b:I

    iput-object p2, p0, Ls7/g;->c:Landroid/os/Handler;

    return-void
.end method

.method public static g(LRh/r;)I
    .locals 10

    const-string v0, "enable_truncate_processing_image"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lyh/b;->a(Ljava/lang/Class;)V

    :try_start_0
    sget-object v3, Lyh/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Long;

    instance-of v4, v3, Ljava/lang/Double;

    check-cast v3, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v3}, LPu/l;->a(Ljava/lang/Throwable;)LPu/k$a;

    move-result-object v3

    :goto_0
    invoke-static {v3}, LPu/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    const-string v5, "CameraDynamicRepository"

    const-string v6, " to "

    const-string v7, "failed cast "

    const/4 v8, 0x0

    if-eqz v4, :cond_2

    sget-object v9, Luh/a;->a:Luh/a;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Luh/a;->b()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    move-object v4, v8

    :goto_1
    sget-object v9, Lyh/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v8

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    instance-of v0, v3, LPu/k$a;

    if-eqz v0, :cond_3

    move-object v3, v8

    :cond_3
    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v3

    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, LQg/e;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x1e00000

    goto :goto_4

    :cond_5
    const/high16 v0, 0x1000000

    :goto_4
    iget-object p0, p0, LRh/r;->k:LRh/A;

    iget-object p0, p0, LRh/A;->b:Ljava/lang/String;

    sget-object v1, Lk7/K;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "MV"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/high16 p0, 0xa00000

    add-int/2addr v0, p0

    :cond_6
    int-to-float p0, v0

    const-string/jumbo v0, "truncate_processing_factor"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-class v2, Ljava/lang/Float;

    invoke-static {v2}, Lyh/b;->a(Ljava/lang/Class;)V

    :try_start_1
    sget-object v3, Lyh/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Long;

    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_7

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_6

    :catchall_1
    move-exception v3

    goto :goto_5

    :cond_7
    check-cast v3, Ljava/lang/Float;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :goto_5
    invoke-static {v3}, LPu/l;->a(Ljava/lang/Throwable;)LPu/k$a;

    move-result-object v3

    :goto_6
    invoke-static {v3}, LPu/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_a

    sget-object v9, Luh/a;->a:Luh/a;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Luh/a;->b()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_7

    :cond_8
    move-object v4, v8

    :goto_7
    sget-object v9, Lyh/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_8

    :cond_9
    move-object v0, v8

    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    instance-of v0, v3, LPu/k$a;

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_b
    move-object v8, v3

    :goto_9
    if-nez v8, :cond_c

    goto :goto_a

    :cond_c
    move-object v1, v8

    :goto_a
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    goto :goto_b

    :cond_d
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public final a(LRh/r;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRh/r<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v5, "parallelTaskData"

    invoke-static {v0, v5}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "early_image_bitmap_"

    const-string v6, "image save try to create thumbnail E, mOrientation = "

    const-string v7, "insert preview picture: "

    const-string/jumbo v8, "save preview: image file already exists: "

    iget-object v9, v0, LRh/r;->k:LRh/A;

    iget-object v9, v9, LRh/A;->g:Ljava/lang/String;

    invoke-static {v9}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v10, v0, LRh/r;->a:LRh/z;

    iget-object v10, v10, LRh/z;->i:[B

    invoke-static {v10}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v11, v0, LRh/r;->a:LRh/z;

    iget v12, v11, LRh/z;->a:I

    iget v13, v11, LRh/z;->b:I

    iget v11, v11, LRh/z;->c:I

    iget-object v14, v0, LRh/r;->b:LRh/a;

    iget-boolean v14, v14, LRh/a;->i:Z

    iget-object v15, v0, LRh/r;->g:LRh/s;

    iget-boolean v15, v15, LRh/s;->c:Z

    iget-object v15, v0, LRh/r;->k:LRh/A;

    iget-object v15, v15, LRh/A;->l:Ljava/lang/Object;

    const/16 v16, 0x2

    instance-of v2, v15, Lk7/A;

    if-eqz v2, :cond_0

    check-cast v15, Lk7/A;

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lav/j;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    iget v4, v3, Lu2/Q;->u:I

    invoke-virtual {v3, v4}, Lu2/Q;->E(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    iget-object v4, v4, Lu6/f;->a:Lu6/b;

    iget v4, v4, Lu6/b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move/from16 v19, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    filled-new-array {v2, v3, v4, v14}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3, v2}, LPh/h;->l(I[Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intern(...)"

    invoke-static {v2, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v2

    :try_start_0
    invoke-static {v9}, Lk7/n;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, v1, Lp7/d;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v15, :cond_1

    invoke-interface {v15}, Lk7/A;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_1
    :goto_1
    monitor-exit v2

    return-void

    :cond_2
    :try_start_1
    iget-object v3, v1, Lp7/d;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v4, Ls7/e;

    invoke-direct {v4, v1, v0}, Ls7/e;-><init>(Ls7/g;LRh/r;)V

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v4, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    const-string v7, "io(...)"

    invoke-static {v4, v7}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    if-eqz v19, :cond_4

    if-eqz v15, :cond_3

    iget-object v7, v0, LRh/r;->k:LRh/A;

    iget-boolean v7, v7, LRh/A;->m:Z

    invoke-interface {v15, v7}, Lk7/A;->d(Z)Z

    move-result v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_a

    int-to-double v7, v12

    move-object v9, v3

    move-object v14, v4

    int-to-double v3, v13

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    const/16 v7, 0x438

    int-to-double v7, v7

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    new-instance v4, Landroid/util/Size;

    const/16 v7, 0x1000

    const/16 v8, 0xaaa

    invoke-direct {v4, v7, v8}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-ne v12, v7, :cond_5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-ne v13, v4, :cond_5

    move/from16 v3, v16

    goto :goto_4

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    :goto_4
    sget-boolean v4, LJe/d;->i:Z

    if-eqz v4, :cond_8

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :goto_5
    const/4 v7, 0x1

    if-le v3, v7, :cond_8

    iput v3, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v7, v10

    const/4 v8, 0x0

    invoke-static {v10, v8, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v7, v8, :cond_6

    move v7, v8

    :cond_6
    const/16 v8, 0x21c

    if-gt v7, v8, :cond_7

    div-int/lit8 v3, v3, 0x2

    goto :goto_5

    :cond_7
    iget-object v4, v1, Lp7/d;->a:Ljava/lang/String;

    const-string v7, "checkInSampleSize, adjustInSampleSize: "

    invoke-static {v3, v7, v4}, LF1/T2;->d(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v4, v1, Lp7/d;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", inSampleSize: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {v10, v11, v3, v4, v7}, LF1/w4;->d([BIILandroid/net/Uri;Z)LF1/w4;

    move-result-object v3

    if-eqz v3, :cond_9

    const/4 v7, 0x1

    iput-boolean v7, v3, LF1/w4;->d:Z

    iget-object v4, v0, LRh/r;->j:LRh/y;

    iget-boolean v4, v4, LRh/y;->j:Z

    iget-object v4, v0, LRh/r;->b:LRh/a;

    iget-boolean v4, v4, LRh/a;->j:Z

    iput-boolean v4, v3, LF1/w4;->n:Z

    sget-boolean v4, LQg/f;->h:Z

    if-eqz v4, :cond_b

    invoke-static {}, LQg/f;->m()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v3, LF1/w4;->b:Landroid/graphics/Bitmap;

    const-string v6, "getBitmap(...)"

    invoke-static {v4, v6}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x64

    invoke-static {v6, v4}, Lvr/j;->g(ILandroid/graphics/Bitmap;)[B

    move-result-object v4

    iget-object v6, v3, LF1/w4;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, v3, LF1/w4;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v8, v0, LRh/r;->k:LRh/A;

    iget-object v8, v8, LRh/A;->b:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, LQg/f;->q(Ljava/lang/String;[B)V

    goto :goto_6

    :cond_9
    invoke-static {v15}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-interface {v15}, Lk7/A;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_a
    move-object v9, v3

    move-object v14, v4

    const/4 v4, 0x0

    move-object v3, v4

    :cond_b
    :goto_6
    :try_start_2
    invoke-virtual {v9}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    if-nez v4, :cond_c

    iget-object v0, v1, Lp7/d;->a:Ljava/lang/String;

    const-string v3, "insert preview picture:uri is null"

    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_c
    if-eqz v3, :cond_d

    :try_start_3
    invoke-virtual {v3, v4}, LF1/w4;->u(Landroid/net/Uri;)V

    invoke-static {v15}, Lfv/l;->e(Ljava/lang/Object;)V

    const/4 v7, 0x1

    invoke-interface {v15, v3, v7}, Lk7/A;->m(LF1/w4;Z)V

    :cond_d
    iget-object v5, v1, Lp7/d;->a:Ljava/lang/String;

    const-string v6, "image save try to create thumbnail S"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ls7/f;

    invoke-direct {v5, v1, v0, v3, v4}, Ls7/f;-><init>(Ls7/g;LRh/r;LF1/w4;Landroid/net/Uri;)V

    invoke-static {v14, v5}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    :goto_7
    :try_start_4
    iget-object v1, v1, Lp7/d;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, LPu/A;->a:LPu/A;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_8
    monitor-exit v2

    return-void

    :goto_9
    monitor-exit v2

    throw v0
.end method

.method public final b(LRh/r;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRh/r<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "parallelTaskData"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LRh/r;->b:LRh/a;

    iget-boolean v0, v0, LRh/a;->l:Z

    const/4 v1, 0x0

    iget-object v2, p1, LRh/r;->k:LRh/A;

    if-eqz v0, :cond_2

    iget-object v0, v2, LRh/A;->l:Ljava/lang/Object;

    instance-of v2, v0, Lk7/A;

    if-eqz v2, :cond_0

    check-cast v0, Lk7/A;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lk7/A;->onProcessorJpegFinish(LRh/r;)V

    :cond_1
    iget-object p0, p0, Lp7/d;->a:Ljava/lang/String;

    const-string p1, "isCollage return"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    iget-object p0, v2, LRh/A;->g:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, p1, LRh/r;->a:LRh/z;

    iget-object p0, p0, LRh/z;->i:[B

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    const-string p0, "StoPre"

    return-object p0
.end method

.method public final h(LRh/r;Ljava/io/FileDescriptor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRh/r<",
            "*>;",
            "Ljava/io/FileDescriptor;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, LRh/r;->k:LRh/A;

    iget-object v1, v0, LRh/A;->b:Ljava/lang/String;

    iget-object v0, p0, Lp7/d;->a:Ljava/lang/String;

    const-string/jumbo v2, "saveToHeic:"

    invoke-static {v2, v1}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p1, LRh/r;->a:LRh/z;

    iget-object v2, v0, LRh/z;->i:[B

    invoke-static {v2}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, LRh/r;->e([B)Lrf/b;

    move-result-object v0

    invoke-static {v0}, Lrf/a;->f(Lrf/b;)[B

    move-result-object v0

    array-length v6, v2

    invoke-static {v2, v3, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {p1}, Ls7/g;->g(LRh/r;)I

    move-result p1

    new-instance v7, Lom/g$a;

    const/4 v8, 0x0

    const/4 v12, 0x2

    move-object v9, p2

    invoke-direct/range {v7 .. v12}, Lom/g$a;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;III)V

    iget-object p2, p0, Ls7/g;->c:Landroid/os/Handler;

    iput-object p2, v7, Lom/g$a;->j:Landroid/os/Handler;

    invoke-virtual {v7}, Lom/g$a;->a()Lom/g;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Lom/i;->o()V

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lom/i;->e(Z)V

    iget v7, p2, Lom/i;->a:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v7, p2, Lom/i;->h:Lom/f;

    if-eqz v7, :cond_0

    invoke-virtual {v7, v6}, Lom/d;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    array-length v7, v0

    invoke-virtual {p2, v7, v0}, Lom/i;->a(I[B)V

    invoke-virtual {p2}, Lom/i;->q()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p2}, Lom/i;->close()V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p2, v0

    iget-object v0, p0, Lp7/d;->a:Ljava/lang/String;

    const-string/jumbo v6, "saveToHeic:failed ex:"

    invoke-static {v6, p2}, LF1/o2;->c(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, p2, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Not valid in input mode "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    :try_start_6
    iget-object v7, p0, Lp7/d;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saveToHeic:failed e: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v8}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {p2}, Lom/i;->close()V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p2, v0

    iget-object v0, p0, Lp7/d;->a:Ljava/lang/String;

    const-string/jumbo v6, "saveToHeic:failed ex:"

    invoke-static {v6, p2}, LF1/o2;->c(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, p2, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    if-lez p1, :cond_3

    array-length p2, v2

    if-ge p2, p1, :cond_3

    int-to-long p1, p1

    invoke-static {v9}, Lcom/android/camera/storage/CameraUtils;->a(Ljava/io/FileDescriptor;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {v0, p1, p2}, Lcom/android/camera/storage/CameraUtils;->truncateFileByFd(IJ)I

    :cond_3
    :goto_4
    iget-object p0, p0, Lp7/d;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveToHeic:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",cost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_5
    :try_start_8
    invoke-virtual {p2}, Lom/i;->close()V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object p2, v0

    iget-object p0, p0, Lp7/d;->a:Ljava/lang/String;

    const-string/jumbo v0, "saveToHeic:failed ex:"

    invoke-static {v0, p2}, LF1/o2;->c(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    throw p1
.end method
