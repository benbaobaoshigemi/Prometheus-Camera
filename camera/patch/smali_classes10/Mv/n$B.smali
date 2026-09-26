.class public final LMv/n$B;
.super Lfv/n;
.source "SourceFile"

# interfaces
.implements Lev/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMv/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfv/n;",
        "Lev/l<",
        "LMv/v$a$a;",
        "LPu/A;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LMv/n$B;->a:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lfv/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, LMv/v$a$a;

    const-string v0, "$this$function"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LMv/n;->b:LMv/i;

    filled-new-array {v0}, [LMv/i;

    move-result-object v1

    iget-object p0, p0, LMv/n$B;->a:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, LMv/v$a$a;->a(Ljava/lang/String;[LMv/i;)V

    filled-new-array {v0}, [LMv/i;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, LMv/v$a$a;->a(Ljava/lang/String;[LMv/i;)V

    sget-object p0, Lcw/b;->e:Lcw/b;

    invoke-virtual {p1, p0}, LMv/v$a$a;->b(Lcw/b;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method
