.class Lcom/prometheus/camera/rev/StreetCapabilities$2;
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

    .line 56
    iput-object p1, p0, Lcom/prometheus/camera/rev/StreetCapabilities$2;->this$0:Lcom/prometheus/camera/rev/StreetCapabilities;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 58
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xe5

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v0, "b0"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    .line 62
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v0, "i"

    invoke-static {p0}, Lcom/prometheus/camera/rev/StreetCapabilities;->manualListType(I)I

    move-result p0

    invoke-static {p1, v0, p0}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
