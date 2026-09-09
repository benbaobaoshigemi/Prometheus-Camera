.class Lcom/prometheus/camera/filters/OnlineLeicaRenderer$2;
.super Ljava/lang/Object;
.source "OnlineLeicaRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->schedulePrewarm(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$routedName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer$2;->val$routedName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "cloud_watermark_material/17_ultra_by_leica"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 220
    array-length v1, v0

    if-eqz v1, :cond_4

    .line 223
    iget-object v1, p0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer$2;->val$routedName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->access$100(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 225
    iget-object v3, p0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer$2;->val$context:Landroid/content/Context;

    const-string v4, "prometheus_camera_settings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "watermark_custom_presets"

    const/4 v6, 0x0

    .line 226
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 228
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 229
    invoke-static {v4}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-static {v4}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->access$300(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 231
    invoke-static {}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->access$400()Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v6, ""

    .line 232
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 238
    array-length v4, v0

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_3

    aget-object v7, v0, v6

    .line 239
    const-string v8, ".webp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 240
    iget-object v8, p0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer$2;->val$context:Landroid/content/Context;

    invoke-static {v8, v3, v7}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->access$500(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 243
    :cond_3
    iget-object v4, p0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer$2;->val$context:Landroid/content/Context;

    .line 244
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 243
    invoke-static {v4, v3, v0, v6}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->access$600(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_1

    .line 221
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "No packaged by-LEICA source assets"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 247
    const-string v0, "OnlineLeicaRenderer"

    const-string v1, "by-LEICA preassembly rejected or failed"

    invoke-static {v0, v1, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void
.end method
