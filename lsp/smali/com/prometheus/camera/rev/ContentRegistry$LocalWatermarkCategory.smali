.class final Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;
.super Ljava/lang/Object;
.source "ContentRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/rev/ContentRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LocalWatermarkCategory"
.end annotation


# instance fields
.field final group:Ljava/lang/String;

.field final nameId:Ljava/lang/String;

.field final priority:D

.field final templates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field final translations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;DLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;D",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;->group:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;->nameId:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;->translations:Ljava/util/Map;

    .line 89
    iput-wide p4, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;->priority:D

    .line 90
    iput-object p6, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;->templates:Ljava/util/List;

    return-void
.end method
