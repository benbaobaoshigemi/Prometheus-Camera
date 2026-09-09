.class public final Lu6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF6/u$a;


# static fields
.field public static volatile a:Z


# virtual methods
.method public final a()V
    .locals 4

    const-string p0, "CameraServerWatchDogCallback"

    const-string v0, "onNegative execute"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object p0

    sget-object v0, LF6/a;->l0:LF6/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3, v1}, LF6/q;->c(LF6/a;J[Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Reason"

    const-string v1, "App call Camera hal API setupGlobalVendorTagDescriptor or getCameraIdList block."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x36d63f6a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p0}, Lki/c;->a(IJLjava/util/HashMap;)V

    const/4 p0, 0x1

    invoke-static {p0}, LQp/a;->a(Z)Z

    return-void
.end method

.method public final b()Z
    .locals 0

    sget-boolean p0, Lu6/l;->a:Z

    return p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final reset()V
    .locals 0

    return-void
.end method
