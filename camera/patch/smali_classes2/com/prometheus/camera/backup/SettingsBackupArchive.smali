.class public final Lcom/prometheus/camera/backup/SettingsBackupArchive;
.super Ljava/lang/Object;
.source "SettingsBackupArchive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;,
        Lcom/prometheus/camera/backup/SettingsBackupArchive$RestoreResult;
    }
.end annotation


# static fields
.field public static final FORMAT:Ljava/lang/String; = "phoenix-settings-backup"

.field private static final MAX_TOTAL_BYTES:J = 0x10000000L

.field public static final VERSION:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 346
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 347
    :cond_8
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 348
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 349
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 350
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_95

    .line 351
    :cond_3c
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_50

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_95

    .line 352
    :cond_50
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_64

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_95

    .line 353
    :cond_64
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_78

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_95

    .line 354
    :cond_78
    instance-of v3, v2, Ljava/util/Set;

    if-eqz v3, :cond_88

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/util/Set;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_95

    .line 355
    :cond_88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 356
    :goto_95
    goto :goto_18

    .line 357
    :cond_96
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_a1

    .line 358
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p0

    return p0

    .line 357
    :cond_a1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to restore "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static checkEntryName(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 388
    return-void

    .line 386
    :cond_19
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal entry path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkManifest(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 296
    const-string p0, "phoenix-settings-backup"

    const-string v1, "format"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 297
    const-string p0, "version"

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1f

    .line 302
    nop

    .line 303
    return-void

    .line 297
    :cond_1f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unsupported backup version"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 296
    :cond_27
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unsupported backup format"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2f} :catch_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_2f

    .line 300
    :catch_2f
    move-exception p0

    .line 301
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Backup manifest is invalid"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 298
    :catch_38
    move-exception p0

    .line 299
    throw p0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 401
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 402
    :cond_f
    return-void
.end method

.method private static copyBounded(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 407
    nop

    .line 408
    :goto_5
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_20

    .line 409
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 410
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_18

    .line 411
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 410
    :cond_18
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Backup exceeds 256 MB"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 413
    :cond_20
    return-void
.end method

.method static filterCloudFilter(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 160
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 162
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 163
    const/4 v3, 0x0

    .line 164
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_45

    .line 167
    const/4 v5, 0x1

    :try_start_1d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 168
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_32} :catch_34
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_32} :catch_45

    .line 169
    move v3, v5

    .line 174
    :cond_33
    goto :goto_3d

    .line 171
    :catch_34
    move-exception v3

    .line 172
    :try_start_35
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    move v3, v5

    .line 175
    :goto_3d
    goto :goto_10

    .line 176
    :cond_3e
    if-eqz v3, :cond_44

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_44} :catch_45

    :cond_44
    return-object v0

    .line 177
    :catch_45
    move-exception p0

    .line 178
    return-object v0
.end method

