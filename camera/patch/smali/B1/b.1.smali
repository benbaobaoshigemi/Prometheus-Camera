.class public final LB1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LC1/c$a;

.field public static final b:LC1/c$a;

.field public static final c:LC1/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "a"

    const-string/jumbo v1, "s"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LC1/c$a;->a([Ljava/lang/String;)LC1/c$a;

    move-result-object v0

    sput-object v0, LB1/b;->a:LC1/c$a;

    const-string v0, "r"

    const-string v2, "e"

    const-string v3, "o"

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LC1/c$a;->a([Ljava/lang/String;)LC1/c$a;

    move-result-object v0

    sput-object v0, LB1/b;->b:LC1/c$a;

    const-string/jumbo v0, "sw"

    const-string/jumbo v1, "t"

    const-string v2, "fc"

    const-string/jumbo v4, "sc"

    filled-new-array {v2, v4, v0, v1, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LC1/c$a;->a([Ljava/lang/String;)LC1/c$a;

    move-result-object v0

    sput-object v0, LB1/b;->c:LC1/c$a;

    return-void
.end method
