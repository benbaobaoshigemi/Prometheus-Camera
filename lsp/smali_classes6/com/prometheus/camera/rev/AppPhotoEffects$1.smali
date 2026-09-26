.class Lcom/prometheus/camera/rev/AppPhotoEffects$1;
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

    .line 51
    iput-object p1, p0, Lcom/prometheus/camera/rev/AppPhotoEffects$1;->this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/prometheus/camera/rev/AppPhotoEffects$1;->this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;

    invoke-static {v0}, Lcom/prometheus/camera/rev/AppPhotoEffects;->access$000(Lcom/prometheus/camera/rev/AppPhotoEffects;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v1, "j"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    invoke-static {v0}, Lcom/prometheus/camera/rev/AppPhotoEffects;->classicToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/prometheus/camera/rev/AppPhotoEffects$1;->this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;

    .line 57
    invoke-static {p0}, Lcom/prometheus/camera/rev/AppPhotoEffects;->access$100(Lcom/prometheus/camera/rev/AppPhotoEffects;)Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.xiaomi.utils.OpenGl3dUtils"

    invoke-static {v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v0, v3, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 56
    const-string v2, "a"

    invoke-static {p0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    .line 60
    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "classic bitmap delivered: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoenixAppEffects"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Classic LUT unavailable: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
