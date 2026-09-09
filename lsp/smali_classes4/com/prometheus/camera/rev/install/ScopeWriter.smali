.class public Lcom/prometheus/camera/rev/install/ScopeWriter;
.super Ljava/lang/Object;
.source "ScopeWriter.java"


# static fields
.field private static final MODULE:Ljava/lang/String; = "com.prometheus.camera.rev"

.field private static final PKGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 18
    const-string v1, "system"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.miui.mediaeditor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.miui.gallery"

    aput-object v2, v0, v1

    .line 17
    sput-object v0, Lcom/prometheus/camera/rev/install/ScopeWriter;->PKGS:[Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 2

    .line 84
    nop

    .line 85
    nop

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 84
    const-string p1, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=?"

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 87
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    .line 88
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 89
    return p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10

    .line 22
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 23
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "usage: ScopeWriter <lspd_db_path>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 26
    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 27
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 29
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERROR: database not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 32
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 35
    :try_start_0
    const-string v3, "PRAGMA busy_timeout=5000;"

    invoke-virtual {p0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v2

    :goto_0
    nop

    .line 38
    :try_start_1
    const-string v2, "modules_state"

    invoke-static {p0, v2}, Lcom/prometheus/camera/rev/install/ScopeWriter;->hasTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    .line 39
    const-string v3, "scope"

    invoke-static {p0, v3}, Lcom/prometheus/camera/rev/install/ScopeWriter;->hasTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    .line 40
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tables: modules_state="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " scope="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 42
    const-string v4, "com.prometheus.camera.rev"

    if-eqz v2, :cond_2

    .line 43
    :try_start_2
    const-string v2, "INSERT OR REPLACE INTO modules_state (module_pkg_name, user_id, enabled, scope_request_blocked) VALUES (?, 0, 1, 0)"

    .line 45
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v5

    .line 43
    invoke-virtual {p0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "modules_state: module enabled=1"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    :cond_2
    if-eqz v3, :cond_6

    .line 50
    sget-object v2, Lcom/prometheus/camera/rev/install/ScopeWriter;->PKGS:[Ljava/lang/String;

    array-length v3, v2

    move v5, v0

    :goto_1
    if-lt v5, v3, :cond_4

    .line 59
    const-string v2, "SELECT COUNT(*) FROM scope WHERE module_pkg_name=?"

    .line 60
    new-array v3, v1, [Ljava/lang/String;

    aput-object v4, v3, v0

    .line 59
    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 61
    nop

    .line 62
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 65
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 66
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "scope total: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Prometheus scope write OK"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    goto :goto_3

    .line 50
    :cond_4
    aget-object v6, v2, v5

    .line 51
    invoke-static {p0, v6}, Lcom/prometheus/camera/rev/install/ScopeWriter;->scopeExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 52
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "scope exists: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    goto :goto_2

    .line 55
    :cond_5
    const-string v7, "INSERT INTO scope (module_pkg_name, app_pkg_name, user_id) VALUES (?, ?, 0)"

    .line 56
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v8

    .line 55
    invoke-virtual {p0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "scope added: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 69
    :cond_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ERROR: no scope table in database"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 72
    nop

    .line 77
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 78
    :catchall_1
    move-exception p0

    goto :goto_4

    .line 72
    :catchall_2
    move-exception v0

    .line 73
    :try_start_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERROR: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 77
    :try_start_5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 78
    :goto_4
    nop

    .line 81
    return-void

    .line 75
    :catchall_3
    move-exception v0

    .line 77
    :try_start_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 78
    :goto_5
    goto :goto_6

    :catchall_4
    move-exception p0

    goto :goto_5

    .line 80
    :goto_6
    throw v0
.end method

.method private static scopeExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3

    .line 93
    nop

    .line 94
    nop

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.prometheus.camera.rev"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 93
    const-string p1, "SELECT COUNT(*) FROM scope WHERE module_pkg_name=? AND app_pkg_name=? AND user_id=0"

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 96
    nop

    .line 97
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-lez p1, :cond_0

    move v2, v1

    .line 100
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 101
    return v2
.end method
