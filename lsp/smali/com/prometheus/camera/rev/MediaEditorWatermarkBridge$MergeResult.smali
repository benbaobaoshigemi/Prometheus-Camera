.class final Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;
.super Ljava/lang/Object;
.source "MediaEditorWatermarkBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MergeResult"
.end annotation


# instance fields
.field final addedCount:I

.field final addedLeicaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final config:Ljava/lang/Object;

.field final nativeCount:I

.field final nativeLeicaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final resultCount:I


# direct methods
.method constructor <init>(Ljava/lang/Object;IIILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object p1, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;->config:Ljava/lang/Object;

    .line 696
    iput p2, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;->nativeCount:I

    .line 697
    iput p3, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;->addedCount:I

    .line 698
    iput p4, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;->resultCount:I

    .line 699
    iput-object p5, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;->nativeLeicaIds:Ljava/util/List;

    .line 700
    iput-object p6, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;->addedLeicaIds:Ljava/util/List;

    return-void
.end method
