.class public final Lou/O2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/push/service/XMPushService$A;


# static fields
.field public static d:Z


# instance fields
.field public a:Lcom/xiaomi/push/service/XMPushService;

.field public b:Z

.field public c:I


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lou/O2;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/w;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/w;

    move-result-object v1

    const/16 v2, 0x3f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/w;->n(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lou/O2;->b:Z

    invoke-static {v0}, Lcom/xiaomi/push/service/w;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/w;

    move-result-object v1

    const/16 v2, 0x1c20

    const/16 v4, 0x40

    invoke-virtual {v1, v4, v2}, Lcom/xiaomi/push/service/w;->a(II)I

    move-result v1

    iput v1, p0, Lou/O2;->c:I

    const/16 v2, 0x3c

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lou/O2;->c:I

    iget-boolean v1, p0, Lou/O2;->b:Z

    if-eqz v1, :cond_9

    const-string v1, "mipush_extra"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_tiny_data_upload_timestamp"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget p0, p0, Lou/O2;->c:I

    int-to-long v4, p0

    cmp-long p0, v1, v4

    if-lez p0, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "TinyData TinyDataCacheProcessor.pingFollowUpAction ts:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    invoke-static {v0}, Lou/R2;->a(Landroid/content/Context;)Lou/R2;

    move-result-object p0

    iget-object p0, p0, Lou/R2;->b:Ljava/util/HashMap;

    const-string v1, "UPLOADER_PUSH_CHANNEL"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lou/S2;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "UPLOADER_HTTP"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lou/S2;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-static {}, Lou/u;->h()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "com.xiaomi.xmsf"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    sget-object p0, Lcom/xiaomi/push/service/r0;->a:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v4, "pref_registered_pkg_names"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "tiny_data.data"

    invoke-direct {p0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    sget-boolean p0, Lou/O2;->d:Z

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v0}, Lcom/xiaomi/push/service/w;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/w;

    move-result-object p0

    const/16 v2, 0x69

    invoke-virtual {p0, v2, v5}, Lcom/xiaomi/push/service/w;->n(IZ)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {v0}, Lou/y3;->d(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {v0}, Lou/y3;->g(Lcom/xiaomi/push/service/XMPushService;)Z

    move-result p0

    if-nez p0, :cond_8

    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "TinyData TinyDataCacheProcessor.pingFollowUpAction !canUpload(uploader) ts:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    sput-boolean v3, Lou/O2;->d:Z

    invoke-static {v0}, Lou/e;->b(Landroid/content/Context;)Lou/e;

    move-result-object p0

    new-instance v2, Lou/P2$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lou/P2$a;->b:Lou/S2;

    iput-object v0, v2, Lou/P2$a;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p0, v2, v5}, Lou/e;->c(Ljava/lang/Runnable;I)V

    :cond_9
    return-void
.end method
