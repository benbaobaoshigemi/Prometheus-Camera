.class Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$1;
.super Ljava/lang/Object;
.source "CustomLutPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->onPreferenceClick(Landroidx/preference/Preference;)Z
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

    .line 106
    iput-object p1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$1;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    iput p2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$1;->val$slot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$1;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    iget p0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$1;->val$slot:I

    invoke-static {v0, p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->access$000(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;I)V

    return-void
.end method
