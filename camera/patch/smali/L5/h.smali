.class public final LL5/h;
.super Li0/T$b;
.source "SourceFile"


# instance fields
.field public final c:LL5/d;


# direct methods
.method public constructor <init>(LL5/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Li0/T$b;-><init>(I)V

    iput-object p1, p0, LL5/h;->c:LL5/d;

    return-void
.end method


# virtual methods
.method public final b(Li0/T;)V
    .locals 0

    return-void
.end method

.method public final d(Li0/f0;Ljava/util/List;)Li0/f0;
    .locals 5
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

    const-string v0, "insets"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "runningAnimations"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Li0/f0;->a:Li0/f0$j;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Li0/f0$j;->f(I)LZ/d;

    move-result-object v0

    const-string v1, "getInsets(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x7

    invoke-virtual {p2, v2}, Li0/f0$j;->f(I)LZ/d;

    move-result-object p2

    invoke-static {p2, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, LZ/d;->a:I

    iget v2, p2, LZ/d;->a:I

    sub-int/2addr v1, v2

    iget v2, v0, LZ/d;->b:I

    iget v3, p2, LZ/d;->b:I

    sub-int/2addr v2, v3

    iget v3, v0, LZ/d;->c:I

    iget v4, p2, LZ/d;->c:I

    sub-int/2addr v3, v4

    iget v0, v0, LZ/d;->d:I

    iget p2, p2, LZ/d;->d:I

    sub-int/2addr v0, p2

    invoke-static {v1, v2, v3, v0}, LZ/d;->b(IIII)LZ/d;

    move-result-object p2

    iget v0, p2, LZ/d;->a:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p2, LZ/d;->b:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p2, LZ/d;->c:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p2, p2, LZ/d;->d:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, v2, v3, p2}, LZ/d;->b(IIII)LZ/d;

    move-result-object p2

    iget-object p0, p0, LL5/h;->c:LL5/d;

    if-eqz p0, :cond_0

    iget v0, p2, LZ/d;->d:I

    iget p2, p2, LZ/d;->b:I

    sub-int/2addr v0, p2

    invoke-interface {p0, v0}, LL5/d;->a(I)V

    :cond_0
    return-object p1
.end method
