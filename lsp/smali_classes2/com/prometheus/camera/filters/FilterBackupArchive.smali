.class public final Lcom/prometheus/camera/filters/FilterBackupArchive;
.super Ljava/lang/Object;
.source "FilterBackupArchive.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x8000

.field private static final MAX_ARCHIVE_BYTES:J = 0x8000000L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static putText(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 133
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 134
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
.end method

.method public static restore(Landroid/content/Context;Ljava/io/InputStream;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 51
    const-string v0, "manifest.json"

    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "prometheus-filter-restore-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    new-instance v3, Ljava/io/File;

    const-string v4, "custom_luts"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 58
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const v5, 0x8000

    .line 59
    new-array v5, v5, [B

    .line 61
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipInputStream;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 63
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 64
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v7, 0x5c

    const/16 v14, 0x2f

    invoke-virtual {v15, v7, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v14, "/"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string v14, "../"

    invoke-virtual {v7, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 68
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_a

    .line 73
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const-string v14, "config/filter-catalog.json"

    if-nez v13, :cond_2

    :try_start_2
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "custom_luts/metadata.json"

    .line 74
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    const-string v13, "custom_luts/slot_[1-9][0-9]?\\.png"

    invoke-virtual {v7, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 78
    new-instance v13, Ljava/io/FileOutputStream;

    new-instance v15, Ljava/io/File;

    move-object/from16 v16, v4

    const/16 v4, 0xc

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v13, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    goto :goto_2

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5907\u4efd\u5305\u542b\u672a\u77e5\u6587\u4ef6\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v2

    goto/16 :goto_5

    :cond_2
    :goto_1
    move-object/from16 v16, v4

    .line 75
    :try_start_3
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v13

    .line 83
    :goto_2
    invoke-virtual {v6, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v17, v2

    const/4 v2, -0x1

    if-eq v15, v2, :cond_5

    int-to-long v1, v15

    add-long/2addr v8, v1

    const-wide/32 v1, 0x8000000

    cmp-long v1, v8, v1

    if-gtz v1, :cond_4

    if-eqz v13, :cond_3

    const/4 v1, 0x0

    .line 86
    :try_start_4
    invoke-virtual {v13, v5, v1, v15}, Ljava/io/OutputStream;->write([BII)V

    :cond_3
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    goto :goto_2

    .line 85
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5907\u4efd\u8d85\u8fc7 128 MB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eqz v13, :cond_6

    .line 88
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz v4, :cond_9

    .line 90
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v10, v1

    goto :goto_3

    .line 92
    :cond_7
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v11, v1

    goto :goto_3

    :cond_8
    move-object v12, v1

    .line 95
    :cond_9
    :goto_3
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    move-object/from16 v1, p0

    move-object/from16 v4, v16

    move-object/from16 v2, v17

    goto/16 :goto_0

    :cond_a
    move-object/from16 v17, v2

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5907\u4efd\u5305\u542b\u672a\u77e5\u76ee\u5f55\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v17, v2

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5907\u4efd\u5305\u542b\u975e\u6cd5\u8def\u5f84\u6216\u91cd\u590d\u6761\u76ee"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :cond_c
    move-object/from16 v17, v2

    .line 97
    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    if-eqz v10, :cond_10

    if-eqz v11, :cond_10

    if-eqz v12, :cond_10

    .line 101
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    const-string v1, "prometheus-filter-backup"

    const-string v2, "format"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "version"

    const/4 v2, -0x1

    .line 103
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 107
    invoke-static {v11}, Lcom/prometheus/camera/filters/FilterCatalogStore;->validateImportJson(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 108
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {v0, v3}, Lcom/prometheus/camera/filters/CustomLutStore;->validateBackup(Lorg/json/JSONObject;Ljava/io/File;)V

    .line 110
    invoke-static/range {p0 .. p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->exportJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    .line 111
    invoke-static {v2, v11}, Lcom/prometheus/camera/filters/FilterCatalogStore;->importJson(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_e

    .line 115
    :try_start_6
    invoke-static {v2, v0, v3}, Lcom/prometheus/camera/filters/CustomLutStore;->restoreBackup(Landroid/content/Context;Lorg/json/JSONObject;Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 127
    invoke-static/range {v17 .. v17}, Lcom/prometheus/camera/filters/CustomLutStore;->deleteTree(Ljava/io/File;)V

    return-void

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 118
    :try_start_7
    invoke-static {v2, v1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->importJson(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u65e0\u6cd5\u56de\u6eda\u6ee4\u955c\u914d\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_1
    move-exception v0

    .line 122
    :try_start_8
    invoke-virtual {v3, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 124
    :cond_d
    throw v3

    .line 112
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u65e0\u6cd5\u6062\u590d\u6ee4\u955c\u914d\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4e0d\u652f\u6301\u7684\u5907\u4efd\u683c\u5f0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5907\u4efd\u7f3a\u5c11\u5fc5\u8981\u6587\u4ef6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v17, v2

    :goto_4
    move-object v1, v0

    .line 61
    :goto_5
    :try_start_9
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_5
    move-exception v0

    move-object/from16 v17, v2

    .line 127
    :goto_7
    invoke-static/range {v17 .. v17}, Lcom/prometheus/camera/filters/CustomLutStore;->deleteTree(Ljava/io/File;)V

    .line 128
    throw v0

    .line 53
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u65e0\u6cd5\u521b\u5efa\u6062\u590d\u4e34\u65f6\u76ee\u5f55"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static write(Landroid/content/Context;Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->exportMetadata(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 27
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 28
    const-string v2, "format"

    const-string v3, "prometheus-filter-backup"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v2, "version"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    const-string v2, "createdAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    :try_start_0
    const-string p1, "manifest.json"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1}, Lcom/prometheus/camera/filters/FilterBackupArchive;->putText(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string p1, "config/filter-catalog.json"

    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->exportJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1}, Lcom/prometheus/camera/filters/FilterBackupArchive;->putText(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string p1, "custom_luts/metadata.json"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, v1}, Lcom/prometheus/camera/filters/FilterBackupArchive;->putText(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string p1, "slots"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const v0, 0x8000

    .line 36
    new-array v0, v0, [B

    const/4 v1, 0x0

    move v3, v1

    .line 37
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 38
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "slot"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 39
    new-instance v5, Ljava/util/zip/ZipEntry;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "custom_luts/slot_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 40
    new-instance v5, Ljava/io/FileInputStream;

    .line 41
    invoke-static {p0, v4}, Lcom/prometheus/camera/filters/CustomLutStore;->fileForBackup(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 43
    :goto_1
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    invoke-virtual {v2, v0, v1, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 44
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 45
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 40
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 47
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void

    :catchall_2
    move-exception p0

    .line 31
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method
