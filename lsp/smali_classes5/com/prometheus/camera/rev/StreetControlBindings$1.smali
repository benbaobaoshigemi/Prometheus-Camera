.class Lcom/prometheus/camera/rev/StreetControlBindings$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "StreetControlBindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/StreetControlBindings;->install(Ljava/lang/ClassLoader;)V
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

    .line 15
    iput-object p1, p0, Lcom/prometheus/camera/rev/StreetControlBindings$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5

    .line 17
    invoke-static {}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->enabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xe5

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 18
    :cond_0
    const-string v0, "g2.a"

    iget-object v3, p0, Lcom/prometheus/camera/rev/StreetControlBindings$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v3}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "a"

    invoke-static {v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    const-string v1, "r2.Q"

    iget-object v4, p0, Lcom/prometheus/camera/rev/StreetControlBindings$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v1, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "x"

    invoke-static {v0, v4, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getComponentValue"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    const-string v1, "X6.i"

    iget-object v2, p0, Lcom/prometheus/camera/rev/StreetControlBindings$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v3}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    const-string v2, "S"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 23
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 24
    const-string v2, "3x2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Qh.e"

    iget-object p0, p0, Lcom/prometheus/camera/rev/StreetControlBindings$1;->val$loader:Ljava/lang/ClassLoader;

    .line 25
    invoke-static {v2, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "accessibility_picturesize_2_3_button"

    invoke-static {p0, v2}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result p0

    .line 24
    const-string v2, "d"

    invoke-static {p1, v2, p0}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "PhoenixStreetUI: ratio display bound value="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " icon="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
