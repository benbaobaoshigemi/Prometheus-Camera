.class public final Lcom/prometheus/camera/settings/MetadataSyncPreferenceFragment;
.super Lcom/android/camera/fragment/settings/b;
.source "MetadataSyncPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/b;-><init>()V

    return-void
.end method

.method private addSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 19
    new-instance v0, Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {v0, p2}, Landroidx/preference/SwitchPreference;->a0(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p3}, Landroidx/preference/SwitchPreference;->e0(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, v0, Landroidx/preference/SwitchPreference;->t:Z

    .line 23
    iput-object p0, v0, Landroidx/preference/SwitchPreference;->e:Landroidx/preference/Preference$c;

    .line 24
    invoke-virtual {v0, p4}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 25
    iget-object p0, p0, Lcom/prometheus/camera/settings/MetadataSyncPreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceScreen;->j0(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public addCurrentPreferences()V
    .locals 4

    .line 11
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/MetadataSyncPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 12
    const-string v1, "\u56fe\u7247\u5143\u6570\u636e"

    .line 13
    invoke-static {v0}, Lcom/prometheus/camera/settings/DeviceNameOverride;->imageMetadataEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 12
    const-string v3, "metadata_image_enabled"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/prometheus/camera/settings/MetadataSyncPreferenceFragment;->addSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    const-string v1, "\u6c34\u5370\u5143\u6570\u636e"

    .line 15
    invoke-static {v0}, Lcom/prometheus/camera/settings/DeviceNameOverride;->watermarkMetadataEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 14
    const-string v3, "metadata_watermark_enabled"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/prometheus/camera/settings/MetadataSyncPreferenceFragment;->addSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public getFragmentTitle()I
    .locals 0

    const p0, 0x7f1402ea

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 29
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 30
    :cond_0
    const-string v0, "metadata_image_enabled"

    iget-object v2, p1, Landroidx/preference/Preference;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/MetadataSyncPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/prometheus/camera/settings/DeviceNameOverride;->setImageMetadataEnabled(Landroid/content/Context;Z)V

    return v2

    .line 34
    :cond_1
    const-string v0, "metadata_watermark_enabled"

    iget-object p1, p1, Landroidx/preference/Preference;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/MetadataSyncPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/prometheus/camera/settings/DeviceNameOverride;->setWatermarkMetadataEnabled(Landroid/content/Context;Z)V

    return v2

    :cond_2
    return v1
.end method

.method public registerPreferenceListener()V
    .locals 0

    return-void
.end method
