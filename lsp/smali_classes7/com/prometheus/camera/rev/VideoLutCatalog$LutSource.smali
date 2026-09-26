.class final Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;
.super Ljava/lang/Object;
.source "VideoLutCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/rev/VideoLutCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LutSource"
.end annotation


# instance fields
.field final path:Ljava/lang/String;

.field final revision:Ljava/lang/String;

.field final token:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;->token:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;->path:Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;->revision:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method open(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;->token:Ljava/lang/String;

    const-string v2, "raw"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 83
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;->path:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method
