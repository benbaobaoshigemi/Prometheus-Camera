.class Lcom/nezha/q0fix/PhoenixQ0Fix$6;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoenixQ0Fix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nezha/q0fix/PhoenixQ0Fix;->hookQ0(Ljava/lang/ClassLoader;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

.field final synthetic val$className:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nezha/q0fix/PhoenixQ0Fix;Ljava/lang/String;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$6;->this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

    iput-object p2, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$6;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$6;->this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

    iget-object v1, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$6;->val$className:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$2500(Lcom/nezha/q0fix/PhoenixQ0Fix;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/String;)V

    return-void
.end method
