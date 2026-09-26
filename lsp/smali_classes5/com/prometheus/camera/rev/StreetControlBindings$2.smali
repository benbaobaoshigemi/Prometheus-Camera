.class Lcom/prometheus/camera/rev/StreetControlBindings$2;
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
.field final synthetic val$settings:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/prometheus/camera/rev/StreetControlBindings$2;->val$settings:Ljava/lang/Class;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    .line 31
    invoke-static {}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "i"

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    const-string v2, "L"

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    const-string v2, "custom_shutter_equip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "custom_shutter_equip_2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/prometheus/camera/rev/StreetControlBindings$2;->val$settings:Ljava/lang/Class;

    const-string v0, "v"

    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "custom_shutter_default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 36
    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 37
    const-string p0, "PhoenixStreetUI: native default shutter retained"

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
