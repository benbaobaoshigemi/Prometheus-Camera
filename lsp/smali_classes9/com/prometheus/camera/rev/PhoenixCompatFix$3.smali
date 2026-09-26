.class Lcom/prometheus/camera/rev/PhoenixCompatFix$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoenixCompatFix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/PhoenixCompatFix;->hookVideoFilterIdCapture(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 191
    :try_start_0
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 p1, 0x2

    aget-object p0, p0, p1

    if-eqz p0, :cond_1

    .line 192
    const-string p1, "j9.i0"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    const-string p1, "S1"

    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    .line 194
    invoke-static {p1}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->access$202(Z)Z

    .line 195
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->access$302(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    .line 197
    invoke-static {p1}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->access$202(Z)Z

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "filter-id capture failed open: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->access$000(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
