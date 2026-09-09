.class public final Lcom/prometheus/camera/rev/install/ChainAudit;
.super Ljava/lang/Object;
.source "ChainAudit.java"


# static fields
.field private static final CAMERA:Ljava/lang/String; = "com.android.camera"

.field private static final CAMERA_CUSTOM:Ljava/lang/String; = "/data/user/0/com.android.camera/files/prometheus/custom_luts"

.field private static final CAMERA_DATA:Ljava/lang/String; = "/data/user/0/com.android.camera"

.field private static final CAMERA_PRESET:Ljava/lang/String; = "/data/user/0/com.android.camera/files/prometheus/preset_luts"

.field private static final CAMERA_STATE:Ljava/lang/String; = "/data/user/0/com.android.camera/files/prometheus/filter_sync"

.field private static final GALLERY_CUSTOM:Ljava/lang/String; = "/data/user/0/com.miui.mediaeditor/files/prometheus/custom_luts"

.field private static final GALLERY_DATA:Ljava/lang/String; = "/data/user/0/com.miui.mediaeditor"

.field private static final GALLERY_PRESET:Ljava/lang/String; = "/data/user/0/com.miui.mediaeditor/files/prometheus/preset_luts"

.field private static final GALLERY_ROOT:Ljava/lang/String; = "/data/user/0/com.miui.mediaeditor/files/prometheus"

