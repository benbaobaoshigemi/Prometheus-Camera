.class final Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;
.super Ljava/lang/Object;
.source "ContentRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/rev/ContentRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MediaEditorPreset"
.end annotation


# instance fields
.field final file:Ljava/lang/String;

.field final id:I

.field final label:Ljava/lang/String;

.field final sha256:Ljava/lang/String;

.field final stableId:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;->id:I

    .line 39
    iput-object p2, p0, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;->stableId:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;->label:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;->file:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;->sha256:Ljava/lang/String;

    return-void
.end method
