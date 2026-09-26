.class Lcom/prometheus/camera/rev/StreetCapabilities$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "StreetCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/StreetCapabilities;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/StreetCapabilities;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/StreetCapabilities;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/prometheus/camera/rev/StreetCapabilities$1;->this$0:Lcom/prometheus/camera/rev/StreetCapabilities;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v0, "Z"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 53
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {p0}, Lcom/prometheus/camera/rev/StreetCapabilities;->equipmentModes([I)[I

    move-result-object p0

    invoke-static {p1, v0, p0}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
