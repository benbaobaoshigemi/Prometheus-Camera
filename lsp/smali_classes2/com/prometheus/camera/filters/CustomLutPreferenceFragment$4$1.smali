.class Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$1;
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

.field final synthetic val$result:Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$1;->this$1:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;

    iput-object p2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$1;->val$result:Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$1;->this$1:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;

    iget-object v0, v0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    invoke-static {v0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->access$300(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;)V

    .line 208
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$1;->this$1:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;

    iget-object v0, v0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    invoke-static {v0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->access$400(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;)V

    .line 209
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$1;->this$1:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;

    iget-object v0, v0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    invoke-virtual {v0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u5bfc\u5165 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$1;->val$result:Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;

    iget-object v2, v2, Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$4$1;->val$result:Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;

    iget p0, p0, Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;->size:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u00b3\uff09"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
