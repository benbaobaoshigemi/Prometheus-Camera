.class public final synthetic Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/prometheus/camera/rev/VignetteSettings$Work;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lcom/prometheus/camera/rev/VignetteSettings$Work;


# direct methods
.method public synthetic constructor <init>(ZIZIZLcom/prometheus/camera/rev/VignetteSettings$Work;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;->f$0:Z

    iput p2, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;->f$2:Z

    iput p4, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;->f$3:I

    iput-boolean p5, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;->f$4:Z

    iput-object p6, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;->f$5:Lcom/prometheus/camera/rev/VignetteSettings$Work;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-boolean v0, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;->f$0:Z

    iget v1, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean v2, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;->f$2:Z

    iget v3, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;->f$3:I

    iget-boolean v4, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;->f$4:Z

    iget-object v5, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;->f$5:Lcom/prometheus/camera/rev/VignetteSettings$Work;

    invoke-static/range {v0 .. v5}, Lcom/prometheus/camera/rev/VignetteSettings;->lambda$apply$11(ZIZIZLcom/prometheus/camera/rev/VignetteSettings$Work;)V

    return-void
.end method
