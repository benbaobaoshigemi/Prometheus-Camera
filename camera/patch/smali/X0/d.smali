.class public final LX0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LH8/n;

.field public final b:LW0/O;

.field public final c:J

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(LH8/n;LW0/O;)V
    .locals 3

    const-string/jumbo v0, "runnableScheduler"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX0/d;->a:LH8/n;

    iput-object p2, p0, LX0/d;->b:LW0/O;

    iput-wide v0, p0, LX0/d;->c:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX0/d;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, LX0/d;->e:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(LW0/u;)V
    .locals 2

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LX0/d;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LX0/d;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p1, :cond_0

    iget-object p0, p0, LX0/d;->a:LH8/n;

    invoke-virtual {p0, p1}, LH8/n;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b(LW0/u;)V
    .locals 3

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LI2/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, LI2/o;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, LX0/d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, LX0/d;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object p1, p0, LX0/d;->a:LH8/n;

    iget-wide v1, p0, LX0/d;->c:J

    invoke-virtual {p1, v0, v1, v2}, LH8/n;->f(Ljava/lang/Runnable;J)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
