.class final Lcom/prometheus/camera/filters/CustomLutStore$Cube;
.super Ljava/lang/Object;
.source "CustomLutStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/filters/CustomLutStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cube"
.end annotation


# instance fields
.field final data:[F

.field final size:I


# direct methods
.method constructor <init>(I[F)V
    .locals 0

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    iput p1, p0, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->size:I

    .line 890
    iput-object p2, p0, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->data:[F

    return-void
.end method


# virtual methods
.method at(IIII)F
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->data:[F

    iget p0, p0, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->size:I

    mul-int/2addr p3, p0

    add-int/2addr p3, p2

    mul-int/2addr p3, p0

    add-int/2addr p3, p1

    mul-int/lit8 p1, p3, 0x3

    add-int/2addr p1, p4

    aget p0, v0, p1

    return p0
.end method
