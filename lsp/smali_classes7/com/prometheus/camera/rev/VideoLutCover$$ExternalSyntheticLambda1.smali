.class public final synthetic Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/prometheus/camera/rev/VideoLutCover;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/prometheus/camera/rev/VideoLutCover;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda1;->f$0:Lcom/prometheus/camera/rev/VideoLutCover;

    iput-object p2, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda1;->f$0:Lcom/prometheus/camera/rev/VideoLutCover;

    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/prometheus/camera/rev/VideoLutCover;->lambda$bind$1$com-prometheus-camera-rev-VideoLutCover(Ljava/lang/String;)V

    return-void
.end method
