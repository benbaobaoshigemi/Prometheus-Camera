.class Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$6;
.super Ljava/lang/Object;
.source "CustomLutPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->showDeleteDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

.field final synthetic val$slot:I


# direct methods
.method constructor <init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$6;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    iput p2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$6;->val$slot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 299
    :try_start_0
    iget-object p1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$6;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    invoke-virtual {p1}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$6;->val$slot:I

    invoke-static {p1, p2}, Lcom/prometheus/camera/filters/CustomLutStore;->delete(Landroid/content/Context;I)V

    .line 300
    iget-object p1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$6;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->access$400(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 302
    iget-object p0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$6;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
