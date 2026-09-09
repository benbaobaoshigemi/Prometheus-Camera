.class public final LA3/t;
.super Lur/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA3/t$a;,
        LA3/t$b;
    }
.end annotation


# instance fields
.field public d:LA3/x;

.field public e:LA3/B;

.field public final f:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "LA3/x;",
            ">;"
        }
    .end annotation
.end field

.field public final g:LA3/t$b;

.field public final h:LA3/t$a;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-string p1, "CoordinatorSM"

    invoke-direct {p0, p1}, Lur/f;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/PriorityQueue;

    new-instance v0, LA3/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LA3/w;

    invoke-direct {v1, v0}, LA3/w;-><init>(LA3/v;)V

    invoke-direct {p1, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, LA3/t;->f:Ljava/util/PriorityQueue;

    new-instance p1, LA3/t$b;

    invoke-direct {p1, p0}, LA3/t$b;-><init>(LA3/t;)V

    iput-object p1, p0, LA3/t;->g:LA3/t$b;

    new-instance v0, LA3/t$a;

    invoke-direct {v0, p0}, LA3/t$a;-><init>(LA3/t;)V

    iput-object v0, p0, LA3/t;->h:LA3/t$a;

    invoke-virtual {p0, p1}, Lur/f;->a(Lur/e;)V

    invoke-virtual {p0, v0}, Lur/f;->a(Lur/e;)V

    invoke-virtual {p0, p1}, Lur/f;->l(Lur/e;)V

    invoke-virtual {p0}, Lur/f;->n()V

    return-void
.end method

.method public static final p(LA3/t;LA3/x;)V
    .locals 7

    iget-object v0, p0, LA3/t;->f:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, LA3/x;->a:LA3/C;

    invoke-interface {p1}, LA3/C;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v6

    const/4 v3, 0x0

    const/16 v5, 0x3f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, LQu/u;->C0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lev/l;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enqueueAndStart: "

    const-string v2, ", queueSize="

    const-string v3, ":{"

    invoke-static {v1, p1, v6, v2, v3}, LCs/Q;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lur/f;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, LA3/t;->r()V

    return-void
.end method

.method public static final q(LA3/t;)V
    .locals 9

    iget-object v0, p0, LA3/t;->d:LA3/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, LA3/x;->a:LA3/C;

    invoke-interface {v0}, LA3/C;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, LA3/t;->f:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v8

    const/4 v5, 0x0

    const/16 v7, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, LQu/u;->C0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lev/l;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resetInternal: interrupting="

    const-string v5, ", clearedQueueSize="

    const-string v6, ":{"

    invoke-static {v4, v0, v8, v5, v6}, LCs/Q;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lur/f;->g(Ljava/lang/String;)V

    iget-object v0, p0, LA3/t;->e:LA3/B;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lur/f;->b:Lur/f$c;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Lur/f;->k(Landroid/os/Message;)V

    :cond_1
    iput-object v1, p0, LA3/t;->d:LA3/x;

    iput-object v1, p0, LA3/t;->e:LA3/B;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->clear()V

    return-void
.end method


# virtual methods
.method public final r()V
    .locals 9

    iget-object v0, p0, LA3/t;->f:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, LA3/x;

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v1, v6, LA3/x;->a:LA3/C;

    invoke-interface {v1}, LA3/C;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x3f

    invoke-static/range {v0 .. v5}, LQu/u;->C0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lev/l;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "scheduleNext: "

    const-string v2, ", remainingQueueSize="

    const-string v3, ":{"

    invoke-static {v1, v7, v8, v2, v3}, LCs/Q;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lur/f;->g(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, LA3/t;->s(LA3/x;)V

    return-void
.end method

.method public final s(LA3/x;)V
    .locals 5

    iget-object v0, p1, LA3/x;->a:LA3/C;

    invoke-interface {v0}, LA3/C;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, LA3/C;->d()LA3/D;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startFeature: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lur/f;->g(Ljava/lang/String;)V

    iput-object p1, p0, LA3/t;->d:LA3/x;

    new-instance v1, LA3/B;

    invoke-interface {v0}, LA3/C;->d()LA3/D;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Feature_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LA3/B;-><init>(Ljava/lang/String;LA3/C;)V

    new-instance v0, LA3/o;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, LA3/o;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v1, LA3/B;->e:Lev/a;

    new-instance p1, LA3/p;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0, v1}, LA3/p;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, v1, LA3/B;->f:Lev/a;

    new-instance p1, LA3/q;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0}, LA3/q;-><init>(Ljava/lang/Object;I)V

    iput-object p1, v1, LA3/B;->g:Lev/a;

    iput-object v1, p0, LA3/t;->e:LA3/B;

    iget-object p0, v1, Lur/f;->b:Lur/f$c;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Lur/f;->k(Landroid/os/Message;)V

    return-void
.end method
