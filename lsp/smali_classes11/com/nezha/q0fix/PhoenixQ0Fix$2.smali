.class Lcom/nezha/q0fix/PhoenixQ0Fix$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoenixQ0Fix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nezha/q0fix/PhoenixQ0Fix;->hookSupport(Ljava/lang/ClassLoader;)I
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

    .line 286
    iput-object p1, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$2;->this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    const-string v0, "[Q0Fix][SUP] #"

    .line 290
    :try_start_0
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$508()I

    .line 291
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$100(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$608()I

    .line 294
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 295
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$600()I

    move-result p1

    const/16 v1, 0x19

    if-gt p1, v1, :cond_1

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$600()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " MasterLiveModuleEntry.support() = false -> true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$708()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method
