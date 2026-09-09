.class public final LK7/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/LinkedHashMap;

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:J

.field public static i:I

.field public static j:I

.field public static k:J

.field public static l:I

.field public static m:J

.field public static n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, LK7/l;->a:Ljava/util/LinkedHashMap;

    const-string v0, "Unknown"

    sput-object v0, LK7/l;->n:Ljava/lang/String;

    return-void
.end method

.method public static a(Lgq/h;)V
    .locals 3

    invoke-static {}, Ldq/d;->c()Ldq/d;

    move-result-object v0

    invoke-virtual {v0}, Ldq/d;->e()V

    invoke-static {}, Ldq/d;->c()Ldq/d;

    move-result-object v0

    iget-object v0, v0, Ldq/d;->b:Ldq/c;

    const-string v1, "getCurrentStatus(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, v0, Ldq/c;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "attr_mem_free"

    invoke-virtual {p0, v1, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, v0, Ldq/c;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "attr_mem_cache"

    invoke-virtual {p0, v1, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, v0, Ldq/c;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "attr_mem_available"

    invoke-virtual {p0, v1, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Ldq/c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "attr_psi_cpu"

    invoke-virtual {p0, v1, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Ldq/c;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "attr_psi_mem"

    invoke-virtual {p0, v1, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Ldq/c;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "attr_psi_io"

    invoke-virtual {p0, v1, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Ldq/c;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "attr_cpu_temp"

    invoke-virtual {p0, v1, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attr_cpu_max_frequency"

    iget-object v2, v0, Ldq/c;->l:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, v0, Ldq/c;->d:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "attr_temp"

    invoke-virtual {p0, v1, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v0, Ldq/c;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "attr_battery_level"

    invoke-virtual {p0, v0, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lev/a;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    const-string/jumbo v1, "sCameraWorkScheduler"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LF1/X1;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, LF1/X1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public static final c(Z)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, LK7/l;->m:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    sub-long v4, v0, v2

    :cond_0
    sput-wide v0, LK7/l;->m:J

    sget v0, LK7/l;->l:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LK7/l;->l:I

    const-string v0, "Unknown"

    if-eqz p0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    sget-object v1, LK7/l;->n:Ljava/lang/String;

    :goto_0
    sput-object v0, LK7/l;->n:Ljava/lang/String;

    new-instance v0, LK7/k;

    invoke-direct {v0, v4, v5, v1, p0}, LK7/k;-><init>(JLjava/lang/String;Z)V

    invoke-static {v0}, LK7/l;->b(Lev/a;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 5

    sget-object v0, LK7/l;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LK7/i;

    invoke-direct {v0, p0, v3, v4}, LK7/i;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, LK7/l;->b(Lev/a;)V

    :cond_0
    return-void
.end method
