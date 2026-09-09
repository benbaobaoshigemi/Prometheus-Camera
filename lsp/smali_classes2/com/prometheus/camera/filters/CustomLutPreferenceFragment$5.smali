.class Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;
.super Ljava/lang/Object;
.source "CustomLutPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->importBatch(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    iput-object p2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;->val$uris:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 266
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 268
    :try_start_0
    iget-object v3, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;->val$app:Landroid/content/Context;

    invoke-static {v3}, Lcom/prometheus/camera/filters/CustomLutStore;->nextAvailableSlot(Landroid/content/Context;)I

    move-result v3

    .line 269
    iget-object v4, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;->val$app:Landroid/content/Context;

    invoke-static {v4, v3, v2}, Lcom/prometheus/camera/filters/CustomLutStore;->importCube(Landroid/content/Context;ILandroid/net/Uri;)Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 278
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5$1;-><init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
