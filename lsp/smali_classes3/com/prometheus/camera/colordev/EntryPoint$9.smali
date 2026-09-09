.class Lcom/prometheus/camera/colordev/EntryPoint$9;
.super Lde/robv/android/xposed/XC_MethodReplacement;
.source "EntryPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/colordev/EntryPoint;->hookClassicStyleStore(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodReplacement;-><init>()V

    return-void
.end method


# virtual methods
.method protected replaceHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 149
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    check-cast p0, Landroid/content/Context;

    .line 150
    const-string v0, "prometheus_classic_style"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 151
    const-string p1, "selected_model"

    const-string v0, "17u"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->access$800(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method