.method private static isPhoenixRel(Ljava/lang/String;)Z
    .registers 4

    .line 378
    sget-object v0, Lcom/prometheus/camera/backup/BackupScope;->PHOENIX_DIRS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 379
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_33

    .line 380
    :cond_32
    goto :goto_6

    .line 379
    :cond_33
    :goto_33
    const/4 p0, 0x1

    return p0

    .line 381
    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method private static pack(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 200
    const-string v1, "t"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string p0, "v"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    return-object v0
.end method

.method private static packValue(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    const-string v0, "boolean"

    invoke-static {v0, p0}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->pack(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 184
    :cond_b
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_16

    const-string v0, "int"

    invoke-static {v0, p0}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->pack(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 185
    :cond_16
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_21

    const-string v0, "long"

    invoke-static {v0, p0}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->pack(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 186
    :cond_21
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2c

    const-string v0, "float"

    invoke-static {v0, p0}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->pack(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 187
    :cond_2c
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_5f

    .line 188
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 189
    const-string v1, "t"

    const-string v2, "set"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 191
    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_47

    .line 192
    :cond_59
    const-string p0, "v"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    return-object v0

    .line 195
    :cond_5f
    const-string v0, "string"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->pack(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static parsePrefsJson(Ljava/lang/String;Ljava/lang/String;Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 308
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 309
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 310
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 312
    invoke-virtual {p2}, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->full()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 313
    const-string v3, "camera_settings_workspace"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const-string v3, "CLOUD_FILTER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 314
    iget-boolean v3, p2, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->phoenixOnly:Z

    if-eqz v3, :cond_5a

    goto :goto_e

    .line 315
    :cond_35
    sget-object v3, Lcom/prometheus/camera/backup/BackupScope;->PHOENIX_PREFS:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 316
    iget-boolean v3, p2, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->phoenixOnly:Z

    if-nez v3, :cond_5a

    goto :goto_e

    .line 318
    :cond_42
    iget-boolean v3, p2, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->phoenixOnly:Z

    if-eqz v3, :cond_47

    goto :goto_e

    .line 319
    :cond_47
    invoke-static {v2}, Lcom/prometheus/camera/backup/BackupScope;->modeOf(Ljava/lang/String;)I

    move-result v3

    .line 320
    if-ltz v3, :cond_e

    iget-object v4, p2, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->modes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    goto :goto_e

    .line 323
    :cond_5a
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 324
    invoke-static {v3}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->unpack(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    goto :goto_e

    .line 326
    :cond_66
    return-object p0
.end method

.method private static putText(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-static {p1}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->checkEntryName(Ljava/lang/String;)V

    .line 392
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 393
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 394
    invoke-virtual {p0, p2}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 395
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 396
    return-void
.end method

.method public static restore(Landroid/content/Context;Ljava/io/InputStream;[I)Lcom/prometheus/camera/backup/SettingsBackupArchive$RestoreResult;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    const-string v0, ".json"

    const-string v1, "files/"

    const-string v2, "prefs/"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 240
    new-instance v4, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;

    move-object/from16 v5, p2

    invoke-direct {v4, v5}, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;-><init>([I)V

    .line 241
    new-instance v5, Ljava/util/zip/ZipInputStream;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 242
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 243
    nop

    .line 244
    nop

    .line 245
    nop

    .line 246
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 249
    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 250
    :goto_29
    :try_start_29
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v13

    if-eqz v13, :cond_12d

    .line 251
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 252
    invoke-static {v13}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->checkEntryName(Ljava/lang/String;)V

    .line 253
    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_114

    .line 254
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 255
    const-wide/32 v15, 0x10000000

    move/from16 p1, v11

    sub-long v10, v15, v8

    invoke-static {v5, v14, v10, v11}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->copyBounded(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 256
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 257
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 258
    const-string v11, "manifest.json"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6a

    .line 259
    new-instance v11, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v10, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v11}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->checkManifest(Ljava/lang/String;)V

    .line 260
    const/4 v11, 0x1

    goto/16 :goto_dd

    .line 261
    :cond_6a
    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c2

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c2

    .line 262
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 263
    sget-object v14, Lcom/prometheus/camera/backup/BackupScope;->PHOENIX_PREFS:Ljava/util/Set;

    invoke-interface {v14, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b1

    sget-object v14, Lcom/prometheus/camera/backup/BackupScope;->CAMERA_PREFS:Ljava/util/Set;

    .line 264
    invoke-interface {v14, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_98

    goto :goto_b1

    .line 265
    :cond_98
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown prefs entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_b1
    :goto_b1
    new-instance v13, Ljava/lang/String;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v10, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 268
    invoke-static {v13, v11, v4}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->parsePrefsJson(Ljava/lang/String;Ljava/lang/String;Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;)Ljava/util/Map;

    move-result-object v10

    .line 267
    invoke-interface {v7, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    move/from16 v11, p1

    goto :goto_dd

    :cond_c2
    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_fb

    .line 270
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 271
    invoke-static {v11}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->isPhoenixRel(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e2

    .line 272
    invoke-static {v3, v11, v10}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->writeFile(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 273
    add-int/lit8 v12, v12, 0x1

    .line 274
    move/from16 v11, p1

    .line 277
    :goto_dd
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 278
    goto/16 :goto_29

    .line 271
    :cond_e2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown files entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_fb
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_114
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_12d
    move/from16 p1, v11

    if-eqz p1, :cond_162

    .line 280
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v10, 0x0

    :goto_13a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_158

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 281
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v3, v2, v1}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->applyPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)I

    move-result v1
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_156} :catch_175
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_156} :catch_16c
    .catchall {:try_start_29 .. :try_end_156} :catchall_16a

    add-int/2addr v10, v1

    .line 282
    goto :goto_13a

    .line 288
    :cond_158
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 289
    nop

    .line 290
    new-instance v0, Lcom/prometheus/camera/backup/SettingsBackupArchive$RestoreResult;

    invoke-direct {v0, v10, v12}, Lcom/prometheus/camera/backup/SettingsBackupArchive$RestoreResult;-><init>(II)V

    return-object v0

    .line 279
    :cond_162
    :try_start_162
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Backup is missing manifest.json"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_16a} :catch_175
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_16a} :catch_16c
    .catchall {:try_start_162 .. :try_end_16a} :catchall_16a

    .line 288
    :catchall_16a
    move-exception v0

    goto :goto_177

    .line 285
    :catch_16c
    move-exception v0

    .line 286
    :try_start_16d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to restore settings backup"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 283
    :catch_175
    move-exception v0

    .line 284
    throw v0
    :try_end_177
    .catchall {:try_start_16d .. :try_end_177} :catchall_16a

    .line 288
    :goto_177
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 289
    throw v0
.end method

.method private static unpack(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    const-string v0, "t"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    const-string v1, "boolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "v"

    if-eqz v1, :cond_19

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 332
    :cond_19
    const-string v1, "int"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 333
    :cond_2a
    const-string v1, "long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 334
    :cond_3b
    const-string v1, "float"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 335
    :cond_4d
    const-string v1, "set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 336
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 337
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 338
    const/4 v1, 0x0

    :goto_5f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6f

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 339
    :cond_6f
    return-object v0

    .line 341
    :cond_70
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static write(Landroid/content/Context;Ljava/io/OutputStream;[I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 91
    new-instance v0, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;

    invoke-direct {v0, p2}, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;-><init>([I)V

    .line 92
    new-instance p2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 94
    :try_start_e
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 95
    const-string v1, "format"

    const-string v2, "phoenix-settings-backup"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v1, "version"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    const-string v1, "createdAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 98
    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 100
    invoke-virtual {v0}, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->full()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 101
    const-string v2, "all"

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7d

    .line 102
    :cond_41
    iget-boolean v2, v0, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->phoenixOnly:Z

    if-eqz v2, :cond_4b

    .line 103
    const-string v2, "phoenix"

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7d

    .line 105
    :cond_4b
    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, v0, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->modes:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mode_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_56

    .line 107
    :cond_7d
    :goto_7d
    const-string v2, "scopes"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "manifest.json"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->putText(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p0, p2, v0}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->writePrefs(Landroid/content/Context;Ljava/util/zip/ZipOutputStream;Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;)V

    .line 110
    invoke-virtual {v0}, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->full()Z

    move-result p1

    if-nez p1, :cond_98

    iget-boolean p1, v0, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->phoenixOnly:Z

    if-eqz p1, :cond_9b

    :cond_98
    invoke-static {p0, p2}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->writeFiles(Landroid/content/Context;Ljava/util/zip/ZipOutputStream;)V

    .line 111
    :cond_9b
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_9e} :catch_ae
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_9e} :catch_a5
    .catchall {:try_start_e .. :try_end_9e} :catchall_a3

    .line 117
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 118
    nop

    .line 119
    return-void

    .line 117
    :catchall_a3
    move-exception p0

    goto :goto_b0

    .line 114
    :catch_a5
    move-exception p0

    .line 115
    :try_start_a6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unable to build settings backup"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 112
    :catch_ae
    move-exception p0

    .line 113
    throw p0
    :try_end_b0
    .catchall {:try_start_a6 .. :try_end_b0} :catchall_a3

    .line 117
    :goto_b0
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 118
    throw p0
.end method

.method private static writeFile(Landroid/content/Context;Ljava/lang/String;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 364
    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_35

    .line 365
    :cond_1c
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create directory for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 367
    :cond_35
    :goto_35
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 369
    :try_start_3a
    invoke-virtual {p0, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_42

    .line 371
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 372
    nop

    .line 373
    return-void

    .line 371
    :catchall_42
    move-exception p1

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 372
    throw p1
.end method

.method private static writeFiles(Landroid/content/Context;Ljava/util/zip/ZipOutputStream;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 207
    const/4 v0, 0x1

    new-array v1, v0, [J

    .line 208
    sget-object v2, Lcom/prometheus/camera/backup/BackupScope;->PHOENIX_DIRS:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 209
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_d

    .line 211
    :cond_25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_2d
    :goto_2d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b3

    .line 214
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 215
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_56

    .line 216
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 217
    if-eqz v4, :cond_2d

    array-length v5, v4

    :goto_4c
    if-ge v6, v5, :cond_2d

    aget-object v7, v4, v6

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    .line 220
    :cond_56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "files/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 221
    invoke-static {v5}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->checkEntryName(Ljava/lang/String;)V

    .line 222
    aget-wide v7, v1, v6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    aput-wide v7, v1, v6

    .line 223
    aget-wide v6, v1, v6

    const-wide/32 v8, 0x10000000

    cmp-long v6, v6, v8

    if-gtz v6, :cond_ab

    .line 224
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 225
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 227
    :try_start_9b
    invoke-static {v5, p1}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a6

    .line 229
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 230
    nop

    .line 231
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 232
    goto :goto_2d

    .line 229
    :catchall_a6
    move-exception p0

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 230
    throw p0

    .line 223
    :cond_ab
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Backup exceeds 256 MB"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 233
    :cond_b3
    goto/16 :goto_d

    .line 234
    :cond_b5
    return-void
.end method

.method private static writePrefs(Landroid/content/Context;Ljava/util/zip/ZipOutputStream;Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 123
    invoke-virtual {p2}, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->full()Z

    move-result v1

    if-nez v1, :cond_f

    iget-boolean v1, p2, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->phoenixOnly:Z

    if-eqz v1, :cond_14

    :cond_f
    sget-object v1, Lcom/prometheus/camera/backup/BackupScope;->PHOENIX_PREFS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 124
    :cond_14
    iget-boolean v1, p2, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->phoenixOnly:Z

    if-nez v1, :cond_1d

    sget-object v1, Lcom/prometheus/camera/backup/BackupScope;->CAMERA_PREFS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 125
    :cond_1d
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    sget-object v3, Lcom/prometheus/camera/backup/BackupScope;->DENY_PREFS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_2e

    .line 128
    :cond_43
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_62

    goto :goto_2e

    .line 129
    :cond_62
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 130
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 131
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 132
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_78
    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 134
    invoke-virtual {p2}, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->full()Z

    move-result v7

    if-nez v7, :cond_e5

    .line 135
    const-string v7, "camera_settings_workspace"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    const-string v7, "CLOUD_FILTER"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 136
    iget-boolean v7, p2, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->phoenixOnly:Z

    if-eqz v7, :cond_a5

    goto :goto_78

    .line 137
    :cond_a5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p2, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->modes:Ljava/util/Set;

    invoke-static {v5, v7}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->filterCloudFilter(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    .line 138
    if-nez v5, :cond_b6

    goto :goto_78

    .line 139
    :cond_b6
    const-string v7, "string"

    invoke-static {v7, v5}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->pack(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    goto :goto_78

    .line 142
    :cond_c0
    sget-object v7, Lcom/prometheus/camera/backup/BackupScope;->PHOENIX_PREFS:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cd

    .line 143
    iget-boolean v7, p2, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->phoenixOnly:Z

    if-nez v7, :cond_e5

    goto :goto_78

    .line 145
    :cond_cd
    iget-boolean v7, p2, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->phoenixOnly:Z

    if-eqz v7, :cond_d2

    goto :goto_78

    .line 146
    :cond_d2
    invoke-static {v6}, Lcom/prometheus/camera/backup/BackupScope;->modeOf(Ljava/lang/String;)I

    move-result v7

    .line 147
    if-ltz v7, :cond_78

    iget-object v8, p2, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->modes:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e5

    goto :goto_78

    .line 150
    :cond_e5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->packValue(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    goto :goto_78

    .line 152
    :cond_f1
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_f9

    goto/16 :goto_2e

    .line 153
    :cond_f9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prefs/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/prometheus/camera/backup/SettingsBackupArchive;->putText(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    goto/16 :goto_2e

    .line 155
    :cond_11b
    return-void
.end method
