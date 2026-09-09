.class public Lcom/android/camera/fragment/settings/CameraAdvancePreferenceFragment;
.super Lcom/android/camera/fragment/settings/CameraPreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public addAdvancePreferences()V
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isLabOptionsVisible"
        type = 0x0
    .end annotation

    const-string v0, "category_advance_setting"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/b;->addCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/fragment/settings/b;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->j0(Landroidx/preference/Preference;)Z

    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "pref_prometheus_filter_management"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->a0(Ljava/lang/String;)V

    const-string/jumbo v1, "\u6ee4\u955c\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->e0(Ljava/lang/String;)V

    const-string/jumbo v1, "\u6392\u5e8f\u3001\u9690\u85cf\u3001\u5bfc\u5165\u548c\u5bfc\u51fa\u62cd\u7167\u6ee4\u955c"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->c0(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/preference/Preference;->t:Z

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->j0(Landroidx/preference/Preference;)Z

    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "pref_prometheus_custom_lut"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->a0(Ljava/lang/String;)V

    const-string/jumbo v1, "\u6ee4\u955c\u5bfc\u5165\u4e0e\u6548\u679c"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->e0(Ljava/lang/String;)V

    const-string/jumbo v1, "\u7ba1\u7406\u975e\u5f95\u5361\u6ee4\u955c\u6548\u679c\u5e76\u5bfc\u5165\u7528\u6237 LUT"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->c0(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/preference/Preference;->t:Z

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->j0(Landroidx/preference/Preference;)Z

    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "pref_prometheus_watermark_device_name"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->a0(Ljava/lang/String;)V

    const-string/jumbo v1, "\u6c34\u5370\u673a\u578b\u6587\u5b57"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->e0(Ljava/lang/String;)V

    const-string/jumbo v1, "\u81ea\u5b9a\u4e49\u6c34\u5370\u4e2d\u663e\u793a\u7684\u673a\u578b\u6587\u5b57"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->c0(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/preference/Preference;->t:Z

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->j0(Landroidx/preference/Preference;)Z

    const-string v4, "pref_video_capture_repeating"

    const/4 v5, 0x0

    const v6, 0x7f1410f0

    const/4 v7, -0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    const-string v4, "pref_video_dump_ndd"

    const v6, 0x7f1410f6

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    const-string v4, "pref_camera_facedetection_key"

    const/4 v5, 0x1

    const v6, 0x7f140dd0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    const-string v4, "pref_camera_facedetection_auto_hidden_key"

    const v6, 0x7f140dcf

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    const-string v4, "pref_camera_video_show_faceview"

    const/4 v5, 0x0

    const v6, 0x7f140f45

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    const-string v4, "pref_camera_track_eye_preferred_key"

    const/4 v5, 0x1

    const v6, 0x7f140f2f

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->I1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/r;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v4, "pref_camera_portrait_with_facebeauty_key"

    const/4 v5, 0x1

    const v6, 0x7f140e86

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    :cond_1
    invoke-virtual {p0}, LJe/c;->K1()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, LJe/c;->I1()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v4, "pref_camera_dual_enable_key"

    const/4 v5, 0x1

    const v6, 0x7f140d5c

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    :cond_3
    invoke-virtual {p0}, LJe/c;->K1()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v4, "pref_camera_dual_sat_enable_key"

    const/4 v5, 0x1

    const v6, 0x7f140d5d

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    :cond_4
    const-string v4, "pref_camera_mfnr_sat_enable_key"

    const/4 v5, 0x1

    const v6, 0x7f140e5d

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    const-string v4, "pref_camera_sr_enable_key"

    const v6, 0x7f140efd

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->G6()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v4, "pref_camera_parallel_process_enable_key"

    const/4 v5, 0x1

    const v6, 0x7f140e6d

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    :cond_5
    const-string v4, "pref_camera_quick_shot_anim_enable_key"

    const/4 v5, 0x1

    const v6, 0x7f140e9d

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, LJe/c;->C2()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string v4, "pref_camera_video_sat_enable_key"

    const/4 v5, 0x1

    const v6, 0x7f140f44

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    :cond_6
    const-string v4, "pref_camera_touch_focus_delay_key"

    const/4 v5, 0x0

    const v6, 0x7f140f2a

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    invoke-static {}, LJe/c;->O()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string v4, "pref_camera_quick_shot_enable_key"

    const/4 v5, 0x1

    const v6, 0x7f140e9e

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/b;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;ZII)Landroidx/preference/CheckBoxPreference;

    :cond_7
    const v5, 0x7f140d25

    const v6, 0x7f140d29

    const-string v4, "pref_camera_autoexposure_key"

    const v7, 0x7f03002e

    const v8, 0x7f03002f

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/fragment/settings/b;->addPreviewListPreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;IIII)V

    const-string v4, "pref_video_autoexposure_key"

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/fragment/settings/b;->addPreviewListPreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;IIII)V

    return-void
.end method

.method public addCurrentPreferences()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/CameraAdvancePreferenceFragment;->addAdvancePreferences()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v2, p1, Landroidx/preference/Preference;->m:Ljava/lang/String;

    const-string v1, "pref_prometheus_filter_management"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/prometheus/camera/filters/FilterManagementActivity;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/b;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v1, "pref_prometheus_custom_lut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/camera/fragment/settings/PreferenceExtraActivity;

    const-string v1, "com.prometheus.camera.filters.CustomLutPreferenceFragment"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/b;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v1, "pref_prometheus_watermark_device_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/android/camera/fragment/settings/PreferenceExtraActivity;

    const-string v1, "com.prometheus.camera.settings.DeviceNamePreferenceFragment"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/b;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->onPreferenceClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public registerPreferenceListener()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->registerPreferenceListener()V

    iget-object v0, p0, Lcom/android/camera/fragment/settings/b;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "pref_camera_facedetection_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->k0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p0, v0, Landroidx/preference/Preference;->f:Landroidx/preference/Preference$d;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/b;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "pref_prometheus_filter_management"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->k0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object p0, v0, Landroidx/preference/Preference;->f:Landroidx/preference/Preference$d;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/b;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "pref_prometheus_custom_lut"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->k0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p0, v0, Landroidx/preference/Preference;->f:Landroidx/preference/Preference$d;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/b;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "pref_prometheus_watermark_device_name"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->k0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object p0, v0, Landroidx/preference/Preference;->f:Landroidx/preference/Preference$d;

    :cond_3
    return-void
.end method
