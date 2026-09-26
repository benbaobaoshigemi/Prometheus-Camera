.class Lcom/nezha/q0fix/PhoenixQ0Fix$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoenixQ0Fix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nezha/q0fix/PhoenixQ0Fix;->hookY4(Ljava/lang/ClassLoader;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

.field final synthetic val$label:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nezha/q0fix/PhoenixQ0Fix;Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$1;->this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

    iput-object p2, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$1;->val$label:Ljava/lang/String;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    const-string v0, "[Q0Fix][Y4] #"

    .line 251
    :try_start_0
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$008()I

    .line 252
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$100(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$208()I

    .line 255
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 256
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$200()I

    move-result p1

    const/16 v1, 0x19

    if-gt p1, v1, :cond_1

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$200()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$1;->val$label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".y4() = false -> true\uff08\u8fd0\u955c\u5f00\u5173\uff09"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$408()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method
