.class public final Lc6/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field public a:Lio/reactivex/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/i<",
            "Lc6/y;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lio/reactivex/disposables/b;

.field public c:Lio/reactivex/internal/schedulers/n;

.field public d:Lio/reactivex/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/i<",
            "Lc6/y;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lio/reactivex/disposables/b;

.field public f:Landroid/content/Context;

.field public g:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lc6/O;->a:Ljava/lang/String;

    const-string v0, "LGal_"

    const-string v1, "GalleryThumbnailLoader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc6/J;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lc6/y;)V
    .locals 1

    iget-object v0, p0, Lc6/J;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "emitValue innerItemPara: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc6/x;->f(Lc6/y;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already in mPendingItems"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    sget-object v0, Lc6/J;->h:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lc6/J;->a:Lio/reactivex/i;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lio/reactivex/g;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final b(Lc6/y;)Landroid/graphics/Bitmap;
    .locals 12

    iget-object v0, p0, Lc6/J;->f:Landroid/content/Context;

    iget-object v1, p1, Lc6/y;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Ld6/c;->c(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lc6/J;->f:Landroid/content/Context;

    iget-object v0, p1, Lc6/y;->c:Landroid/net/Uri;

    iget-object v1, p1, Lc6/y;->k:Landroid/util/Size;

    invoke-static {v1}, Lc6/O;->a(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lc6/P;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    iget-object v0, p1, Lc6/y;->k:Landroid/util/Size;

    iget-object p1, p1, Lc6/y;->j:Ljava/lang/String;

    const-string/jumbo v1, "writeXmpMeta2Dng cost: "

    const-string/jumbo v2, "writeXmpMeta2Dng path: "

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ld6/c;->a:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p1, "thumb == null"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object p1, LF1/g3;->c:LF1/g3;

    const/16 p1, 0x57

    invoke-static {p1, p0}, Lvr/j;->g(ILandroid/graphics/Bitmap;)[B

    move-result-object p1

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v9, "UTF-8"

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    array-length v9, p1

    int-to-long v9, v9

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v7, v9, v10, v11, v0}, Ld6/c;->a(Lorg/xmlpull/v1/XmlSerializer;JII)V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    sget v7, LRa/b;->a:I

    sget-object v7, Lk1/e;->a:Ll1/r;

    new-instance v7, Ll1/m;

    invoke-direct {v7}, Ll1/m;-><init>()V

    const-string v8, "http://ns.xiaomi.com/photos/1.0/camera/"

    const-string v9, "XMPMeta"

    invoke-virtual {v7, v0, v8, v9}, Ll1/m;->n(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ln1/f;

    invoke-direct {v0}, Ln1/f;-><init>()V

    const/16 v8, 0x40

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ln1/c;->e(IZ)V

    const/16 v8, 0x10

    invoke-virtual {v0, v8, v9}, Ln1/c;->e(IZ)V

    invoke-static {v7, v0}, Lk1/e;->b(Lk1/d;Ln1/f;)[B

    move-result-object v0

    new-instance v7, Ld6/d;

    invoke-direct {v7}, Ld6/d;-><init>()V

    const/16 v8, 0x2bc

    iput v8, v7, Ld6/d;->a:I

    iput v9, v7, Ld6/d;->b:I

    array-length v8, v0

    iput v8, v7, Ld6/d;->c:I

    invoke-static {v2, v7, v0, p1}, Ld6/c;->g(Ljava/io/File;Ld6/d;[B[B)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v5

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lk1/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "writeXmpMeta2Dng e: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final c(I)V
    .locals 5

    iget-object v0, p0, Lc6/J;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lc6/x;->g()Lc6/x;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/y;

    invoke-virtual {v1, v2}, Lc6/x;->f(Lc6/y;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const-string/jumbo v2, "runLoadPendingItemsIfNeed lastLoadPositionInList: "

    const-string v3, ", pendingLastPositionInList: "

    invoke-static {p1, v1, v2, v3}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lc6/J;->h:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-le p1, v1, :cond_1

    iget-object p0, p0, Lc6/J;->d:Lio/reactivex/i;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/y;

    invoke-interface {p0, p1}, Lio/reactivex/g;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
