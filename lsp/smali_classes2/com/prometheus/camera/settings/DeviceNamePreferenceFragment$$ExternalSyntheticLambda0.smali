.class public final synthetic Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;

    iput-object p2, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment$$ExternalSyntheticLambda0;->f$0:Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;

    iget-object p0, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, p0, p1, p2}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->lambda$showAdd$0$com-prometheus-camera-settings-DeviceNamePreferenceFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
