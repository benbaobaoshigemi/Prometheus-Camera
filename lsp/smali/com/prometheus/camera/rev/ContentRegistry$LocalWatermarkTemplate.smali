.class final Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;
.super Ljava/lang/Object;
.source "ContentRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/rev/ContentRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LocalWatermarkTemplate"
.end annotation


# instance fields
.field final configSha256:Ljava/lang/String;

.field final contentNameIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final id:Ljava/lang/String;

.field final marketNameLengthRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final nameId:Ljava/lang/String;

.field final necessaryShotParam:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final priority:D

.field final renderEngine:Ljava/lang/String;

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

.field final watermarkType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;DLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->id:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->nameId:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->translations:Ljava/util/Map;

    .line 66
    iput-wide p4, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->priority:D

    .line 67
    iput-object p6, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->watermarkType:Ljava/lang/String;

    .line 68
    iput-object p7, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->renderEngine:Ljava/lang/String;

    .line 69
    iput-object p8, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->necessaryShotParam:Ljava/util/List;

    .line 70
    iput-object p9, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->contentNameIds:Ljava/util/List;

    .line 71
    iput-object p10, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->marketNameLengthRange:Ljava/util/List;

    .line 72
    iput-object p11, p0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->configSha256:Ljava/lang/String;

    return-void
.end method
