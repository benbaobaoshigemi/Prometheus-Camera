.class public final Lcom/prometheus/camera/filters/ClassicStylePreferenceFragment;
.super Lcom/android/camera/fragment/settings/b;
.source "ClassicStylePreferenceFragment.java"


# static fields
.field private static final KEY_CHOICES:Ljava/lang/String; = "prometheus_classic_style_choices"

.field private static final TITLE_LEICA_STYLES:I = 0x7f140328


# instance fields
.field private choices:Lcom/android/camera/preferences/AccessibleSingleChoicePreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/b;-><init>()V

    return-void
.end method


# virtual methods
.method public addCurrentPreferences()V
    .locals 6

    .line 17
    invoke-static {}, Lcom/prometheus/camera/filters/ClassicStyleStore;->modelLabels()[Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {}, Lcom/prometheus/camera/filters/ClassicStyleStore;->modelIds()[Ljava/lang/String;

    move-result-object v4

    .line 19
    iget-object v1, p0, Lcom/prometheus/camera/filters/ClassicStylePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v2, "prometheus_classic_style_choices"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/prometheus/camera/filters/ClassicStylePreferenceFragment;->addSingleChoicePreferenceCategory(Landroidx/preference/PreferenceGroup;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Lcom/android/camera/preferences/AccessibleSingleChoicePreferenceCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/prometheus/camera/filters/ClassicStylePreferenceFragment;->choices:Lcom/android/camera/preferences/AccessibleSingleChoicePreferenceCategory;

    .line 21
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/ClassicStylePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/filters/ClassicStyleStore;->selectedModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/preferences/AccessibleSingleChoicePreferenceCategory;->U(Ljava/lang/Object;)V

    return-void
.end method

.method public getFragmentTitle()I
    .locals 0

    const p0, 0x7f140328

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/prometheus/camera/filters/ClassicStylePreferenceFragment;->choices:Lcom/android/camera/preferences/AccessibleSingleChoicePreferenceCategory;

    if-ne p1, v0, :cond_1

    iget-object p1, v0, Lcom/android/camera/preferences/AccessibleSingleChoicePreferenceCategory;->o0:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/ClassicStylePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/prometheus/camera/filters/ClassicStylePreferenceFragment;->choices:Lcom/android/camera/preferences/AccessibleSingleChoicePreferenceCategory;

    iget-object v1, v1, Lcom/android/camera/preferences/AccessibleSingleChoicePreferenceCategory;->o0:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/prometheus/camera/filters/ClassicStyleStore;->selectModel(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/ClassicStylePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u91cd\u542f\u76f8\u673a\u540e\u751f\u6548"

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 41
    iget-object v1, p0, Lcom/prometheus/camera/filters/ClassicStylePreferenceFragment;->choices:Lcom/android/camera/preferences/AccessibleSingleChoicePreferenceCategory;

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/ClassicStylePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/prometheus/camera/filters/ClassicStyleStore;->selectedModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/AccessibleSingleChoicePreferenceCategory;->U(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/ClassicStylePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return p1

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public registerPreferenceListener()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/prometheus/camera/filters/ClassicStylePreferenceFragment;->choices:Lcom/android/camera/preferences/AccessibleSingleChoicePreferenceCategory;

    iput-object p0, v0, Lcom/android/camera/preferences/AccessibleSingleChoicePreferenceCategory;->f:Landroidx/preference/Preference$d;

    return-void
.end method
