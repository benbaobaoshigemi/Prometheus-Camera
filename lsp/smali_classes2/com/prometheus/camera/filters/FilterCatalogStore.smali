.class public final Lcom/prometheus/camera/filters/FilterCatalogStore;
.super Ljava/lang/Object;
.source "FilterCatalogStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;,
        Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;
    }
.end annotation


# static fields
.field public static final CATALOG_ID:Ljava/lang/String; = "still-v1"

.field private static final KEY_CURRENT:Ljava/lang/String; = "still_filter_catalog_json"

.field private static final KEY_PENDING_SYNC:Ljava/lang/String; = "still_filter_catalog_pending_sync"

.field private static final MODEL:Ljava/lang/String; = "unified-filter-entity-v1"

.field private static final PREFS:Ljava/lang/String; = "prometheus_feature_config"

.field public static final SCHEMA_VERSION:I = 0x9

.field private static final TAG:Ljava/lang/String; = "FilterCatalogStore"

.field private static volatile lastRenderFingerprint:I = -0x80000000

.field private static volatile runtimeRefreshSucceeded:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->defaultGrain(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->defaultDiffusion(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(I)I
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->validGrain(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(I)I
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->validDiffusion(I)I

    move-result p0

    return p0
.end method

.method private static attachSnapshot(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 597
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    invoke-static {v0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->access$402(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static canonical()[Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;
    .locals 4

    .line 95
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_IDS:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 96
    new-instance v3, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;

    invoke-direct {v3, v2}, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;-><init>(I)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static canonicalIds()[Ljava/lang/String;
    .locals 1

    .line 101
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_IDS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static checkedUniqueLabel(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 611
    invoke-static {p3}, Lcom/prometheus/camera/filters/FilterCatalogStore;->normalizeLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 612
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 613
    iget-object v2, v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 614
    invoke-static {p0, p1, v1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->displayLabel(Landroid/content/Context;Ljava/util/List;Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 615
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u540d\u79f0\u5df2\u5b58\u5728"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p3
.end method

.method private static containsLabel(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 643
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 644
    invoke-static {p0, p1, v1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->displayLabel(Landroid/content/Context;Ljava/util/List;Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static copy(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;
    .locals 8

    .line 589
    new-instance v7, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->sourceId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->visible:Z

    iget-object v4, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->labelOverride:Ljava/lang/String;

    iget v5, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->grain:I

    iget v6, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->diffusion:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    .line 592
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->access$400(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->access$402(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;Ljava/lang/String;)Ljava/lang/String;

    return-object v7
.end method

.method private static decode(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    const-string v1, "entities"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 489
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    move v1, v3

    .line 490
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 491
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 492
    new-instance v11, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 493
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sourceId"

    .line 494
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "visible"

    .line 495
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "label"

    const-string v9, ""

    .line 496
    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 497
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prometheus/camera/filters/FilterCatalogStore;->defaultGrain(Ljava/lang/String;)I

    move-result v9

    const-string v10, "grain"

    invoke-virtual {v2, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 498
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prometheus/camera/filters/FilterCatalogStore;->defaultDiffusion(Ljava/lang/String;)I

    move-result v4

    const-string v10, "diffusion"

    invoke-virtual {v2, v10, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    .line 492
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    :cond_0
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->migrateDerivedCopies(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->reconcile(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 502
    :cond_1
    const-string v1, "order"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 503
    const-string v2, "visibility"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 504
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 505
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 506
    new-instance v4, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    invoke-static {v2}, Lcom/prometheus/camera/filters/FilterCatalogStore;->defaultVisible(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p1, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct {v4, v2, v5}, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 508
    :cond_2
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->reconcile(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->migrateLegacyEffects(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static defaultDiffusion(Ljava/lang/String;)I
    .locals 0

    .line 463
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->staticSpec(Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 464
    :cond_0
    iget p0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->defaultDiffusion:I

    :goto_0
    return p0
.end method

.method private static defaultGrain(Ljava/lang/String;)I
    .locals 0

    .line 458
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->staticSpec(Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 459
    :cond_0
    iget p0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->defaultGrain:I

    :goto_0
    return p0
.end method

.method private static defaultVisible(Ljava/lang/String;)Z
    .locals 0

    .line 682
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->staticSpec(Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 683
    iget-boolean p0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->defaultVisible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static defaults(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;"
        }
    .end annotation

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 469
    invoke-static {}, Lcom/prometheus/camera/filters/FilterCatalogStore;->canonical()[Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 470
    new-instance v13, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    iget-object v7, v5, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->id:Ljava/lang/String;

    iget-object v8, v5, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->id:Ljava/lang/String;

    iget-boolean v9, v5, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->defaultVisible:Z

    iget v11, v5, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->defaultGrain:I

    iget v12, v5, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->defaultDiffusion:I

    const-string v10, ""

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 475
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->configuredSlots(Landroid/content/Context;)[I

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 476
    invoke-static {v4}, Lcom/prometheus/camera/filters/CustomLutStore;->idForSlot(I)Ljava/lang/String;

    move-result-object v7

    .line 477
    new-instance v12, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    invoke-static {p0, v4}, Lcom/prometheus/camera/filters/CustomLutStore;->name(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 478
    invoke-static {p0, v4}, Lcom/prometheus/camera/filters/CustomLutStore;->legacyGrain(Landroid/content/Context;I)I

    move-result v10

    .line 479
    invoke-static {p0, v4}, Lcom/prometheus/camera/filters/CustomLutStore;->legacyDiffusion(Landroid/content/Context;I)I

    move-result v11

    const/4 v8, 0x1

    move-object v5, v12

    move-object v6, v7

    invoke-direct/range {v5 .. v11}, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    .line 477
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static deleteDerived(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_6

    .line 217
    const-string v0, "derived:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 221
    invoke-static {v0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->find(Ljava/util/List;Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 223
    iget-boolean v2, v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->visible:Z

    .line 224
    iget-object v3, v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->sourceId:Ljava/lang/String;

    .line 225
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    .line 227
    invoke-static {v0, v3}, Lcom/prometheus/camera/filters/FilterCatalogStore;->find(Ljava/util/List;Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    move-result-object v1

    if-nez v1, :cond_1

    .line 229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 230
    iget-object v5, v4, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->sourceId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v4

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 236
    iput-boolean v2, v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->visible:Z

    .line 238
    :cond_2
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->save(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 240
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->deleteOrphaned(Landroid/content/Context;I)V

    :cond_3
    return-void

    .line 238
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u5220\u9664\u6ee4\u955c"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 222
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u6ee4\u955c\u5b9e\u4f53\u4e0d\u5b58\u5728"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 218
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u53ea\u80fd\u5220\u9664\u53e6\u5b58\u4e3a\u6ee4\u955c"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static describe(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 340
    const-string p0, "absent"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "len:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static diagnosticState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " local="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->describe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " provider="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {p2}, Lcom/prometheus/camera/filters/FilterCatalogStore;->describe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " normalized="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-static {p3}, Lcom/prometheus/camera/filters/FilterCatalogStore;->describe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " usableBytes="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static diffusion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 429
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->loadForRender(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->find(Ljava/util/List;Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    move-result-object p0

    if-nez p0, :cond_0

    .line 430
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->defaultDiffusion(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->diffusion:I

    :goto_0
    return p0
.end method

.method private static displayLabel(Landroid/content/Context;Ljava/util/List;Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 651
    iget-object p1, p2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->labelOverride:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->labelOverride:Ljava/lang/String;

    return-object p0

    .line 652
    :cond_0
    iget-object p1, p2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->staticSpec(Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 653
    iget-object v0, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->label:Ljava/lang/String;

    return-object p0

    .line 654
    :cond_1
    iget-object p1, p2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 655
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 656
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->name(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 658
    :cond_2
    iget-object p1, p2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->isGalleryKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 659
    iget-object p0, p2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-static {p0}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->labelFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 662
    :cond_3
    :try_start_0
    iget-object p1, p2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    iget-object v0, p2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    .line 663
    invoke-static {v0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->hasDescription(Ljava/lang/String;)Z

    move-result v0

    .line 662
    invoke-static {p1, v0}, Lcom/prometheus/camera/filters/FilterRuntimePort;->titleResource(Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_4

    .line 664
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 666
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot resolve snapshot title for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FilterCatalogStore"

    invoke-static {v0, p1, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    :cond_4
    iget-object p0, p2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    return-object p0
.end method

.method private static editableLabel(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 623
    invoke-static {p2}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-static {p3}, Lcom/prometheus/camera/filters/FilterCatalogStore;->normalizeLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 626
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/prometheus/camera/filters/FilterCatalogStore;->checkedUniqueLabel(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static effect(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 434
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->loadForRender(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->find(Ljava/util/List;Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    move-result-object p0

    if-nez p0, :cond_0

    .line 435
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->defaultDiffusion(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->diffusion:I

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, 0x3

    return v0

    :cond_1
    if-nez p0, :cond_2

    .line 437
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->defaultGrain(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->grain:I

    :goto_1
    return p0
.end method

.method public static declared-synchronized exportJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/prometheus/camera/filters/FilterCatalogStore;

    monitor-enter v0

    .line 391
    :try_start_0
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->toJson(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static find(Ljava/util/List;Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;"
        }
    .end annotation

    .line 605
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    iget-object v1, v0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static flushPendingSync(Landroid/content/Context;)V
    .locals 4

    .line 710
    const-string v0, "FilterCatalogStore"

    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 711
    const-string v3, "still_filter_catalog_pending_sync"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 714
    :cond_0
    :try_start_0
    invoke-static {p0, v2}, Lcom/prometheus/camera/filters/FilterSyncOutbox;->publish(Landroid/content/Context;Ljava/lang/String;)V

    .line 715
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-nez p0, :cond_1

    .line 716
    const-string p0, "Cannot acknowledge filter sync outbox"

    invoke-static {v0, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 719
    const-string v1, "Filter sync remains pending"

    invoke-static {v0, v1, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static grain(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 424
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->loadForRender(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->find(Ljava/util/List;Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    move-result-object p0

    if-nez p0, :cond_0

    .line 425
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->defaultGrain(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->grain:I

    :goto_0
    return p0
.end method

.method public static hasDescription(Ljava/lang/String;)Z
    .locals 0

    .line 249
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->isLeicaId(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static hash(Ljava/lang/String;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static declared-synchronized importJson(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/prometheus/camera/filters/FilterCatalogStore;

    monitor-enter v0

    .line 396
    :try_start_0
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 397
    invoke-static {v1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->snapshotOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->validateImportJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->decode(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    .line 399
    invoke-static {p1, v1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->attachSnapshot(Ljava/util/List;Ljava/lang/String;)V

    .line 400
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->save(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isDeletable(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 119
    const-string v1, "derived:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 120
    :cond_0
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->staticSpec(Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    iget-boolean v0, v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->deletable:Z

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLeicaId(Ljava/lang/String;)Z
    .locals 1

    .line 105
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->staticSpec(Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 106
    const-string v0, "xiaomi-leica"

    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->origin:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLeicaOrdinal(I)Z
    .locals 2

    .line 111
    :try_start_0
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterRuntimePort;->isLeicaOrdinal(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 113
    const-string v0, "FilterCatalogStore"

    const-string v1, "Cannot resolve filter identity for icon"

    invoke-static {v0, v1, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isSingleLut(Ljava/lang/String;)Z
    .locals 2

    .line 125
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 126
    :cond_0
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->staticSpec(Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 127
    iget-boolean p0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->singleLut:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static known(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 582
    const-string v1, "derived:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 583
    :cond_0
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->staticSpec(Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;

    move-result-object v1

    if-eqz v1, :cond_1

    return v0

    .line 584
    :cond_1
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 585
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static labelFor(Landroid/content/Context;Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 160
    invoke-static {p0, v0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->displayLabel(Landroid/content/Context;Ljava/util/List;Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u6ee4\u955c\u5b9e\u4f53\u4e0d\u5b58\u5728"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static labelFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 139
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->find(Ljava/util/List;Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, v0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->labelOverride:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, v0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->labelOverride:Ljava/lang/String;

    return-object p0

    .line 141
    :cond_0
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->staticSpec(Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v1, v0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, v0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->label:Ljava/lang/String;

    return-object p0

    .line 143
    :cond_1
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/CustomLutStore;->name(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 147
    :cond_2
    invoke-static {p1}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->isGalleryKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->labelFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 149
    :cond_3
    :try_start_0
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->hasDescription(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/prometheus/camera/filters/FilterRuntimePort;->titleResource(Ljava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot resolve title for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterCatalogStore"

    invoke-static {v1, v0, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object p1
.end method

.method public static declared-synchronized load(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/prometheus/camera/filters/FilterCatalogStore;

    monitor-enter v0

    const/4 v1, 0x1

    .line 253
    :try_start_0
    invoke-static {p0, v1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static load(Landroid/content/Context;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;"
        }
    .end annotation

    const-string v0, "state-local-mirror committed="

    const-string v1, "state-normalize-cas committed=false rawHash="

    const-string v2, "state-load mode=render-read-only "

    const-string v3, "state-load mode=sync "

    .line 263
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "still_filter_catalog_json"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 266
    const-string v5, "FilterCatalogStore"

    if-nez v4, :cond_0

    .line 267
    :try_start_0
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->defaults(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/prometheus/camera/filters/FilterCatalogStore;->migrateLegacyEffects(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_0

    .line 268
    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/prometheus/camera/filters/FilterCatalogStore;->decode(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    .line 272
    :goto_0
    invoke-static {v7}, Lcom/prometheus/camera/filters/FilterCatalogStore;->toJson(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 274
    const-string v8, "Invalid local filter table; rebuilding current model"

    invoke-static {v5, v8, v7}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->defaults(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/prometheus/camera/filters/FilterCatalogStore;->migrateLegacyEffects(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lcom/prometheus/camera/filters/FilterCatalogStore;->toJson(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 278
    :goto_1
    invoke-static {p0, v7}, Lcom/prometheus/camera/filters/UnifiedFilterStatePort;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 280
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-static {p0, v8}, Lcom/prometheus/camera/filters/FilterCatalogStore;->decode(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v8

    .line 282
    invoke-static {v8}, Lcom/prometheus/camera/filters/FilterCatalogStore;->toJson(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 283
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-eqz p1, :cond_1

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 285
    invoke-static {p0, v4, v7, v9, v3}, Lcom/prometheus/camera/filters/FilterCatalogStore;->diagnosticState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 287
    :cond_1
    sget v3, Lcom/prometheus/camera/filters/FilterCatalogStore;->lastRenderFingerprint:I

    if-eq v3, v10, :cond_2

    .line 288
    sput v10, Lcom/prometheus/camera/filters/FilterCatalogStore;->lastRenderFingerprint:I

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 289
    invoke-static {p0, v4, v7, v9, v2}, Lcom/prometheus/camera/filters/FilterCatalogStore;->diagnosticState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    :cond_2
    :goto_2
    const-string v2, " normalizedHash="

    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 293
    invoke-static {p0, v7, v9}, Lcom/prometheus/camera/filters/UnifiedFilterStatePort;->compareAndSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 294
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v5, v0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u7edf\u4e00\u6ee4\u955c\u8868\u5df2\u88ab\u5176\u4ed6\u8fdb\u7a0b\u66f4\u65b0\uff0c\u8bf7\u91cd\u8bd5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_3
    if-eqz p1, :cond_6

    .line 301
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 302
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 303
    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " localHash="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static {v4}, Lcom/prometheus/camera/filters/FilterCatalogStore;->hash(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " usableBytes="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v5, v0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    goto :goto_4

    .line 309
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u65e0\u6cd5\u540c\u6b65\u6ee4\u955c\u8868\u672c\u5730\u955c\u50cf"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    if-eqz p1, :cond_7

    .line 312
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->flushPendingSync(Landroid/content/Context;)V

    .line 313
    :cond_7
    invoke-static {v8, v9}, Lcom/prometheus/camera/filters/FilterCatalogStore;->attachSnapshot(Ljava/util/List;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v8

    :catch_1
    move-exception v0

    if-eqz p1, :cond_8

    .line 319
    const-string p1, "Invalid unified filter table; migrating defaults"

    invoke-static {v5, p1, v0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->defaults(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->migrateLegacyEffects(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 321
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->toJson(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->persist(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->toJson(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->attachSnapshot(Ljava/util/List;Ljava/lang/String;)V

    return-object p1

    .line 317
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u7edf\u4e00\u6ee4\u955c\u8868\u635f\u574f\uff0c\u62d2\u7edd\u8fdb\u5165\u6e32\u67d3"

    invoke-direct {p0, p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static loadForRender(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;"
        }
    .end annotation

    .line 257
    const-class v0, Lcom/prometheus/camera/filters/FilterCatalogStore;

    monitor-enter v0

    const/4 v1, 0x0

    .line 258
    :try_start_0
    invoke-static {p0, v1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 259
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static migrateDerivedCopies(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;"
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 527
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 528
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 529
    iget-object v3, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    const-string v4, "derived:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 534
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "legacy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->sourceId:Ljava/lang/String;

    iget-object v5, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->labelOverride:Ljava/lang/String;

    invoke-static {p0, v3, v4, v5}, Lcom/prometheus/camera/filters/CustomLutStore;->cloneLut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 537
    new-instance v4, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    iget-boolean v9, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->visible:Z

    iget-object v10, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->labelOverride:Ljava/lang/String;

    iget v11, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->grain:I

    iget v12, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->diffusion:I

    move-object v6, v4

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v6 .. v12}, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-static {v3}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result v3

    iget v4, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->grain:I

    iget v5, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->diffusion:I

    .line 540
    invoke-static {p0, v3, v4, v5}, Lcom/prometheus/camera/filters/CustomLutStore;->mirrorLegacyEffects(Landroid/content/Context;III)V

    .line 543
    iget-object v3, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->sourceId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x0

    .line 547
    iput-boolean v4, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->visible:Z

    .line 548
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v4, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->sourceId:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Legacy non-LUT copy kept management-only: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FilterCatalogStore"

    invoke-static {v4, v2, v3}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 530
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 554
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 555
    iget-object v2, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->visible:Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private static migrateLegacyEffects(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;"
        }
    .end annotation

    .line 513
    const-string v0, "prometheus_filter_effects"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 515
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 516
    iget-object v2, v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/prometheus/camera/filters/FilterEffectStore;->readLegacy(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-lt v3, v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->grain:I

    goto :goto_0

    .line 519
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v5

    iput v2, v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->diffusion:I

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method private static normalizeLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 672
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 673
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x18

    .line 674
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 673
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static persist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 699
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/UnifiedFilterStatePort;->write(Landroid/content/Context;Ljava/lang/String;)V

    .line 700
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "still_filter_catalog_json"

    .line 701
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "still_filter_catalog_pending_sync"

    .line 702
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 703
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 706
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->flushPendingSync(Landroid/content/Context;)V

    return-void

    .line 704
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot persist unified filter table"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 695
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "prometheus_feature_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static reconcile(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;"
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 563
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 564
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    if-eqz v4, :cond_0

    .line 565
    iget-object v5, v4, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    .line 566
    invoke-static {v5}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 567
    iget-object v5, v4, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 570
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    if-eqz v2, :cond_2

    .line 571
    iget-object v3, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/prometheus/camera/filters/FilterCatalogStore;->known(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 572
    invoke-static {v2}, Lcom/prometheus/camera/filters/FilterCatalogStore;->copy(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 575
    :cond_3
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->defaults(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 576
    iget-object v2, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->copy(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method private static refreshCameraCatalog()Z
    .locals 3

    .line 749
    :try_start_0
    invoke-static {}, Lcom/prometheus/camera/filters/FilterRuntimePort;->refreshStillCatalog()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 751
    const-string v1, "FilterCatalogStore"

    const-string v2, "Cannot refresh filter catalog"

    invoke-static {v1, v2, v0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized refreshRuntimeCatalog()Z
    .locals 2

    const-class v0, Lcom/prometheus/camera/filters/FilterCatalogStore;

    monitor-enter v0

    .line 386
    :try_start_0
    invoke-static {}, Lcom/prometheus/camera/filters/FilterCatalogStore;->refreshCameraCatalog()Z

    move-result v1

    sput-boolean v1, Lcom/prometheus/camera/filters/FilterCatalogStore;->runtimeRefreshSucceeded:Z

    .line 387
    sget-boolean v1, Lcom/prometheus/camera/filters/FilterCatalogStore;->runtimeRefreshSucceeded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static rename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 164
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-static {v0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->find(Ljava/util/List;Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 167
    invoke-static {p0, v0, p1, p2}, Lcom/prometheus/camera/filters/FilterCatalogStore;->editableLabel(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 168
    iput-object p2, v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->labelOverride:Ljava/lang/String;

    .line 169
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/filters/CustomLutStore;->mirrorName(Landroid/content/Context;ILjava/lang/String;)V

    .line 171
    :cond_0
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->save(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    return p0

    .line 166
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u6ee4\u955c\u5b9e\u4f53\u4e0d\u5b58\u5728"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized resetToDefaults(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/prometheus/camera/filters/FilterCatalogStore;

    monitor-enter v0

    .line 416
    :try_start_0
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 417
    invoke-static {v1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->snapshotOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->defaults(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 419
    invoke-static {v2, v1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->attachSnapshot(Ljava/util/List;Ljava/lang/String;)V

    .line 420
    invoke-static {p0, v2}, Lcom/prometheus/camera/filters/FilterCatalogStore;->save(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized resolveVisibleIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/prometheus/camera/filters/FilterCatalogStore;

    monitor-enter v0

    .line 348
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 350
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 351
    iget-boolean v4, v3, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->visible:Z

    if-nez v4, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iget-object v3, v3, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->sourceId:Ljava/lang/String;

    invoke-static {v3}, Lcom/prometheus/camera/filters/CustomLutStore;->runtimeIdForStableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate runtime filter identity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p0, 0x0

    .line 358
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized restoreFactoryBackup(Landroid/content/Context;)Z
    .locals 1

    const-class v0, Lcom/prometheus/camera/filters/FilterCatalogStore;

    monitor-enter v0

    .line 412
    :try_start_0
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->resetToDefaults(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized save(Landroid/content/Context;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;)Z"
        }
    .end annotation

    const-class v0, Lcom/prometheus/camera/filters/FilterCatalogStore;

    monitor-enter v0

    .line 362
    :try_start_0
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->reconcile(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 363
    invoke-static {v1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->toJson(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->snapshotOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 368
    invoke-static {p0, v2, v1}, Lcom/prometheus/camera/filters/UnifiedFilterStatePort;->compareAndSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "still_filter_catalog_json"

    .line 372
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "still_filter_catalog_pending_sync"

    .line 373
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 374
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->flushPendingSync(Landroid/content/Context;)V

    .line 376
    :cond_0
    invoke-static {p1, v1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->attachSnapshot(Ljava/util/List;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 377
    invoke-static {}, Lcom/prometheus/camera/filters/FilterCatalogStore;->refreshCameraCatalog()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/prometheus/camera/filters/FilterCatalogStore;->runtimeRefreshSucceeded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit v0

    return v2

    .line 369
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u6ee4\u955c\u8868\u5df2\u88ab\u5176\u4ed6\u8fdb\u7a0b\u66f4\u65b0\uff0c\u8bf7\u91cd\u8bd5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 366
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u6ee4\u955c\u8868\u5feb\u7167\u65e0\u6548\uff0c\u8bf7\u91cd\u65b0\u6253\u5f00\u9875\u9762"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static saveAs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 175
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->grain(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->diffusion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->saveAs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static saveAs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 9

    .line 180
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-static {v0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->find(Ljava/util/List;Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copy:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    .line 185
    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 186
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->displayLabel(Landroid/content/Context;Ljava/util/List;Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u526f\u672c"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 188
    :cond_1
    invoke-static {p2}, Lcom/prometheus/camera/filters/FilterCatalogStore;->normalizeLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 189
    iget-object p2, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->sourceId:Ljava/lang/String;

    invoke-static {p0, v1, p2, v6}, Lcom/prometheus/camera/filters/CustomLutStore;->cloneLut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 191
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 192
    new-instance v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 194
    invoke-static {p3}, Lcom/prometheus/camera/filters/FilterCatalogStore;->validGrain(I)I

    move-result v7

    invoke-static {p4}, Lcom/prometheus/camera/filters/FilterCatalogStore;->validDiffusion(I)I

    move-result v8

    const/4 v5, 0x1

    move-object v2, v1

    move-object v3, p2

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    .line 192
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 195
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->save(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 197
    invoke-static {p2}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result p1

    .line 198
    invoke-static {p3}, Lcom/prometheus/camera/filters/FilterCatalogStore;->validGrain(I)I

    move-result p3

    invoke-static {p4}, Lcom/prometheus/camera/filters/FilterCatalogStore;->validDiffusion(I)I

    move-result p4

    .line 196
    invoke-static {p0, p1, p3, p4}, Lcom/prometheus/camera/filters/CustomLutStore;->mirrorLegacyEffects(Landroid/content/Context;III)V

    return-object p2

    .line 195
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u53e6\u5b58\u6ee4\u955c"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u6ee4\u955c\u5b9e\u4f53\u4e0d\u5b58\u5728"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static saveEdits(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 204
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 205
    invoke-static {v0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->find(Ljava/util/List;Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 207
    invoke-static {p0, v0, p1, p2}, Lcom/prometheus/camera/filters/FilterCatalogStore;->editableLabel(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 208
    iput-object p2, v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->labelOverride:Ljava/lang/String;

    .line 209
    invoke-static {p3}, Lcom/prometheus/camera/filters/FilterCatalogStore;->validGrain(I)I

    move-result p3

    iput p3, v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->grain:I

    .line 210
    invoke-static {p4}, Lcom/prometheus/camera/filters/FilterCatalogStore;->validDiffusion(I)I

    move-result p3

    iput p3, v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->diffusion:I

    .line 211
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/filters/CustomLutStore;->mirrorName(Landroid/content/Context;ILjava/lang/String;)V

    .line 213
    :cond_0
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->save(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u4fdd\u5b58\u6ee4\u955c"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 206
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u6ee4\u955c\u5b9e\u4f53\u4e0d\u5b58\u5728"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setEffects(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    .line 441
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->supportsEffects(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 443
    invoke-static {v0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->find(Ljava/util/List;Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 445
    invoke-static {p2}, Lcom/prometheus/camera/filters/FilterCatalogStore;->validGrain(I)I

    move-result p2

    iput p2, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->grain:I

    .line 446
    invoke-static {p3}, Lcom/prometheus/camera/filters/FilterCatalogStore;->validDiffusion(I)I

    move-result p2

    iput p2, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->diffusion:I

    .line 447
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->save(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u4fdd\u5b58\u9644\u52a0\u6548\u679c"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 444
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u6ee4\u955c\u5b9e\u4f53\u4e0d\u5b58\u5728"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 441
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8be5\u6ee4\u955c\u4e0d\u652f\u6301\u9644\u52a0\u6548\u679c"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static snapshotOf(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 601
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->access$400(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static sourceId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 244
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->find(Ljava/util/List;Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->sourceId:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method private static staticSpec(Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;
    .locals 2

    const/4 v0, 0x0

    .line 451
    :goto_0
    sget-object v1, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_IDS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 452
    sget-object v1, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_IDS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;

    invoke-direct {p0, v0}, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;-><init>(I)V

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static supportsEffects(Ljava/lang/String;)Z
    .locals 1

    .line 131
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->staticSpec(Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;

    move-result-object v0

    if-nez v0, :cond_2

    .line 133
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    const-string v0, "derived:"

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    .line 135
    :cond_2
    iget-boolean p0, v0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->effectConfigurable:Z

    :goto_1
    return p0
.end method

.method private static toJson(Ljava/util/List;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 724
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 725
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 727
    :try_start_0
    const-string v2, "schema"

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 728
    const-string v2, "catalog"

    const-string v3, "still-v1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    const-string v2, "model"

    const-string v3, "unified-filter-entity-v1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 731
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 732
    const-string v4, "id"

    iget-object v5, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 733
    const-string v4, "sourceId"

    iget-object v5, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->sourceId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 734
    const-string v4, "visible"

    iget-boolean v5, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->visible:Z

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 735
    const-string v4, "label"

    iget-object v5, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->labelOverride:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 736
    const-string v4, "grain"

    iget v5, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->grain:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 737
    const-string v4, "diffusion"

    iget v2, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->diffusion:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 738
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 740
    :cond_0
    const-string p0, "entities"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 742
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 678
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static uniqueCopyLabel(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 631
    invoke-static {p2}, Lcom/prometheus/camera/filters/FilterCatalogStore;->normalizeLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    move-object v1, p2

    .line 634
    :goto_0
    invoke-static {p0, p1, v1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->containsLabel(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x18

    invoke-static {p2, v3}, Lcom/prometheus/camera/filters/FilterCatalogStore;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v0, v2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static validDiffusion(I)I
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static validGrain(I)I
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized validateImportJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/prometheus/camera/filters/FilterCatalogStore;

    monitor-enter v0

    .line 404
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 405
    const-string p0, "still-v1"

    const-string v2, "catalog"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "entities"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 408
    monitor-exit v0

    return-object v1

    .line 406
    :cond_0
    :try_start_1
    new-instance p0, Lorg/json/JSONException;

    const-string v1, "Unsupported filter table"

    invoke-direct {p0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static wasRuntimeRefreshSuccessful()Z
    .locals 1

    .line 382
    sget-boolean v0, Lcom/prometheus/camera/filters/FilterCatalogStore;->runtimeRefreshSucceeded:Z

    return v0
.end method
