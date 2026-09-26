.class Lcom/nezha/q0fix/PhoenixQ0Fix$10;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoenixQ0Fix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nezha/q0fix/PhoenixQ0Fix;->hookObserveDefaultValue(Ljava/lang/ClassLoader;)I
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

    .line 966
    iput-object p1, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$10;->this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 10

    const-string v0, "\u629b "

    const-string v1, "\""

    const-string v2, "[Q0Fix] (\u89c2\u6d4b) getDefaultValue("

    .line 970
    :try_start_0
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$3308()I

    .line 971
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 972
    :cond_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v4

    .line 974
    :goto_0
    const-string v5, "?"

    if-nez v3, :cond_2

    .line 975
    iget-object v6, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v6, :cond_2

    iget-object v6, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    iget-object v6, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 977
    iget-object v5, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v5, v5, v8

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 978
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0xe7

    if-ne v5, v9, :cond_1

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    move-object v5, v6

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    if-nez v7, :cond_3

    .line 981
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$3300()I

    move-result v6

    const/16 v7, 0x12c

    if-le v6, v7, :cond_3

    return-void

    .line 984
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") -> "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_4

    .line 985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2700(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 986
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 984
    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
