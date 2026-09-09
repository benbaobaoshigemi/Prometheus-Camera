.class Lcom/prometheus/camera/rev/CameraV51Bridge$53;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "CameraV51Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/CameraV51Bridge;->hookClassicCvState(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1630
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$53;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 1632
    iget-object p0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$53;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4300(Ljava/lang/ClassLoader;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1633
    :cond_0
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 1634
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Enum;

    .line 1635
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RENDERER_CV_FILTER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 1638
    :cond_1
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 p1, 0x1

    aget-object p0, p0, p1

    check-cast p0, [Ljava/lang/Object;

    if-eqz p0, :cond_4

    .line 1639
    array-length p1, p0

    const/4 v0, 0x6

    if-ge p1, v0, :cond_2

    goto :goto_0

    .line 1640
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x3

    aput-object p1, p0, v0

    const/4 p1, 0x5

    .line 1641
    aget-object p0, p0, p1

    instance-of p1, p0, [F

    if-eqz p1, :cond_3

    .line 1642
    check-cast p0, [F

    .line 1643
    array-length p1, p0

    if-le p1, v0, :cond_3

    const/4 p1, 0x0

    aput p1, p0, v0

    .line 1645
    :cond_3
    const-string p0, "preview CV attributes needDark=false darkStrength=0"

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4400(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
