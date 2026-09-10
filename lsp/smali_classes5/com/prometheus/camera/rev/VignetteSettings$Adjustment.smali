.class final Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;
.super Ljava/lang/Object;
.source "VignetteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/rev/VignetteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Adjustment"
.end annotation


# instance fields
.field final fragment:Ljava/lang/Object;

.field final protect:Z

.field final range:I

.field final shape:Z

.field final strength:I


# direct methods
.method constructor <init>(Ljava/lang/Object;IZIZ)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;->fragment:Ljava/lang/Object;

    iput p2, p0, Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;->strength:I

    iput-boolean p3, p0, Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;->protect:Z

    iput p4, p0, Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;->range:I

    iput-boolean p5, p0, Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;->shape:Z

    return-void
.end method
