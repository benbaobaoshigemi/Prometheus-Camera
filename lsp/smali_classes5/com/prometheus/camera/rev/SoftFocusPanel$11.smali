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

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 389
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$500()Landroid/util/SparseArray;

    move-result-object p0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_6
    invoke-static {v0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$2502(Z)Z

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 390
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$2600()V

    return-void

    :catchall_e
    move-exception v0

    .line 389
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method
