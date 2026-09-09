.class public final LBa/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lra/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LBa/B$d;,
        LBa/B$g;,
        LBa/B$c;,
        LBa/B$f;,
        LBa/B$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lra/k<",
        "TT;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lra/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lra/h<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lra/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lra/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:LBa/B$e;


# instance fields
.field public final a:LBa/B$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBa/B$f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lva/b;

.field public final c:LBa/B$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, LBa/B$a;

    invoke-direct {v1}, LBa/B$a;-><init>()V

    new-instance v2, Lra/h;

    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    invoke-direct {v2, v3, v0, v1}, Lra/h;-><init>(Ljava/lang/String;Ljava/lang/Object;Lra/h$b;)V

    sput-object v2, LBa/B;->d:Lra/h;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, LBa/B$b;

    invoke-direct {v1}, LBa/B$b;-><init>()V

    new-instance v2, Lra/h;

    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    invoke-direct {v2, v3, v0, v1}, Lra/h;-><init>(Ljava/lang/String;Ljava/lang/Object;Lra/h$b;)V

    sput-object v2, LBa/B;->e:Lra/h;

    new-instance v0, LBa/B$e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LBa/B;->f:LBa/B$e;

    return-void
.end method

.method public constructor <init>(Lva/b;LBa/B$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lva/b;",
            "LBa/B$f<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBa/B;->b:Lva/b;

    iput-object p2, p0, LBa/B;->a:LBa/B$f;

    sget-object p1, LBa/B;->f:LBa/B$e;

    iput-object p1, p0, LBa/B;->c:LBa/B$e;

    return-void
.end method

.method public static c(Landroid/media/MediaMetadataRetriever;JIIILBa/k;)Landroid/graphics/Bitmap;
    .locals 10

    move-object/from16 v3, p6

    const/high16 v4, -0x80000000

    const/4 v7, 0x0

    if-eq p4, v4, :cond_2

    if-eq p5, v4, :cond_2

    sget-object v4, LBa/k;->d:LBa/k$f;

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12

    :try_start_0
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x13

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x18

    invoke-virtual {p0, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v8, 0x5a

    if-eq v6, v8, :cond_0

    const/16 v8, 0x10e

    if-ne v6, v8, :cond_1

    :cond_0
    move v9, v5

    move v5, v4

    move v4, v9

    :cond_1
    invoke-virtual {v3, v4, v5, p4, p5}, LBa/k;->b(IIII)F

    move-result v0

    int-to-float v2, v4

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v5

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object v1, p0

    move v4, p3

    move v5, v2

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x3

    const-string v2, "VideoDecoder"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Exception trying to decode frame on oreo+"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    if-nez v7, :cond_3

    invoke-virtual/range {p0 .. p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_3
    return-object v7
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lra/i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lra/i;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Ljava/lang/Object;IILra/i;)Lua/s;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lra/i;",
            ")",
            "Lua/s<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LBa/B;->d:Lra/h;

    invoke-virtual {p4, v0}, Lra/i;->c(Lra/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    invoke-static {v2, v3, p1}, LHs/a;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, LBa/B;->e:Lra/h;

    invoke-virtual {p4, v0}, Lra/i;->c(Lra/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    sget-object v1, LBa/k;->f:Lra/h;

    invoke-virtual {p4, v1}, Lra/i;->c(Lra/h;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LBa/k;

    if-nez p4, :cond_3

    sget-object p4, LBa/k;->e:LBa/k$d;

    :cond_3
    move-object v7, p4

    iget-object p4, p0, LBa/B;->c:LBa/B$e;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    iget-object p4, p0, LBa/B;->a:LBa/B$f;

    invoke-interface {p4, v1, p1}, LBa/B$f;->a(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v7}, LBa/B;->c(Landroid/media/MediaMetadataRetriever;JIIILBa/k;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    iget-object p0, p0, LBa/B;->b:Lva/b;

    invoke-static {p1, p0}, LBa/d;->c(Landroid/graphics/Bitmap;Lva/b;)LBa/d;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p0
.end method
