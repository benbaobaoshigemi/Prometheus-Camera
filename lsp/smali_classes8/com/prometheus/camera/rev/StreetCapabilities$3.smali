.class Lcom/prometheus/camera/rev/StreetCapabilities$3;
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

    .line 66
    iput-object p1, p0, Lcom/prometheus/camera/rev/StreetCapabilities$3;->this$0:Lcom/prometheus/camera/rev/StreetCapabilities;

    iput-object p2, p0, Lcom/prometheus/camera/rev/StreetCapabilities$3;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    .line 68
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/prometheus/camera/rev/StreetCapabilities$3;->val$loader:Ljava/lang/ClassLoader;

    const-string v1, "v2.h"

    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/StreetCapabilities;->access$000(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    const-string v1, "J"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "getItems"

    new-array v3, v2, [Ljava/lang/Object;

    .line 71
    invoke-static {v0, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/prometheus/camera/rev/StreetCapabilities;->hasItems(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 72
    :cond_1
    iget-object p0, p0, Lcom/prometheus/camera/rev/StreetCapabilities$3;->val$loader:Ljava/lang/ClassLoader;

    const-string v0, "v2.k0"

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/StreetCapabilities;->access$000(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/StreetCapabilities;->access$100(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/StreetCapabilities;->hasItems(Ljava/util/List;)Z

    move-result p0

    .line 73
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 74
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "c"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xd40

    if-ne v0, v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const/16 v1, 0xef

    if-ne v0, v1, :cond_2

    if-nez p0, :cond_2

    .line 77
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    return-void
.end method
