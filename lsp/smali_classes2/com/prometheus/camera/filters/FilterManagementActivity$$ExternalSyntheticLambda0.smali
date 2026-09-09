.class public final synthetic Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/prometheus/camera/filters/FilterManagementActivity;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda0;->f$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    iput-object p2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda0;->f$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->lambda$reloadInitialAsync$1$com-prometheus-camera-filters-FilterManagementActivity(Landroid/content/Context;)V

    return-void
.end method
