.class public final Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;
.super Ljava/lang/Object;
.source "CustomLutStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/filters/CustomLutStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImportResult"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final size:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput p1, p0, Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;->size:I

    .line 906
    iput-object p2, p0, Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;->name:Ljava/lang/String;

    return-void
.end method
