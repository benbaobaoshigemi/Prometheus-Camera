.class public final synthetic Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda5;->f$0:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

    iput-object p2, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda5;->f$0:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

    iget-object v1, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/prometheus/camera/rev/VignetteSettings;->lambda$adjust$7(Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
