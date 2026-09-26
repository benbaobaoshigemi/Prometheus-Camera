.class Lcom/nezha/q0fix/PhoenixQ0Fix$5;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoenixQ0Fix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nezha/q0fix/PhoenixQ0Fix;->hookDeviceFactory(Ljava/lang/ClassLoader;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

.field final synthetic val$jeE:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/nezha/q0fix/PhoenixQ0Fix;Ljava/lang/Class;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$5;->this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

    iput-object p2, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$5;->val$jeE:Ljava/lang/Class;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    const-string v0, "[Q0Fix][DEVCFG] G0()#"

    .line 436
    :try_start_0
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1808()I

    .line 437
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 438
    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_1

    .line 439
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1900()Ljava/lang/Class;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 440
    :goto_1
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1800()I

    move-result v2

    const/16 v3, 0x19

    if-gt v2, v3, :cond_3

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1800()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u539f\u59cb\u8fd4\u56de = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    .line 442
    const-string v1, "\u57fa\u7c7b(common.Common)"

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  \u673a\u578b\u952e Je/e.c = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$5;->val$jeE:Ljava/lang/Class;

    const-string v1, "c"

    .line 443
    invoke-static {v0, v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2000(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V

    :cond_3
    if-nez p1, :cond_4

    .line 446
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2108()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Q0Fix][DEVCFG] hook \u5185\u90e8\u5f02\u5e38(\u5df2\u5ffd\u7565): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V

    return-void
.end method
