.class Lcom/prometheus/camera/rev/VideoLutCover$1;
.super Landroid/util/LruCache;
.source "VideoLutCover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/rev/VideoLutCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/VideoLutCover;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/VideoLutCover;I)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCover$1;->this$0:Lcom/prometheus/camera/rev/VideoLutCover;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/prometheus/camera/rev/VideoLutCover$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 28
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0
.end method
