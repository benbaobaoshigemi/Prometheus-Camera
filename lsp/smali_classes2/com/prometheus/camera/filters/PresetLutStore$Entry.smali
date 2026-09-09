.class public final Lcom/prometheus/camera/filters/PresetLutStore$Entry;
.super Ljava/lang/Object;
.source "PresetLutStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/filters/PresetLutStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final file:Ljava/lang/String;

.field public final group:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final order:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/prometheus/camera/filters/PresetLutStore$Entry;->id:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/prometheus/camera/filters/PresetLutStore$Entry;->name:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/prometheus/camera/filters/PresetLutStore$Entry;->file:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/prometheus/camera/filters/PresetLutStore$Entry;->group:Ljava/lang/String;

    .line 43
    iput p5, p0, Lcom/prometheus/camera/filters/PresetLutStore$Entry;->order:I

    return-void
.end method
