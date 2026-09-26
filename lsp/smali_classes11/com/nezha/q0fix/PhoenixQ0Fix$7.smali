.class Lcom/nezha/q0fix/PhoenixQ0Fix$7;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoenixQ0Fix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nezha/q0fix/PhoenixQ0Fix;->guard(Ljava/lang/String;Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;)Lde/robv/android/xposed/XC_MethodHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

.field final synthetic val$kind:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

.field final synthetic val$which:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nezha/q0fix/PhoenixQ0Fix;Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;Ljava/lang/String;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$7;->this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

    iput-object p2, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$7;->val$kind:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    iput-object p3, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$7;->val$which:Ljava/lang/String;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 6

    const-string v0, "[Q0Fix] [\u515c\u5e95] "

    .line 849
    :try_start_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 852
    :cond_0
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2608()I

    .line 853
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    .line 854
    iget-object v2, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$7;->val$kind:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    sget-object v3, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->MAP:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    .line 855
    :cond_1
    iget-object v2, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$7;->val$kind:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    sget-object v3, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->STRING:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    if-ne v2, v3, :cond_2

    const-string v2, ""

    goto :goto_0

    :cond_2
    move-object v2, v4

    .line 856
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$7;->val$which:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "() \u629b "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2700(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> \u5df2\u515c\u4f4f\uff0c\u8fd4\u56de "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    iget-object v0, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$7;->val$kind:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    sget-object v5, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->MAP:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    if-ne v0, v5, :cond_3

    const-string v0, "emptyMap"

    goto :goto_1

    .line 858
    :cond_3
    iget-object v0, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$7;->val$kind:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    sget-object v5, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->STRING:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    if-ne v0, v5, :cond_4

    const-string v0, "\"\""

    goto :goto_1

    :cond_4
    const-string v0, "void"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 856
    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V

    .line 859
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2600()I

    move-result v0

    const/16 v3, 0x8

    if-gt v0, v3, :cond_5

    .line 860
    invoke-static {v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2800(Ljava/lang/Throwable;)V

    .line 862
    :cond_5
    invoke-virtual {p1, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    .line 863
    invoke-virtual {p1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
