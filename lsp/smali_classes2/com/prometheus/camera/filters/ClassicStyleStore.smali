.class public final Lcom/prometheus/camera/filters/ClassicStyleStore;
.super Ljava/lang/Object;
.source "ClassicStyleStore.java"


# static fields
.field private static final KEY_MODEL:Ljava/lang/String; = "selected_model"

.field public static final MODEL_12SU:Ljava/lang/String; = "12su"

.field public static final MODEL_14U:Ljava/lang/String; = "14u"

.field public static final MODEL_17U:Ljava/lang/String; = "17u"

.field public static final MODEL_FUXI:Ljava/lang/String; = "fuxi"

.field public static final MODEL_M9:Ljava/lang/String; = "m9"

.field public static final MODEL_NEUTRAL:Ljava/lang/String; = "neutral"

.field public static final MODEL_PASSTHROUGH:Ljava/lang/String; = "passthrough"

.field private static final PREFERENCES:Ljava/lang/String; = "prometheus_classic_style"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static indexOf(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 54
    :goto_0
    sget-object v1, Lcom/prometheus/camera/filters/ClassicStyleCatalog;->MODEL_IDS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 55
    sget-object v1, Lcom/prometheus/camera/filters/ClassicStyleCatalog;->MODEL_IDS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static isSupported(Ljava/lang/String;)Z
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/prometheus/camera/filters/ClassicStyleStore;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static label(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 36
    invoke-static {p0}, Lcom/prometheus/camera/filters/ClassicStyleStore;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 37
    sget-object v0, Lcom/prometheus/camera/filters/ClassicStyleCatalog;->MODEL_LABELS:[Ljava/lang/String;

    if-ltz p0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    const-string p0, "17u"

    invoke-static {p0}, Lcom/prometheus/camera/filters/ClassicStyleStore;->indexOf(Ljava/lang/String;)I

    move-result p0

    :goto_0
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static modelIds()[Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/prometheus/camera/filters/ClassicStyleCatalog;->MODEL_IDS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static modelLabels()[Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/prometheus/camera/filters/ClassicStyleCatalog;->MODEL_LABELS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    if-eqz p0, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 66
    :goto_0
    const-string v0, "prometheus_classic_style"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static selectModel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 27
    invoke-static {p1}, Lcom/prometheus/camera/filters/ClassicStyleStore;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {p0}, Lcom/prometheus/camera/filters/ClassicStyleStore;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "selected_model"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u4fdd\u5b58\u5f95\u5361\u7ecf\u5178\u98ce\u683c"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported classic style model: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static selectedModel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 21
    invoke-static {p0}, Lcom/prometheus/camera/filters/ClassicStyleStore;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "selected_model"

    const-string v1, "17u"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/prometheus/camera/filters/ClassicStyleStore;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1
.end method
