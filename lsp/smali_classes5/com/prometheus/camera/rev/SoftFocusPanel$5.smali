.class Lcom/prometheus/camera/rev/SoftFocusPanel$5;
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

    .line 214
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 7

    .line 216
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result p0

    if-nez p0, :cond_ae

    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$300()Z

    move-result p0

    if-eqz p0, :cond_ae

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1400()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    goto/16 :goto_ae

    .line 217
    :cond_1e
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$600()I

    move-result p0

    .line 218
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$700(I)Z

    move-result v0

    if-nez v0, :cond_29

    return-void

    .line 219
    :cond_29
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 220
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v3, "g"

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 221
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v0, v2, :cond_4c

    .line 222
    invoke-static {p0, v0, v3}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1500(III)V

    goto :goto_51

    .line 223
    :cond_4c
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {v2, p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1600(Ljava/lang/Object;I)V

    .line 224
    :goto_51
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1700(I)I

    move-result v2

    .line 225
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1800()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 227
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$500()Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 228
    :try_start_63
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1900(I)Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;

    move-result-object v5

    .line 229
    iget v6, v5, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->reportedNative:I

    if-ne v6, v3, :cond_6f

    iget v6, v5, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->reportedEffective:I

    if-eq v6, v2, :cond_70

    :cond_6f
    const/4 v1, 0x1

    .line 230
    :cond_70
    iput v3, v5, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->reportedNative:I

    .line 231
    iput v2, v5, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->reportedEffective:I

    .line 232
    monitor-exit v4
    :try_end_75
    .catchall {:try_start_63 .. :try_end_75} :catchall_ab

    if-eqz v1, :cond_aa

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "filterSoftType mode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " filter="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " native="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " effective="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1200(Ljava/lang/String;)V

    :cond_aa
    return-void

    :catchall_ab
    move-exception p0

    .line 232
    :try_start_ac
    monitor-exit v4
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw p0

    :cond_ae
    :goto_ae
    return-void
.end method
