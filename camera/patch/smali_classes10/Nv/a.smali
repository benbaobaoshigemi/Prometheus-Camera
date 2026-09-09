.class public abstract LNv/a;
.super LNv/d;
.source "SourceFile"

# interfaces
.implements Lhw/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNv/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "LNv/d<",
        "TA;",
        "LNv/a$a<",
        "+TA;+TC;>;>;",
        "Lhw/d<",
        "TA;TC;>;"
    }
.end annotation


# instance fields
.field public final b:Lkw/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkw/g<",
            "LNv/t;",
            "LNv/a$a<",
            "TA;TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkw/c;LAv/g;)V
    .locals 0

    invoke-direct {p0, p2}, LNv/d;-><init>(LAv/g;)V

    new-instance p2, LNv/c;

    invoke-direct {p2, p0}, LNv/c;-><init>(LNv/a;)V

    invoke-virtual {p1, p2}, Lkw/c;->d(Lev/l;)Lkw/c$k;

    move-result-object p1

    iput-object p1, p0, LNv/a;->b:Lkw/g;

    return-void
.end method


# virtual methods
.method public final c(Lhw/E;LPv/m;Llw/C;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhw/E;",
            "LPv/m;",
            "Llw/C;",
            ")TC;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lhw/c;->c:Lhw/c;

    sget-object v6, LNv/a$b;->a:LNv/a$b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, LNv/a;->t(Lhw/E;LPv/m;Lhw/c;Llw/C;Lev/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lhw/E;LPv/m;Llw/C;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhw/E;",
            "LPv/m;",
            "Llw/C;",
            ")TC;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lhw/c;->b:Lhw/c;

    sget-object v6, LNv/a$c;->a:LNv/a$c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, LNv/a;->t(Lhw/E;LPv/m;Lhw/c;Llw/C;Lev/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final t(Lhw/E;LPv/m;Lhw/c;Llw/C;Lev/p;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhw/E;",
            "LPv/m;",
            "Lhw/c;",
            "Llw/C;",
            "Lev/p<",
            "-",
            "LNv/a$a<",
            "+TA;+TC;>;-",
            "LNv/v;",
            "+TC;>;)TC;"
        }
    .end annotation

    sget-object v0, LRv/b;->A:LRv/b$a;

    iget v1, p2, LPv/m;->d:I

    invoke-virtual {v0, v1}, LRv/b$a;->c(I)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p2}, LTv/h;->d(LPv/m;)Z

    move-result v7

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, LNv/d;->o(Lhw/E;ZZLjava/lang/Boolean;Z)LNv/t;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_2

    instance-of p0, v3, Lhw/E$a;

    if-eqz p0, :cond_1

    move-object p0, v3

    check-cast p0, Lhw/E$a;

    iget-object p0, p0, Lhw/E;->c:Lvv/V;

    instance-of v0, p0, LNv/u;

    if-eqz v0, :cond_0

    check-cast p0, LNv/u;

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, LNv/u;->b:LNv/t;

    goto :goto_1

    :cond_1
    move-object p0, p1

    :cond_2
    :goto_1
    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p0}, LNv/t;->b()LOv/a;

    move-result-object v0

    iget-object v0, v0, LOv/a;->b:LTv/e;

    sget-object v1, LNv/l;->e:LTv/e;

    const-string v4, "version"

    invoke-static {v1, v4}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v1, LRv/a;->b:I

    iget v5, v1, LRv/a;->c:I

    iget v1, v1, LRv/a;->d:I

    invoke-virtual {v0, v4, v5, v1}, LRv/a;->a(III)Z

    move-result v0

    iget-object v1, v3, Lhw/E;->b:LRv/g;

    iget-object v3, v3, Lhw/E;->a:LRv/c;

    invoke-static {p2, v3, v1, p3, v0}, LNv/d;->n(LVv/h$c;LRv/c;LRv/g;Lhw/c;Z)LNv/v;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p3, v2, LNv/a;->b:Lkw/g;

    check-cast p3, Lkw/c$k;

    invoke-virtual {p3, p0}, Lkw/c$k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p5, p0, p2}, Lev/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_5

    :goto_2
    return-object p1

    :cond_5
    invoke-static {p4}, Lsv/q;->a(Llw/C;)Z

    move-result p1

    if-eqz p1, :cond_9

    check-cast p0, LZv/g;

    instance-of p1, p0, LZv/d;

    if-eqz p1, :cond_6

    new-instance p1, LZv/y;

    check-cast p0, LZv/d;

    iget-object p0, p0, LZv/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-direct {p1, p0}, LZv/y;-><init>(B)V

    return-object p1

    :cond_6
    instance-of p1, p0, LZv/v;

    if-eqz p1, :cond_7

    new-instance p1, LZv/B;

    check-cast p0, LZv/v;

    iget-object p0, p0, LZv/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-direct {p1, p0}, LZv/B;-><init>(S)V

    return-object p1

    :cond_7
    instance-of p1, p0, LZv/n;

    if-eqz p1, :cond_8

    new-instance p1, LZv/z;

    check-cast p0, LZv/n;

    iget-object p0, p0, LZv/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, LZv/z;-><init>(I)V

    return-object p1

    :cond_8
    instance-of p1, p0, LZv/t;

    if-eqz p1, :cond_9

    new-instance p1, LZv/A;

    check-cast p0, LZv/t;

    iget-object p0, p0, LZv/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, LZv/A;-><init>(J)V

    return-object p1

    :cond_9
    return-object p0
.end method
