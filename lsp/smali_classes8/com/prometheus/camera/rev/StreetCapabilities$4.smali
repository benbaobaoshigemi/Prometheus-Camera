.class Lcom/prometheus/camera/rev/StreetCapabilities$4;
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

.field final synthetic val$loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/StreetCapabilities;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/prometheus/camera/rev/StreetCapabilities$4;->this$0:Lcom/prometheus/camera/rev/StreetCapabilities;

    iput-object p2, p0, Lcom/prometheus/camera/rev/StreetCapabilities$4;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    .line 83
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xef

    if-ne v0, v2, :cond_2

    const-string v0, "com.android.camera.module.Y"

    iget-object v2, p0, Lcom/prometheus/camera/rev/StreetCapabilities$4;->val$loader:Ljava/lang/ClassLoader;

    .line 84
    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "a"

    .line 83
    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xe5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/prometheus/camera/rev/StreetCapabilities$4;->val$loader:Ljava/lang/ClassLoader;

    const-string v2, "v2.k0"

    invoke-static {v0, v2}, Lcom/prometheus/camera/rev/StreetCapabilities;->access$000(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    iget-object p0, p0, Lcom/prometheus/camera/rev/StreetCapabilities$4;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/StreetCapabilities;->access$100(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 87
    invoke-static {p0}, Lcom/prometheus/camera/rev/StreetCapabilities;->hasItems(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    .line 88
    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void

    .line 93
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "q"

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0x8

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "S"

    invoke-static {v0, v1, p1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "PhoenixStreetUI: portrait prepared before dispatch items="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
