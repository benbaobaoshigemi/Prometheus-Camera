.class public Lcom/android/camera/PreloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    new-array p2, p0, [Ljava/lang/Object;

    const-string v0, "PreloadReceiver"

    const-string v1, "receive boot complete"

    invoke-static {v0, v1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lhi/d;->e()Lhi/d;

    new-instance p2, Lcom/android/camera/features/mode/capture/CaptureModule;

    invoke-direct {p2}, Lcom/android/camera/features/mode/capture/CaptureModule;-><init>()V

    new-array p2, p0, [Ljava/lang/Object;

    const-string v0, "ConfigChangeImpl"

    const-string v1, "preload"

    invoke-static {v0, v1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget p2, Lcom/android/camera/statistic/SettingUploadJobService;->a:I

    const-string p2, "jobscheduler"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/job/JobScheduler;

    if-nez p2, :cond_0

    new-array p2, p0, [Ljava/lang/Object;

    const-string v0, "CameraSettingJob"

    const-string/jumbo v1, "scheduleJob(): JobScheduler not supported"

    invoke-static {v0, v1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const v0, 0x10af3e2

    invoke-virtual {p2, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    :goto_0
    sget-object p2, Lcom/android/camera/statistic/SettingUploadWorker;->e:Ljava/time/Duration;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/camera/statistic/SettingUploadWorker$a;->a(Landroid/content/Context;Z)V

    sget-object p1, Lr3/a;->a:Ljava/lang/String;

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "HalCloudDataManager"

    const-string p2, "onBoot| Cloud data clear last time"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, LWh/a;->g()LWh/a;

    const-string p1, "pref_last_request_time_hal_clouddata"

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, LWh/a;->q(JLjava/lang/String;)LWh/a;

    invoke-virtual {p0}, LWh/a;->c()V

    :cond_1
    return-void
.end method
