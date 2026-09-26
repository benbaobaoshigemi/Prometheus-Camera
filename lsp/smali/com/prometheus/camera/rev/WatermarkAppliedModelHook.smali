.class final Lcom/prometheus/camera/rev/WatermarkAppliedModelHook;
.super Lde/robv/android/xposed/XC_MethodHook;


# instance fields
.field private final loader:Ljava/lang/ClassLoader;

.field private final selectedName:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/rev/WatermarkAppliedModelHook;->loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/prometheus/camera/rev/WatermarkAppliedModelHook;->selectedName:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    iget-object v0, p0, Lcom/prometheus/camera/rev/WatermarkAppliedModelHook;->loader:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lcom/prometheus/camera/rev/WatermarkAppliedModelHook;->selectedName:Ljava/lang/reflect/Method;

    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/CameraWatermarkBridge;->ordinarySelection(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    :cond_0
    return-void
.end method
