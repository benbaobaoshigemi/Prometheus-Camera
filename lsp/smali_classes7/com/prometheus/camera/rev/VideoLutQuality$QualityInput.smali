.class final Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;
.super Ljava/lang/Object;
.source "VideoLutQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/rev/VideoLutQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QualityInput"
.end annotation


# instance fields
.field final arguments:[Ljava/lang/Object;

.field final component:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;->component:Ljava/lang/Object;

    .line 26
    invoke-virtual {p2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;->arguments:[Ljava/lang/Object;

    return-void
.end method
