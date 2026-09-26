.class public LZv/b;
.super LZv/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LZv/g<",
        "Ljava/util/List<",
        "+",
        "LZv/g<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lfv/n;


# direct methods
.method public constructor <init>(Ljava/util/List;Lev/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "LZv/g<",
            "*>;>;",
            "Lev/l<",
            "-",
            "Lvv/B;",
            "+",
            "Llw/C;",
            ">;)V"
        }
    .end annotation

    const-string v0, "computeType"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, LZv/g;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lfv/n;

    iput-object p2, p0, LZv/b;->b:Lfv/n;

    return-void
.end method


# virtual methods
.method public final a(Lvv/B;)Llw/C;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LZv/b;->b:Lfv/n;

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llw/C;

    invoke-static {p0}, Lsv/j;->y(Llw/C;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lsv/j;->F(Llw/C;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lsv/m$a;->V:LUv/c;

    invoke-virtual {p1}, LUv/c;->i()LUv/d;

    move-result-object p1

    invoke-static {p0, p1}, Lsv/j;->B(Llw/C;LUv/d;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lsv/m$a;->W:LUv/c;

    invoke-virtual {p1}, LUv/c;->i()LUv/d;

    move-result-object p1

    invoke-static {p0, p1}, Lsv/j;->B(Llw/C;LUv/d;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lsv/m$a;->X:LUv/c;

    invoke-virtual {p1}, LUv/c;->i()LUv/d;

    move-result-object p1

    invoke-static {p0, p1}, Lsv/j;->B(Llw/C;LUv/d;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lsv/m$a;->Y:LUv/c;

    invoke-virtual {p1}, LUv/c;->i()LUv/d;

    move-result-object p1

    invoke-static {p0, p1}, Lsv/j;->B(Llw/C;LUv/d;)Z

    :cond_0
    return-object p0
.end method
