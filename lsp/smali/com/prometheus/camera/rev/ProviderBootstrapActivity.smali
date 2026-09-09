.class public final Lcom/prometheus/camera/rev/ProviderBootstrapActivity;
.super Landroid/app/Activity;
.source "ProviderBootstrapActivity.java"


# static fields
.field private static final FILTER_STATE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, "content://com.prometheus.camera.rev.filterstate"

    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/ProviderBootstrapActivity;->FILTER_STATE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/prometheus/camera/rev/ProviderBootstrapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/prometheus/camera/rev/ProviderBootstrapActivity;->FILTER_STATE:Landroid/net/Uri;

    const-string v2, "prometheus.nrv.filterstate.read"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p0}, Lcom/prometheus/camera/rev/ProviderBootstrapActivity;->finishAndRemoveTask()V

    .line 20
    invoke-virtual {p0, p1, p1}, Lcom/prometheus/camera/rev/ProviderBootstrapActivity;->overridePendingTransition(II)V

    return-void

    :catchall_0
    move-exception v0

    .line 19
    invoke-virtual {p0}, Lcom/prometheus/camera/rev/ProviderBootstrapActivity;->finishAndRemoveTask()V

    .line 20
    invoke-virtual {p0, p1, p1}, Lcom/prometheus/camera/rev/ProviderBootstrapActivity;->overridePendingTransition(II)V

    .line 21
    throw v0
.end method
