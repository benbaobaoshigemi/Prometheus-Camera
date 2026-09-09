.class public final LB1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LC1/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "hd"

    const-string v1, "d"

    const-string v2, "nm"

    const-string v3, "p"

    const-string/jumbo v4, "s"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LC1/c$a;->a([Ljava/lang/String;)LC1/c$a;

    move-result-object v0

    sput-object v0, LB1/f;->a:LC1/c$a;

    return-void
.end method
