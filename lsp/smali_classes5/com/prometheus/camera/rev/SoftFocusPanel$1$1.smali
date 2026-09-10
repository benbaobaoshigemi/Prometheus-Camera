.class Lcom/prometheus/camera/rev/SoftFocusPanel$1$1;
.super Ljava/lang/Object;
.source "SoftFocusPanel.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/SoftFocusPanel$1;->afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prometheus/camera/rev/SoftFocusPanel$1;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/SoftFocusPanel$1;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$1$1;->this$1:Lcom/prometheus/camera/rev/SoftFocusPanel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 84
    const-string v0, "prometheus_soft_focus_panel_enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    return-void

    :cond_9
    const/4 p2, 0x1

    .line 85
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$302(Z)Z

    .line 86
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$100()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/prometheus/camera/rev/SoftFocusPanel$1$1$1;

    invoke-direct {p2, p0}, Lcom/prometheus/camera/rev/SoftFocusPanel$1$1$1;-><init>(Lcom/prometheus/camera/rev/SoftFocusPanel$1$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
