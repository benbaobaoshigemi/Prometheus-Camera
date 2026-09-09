.class Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;
.super Ljava/lang/Object;
.source "CustomLutPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

.field final synthetic val$slot:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;ILandroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    iput p2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;->val$slot:I

    iput-object p3, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    .line 204
    invoke-virtual {v0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;->val$slot:I

    iget-object v2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/prometheus/camera/filters/CustomLutStore;->importCube(Landroid/content/Context;ILandroid/net/Uri;)Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;

    move-result-object v0

    .line 205
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$1;

    invoke-direct {v2, p0, v0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$1;-><init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$2;

    invoke-direct {v2, p0, v0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$2;-><init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
