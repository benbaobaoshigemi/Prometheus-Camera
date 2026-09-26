.class Lcom/prometheus/camera/rev/SoftFocusPanel$1$1$1;
.super Ljava/lang/Object;
.source "SoftFocusPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/SoftFocusPanel$1$1;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/prometheus/camera/rev/SoftFocusPanel$1$1;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/SoftFocusPanel$1$1;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$1$1$1;->this$2:Lcom/prometheus/camera/rev/SoftFocusPanel$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 88
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$500()Landroid/util/SparseArray;

    move-result-object p0

    monitor-enter p0

    const/4 v0, 0x0

    .line 89
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$500()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$500()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;

    const/4 v2, -0x1

    iput v2, v1, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->override:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$600()I

    move-result p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$700(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$800()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$900(Ljava/lang/Object;)V

    .line 92
    :cond_1
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1000()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 93
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1100(Ljava/lang/Object;)V

    .line 94
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "component enabled="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$300()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1200(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 90
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
