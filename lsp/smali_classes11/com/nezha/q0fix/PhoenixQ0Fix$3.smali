.class Lcom/nezha/q0fix/PhoenixQ0Fix$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoenixQ0Fix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nezha/q0fix/PhoenixQ0Fix;->hookZoomReset(Ljava/lang/ClassLoader;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;


# direct methods
.method constructor <init>(Lcom/nezha/q0fix/PhoenixQ0Fix;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$3;->this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    const-string v0, "[Q0Fix][ZOOM] onAnimationEnd(fromEvent=2) \u8bb0\u4e0b\u6a21\u5757 "

    const/16 v1, 0x19

    .line 323
    :try_start_0
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$808()I

    .line 324
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 325
    const-string v2, "a"

    const/high16 v3, -0x80000000

    invoke-static {p1, v2, v3}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$900(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-void

    .line 329
    :cond_0
    const-string v2, "d"

    invoke-static {p1, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 330
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1108()I

    if-eqz p1, :cond_1

    .line 332
    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1202(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1302(J)J

    .line 335
    :cond_1
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1100()I

    move-result v2

    if-gt v2, v1, :cond_3

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 337
    const-string p1, "(null)"

    goto :goto_0

    :cond_2
    const-string p1, "OK"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u2014\u2014 \u7b49\u56de\u62c9\u5224\u5b9a"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 340
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$800()I

    move-result v0

    if-gt v0, v1, :cond_3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Q0Fix][ZOOM] onAnimationEnd before \u5f02\u5e38: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
