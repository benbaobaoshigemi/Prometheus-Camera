.class Lcom/nezha/q0fix/PhoenixQ0Fix$8;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoenixQ0Fix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nezha/q0fix/PhoenixQ0Fix;->guardList()Lde/robv/android/xposed/XC_MethodHook;
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

    .line 872
    iput-object p1, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$8;->this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5

    const-string v0, "[Q0Fix] [\u515c\u5e95] o() \u629b "

    const-string v1, "[Q0Fix] #"

    .line 876
    :try_start_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v2

    const/16 v3, 0x19

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 877
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    .line 878
    invoke-virtual {p1, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    .line 879
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 880
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2908()I

    .line 881
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2900()I

    move-result p1

    if-gt p1, v3, :cond_0

    .line 882
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2700(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> emptyList"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V

    .line 883
    invoke-static {v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2800(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 887
    :cond_1
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 888
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2908()I

    .line 889
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 890
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2900()I

    move-result p1

    if-gt p1, v3, :cond_2

    .line 891
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2900()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " o() \u8fd4\u56de null -> emptyList  \u2605\u8fd9\u5c31\u662f R4/h.xl() \u7684 List.size() NPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V

    .line 893
    invoke-static {v4}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2800(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method
