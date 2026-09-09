.class public final LZv/a;
.super LZv/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LZv/g<",
        "Lwv/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lwv/b;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, LZv/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lvv/B;)Llw/C;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LZv/g;->a:Ljava/lang/Object;

    check-cast p0, Lwv/b;

    invoke-interface {p0}, Lwv/b;->getType()Llw/C;

    move-result-object p0

    return-object p0
.end method
