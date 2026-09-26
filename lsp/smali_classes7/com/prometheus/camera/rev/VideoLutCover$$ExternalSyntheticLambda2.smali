.class public final synthetic Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/prometheus/camera/rev/VideoLutCover;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/prometheus/camera/rev/VideoLutCover;Landroid/content/Context;ILcom/prometheus/camera/rev/VideoLutCatalog$LutSource;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda2;->f$0:Lcom/prometheus/camera/rev/VideoLutCover;

    iput-object p2, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda2;->f$3:Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;

    iput-object p5, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda2;->f$0:Lcom/prometheus/camera/rev/VideoLutCover;

    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iget v2, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda2;->f$3:Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;

    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/prometheus/camera/rev/VideoLutCover;->lambda$bind$2$com-prometheus-camera-rev-VideoLutCover(Landroid/content/Context;ILcom/prometheus/camera/rev/VideoLutCatalog$LutSource;Ljava/lang/String;)V

    return-void
.end method
