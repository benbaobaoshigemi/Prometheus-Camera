.class final Lcom/prometheus/camera/settings/DevicePresetPreference;
.super Lmiuix/preference/SingleChoicePreference;
.source "DevicePresetPreference.java"

# interfaces
.implements Lcom/prometheus/camera/settings/PresetBindHook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/settings/DevicePresetPreference$DeleteListener;
    }
.end annotation


# instance fields
.field private final custom:Z

.field private deleteListener:Lcom/prometheus/camera/settings/DevicePresetPreference$DeleteListener;

.field private selected:Z

.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lmiuix/preference/SingleChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p3, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->value:Ljava/lang/String;

    .line 26
    iput-boolean p4, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->custom:Z

    .line 27
    iput-boolean p5, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->selected:Z

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string p4, "layout"

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 28
    const-string v0, "prometheus_device_preset_widget"

    invoke-virtual {p3, v0, p4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 32
    iput p1, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->V:I

    .line 33
    invoke-virtual {p0, p2}, Lcom/prometheus/camera/settings/DevicePresetPreference;->e0(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->t:Z

    .line 35
    invoke-virtual {p0, p5}, Lcom/prometheus/camera/settings/DevicePresetPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public G(Landroidx/preference/l;)V
    .locals 6

    .line 48
    invoke-super {p0, p1}, Lmiuix/preference/SingleChoicePreference;->G(Landroidx/preference/l;)V

    .line 49
    iget-object p1, p1, Landroidx/preference/l;->itemView:Landroid/view/View;

    const v0, 0x1020001

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 52
    const-string v3, "prometheus_device_delete"

    const-string v4, "id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 55
    const-string v5, "arrow_right"

    invoke-virtual {v2, v5, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 57
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    if-eqz v0, :cond_2

    .line 60
    iget-boolean v3, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->selected:Z

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 61
    iget-boolean v3, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->selected:Z

    if-eqz v3, :cond_1

    move v3, p1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 63
    :cond_2
    iget-boolean v0, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->custom:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->selected:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, p1

    :goto_1
    if-eqz v1, :cond_6

    if-eqz v0, :cond_4

    move v2, p1

    .line 65
    :cond_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz v0, :cond_5

    .line 66
    new-instance p1, Lcom/prometheus/camera/settings/DevicePresetPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/prometheus/camera/settings/DevicePresetPreference$$ExternalSyntheticLambda0;-><init>(Lcom/prometheus/camera/settings/DevicePresetPreference;)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method

.method synthetic lambda$G$0$com-prometheus-camera-settings-DevicePresetPreference(Landroid/view/View;)V
    .locals 2

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "delete click value="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoenixWatermark"

    invoke-static {v0, p1}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->deleteListener:Lcom/prometheus/camera/settings/DevicePresetPreference$DeleteListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->value:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/prometheus/camera/settings/DevicePresetPreference$DeleteListener;->onDelete(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "delete listener missing value="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->value:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onPresetBound(Landroidx/preference/l;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/prometheus/camera/settings/DevicePresetPreference;->G(Landroidx/preference/l;)V

    return-void
.end method

.method setDeleteListener(Lcom/prometheus/camera/settings/DevicePresetPreference$DeleteListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->deleteListener:Lcom/prometheus/camera/settings/DevicePresetPreference$DeleteListener;

    return-void
.end method

.method setSelectedState(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->selected:Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/prometheus/camera/settings/DevicePresetPreference;->setChecked(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DevicePresetPreference;->B()V

    return-void
.end method

.method value()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/prometheus/camera/settings/DevicePresetPreference;->value:Ljava/lang/String;

    return-object p0
.end method
