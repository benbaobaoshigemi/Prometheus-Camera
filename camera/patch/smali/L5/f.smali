.class public final LL5/f;
.super Li0/T$b;
.source "SourceFile"

# interfaces
.implements Li0/r;


# instance fields
.field public final c:LL5/d;

.field public d:Landroid/view/View;

.field public e:Li0/f0;

.field public f:Z


# direct methods
.method public constructor <init>(LL5/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Li0/T$b;-><init>(I)V

    iput-object p1, p0, LL5/f;->c:LL5/d;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Li0/f0;)Li0/f0;
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LL5/f;->d:Landroid/view/View;

    iput-object p2, p0, LL5/f;->e:Li0/f0;

    iget-boolean p1, p0, LL5/f;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/16 p1, 0xf

    :goto_0
    iget-object p2, p2, Li0/f0;->a:Li0/f0$j;

    invoke-virtual {p2, p1}, Li0/f0$j;->f(I)LZ/d;

    move-result-object p1

    const-string p2, "getInsets(...)"

    invoke-static {p1, p2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LL5/f;->c:LL5/d;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, LL5/d;->b(LZ/d;)V

    :cond_1
    sget-object p0, Li0/f0;->b:Li0/f0;

    const-string p1, "CONSUMED"

    invoke-static {p0, p1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Li0/T;)V
    .locals 1

    iget-boolean v0, p0, LL5/f;->f:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Li0/T;->a:Li0/T$e;

    invoke-virtual {p1}, Li0/T$e;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, LL5/f;->f:Z

    iget-object p1, p0, LL5/f;->e:Li0/f0;

    if-eqz p1, :cond_0

    iget-object p0, p0, LL5/f;->d:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Li0/E;->b(Landroid/view/View;Li0/f0;)Li0/f0;

    :cond_0
    return-void
.end method

.method public final c(Li0/T;)V
    .locals 0

    iget-object p1, p1, Li0/T;->a:Li0/T$e;

    invoke-virtual {p1}, Li0/T$e;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LL5/f;->f:Z

    :cond_0
    return-void
.end method

.method public final d(Li0/f0;Ljava/util/List;)Li0/f0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li0/f0;",
            "Ljava/util/List<",
            "Li0/T;",
            ">;)",
            "Li0/f0;"
        }
    .end annotation

    const-string p0, "insets"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "runningAnims"

    invoke-static {p2, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
