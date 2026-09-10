.class final Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;
.super Ljava/lang/Object;
.source "SoftFocusPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/rev/SoftFocusPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Selection"
.end annotation


# instance fields
.field filterId:I

.field filterSoft:I

.field initialized:Z

.field override:I

.field reportedEffective:I

.field reportedNative:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->override:I

    .line 58
    iput v0, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->reportedNative:I

    .line 59
    iput v0, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->reportedEffective:I

    return-void
.end method


# virtual methods
.method accept(II)Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->initialized:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->filterId:I

    if-ne v0, p1, :cond_e

    iget v0, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->filterSoft:I

    if-ne v0, p2, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->initialized:Z

    .line 64
    iput p1, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->filterId:I

    .line 65
    iput p2, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->filterSoft:I

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->override:I

    return v0
.end method

.method effective()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->override:I

    if-gez v0, :cond_6

    iget v0, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->filterSoft:I

    :cond_6
    return v0
.end method
