.class public Lcom/prometheus/camera/backup/BackupPreferenceFragment;
.super Lcom/android/camera/fragment/settings/b;
.source "BackupPreferenceFragment.java"


# instance fields
.field private mScope:I

.field private mModes:[Z

.field private mModesShown:Z

.field private mModesGroup:Landroidx/preference/PreferenceGroup;

.field private mActionsGroup:Landroidx/preference/PreferenceGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mScope:I

    iput-boolean v0, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mModesShown:Z

    return-void
.end method


.method private addCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroidx/preference/PreferenceGroup;)Landroidx/preference/CheckBoxPreference;
    .locals 3

    new-instance v0, Lcom/android/camera/preferences/AccessibleCheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/AccessibleCheckBoxPreference;-><init>(Landroidx/fragment/app/l;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->a0(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->e0(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->c0(Ljava/lang/CharSequence;)V

    :cond_0
    # mPersistent must be false: with it left true the framework calls
    # persistBoolean()/getPersistedBoolean() on attach, so the checkboxes
    # remembered their state from a previous visit while mModes was freshly
    # initialised to all-true. The UI then showed "only \u62cd\u7167+\u591c\u666f" and there was
    # nothing left to toggle, so mModes never got corrected and the export
    # still claimed all 21 modes.
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/preference/Preference;->t:Z

    invoke-virtual {v0, p4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p5, v0}, Landroidx/preference/PreferenceGroup;->j0(Landroidx/preference/Preference;)Z

    return-object v0
.end method


.method private addAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V
    .locals 3

    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->a0(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->e0(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->c0(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/preference/Preference;->t:Z

    invoke-virtual {p4, v0}, Landroidx/preference/PreferenceGroup;->j0(Landroidx/preference/Preference;)Z

    return-void
.end method


.method private modeKey(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backup_mode_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


.method private setModesVisible(Z)V
    .locals 2

    if-eqz p1, :hide_log

    const-string v0, "modes show"

    invoke-direct {p0, v0}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->plog(Ljava/lang/String;)V

    goto :vis_check

    :hide_log
    const-string v0, "modes hide"

    invoke-direct {p0, v0}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->plog(Ljava/lang/String;)V

    :vis_check
    iget-boolean v0, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mModesShown:Z

    if-eq p1, v0, :done

    iput-boolean p1, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mModesShown:Z

    iget-object v0, p0, Lcom/android/camera/fragment/settings/b;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mModesGroup:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :hide

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->j0(Landroidx/preference/Preference;)Z

    move-result v0

    # The mode group is DETACHED when the framework calls
    # registerPreferenceListener(), so registerListener() never walked into it
    # and its 21 rows never received Preference->e (the OnPreferenceChange
    # listener). Tapping a mode checkbox still toggled the widget (with no
    # listener callChangeListener() returns true by default), so the UI looked
    # right while onPreferenceChange never ran and mModes stayed all-true --
    # the export then claimed all 21 modes. Re-register on every attach.
    invoke-virtual {p0, v1, p0}, Lcom/android/camera/fragment/settings/b;->registerListener(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference$c;)V

    goto :refresh

    :hide
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->n0(Landroidx/preference/Preference;)Z

    move-result v0

    :refresh
    invoke-direct {p0}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->refreshScreen()V

    :done
    return-void
.end method


.method private refreshScreen()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/settings/b;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :done

    iget-object v0, v0, Landroidx/preference/Preference;->W:Landroidx/preference/g;

    if-eqz v0, :done

    iget-object v1, v0, Landroidx/preference/g;->e:Landroid/os/Handler;

    iget-object v2, v0, Landroidx/preference/g;->f:Landroidx/preference/g$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :done
    return-void
.end method


.method private buildScopeArray()[I
    .locals 6

    iget v0, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mScope:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mModes:[Z

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :count_loop
    if-ge v2, v1, :count_done

    aget-boolean v4, v0, v2

    if-eqz v4, :count_next

    add-int/lit8 v3, v3, 0x1

    :count_next
    add-int/lit8 v2, v2, 0x1

    goto :count_loop

    :count_done
    new-array v1, v3, [I

    sget-object v2, Lcom/prometheus/camera/backup/BackupScope;->MODE_IDS:[I

    iget-object v0, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mModes:[Z

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v0, 0x0

    :fill_loop
    if-ge v0, v3, :fill_done

    iget-object v5, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mModes:[Z

    aget-boolean v5, v5, v0

    if-eqz v5, :fill_next

    aget v5, v2, v0

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    :fill_next
    add-int/lit8 v0, v0, 0x1

    goto :fill_loop

    :fill_done
    return-object v1
.end method


.method private plog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PhoenixBackup"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


.method private showToast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


.method private doExport()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd-HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "phoenix-settings-backup-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


.method private doImport()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "application/zip"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "application/octet-stream"

    aput-object v3, v1, v2

    const-string v2, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


.method private askRestart()V
    .locals 9

    # miuix dialog via the same helper the camera uses for the
    # General page's "restore defaults" entry (vr.w.c). It renders with the
    # miuix/bottom-sheet styling of the host PreferenceExtraActivity and,
    # unlike android.app.AlertDialog.Builder, it takes plain Runnables instead
    # of DialogInterface.OnClickListener -- so no interface-cast crash.
    # Signature: c(Context, String title, CharSequence message,
    #              CharSequence positiveText, Runnable positiveAction,
    #              CharSequence neutralText, Runnable neutralAction,
    #              CharSequence negativeText, Runnable negativeAction)
    # vr.t routes which=-1/-2/-3 to positive/negative/neutral and skips nulls.
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/l;

    move-result-object v0

    const-string v1, "\u9700\u8981\u91cd\u542f\u76f8\u673a"

    const-string v2, "\u6062\u590d\u5907\u4efd\u9700\u8981\u91cd\u542f\u76f8\u673a\u8fdb\u7a0b\u540e\u751f\u6548\u3002"

    const-string v3, "\u7acb\u5373\u91cd\u542f"

    new-instance v4, Lcom/prometheus/camera/backup/BackupPreferenceFragment$1;

    invoke-direct {v4}, Lcom/prometheus/camera/backup/BackupPreferenceFragment$1;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "\u7a0d\u540e"

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lvr/w;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/h;

    move-result-object v0

    return-void
.end method


# virtual methods

.method public addCurrentPreferences()V
    .locals 10

    sget-object v0, Lcom/prometheus/camera/backup/BackupScope;->MODE_IDS:[I

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mModes:[Z

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :fill_loop
    if-ge v2, v1, :fill_done

    aput-boolean v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :fill_loop

    :fill_done
    const-string v0, "category_backup_actions"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/b;->addCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mActionsGroup:Landroidx/preference/PreferenceGroup;

    const-string v1, "\u64cd\u4f5c"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->e0(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/fragment/settings/b;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->j0(Landroidx/preference/Preference;)Z

    const-string v1, "backup_action_export"

    const-string v2, "\u5bfc\u51fa\u5907\u4efd"

    const-string v3, "\u6839\u636e\u6240\u9009\u5907\u4efd\u8303\u56f4\u8fdb\u884c\u6307\u5b9a\u5185\u5bb9\u5907\u4efd"

    iget-object v4, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mActionsGroup:Landroidx/preference/PreferenceGroup;

    move-object v0, p0

    invoke-direct/range {v0 .. v4}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->addAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V

    const-string v1, "backup_action_import"

    const-string v2, "\u5bfc\u5165\u6062\u590d"

    const-string v3, "\u5bfc\u5165\u5907\u4efdZIP\u5305\u6062\u590d\u76f8\u673a\u6216Phoenix\u8bbe\u7f6e"

    iget-object v4, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mActionsGroup:Landroidx/preference/PreferenceGroup;

    move-object v0, p0

    invoke-direct/range {v0 .. v4}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->addAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V

    # No category header here: the row carries its own title + summary, exactly
    # like the lab page's \u8857\u62cd\u6a21\u5f0fUI row, and a "\u5907\u4efd\u8303\u56f4" category header on top
    # of a "\u5907\u4efd\u8303\u56f4" row title just duplicated the label.
    # One DropDownPreference (miuix Spinner) instead of three toggle rows.
    # Labels and values live in two parallel arrays; the widget reports the
    # VALUE back through callChangeListener, so onPreferenceChange sees
    # "all"/"phoenix"/"custom".
    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "\u5168\u90e8\u8bbe\u7f6e"

    aput-object v2, v6, v1

    const/4 v1, 0x1

    const-string v2, "\u4ec5Phoenix\u8bbe\u7f6e"

    aput-object v2, v6, v1

    const/4 v1, 0x2

    const-string v2, "\u81ea\u5b9a\u4e49\u6a21\u5f0f"

    aput-object v2, v6, v1

    new-array v7, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "all"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const-string v2, "phoenix"

    aput-object v2, v7, v1

    const/4 v1, 0x2

    const-string v2, "custom"

    aput-object v2, v7, v1

    new-instance v8, Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v8, v1, v2}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "pref_backup_scope"

    invoke-virtual {v8, v1}, Landroidx/preference/Preference;->a0(Ljava/lang/String;)V

    const-string v1, "\u5907\u4efd\u8303\u56f4"

    invoke-virtual {v8, v1}, Landroidx/preference/Preference;->e0(Ljava/lang/String;)V

    const-string v1, "\u9009\u62e9\u5907\u4efd\u8303\u56f4"

    invoke-virtual {v8, v1}, Landroidx/preference/Preference;->c0(Ljava/lang/CharSequence;)V

    const-string v1, "all"

    iput-object v1, v8, Landroidx/preference/Preference;->J:Ljava/lang/Object;

    invoke-virtual {v8, v6}, Lmiuix/preference/DropDownPreference;->k0([Ljava/lang/CharSequence;)V

    iget-object v1, v8, Lmiuix/preference/DropDownPreference;->n0:Landroid/widget/ArrayAdapter;

    instance-of v2, v1, Lmiuix/preference/DropDownPreference$f;

    if-eqz v2, :no_adapter

    check-cast v1, Lmiuix/preference/DropDownPreference$f;

    iput-object v7, v1, Lmiuix/preference/DropDownPreference$f;->g:[Ljava/lang/CharSequence;

    iget-object v1, v8, Lmiuix/preference/DropDownPreference;->m0:Ljx/b;

    invoke-virtual {v1}, Ljx/b;->notifyDataSetChanged()V

    iput-object v7, v8, Lmiuix/preference/DropDownPreference;->s0:[Ljava/lang/CharSequence;

    :no_adapter
    const/4 v1, 0x0

    iput-boolean v1, v8, Landroidx/preference/Preference;->t:Z

    iget-object v1, p0, Lcom/android/camera/fragment/settings/b;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v8}, Landroidx/preference/PreferenceGroup;->j0(Landroidx/preference/Preference;)Z

    const-string v0, "category_backup_modes"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/b;->addCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mModesGroup:Landroidx/preference/PreferenceGroup;

    const-string v1, "\u81ea\u5b9a\u4e49\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->e0(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/fragment/settings/b;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->j0(Landroidx/preference/Preference;)Z

    sget-object v7, Lcom/prometheus/camera/backup/BackupScope;->MODE_IDS:[I

    sget-object v8, Lcom/prometheus/camera/backup/BackupScope;->MODE_NAMES:[Ljava/lang/String;

    array-length v9, v7

    const/4 v6, 0x0

    :mode_loop
    if-ge v6, v9, :mode_done

    aget v5, v7, v6

    aget-object v2, v8, v6

    invoke-direct {p0, v5}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->modeKey(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mModesGroup:Landroidx/preference/PreferenceGroup;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->addCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroidx/preference/PreferenceGroup;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    # Belt and braces: seed mModes from the row's real checked state instead of
    # trusting the all-true fill above.
    iget-boolean v0, v0, Landroidx/preference/TwoStatePreference;->d0:Z

    iget-object v1, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mModes:[Z

    aput-boolean v0, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :mode_loop

    :mode_done
    iget-object v0, p0, Lcom/android/camera/fragment/settings/b;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mModesGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->n0(Landroidx/preference/Preference;)Z

    move-result v0

    return-void
.end method


.method public registerPreferenceListener()V
    .locals 8

    # Sets Preference->e (the OnPreferenceChange listener) on every child,
    # recursively -- that is what drives onPreferenceChange for both the
    # backup-scope dropdown and the per-mode checkboxes.
    iget-object v0, p0, Lcom/android/camera/fragment/settings/b;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, p0}, Lcom/android/camera/fragment/settings/b;->registerListener(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference$c;)V

    # Only the two action rows need a click listener.
    iget-object v0, p0, Lcom/android/camera/fragment/settings/b;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "backup_action_export"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->k0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object p0, v1, Landroidx/preference/Preference;->f:Landroidx/preference/Preference$d;

    :cond_0
    const-string v1, "backup_action_import"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->k0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object p0, v1, Landroidx/preference/Preference;->f:Landroidx/preference/Preference$d;

    :cond_1
    return-void
.end method


.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p1, Landroidx/preference/Preference;->m:Ljava/lang/String;

    if-eqz v0, :deny

    const-string v1, "pref_backup_scope"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_mode

    invoke-direct {p0, p2}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->onScopeChanged(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_mode
    const-string v1, "backup_mode_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :deny

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->onModeToggled(Landroidx/preference/Preference;Z)Z

    move-result v0

    return v0

    :deny
    const/4 v0, 0x0

    return v0
.end method


.method private onScopeChanged(Ljava/lang/Object;)Z
    .locals 3

    # The DropDownPreference hands back the entry VALUE ("all"/"phoenix"/
    # "custom"), never the label, so no label parsing is needed here.
    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "phoenix"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :not_phoenix

    const/4 v0, 0x1

    :not_phoenix
    const-string v1, "custom"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :not_custom

    const/4 v0, 0x2

    :not_custom
    iput v0, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mScope:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scope "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->plog(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne v0, v1, :hide_modes

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->setModesVisible(Z)V

    goto :scope_done

    :hide_modes
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->setModesVisible(Z)V

    :scope_done
    const/4 v0, 0x1

    return v0
.end method


.method private onModeToggled(Landroidx/preference/Preference;Z)Z
    .locals 6

    iget v0, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mScope:I

    const/4 v1, 0x2

    if-ne v0, v1, :locked

    iget-object v0, p1, Landroidx/preference/Preference;->m:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/prometheus/camera/backup/BackupScope;->MODE_IDS:[I

    array-length v2, v1

    const/4 v3, 0x0

    :idx_loop
    if-ge v3, v2, :idx_done

    aget v4, v1, v3

    if-ne v4, v0, :idx_next

    iget-object v0, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mModes:[Z

    aput-boolean p2, v0, v3

    :idx_done
    const/4 v0, 0x1

    return v0

    :idx_next
    add-int/lit8 v3, v3, 0x1

    goto :idx_loop

    :locked
    const-string v0, "\u8bf7\u5148\u9009\u62e9\u81ea\u5b9a\u4e49\u6a21\u5f0f"

    invoke-direct {p0, v0}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->showToast(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getFragmentTitle()I
    .locals 1

    const v0, 0x7f1402ee

    return v0
.end method


.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p1, Landroidx/preference/Preference;->m:Ljava/lang/String;

    if-eqz v0, :cond_unknown

    const-string v1, "backup_action_export"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mScope:I

    if-ltz v0, :no_scope

    invoke-direct {p0}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->doExport()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v1, "backup_action_import"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_unknown

    iget v0, p0, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->mScope:I

    if-ltz v0, :no_scope

    invoke-direct {p0}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->doImport()V

    const/4 v0, 0x1

    return v0

    :no_scope
    const-string v0, "\u8bf7\u5148\u9009\u62e9\u5907\u4efd\u8303\u56f4"

    invoke-direct {p0, v0}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->showToast(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_unknown
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_cancel

    if-eqz p3, :cond_cancel

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_cancel

    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_import

    :try_export
    const-string v1, "PhoenixBackup"

    const-string v2, "export start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/l;

    move-result-object v1

    move-object v5, v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_null_stream

    invoke-direct {p0}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->buildScopeArray()[I

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->write(Landroid/content/Context;Ljava/io/OutputStream;[I)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const-string v1, "PhoenixBackup"

    const-string v2, "export done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "\u5907\u4efd\u5df2\u5bfc\u51fa"

    invoke-direct {p0, v1}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->showToast(Ljava/lang/String;)V

    return-void

    :cond_null_stream
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "openOutputStream returned null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_export_end
    .catch Ljava/lang/Exception; {:try_export .. :try_export_end} :catch_fail

    :cond_import
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_cancel

    :try_import
    const-string v1, "PhoenixBackup"

    const-string v2, "import start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/l;

    move-result-object v1

    move-object v5, v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_null_stream2

    invoke-direct {p0}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->buildScopeArray()[I

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->restore(Landroid/content/Context;Ljava/io/InputStream;[I)Lcom/prometheus/camera/backup/SettingsBackupArchive$RestoreResult;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const-string v1, "PhoenixBackup"

    iget v3, v2, Lcom/prometheus/camera/backup/SettingsBackupArchive$RestoreResult;->prefKeys:I

    iget v4, v2, Lcom/prometheus/camera/backup/SettingsBackupArchive$RestoreResult;->files:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "import done keys="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " files="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\u5df2\u6062\u590d"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u9879\u8bbe\u7f6e\uff0c"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e2a\u6587\u4ef6"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->showToast(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->askRestart()V

    return-void

    :cond_null_stream2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "openInputStream returned null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_import_end
    .catch Ljava/lang/Exception; {:try_import .. :try_import_end} :catch_fail

    :cond_cancel
    const-string v0, "PhoenixBackup"

    const-string v1, "saf cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_fail
    move-exception v0

    const-string v1, "PhoenixBackup"

    const-string v2, "failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prometheus/camera/backup/BackupPreferenceFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method
