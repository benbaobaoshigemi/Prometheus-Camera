.class Lcom/prometheus/camera/rev/CameraV51Bridge$63;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "CameraV51Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/CameraV51Bridge;->hookWatermarkLeicaFilterIdentity(Ljava/lang/ClassLoader;)V
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

    .line 2317
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$63;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2320
    const-string v0, "com.xiaomi.camera.effect.EffectController"

    iget-object v1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$63;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 2322
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "s"

    invoke-static {v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2323
    const-string v2, "l"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2324
    const-string v2, "i3.b"

    iget-object v3, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$63;->val$loader:Ljava/lang/ClassLoader;

    .line 2325
    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "N"

    .line 2324
    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2329
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const-string p1, "regular"

    aput-object p1, p0, v1

    return-void

    :cond_0
    const v2, 0xffff

    and-int/2addr v0, v2

    .line 2333
    const-string v2, "o3.d"

    iget-object p0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$63;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v2, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 2334
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    if-ltz v0, :cond_1

    .line 2336
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 2337
    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 2342
    :goto_0
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$5200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    return-void
.end method
