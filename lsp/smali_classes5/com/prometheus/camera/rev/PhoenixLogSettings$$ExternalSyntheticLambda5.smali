.class public final synthetic Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Exception;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Ljava/lang/Object;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Object;

    iput p5, p0, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda5;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Exception;

    iget-object v3, p0, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Object;

    iget p0, p0, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda5;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->lambda$clearLogs$5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Ljava/lang/Object;I)V

    return-void
.end method
