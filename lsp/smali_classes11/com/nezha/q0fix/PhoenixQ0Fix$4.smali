.class Lcom/nezha/q0fix/PhoenixQ0Fix$4;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoenixQ0Fix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nezha/q0fix/PhoenixQ0Fix;->hookZoomReset(Ljava/lang/ClassLoader;)I
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

    .line 365
    iput-object p1, p0, Lcom/nezha/q0fix/PhoenixQ0Fix$4;->this$0:Lcom/nezha/q0fix/PhoenixQ0Fix;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    const-string v0, "[Q0Fix][ZOOM] resetZoomRatioAfterRecording() -> "

    .line 403
    :try_start_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$100(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 404
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1400()I

    move-result v1

    const/16 v2, 0x19

    if-gt v1, v2, :cond_2

    .line 405
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    .line 406
    const-string p1, "\uff08\u5df2\u53d1\u8d77 fromEvent=3 \u56de\u62c9\uff09"

    goto :goto_0

    :cond_1
    const-string p1, "\uff08\u95e8\u63a7\u62e6\u4e0b\uff0c\u4e0d\u4f1a\u56de\u62c9\uff09"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 405
    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 14

    .line 369
    const-string v0, "mIsCaptureZoomCompleted"

    const-string v1, "mIsAllImageReceived"

    .line 0
    const-string v2, ") -> \u8df3\u8fc7(dry \u672a\u547d\u4e2d\u65b0\u9c9c\u7a97\u53e3)"

    const-string v3, "[Q0Fix][ZOOM] #"

    const-string v4, "[Q0Fix][ZOOM] \u95e8\u63a7\u672a\u8fc7(allImages="

    .line 369
    :try_start_0
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1408()I

    .line 370
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const/4 v5, 0x0

    .line 371
    invoke-static {p1, v1, v5}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1500(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v6

    .line 372
    invoke-static {p1, v0, v5}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1500(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1200()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    if-ne p1, v8, :cond_1

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1300()J

    move-result-wide v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v10, v12

    const-wide/16 v12, 0xbb8

    cmp-long v8, v10, v12

    if-gez v8, :cond_1

    move v5, v9

    .line 378
    :cond_1
    const-string v8, ", zoomCompleted="

    const/16 v10, 0x19

    if-eqz v5, :cond_4

    if-nez v6, :cond_2

    .line 380
    :try_start_1
    invoke-static {p1, v1, v9}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1600(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_2
    if-nez v7, :cond_3

    .line 383
    invoke-static {p1, v0, v9}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1600(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 385
    :cond_3
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1708()I

    .line 386
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1700()I

    move-result p1

    if-gt p1, v10, :cond_5

    .line 387
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1700()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u95e8\u63a7\u672a\u8fc7(allImages="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") -> \u5df2\u7f6e\u771f\uff0c\u539f\u65b9\u6cd5\u7ee7\u7eed\u6267\u884c\u56de\u62c9"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_4
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$1400()I

    move-result p1

    if-gt p1, v10, :cond_5

    .line 392
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", fresh="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->access$300(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_5
    :goto_0
    return-void
.end method
