.class public Lcom/miui/camerainfra/router/components/UriSourceTools;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FIELD_FROM:Ljava/lang/String; = "com.sankuai.waimai.router.from"

.field public static final FROM_EXTERNAL:I = 0x1

.field public static final FROM_INTERNAL:I = 0x2

.field public static final FROM_INVALID:I = 0x0

.field public static final FROM_PUSH:I = 0x4

.field public static final FROM_WEBVIEW:I = 0x3

.field public static final INTENT_KEY_URI_FROM:Ljava/lang/String; = "com.sankuai.waimai.router.from"

.field public static sDisableExportedControl:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInt(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/miui/camerainfra/router/core/Debugger;->fatal(Ljava/lang/Throwable;)V

    return p2
.end method

.method public static getSource(Landroid/content/Intent;I)I
    .locals 1

    .line 3
    const-string v0, "com.sankuai.waimai.router.from"

    invoke-static {p0, v0, p1}, Lcom/miui/camerainfra/router/components/UriSourceTools;->getInt(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSource(Landroid/os/Bundle;I)I
    .locals 1

    if-nez p0, :cond_0

    return p1

    .line 4
    :cond_0
    const-string v0, "com.sankuai.waimai.router.from"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSource(Lcom/miui/camerainfra/router/core/UriRequest;)I
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Lcom/miui/camerainfra/router/components/UriSourceTools;->getSource(Lcom/miui/camerainfra/router/core/UriRequest;I)I

    move-result p0

    return p0
.end method

.method public static getSource(Lcom/miui/camerainfra/router/core/UriRequest;I)I
    .locals 1

    .line 2
    const-string v0, "com.sankuai.waimai.router.from"

    invoke-virtual {p0, v0, p1}, Lcom/miui/camerainfra/router/core/UriRequest;->getIntField(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setDisableExportedControl(Z)V
    .locals 0

    sput-boolean p0, Lcom/miui/camerainfra/router/components/UriSourceTools;->sDisableExportedControl:Z

    return-void
.end method

.method public static setIntentSource(Landroid/content/Intent;Lcom/miui/camerainfra/router/core/UriRequest;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-class v0, Ljava/lang/Integer;

    const-string v1, "com.sankuai.waimai.router.from"

    invoke-virtual {p1, v0, v1}, Lcom/miui/camerainfra/router/core/UriRequest;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/camerainfra/router/components/UriSourceTools;->setSource(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static setSource(Landroid/content/Intent;I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 2
    const-string v0, "com.sankuai.waimai.router.from"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static setSource(Lcom/miui/camerainfra/router/core/UriRequest;I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "com.sankuai.waimai.router.from"

    invoke-virtual {p0, v0, p1}, Lcom/miui/camerainfra/router/core/UriRequest;->putField(Ljava/lang/String;Ljava/lang/Object;)Lcom/miui/camerainfra/router/core/UriRequest;

    :cond_0
    return-void
.end method

.method public static shouldHandle(Lcom/miui/camerainfra/router/core/UriRequest;Z)Z
    .locals 2

    sget-boolean v0, Lcom/miui/camerainfra/router/components/UriSourceTools;->sDisableExportedControl:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/miui/camerainfra/router/components/UriSourceTools;->getSource(Lcom/miui/camerainfra/router/core/UriRequest;)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method
