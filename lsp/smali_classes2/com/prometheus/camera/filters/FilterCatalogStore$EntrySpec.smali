.class public final Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;
.super Ljava/lang/Object;
.source "FilterCatalogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/filters/FilterCatalogStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntrySpec"
.end annotation


# instance fields
.field public final defaultDiffusion:I

.field public final defaultGrain:I

.field public final defaultVisible:Z

.field public final deletable:Z

.field public final effectConfigurable:Z

.field public final group:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final manageable:Z

.field public final origin:Ljava/lang/String;

.field public final projection:Ljava/lang/String;

.field public final singleLut:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_IDS:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->id:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_LABELS:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->label:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_GROUPS:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->group:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_ORIGINS:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->origin:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_PROJECTIONS:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->projection:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->DEFAULT_VISIBLE:[Z

    aget-boolean v0, v0, p1

    iput-boolean v0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->defaultVisible:Z

    .line 61
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->MANAGEABLE:[Z

    aget-boolean v0, v0, p1

    iput-boolean v0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->manageable:Z

    .line 62
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->DELETABLE:[Z

    aget-boolean v0, v0, p1

    iput-boolean v0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->deletable:Z

    .line 63
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->SINGLE_LUT:[Z

    aget-boolean v0, v0, p1

    iput-boolean v0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->singleLut:Z

    .line 64
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->EFFECT_CONFIGURABLE:[Z

    aget-boolean v0, v0, p1

    iput-boolean v0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->effectConfigurable:Z

    .line 65
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->DEFAULT_GRAIN:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->defaultGrain:I

    .line 66
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->DEFAULT_DIFFUSION:[I

    aget p1, v0, p1

    iput p1, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntrySpec;->defaultDiffusion:I

    return-void
.end method
