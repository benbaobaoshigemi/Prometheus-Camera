.class public final Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;
.super Lcom/android/camera/fragment/settings/b;
.source "CustomLutPreferenceFragment.java"


# static fields
.field private static final KEY_IMPORT:Ljava/lang/String; = "custom_lut_import"

.field private static final REQUEST_CUBE:I = 0x238d

.field private static final REQUEST_CUBE_BATCH:I = 0x238e


# instance fields
.field private installed:Landroidx/preference/PreferenceCategory;

.field private final managed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;"
        }
    .end annotation
.end field

.field private pendingSlot:I

.field private progress:Landroid/app/ProgressDialog;


# direct methods
.method public static synthetic $r8$lambda$5qoNA19lPgScQ1fJfm9f-bWKjWI(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->rebuildInstalled()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/b;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->managed:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->chooseCube(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->showDeleteDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->refresh(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->closeProgress()V

    return-void
.end method

.method static synthetic access$400(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->rebuildInstalled()V

    return-void
.end method

.method private chooseCube(I)V
    .locals 1

    .line 159
    iput p1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->pendingSlot:I

    .line 160
    invoke-direct {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->cubeIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x238d

    invoke-virtual {p0, p1, v0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private chooseCubes()V
    .locals 3

    .line 164
    invoke-direct {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->cubeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 165
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x238e

    .line 166
    invoke-virtual {p0, v0, v1}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private closeProgress()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->progress:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private collectUris(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 231
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 232
    invoke-virtual {v0, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method

.method private cubeIntent()Landroid/content/Intent;
    .locals 3

    .line 170
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v0, "application/octet-stream"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "text/plain"

    const-string v2, "application/x-cube"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.MIME_TYPES"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private importBatch(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 242
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 244
    invoke-static {v0}, Lcom/prometheus/camera/filters/CustomLutStore;->availableSlotCount(Landroid/content/Context;)I

    move-result v1

    .line 245
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v1, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u6240\u9009 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u4e2a LUT\uff0c\u4f46\u4ec5\u5269 "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u4e2a\u69fd\u4f4d"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 250
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 251
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 252
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ".cube"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u6279\u91cf\u5bfc\u5165\u4ec5\u652f\u6301 .cube \u6587\u4ef6"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 254
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 258
    :cond_4
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->progress:Landroid/app/ProgressDialog;

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6b63\u5728\u6821\u9a8c\u5e76\u8f6c\u6362 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \u4e2a LUT\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->progress:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 261
    iget-object v1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 262
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;-><init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;Ljava/util/ArrayList;Landroid/content/Context;)V

    const-string p0, "CustomLutBatchImport"

    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private rebuildInstalled()V
    .locals 6

    .line 65
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->installed:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->m0()V

    .line 67
    iget-object v1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->managed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 68
    invoke-static {v0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 69
    iget-object v3, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->managed:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v3, Landroidx/preference/Preference;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "managed_filter_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->managed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->a0(Ljava/lang/String;)V

    .line 72
    invoke-static {v0, v2}, Lcom/prometheus/camera/filters/FilterCatalogStore;->labelFor(Landroid/content/Context;Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->e0(Ljava/lang/String;)V

    .line 73
    iget-object v4, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-static {v4}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result v4

    .line 74
    iget v5, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->grain:I

    iget v2, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->diffusion:I

    invoke-static {v5, v2}, Lcom/prometheus/camera/filters/FilterEffectStore;->summary(II)Ljava/lang/String;

    move-result-object v2

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_0

    .line 76
    const-string v2, ""

    goto :goto_1

    :cond_0
    const-string v2, " \u00b7 \u7528\u6237\u5bfc\u5165"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->c0(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 77
    iput-boolean v2, v3, Landroidx/preference/Preference;->t:Z

    .line 78
    iput-object p0, v3, Landroidx/preference/Preference;->f:Landroidx/preference/Preference$d;

    .line 79
    iget-object v2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->installed:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceCategory;->j0(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private refresh(I)V
    .locals 0

    .line 327
    invoke-direct {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->rebuildInstalled()V

    return-void
.end method

.method private saveCatalog(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->save(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u4fdd\u5b58\u5931\u8d25"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->rebuildInstalled()V

    return-void
.end method

.method private showDeleteDerivedDialog(Ljava/lang/String;)V
    .locals 3

    .line 310
    new-instance v0, Lmiuix/appcompat/app/h$a;

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/h$a;-><init>(Landroid/content/Context;)V

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5220\u9664\u201c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->labelFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u201d\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/h$a;->C(Ljava/lang/CharSequence;)V

    .line 312
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/h$a;->q(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 313
    new-instance v1, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$7;-><init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;Ljava/lang/String;)V

    const-string p0, "\u5220\u9664"

    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/h$a;->y(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 323
    invoke-virtual {v0}, Lmiuix/appcompat/app/h$a;->E()Lmiuix/appcompat/app/h;

    return-void
.end method

.method private showDeleteDialog(I)V
    .locals 3

    .line 293
    new-instance v0, Lmiuix/appcompat/app/h$a;

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/h$a;-><init>(Landroid/content/Context;)V

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5220\u9664\u81ea\u5b9a\u4e49\u6ee4\u955c "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/h$a;->C(Ljava/lang/CharSequence;)V

    .line 295
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/h$a;->q(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 296
    new-instance v1, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$6;-><init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;I)V

    const-string p0, "\u5220\u9664"

    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/h$a;->y(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 306
    invoke-virtual {v0}, Lmiuix/appcompat/app/h$a;->E()Lmiuix/appcompat/app/h;

    return-void
.end method

.method private showRenameDialog(I)V
    .locals 7

    .line 130
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    new-instance v1, Lmiuix/androidbasewidget/widget/StateEditText;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lmiuix/androidbasewidget/widget/StateEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v3, 0x1

    .line 132
    invoke-virtual {v1, v3}, Lmiuix/androidbasewidget/widget/StateEditText;->setSingleLine(Z)V

    .line 133
    invoke-virtual {v1, v3}, Lmiuix/androidbasewidget/widget/StateEditText;->setSelectAllOnFocus(Z)V

    .line 134
    invoke-static {v0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->name(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiuix/androidbasewidget/widget/StateEditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 136
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 137
    invoke-virtual {v4, v3, v5, v3, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 138
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v3, Lmiuix/appcompat/app/h$a;

    invoke-direct {v3, v0}, Lmiuix/appcompat/app/h$a;-><init>(Landroid/content/Context;)V

    .line 141
    const-string v0, "\u91cd\u547d\u540d\u6ee4\u955c"

    invoke-virtual {v3, v0}, Lmiuix/appcompat/app/h$a;->C(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/h$a;->D(Landroid/view/View;)V

    .line 143
    const-string v0, "\u53d6\u6d88"

    invoke-virtual {v3, v0, v2}, Lmiuix/appcompat/app/h$a;->q(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 144
    new-instance v0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$3;

    invoke-direct {v0, p0, p1, v1}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$3;-><init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;ILmiuix/androidbasewidget/widget/StateEditText;)V

    const-string p0, "\u4fdd\u5b58"

    invoke-virtual {v3, p0, v0}, Lmiuix/appcompat/app/h$a;->y(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 155
    invoke-virtual {v3}, Lmiuix/appcompat/app/h$a;->E()Lmiuix/appcompat/app/h;

    return-void
.end method


# virtual methods
.method public addCurrentPreferences()V
    .locals 6

    .line 37
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/prometheus/camera/filters/CustomLutStore;->reconcile(Landroid/content/Context;)I

    .line 39
    const-string v1, "prometheus_custom_lut_information"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->addCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    .line 40
    iget-object v3, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceScreen;->j0(Landroidx/preference/Preference;)Z

    .line 41
    new-instance v3, Landroidx/preference/Preference;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const-string v5, "custom_lut_note"

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->a0(Ljava/lang/String;)V

    .line 43
    const-string v5, "Rec.709 3D LUT"

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->e0(Ljava/lang/String;)V

    .line 44
    const-string v5, "\u652f\u6301 17\u300133\u300165 \u9636 .cube\uff1bDOMAIN \u5fc5\u987b\u4e3a 0\u20131\u3002\u4e0d\u652f\u6301 1D shaper\u3002\u5bfc\u5165\u540e\u5728\u672c\u673a\u8f6c\u6362\u4e3a\u76f8\u673a\u539f\u751f LUT\u3002"

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->c0(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    .line 45
    iput-boolean v5, v3, Landroidx/preference/Preference;->t:Z

    .line 46
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceCategory;->j0(Landroidx/preference/Preference;)Z

    .line 48
    const-string v1, "prometheus_custom_lut_actions"

    invoke-virtual {p0, v1, v2}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->addCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    .line 49
    iget-object v3, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceScreen;->j0(Landroidx/preference/Preference;)Z

    .line 50
    new-instance v3, Landroidx/preference/Preference;

    invoke-direct {v3, v0, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const-string v0, "custom_lut_import"

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->a0(Ljava/lang/String;)V

    .line 52
    const-string v0, "\u6279\u91cf\u5bfc\u5165 LUT"

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->e0(Ljava/lang/String;)V

    .line 53
    const-string v0, "\u4e00\u6b21\u9009\u62e9\u591a\u4e2a Rec.709 .cube \u6587\u4ef6\uff0c\u6309\u9009\u62e9\u987a\u5e8f\u6dfb\u52a0\u4e3a\u539f\u751f\u6ee4\u955c"

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->c0(Ljava/lang/CharSequence;)V

    .line 54
    iput-boolean v5, v3, Landroidx/preference/Preference;->t:Z

    .line 55
    iput-object p0, v3, Landroidx/preference/Preference;->f:Landroidx/preference/Preference$d;

    .line 56
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceCategory;->j0(Landroidx/preference/Preference;)Z

    .line 58
    const-string v0, "prometheus_filter_customization"

    invoke-virtual {p0, v0, v2}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->addCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->installed:Landroidx/preference/PreferenceCategory;

    .line 59
    const-string v1, "\u975e\u5f95\u5361\u6ee4\u955c"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->e0(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->installed:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->j0(Landroidx/preference/Preference;)Z

    .line 61
    invoke-direct {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->rebuildInstalled()V

    return-void
.end method

.method public getFragmentTitle()I
    .locals 0

    const p0, 0x7f140002

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 181
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/settings/b;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x238d

    const/16 v1, 0x238e

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_6

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_2

    .line 185
    invoke-direct {p0, p3}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->collectUris(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->importBatch(Ljava/util/ArrayList;)V

    return-void

    .line 188
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 189
    iget p2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->pendingSlot:I

    if-eqz p1, :cond_6

    const/4 p3, 0x1

    if-lt p2, p3, :cond_6

    const/16 v0, 0x42

    if-le p2, v0, :cond_3

    goto :goto_1

    .line 191
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 192
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".cube"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 196
    :cond_4
    new-instance p3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->progress:Landroid/app/ProgressDialog;

    .line 197
    const-string v0, "\u6b63\u5728\u6821\u9a8c\u5e76\u8f6c\u6362 LUT\u2026"

    invoke-virtual {p3, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 198
    iget-object p3, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->progress:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 199
    iget-object p3, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {p3}, Landroid/app/ProgressDialog;->show()V

    .line 200
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;-><init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;ILandroid/net/Uri;)V

    const-string p0, "CustomLutImport"

    invoke-direct {p3, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    return-void

    .line 193
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u8bf7\u9009\u62e9 .cube \u6587\u4ef6"

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 85
    iget-object p1, p1, Landroidx/preference/Preference;->m:Ljava/lang/String;

    .line 86
    const-string v0, "custom_lut_import"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->nextAvailableSlot(Landroid/content/Context;)I

    .line 89
    invoke-direct {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->chooseCubes()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 96
    const-string v2, "managed_filter_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    const/16 v2, 0xf

    .line 99
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-ltz p1, :cond_5

    .line 103
    iget-object v2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->managed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_2

    goto :goto_3

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->managed:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    iget-object p1, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    move-object v3, v2

    goto :goto_1

    .line 106
    :cond_3
    new-instance v3, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$1;-><init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;I)V

    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    .line 111
    :cond_4
    new-instance v2, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$2;-><init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;I)V

    .line 117
    :goto_2
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;)V

    .line 116
    invoke-static {v0, p1, v4, v3, v2}, Lcom/prometheus/camera/filters/FilterEditorDialog;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return v1

    :catch_1
    :cond_5
    :goto_3
    return v0
.end method

.method public registerPreferenceListener()V
    .locals 0

    return-void
.end method
