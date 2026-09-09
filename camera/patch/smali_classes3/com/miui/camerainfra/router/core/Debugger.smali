.class public Lcom/miui/camerainfra/router/core/Debugger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/camerainfra/router/core/Debugger$Logger;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MiRouter"

.field private static sEnableDebug:Z

.field private static sEnableLog:Z

.field private static sLogger:Lcom/miui/camerainfra/router/core/Debugger$Logger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/miui/camerainfra/router/core/Debugger;->sLogger:Lcom/miui/camerainfra/router/core/Debugger$Logger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/miui/camerainfra/router/core/Debugger$Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/camerainfra/router/core/Debugger;->sLogger:Lcom/miui/camerainfra/router/core/Debugger$Logger;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/miui/camerainfra/router/core/Debugger$Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/miui/camerainfra/router/core/Debugger;->sLogger:Lcom/miui/camerainfra/router/core/Debugger$Logger;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lcom/miui/camerainfra/router/core/Debugger$Logger;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs fatal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/camerainfra/router/core/Debugger;->sLogger:Lcom/miui/camerainfra/router/core/Debugger$Logger;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/miui/camerainfra/router/core/Debugger$Logger;->fatal(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static fatal(Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/miui/camerainfra/router/core/Debugger;->sLogger:Lcom/miui/camerainfra/router/core/Debugger$Logger;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lcom/miui/camerainfra/router/core/Debugger$Logger;->fatal(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/miui/camerainfra/router/core/Debugger;->sLogger:Lcom/miui/camerainfra/router/core/Debugger$Logger;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/miui/camerainfra/router/core/Debugger$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static isEnableDebug()Z
    .locals 1

    sget-boolean v0, Lcom/miui/camerainfra/router/core/Debugger;->sEnableDebug:Z

    return v0
.end method

.method public static isEnableLog()Z
    .locals 1

    sget-boolean v0, Lcom/miui/camerainfra/router/core/Debugger;->sEnableLog:Z

    return v0
.end method

.method public static isLogSetting()Z
    .locals 1

    sget-object v0, Lcom/miui/camerainfra/router/core/Debugger;->sLogger:Lcom/miui/camerainfra/router/core/Debugger$Logger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setEnableDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/miui/camerainfra/router/core/Debugger;->sEnableDebug:Z

    return-void
.end method

.method public static setEnableLog(Z)V
    .locals 0

    sput-boolean p0, Lcom/miui/camerainfra/router/core/Debugger;->sEnableLog:Z

    return-void
.end method

.method public static setLogger(Lcom/miui/camerainfra/router/core/Debugger$Logger;)V
    .locals 0

    sput-object p0, Lcom/miui/camerainfra/router/core/Debugger;->sLogger:Lcom/miui/camerainfra/router/core/Debugger$Logger;

    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/camerainfra/router/core/Debugger;->sLogger:Lcom/miui/camerainfra/router/core/Debugger$Logger;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lcom/miui/camerainfra/router/core/Debugger$Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/miui/camerainfra/router/core/Debugger;->sLogger:Lcom/miui/camerainfra/router/core/Debugger$Logger;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lcom/miui/camerainfra/router/core/Debugger$Logger;->w(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
