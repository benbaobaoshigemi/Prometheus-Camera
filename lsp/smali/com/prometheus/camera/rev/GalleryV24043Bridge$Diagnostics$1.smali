.class Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "GalleryV24043Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->installUiProbe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method

.method static synthetic lambda$afterHookedMethod$0(Landroid/app/Activity;)V
    .locals 4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->access$000(Landroid/view/View;Ljava/lang/StringBuilder;[I)V

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "ui-scan views="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " visibleText="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, v1, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " moreTokens="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " text="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->add(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->access$100()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-static {}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MORE_MISSING_SUSPECT reason=no_filter_list_publication"

    invoke-static {v0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    aget v0, v1, v2

    if-nez v0, :cond_1

    const-string v0, "MORE_MISSING_SUSPECT reason=published_but_no_more_token"

    invoke-static {v0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->add(Ljava/lang/String;)V

    .line 76
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    .line 65
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "activity-resume "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->add(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
