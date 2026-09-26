.class public final LZv/B;
.super LZv/C;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LZv/C<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(S)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-direct {p0, p1}, LZv/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lvv/B;)Llw/C;
    .locals 0

    const-string p0, "module"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lsv/m$a;->S:LUv/b;

    invoke-static {p1, p0}, Lvv/t;->a(Lvv/B;LUv/b;)Lvv/e;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lvv/e;->r()Llw/J;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lnw/h;->N:Lnw/h;

    const-string p1, "UShort"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnw/i;->c(Lnw/h;[Ljava/lang/String;)Lnw/f;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, LZv/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".toUShort()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
