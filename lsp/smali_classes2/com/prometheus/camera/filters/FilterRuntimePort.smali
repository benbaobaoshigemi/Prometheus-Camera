.class public final Lcom/prometheus/camera/filters/FilterRuntimePort;
.super Ljava/lang/Object;
.source "FilterRuntimePort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;
    }
.end annotation


# static fields
.field private static volatile adapter:Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applicationContext()Landroid/content/Context;
    .locals 1

    .line 38
    invoke-static {}, Lcom/prometheus/camera/filters/FilterRuntimePort;->requireAdapter()Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;->applicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static install(Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 26
    sput-object p0, Lcom/prometheus/camera/filters/FilterRuntimePort;->adapter:Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;

    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "filter runtime adapter"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static invalidateRuntimeLut(Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-static {}, Lcom/prometheus/camera/filters/FilterRuntimePort;->requireAdapter()Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;->invalidateRuntimeLut(Ljava/lang/String;)V

    return-void
.end method

.method public static isLeicaOrdinal(I)Z
    .locals 1

    .line 42
    invoke-static {}, Lcom/prometheus/camera/filters/FilterRuntimePort;->requireAdapter()Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;->isLeicaOrdinal(I)Z

    move-result p0

    return p0
.end method

.method public static refreshStillCatalog()Z
    .locals 1

    .line 50
    invoke-static {}, Lcom/prometheus/camera/filters/FilterRuntimePort;->requireAdapter()Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;->refreshStillCatalog()Z

    move-result v0

    return v0
.end method

.method private static requireAdapter()Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;
    .locals 2

    .line 30
    sget-object v0, Lcom/prometheus/camera/filters/FilterRuntimePort;->adapter:Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;

    if-eqz v0, :cond_0

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Filter runtime adapter is not active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static titleResource(Ljava/lang/String;Z)I
    .locals 1

    .line 46
    invoke-static {}, Lcom/prometheus/camera/filters/FilterRuntimePort;->requireAdapter()Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;->titleResource(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method
