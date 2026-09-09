.class final Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;
.super Ljava/lang/Object;
.source "UnifiedFilterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/rev/UnifiedFilterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation


# instance fields
.field final diffusion:I

.field final grain:I

.field final id:Ljava/lang/String;

.field final label:Ljava/lang/String;

.field final sourceId:Ljava/lang/String;

.field final visible:Z


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->id:Ljava/lang/String;

    .line 29
    const-string v1, "sourceId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->sourceId:Ljava/lang/String;

    .line 30
    const-string v0, "visible"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->visible:Z

    .line 31
    const-string v0, "label"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->label:Ljava/lang/String;

    .line 32
    const-string v0, "grain"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->grain:I

    .line 33
    const-string v2, "diffusion"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->diffusion:I

    if-ltz v0, :cond_0

    const/4 p0, 0x3

    if-gt v0, p0, :cond_0

    if-ltz p1, :cond_0

    if-gt p1, p0, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid unified filter effect"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
