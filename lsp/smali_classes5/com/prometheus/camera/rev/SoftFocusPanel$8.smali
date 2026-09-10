.class Lcom/prometheus/camera/rev/SoftFocusPanel$8;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SoftFocusPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/SoftFocusPanel;->install()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .line 259
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1000()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    if-ne p0, p1, :cond_1e

    .line 260
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$2100()V

    const/4 p0, 0x0

    .line 261
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$2202(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const/4 p0, -0x1

    .line 262
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$2302(I)I

    .line 263
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1000()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1e
    return-void
.end method
