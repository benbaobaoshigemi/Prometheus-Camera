.class public final LK0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ0/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LK0/d$a;,
        LK0/d$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:LJ0/c$a;

.field public final d:Z

.field public final e:Z

.field public final f:LPu/n;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;LJ0/c$a;ZZ)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p3, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK0/d;->a:Landroid/content/Context;

    iput-object p2, p0, LK0/d;->b:Ljava/lang/String;

    iput-object p3, p0, LK0/d;->c:LJ0/c$a;

    iput-boolean p4, p0, LK0/d;->d:Z

    iput-boolean p5, p0, LK0/d;->e:Z

    new-instance p1, LK0/d$c;

    invoke-direct {p1, p0}, LK0/d$c;-><init>(LK0/d;)V

    invoke-static {p1}, LBw/i;->M(Lev/a;)LPu/n;

    move-result-object p1

    iput-object p1, p0, LK0/d;->f:LPu/n;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, LK0/d;->f:LPu/n;

    iget-object v0, v0, LPu/n;->b:Ljava/lang/Object;

    sget-object v1, LPu/w;->a:LPu/w;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, LK0/d;->f:LPu/n;

    invoke-virtual {p0}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK0/d$b;

    invoke-virtual {p0}, LK0/d$b;->close()V

    :cond_0
    return-void
.end method

.method public final f0()LJ0/b;
    .locals 1

    iget-object p0, p0, LK0/d;->f:LPu/n;

    invoke-virtual {p0}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK0/d$b;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LK0/d$b;->a(Z)LJ0/b;

    move-result-object p0

    return-object p0
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 2

    iget-object v0, p0, LK0/d;->f:LPu/n;

    iget-object v0, v0, LPu/n;->b:Ljava/lang/Object;

    sget-object v1, LPu/w;->a:LPu/w;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LK0/d;->f:LPu/n;

    invoke-virtual {v0}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK0/d$b;

    const-string/jumbo v1, "sQLiteOpenHelper"

    invoke-static {v0, v1}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, LK0/d;->g:Z

    return-void
.end method
