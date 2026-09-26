.class Lcom/prometheus/camera/rev/AppPhotoEffects$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "AppPhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/AppPhotoEffects;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/AppPhotoEffects;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/prometheus/camera/rev/AppPhotoEffects$2;->this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 7

    .line 66
    iget-object v0, p0, Lcom/prometheus/camera/rev/AppPhotoEffects$2;->this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;

    invoke-static {v0}, Lcom/prometheus/camera/rev/AppPhotoEffects;->access$000(Lcom/prometheus/camera/rev/AppPhotoEffects;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v1, "d"

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 68
    const-string v1, "k"

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    const-string v2, "c"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/prometheus/camera/rev/AppPhotoEffects$2;->this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;

    invoke-static {v4}, Lcom/prometheus/camera/rev/AppPhotoEffects;->access$200(Lcom/prometheus/camera/rev/AppPhotoEffects;)I

    move-result v4

    const-string v5, "h"

    .line 70
    invoke-static {p1, v5}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const-string v6, "j"

    .line 71
    invoke-static {p1, v6}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 69
    invoke-static {v3, v4, v5, p1}, Lcom/prometheus/camera/rev/AppPhotoEffects;->standaloneMist(IILjava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 72
    :cond_1
    iget-object p0, p0, Lcom/prometheus/camera/rev/AppPhotoEffects$2;->this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;

    invoke-static {p0}, Lcom/prometheus/camera/rev/AppPhotoEffects;->access$300(Lcom/prometheus/camera/rev/AppPhotoEffects;)I

    move-result p0

    invoke-static {v1, v2, p0}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 73
    const-string p0, "e"

    invoke-static {v1, p0, v0}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 74
    const-string p0, "PhoenixAppEffects"

    const-string p1, "standalone mist capture state delivered"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
