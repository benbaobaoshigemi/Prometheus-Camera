.class public interface abstract Lcom/prometheus/camera/filters/FilterRuntimePort$Adapter;
.super Ljava/lang/Object;
.source "FilterRuntimePort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/filters/FilterRuntimePort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Adapter"
.end annotation


# virtual methods
.method public abstract applicationContext()Landroid/content/Context;
.end method

.method public abstract invalidateRuntimeLut(Ljava/lang/String;)V
.end method

.method public abstract isLeicaOrdinal(I)Z
.end method

.method public abstract refreshStillCatalog()Z
.end method

.method public abstract titleResource(Ljava/lang/String;Z)I
.end method
