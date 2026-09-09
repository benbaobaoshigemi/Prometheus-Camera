.class public final Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;
.super Lcom/android/camera/fragment/settings/b;
.source "DeviceNamePreferenceFragment.java"

# interfaces
.implements Lcom/prometheus/camera/settings/DevicePresetPreference$DeleteListener;


# static fields
.field private static final KEY_ADD:Ljava/lang/String; = "add_preset"

.field private static final KEY_METADATA:Ljava/lang/String; = "metadata_sync"


# instance fields
.field private presets:Landroidx/preference/PreferenceCategory;

.field private final rows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/prometheus/camera/settings/DevicePresetPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/b;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->rows:Ljava/util/Map;

    return-void
.end method

.method private addRow(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    .line 71
    new-instance v6, Lcom/prometheus/camera/settings/DevicePresetPreference;

    .line 72
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/prometheus/camera/settings/DevicePresetPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 73
    invoke-static {p2}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {v6, p1}, Lcom/prometheus/camera/settings/DevicePresetPreference;->a0(Ljava/lang/String;)V

    .line 75
    iput-object p0, v6, Lcom/prometheus/camera/settings/DevicePresetPreference;->f:Landroidx/preference/Preference$d;

    .line 76
    invoke-virtual {v6, p0}, Lcom/prometheus/camera/settings/DevicePresetPreference;->setDeleteListener(Lcom/prometheus/camera/settings/DevicePresetPreference$DeleteListener;)V

    .line 77
    iget-object p2, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->rows:Ljava/util/Map;

    invoke-interface {p2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p0, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->presets:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v6}, Landroidx/preference/PreferenceCategory;->j0(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private static keyFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preset_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private rebuildPresetRows()V
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->presets:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->m0()V

    .line 58
    iget-object v0, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->rows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/prometheus/camera/settings/DevicePresetStore;->active(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 61
    :goto_0
    sget-object v4, Lcom/prometheus/camera/settings/DevicePresetStore;->FIXED_VALUES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 62
    sget-object v4, Lcom/prometheus/camera/settings/DevicePresetStore;->FIXED_LABELS:[Ljava/lang/String;

    aget-object v4, v4, v3

    sget-object v5, Lcom/prometheus/camera/settings/DevicePresetStore;->FIXED_VALUES:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-direct {p0, v4, v5, v2, v1}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->addRow(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {v0}, Lcom/prometheus/camera/settings/DevicePresetStore;->custom(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 66
    invoke-direct {p0, v2, v2, v3, v1}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->addRow(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private saveFromDialog(Landroid/widget/EditText;ZLandroid/content/DialogInterface;)V
    .locals 2

    .line 110
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string p0, "\u8bf7\u8f93\u5165\u673a\u578b\u540d\u79f0"

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 115
    invoke-static {v0}, Lcom/prometheus/camera/settings/DeviceNameRouting;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/prometheus/camera/settings/DevicePresetStore;->add(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/prometheus/camera/settings/DevicePresetStore;->active(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, v0, v0, p2, p1}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->addRow(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 119
    :cond_3
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private select(Ljava/lang/String;)V
    .locals 2

    .line 86
    iget-object p0, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->rows:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prometheus/camera/settings/DevicePresetPreference;

    .line 87
    invoke-virtual {v0}, Lcom/prometheus/camera/settings/DevicePresetPreference;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prometheus/camera/settings/DevicePresetPreference;->setSelectedState(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showAdd()V
    .locals 8

    .line 142
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 144
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 145
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 147
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 149
    const-string v3, "\u8bf7\u8f93\u5165\u673a\u578b\u540d\u79f0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 150
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 157
    const-string v4, "miuix.appcompat.app.h$a"

    invoke-static {v4, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 159
    const-class v4, Landroid/content/Context;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 160
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 161
    const-string v5, "C"

    const-class v6, Ljava/lang/CharSequence;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "\u65b0\u589e\u9884\u8bbe"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v5, "D"

    const-class v6, Landroid/view/View;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;Landroid/widget/EditText;)V

    .line 165
    new-instance v5, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v2}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;Landroid/widget/EditText;)V

    .line 167
    const-string p0, "q"

    const-class v6, Ljava/lang/CharSequence;

    const-class v7, Landroid/content/DialogInterface$OnClickListener;

    filled-new-array {v6, v7}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const-string v6, "\u4fee\u6b63\u5e76\u4fdd\u5b58"

    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 168
    invoke-virtual {p0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string p0, "y"

    const-class v5, Ljava/lang/CharSequence;

    const-class v6, Landroid/content/DialogInterface$OnClickListener;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const-string v5, "\u4fdd\u5b58\u9884\u8bbe"

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 170
    invoke-virtual {p0, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string p0, "c"

    const/4 v0, 0x0

    invoke-virtual {v3, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 176
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 177
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :catchall_0
    move-exception p0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OS4 MIUIX builder unavailable"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addCurrentPreferences()V
    .locals 5

    .line 32
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    const-string v1, "prometheus_device_actions"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->addCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    .line 34
    iget-object v3, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceScreen;->j0(Landroidx/preference/Preference;)Z

    .line 36
    new-instance v3, Lcom/prometheus/camera/settings/DeviceAddPreference;

    invoke-direct {v3, v0}, Lcom/prometheus/camera/settings/DeviceAddPreference;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v4, "add_preset"

    invoke-virtual {v3, v4}, Lcom/prometheus/camera/settings/DeviceAddPreference;->a0(Ljava/lang/String;)V

    .line 38
    const-string v4, "\u65b0\u589e\u9884\u8bbe"

    invoke-virtual {v3, v4}, Lcom/prometheus/camera/settings/DeviceAddPreference;->e0(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 39
    iput-boolean v4, v3, Lcom/prometheus/camera/settings/DeviceAddPreference;->t:Z

    .line 40
    iput-object p0, v3, Lcom/prometheus/camera/settings/DeviceAddPreference;->f:Landroidx/preference/Preference$d;

    .line 41
    iput-object p0, v3, Lcom/prometheus/camera/settings/DeviceAddPreference;->e:Landroidx/preference/Preference$c;

    .line 42
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceCategory;->j0(Landroidx/preference/Preference;)Z

    .line 44
    new-instance v3, Lcom/prometheus/camera/settings/MetadataNavigationPreference;

    invoke-direct {v3, v0}, Lcom/prometheus/camera/settings/MetadataNavigationPreference;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v0, "metadata_sync"

    invoke-virtual {v3, v0}, Lcom/prometheus/camera/settings/MetadataNavigationPreference;->a0(Ljava/lang/String;)V

    .line 46
    const-string v0, "\u540c\u6b65\u5143\u6570\u636e"

    invoke-virtual {v3, v0}, Lcom/prometheus/camera/settings/MetadataNavigationPreference;->e0(Ljava/lang/String;)V

    .line 47
    iput-boolean v4, v3, Lcom/prometheus/camera/settings/MetadataNavigationPreference;->t:Z

    .line 48
    iput-object p0, v3, Lcom/prometheus/camera/settings/MetadataNavigationPreference;->f:Landroidx/preference/Preference$d;

    .line 49
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceCategory;->j0(Landroidx/preference/Preference;)Z

    .line 51
    const-string v0, "prometheus_device_presets"

    invoke-virtual {p0, v0, v2}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->addCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->presets:Landroidx/preference/PreferenceCategory;

    .line 52
    iget-object v0, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->presets:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->j0(Landroidx/preference/Preference;)Z

    .line 53
    invoke-direct {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->rebuildPresetRows()V

    return-void
.end method

.method public getFragmentTitle()I
    .locals 0

    const p0, 0x7f1402eb

    return p0
.end method

.method synthetic lambda$showAdd$0$com-prometheus-camera-settings-DeviceNamePreferenceFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/4 p3, 0x0

    .line 164
    invoke-direct {p0, p1, p3, p2}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->saveFromDialog(Landroid/widget/EditText;ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method synthetic lambda$showAdd$1$com-prometheus-camera-settings-DeviceNamePreferenceFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    const/4 p3, 0x1

    .line 166
    invoke-direct {p0, p1, p3, p2}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->saveFromDialog(Landroid/widget/EditText;ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public onDelete(Ljava/lang/String;)V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete callback value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoenixWatermark"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/prometheus/camera/settings/DevicePresetStore;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->rebuildPresetRows()V

    .line 126
    const-string p0, "delete preference group rebuilt"

    invoke-static {v1, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 130
    const-string v0, "add_preset"

    iget-object p1, p1, Landroidx/preference/Preference;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 131
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/prometheus/camera/settings/DevicePresetStore;->add(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/prometheus/camera/settings/DevicePresetStore;->active(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p1, v0, p2}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->addRow(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1
    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 92
    const-string v0, "add_preset"

    iget-object v1, p1, Landroidx/preference/Preference;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->showAdd()V

    return v1

    .line 96
    :cond_0
    const-string v0, "metadata_sync"

    iget-object v2, p1, Landroidx/preference/Preference;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 97
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/prometheus/camera/settings/MetadataSyncActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-class v0, Lcom/prometheus/camera/settings/MetadataSyncPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "target_tag"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, p1, v2}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->rows:Ljava/util/Map;

    iget-object p1, p1, Landroidx/preference/Preference;->m:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prometheus/camera/settings/DevicePresetPreference;

    if-nez p1, :cond_2

    return v2

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prometheus/camera/settings/DevicePresetPreference;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/prometheus/camera/settings/DevicePresetStore;->apply(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/prometheus/camera/settings/DevicePresetPreference;->value()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/prometheus/camera/settings/DeviceNamePreferenceFragment;->select(Ljava/lang/String;)V

    return v1
.end method

.method public registerPreferenceListener()V
    .locals 0

    return-void
.end method
