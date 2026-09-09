.class public Lcom/xiaomi/onetrack/api/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/api/ah$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BroadcastManager"

.field private static b:Ljava/lang/String; = "onetrack_broadcast_manager"

.field private static volatile c:Lcom/xiaomi/onetrack/api/ah; = null

.field private static final e:I = 0xa

.field private static final f:I = 0x64

.field private static final g:I = 0x65

.field private static volatile h:Z

.field private static volatile j:Z


# instance fields
.field private d:Landroid/os/Handler;

.field private i:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaomi/onetrack/api/ao;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Z

.field private m:Z

.field private n:Landroid/content/BroadcastReceiver;

.field private o:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/ah;->l:Z

    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/ah;->m:Z

    new-instance v0, Lcom/xiaomi/onetrack/api/ai;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/ai;-><init>(Lcom/xiaomi/onetrack/api/ah;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->n:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/xiaomi/onetrack/api/aj;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/aj;-><init>(Lcom/xiaomi/onetrack/api/ah;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->o:Landroid/content/BroadcastReceiver;

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/xiaomi/onetrack/api/ah;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/xiaomi/onetrack/api/ah$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/xiaomi/onetrack/api/ah$a;-><init>(Lcom/xiaomi/onetrack/api/ah;Landroid/os/Looper;Lcom/xiaomi/onetrack/api/ai;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/api/ah;->d:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/ah;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ah;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/api/ah;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaomi/onetrack/api/ah;->c:Lcom/xiaomi/onetrack/api/ah;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/api/ah;->b()V

    .line 5
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/api/ah;->c:Lcom/xiaomi/onetrack/api/ah;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .line 8
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ah;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/onetrack/api/ao;

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    .line 9
    invoke-interface {v0, v1}, Lcom/xiaomi/onetrack/api/ao;->a(Z)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Lcom/xiaomi/onetrack/api/ao;->a(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/ah;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/ah;->a(I)V

    return-void
.end method

.method public static synthetic b(Lcom/xiaomi/onetrack/api/ah;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ah;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static b()V
    .locals 2

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/api/ah;->c:Lcom/xiaomi/onetrack/api/ah;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/xiaomi/onetrack/api/ah;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/api/ah;->c:Lcom/xiaomi/onetrack/api/ah;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/xiaomi/onetrack/api/ah;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/api/ah;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/api/ah;->c:Lcom/xiaomi/onetrack/api/ah;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/xiaomi/onetrack/api/ah;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/onetrack/api/ah;->l:Z

    return p0
.end method

.method public static synthetic d(Lcom/xiaomi/onetrack/api/ah;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/onetrack/api/ah;->m:Z

    return p0
.end method

.method private g()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ah;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "BroadcastManager"

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "register screen receiver"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private h()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ah;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "BroadcastManager"

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "register net receiver"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/onetrack/api/ao;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ah;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/ah;->l:Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/ah;->m:Z

    return-void
.end method

.method public e()V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/onetrack/api/ah;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/onetrack/api/ah;->h:Z

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ah;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/xiaomi/onetrack/api/ah;->h:Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    sget-boolean v0, Lcom/xiaomi/onetrack/api/ah;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/onetrack/api/ah;->j:Z

    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->b()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get network status for the first time, isNetworkConnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastManager"

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/m;->b(Z)V

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ah;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/xiaomi/onetrack/api/ah;->j:Z

    :cond_0
    return-void
.end method