.field private static final LSPD_DB:[Ljava/lang/String;

.field private static final MEDIA_EDITOR:Ljava/lang/String; = "com.miui.mediaeditor"

.field private static final MODULE:Ljava/lang/String; = "com.prometheus.camera.rev"

.field private static final SYSTEM:Ljava/lang/String; = "system"

.field private static final VENDOR:Ljava/lang/String; = "/data/vendor/camera"

.field private static final WATERMARK_PAIRS:[Ljava/lang/String;

.field private static failed:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 26
    const-string v0, "/data/adb/lspd/config/modules.db"

    const-string v1, "/data/adb/lsposed/config/modules_config.db"

    const-string v2, "/data/adb/lspd/config/modules_config.db"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/install/ChainAudit;->LSPD_DB:[Ljava/lang/String;

    .line 42
    const-string v14, "leica/94"

    const-string v15, "leica/111"

    const-string v1, "signature/24"

    const-string v2, "signature/25"

    const-string v3, "signature/26"

    const-string v4, "color_chart/27"

    const-string v5, "color_chart/28"

    const-string v6, "color_chart/29"

    const-string v7, "color_chart/30"

    const-string v8, "leica/88"

    const-string v9, "leica/89"

    const-string v10, "leica/90"

    const-string v11, "leica/91"

    const-string v12, "leica/92"

    const-string v13, "leica/93"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/install/ChainAudit;->WATERMARK_PAIRS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    sput v0, Lcom/prometheus/camera/rev/install/ChainAudit;->failed:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAppInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 73
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/user/0"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "PASS"

    goto :goto_0

    :cond_0
    const-string p0, "FAIL"

    .line 75
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5df2\u5b89\u88c5"

    goto :goto_1

    :cond_1
    const-string v0, "\u672a\u5b89\u88c5\u6216\u6570\u636e\u76ee\u5f55\u7f3a\u5931"

    .line 74
    :goto_1
    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static checkCatalogChain()V
    .locals 7

    .line 195
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/user/0/com.android.camera/files/prometheus/filter_sync"

    const-string v2, "catalog.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v3, Ljava/io/File;

    const-string v4, "catalog.commit"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v4, "\u6ee4\u955c\u76ee\u5f55"

    const-string v5, "PASS"

    if-nez v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    const-string v0, "\u5c1a\u65e0\u7528\u6237\u6ee4\u955c\u914d\u7f6e"

    invoke-static {v5, v4, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-static {v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->sha256(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/prometheus/camera/rev/install/ChainAudit;->readTrimmed(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 205
    :goto_0
    const-string v1, "FAIL"

    if-eqz v0, :cond_2

    move-object v3, v5

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 206
    const-string v0, "\u4e00\u81f4"

    goto :goto_2

    :cond_3
    const-string v0, "\u7f3a\u5931\u6216\u4e0d\u4e00\u81f4"

    :goto_2
    const-string v6, "\u76f8\u673a\u4fa7 "

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v3, v4, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/user/0/com.miui.mediaeditor/files/prometheus"

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v5, v1

    .line 209
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u5df2\u5c31\u7eea"

    goto :goto_4

    :cond_5
    const-string v0, "\u7f3a\u5931"

    :goto_4
    const-string v1, "\u76f8\u518c\u4fa7 "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v5, v4, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static checkCustomLutChain()V
    .locals 16

    .line 160
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/user/0/com.android.camera/files/prometheus/custom_luts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 163
    const-string v2, "\u7528\u6237\u6ee4\u955c"

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 164
    array-length v4, v0

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v3, v4, :cond_6

    aget-object v7, v0, v3

    .line 165
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 166
    const-string v9, "slot_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, ".commit"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 168
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x7

    const/4 v11, 0x5

    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 169
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".png"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {v7}, Lcom/prometheus/camera/rev/install/ChainAudit;->readTrimmed(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 171
    const-string v11, "deleted"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_1

    .line 172
    :cond_1
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v11

    const-string v12, "\u69fd\u4f4d "

    const-string v13, "FAIL"

    if-nez v11, :cond_2

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u56fe\u7247\u7f3a\u5931"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v2, v7}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 176
    :cond_2
    invoke-static {v10, v7}, Lcom/prometheus/camera/rev/install/ChainAudit;->hashMatches(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u54c8\u5e0c\u4e0d\u4e00\u81f4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v2, v7}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_3
    invoke-static {v8}, Lcom/prometheus/camera/rev/install/ChainAudit;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 181
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "prometheus_gallery_filter_"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit16 v7, v7, 0x23ad

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "/data/vendor/camera"

    invoke-direct {v11, v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v7, Ljava/io/File;

    const-string v9, "/data/user/0/com.miui.mediaeditor/files/prometheus/custom_luts"

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 187
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u540c\u6b65\u4e0d\u5b8c\u6574"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v2, v7}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    move v3, v6

    goto :goto_2

    :cond_7
    move v5, v3

    .line 191
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u6709\u69fd\u4f4d "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u540c\u6b65\u5b8c\u6574 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PASS"

    invoke-static {v1, v2, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static checkLspScope()V
    .locals 10

    .line 79
    const-string v0, "com.prometheus.camera.rev"

    .line 80
    sget-object v1, Lcom/prometheus/camera/rev/install/ChainAudit;->LSPD_DB:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 81
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 86
    :goto_1
    const-string v1, "LSPosed \u4f5c\u7528\u57df"

    const-string v2, "FAIL"

    if-nez v6, :cond_2

    .line 87
    const-string v0, "\u672a\u627e\u5230\u914d\u7f6e\u6570\u636e\u5e93"

    invoke-static {v2, v1, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v4, 0x1

    .line 91
    :try_start_0
    invoke-static {v6, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :try_start_1
    const-string v6, "SELECT COUNT(*) FROM modules_state WHERE module_pkg_name=? AND user_id=0 AND enabled=1 AND scope_request_blocked=0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/prometheus/camera/rev/install/ChainAudit;->queryInt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    move v3, v4

    .line 98
    :cond_3
    const-string v4, "SELECT COUNT(DISTINCT app_pkg_name) FROM scope WHERE module_pkg_name=? AND user_id=0 AND app_pkg_name IN (?,?,?)"

    const-string v6, "com.android.camera"

    const-string v7, "system"

    const-string v8, "com.miui.mediaeditor"

    filled-new-array {v0, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->queryInt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    const-string v0, "PASS"

    if-eqz v3, :cond_4

    move-object v4, v0

    goto :goto_2

    :cond_4
    move-object v4, v2

    :goto_2
    if-eqz v3, :cond_5

    .line 104
    :try_start_2
    const-string v3, "\u6a21\u5757\u5df2\u542f\u7528"

    goto :goto_3

    :cond_5
    const-string v3, "\u6a21\u5757\u672a\u542f\u7528"

    .line 103
    :goto_3
    invoke-static {v4, v1, v3}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x3

    cmp-long v3, v6, v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    move-object v0, v2

    .line 105
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u76f8\u673a/\u76f8\u518c/\u7cfb\u7edf\u6846\u67b6\u4f5c\u7528\u57df "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 109
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bfb\u53d6\u5931\u8d25\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method private static checkOdmInput()V
    .locals 3

    .line 238
    new-instance v0, Ljava/io/File;

    const-string v1, "/odm/etc/camera/videofilter"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/odm/etc/camera/xiaomi/watermark"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 240
    const-string v1, "PASS"

    goto :goto_1

    :cond_1
    const-string v1, "FAIL"

    :goto_1
    if-eqz v0, :cond_2

    .line 241
    const-string v0, "videofilter \u4e0e\u6c34\u5370\u76ee\u5f55\u53ef\u89c1"

    goto :goto_2

    :cond_2
    const-string v0, "\u6302\u8f7d\u8f93\u5165\u7f3a\u5931"

    .line 240
    :goto_2
    const-string v2, "ODM \u6302\u8f7d"

    invoke-static {v1, v2, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static checkPresetChain()V
    .locals 17

    .line 116
    const-string v0, " \u5b8c\u6574"

    const-string v1, "/"

    const-string v2, "\uff0c\u671f\u671b 33"

    const-string v3, "\u6e05\u5355\u6761\u76ee\u6570 "

    new-instance v4, Ljava/io/File;

    const-string v5, "lut-presets.json"

    const-string v6, "/data/user/0/com.android.camera/files/prometheus/preset_luts"

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    const-string v7, "\u9884\u7f6e\u6ee4\u955c"

    const-string v8, "FAIL"

    if-nez v5, :cond_0

    .line 118
    const-string v0, "\u76f8\u673a\u4fa7\u6e05\u5355\u7f3a\u5931\uff1alut-presets.json"

    invoke-static {v8, v7, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    new-instance v9, Ljava/lang/String;

    invoke-static {v4}, Lcom/prometheus/camera/rev/install/ChainAudit;->readFile(Ljava/io/File;)[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v9, "items"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 125
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/16 v10, 0x2a

    if-eq v9, v10, :cond_1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v7, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 132
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v3, v13, :cond_5

    .line 133
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 134
    const-string v14, "file"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 135
    const-string v15, "sha256"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v15, v3, 0x1

    .line 137
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v13}, Lcom/prometheus/camera/rev/install/ChainAudit;->hashMatches(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v9, v9, 0x1

    .line 138
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v10, "/data/user/0/com.miui.mediaeditor/files/prometheus/preset_luts"

    invoke-direct {v2, v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v13}, Lcom/prometheus/camera/rev/install/ChainAudit;->hashMatches(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v11, v11, 0x1

    .line 139
    :cond_3
    new-instance v2, Ljava/io/File;

    const-string v10, "/data/vendor/camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    const-string v5, "prometheus_gallery_filter_"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 v3, v3, 0x238d

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {v2, v13}, Lcom/prometheus/camera/rev/install/ChainAudit;->hashMatches(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v12, v12, 0x1

    :cond_4
    move v3, v15

    move-object/from16 v5, v16

    const/16 v10, 0x2a

    goto :goto_0

    .line 143
    :cond_5
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/user/0/com.android.camera/files/prometheus/filter_sync"

    const-string v5, "presets.commit"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 145
    invoke-static {v4}, Lcom/prometheus/camera/rev/install/ChainAudit;->sha256(Ljava/io/File;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/prometheus/camera/rev/install/ChainAudit;->hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/prometheus/camera/rev/install/ChainAudit;->readTrimmed(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    .line 146
    :goto_1
    const-string v3, "PASS"

    const/16 v4, 0x2a

    if-ne v9, v4, :cond_7

    move-object v4, v3

    goto :goto_2

    :cond_7
    move-object v4, v8

    :goto_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u76f8\u673a\u4fa7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v7, v5}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v11, v6, :cond_8

    move-object v4, v3

    goto :goto_3

    :cond_8
    move-object v4, v8

    .line 148
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u76f8\u518c\u4fa7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v7, v5}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v12, v6, :cond_9

    move-object v4, v3

    goto :goto_4

    :cond_9
    move-object v4, v8

    .line 150
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MIVI \u4fa7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v7, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    move-object v3, v8

    .line 152
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u76f8\u673a\u4fa7\u6458\u8981 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_b

    .line 153
    const-string v1, "\u4e00\u81f4"

    goto :goto_6

    :cond_b
    const-string v1, "\u4e0d\u4e00\u81f4"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v3, v7, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u89e3\u6790\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v7, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method private static checkWatermarkChain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 213
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/files/prometheus/local_watermarks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v2, "\u6c34\u5370\u540c\u6b65"

    const-string v3, "PASS"

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 222
    :cond_0
    sget-object v0, Lcom/prometheus/camera/rev/install/ChainAudit;->WATERMARK_PAIRS:[Ljava/lang/String;

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v8, v0, v6

    .line 223
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/files/watermarks/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/config.json"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 227
    :cond_2
    sget-object p0, Lcom/prometheus/camera/rev/install/ChainAudit;->WATERMARK_PAIRS:[Ljava/lang/String;

    array-length v0, p0

    const-string v4, "FAIL"

    if-ne v7, v0, :cond_3

    move-object v0, v3

    goto :goto_1

    :cond_3
    move-object v0, v4

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u5b8c\u6574"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v6, "\u6c34\u5370\u6a21\u677f"

    invoke-static {v0, v6, p0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance p0, Ljava/io/File;

    const-string v0, "manifest.tsv"

    invoke-direct {p0, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/io/File;

    const-string v6, "manifest.commit"

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 232
    invoke-static {p0}, Lcom/prometheus/camera/rev/install/ChainAudit;->sha256(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/install/ChainAudit;->hex([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->readTrimmed(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v4

    .line 233
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_6

    .line 234
    const-string p1, "\u4e00\u81f4"

    goto :goto_3

    :cond_6
    const-string p1, "\u7f3a\u5931\u6216\u4e0d\u4e00\u81f4"

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-static {v3, v2, p0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 218
    :cond_7
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u5c1a\u672a\u521d\u59cb\u5316"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static hashMatches(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 257
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {p0}, Lcom/prometheus/camera/rev/install/ChainAudit;->sha256(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/install/ChainAudit;->hex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 6

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 313
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 314
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02X"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 54
    const-string p0, "\u94fe\u68c0\u67e5"

    const-string v0, "\u5f00\u59cb"

    const-string v1, "INFO"

    invoke-static {v1, p0, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string p0, "com.android.camera"

    const-string v0, "\u76f8\u673a"

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->checkAppInstalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "com.miui.mediaeditor"

    const-string v3, "\u76f8\u518c\u7f16\u8f91\u5668"

    invoke-static {v2, v3}, Lcom/prometheus/camera/rev/install/ChainAudit;->checkAppInstalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/prometheus/camera/rev/install/ChainAudit;->checkLspScope()V

    .line 58
    invoke-static {}, Lcom/prometheus/camera/rev/install/ChainAudit;->checkPresetChain()V

    .line 59
    invoke-static {}, Lcom/prometheus/camera/rev/install/ChainAudit;->checkCustomLutChain()V

    .line 60
    invoke-static {}, Lcom/prometheus/camera/rev/install/ChainAudit;->checkCatalogChain()V

    .line 61
    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/install/ChainAudit;->checkWatermarkChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v2, v3}, Lcom/prometheus/camera/rev/install/ChainAudit;->checkWatermarkChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/prometheus/camera/rev/install/ChainAudit;->checkOdmInput()V

    .line 67
    sget p0, Lcom/prometheus/camera/rev/install/ChainAudit;->failed:I

    if-nez p0, :cond_0

    const-string v1, "PASS"

    :cond_0
    if-nez p0, :cond_1

    .line 68
    const-string p0, "\u5168\u90e8\u901a\u8fc7"

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u5b58\u5728 "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/prometheus/camera/rev/install/ChainAudit;->failed:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u9879\u672a\u901a\u8fc7"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 67
    :goto_0
    const-string v0, "\u6c47\u603b"

    invoke-static {v1, v0, p0}, Lcom/prometheus/camera/rev/install/ChainAudit;->record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget p0, Lcom/prometheus/camera/rev/install/ChainAudit;->failed:I

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 0

    .line 265
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static varargs queryInt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 0

    .line 250
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 251
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    .line 253
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    const/4 p1, 0x0

    .line 252
    :try_start_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    .line 253
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    .line 250
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

.method private static readFile(Ljava/io/File;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 286
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array v1, p0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    sub-int v3, p0, v2

    .line 289
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v2, v3

    goto :goto_0

    .line 294
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception p0

    .line 285
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method private static readTrimmed(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 273
    :try_start_0
    invoke-static {p0}, Lcom/prometheus/camera/rev/install/ChainAudit;->readFile(Ljava/io/File;)[B

    move-result-object p0

    .line 274
    array-length v0, p0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 275
    aget-byte v1, p0, v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 278
    :cond_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 280
    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private static record(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 245
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    const-string p1, "FAIL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/prometheus/camera/rev/install/ChainAudit;->failed:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/prometheus/camera/rev/install/ChainAudit;->failed:I

    :cond_0
    return-void
.end method

.method private static sha256(Ljava/io/File;)[B
    .locals 4

    const/4 v0, 0x0

    .line 298
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :try_start_1
    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const/16 v2, 0x4000

    .line 300
    new-array v2, v2, [B

    .line 302
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    if-lez v3, :cond_0

    .line 303
    invoke-virtual {p0, v2, v0, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 298
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 307
    :catch_0
    new-array p0, v0, [B

    return-object p0
.end method
