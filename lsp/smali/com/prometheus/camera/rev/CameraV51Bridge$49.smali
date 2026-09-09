.class Lcom/prometheus/camera/rev/CameraV51Bridge$49;
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

    .line 1579
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$49;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 1581
    iget-object p0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$49;->val$loader:Ljava/lang/ClassLoader;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "session"

    invoke-static {p0, p1, v0, v1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4500(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method
