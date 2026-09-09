.class public final Lcom/prometheus/camera/rev/install/ScopeInstaller;
.super Ljava/lang/Object;
.source "ScopeInstaller.java"


# static fields
.field private static final CAMERA:Ljava/lang/String; = "com.android.camera"

.field private static final MEDIA_EDITOR:Ljava/lang/String; = "com.miui.mediaeditor"

.field private static final MODULE:Ljava/lang/String; = "com.prometheus.camera.rev"

.field private static final POLL_INTERVAL_MS:J = 0x1f4L

.field private static final REGISTRATION_TIMEOUT_MS:J = 0x7530L

.field private static final STABILITY_WINDOW_MS:J = 0x1388L

.field private static final SYSTEM:Ljava/lang/String; = "system"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 94
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 96
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    const-string v1, "module_pkg_name"

    const-string v2, "com.prometheus.camera.rev"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "user_id"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v1, "enabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v1, "scope_request_blocked"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v1, "modules_state"

    invoke-static {p0, v1, v0}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 102
    const-string v0, "com.android.camera"

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->insertScope(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 103
    const-string v0, "system"

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->insertScope(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 104
    const-string v0, "com.miui.mediaeditor"

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->insertScope(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 108
    throw v0
.end method

.method private static configured(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5

    .line 73
    const-string v0, "com.prometheus.camera.rev"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "SELECT COUNT(*) FROM modules_state WHERE module_pkg_name=? AND user_id=0 AND enabled=1 AND scope_request_blocked=0"

    invoke-static {p0, v2, v1}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->count(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 79
    :cond_0
    const-string v1, "system"

    const-string v3, "com.miui.mediaeditor"

    const-string v4, "com.android.camera"

    filled-new-array {v0, v4, v1, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "SELECT COUNT(DISTINCT app_pkg_name) FROM scope WHERE module_pkg_name=? AND user_id=0 AND app_pkg_name IN (?,?,?)"

    invoke-static {p0, v1, v0}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->count(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v3, 0x3

    cmp-long p0, v0, v3

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static count(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 88
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    .line 90
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    const/4 p1, 0x0

    .line 89
    :try_start_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    .line 90
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    .line 87
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p1
.end method

.method private static insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 139
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    return-void

    .line 141
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u65e0\u6cd5\u66f4\u65b0 LSPosed \u6570\u636e\u8868\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static insertScope(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3

    .line 112
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 113
    const-string v1, "module_pkg_name"

    const-string v2, "com.prometheus.camera.rev"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "app_pkg_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string p1, "scope"

    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 21
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 24
    aget-object v1, p0, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 27
    :try_start_0
    const-string v1, "modules"

    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->requireTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 28
    const-string v1, "modules_state"

    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->requireTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 29
    const-string v1, "scope"

    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->requireTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 31
    aget-object p0, p0, v1

    invoke-static {v0, p0}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->waitForRegistrationAndConfigure(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 32
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5f95\u5361\u76f8\u673a LSPosed \u4f5c\u7528\u57df\u914d\u7f6e\u5b8c\u6210"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 35
    throw p0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u53c2\u6570\u9519\u8bef\uff1a\u9700\u8981 LSPosed \u6570\u636e\u5e93\u8def\u5f84\u548c\u6a21\u5757 APK \u8def\u5f84"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static moduleApkPath(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 2

    .line 65
    const-string v0, "com.prometheus.camera.rev"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "SELECT apk_path FROM modules WHERE module_pkg_name=?"

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 68
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 69
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    .line 65
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
.end method

.method private static requireTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3

    const-string v0, "\u4e0d\u652f\u6301\u7684 LSPosed \u6570\u636e\u5e93\uff1a\u7f3a\u5c11\u6570\u636e\u8868 "

    .line 129
    const-string v1, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 132
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    .line 135
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .line 133
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 129
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
.end method

.method private static sleep()V
    .locals 3

    const-wide/16 v0, 0x1f4

    .line 121
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 124
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "\u7b49\u5f85 LSPosed \u767b\u8bb0\u65f6\u88ab\u4e2d\u65ad"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static waitForRegistrationAndConfigure(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 10

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    const-wide/16 v2, -0x1

    :goto_0
    move-wide v4, v2

    .line 43
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-gez v6, :cond_4

    .line 44
    invoke-static {p0}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->moduleApkPath(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 46
    invoke-static {}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->sleep()V

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->configured(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 50
    invoke-static {p0}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->configure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    invoke-static {}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->sleep()V

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_2

    move-wide v4, v6

    :cond_2
    sub-long/2addr v6, v4

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    return-void

    .line 58
    :cond_3
    invoke-static {}, Lcom/prometheus/camera/rev/install/ScopeInstaller;->sleep()V

    goto :goto_1

    .line 60
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LSPosed \u672a\u80fd\u7a33\u5b9a\u4fdd\u7559\u6a21\u5757\u767b\u8bb0\u548c\u4f5c\u7528\u57df\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
