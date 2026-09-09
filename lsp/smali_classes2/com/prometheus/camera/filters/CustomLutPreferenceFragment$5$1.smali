.class Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5$1;
.super Ljava/lang/Object;
.source "CustomLutPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;

.field final synthetic val$completed:I

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5$1;->this$1:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;

    iput-object p2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5$1;->val$errorMessage:Ljava/lang/String;

    iput p3, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5$1;->val$completed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5$1;->this$1:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;

    iget-object v0, v0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    invoke-static {v0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->access$300(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;)V

    .line 281
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5$1;->this$1:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;

    iget-object v0, v0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    invoke-static {v0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->access$400(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;)V

    .line 282
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5$1;->val$errorMessage:Ljava/lang/String;

    const-string v1, "\u5df2\u5bfc\u5165 "

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5$1;->val$completed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u4e2a LUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5$1;->val$completed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u4e2a\uff1b\u968f\u540e\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5$1;->val$errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_0
    iget-object p0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5$1;->this$1:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;

    iget-object p0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$5;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
