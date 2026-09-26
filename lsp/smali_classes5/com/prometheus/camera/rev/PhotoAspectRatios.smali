.class final Lcom/prometheus/camera/rev/PhotoAspectRatios;
.super Ljava/lang/Object;
.source "PhotoAspectRatios.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static install(Ljava/lang/ClassLoader;)V
    .locals 4

    .line 13
    const-string v0, "r2.Q"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 14
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "j9.e"

    .line 15
    invoke-static {v3, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    new-instance v3, Lcom/prometheus/camera/rev/PhotoAspectRatios$1;

    invoke-direct {v3, v0}, Lcom/prometheus/camera/rev/PhotoAspectRatios$1;-><init>(Ljava/lang/Class;)V

    filled-new-array {v1, v2, p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    .line 14
    const-string v1, "t"

    invoke-static {v0, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method
