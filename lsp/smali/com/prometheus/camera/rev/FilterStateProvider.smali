.class public final Lcom/prometheus/camera/rev/FilterStateProvider;
.super Landroid/content/ContentProvider;
.source "FilterStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/rev/FilterStateProvider$Store;,
        Lcom/prometheus/camera/rev/FilterStateProvider$State;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.prometheus.camera.rev.filterstate"

.field private static final DATABASE:Ljava/lang/String; = "nrv_filter_state.db"

.field public static final READ:Ljava/lang/String; = "prometheus.nrv.filterstate.read"

.field public static final REPLACE:Ljava/lang/String; = "prometheus.nrv.filterstate.replace"

.field private static final ROW:Ljava/lang/String; = "still-v1"

.field public static final TRANSACT:Ljava/lang/String; = "prometheus.nrv.filterstate.transact"


# instance fields
.field private store:Lcom/prometheus/camera/rev/FilterStateProvider$Store;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private defaultState()Ljava/lang/String;
    .locals 11

    .line 163
    const-string v0, "entities"

    const-string v1, "catalog"

    invoke-virtual {p0}, Lcom/prometheus/camera/rev/FilterStateProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 165
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v2, "content/filters.json"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x2000

    .line 167
    new-array v3, v3, [B

    .line 169
    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_0

    invoke-virtual {v2, v3, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 170
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    .line 171
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 173
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v4, v6

    .line 174
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 175
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 176
    const-string v7, "effects"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 177
    const-string v8, "stableId"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 178
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 179
    const-string v10, "id"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v10, "sourceId"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v8, "visible"

    const-string v10, "defaultVisible"

    invoke-virtual {v5, v10, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v9, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 182
    const-string v5, "label"

    const-string v8, ""

    invoke-virtual {v9, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    const-string v5, "grain"

    if-nez v7, :cond_1

    move v7, v6

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    :goto_2
    invoke-virtual {v9, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    const-string v5, "diffusion"

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 187
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 188
    const-string v4, "schema"

    const/16 v5, 0x9

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    const-string v4, "still-v1"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v1, "model"

    const-string v4, "unified-filter-entity-v1"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    .line 193
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_4

    .line 165
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot initialize NRV filter state"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 164
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Provider context unavailable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private enforceCaller(Z)V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/prometheus/camera/rev/FilterStateProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 124
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/prometheus/camera/rev/FilterStateProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    .line 126
    const-string v0, "com.android.camera"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_3

    .line 127
    const-string v0, "com.miui.gallery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.miui.mediaeditor"

    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return-void

    .line 129
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Caller cannot "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string p1, "write"

    goto :goto_0

    :cond_4
    const-string p1, "read"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " NRV filter state"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Provider context unavailable"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static equal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static isOperation(Ljava/lang/String;)Z
    .locals 1

    .line 134
    const-string v0, "create"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "update"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "delete"

    .line 135
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "reorder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "replace"

    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "initialize"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static put(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 3

    .line 153
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 154
    const-string v1, "id"

    const-string v2, "still-v1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string p1, "revision"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p1, 0x0

    const/4 p2, 0x5

    .line 157
    const-string p3, "filter_state"

    invoke-virtual {p0, p3, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-ltz p0, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot commit NRV filter state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static query(Landroid/database/sqlite/SQLiteDatabase;)Lcom/prometheus/camera/rev/FilterStateProvider$State;
    .locals 10

    .line 144
    const-string v0, "value"

    const-string v1, "revision"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "still-v1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "filter_state"

    const-string v5, "id=?"

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 147
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/prometheus/camera/rev/FilterStateProvider$State;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/prometheus/camera/rev/FilterStateProvider$State;-><init>(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 149
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 148
    :cond_1
    :try_start_1
    new-instance v0, Lcom/prometheus/camera/rev/FilterStateProvider$State;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/prometheus/camera/rev/FilterStateProvider$State;-><init>(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    .line 149
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_3

    .line 144
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0
.end method

.method private read(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/prometheus/camera/rev/FilterStateProvider;->store:Lcom/prometheus/camera/rev/FilterStateProvider$Store;

    invoke-virtual {v0}, Lcom/prometheus/camera/rev/FilterStateProvider$Store;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 63
    :try_start_0
    invoke-static {v0}, Lcom/prometheus/camera/rev/FilterStateProvider;->query(Landroid/database/sqlite/SQLiteDatabase;)Lcom/prometheus/camera/rev/FilterStateProvider$State;

    move-result-object v1

    .line 64
    iget-object v2, v1, Lcom/prometheus/camera/rev/FilterStateProvider$State;->value:Ljava/lang/String;

    if-nez v2, :cond_2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 65
    :cond_0
    const-string v1, "fallback"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/prometheus/camera/rev/FilterStateProvider;->defaultState()Ljava/lang/String;

    move-result-object p1

    .line 67
    :cond_1
    invoke-static {p1}, Lcom/prometheus/camera/rev/FilterStateProvider;->validate(Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    .line 68
    invoke-static {v0, p1, v1, v2}, Lcom/prometheus/camera/rev/FilterStateProvider;->put(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 69
    new-instance p0, Lcom/prometheus/camera/rev/FilterStateProvider$State;

    invoke-direct {p0, p1, v1, v2}, Lcom/prometheus/camera/rev/FilterStateProvider$State;-><init>(Ljava/lang/String;J)V

    move-object v1, p0

    .line 71
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 72
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string p1, "value"

    iget-object v2, v1, Lcom/prometheus/camera/rev/FilterStateProvider$State;->value:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string p1, "revision"

    iget-wide v1, v1, Lcom/prometheus/camera/rev/FilterStateProvider$State;->revision:J

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 78
    throw p0
.end method

.method private transact(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 82
    :cond_0
    const-string v1, "expected"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez p1, :cond_1

    move-object v2, v0

    goto :goto_1

    .line 83
    :cond_1
    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    :goto_1
    const-string v3, "transactionId"

    if-nez p1, :cond_2

    move-object v4, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    :goto_2
    const-string v5, "operation"

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_3
    invoke-static {v2}, Lcom/prometheus/camera/rev/FilterStateProvider;->validate(Ljava/lang/String;)V

    if-eqz v4, :cond_6

    .line 87
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v6, 0x3

    if-lt p1, v6, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v6, 0x60

    if-gt p1, v6, :cond_6

    .line 90
    invoke-static {v0}, Lcom/prometheus/camera/rev/FilterStateProvider;->isOperation(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 94
    iget-object p0, p0, Lcom/prometheus/camera/rev/FilterStateProvider;->store:Lcom/prometheus/camera/rev/FilterStateProvider$Store;

    invoke-virtual {p0}, Lcom/prometheus/camera/rev/FilterStateProvider$Store;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 97
    :try_start_0
    invoke-static {p0}, Lcom/prometheus/camera/rev/FilterStateProvider;->query(Landroid/database/sqlite/SQLiteDatabase;)Lcom/prometheus/camera/rev/FilterStateProvider$State;

    move-result-object p1

    .line 98
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    const-string v7, "revision"

    const-string v8, "current"

    const-string v9, "committed"

    if-eqz p2, :cond_4

    :try_start_1
    iget-object p2, p1, Lcom/prometheus/camera/rev/FilterStateProvider$State;->value:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/prometheus/camera/rev/FilterStateProvider;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x0

    .line 100
    invoke-virtual {v6, v9, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    iget-object p2, p1, Lcom/prometheus/camera/rev/FilterStateProvider$State;->value:Ljava/lang/String;

    invoke-virtual {v6, v8, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-wide p1, p1, Lcom/prometheus/camera/rev/FilterStateProvider$State;->revision:J

    invoke-virtual {v6, v7, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 103
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v6

    .line 106
    :cond_4
    :try_start_2
    iget-wide p1, p1, Lcom/prometheus/camera/rev/FilterStateProvider$State;->revision:J

    const-wide/16 v10, 0x1

    add-long/2addr p1, v10

    .line 107
    invoke-static {p0, v2, p1, p2}, Lcom/prometheus/camera/rev/FilterStateProvider;->put(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 108
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const/4 v1, 0x1

    .line 109
    invoke-virtual {v6, v9, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v6, v7, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 112
    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v6, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v6

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 117
    throw p1

    .line 91
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid NRV transaction operation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid NRV transaction id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validate(Ljava/lang/String;)V
    .locals 3

    .line 200
    const-string v0, "Invalid NRV unified filter state"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    const-string p0, "still-v1"

    const-string v2, "catalog"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "unified-filter-entity-v1"

    const-string v2, "model"

    .line 202
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "entities"

    .line 203
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 204
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 43
    iget-object p2, p0, Lcom/prometheus/camera/rev/FilterStateProvider;->store:Lcom/prometheus/camera/rev/FilterStateProvider$Store;

    if-eqz p2, :cond_3

    .line 44
    const-string p2, "prometheus.nrv.filterstate.read"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 45
    invoke-direct {p0, v0}, Lcom/prometheus/camera/rev/FilterStateProvider;->enforceCaller(Z)V

    .line 46
    invoke-direct {p0, p3}, Lcom/prometheus/camera/rev/FilterStateProvider;->read(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    const-string p2, "prometheus.nrv.filterstate.transact"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 49
    invoke-direct {p0, v1}, Lcom/prometheus/camera/rev/FilterStateProvider;->enforceCaller(Z)V

    .line 50
    invoke-direct {p0, p3, v1}, Lcom/prometheus/camera/rev/FilterStateProvider;->transact(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 52
    :cond_1
    const-string p2, "prometheus.nrv.filterstate.replace"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 53
    invoke-direct {p0, v1}, Lcom/prometheus/camera/rev/FilterStateProvider;->enforceCaller(Z)V

    .line 54
    invoke-direct {p0, p3, v0}, Lcom/prometheus/camera/rev/FilterStateProvider;->transact(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown NRV filter-state operation: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NRV filter provider unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/prometheus/camera/rev/FilterStateProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 38
    :cond_0
    new-instance v1, Lcom/prometheus/camera/rev/FilterStateProvider$Store;

    invoke-direct {v1, v0}, Lcom/prometheus/camera/rev/FilterStateProvider$Store;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/prometheus/camera/rev/FilterStateProvider;->store:Lcom/prometheus/camera/rev/FilterStateProvider$Store;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
