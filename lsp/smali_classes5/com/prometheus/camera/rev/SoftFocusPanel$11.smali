.class Lcom/prometheus/camera/rev/SoftFocusPanel$11;
.super Ljava/lang/Object;
.source "SoftFocusPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/SoftFocusPanel;->postSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 394
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$500()Landroid/util/SparseArray;

    move-result-object p0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$2502(Z)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$2600()V

    return-void

    :catchall_0
    move-exception v0

    .line 394
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
