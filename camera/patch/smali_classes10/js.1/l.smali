.class public final Ljs/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static final b:Ljs/l$a;

.field public static volatile c:Ljs/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljs/l$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljs/l;->b:Ljs/l$a;

    new-instance v0, Ljs/l$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljs/l;->c:Ljs/l$b;

    return-void
.end method
