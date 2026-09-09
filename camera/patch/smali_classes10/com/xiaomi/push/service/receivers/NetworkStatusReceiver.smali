.class public Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Z


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->b:Z

    const/4 p0, 0x1

    .line 5
    sput-boolean p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->a:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .line 3
    invoke-static {p1}, LSt/x;->b(Landroid/content/Context;)LSt/x;

    move-result-object p0

    invoke-virtual {p0}, LSt/x;->m()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-static {p1}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object p0

    .line 5
    iget-object p0, p0, LSt/j;->b:LSt/j$a;

    .line 6
    invoke-virtual {p0}, LSt/j$a;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    invoke-static {p1}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object p0

    .line 8
    iget-object p0, p0, LSt/j;->b:LSt/j$a;

    .line 9
    iget-boolean p0, p0, LSt/j$a;->g:Z

    if-eqz p0, :cond_0

    .line 10
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 11
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 12
    const-string v0, "com.xiaomi.push.network_status_changed"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {p1}, Lcom/xiaomi/push/service/a;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/a;->c(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-static {p0}, LGr/b;->i(Ljava/lang/Throwable;)V

    .line 15
    :cond_0
    :goto_0
    sget-object p0, Lou/N2;->a:Lou/h;

    .line 16
    invoke-static {}, Lou/u;->f()Lou/v;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0}, Lou/v;->a()I

    move-result p0

    .line 18
    :goto_1
    sput p0, Lou/N2;->b:I

    .line 19
    invoke-static {}, Lou/u;->h()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p1}, LSt/x;->b(Landroid/content/Context;)LSt/x;

    move-result-object p0

    invoke-virtual {p0}, LSt/x;->o()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 20
    invoke-static {p1}, LSt/x;->b(Landroid/content/Context;)LSt/x;

    move-result-object p0

    .line 21
    iget-object v1, p0, LSt/x;->i:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, LSt/x;->g:J

    .line 23
    iget-object v1, p0, LSt/x;->i:Landroid/content/Intent;

    invoke-virtual {p0, v1}, LSt/x;->p(Landroid/content/Intent;)V

    .line 24
    iput-object v0, p0, LSt/x;->i:Landroid/content/Intent;

    .line 25
    :cond_2
    invoke-static {}, Lou/u;->h()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 26
    invoke-static {p1}, LSt/u;->b(Landroid/content/Context;)LSt/u;

    move-result-object p0

    sget-object v1, LSt/y;->a:LSt/y;

    invoke-virtual {p0, v1}, LSt/u;->c(LSt/y;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "syncing"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 27
    sget-object p0, Lcom/xiaomi/mipush/sdk/b;->a:Landroid/content/Context;

    .line 28
    invoke-static {p1}, LSt/x;->b(Landroid/content/Context;)LSt/x;

    move-result-object p0

    const/4 v2, 0x1

    .line 29
    invoke-virtual {p0, v0, v2}, LSt/x;->h(Ljava/lang/String;Z)V

    .line 30
    :cond_3
    invoke-static {p1}, LSt/u;->b(Landroid/content/Context;)LSt/u;

    move-result-object p0

    sget-object v2, LSt/y;->b:LSt/y;

    invoke-virtual {p0, v2}, LSt/u;->c(LSt/y;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 31
    sget-object p0, Lcom/xiaomi/mipush/sdk/b;->a:Landroid/content/Context;

    .line 32
    invoke-static {p1}, LSt/x;->b(Landroid/content/Context;)LSt/x;

    move-result-object p0

    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, v0, v2}, LSt/x;->h(Ljava/lang/String;Z)V

    .line 34
    :cond_4
    invoke-static {p1}, LSt/u;->b(Landroid/content/Context;)LSt/u;

    move-result-object p0

    sget-object v2, LSt/y;->c:LSt/y;

    invoke-virtual {p0, v2}, LSt/u;->c(LSt/y;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    sget-object v3, LSt/k;->a:LSt/k;

    const-string v4, "net"

    if-eqz p0, :cond_5

    .line 35
    invoke-static {p1}, LSt/x;->b(Landroid/content/Context;)LSt/x;

    move-result-object p0

    invoke-virtual {p0, v0, v2, v3, v4}, LSt/x;->f(Ljava/lang/String;LSt/y;LSt/k;Ljava/lang/String;)V

    .line 36
    :cond_5
    invoke-static {p1}, LSt/u;->b(Landroid/content/Context;)LSt/u;

    move-result-object p0

    sget-object v5, LSt/y;->d:LSt/y;

    invoke-virtual {p0, v5}, LSt/u;->c(LSt/y;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 37
    invoke-static {p1}, LSt/x;->b(Landroid/content/Context;)LSt/x;

    move-result-object p0

    invoke-virtual {p0, v0, v2, v3, v4}, LSt/x;->f(Ljava/lang/String;LSt/y;LSt/k;Ljava/lang/String;)V

    .line 38
    :cond_6
    invoke-static {p1}, LSt/u;->b(Landroid/content/Context;)LSt/u;

    move-result-object p0

    sget-object v2, LSt/y;->e:LSt/y;

    invoke-virtual {p0, v2}, LSt/u;->c(LSt/y;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 39
    invoke-static {p1}, LSt/x;->b(Landroid/content/Context;)LSt/x;

    move-result-object p0

    sget-object v3, LSt/k;->c:LSt/k;

    invoke-virtual {p0, v0, v2, v3, v4}, LSt/x;->f(Ljava/lang/String;LSt/y;LSt/k;Ljava/lang/String;)V

    .line 40
    :cond_7
    invoke-static {p1}, LSt/u;->b(Landroid/content/Context;)LSt/u;

    move-result-object p0

    sget-object v2, LSt/y;->f:LSt/y;

    invoke-virtual {p0, v2}, LSt/u;->c(LSt/y;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 41
    invoke-static {p1}, LSt/x;->b(Landroid/content/Context;)LSt/x;

    move-result-object p0

    sget-object p1, LSt/k;->d:LSt/k;

    invoke-virtual {p0, v0, v2, p1, v4}, LSt/x;->f(Ljava/lang/String;LSt/y;LSt/k;Ljava/lang/String;)V

    .line 42
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :cond_9
    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->a:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-boolean p2, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->b:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lou/u;->l()V

    sget-object p2, Lou/T3;->b:Landroid/os/Handler;

    if-nez p2, :cond_2

    sget-object p2, Lou/T3;->c:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-object v0, Lou/T3;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "receiver_task"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lou/T3;->b:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p2, Lou/T3;->b:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver$a;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver$a;-><init>(Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
