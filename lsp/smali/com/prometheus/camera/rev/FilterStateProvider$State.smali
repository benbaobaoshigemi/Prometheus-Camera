.class final Lcom/prometheus/camera/rev/FilterStateProvider$State;
.super Ljava/lang/Object;
.source "FilterStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/rev/FilterStateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field final revision:J

.field final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/prometheus/camera/rev/FilterStateProvider$State;->value:Ljava/lang/String;

    .line 216
    iput-wide p2, p0, Lcom/prometheus/camera/rev/FilterStateProvider$State;->revision:J

    return-void
.end method
