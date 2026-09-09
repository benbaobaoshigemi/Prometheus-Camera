.class Lcom/prometheus/camera/filters/OnlineLeicaRenderer$1;
.super Ljava/lang/Object;
.source "OnlineLeicaRenderer.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->installPrewarm(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer$1;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 206
    const-string p1, "watermark_device_name"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer$1;->val$app:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
