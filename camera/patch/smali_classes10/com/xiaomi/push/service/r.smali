.class public final Lcom/xiaomi/push/service/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/r$a;,
        Lcom/xiaomi/push/service/r$b;
    }
.end annotation


# static fields
.field public static a:J

.field public static b:J

.field public static c:Z


# direct methods
.method public static a(Landroid/content/Context;Ljava/io/InputStream;)I
    .locals 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x43200000    # 160.0f

    div-float/2addr p0, p1

    const/high16 p1, 0x42400000    # 48.0f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le p1, p0, :cond_1

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v0, p0, :cond_1

    div-int/2addr p1, p0

    div-int/2addr v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const-string p0, "decode dimension failed for bitmap."

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {p0, v1}, Lcom/xiaomi/push/service/r;->a(Landroid/content/Context;Ljava/io/InputStream;)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0}, LK5/a;->s(Ljava/io/Closeable;)V

    invoke-static {v1}, LK5/a;->s(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p0, v0

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    :goto_0
    :try_start_3
    invoke-static {p1}, LGr/b;->i(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {p0}, LK5/a;->s(Ljava/io/Closeable;)V

    invoke-static {v1}, LK5/a;->s(Ljava/io/Closeable;)V

    return-object v0

    :goto_1
    invoke-static {v0}, LK5/a;->s(Ljava/io/Closeable;)V

    invoke-static {v1}, LK5/a;->s(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static c(Ljava/lang/String;Z)Lcom/xiaomi/push/service/r$a;
    .locals 10

    const-string v0, "Invalid Http Response Code "

    const-string v1, "Bitmap size is too big, max size is 102400  contentLen size is "

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v4, 0x1f40

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v4, 0x4e20

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v4, "User-agent"

    const-string v5, "Mozilla/5.0 (Linux; U;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser"

    invoke-virtual {v3, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    const v5, 0x19000

    if-eqz p1, :cond_0

    if-le v4, v5, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from url "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lvr/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LGr/b;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    move-object v0, v2

    goto/16 :goto_3

    :catch_1
    move-object v0, v2

    goto/16 :goto_5

    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v4, 0xc8

    if-eq v1, v4, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " received"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LGr/b;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p1, :cond_2

    move p1, v5

    goto :goto_0

    :cond_2
    const p1, 0x1f4000

    :goto_0
    const/16 v4, 0x400

    new-array v6, v4, [B

    :goto_1
    if-lez p1, :cond_4

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    goto :goto_2

    :cond_3
    sub-int/2addr p1, v8

    invoke-virtual {v1, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_7

    :catch_2
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    if-gtz p1, :cond_5

    const-string p1, "length 102400 exhausted."

    invoke-static {p1}, LGr/b;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/xiaomi/push/service/r$a;

    invoke-direct {p1, v2, v5}, Lcom/xiaomi/push/service/r$a;-><init>([BI)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v0}, LK5/a;->s(Ljava/io/Closeable;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_5
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    new-instance v1, Lcom/xiaomi/push/service/r$a;

    array-length v4, p1

    invoke-direct {v1, p1, v4}, Lcom/xiaomi/push/service/r$a;-><init>([BI)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v0}, LK5/a;->s(Ljava/io/Closeable;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_2
    move-exception p0

    move-object v3, v2

    goto :goto_7

    :catch_3
    move-exception p0

    move-object v0, v2

    move-object v3, v0

    goto :goto_3

    :catch_4
    move-object v0, v2

    move-object v3, v0

    goto :goto_5

    :goto_3
    :try_start_6
    invoke-static {p0}, LGr/b;->i(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v0}, LK5/a;->s(Ljava/io/Closeable;)V

    if-eqz v3, :cond_6

    :goto_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    :catch_5
    :goto_5
    :try_start_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connect timeout to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->t(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {v0}, LK5/a;->s(Ljava/io/Closeable;)V

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    :goto_6
    return-object v2

    :goto_7
    invoke-static {v2}, LK5/a;->s(Ljava/io/Closeable;)V

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Z)Lcom/xiaomi/push/service/r$b;
    .locals 6

    new-instance v0, Lcom/xiaomi/push/service/r$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaomi/push/service/r$b;->a:Landroid/graphics/Bitmap;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/xiaomi/push/service/r$b;->b:J

    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaomi/push/service/r;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, v0, Lcom/xiaomi/push/service/r$b;->a:Landroid/graphics/Bitmap;

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p1, p2}, Lcom/xiaomi/push/service/r;->c(Ljava/lang/String;Z)Lcom/xiaomi/push/service/r$a;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lcom/xiaomi/push/service/r$a;->a:[B

    iget v2, v2, Lcom/xiaomi/push/service/r$a;->b:I

    int-to-long v4, v2

    iput-wide v4, v0, Lcom/xiaomi/push/service/r$b;->b:J

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0, p2}, Lcom/xiaomi/push/service/r;->a(Landroid/content/Context;Ljava/io/InputStream;)I

    move-result v1

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v1, v3

    invoke-static {v3, v2, v1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/r$b;->a:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, p2

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, p2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, p2

    goto :goto_1

    :cond_2
    :try_start_2
    array-length p2, v3

    invoke-static {v3, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, v0, Lcom/xiaomi/push/service/r$b;->a:Landroid/graphics/Bitmap;

    :cond_3
    :goto_0
    invoke-static {p0, v3, p1}, Lcom/xiaomi/push/service/r;->f(Landroid/content/Context;[BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, LK5/a;->s(Ljava/io/Closeable;)V

    return-object v0

    :goto_1
    :try_start_3
    invoke-static {p0}, LGr/b;->i(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, LK5/a;->s(Ljava/io/Closeable;)V

    :goto_2
    return-object v0

    :goto_3
    invoke-static {v1}, LK5/a;->s(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "mipush_icon"

    invoke-static {v0, p0, v1}, LS1/h;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 12

    if-nez p1, :cond_0

    const-string p0, "cannot save small icon cause bitmap is null"

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const-class v0, Lcom/xiaomi/push/service/r;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/push/service/r;->h(Landroid/content/Context;)V

    sget-wide v1, Lcom/xiaomi/push/service/r;->a:J

    const-wide/32 v3, 0x3c00000

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x0

    if-gez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/xiaomi/push/service/r;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x48190800

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    monitor-exit v0

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_d

    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/xiaomi/push/service/r;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v1, "The pic cache dir do not exists."

    invoke-static {v1}, LGr/b;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    goto/16 :goto_6

    :catchall_1
    move-exception v1

    goto :goto_4

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_8

    const/4 v4, 0x1

    :try_start_3
    array-length v5, v1

    if-le v5, v4, :cond_3

    new-instance v5, Lcom/xiaomi/push/service/q;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sort pic cache error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LGr/b;->t(Ljava/lang/String;)V

    :cond_3
    :goto_0
    sget-wide v5, Lcom/xiaomi/push/service/r;->a:J

    array-length v7, v1

    sub-int/2addr v7, v4

    :goto_1
    if-ltz v7, :cond_7

    aget-object v4, v1, v7

    if-eqz v4, :cond_6

    const-wide/32 v8, 0x1e00000

    cmp-long v8, v5, v8

    if-gtz v8, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x337f9800

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    sub-long/2addr v5, v8

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_7
    move-wide v7, v2

    :goto_3
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    sput-wide v4, Lcom/xiaomi/push/service/r;->a:J

    sput-wide v7, Lcom/xiaomi/push/service/r;->b:J

    goto :goto_5

    :cond_8
    const-string v1, "The pic cache file list is null."

    invoke-static {v1}, LGr/b;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :goto_4
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clear pic cache error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LGr/b;->t(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    monitor-exit v0

    :goto_6
    const/4 v0, 0x0

    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/xiaomi/push/service/r;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_7

    :catchall_3
    move-exception p0

    move-object p2, v0

    goto/16 :goto_c

    :catch_0
    move-exception p0

    move-object p2, v0

    goto :goto_a

    :cond_9
    :goto_7
    new-instance p0, Ljava/io/File;

    invoke-static {p2}, Lvr/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_a
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    sget-wide v4, Lcom/xiaomi/push/service/r;->a:J

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    sput-wide v4, Lcom/xiaomi/push/service/r;->a:J

    sget-wide v4, Lcom/xiaomi/push/service/r;->b:J

    cmp-long p1, v4, v2

    if-gtz p1, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    sput-wide p0, Lcom/xiaomi/push/service/r;->b:J

    goto :goto_8

    :catchall_4
    move-exception p0

    move-object v0, v1

    goto :goto_c

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_a

    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    sput-wide p0, Lcom/xiaomi/push/service/r;->b:J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_8
    invoke-static {v1}, LK5/a;->s(Ljava/io/Closeable;)V

    :goto_9
    invoke-static {p2}, LK5/a;->s(Ljava/io/Closeable;)V

    goto :goto_b

    :catchall_5
    move-exception p0

    goto :goto_c

    :catch_2
    move-exception p0

    :goto_a
    :try_start_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Save pic error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->t(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-static {v0}, LK5/a;->s(Ljava/io/Closeable;)V

    goto :goto_9

    :goto_b
    return-void

    :goto_c
    invoke-static {v0}, LK5/a;->s(Ljava/io/Closeable;)V

    invoke-static {p2}, LK5/a;->s(Ljava/io/Closeable;)V

    throw p0

    :goto_d
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p0
.end method

.method public static declared-synchronized g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "Load bmp from cache error: "

    const-class v1, Lcom/xiaomi/push/service/r;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lcom/xiaomi/push/service/r;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lvr/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    monitor-exit v1

    return-object v2

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr p0, v4

    const-wide/32 v4, 0x48190800

    cmp-long p0, p0, v4

    if-lez p0, :cond_1

    const-string p0, "The pic cache has expired."

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    move-object p1, v2

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {p0}, LK5/a;->s(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v6, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v6

    :goto_0
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->t(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {v2}, LK5/a;->s(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, p1

    :goto_1
    monitor-exit v1

    return-object v2

    :catchall_3
    move-exception p0

    :try_start_7
    invoke-static {v2}, LK5/a;->s(Ljava/io/Closeable;)V

    throw p0

    :goto_2
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0
.end method

.method public static declared-synchronized h(Landroid/content/Context;)V
    .locals 11

    const-class v0, Lcom/xiaomi/push/service/r;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/xiaomi/push/service/r;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    :try_start_1
    sput-wide v1, Lcom/xiaomi/push/service/r;->a:J

    sput-wide v1, Lcom/xiaomi/push/service/r;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-static {p0}, Lcom/xiaomi/push/service/r;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p0, :cond_1

    :try_start_3
    sput-boolean v3, Lcom/xiaomi/push/service/r;->c:Z

    const-string p0, "Init pic cache finish."

    invoke-static {p0}, LGr/b;->m(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, p0, v5

    sget-wide v7, Lcom/xiaomi/push/service/r;->a:J

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    sput-wide v7, Lcom/xiaomi/push/service/r;->a:J

    sget-wide v7, Lcom/xiaomi/push/service/r;->b:J

    cmp-long v9, v7, v1

    if-gtz v9, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sput-wide v6, Lcom/xiaomi/push/service/r;->b:J

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sput-wide v6, Lcom/xiaomi/push/service/r;->b:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :try_start_5
    sput-boolean v3, Lcom/xiaomi/push/service/r;->c:Z

    const-string p0, "Init pic cache finish."

    :goto_2
    invoke-static {p0}, LGr/b;->m(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init pic cache error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->t(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    sput-boolean v3, Lcom/xiaomi/push/service/r;->c:Z

    const-string p0, "Init pic cache finish."
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :goto_4
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    :try_start_8
    sput-boolean v3, Lcom/xiaomi/push/service/r;->c:Z

    const-string v1, "Init pic cache finish."

    invoke-static {v1}, LGr/b;->m(Ljava/lang/String;)V

    throw p0

    :goto_5
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method
