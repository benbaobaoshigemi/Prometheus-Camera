.class public final Lcg/A;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcg/A$l;,
        Lcg/A$k;
    }
.end annotation


# static fields
.field public static final a:Lcg/A$b;

.field public static final b:Lcg/A$c;

.field public static final c:Lcg/A$d;

.field public static final d:Lcg/A$e;

.field public static final e:Lcg/A$f;

.field public static final f:Lcg/A$g;

.field public static final g:Lcg/A$h;

.field public static final h:Lcg/A$i;

.field public static final i:Lcg/A$j;

.field public static final j:Lcg/A$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcg/A$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcg/A;->a:Lcg/A$b;

    new-instance v0, Lcg/A$c;

    invoke-direct {v0}, Lcg/l;-><init>()V

    sput-object v0, Lcg/A;->b:Lcg/A$c;

    new-instance v0, Lcg/A$d;

    invoke-direct {v0}, Lcg/l;-><init>()V

    sput-object v0, Lcg/A;->c:Lcg/A$d;

    new-instance v0, Lcg/A$e;

    invoke-direct {v0}, Lcg/l;-><init>()V

    sput-object v0, Lcg/A;->d:Lcg/A$e;

    new-instance v0, Lcg/A$f;

    invoke-direct {v0}, Lcg/l;-><init>()V

    sput-object v0, Lcg/A;->e:Lcg/A$f;

    new-instance v0, Lcg/A$g;

    invoke-direct {v0}, Lcg/l;-><init>()V

    sput-object v0, Lcg/A;->f:Lcg/A$g;

    new-instance v0, Lcg/A$h;

    invoke-direct {v0}, Lcg/l;-><init>()V

    sput-object v0, Lcg/A;->g:Lcg/A$h;

    new-instance v0, Lcg/A$i;

    invoke-direct {v0}, Lcg/l;-><init>()V

    sput-object v0, Lcg/A;->h:Lcg/A$i;

    new-instance v0, Lcg/A$j;

    invoke-direct {v0}, Lcg/l;-><init>()V

    sput-object v0, Lcg/A;->i:Lcg/A$j;

    new-instance v0, Lcg/A$a;

    invoke-direct {v0}, Lcg/l;-><init>()V

    sput-object v0, Lcg/A;->j:Lcg/A$a;

    return-void
.end method

.method public static a(Lcg/q;Ljava/lang/String;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcg/q;->E()I

    move-result v0

    if-lt v0, p2, :cond_0

    if-gt v0, p3, :cond_0

    return v0

    :cond_0
    new-instance p2, Lcg/n;

    invoke-virtual {p0}, Lcg/q;->o()Ljava/lang/String;

    move-result-object p0

    const-string p3, "Expected "

    const-string v1, " but was "

    const-string v2, " at path "

    invoke-static {p3, p1, v0, v1, v2}, LCs/Q;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
