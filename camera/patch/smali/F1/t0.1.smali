.class public final LF1/t0;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/android/camera/b;


# direct methods
.method public constructor <init>(Lcom/android/camera/b;)V
    .locals 0

    iput-object p1, p0, LF1/t0;->a:Lcom/android/camera/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportLowBatteryCloudControl"
        type = 0x0
    .end annotation

    if-eqz p2, :cond_6

    iget-object p0, p0, LF1/t0;->a:Lcom/android/camera/b;

    iget-object p1, p0, Lcom/android/camera/b;->d:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "level"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "temperature"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-float v4, p1

    int-to-float v1, v1

    div-float/2addr v4, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v4, v1

    float-to-int v1, v4

    const-string v4, "plugged"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/b;->j:I

    sget-boolean p2, LQa/b;->i:Z

    if-nez p2, :cond_6

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "onReceive battery = "

    const-string p2, " temperature = "

    const-string v3, " cutoff = "

    invoke-static {v1, v2, p1, p2, v3}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean p2, LQa/b;->p:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mChargeType = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/b;->j:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "BatteryDetector"

    invoke-static {v4, p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v1, p0, Lcom/android/camera/b;->f:I

    iput v2, p0, Lcom/android/camera/b;->g:I

    const/4 p1, 0x5

    const/4 v3, 0x1

    if-gt v1, p1, :cond_2

    if-eqz p2, :cond_2

    move v0, v3

    :cond_2
    const/4 p1, 0x2

    if-gt v1, p1, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    iget p1, p0, Lcom/android/camera/b;->i:I

    if-ne p1, v3, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    const/16 p1, -0x32

    if-gt v2, p1, :cond_5

    or-int/lit8 v0, v0, 0x8

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/camera/b;->b(I)V

    :cond_6
    :goto_0
    return-void
.end method
