.class public final synthetic Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/prometheus/camera/rev/VideoLutCover;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/prometheus/camera/rev/VideoLutCover;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda0;->f$0:Lcom/prometheus/camera/rev/VideoLutCover;

    iput-object p2, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda0;->f$0:Lcom/prometheus/camera/rev/VideoLutCover;

    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p0}, Lcom/prometheus/camera/rev/VideoLutCover;->lambda$bind$0$com-prometheus-camera-rev-VideoLutCover(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
