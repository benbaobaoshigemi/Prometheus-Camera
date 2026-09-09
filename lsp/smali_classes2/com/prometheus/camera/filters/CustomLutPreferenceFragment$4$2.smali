.class Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$2;
.super Ljava/lang/Object;
.source "CustomLutPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;

.field final synthetic val$error:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$2;->this$1:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;

    iput-object p2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$2;->val$error:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$2;->this$1:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;

    iget-object v0, v0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    invoke-static {v0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->access$300(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;)V

    .line 218
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$2;->this$1:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;

    iget-object v0, v0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    invoke-virtual {v0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$2;->val$error:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
