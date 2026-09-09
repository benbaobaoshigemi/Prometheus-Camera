.class public final Lcom/android/camera/statistic/SettingUploadWorker$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/statistic/SettingUploadWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Z)V
    .locals 17

    const-string v0, "context"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LW0/P;->a(Landroid/content/Context;)LW0/P;

    move-result-object v0

    const-string v1, "getInstance(context)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/statistic/SettingUploadWorker;->e:Ljava/time/Duration;

    sget-object v2, Lcom/android/camera/statistic/SettingUploadWorker;->f:Ljava/time/Duration;

    sget-wide v3, LQa/b;->e0:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    const-wide/16 v1, 0x1e

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    move-wide v3, v1

    :cond_0
    invoke-static {v3, v4}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    move-object v2, v1

    :cond_1
    if-eqz p1, :cond_2

    move-object v3, v1

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "scheduleSettingUploadJob: initialDelay = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , repeatInterval = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "SettingUploadWorker"

    invoke-static {v4, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, LV0/s$a;

    const-class v2, Lcom/android/camera/statistic/SettingUploadWorker;

    invoke-direct {v1, v2}, LV0/C$a;-><init>(Ljava/lang/Class;)V

    new-instance v2, Lf1/i;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v7, LV0/q;->c:LV0/q;

    new-instance v6, Lf1/i;

    const/4 v5, 0x0

    invoke-direct {v6, v5}, Lf1/i;-><init>(Landroid/net/NetworkRequest;)V

    invoke-static {v2}, LQu/u;->e1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v16

    new-instance v5, LV0/d;

    const/4 v9, 0x0

    const-wide/16 v12, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v14, v12

    invoke-direct/range {v5 .. v16}, LV0/d;-><init>(Lf1/i;LV0/q;ZZZZJJLjava/util/Set;)V

    iget-object v2, v1, LV0/C$a;->c:Le1/y;

    iput-object v5, v2, Le1/y;->j:LV0/d;

    iget-object v2, v1, LV0/C$a;->d:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v2, v1, LV0/C$a;->c:Le1/y;

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    iput-wide v3, v2, Le1/y;->g:J

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, v1, LV0/C$a;->c:Le1/y;

    iget-wide v4, v4, Le1/y;->g:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, LV0/C$a;->c()LV0/C$a;

    invoke-virtual {v1}, LV0/C$a;->a()LV0/C;

    move-result-object v1

    check-cast v1, LV0/s;

    sget-object v2, LV0/h;->a:LV0/h;

    invoke-static {v1}, LBw/i;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v3, LW0/A;

    const-string v4, "SettingUploadUniqueWork"

    invoke-direct {v3, v0, v4, v2, v1}, LW0/A;-><init>(LW0/P;Ljava/lang/String;LV0/h;Ljava/util/List;)V

    invoke-virtual {v3}, LW0/A;->C()LV0/t;

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given initial delay is too large and will cause an overflow!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
