.class public final synthetic Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;IZIZLjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;->f$0:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

    iput p2, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;->f$1:I

    iput-boolean p3, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;->f$2:Z

    iput p4, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;->f$3:I

    iput-boolean p5, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;->f$4:Z

    iput-object p6, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;->f$5:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;->f$0:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

    iget v1, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;->f$1:I

    iget-boolean v2, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;->f$2:Z

    iget v3, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;->f$3:I

    iget-boolean v4, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;->f$4:Z

    iget-object v5, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;->f$5:Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/prometheus/camera/rev/VignetteSettings;->lambda$adjust$8(Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;IZIZLjava/lang/Object;)V

    return-void
.end method
