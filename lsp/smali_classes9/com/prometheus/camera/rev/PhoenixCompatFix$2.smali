.class Lcom/prometheus/camera/rev/PhoenixCompatFix$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoenixCompatFix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/PhoenixCompatFix;->hookModeDecider(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .line 130
    invoke-static {p1}, Lcom/prometheus/camera/rev/PhoenixCompatFix;->access$100(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    return-void
.end method
