.class Lcom/nezha/q0fix/PhoenixQ0Fix$9;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoenixQ0Fix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nezha/q0fix/PhoenixQ0Fix;->guardArray()Lde/robv/android/xposed/XC_MethodHook;
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

    .line 904
    iput-object p1, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$9;->this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 7

    const-string v0, " \u4e2a\u5143\u7d20 -> \u8865\u5230 3\uff08R4/h.xl() \u4f1a\u8bfb [1] [2]\uff09"

    const-string v1, "[Q0Fix] [\u515c\u5e95] m() \u629b "

    .line 908
    :try_start_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v2

    const/16 v3, 0x19

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 909
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 910
    invoke-virtual {p1, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    .line 911
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$3000()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 912
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$3108()I

    .line 913
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$3100()I

    move-result p1

    if-gt p1, v3, :cond_0

    .line 914
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2700(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> \u5b89\u5168\u6570\u7ec4"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V

    .line 915
    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2800(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 919
    :cond_1
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    const-string v2, "[Q0Fix] #"

    if-nez v1, :cond_3

    .line 921
    :try_start_1
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$3108()I

    .line 922
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$3000()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 923
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$3100()I

    move-result p1

    if-gt p1, v3, :cond_2

    .line 924
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$3100()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " m() \u8fd4\u56de null -> \u5b89\u5168\u6570\u7ec4"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V

    .line 925
    invoke-static {v4}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2800(Ljava/lang/Throwable;)V

    :cond_2
    return-void

    .line 929
    :cond_3
    instance-of v5, v1, [Ljava/lang/String;

    if-eqz v5, :cond_4

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_4

    .line 930
    check-cast v1, [Ljava/lang/String;

    .line 931
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$3208()I

    .line 932
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$3000()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 933
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$3200()I

    move-result p1

    if-gt p1, v3, :cond_4

    .line 934
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$3200()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " m() \u53ea\u7ed9\u4e86 "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V

    .line 937
    invoke-static {v4}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2800(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method
