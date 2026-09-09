.class public final Lcom/prometheus/camera/rev/PhoenixLocalLogGate;
.super Ljava/lang/Object;
.source "PhoenixLocalLogGate.java"


# static fields
.field private static final SETTING:Ljava/lang/String; = "phoenix_local_log_enabled"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enabled()Z
    .locals 1

    .line 10
    invoke-static {}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->enabled()Z

    move-result v0

    return v0
.end method
