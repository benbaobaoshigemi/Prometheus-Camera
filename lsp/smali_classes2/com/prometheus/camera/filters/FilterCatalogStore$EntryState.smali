.class public final Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;
.super Ljava/lang/Object;
.source "FilterCatalogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/filters/FilterCatalogStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntryState"
.end annotation


# instance fields
.field public diffusion:I

.field public grain:I

.field public final id:Ljava/lang/String;

.field public labelOverride:Ljava/lang/String;

.field private snapshot:Ljava/lang/String;

.field public final sourceId:Ljava/lang/String;

.field public visible:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->sourceId:Ljava/lang/String;

    .line 87
    iput-boolean p3, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->visible:Z

    if-nez p4, :cond_2

    .line 88
    const-string p4, ""

    :cond_2
    iput-object p4, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->labelOverride:Ljava/lang/String;

    .line 89
    invoke-static {p5}, Lcom/prometheus/camera/filters/FilterCatalogStore;->access$200(I)I

    move-result p1

    iput p1, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->grain:I

    .line 90
    invoke-static {p6}, Lcom/prometheus/camera/filters/FilterCatalogStore;->access$300(I)I

    move-result p1

    iput p1, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->diffusion:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 7

    .line 80
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->access$000(Ljava/lang/String;)I

    move-result v5

    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->access$100(Ljava/lang/String;)I

    move-result v6

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->snapshot:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->snapshot:Ljava/lang/String;

    return-object p1
.end method
