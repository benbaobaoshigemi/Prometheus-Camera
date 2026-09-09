.class public final synthetic Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;

.field public final synthetic f$1:Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;


# direct methods
.method public synthetic constructor <init>(Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;

    iput-object p2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;

    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    invoke-virtual {v0, p0, p1, p2}, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->lambda$getView$2$com-prometheus-camera-filters-FilterManagementActivity$FilterAdapter(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
