.class Lcom/prometheus/camera/rev/PhoenixLogSettings$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoenixLogSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/PhoenixLogSettings;->installPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .line 182
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->access$200(Ljava/lang/Object;)V

    return-void
.end method
