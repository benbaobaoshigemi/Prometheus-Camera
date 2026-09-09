.class public final synthetic Lcom/prometheus/camera/filters/PresetLutStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/prometheus/camera/filters/PresetLutStore$Entry;

    invoke-static {p1}, Lcom/prometheus/camera/filters/PresetLutStore;->lambda$load$0(Lcom/prometheus/camera/filters/PresetLutStore$Entry;)I

    move-result p0

    return p0
.end method
